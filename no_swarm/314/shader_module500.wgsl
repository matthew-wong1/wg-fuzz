struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> vec2<u32> {
    var var_0 = select(vec4<u32>(0u, ~(u_input.d.x & countOneBits(1u)), ~(~11216u), 45940u), ~vec4<u32>(min(24082u, 31440u), countOneBits(u_input.e.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 0u, 42594u), u_input.c.zxy ^ vec3<u32>(u_input.e.x, u_input.c.x, 1u)), ~(~u_input.a)), true);
    let var_1 = _wgslsmith_add_u32(36595u, 21780u);
    var_0 = vec4<u32>(max(var_1, var_1), 5930u, firstTrailingBit(_wgslsmith_div_u32(firstLeadingBit(~20571u), ~var_0.x)), 1u);
    var var_2 = Struct_1(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2828f + _wgslsmith_f_op_f32(floor(-781f)))))), true, ~1u);
    let var_3 = Struct_3(select(!var_2.a.xx, !var_2.a.wx, vec2<bool>(any(select(vec2<bool>(var_2.a.x, false), var_2.a.wy, var_2.a.yx)), false)), ~var_2.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, -1531f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - var_2.b)), var_2.b)), u_input.a, -u_input.b);
    return u_input.e;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4) -> f32 {
    var var_0 = vec2<u32>(0u, arg_1.b.d);
    let var_1 = i32(-1i) * -35822i;
    var_0 = func_3(u_input.b >> (vec3<u32>(_wgslsmith_add_u32(arg_1.b.d, ~49116u), abs(abs(u_input.d.x)), 0u) % vec3<u32>(32u)));
    var var_2 = 789f;
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2175f, -1021f, arg_1.c) * arg_0.c.wyw) * arg_0.c.wyx), vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.b.b)), _wgslsmith_f_op_f32(100f + arg_0.c.x), -990f), arg_1.a.zyz)))));
    return -309f;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_3(!select(vec2<bool>(!arg_0, !arg_0), vec2<bool>(true, true), true), 0u | ((~28056u ^ u_input.c.x) << (u_input.c.x % 32u)), vec4<f32>(-1518f, arg_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x)), -539f)), -1032f), 123625u | max(u_input.e.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.d), _wgslsmith_div_u32(58186u, u_input.a))), firstTrailingBit(u_input.b & abs(-u_input.b)));
    let var_1 = vec4<bool>(false, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.e.x, u_input.c.x, var_0.d), u_input.d), u_input.c) < firstTrailingBit(_wgslsmith_dot_vec4_u32(abs(u_input.d), vec4<u32>(40424u, 1u, 6203u, 1u) ^ vec4<u32>(68224u, var_0.d, 4294967295u, var_0.b))), select(1u != (var_0.b & u_input.a), true, ~var_0.b >= 64239u), var_0.a.x);
    let var_2 = Struct_4(!(!vec4<bool>(var_1.x, any(vec2<bool>(var_1.x, arg_0)), var_1.x, false)), Struct_1(select(var_1, var_1, select(vec4<bool>(var_1.x, false, true, false), var_1, !vec4<bool>(false, arg_0, var_1.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), all(!var_1.xzw), var_0.d), -1135f);
    var var_3 = var_2;
    var_3 = Struct_4(select(var_3.b.a, !var_3.b.a, var_0.a.x), Struct_1(var_1, _wgslsmith_div_f32(var_2.b.b, _wgslsmith_f_op_f32(100f * _wgslsmith_f_op_f32(arg_1.x - 198f))), all(select(var_2.a.zyy, vec3<bool>(var_3.a.x, true, var_0.a.x), arg_0)) || arg_0, firstLeadingBit(var_0.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1300f), _wgslsmith_f_op_f32(-var_2.b.b))))));
    return Struct_2(var_2.b, ~_wgslsmith_sub_i32(-2147483647i, firstLeadingBit(select(u_input.b.x, var_0.e.x, false))), false, var_3.b, select(!vec4<bool>(all(vec3<bool>(var_3.a.x, arg_0, false)), var_1.x, arg_0, true), var_1, select(select(vec4<bool>(false, var_1.x, arg_0, var_3.b.a.x), var_1, vec4<bool>(arg_0, var_0.a.x, true, true)), select(select(var_1, var_1, vec4<bool>(var_2.b.a.x, false, true, true)), select(vec4<bool>(arg_0, true, true, false), var_2.a, vec4<bool>(var_0.a.x, var_3.a.x, var_1.x, false)), vec4<bool>(var_1.x, false, var_0.a.x, var_0.a.x)), vec4<bool>(var_1.x, arg_0, true, !arg_0))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(true | all(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(577f * 510f) - _wgslsmith_f_op_f32(f32(-1f) * -1692f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1846f)) * _wgslsmith_f_op_f32(154f * -445f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(vec2<bool>(true, false), 1u, vec4<f32>(-154f, 2566f, 1455f, 777f), u_input.d.x, u_input.b), Struct_4(vec4<bool>(false, false, false, false), Struct_1(vec4<bool>(false, false, true, false), -417f, false, u_input.d.x), 778f))) + _wgslsmith_f_op_f32(368f - 1673f)) - _wgslsmith_f_op_f32(510f * -2065f))));
    let var_1 = var_0.d.b;
    let var_2 = Struct_2(Struct_1(!select(vec4<bool>(false, true, var_0.c, false), func_4(true, vec3<f32>(var_1, var_1, 2306f)).d.a, true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.b * var_0.d.b) * _wgslsmith_div_f32(773f, var_1)))), true, select(_wgslsmith_sub_u32(~var_0.a.d, 1u), ~var_0.a.d, func_4(func_4(false, vec3<f32>(var_0.d.b, var_1, -753f)).d.c, vec3<f32>(-1061f, var_0.a.b, 494f)).a.c)), u_input.b.x, !var_0.d.a.x, var_0.a, func_4(false, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -529f, -628f))), vec3<f32>(-733f, -807f, _wgslsmith_f_op_f32(-var_1))))).d.a);
    var var_3 = false;
    let var_4 = vec2<u32>(func_4(var_0.e.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_2.a.b, 587f) + vec3<f32>(var_2.d.b, -1165f, var_2.a.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-531f, -1860f, 1000f) + vec3<f32>(var_1, var_2.a.b, var_2.d.b)))))).d.d, _wgslsmith_dot_vec3_u32(u_input.c.zwx, vec3<u32>(countOneBits(u_input.e.x), ~var_0.a.d & var_0.a.d, ~4294967295u)));
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(), u_input.b.x, false, func_1(), !(!vec4<bool>(true, true, any(vec4<bool>(true, false, false, true)), true)));
    let var_1 = !(_wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1660f))))) == _wgslsmith_f_op_f32(356f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_2 = Struct_4(!vec4<bool>(1i == (47172i & var_0.b), true, select(!var_0.d.c, false, false), false), Struct_1(vec4<bool>(all(func_4(true, vec3<f32>(var_0.d.b, var_0.a.b, var_0.d.b)).d.a.wz), !var_0.a.a.x, !(!var_0.c), var_1), _wgslsmith_f_op_f32(f32(-1f) * -332f), true, 11905u), func_1().b);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.d, vec3<i32>(-1i) * -vec3<i32>(u_input.b.x << (94059u % 32u), -1i, var_0.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, var_2.c)), _wgslsmith_div_vec2_f32(vec2<f32>(-1381f, var_2.c), vec2<f32>(var_2.b.b, 1711f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.b, 1472f)) + vec2<f32>(632f, 738f)))));
}

