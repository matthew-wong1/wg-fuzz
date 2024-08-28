struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<Struct_1, 7>;

var<private> global2: vec2<u32> = vec2<u32>(19083u, 67161u);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> f32 {
    global0 = array<Struct_1, 6>();
    let var_0 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, ~_wgslsmith_mod_i32(arg_0.a, u_input.b), 7250i << (min(global2.x, 10562u) % 32u), -20662i), _wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(arg_0.a), _wgslsmith_mult_i32(arg_2.a, u_input.b), _wgslsmith_clamp_i32(-2147483647i, arg_0.a, 0i), ~(-1i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, -2147483647i, arg_2.a), -vec4<i32>(-1i, 35628i, arg_2.a, -4871i)), max(firstLeadingBit(vec4<i32>(arg_2.a, u_input.b, arg_0.a, arg_0.a)), ~vec4<i32>(u_input.b, -1i, -1i, arg_0.a))), ~vec4<i32>(1i, arg_2.a, ~19733i, -u_input.b));
    var var_1 = global1[_wgslsmith_index_u32(arg_1, 7u)];
    var var_2 = arg_0;
    let var_3 = arg_0.b.xx;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.c.x - arg_2.c.x))), _wgslsmith_f_op_f32(step(arg_0.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.c.x * _wgslsmith_f_op_f32(min(650f, -432f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1088f * 398f), _wgslsmith_f_op_f32(f32(-1f) * -107f))))))), true));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> vec2<i32> {
    var var_0 = Struct_1(-1i, arg_0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-594f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(293f + arg_0.c.x))) - arg_0.c));
    var var_1 = !(_wgslsmith_f_op_f32(func_3(Struct_1(i32(-1i) * -16474i, arg_0.b, _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, arg_0.c.x), vec2<f32>(958f, 296f))), ~4294967295u ^ abs(u_input.a.x), global0[_wgslsmith_index_u32(select(~global2.x, ~u_input.a.x, true != var_0.b.x), 6u)], 1725f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.c.x, 208f))) + _wgslsmith_f_op_f32(arg_0.c.x - -284f)));
    let var_2 = var_0.c;
    let var_3 = ~vec3<u32>(global2.x, _wgslsmith_sub_u32(abs(0u), ~abs(global2.x)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.wy), countOneBits(u_input.a.xx)), select(1u, _wgslsmith_mult_u32(14692u, u_input.a.x), var_0.b.x)));
    let var_4 = vec3<bool>(any(vec4<bool>(select(false, any(var_0.b), var_0.b.x), !arg_0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 4294967295u), vec2<u32>(global2.x, 8043u)) < 44296u, all(vec3<bool>(false, var_0.b.x, true)))), !(!any(arg_0.b.xz)), any(!select(vec4<bool>(var_0.b.x, false, arg_0.b.x, arg_0.b.x), !vec4<bool>(true, arg_0.b.x, arg_0.b.x, arg_0.b.x), !var_0.b.x)));
    return arg_1;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    global0 = array<Struct_1, 6>();
    let var_0 = arg_1.c;
    let var_1 = -_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, -2147483647i, 2147483647i) >> (u_input.a.zxy % vec3<u32>(32u)), abs(vec3<i32>(arg_0.x, arg_0.x, arg_1.a)), ~vec3<i32>(arg_1.a, 2147483647i, -2147483647i)), vec3<i32>(4461i, arg_1.a | 0i, ~(-1i)), -reverseBits(vec3<i32>(-2147483647i, 1i, 2272i))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-53349i, 1i, -53300i) ^ vec3<i32>(75535i, arg_0.x, 33968i), vec3<i32>(-1i, u_input.b, u_input.b) ^ vec3<i32>(arg_0.x, -41504i, -2147483647i)), countOneBits(40439i), -arg_1.a & _wgslsmith_mod_i32(arg_1.a, 2147483647i)), ((vec3<i32>(u_input.b, 0i, u_input.b) & vec3<i32>(arg_1.a, 39115i, 2147483647i)) << (u_input.a.zwx % vec3<u32>(32u))) >> (min(u_input.a.yzw, ~u_input.a.yzx) % vec3<u32>(32u)));
    return global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(global2.x, global2.x, global2.x), u_input.a.wzz, false), u_input.a.wzx & u_input.a.ywz), 0u << (_wgslsmith_add_u32(global2.x, u_input.a.x) % 32u), global2.x) & ~abs(_wgslsmith_dot_vec3_u32(u_input.a.yzy, u_input.a.wxz)), u_input.a.x), 7u)];
}

fn func_1() -> Struct_1 {
    var var_0 = ~vec3<u32>(~(~130385u), 21399u, ~45262u);
    var_0 = max(firstLeadingBit(vec3<u32>(20530u, ~_wgslsmith_dot_vec3_u32(u_input.a.yxw, vec3<u32>(34548u, u_input.a.x, 7309u)), reverseBits(0u))), ~abs(~u_input.a.yyx));
    var var_1 = func_4(vec2<i32>(u_input.b, i32(-1i) * -_wgslsmith_div_i32(u_input.b, u_input.b)), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.b, u_input.b), _wgslsmith_add_vec2_i32(abs(vec2<i32>(-32751i, -15723i)), func_2(global0[_wgslsmith_index_u32(1u, 6u)], vec2<i32>(u_input.b, u_input.b)))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1034f, -1181f)))))));
    return global0[_wgslsmith_index_u32(var_0.x, 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = global1[_wgslsmith_index_u32(global2.x, 7u)];
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(638f - var_1.c.x) * -504f)));
    let var_3 = global0[_wgslsmith_index_u32(35011u, 6u)];
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u & ~u_input.a.x, abs(1u), u_input.a.x));
}

