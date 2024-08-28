struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(-12936i, -43363i, -26057i, i32(-2147483648)), vec4<i32>(89428i, 16471i, -12194i, 72826i), vec4<i32>(0i, 31654i, 605i, -20692i), vec4<i32>(-1i, -51130i, 2325i, -19122i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: u32, arg_3: vec4<f32>) -> bool {
    let var_0 = u_input.c.xy;
    var var_1 = arg_1.e;
    global0 = array<vec4<i32>, 4>();
    var var_2 = _wgslsmith_div_i32(20770i, abs(abs(abs(-22383i))));
    var_1 = Struct_3(_wgslsmith_mod_i32(~abs(var_1.a | arg_1.b.x), countOneBits(_wgslsmith_mod_i32(_wgslsmith_add_i32(var_1.a, arg_0.a.x), _wgslsmith_sub_i32(var_1.a, 2147483647i)))));
    return -725f <= arg_1.d;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: vec3<bool>) -> Struct_4 {
    global0 = array<vec4<i32>, 4>();
    global0 = array<vec4<i32>, 4>();
    global0 = array<vec4<i32>, 4>();
    let var_0 = ~u_input.d ^ (vec4<u32>(~(~1u), firstLeadingBit(arg_0 | 0u), 4294967295u, ~110987u) & vec4<u32>(1u, ~u_input.d.x, _wgslsmith_mult_u32(~u_input.d.x, arg_0), u_input.c.x));
    var var_1 = Struct_1(-(vec2<i32>(u_input.b ^ u_input.b, _wgslsmith_clamp_i32(u_input.a, u_input.a, -1i)) ^ -(vec2<i32>(1i, u_input.a) >> (vec2<u32>(39447u, u_input.d.x) % vec2<u32>(32u)))), (func_3(Struct_1(vec2<i32>(u_input.b, 0i), false, vec2<u32>(u_input.d.x, arg_0), vec4<f32>(1683f, -815f, arg_1, arg_1), vec4<bool>(arg_2, false, false, arg_2)), Struct_4(arg_3, vec2<i32>(u_input.a, u_input.a), vec3<bool>(arg_2, true, false), 123f, Struct_3(u_input.b)), 1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 2269f, -1295f, arg_1) + vec4<f32>(509f, -1708f, -465f, arg_1))) || false) && true, ~var_0.wy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-886f, arg_1, arg_1, -1561f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(389f, arg_1, arg_1, 633f) * vec4<f32>(arg_1, arg_1, -1596f, arg_1))), vec4<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 - 407f), 340f, _wgslsmith_f_op_f32(-arg_1)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1538f, 322f, arg_1, 483f) + vec4<f32>(arg_1, _wgslsmith_f_op_f32(step(arg_1, 1798f)), arg_1, _wgslsmith_f_op_f32(f32(-1f) * -785f)))), vec4<bool>(arg_2, true, !(!arg_3.x), false));
    return Struct_4(vec3<bool>(func_3(Struct_1(var_1.a, false, vec2<u32>(var_1.c.x, arg_0), vec4<f32>(657f, var_1.d.x, -1127f, -117f), var_1.e), Struct_4(var_1.e.yxx, var_1.a, vec3<bool>(false, true, true), arg_1, Struct_3(-20255i)), select(var_1.c.x, u_input.d.x, false), var_1.d) | !all(vec4<bool>(arg_2, arg_2, arg_3.x, var_1.b)), true, true & (275f >= arg_1)), _wgslsmith_mod_vec2_i32(vec2<i32>(-(u_input.b << (var_1.c.x % 32u)), 36202i), max(_wgslsmith_clamp_vec2_i32(-var_1.a, var_1.a, max(vec2<i32>(0i, u_input.b), vec2<i32>(670i, 1i))), -(~var_1.a))), select(arg_3, arg_3, !((arg_0 > 5388u) != arg_2)), 985f, Struct_3(_wgslsmith_mult_i32(-1i, 0i)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(firstLeadingBit(~u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -189f) * -1948f), !all(vec2<bool>(true, true)), vec3<bool>(all(vec2<bool>(true, true)), !select(true, true, true) && true, false));
    let var_1 = _wgslsmith_add_u32(~(~countOneBits(0u) >> (max(u_input.d.x >> (1u % 32u), _wgslsmith_mult_u32(1u, u_input.c.x)) % 32u)), 0u);
    let var_2 = vec3<i32>(-1i) * -(~vec3<i32>(-var_0.e.a, -1i, -var_0.e.a));
    let var_3 = vec4<i32>(~abs(-2147483647i >> (u_input.c.x % 32u)), _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_0.e.a, 0i), var_2), var_0.e.a) << (_wgslsmith_sub_u32(1u, ~u_input.c.x) % 32u), ~(-21962i), 0i);
    let var_4 = !vec4<bool>(true, false, (abs(var_1) << (4294967295u % 32u)) <= reverseBits(~3893u), !(!(!var_0.a.x)));
    return Struct_1(vec2<i32>(var_2.x, -1i), _wgslsmith_mult_u32(firstLeadingBit(~var_1), ~u_input.c.x) <= 4294967295u, ~(~abs(firstTrailingBit(vec2<u32>(var_1, 4294967295u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(821f, var_0.d, var_0.d, var_0.d) * vec4<f32>(var_0.d, -1020f, var_0.d, var_0.d)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.d, var_0.d, var_0.d, 109f), vec4<f32>(1684f, 964f, 704f, var_0.d))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.d, 833f, 527f)))))), !var_4);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~(-3815i));
    let var_1 = Struct_2(func_1());
    var var_2 = func_2(~var_1.a.c.x, var_1.a.d.x, func_3(Struct_1(~(~var_1.a.a), _wgslsmith_f_op_f32(-var_1.a.d.x) < _wgslsmith_f_op_f32(-var_1.a.d.x), vec2<u32>(_wgslsmith_div_u32(var_1.a.c.x, 0u), _wgslsmith_clamp_u32(0u, var_1.a.c.x, u_input.d.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-892f, var_1.a.d.x, var_1.a.d.x, var_1.a.d.x))), _wgslsmith_f_op_vec4_f32(var_1.a.d - vec4<f32>(-353f, 752f, -2015f, 1000f)))), vec4<bool>(var_1.a.b, var_1.a.e.x || true, func_1().e.x, var_1.a.d.x >= 1534f)), Struct_4(func_1().e.yyx, -var_1.a.a | var_1.a.a, select(!var_1.a.e.yyy, !vec3<bool>(var_1.a.b, false, var_1.a.b), var_1.a.e.x), var_1.a.d.x, func_2(_wgslsmith_mod_u32(43817u, u_input.c.x), _wgslsmith_f_op_f32(ceil(var_1.a.d.x)), var_1.a.e.x, func_1().e.wyz).e), ~(1477u << (1u % 32u)) & _wgslsmith_add_u32(abs(u_input.d.x), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(49695u, 45230u, var_1.a.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_1.a.d))))), vec3<bool>(true, false, all(select(!vec4<bool>(true, var_1.a.b, var_1.a.b, var_1.a.e.x), vec4<bool>(var_1.a.e.x, true, var_1.a.b, false), select(vec4<bool>(var_1.a.b, var_1.a.e.x, var_1.a.e.x, false), vec4<bool>(false, var_1.a.b, var_1.a.e.x, false), vec4<bool>(true, var_1.a.e.x, var_1.a.b, var_1.a.b)))))).e;
    var_0 = func_2(u_input.d.x << (4294967295u % 32u), func_2(~_wgslsmith_div_u32(0u, select(var_1.a.c.x, var_1.a.c.x, var_1.a.e.x)), func_1().d.x, all(select(var_1.a.e.wz, func_2(27330u, var_1.a.d.x, var_1.a.e.x, var_1.a.e.zyz).a.xz, var_1.a.e.zy)), !func_2(u_input.d.x, _wgslsmith_f_op_f32(525f - -360f), 1i < var_0.a, vec3<bool>(false, var_1.a.b, true)).c).d, true, var_1.a.e.yxz).e;
    let var_3 = Struct_1(_wgslsmith_mult_vec2_i32(abs(func_2(reverseBits(18645u), _wgslsmith_f_op_f32(abs(var_1.a.d.x)), true, var_1.a.e.yzw).b), -vec2<i32>(firstTrailingBit(-2147483647i), abs(33045i))), false, vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, var_1.a.c.x), u_input.c.x), ~(~var_1.a.c.x)), _wgslsmith_f_op_vec4_f32(select(func_1().d, vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.a.d.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-285f * -303f))), var_1.a.d.x, var_1.a.d.x), !vec4<bool>(var_1.a.e.x, select(true, var_1.a.e.x, var_1.a.b), true, var_1.a.b))), func_1().e);
    global0 = array<vec4<i32>, 4>();
    var var_4 = any(var_1.a.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3.d.x, var_3.d.x))) + var_1.a.d.zy))))), firstLeadingBit(max(~(u_input.d & vec4<u32>(var_1.a.c.x, var_1.a.c.x, 16786u, var_3.c.x)), u_input.d)));
}

