struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 17>;

var<private> global2: u32 = 48543u;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    var var_0 = global0.a.c;
    let var_1 = vec3<f32>(global0.a.e, global0.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1270f))))))));
    var var_2 = global0.a.a.xz;
    var var_3 = Struct_2(!vec4<bool>(true, true, all(select(vec4<bool>(global0.a.d.a, false, true, var_0.a), vec4<bool>(false, var_0.a, var_2.x, false), var_0.a)), true), _wgslsmith_mult_vec2_i32(select(-vec2<i32>(2705i, -1i), vec2<i32>(22788i, -8787i) ^ u_input.a.zw, !global0.a.a.xz), firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(-1i, arg_0.x), u_input.a.zz))) & arg_0.zy, Struct_1(false, ~_wgslsmith_mod_u32(4294967295u, u_input.b), i32(-1i) * -42741i, 9969u), Struct_1(true, u_input.b, global0.a.c.c, reverseBits(var_0.d)), 1264f);
    var var_4 = global1[_wgslsmith_index_u32(4294967295u, 17u)];
    return any(!vec4<bool>(-324f < var_4.e, any(var_3.a.wxx), 1i <= arg_0.x, true)) && !global0.a.a.x;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<u32>, arg_3: bool) -> u32 {
    global0 = Struct_3(Struct_2(vec4<bool>(true, !arg_3, any(vec3<bool>(arg_3, arg_3, false)) & func_3(vec4<i32>(global0.a.d.c, global0.a.b.x, u_input.a.x, 7725i)), true), vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), -u_input.a.x), global0.a.d, Struct_1(any(select(global0.a.a.zx, vec2<bool>(arg_3, true), vec2<bool>(true, global0.a.c.a))), global0.a.d.d, 1i, reverseBits(4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(round(global0.b.x))))), global0.b);
    var var_0 = arg_1;
    var_0 = _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(2574f * arg_1));
    var var_1 = global0.a.c;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -523f)));
    return arg_0;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    var var_0 = ~vec3<u32>(countOneBits(8698u), abs(func_2(abs(4294967295u), _wgslsmith_f_op_f32(-arg_3.a.e), ~vec4<u32>(arg_2.a.c.b, 0u, u_input.b, 43491u), !global0.a.c.a)), _wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_3.a.c.d, 176909u), ~vec2<u32>(arg_2.a.c.b, 9791u), !vec2<bool>(arg_2.a.d.a, true)), ~select(vec2<u32>(global0.a.d.b, 1u), vec2<u32>(34812u, 30047u), vec2<bool>(global0.a.d.a, true))));
    var var_1 = _wgslsmith_f_op_f32(1f * 718f);
    let var_2 = _wgslsmith_sub_vec2_u32(~countOneBits(vec2<u32>(max(1u, u_input.b), global0.a.d.d)), vec2<u32>(reverseBits(~u_input.b ^ global0.a.d.b), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, arg_2.a.d.b, arg_3.a.c.d), vec4<u32>(u_input.b, arg_3.a.d.d, arg_3.a.d.d, 22910u)), global0.a.d.d, var_0.x)));
    global0 = Struct_3(global1[_wgslsmith_index_u32(reverseBits(global0.a.c.d), 17u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1787f) - vec2<f32>(-2660f, 631f)) - arg_3.b)) * global0.b));
    var var_3 = arg_3;
    return arg_2.a.c.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, select(u_input.b, global0.a.c.b, ~1u < func_1(global0.a.b, -26229i, Struct_3(global1[_wgslsmith_index_u32(u_input.b, 17u)], vec2<f32>(-504f, -1263f)), Struct_3(global0.a, global0.b))) << (_wgslsmith_sub_u32(global0.a.c.b, abs(global0.a.d.b)) % 32u), global0.a.b.x, _wgslsmith_dot_vec4_u32(select(reverseBits(firstTrailingBit(vec4<u32>(33692u, u_input.b, 5343u, 3530u))), ~(~vec4<u32>(1u, 18752u, u_input.b, global0.a.d.d)), global0.a.a.x), firstTrailingBit(min(vec4<u32>(global0.a.c.d, global0.a.d.b, 4294967295u, u_input.b), vec4<u32>(global0.a.d.b, global0.a.c.d, 49046u, 56690u)))));
    let var_1 = ~_wgslsmith_div_vec4_u32(vec4<u32>(func_1(_wgslsmith_sub_vec2_i32(u_input.a.wy, u_input.a.xw), global0.a.d.c, Struct_3(Struct_2(vec4<bool>(true, false, global0.a.c.a, global0.a.a.x), global0.a.b, global0.a.c, global0.a.c, global0.a.e), global0.b), Struct_3(Struct_2(vec4<bool>(var_0.a, var_0.a, true, false), vec2<i32>(0i, 0i), Struct_1(global0.a.d.a, global0.a.c.b, var_0.c, var_0.d), global0.a.c, global0.b.x), global0.b)), 1u, ~(~u_input.b), 20996u), ~countOneBits(vec4<u32>(global0.a.d.b, u_input.b, global0.a.c.b, u_input.b) << (vec4<u32>(global0.a.d.d, 0u, 0u, 106671u) % vec4<u32>(32u))));
    global2 = firstTrailingBit(var_1.x);
    let var_2 = !(!all(global0.a.a));
    let var_3 = Struct_1(global0.a.a.x, firstLeadingBit(var_1.x), abs(_wgslsmith_mod_i32(-(17768i << (global0.a.d.d % 32u)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), 16190i ^ var_0.c))), var_0.b);
    var var_4 = ~var_1.x;
    let var_5 = -global0.a.c.c;
    var var_6 = Struct_3(Struct_2(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -837f) <= _wgslsmith_f_op_f32(select(-566f, global0.a.e, true)), var_2, all(global0.a.a.yxz) & any(global0.a.a.yz), true), -vec2<i32>(min(-2147483647i, var_3.c), 31320i), Struct_1(false, _wgslsmith_dot_vec4_u32(var_1, _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a.d.d, var_1.x, 4294967295u, 27912u), vec4<u32>(3128u, var_1.x, global0.a.c.b, 60213u), var_1)), -(-2173i ^ var_5), _wgslsmith_mod_u32(var_1.x, 32702u)), Struct_1(false, 2636u, 23689i, 0u), _wgslsmith_f_op_f32(173f + -600f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0.b), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-752f, global0.a.e) + vec2<f32>(-888f, -376f)), _wgslsmith_f_op_vec2_f32(max(global0.b, vec2<f32>(-152f, global0.a.e))))))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(global0.a.e, global0.b.x), 892f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.e, -1000f)), false))));
    let var_7 = var_6.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(13146u, var_6.a.c.b), countOneBits(_wgslsmith_div_vec2_i32(global0.a.b, ~global0.a.b)), 8249u);
}

