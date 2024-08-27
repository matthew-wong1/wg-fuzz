struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: bool, arg_3: bool) -> bool {
    return arg_3;
}

fn func_2() -> vec2<bool> {
    var var_0 = select(!vec2<bool>(true, func_3(_wgslsmith_div_vec3_f32(vec3<f32>(-985f, 334f, -1473f), vec3<f32>(-793f, -719f, -583f)), true, true, any(vec4<bool>(false, true, false, true)))), vec2<bool>(true, true), vec2<bool>(true, select(_wgslsmith_mult_u32(37315u, 88867u), 1u, true) <= ~(~33459u)));
    var_0 = !(!select(vec2<bool>(false, !var_0.x), vec2<bool>(var_0.x, var_0.x), select(true, false, all(vec2<bool>(true, false)))));
    var var_1 = Struct_1(-1326f);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1776f, var_1.a, -544f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1921f, -1888f, var_1.a) - vec3<f32>(1758f, -604f, var_1.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -399f, -233f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -1000f, _wgslsmith_f_op_f32(floor(var_1.a))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-154f, var_1.a, var_1.a) - vec3<f32>(var_1.a, var_1.a, -1270f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a, 1248f, 421f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a, 1430f, var_1.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, var_1.a, 1332f), vec3<f32>(var_1.a, 652f, -182f), var_0.x)))))));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, _wgslsmith_f_op_f32(step(var_2.x, -115f)), _wgslsmith_f_op_f32(max(var_1.a, var_2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.x, 839f, var_2.x), vec3<f32>(855f, var_1.a, -761f)))), !(var_0.x | false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1200f, var_2.x, var_2.x)));
    return vec2<bool>(var_0.x, !(!var_0.x & false));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = Struct_3(arg_2.c.a, vec3<u32>(~4294967295u, ~countOneBits(firstLeadingBit(4294967295u)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.c.b, firstTrailingBit(vec3<u32>(4294967295u, arg_2.b, arg_2.c.b.x))), vec3<u32>(0u, 3376u, ~arg_0.c.b.x))));
    let var_1 = func_2();
    var var_2 = arg_0.c.b.x;
    var_2 = arg_2.c.b.x;
    var_2 = arg_2.b;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1486f, -115f) * var_0.a.x), arg_3.b.x, _wgslsmith_f_op_f32(arg_3.a * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1219f)))), _wgslsmith_f_op_f32(arg_2.c.a.x * arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(-10768i, reverseBits(0i));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(392f, -246f, 974f, -621f), vec4<f32>(1000f, -101f, 1000f, 580f)))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1491f, 2295f, 1178f, -188f) - vec4<f32>(602f, -243f, 509f, 651f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1980f, -584f, 1000f, 2670f)))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1654f, 1044f, 201f, 852f), vec4<f32>(-1916f, -651f, 1234f, 1000f)), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(957f, 238f, 231f, 1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-400f, -129f, -378f, 644f))) - _wgslsmith_f_op_vec4_f32(func_1(Struct_4(true, 0u, Struct_3(vec4<f32>(-824f, -773f, -844f, 1000f), vec3<u32>(77464u, 22543u, 0u)), -240f), Struct_1(-245f), Struct_4(false, 0u, Struct_3(vec4<f32>(-1307f, 514f, -1530f, -171f), vec3<u32>(11806u, 74320u, 18604u)), 1610f), Struct_2(-239f, vec3<f32>(1000f, 823f, 313f)))))))));
    let var_2 = vec2<bool>(var_1.x != -158f, (i32(-1i) * -40804i) <= select(0i, firstTrailingBit(var_0) & _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c), u_input.a), var_1.x < _wgslsmith_f_op_f32(-1566f + var_1.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1180f, var_1.x, -447f, 1799f) - vec4<f32>(var_1.x, 132f, var_1.x, var_1.x)))))) - vec4<f32>(-895f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x + var_1.x))), _wgslsmith_f_op_f32(var_1.x - -1118f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-579f + var_1.x)))));
    let var_3 = vec3<i32>(var_0, abs(var_0), var_0);
    let var_4 = u_input.c;
    let var_5 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 44486u, 84u), ~vec4<u32>(1u, 14406u, 0u, 1u)) >> (_wgslsmith_mod_u32(~15768u, _wgslsmith_sub_u32(13376u, 1u)) % 32u), ~(~4294967295u)), ~48796u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(252f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 712f))), _wgslsmith_f_op_f32(ceil(var_1.x))), var_1.wyy, ~countOneBits(select(~vec2<i32>(var_4, 0i), ~u_input.a, var_2.x)));
}

