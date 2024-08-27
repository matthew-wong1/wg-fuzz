struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: vec2<f32> = vec2<f32>(-451f, 1239f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<i32>) -> bool {
    var var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 269f, 770f) * vec4<f32>(492f, -149f, global1.x, 173f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -273f, global1.x))))))), select(vec3<bool>(all(vec2<bool>(true, true)), true, true), !vec3<bool>(any(vec4<bool>(false, true, false, true)), true, any(vec3<bool>(false, true, false))), ~u_input.e >= 1u), select(vec2<bool>(true, true), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), abs(max(u_input.b.x, 4648i)) <= ~u_input.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-global1.x), global1.x)));
    let var_2 = select(select(var_1.b, vec3<bool>(false, var_1.c.x, true), var_1.c.x), var_1.b, var_1.b.x);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_1.d.xy, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global1.x)), -2734f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1191f, -470f), var_1.a.zz)))))));
    var var_3 = global1.x;
    return all(var_2.zz);
}

fn func_2() -> u32 {
    var var_0 = ~4294967295u;
    var_0 = 24294u;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(914f, global1.x, 394f, global1.x)), vec4<f32>(_wgslsmith_div_f32(-1132f, 144f), _wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(global1.x, 461f))), vec4<bool>(global1.x >= 491f, global1.x == 1508f, true, true)))), select(vec3<bool>(false, global1.x >= 1487f, func_3(Struct_2(u_input.c), select(vec2<u32>(u_input.a, u_input.e), vec2<u32>(u_input.d, 4294967295u), vec2<bool>(true, false)), -vec2<i32>(-5168i, 14889i))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), func_3(Struct_2(-1649i), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.e, 3764u)), vec2<i32>(abs(0i), u_input.c))), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, select(func_3(Struct_2(u_input.b.x), vec2<u32>(u_input.a, u_input.d), u_input.b), true, u_input.a >= u_input.e))), vec3<f32>(global1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(761f + -376f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), 1000f)))));
    global1 = var_1.d.xy;
    global0 = array<Struct_3, 15>();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.e ^ _wgslsmith_clamp_u32(countOneBits(18020u), 1u, ~16021u)), min(firstLeadingBit(countOneBits(~vec2<u32>(u_input.d, 20107u))), ~((vec2<u32>(u_input.d, u_input.a) << (vec2<u32>(4294967295u, 16956u) % vec2<u32>(32u))) << (firstTrailingBit(vec2<u32>(30617u, 11941u)) % vec2<u32>(32u)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<u32>, arg_3: u32) -> vec4<u32> {
    var var_0 = Struct_3(Struct_2(u_input.c), Struct_2(u_input.b.x), 0i);
    var var_1 = !(!any(select(select(vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(true, false, arg_1, false), true), vec4<bool>(true, true, false, false), arg_1)));
    var var_2 = firstLeadingBit(arg_2.yz) & ~vec2<u32>(func_2(), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a, u_input.e, arg_0.x), 10688u));
    var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~(~1359u), 1u), arg_2.x), arg_0.wx, firstLeadingBit(arg_2.yw << (select(vec2<u32>(1u, arg_3), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), arg_2.zx), all(vec4<bool>(true, true, true, false))) % vec2<u32>(32u))));
    let var_3 = var_0.a;
    return max(countOneBits(abs(arg_2)), _wgslsmith_div_vec4_u32(vec4<u32>((0u << (u_input.d % 32u)) ^ arg_2.x, firstTrailingBit(firstLeadingBit(25635u)), firstTrailingBit(_wgslsmith_dot_vec2_u32(arg_0.yy, vec2<u32>(u_input.a, arg_2.x))), 1u), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 15>();
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(1u), min(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.e, 1u), vec2<u32>(15477u, u_input.d)), vec2<u32>(u_input.a, 60758u)), 9525u), u_input.e, u_input.a), func_1(~(~vec4<u32>(4294967295u, u_input.d, 1u, u_input.d)), false, select(~vec4<u32>(u_input.d, 4294967295u, 4294967295u, u_input.a), ~vec4<u32>(36708u, u_input.a, u_input.d, u_input.a), global1.x < global1.x), 14272u) | vec4<u32>(u_input.d, _wgslsmith_clamp_u32(11074u, 1u, ~20275u), ~(~u_input.a), abs(u_input.a)));
    var var_1 = global1.x;
    global1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, global1.x))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-154f, global1.x) * vec2<f32>(-1578f, global1.x)))), vec2<f32>(855f, _wgslsmith_f_op_f32(-global1.x))))));
    let var_2 = reverseBits(vec4<i32>(-16130i, u_input.b.x, u_input.b.x, 36475i));
    var var_3 = 1u;
    var_3 = u_input.a;
    var var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, 299f)) + global1.x), _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(841f, global1.x)))))))));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-464f, _wgslsmith_f_op_f32(-global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(2147483647i, u_input.b.x), vec3<i32>(u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_2.x, var_2.x), abs(u_input.c & -2147483647i)), -u_input.c), ~(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.d), vec2<u32>(u_input.e, u_input.d)), ~vec2<u32>(1u, u_input.d)) & firstTrailingBit(~vec2<u32>(10273u, u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, global1.x, -1623f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_5, -440f, 1221f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_5, var_4.x))))));
}

