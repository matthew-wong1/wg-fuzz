struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 18>;

var<private> global2: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(1000f, 634f, -174f));

var<private> global3: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(Struct_2(59633i, 30816u, Struct_1(-383f, vec3<bool>(true, false, true), true)), Struct_1(558f, vec3<bool>(true, true, true), false)), Struct_3(Struct_2(i32(-2147483648), 41773u, Struct_1(100f, vec3<bool>(true, false, false), true)), Struct_1(712f, vec3<bool>(false, false, true), false)), Struct_3(Struct_2(-6478i, 30069u, Struct_1(1000f, vec3<bool>(false, true, true), true)), Struct_1(-434f, vec3<bool>(false, true, true), true)), Struct_3(Struct_2(-19890i, 25459u, Struct_1(174f, vec3<bool>(false, false, false), true)), Struct_1(3215f, vec3<bool>(true, false, true), true)), Struct_3(Struct_2(53529i, 1u, Struct_1(-667f, vec3<bool>(true, false, true), false)), Struct_1(471f, vec3<bool>(false, false, false), false)), Struct_3(Struct_2(3846i, 1u, Struct_1(-428f, vec3<bool>(true, false, true), true)), Struct_1(-1571f, vec3<bool>(true, true, true), true)), Struct_3(Struct_2(17772i, 12806u, Struct_1(-668f, vec3<bool>(true, false, false), false)), Struct_1(-1214f, vec3<bool>(false, true, true), false)), Struct_3(Struct_2(-1i, 8897u, Struct_1(-1276f, vec3<bool>(true, true, false), false)), Struct_1(217f, vec3<bool>(true, false, false), true)), Struct_3(Struct_2(-45735i, 27204u, Struct_1(-958f, vec3<bool>(false, false, false), false)), Struct_1(-521f, vec3<bool>(false, true, true), true)), Struct_3(Struct_2(-1i, 38850u, Struct_1(338f, vec3<bool>(false, true, true), false)), Struct_1(-1545f, vec3<bool>(true, true, false), false)), Struct_3(Struct_2(-1i, 0u, Struct_1(1074f, vec3<bool>(true, false, true), false)), Struct_1(-638f, vec3<bool>(true, false, false), false)), Struct_3(Struct_2(-29441i, 2112u, Struct_1(1311f, vec3<bool>(true, true, false), true)), Struct_1(-754f, vec3<bool>(false, false, false), false)), Struct_3(Struct_2(-21891i, 4294967295u, Struct_1(364f, vec3<bool>(true, false, true), false)), Struct_1(-3404f, vec3<bool>(false, true, false), true)), Struct_3(Struct_2(-28524i, 6817u, Struct_1(-2440f, vec3<bool>(false, true, false), false)), Struct_1(-352f, vec3<bool>(false, true, true), false)), Struct_3(Struct_2(i32(-2147483648), 1u, Struct_1(-493f, vec3<bool>(true, false, true), true)), Struct_1(1681f, vec3<bool>(false, true, false), true)), Struct_3(Struct_2(50385i, 1u, Struct_1(-836f, vec3<bool>(false, false, true), false)), Struct_1(-685f, vec3<bool>(true, true, false), false)), Struct_3(Struct_2(0i, 41719u, Struct_1(-1000f, vec3<bool>(true, true, false), false)), Struct_1(-243f, vec3<bool>(false, true, false), false)), Struct_3(Struct_2(-101i, 104967u, Struct_1(281f, vec3<bool>(true, true, true), true)), Struct_1(-1621f, vec3<bool>(false, true, true), false)), Struct_3(Struct_2(i32(-2147483648), 4294967295u, Struct_1(193f, vec3<bool>(false, false, true), false)), Struct_1(-1007f, vec3<bool>(true, false, true), false)), Struct_3(Struct_2(2147483647i, 0u, Struct_1(1110f, vec3<bool>(true, true, false), true)), Struct_1(325f, vec3<bool>(false, true, false), true)), Struct_3(Struct_2(2147483647i, 23748u, Struct_1(-127f, vec3<bool>(false, true, true), false)), Struct_1(374f, vec3<bool>(false, true, false), true)), Struct_3(Struct_2(0i, 0u, Struct_1(-1161f, vec3<bool>(true, false, true), false)), Struct_1(-1221f, vec3<bool>(false, false, false), false)), Struct_3(Struct_2(25444i, 95309u, Struct_1(-2498f, vec3<bool>(true, true, false), true)), Struct_1(741f, vec3<bool>(false, true, false), true)));

var<private> global4: array<vec3<bool>, 15>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>) -> f32 {
    global0 = !(arg_0.x <= _wgslsmith_div_u32(~(arg_0.x >> (34263u % 32u)), 22558u));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2123f)))), global4[_wgslsmith_index_u32(~arg_0.x, 15u)], false);
    global3 = array<Struct_3, 23>();
    var var_1 = 1i;
    let var_2 = var_0.b.x;
    return -112f;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: u32) -> u32 {
    global3 = array<Struct_3, 23>();
    var var_0 = arg_1.x;
    global0 = u_input.b < 0i;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(205f * global1[_wgslsmith_index_u32(25143u, 18u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * 901f)))), global4[_wgslsmith_index_u32(arg_2, 15u)], arg_0.c);
    var_0 = _wgslsmith_add_u32(reverseBits(_wgslsmith_sub_u32(min(arg_2, ~arg_2), 30343u)), reverseBits(~1u));
    return _wgslsmith_sub_u32(~u_input.a, countOneBits(_wgslsmith_add_u32(0u, 4294967295u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_clamp_u32(arg_2.a.b, (arg_2.a.b >> ((_wgslsmith_mult_u32(4294967295u, arg_0.b) & _wgslsmith_mod_u32(68201u, u_input.a)) % 32u)) << ((arg_0.b | _wgslsmith_sub_u32(reverseBits(60257u), ~u_input.a)) % 32u), 72416u);
    global3 = array<Struct_3, 23>();
    global1 = array<f32, 18>();
    let var_1 = arg_0;
    global2 = array<vec3<f32>, 1>();
    return (reverseBits(-5267i) | arg_0.a) ^ arg_1.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: u32, arg_3: i32) -> bool {
    global2 = array<vec3<f32>, 1>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 18u)] * 1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -386f) * -1456f))), !global4[_wgslsmith_index_u32(20972u, 15u)], false);
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2 << (_wgslsmith_sub_u32(~0u, 1u) % 32u), (arg_0.x << ((35221u ^ u_input.a) % 32u)) >> (u_input.a % 32u)) & 1u, 23u)];
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 0u), ~arg_0.xz), 18u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~select(arg_0.x, u_input.a, var_1.b.c), 18u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c.a) * _wgslsmith_f_op_f32(240f - var_0.a))) + _wgslsmith_f_op_f32(exp2(var_0.a))));
    var var_3 = Struct_4(false | arg_1, select(vec3<bool>(arg_1, any(select(vec2<bool>(false, true), vec2<bool>(arg_1, false), var_1.b.c)), var_1.b.c), global4[_wgslsmith_index_u32(~95359u, 15u)], var_0.b));
    return all(global4[_wgslsmith_index_u32(u_input.a, 15u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(~(~u_input.a), 18u)])) < 1644f;
    var var_0 = Struct_1(-839f, global4[_wgslsmith_index_u32(func_2(Struct_1(_wgslsmith_f_op_f32(func_1(~vec4<u32>(35887u, u_input.a, u_input.a, u_input.a), select(vec2<i32>(-2147483647i, 1i), vec2<i32>(-1i, u_input.b), vec2<bool>(true, true)))), vec3<bool>(false, false, false), true), ~vec3<u32>(~u_input.a, u_input.a, ~1u), (u_input.a & select(0u, u_input.a, false)) << (u_input.a % 32u)), 15u)], true);
    global0 = !func_4(vec4<u32>(select(9967u, ~u_input.a, true), u_input.a, u_input.a, ~_wgslsmith_mod_u32(u_input.a, 112275u)), var_0.b.x, u_input.a, func_3(Struct_2(~8389i, _wgslsmith_div_u32(u_input.a, u_input.a), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 18u)], vec3<bool>(var_0.c, var_0.b.x, true), false)), select(-vec2<i32>(-10709i, u_input.b), vec2<i32>(-1i, u_input.b) ^ vec2<i32>(u_input.b, u_input.b), !var_0.b.xy), Struct_3(Struct_2(0i, 4294967295u, Struct_1(-739f, var_0.b, var_0.b.x)), Struct_1(global1[_wgslsmith_index_u32(1u, 18u)], var_0.b, true)), -24566i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-670f, -101f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(645f))))));
    var var_2 = select(vec2<bool>(false, all(vec4<bool>(var_0.a != 1660f, true, true, var_0.c))), vec2<bool>(any(var_0.b) && true, false), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.a, 18u)], -582f)) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 18u)] - var_0.a)) >= var_0.a, var_0.b.x));
    var_2 = var_0.b.zx;
    global4 = array<vec3<bool>, 15>();
    let var_3 = Struct_2(_wgslsmith_mod_i32(0i, 1i), select(countOneBits(_wgslsmith_sub_u32(11725u, 1u)), ~4294967295u, all(!select(var_0.b.zy, vec2<bool>(false, var_2.x), var_2.x))), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 18u)], !vec3<bool>(true, func_4(vec4<u32>(u_input.a, 0u, u_input.a, 9814u), var_0.c, 57013u, -2147483647i), !var_2.x), true));
    var_1 = _wgslsmith_f_op_f32(sign(1513f));
    let x = u_input.a;
    s_output = StorageBuffer(~(-var_3.a));
}

