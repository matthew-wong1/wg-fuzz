struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = select(vec3<bool>(all(vec4<bool>(true, select(true, true, false), u_input.d < 37086u, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), !all(vec4<bool>(true, true, true, true))), vec3<bool>(true, (~u_input.b << (arg_0.x % 32u)) >= _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.e, 20318i), -35100i), all(vec3<bool>(true, true, true))), select(select(vec3<bool>(true, 4294967295u < u_input.d, true), vec3<bool>(true, false, u_input.e == u_input.a), vec3<bool>(true, true, false)), !vec3<bool>(select(true, false, true), all(vec2<bool>(false, false)), true), all(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false))));
    let var_1 = any(vec2<bool>(true, true));
    var var_2 = Struct_2(_wgslsmith_dot_vec4_i32((_wgslsmith_add_vec4_i32(vec4<i32>(0i, 12374i, u_input.a, 0i), vec4<i32>(1i, u_input.e, -1i, 0i)) & vec4<i32>(u_input.b, u_input.b, u_input.e, -28881i)) ^ _wgslsmith_mod_vec4_i32(~vec4<i32>(45888i, u_input.b, -8035i, 234i), _wgslsmith_mod_vec4_i32(vec4<i32>(-33266i, u_input.b, 2147483647i, -1i), vec4<i32>(u_input.e, u_input.a, u_input.a, u_input.b))), vec4<i32>(-_wgslsmith_mult_i32(-20478i, u_input.b), 45579i, -2147483647i, min(u_input.b, -23363i) ^ ~(-10108i))), _wgslsmith_f_op_f32(trunc(1562f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1271f, _wgslsmith_f_op_f32(ceil(-1000f)), 156f, -1000f)))));
    return _wgslsmith_mod_u32(arg_0.x, 93504u);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1888f);
    let var_1 = i32(-1i) * -2147483647i;
    var var_2 = func_3(_wgslsmith_mod_vec2_u32(countOneBits(~(~vec2<u32>(u_input.c, u_input.d))), _wgslsmith_mult_vec2_u32(vec2<u32>(47319u, abs(u_input.c)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, u_input.d), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 5906u), vec2<u32>(u_input.c, u_input.c))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1387f))), _wgslsmith_f_op_f32(-1280f - _wgslsmith_f_op_f32(round(-443f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1487f)), -665f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(935f, -1000f, -961f, 250f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-345f, -428f, -148f, -1298f))))), !select(true, true, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-951f, 556f, 670f, 1880f), vec4<f32>(-765f, -369f, 531f, -103f)), _wgslsmith_div_vec4_f32(vec4<f32>(-968f, 1818f, -604f, -1376f), vec4<f32>(-1851f, -301f, -435f, -455f)), vec4<bool>(true, true, true, true)))), _wgslsmith_div_u32(~1u, 48606u) <= u_input.c)));
    var var_4 = Struct_1(-321f, -vec2<i32>(-(~u_input.e), var_1 << (_wgslsmith_mult_u32(u_input.d, 0u) % 32u)), vec2<i32>(var_1, 43667i));
    return Struct_1(_wgslsmith_f_op_f32(-var_4.a), var_4.c, -var_4.b);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> vec2<i32> {
    let var_0 = false;
    var var_1 = -1360f;
    var_1 = arg_1.a;
    var var_2 = arg_1.a;
    let var_3 = firstLeadingBit(~(~reverseBits(func_2().c.x)));
    return abs(arg_1.c);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_2(arg_0.x, -395f, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1556f, 1000f, 1069f, arg_2)))))));
    let var_1 = vec2<bool>(any(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true)), !(!(all(vec3<bool>(true, true, true)) || true)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -332f);
    let var_3 = -330f;
    let var_4 = var_3;
    return func_2();
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = func_5(-max(~(~vec2<i32>(-2147483647i, u_input.a)), vec2<i32>(-29003i, arg_0.a)), func_4(arg_0.a, func_2(), u_input.d & (~u_input.d & (u_input.d & u_input.d))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0.c.x)), arg_0.c.x, arg_0.b > -811f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, arg_0.b, arg_0.c.x, var_0.a) - vec4<f32>(497f, 353f, arg_0.c.x, arg_0.c.x)) * _wgslsmith_f_op_vec4_f32(arg_0.c * vec4<f32>(var_0.a, -1284f, 1095f, arg_0.b))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(arg_0.c)))), false))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c * _wgslsmith_f_op_vec4_f32(-arg_0.c)) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), 187f, 720f, arg_0.c.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, -1112f, 693f, -1000f) - _wgslsmith_div_vec4_f32(vec4<f32>(872f, -1737f, -183f, var_0.a), vec4<f32>(arg_0.c.x, var_0.a, 727f, var_0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b, arg_0.b, var_0.a, 833f), vec4<f32>(1346f, var_0.a, arg_0.c.x, var_0.a), vec4<bool>(false, true, false, true))))))))));
    var var_2 = Struct_3(arg_0);
    let var_3 = u_input.d;
    var var_4 = var_0.a;
    return Struct_2(_wgslsmith_sub_i32(~0i, -1i ^ (min(-2068i, var_2.a.a) | -65632i)), var_2.a.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.a.b)), var_0.a, var_2.a.b, _wgslsmith_f_op_f32(select(var_2.a.b, var_0.a, true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(-2147483647i, 1000f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(760f, 330f, 1017f, -128f)) - vec4<f32>(-1947f, -808f, 1000f, -1000f)))));
    let var_1 = 0u;
    let var_2 = any(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true)), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), true), vec2<bool>(false | all(vec3<bool>(false, false, true)), all(vec4<bool>(true, false, false, false)))));
    var_0 = Struct_2(~(~2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -266f) - _wgslsmith_f_op_f32(192f + 741f))), var_0.b), vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(854f, var_0.c.x), -848f));
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_3.b);
}

