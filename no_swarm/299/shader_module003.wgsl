struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-3988i, 40447i, 14614i, -48700i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(~(~_wgslsmith_dot_vec3_u32(arg_0.xww, arg_0.yyx)), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.e, 4294967295u, 4294967295u), u_input.c)));
    var var_1 = Struct_2(Struct_1(vec2<bool>(true, true), true, select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), vec2<bool>(true, true), select(false, true, any(vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(min(-795f, 234f)), -1349f, _wgslsmith_f_op_f32(select(648f, 656f, false))))));
    let var_2 = var_1.a.c;
    var_0 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_1, 24106u) ^ arg_1, 4294967295u), 4294967295u ^ _wgslsmith_mult_u32(arg_0.x & arg_1, reverseBits(arg_0.x))) << (vec2<u32>(~1u, 1u) % vec2<u32>(32u));
    let var_3 = _wgslsmith_add_u32(31711u, var_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1098f))) + -596f)));
}

fn func_2() -> vec2<bool> {
    global0 = ~vec4<i32>(u_input.d.x, global0.x, u_input.d.x, reverseBits(global0.x));
    let var_0 = Struct_2(Struct_1(select(vec2<bool>(true, false), vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -1000f) < _wgslsmith_f_op_f32(func_3(vec4<u32>(5795u, u_input.b.x, u_input.b.x, 30521u), u_input.b.x))), false, vec2<bool>(true, any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-350f, -316f, -1008f, -935f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-338f, 1004f, 1042f, -826f))))));
    var var_1 = !(!(!var_0.a.b));
    let var_2 = _wgslsmith_f_op_f32(-var_0.a.d.x);
    var var_3 = Struct_2(var_0.a);
    return !(!(!(!select(vec2<bool>(var_3.a.a.x, false), vec2<bool>(true, true), var_0.a.c))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> vec2<bool> {
    let var_0 = arg_2.a;
    let var_1 = -61322i;
    return select(select(!select(arg_1.a.a, func_2(), arg_1.a.a.x), select(vec2<bool>(true, arg_2.a.a.x), var_0.a, select(!arg_1.a.a, !var_0.c, true)), var_0.c), !var_0.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a.d.x, 637f)) * _wgslsmith_f_op_f32(select(936f, var_0.d.x, var_0.a.x))))) < _wgslsmith_f_op_f32(func_3(select(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 30872u, u_input.e, 4294967295u), vec4<u32>(8272u, 9261u, u_input.c, u_input.b.x)), vec4<u32>(u_input.c, u_input.c, 58982u, 66970u), func_2().x), ~4294967295u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = vec4<i32>(u_input.d.x, 1i, -u_input.d.x << (0u % 32u), -_wgslsmith_sub_i32(-u_input.d.x, 0i));
    let var_0 = select(u_input.d, vec2<i32>(global0.x, 4136i), select(select(func_2(), vec2<bool>(true, true), func_2()), arg_1.a, select(!(!vec2<bool>(arg_0.a.x, arg_1.a.x)), vec2<bool>(select(false, arg_0.c.x, false), arg_1.b), any(!vec4<bool>(true, arg_1.c.x, false, arg_0.b)))));
    var var_1 = u_input.e;
    var var_2 = _wgslsmith_dot_vec3_i32(firstLeadingBit(select(global0.ywz, ~global0.yyy, !(!vec3<bool>(arg_1.c.x, arg_1.a.x, arg_1.c.x)))), countOneBits(vec3<i32>(-2147483647i, -47002i, ~u_input.d.x)));
    var var_3 = 19958i;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(!vec2<bool>(67140u > u_input.c, any(vec4<bool>(true, false, true, true))), !(u_input.e > u_input.c), select(vec2<bool>(true, true), func_1(_wgslsmith_clamp_vec2_i32(global0.yx, u_input.d, u_input.d), Struct_2(Struct_1(vec2<bool>(false, false), true, vec2<bool>(true, true), vec4<f32>(-1364f, -1000f, 1555f, 2559f))), Struct_2(Struct_1(vec2<bool>(false, true), false, vec2<bool>(true, false), vec4<f32>(453f, -1792f, -223f, -2240f))), _wgslsmith_f_op_f32(f32(-1f) * -1943f)), func_2()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(937f, 1000f, -1166f, -267f)))))), Struct_1(!func_2(), ~_wgslsmith_mod_i32(global0.x, -17029i) == -16125i, !(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), vec4<f32>(273f, -451f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -440f), _wgslsmith_div_f32(442f, -219f))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-921f + 2429f)))));
    let var_1 = vec4<bool>(all(select(!select(vec3<bool>(var_0.c.x, false, var_0.c.x), vec3<bool>(false, false, false), var_0.a.x), !select(vec3<bool>(true, var_0.c.x, var_0.a.x), vec3<bool>(true, var_0.b, var_0.b), false), !(var_0.a.x & var_0.a.x))), func_1(_wgslsmith_clamp_vec2_i32(~global0.xx, vec2<i32>(u_input.a, global0.x), ~global0.yz), Struct_2(Struct_1(var_0.a, var_0.b, var_0.c, var_0.d)), Struct_2(func_4(Struct_1(var_0.a, var_0.a.x, vec2<bool>(var_0.c.x, var_0.b), vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x)), Struct_1(vec2<bool>(true, true), true, var_0.a, vec4<f32>(var_0.d.x, var_0.d.x, 979f, var_0.d.x)))), _wgslsmith_f_op_f32(trunc(var_0.d.x))).x && true, true && func_4(Struct_1(var_0.a, true, func_4(Struct_1(var_0.c, var_0.a.x, vec2<bool>(var_0.b, var_0.b), var_0.d), Struct_1(vec2<bool>(var_0.b, true), true, vec2<bool>(true, false), var_0.d)).a, _wgslsmith_f_op_vec4_f32(-var_0.d)), Struct_1(vec2<bool>(var_0.b, var_0.c.x), func_4(Struct_1(var_0.a, false, var_0.c, vec4<f32>(1552f, var_0.d.x, var_0.d.x, -1000f)), Struct_1(var_0.c, false, var_0.a, var_0.d)).a.x, !vec2<bool>(var_0.c.x, true), _wgslsmith_f_op_vec4_f32(-var_0.d))).b, var_0.c.x);
    var_0 = func_4(func_4(Struct_1(vec2<bool>(true, false), all(select(var_1.wyw, var_1.ywx, var_1.xyy)), func_1(_wgslsmith_div_vec2_i32(u_input.d, global0.yz), Struct_2(Struct_1(vec2<bool>(var_0.a.x, var_0.a.x), var_1.x, vec2<bool>(true, var_0.b), var_0.d)), Struct_2(Struct_1(vec2<bool>(true, var_0.c.x), var_1.x, vec2<bool>(true, var_1.x), vec4<f32>(420f, var_0.d.x, 588f, -1000f))), 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.d, vec4<f32>(var_0.d.x, var_0.d.x, 334f, var_0.d.x), vec4<bool>(var_0.b, var_0.a.x, var_1.x, false))))), func_4(Struct_1(vec2<bool>(var_0.c.x, true), var_0.b, vec2<bool>(false, true), var_0.d), func_4(Struct_1(var_1.yx, var_0.c.x, var_1.wx, var_0.d), Struct_1(var_0.a, true, vec2<bool>(var_1.x, false), vec4<f32>(var_0.d.x, var_0.d.x, -709f, 1791f))))), Struct_1(var_1.wy, false, !select(var_0.a, var_1.zx, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, -1542f, -1396f, var_0.d.x) * vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, 334f)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.d))))));
    var var_2 = u_input.c;
    var var_3 = Struct_1(var_1.xz, select(global0.x, u_input.d.x, any(!var_1.wyx)) == firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 17250i, global0.x, global0.x), abs(vec4<i32>(34866i, global0.x, u_input.a, -22564i)))), vec2<bool>(select(!var_0.c.x, !select(var_1.x, var_0.b, false), true), true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.d - vec4<f32>(var_0.d.x, 501f, 994f, 1000f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(745f, 1597f, -952f, 496f))))))));
    var_2 = _wgslsmith_add_u32(31882u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.b.x, u_input.e, u_input.e) | vec4<u32>(u_input.e, u_input.c, 13539u, u_input.e), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.e, u_input.c, 4294967295u), vec4<u32>(u_input.e, u_input.b.x, 28970u, u_input.e)))));
    var var_4 = -select(_wgslsmith_sub_vec2_i32(~(global0.yz & vec2<i32>(global0.x, 2147483647i)), reverseBits(abs(vec2<i32>(-2147483647i, global0.x)))), -u_input.d, func_2());
    let x = u_input.a;
    s_output = StorageBuffer(509f);
}

