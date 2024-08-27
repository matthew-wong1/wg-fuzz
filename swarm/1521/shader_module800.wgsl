struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(false, true, 1523f), Struct_1(true, true, 1556f), -3048f, vec2<bool>(true, true), Struct_1(false, false, -102f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    global0 = Struct_2(Struct_1(global0.e.b, global0.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.c), _wgslsmith_f_op_f32(518f - -1845f)), 858f))), Struct_1(global0.d.x, global0.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-977f + _wgslsmith_f_op_f32(587f - -1281f)))), global0.a.c, vec2<bool>(true, !(23538u > ~u_input.b.x)), global0.a);
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-289f, 246f) * vec2<f32>(1525f, 486f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.e.c, global0.e.c), vec2<f32>(-451f, 864f), var_0))))))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-855f * -1738f), -1503f, true)), _wgslsmith_f_op_f32(max(1000f, -268f)), _wgslsmith_f_op_f32(1f - global0.a.c), _wgslsmith_f_op_f32(-1000f - var_1.x)) - vec4<f32>(_wgslsmith_f_op_f32(global0.a.c - _wgslsmith_f_op_f32(step(var_1.x, 769f))), 1669f, 1275f, 621f)), Struct_2(global0.e, Struct_1(any(!vec4<bool>(false, true, global0.a.a, true)), false, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(max(351f, 636f)))), _wgslsmith_f_op_f32(min(-135f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(485f)) - -1000f))), global0.d, Struct_1(true, true, _wgslsmith_f_op_f32(round(-1808f)))));
    let var_3 = global0.c;
    return true;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(978f, -1034f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(160f, global0.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.c, -1000f)), _wgslsmith_f_op_f32(-global0.b.c)))), Struct_2(Struct_1(!(u_input.b.x <= 1u), func_3(u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.c * global0.b.c) - global0.c)), global0.a, _wgslsmith_f_op_f32(-global0.e.c), vec2<bool>(any(select(vec3<bool>(arg_0, global0.b.b, arg_0), vec3<bool>(true, false, true), arg_0)), 1i <= u_input.c.x), global0.a));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(505f, -943f, -1125f, 160f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.e.c), var_0.a.x, _wgslsmith_f_op_f32(-var_0.b.e.c), _wgslsmith_f_op_f32(f32(-1f) * -161f)))), Struct_2(Struct_1(false, true, var_0.b.e.c), Struct_1(_wgslsmith_f_op_f32(var_0.a.x - 1814f) > _wgslsmith_f_op_f32(-1471f * 319f), arg_0, _wgslsmith_f_op_f32(global0.b.c * var_0.a.x)), global0.b.c, select(vec2<bool>(var_0.b.d.x, u_input.a.x >= u_input.a.x), vec2<bool>(true, !var_0.b.a.a), global0.e.b), Struct_1(func_3(vec4<i32>(2147483647i, u_input.a.x, -26224i, u_input.a.x) ^ u_input.c), true, global0.e.c)));
    let var_1 = select(_wgslsmith_add_i32(countOneBits(2147483647i), _wgslsmith_clamp_i32(~1i, ~(~u_input.a.x), ~max(-43665i, u_input.a.x))), ~0i, arg_0);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-var_0.a), Struct_2(var_0.b.e, var_0.b.b, 2543f, global0.d, global0.a));
    var var_3 = _wgslsmith_f_op_vec4_f32(-var_2.a);
    return Struct_2(Struct_1(any(!(!vec3<bool>(arg_0, arg_0, true))), true, _wgslsmith_f_op_f32(exp2(var_3.x))), Struct_1(false, any(select(select(vec4<bool>(var_0.b.b.b, false, global0.d.x, false), vec4<bool>(arg_0, true, var_2.b.b.b, global0.d.x), true), select(vec4<bool>(var_2.b.d.x, false, var_2.b.b.a, global0.b.b), vec4<bool>(global0.d.x, global0.e.a, false, false), vec4<bool>(true, var_0.b.e.a, var_2.b.d.x, global0.b.b)), vec4<bool>(arg_0, var_2.b.b.a, arg_0, var_2.b.e.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -336f) - global0.b.c))), -1338f, select(select(vec2<bool>(false && arg_0, true), select(select(vec2<bool>(false, arg_0), var_0.b.d, vec2<bool>(global0.e.b, false)), vec2<bool>(true, true), global0.d), global0.d), global0.d, true), Struct_1(true, var_0.b.b.a, global0.c));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> bool {
    let var_0 = 39672u;
    global0 = arg_1.b;
    var var_1 = u_input.a.wxy;
    global0 = arg_1.b;
    global0 = func_2(!global0.b.b);
    return firstTrailingBit(4294967295u) != 24624u;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 615f, -762f) * vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-807f - 121f), _wgslsmith_f_op_f32(floor(-197f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.e.c, -897f)) + arg_0))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, _wgslsmith_f_op_f32(1387f + 1281f), -1087f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1408f, global0.b.c, -719f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.c, global0.c, global0.b.c))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-438f, var_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-767f, -1658f)));
    var var_2 = Struct_2(global0.b, Struct_1(func_4(select(vec4<u32>(0u, arg_3.x, arg_1, 1u), select(vec4<u32>(13081u, 128698u, 1u, arg_1), vec4<u32>(26406u, 1u, 0u, arg_3.x), arg_2), true), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_1, -1000f, global0.e.c)), func_2(global0.e.b)), ~11042u, Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-164f, arg_0, arg_0, global0.e.c)), func_2(false))), any(select(select(global0.d, vec2<bool>(true, true), arg_2), vec2<bool>(true, false), select(vec2<bool>(global0.a.b, arg_2), global0.d, true))), -809f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.c)), select(global0.d, global0.d, select(global0.d, !func_2(false).d, !select(global0.d, global0.d, vec2<bool>(global0.b.b, false)))), Struct_1(global0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))) == var_0.x, _wgslsmith_f_op_f32(var_1 + var_1)));
    let var_3 = Struct_3(vec4<f32>(arg_0, _wgslsmith_f_op_f32(595f * var_1), _wgslsmith_f_op_f32(global0.a.c + _wgslsmith_f_op_f32(global0.e.c * _wgslsmith_f_op_f32(-var_2.e.c))), _wgslsmith_f_op_f32(sign(arg_0))), func_2(!func_3(u_input.c) == arg_2));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-303f, _wgslsmith_f_op_f32(f32(-1f) * -1321f))));
    return func_2(!all(vec3<bool>(true, false, !var_3.b.d.x))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-471f, global0.c, 150f))) * vec3<f32>(-126f, global0.c, -2293f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-272f, global0.e.c, global0.b.c))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c, 338f, 540f), vec3<f32>(global0.a.c, global0.e.c, -500f), global0.a.b)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.e.c))), _wgslsmith_f_op_f32(sign(global0.b.c)), -2139f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-833f, global0.a.c, global0.c))))));
    global0 = Struct_2(global0.e, Struct_1(var_0.x == var_0.x, true, -1604f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)) + global0.e.c), select(select(vec2<bool>(global0.b.b, global0.b.b), global0.d, select(vec2<bool>(true, true), vec2<bool>(global0.a.b, false), true)), global0.d, global0.d.x), func_1(global0.a.c, u_input.b.x, global0.b.b, select(vec2<u32>(u_input.b.x, 1u) | ~vec2<u32>(u_input.b.x, 42520u), _wgslsmith_mult_vec2_u32(vec2<u32>(35169u, u_input.b.x), u_input.b), all(vec3<bool>(global0.d.x, global0.a.b, global0.d.x)))));
    var_0 = vec3<f32>(var_0.x, 1104f, var_0.x);
    global0 = func_2(all(!func_2(true).d));
    let var_1 = countOneBits(-2147483647i) << (u_input.b.x % 32u);
    let var_2 = func_2(!all(vec4<bool>(false, func_2(global0.d.x).d.x, true, func_1(var_0.x, 1u, global0.e.b, u_input.b).b)));
    global0 = func_2(var_2.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 24186u), vec4<u32>(5206u, u_input.b.x, 4294967295u, u_input.b.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-529f * -455f), _wgslsmith_f_op_f32(f32(-1f) * -608f), true)), var_0.x, _wgslsmith_f_op_f32(floor(-417f)), 17086u);
}

