struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(984f - -839f), arg_0.x, _wgslsmith_f_op_f32(sign(-385f)), 231f), false, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(430f, _wgslsmith_f_op_f32(2052f + 750f), true)), arg_0.x) + _wgslsmith_f_op_vec2_f32(-arg_0.zz)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), 396f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(arg_0.x + -156f), _wgslsmith_f_op_f32(-2084f - 806f), 1000f))), vec4<u32>(1u, 1u, 1u, ~(~(~20117u))));
    var var_1 = _wgslsmith_f_op_f32(min(var_0.d.x, arg_0.x));
    var_1 = _wgslsmith_f_op_f32(arg_0.x - 1061f);
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * 179f)), 1960f, 1000f, _wgslsmith_f_op_f32(arg_0.x + var_0.a.x)), var_0.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x * var_0.c.x)))), -1583f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(var_0.d.x, var_0.a.x, arg_0.x, -2057f))))), vec4<u32>(1u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e.x, 0u, 2479u, 0u), vec4<u32>(87520u, var_0.e.x, 29129u, var_0.e.x))), _wgslsmith_mult_u32(var_0.e.x, firstTrailingBit(select(var_0.e.x, var_0.e.x, var_0.b))), ~firstLeadingBit(var_0.e.x)));
    let var_3 = ~u_input.b.zz;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = u_input.a.zww;
    var_0 = -(u_input.a.xxy ^ u_input.a.www) ^ (-vec3<i32>(i32(-1i) * -19653i, _wgslsmith_div_i32(u_input.a.x, u_input.b.x), ~var_0.x) << (~(vec3<u32>(arg_0.e.x, 4294967295u, 40664u) | vec3<u32>(0u, arg_0.e.x, arg_0.e.x)) % vec3<u32>(32u)));
    var var_1 = true;
    var_1 = !select(!(_wgslsmith_f_op_f32(-1642f + arg_0.c.x) < _wgslsmith_f_op_f32(arg_0.d.x + arg_0.d.x)), arg_0.b, any(vec2<bool>(any(vec2<bool>(arg_0.b, true)), 68158u <= arg_0.e.x)));
    var_0 = vec3<i32>(i32(-1i) * -14635i, -(~var_0.x) & abs(var_0.x), -2147483647i);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x - 130f), _wgslsmith_f_op_f32(-arg_0.c.x), 1440f, _wgslsmith_f_op_f32(func_3(vec3<f32>(arg_0.a.x, 1369f, -223f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1310f, 432f, -1326f, arg_0.a.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1194f, 523f, 359f, -1980f) * arg_0.a)))), false, vec2<f32>(_wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(-arg_0.d.x)), _wgslsmith_f_op_f32(arg_0.c.x + arg_0.d.x)), vec4<f32>(2358f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, arg_0.c.x) - _wgslsmith_div_f32(arg_0.c.x, arg_0.d.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-874f - 1317f))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.c.x)) - _wgslsmith_div_f32(arg_0.c.x, 484f))), _wgslsmith_div_f32(-1441f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1952f * arg_0.d.x)))), arg_0.e);
}

fn func_1() -> vec4<u32> {
    let var_0 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -485f, 320f, 634f) - vec4<f32>(-1883f, -946f, -1513f, 674f)), vec4<f32>(-810f, 1420f, 189f, 1165f), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true)))), true & select(any(vec4<bool>(true, true, false, true)), true, true), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(656f, -1863f) * vec2<f32>(869f, -166f)), vec2<f32>(1000f, -1223f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1565f, 798f, 1088f, -215f), _wgslsmith_f_op_vec4_f32(vec4<f32>(817f, -928f, 634f, -436f) * vec4<f32>(-174f, -581f, -1061f, -757f)))), _wgslsmith_div_vec4_f32(vec4<f32>(739f, -1691f, -1382f, -185f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1406f, -1000f, -1402f, 1172f))))), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))));
    let var_1 = var_0;
    var var_2 = ~_wgslsmith_mod_i32(~(-(~u_input.b.x)), -97985i);
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 467f, -288f, 501f), vec4<f32>(136f, -149f, -433f, -493f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-837f, 1000f, 1667f, -359f))))))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(525f + 954f), -839f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(168f, 793f, 294f, -484f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1086f, 846f, -780f, -424f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(704f, -243f, -238f, -1207f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1894f, -346f, -134f, 964f) * vec4<f32>(-246f, 1345f, -1403f, 718f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(355f, -464f, -2156f, -1000f)))), func_1());
    let var_1 = ~var_0.e.zz;
    var var_2 = _wgslsmith_dot_vec3_u32(var_0.e.zxw, abs(var_0.e.zyy));
    var var_3 = Struct_1(var_0.a, all(select(!vec4<bool>(true, var_0.b, true, var_0.b), !vec4<bool>(var_0.b, true, var_0.b, var_0.b), vec4<bool>(false, true, false, var_0.b))) | any(!select(vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(var_0.b, true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(316f * -535f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.yw - vec2<f32>(var_0.d.x, var_0.c.x))) + _wgslsmith_div_vec2_f32(var_0.a.zy, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c.x, var_0.d.x), vec2<f32>(var_0.a.x, -850f), vec2<bool>(false, var_0.b)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(170f + 877f) - _wgslsmith_div_f32(var_0.a.x, -151f))), -838f, 2433f, _wgslsmith_f_op_f32(f32(-1f) * -1154f)), ~var_0.e);
    var var_4 = _wgslsmith_div_i32(23301i ^ u_input.b.x, ~_wgslsmith_mult_i32(0i, 1i));
    let var_5 = -1i;
    var_0 = func_2(Struct_1(var_3.a, any(select(!vec2<bool>(var_3.b, var_3.b), select(vec2<bool>(var_0.b, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(var_0.b, var_3.b))), var_0.d.xy, var_3.d, ~max(~var_3.e, abs(vec4<u32>(var_0.e.x, 13764u, var_0.e.x, 1u)))));
    let var_6 = vec2<bool>(var_3.b, true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

