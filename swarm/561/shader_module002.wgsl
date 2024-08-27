struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
    c: Struct_2,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<f32>(-487f, 122f, -2016f, 823f), Struct_3(false, 42287u, vec2<i32>(37173i, i32(-2147483648)), 119836u, -535f), 0u);

var<private> global1: array<vec2<i32>, 12>;

var<private> global2: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(0i, 0i, -6506i), vec3<i32>(28245i, 21777i, i32(-2147483648)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = Struct_3(u_input.b <= global0.b.c.x, ~(~global0.b.d & ~(69269u << (global0.b.d % 32u))), _wgslsmith_add_vec2_i32(vec2<i32>(firstLeadingBit(~2147483647i), -19907i), countOneBits(global1[_wgslsmith_index_u32(35951u, 12u)])), global0.c, 1f);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-508f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, var_0.e))), var_0.e));
    let var_2 = Struct_5(vec3<u32>(u_input.a.x, ~var_0.d, 1u >> (global0.c % 32u)), global0.b.c.x, Struct_2(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a.x, 73616u), ~vec3<u32>(global0.c, global0.c, var_0.b))), Struct_2(select(vec3<u32>(4294967295u, u_input.a.x, global0.b.b) ^ vec3<u32>(var_0.d, var_0.d, 1254u), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.b, 25700u, 16843u), vec3<u32>(var_0.d, u_input.a.x, 60374u)), vec3<bool>(var_0.a, true, var_0.a)) | ((vec3<u32>(115346u, 1u, u_input.a.x) & vec3<u32>(u_input.a.x, 0u, u_input.a.x)) & (vec3<u32>(16440u, global0.b.b, global0.b.b) ^ vec3<u32>(u_input.a.x, 1u, 0u)))), vec4<i32>(_wgslsmith_dot_vec2_i32(~(-global0.b.c), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.b.c.x, u_input.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 23990i), global0.b.c, vec2<i32>(var_0.c.x, -6467i)), vec2<i32>(2147483647i, var_0.c.x))), u_input.d, firstLeadingBit(abs(-1i | var_0.c.x)), abs(-47920i)));
    var var_3 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.e, var_0.e)) - var_0.e), -1109f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(1f))), global0.b, ~(~(~u_input.a.x)));
    let var_4 = var_0;
    return _wgslsmith_f_op_f32(-var_4.e);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3) -> vec4<i32> {
    global2 = array<vec3<i32>, 2>();
    let var_0 = 5773u;
    var var_1 = -936f;
    var_1 = -1870f;
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(global0.b.e - arg_2.e)), _wgslsmith_f_op_f32(arg_0.c + _wgslsmith_div_f32(arg_2.e, 868f)), -1317f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c + arg_0.c) + arg_0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(914f, arg_0.c, global0.b.e, -503f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global0.a)))), vec4<bool>(true, true, true, true))), Struct_3(global0.b.a, max(arg_2.b, arg_1), abs(firstLeadingBit(vec2<i32>(-26964i, -47738i))), 62272u, arg_0.c), 1u >> (~_wgslsmith_dot_vec4_u32(~vec4<u32>(2891u, arg_1, arg_1, u_input.a.x), abs(vec4<u32>(arg_2.d, arg_1, 0u, 50065u))) % 32u));
    return vec4<i32>(u_input.d, -(0i & arg_2.c.x), max(-751i, ~_wgslsmith_mult_i32(2147483647i & u_input.e, arg_2.c.x >> (var_0 % 32u))), -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_2.c, -global0.b.c), ~_wgslsmith_div_vec2_i32(vec2<i32>(0i, global0.b.c.x), vec2<i32>(var_2.b.c.x, 2147483647i))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_5) -> Struct_4 {
    let var_0 = Struct_3(global0.b.a, arg_1.a.x, -_wgslsmith_mult_vec2_i32(-(~vec2<i32>(-68758i, global0.b.c.x)), _wgslsmith_sub_vec2_i32(countOneBits(global1[_wgslsmith_index_u32(global0.c, 12u)]), global0.b.c)), abs(global0.b.d) >> ((~24411u | arg_1.d.a.x) % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x - -152f))), global0.a.x));
    var var_1 = select(~(vec4<u32>(33995u, var_0.b, global0.c, 12036u) << (~vec4<u32>(global0.b.d, 83658u, 15680u, 5062u) % vec4<u32>(32u))) ^ vec4<u32>(~arg_1.d.a.x, reverseBits(80279u), ~(4294967295u | arg_1.a.x), 4294967295u), _wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 46099u, 1u, u_input.a.x) | vec4<u32>(0u, var_0.d, u_input.a.x, var_0.d), select(vec4<u32>(4294967295u, global0.b.d, 0u, var_0.b), vec4<u32>(72636u, 85201u, 7197u, 14882u), vec4<bool>(global0.b.a, var_0.a, global0.b.a, true)))), _wgslsmith_add_vec4_u32(vec4<u32>(~22204u, 18761u, ~43497u, 1009u), vec4<u32>(~arg_1.c.a.x, var_0.d, ~arg_1.d.a.x, 50367u))), select(!vec4<bool>(true, var_0.a, var_0.a && false, -61698i <= arg_1.b), select(select(!vec4<bool>(global0.b.a, false, var_0.a, var_0.a), !vec4<bool>(global0.b.a, var_0.a, var_0.a, false), any(vec4<bool>(var_0.a, true, true, var_0.a))), !vec4<bool>(false, false, global0.b.a, global0.b.a), !select(vec4<bool>(true, var_0.a, global0.b.a, global0.b.a), vec4<bool>(var_0.a, global0.b.a, global0.b.a, true), true)), all(select(vec2<bool>(true, false), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(global0.b.a, true), vec2<bool>(true, global0.b.a)), vec2<bool>(true, global0.b.a)))));
    var var_2 = firstTrailingBit(~(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, global0.b.d), vec2<u32>(var_1.x, 4294967295u)) | vec2<u32>(4294967295u, var_0.b)) ^ ~abs(~vec2<u32>(62365u, arg_1.d.a.x)));
    var var_3 = Struct_1((~abs(var_0.d) == abs(_wgslsmith_div_u32(var_1.x, 0u))) || all(vec3<bool>(1568f == global0.b.e, var_0.a, all(vec2<bool>(var_0.a, var_0.a)))), true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-219f * global0.b.e)))))));
    let var_4 = global0.b;
    return Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1121f, _wgslsmith_f_op_f32(-global0.a.x), 197f, arg_0.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c, var_0.e, 1951f, arg_0.x)) + vec4<f32>(var_4.e, var_3.c, var_0.e, var_3.c))), _wgslsmith_f_op_vec4_f32(-arg_0)), Struct_3(!all(!vec2<bool>(true, var_3.a)), var_2.x | 44616u, global1[_wgslsmith_index_u32(var_0.b, 12u)], countOneBits(var_4.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c * _wgslsmith_f_op_f32(step(-1075f, var_4.e))))), firstTrailingBit(arg_1.d.a.x << (u_input.a.x % 32u)));
}

fn func_1() -> Struct_4 {
    let var_0 = func_4(vec4<f32>(global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b.e))), global0.b.e), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.e) + _wgslsmith_f_op_f32(func_2(39381i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-425f + _wgslsmith_f_op_f32(-588f + global0.b.e)))), Struct_5(vec3<u32>(39197u, 49883u, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.c.x, global0.b.c.x, -51449i, 17109i) ^ func_3(Struct_1(true, global0.b.a, -440f), 37888u, global0.b), -(vec4<i32>(2147483647i, u_input.e, u_input.b, 0i) ^ vec4<i32>(18683i, 1i, u_input.c, -2147483647i))), Struct_2(~vec3<u32>(global0.b.d, 9640u, global0.b.d) >> (~vec3<u32>(23076u, 26832u, u_input.a.x) % vec3<u32>(32u))), Struct_2(~select(vec3<u32>(global0.b.d, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, global0.b.d, global0.b.b), false)), ~vec4<i32>(~(-1i), global0.b.c.x | u_input.d, reverseBits(-2147483647i), -17745i)));
    global1 = array<vec2<i32>, 12>();
    let var_1 = any(!(!(!vec4<bool>(global0.b.a, true, var_0.b.a, false))));
    var var_2 = ~(~(global0.b.c.x >> (_wgslsmith_add_u32(global0.b.b, 71370u) % 32u)) << (0u % 32u));
    var var_3 = 0i >> (global0.c % 32u);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = Struct_4(global0.a, func_1().b, global0.b.b);
    global1 = array<vec2<i32>, 12>();
    var var_0 = 1297f;
    var var_1 = false;
    var var_2 = Struct_5(~(~min(vec3<u32>(global0.b.d, 0u, 7184u) << (vec3<u32>(0u, global0.c, u_input.a.x) % vec3<u32>(32u)), vec3<u32>(1u, u_input.a.x, 0u) ^ vec3<u32>(1u, 0u, 78045u))), -(~_wgslsmith_sub_i32(~2147483647i, _wgslsmith_mult_i32(global0.b.c.x, u_input.c))), Struct_2(vec3<u32>(func_1().b.b, 1u, 1u)), Struct_2(vec3<u32>(35801u, u_input.a.x, firstLeadingBit(~u_input.a.x))), _wgslsmith_sub_vec4_i32(select((vec4<i32>(-7183i, -2147483647i, 25712i, global0.b.c.x) >> (vec4<u32>(global0.b.d, 1u, global0.c, 4294967295u) % vec4<u32>(32u))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 43750u, u_input.a.x, 23834u), vec4<u32>(u_input.a.x, 1u, 4294967295u, global0.b.b), vec4<u32>(4294967295u, global0.c, u_input.a.x, global0.c)) % vec4<u32>(32u)), select(vec4<i32>(22859i, -5805i, u_input.c, -6882i), abs(vec4<i32>(global0.b.c.x, -116922i, -2147483647i, u_input.e)), !vec4<bool>(global0.b.a, global0.b.a, global0.b.a, true)), true), abs(~vec4<i32>(global0.b.c.x, 2147483647i, global0.b.c.x, u_input.d)) << (max(_wgslsmith_mult_vec4_u32(vec4<u32>(2869u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(4294967295u, 12458u, global0.b.d, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, 25155u, 1389u) & vec4<u32>(u_input.a.x, u_input.a.x, global0.b.b, global0.b.d)) % vec4<u32>(32u))));
    var var_3 = Struct_1(!global0.b.a, all(vec3<bool>(global0.b.a, global0.b.a, false)), 873f);
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~vec3<u32>(global0.b.d, global0.c, global0.b.b)), var_2.d.a), 1u);
}

