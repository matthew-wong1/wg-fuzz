struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -250f)), 1231f, 1000f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(716f, 1224f, -513f), vec3<f32>(789f, -187f, -506f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1123f, 1000f, -278f))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1704f + 115f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_0.x))), var_0.x, !(_wgslsmith_mod_u32(u_input.c, u_input.c) > ~31556u))));
    let var_2 = all(select(vec4<bool>(false, true, true & (67548u > u_input.a), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), false)), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))));
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    return ~(~(vec4<u32>(_wgslsmith_mod_u32(u_input.a, 57679u), _wgslsmith_add_u32(0u, 72666u), u_input.c, 4294967295u) >> (countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.e.x, u_input.c, u_input.e.x), vec4<u32>(u_input.c, u_input.c, u_input.e.x, 1u), vec4<u32>(6907u, 18303u, 1u, u_input.e.x))) % vec4<u32>(32u))));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.c, u_input.c, 62035u), vec4<u32>(9548u, u_input.e.x, u_input.c, u_input.c))), countOneBits(vec4<u32>(57142u, u_input.c, u_input.a, u_input.e.x) << ((vec4<u32>(u_input.a, 4294967295u, u_input.e.x, 0u) >> (vec4<u32>(u_input.e.x, 1u, u_input.c, 48471u) % vec4<u32>(32u))) % vec4<u32>(32u)))), 7u)], u_input.b, global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(select(1u, ~u_input.e.x, true), u_input.a), 7u)]);
    global0 = array<Struct_1, 7>();
    var var_1 = var_0.a.d.x;
    global0 = array<Struct_1, 7>();
    let var_2 = func_3();
    return -969f;
}

fn func_1(arg_0: vec3<bool>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, false, arg_0.x))), -848f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(3365f, 1000f) * vec2<f32>(2559f, 689f))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-497f, -166f) * vec2<f32>(1023f, 841f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(808f, -144f)))))), vec2<f32>(185f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(2343f)), -2025f))), 19248u != (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 4294967295u, u_input.c), vec3<u32>(u_input.e.x, 1u, u_input.c)) ^ 77799u))));
    var var_1 = Struct_1(arg_0.x || !arg_0.x, ~u_input.e.x | (0u ^ _wgslsmith_mult_u32(u_input.c, u_input.a >> (1u % 32u))), any(vec3<bool>(!(!arg_0.x), false, _wgslsmith_f_op_f32(-var_0.x) <= var_0.x)), abs(select(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.d.x, u_input.b, u_input.d.x) >> (vec3<u32>(u_input.a, u_input.e.x, u_input.c) % vec3<u32>(32u)), arg_0) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 0u, u_input.e.x), ~vec3<u32>(1u, 13953u, u_input.e.x)) % vec3<u32>(32u))));
    var var_2 = var_1.d >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_1.b >> (_wgslsmith_add_u32(var_1.b, u_input.e.x) % 32u), ~98834u, ~u_input.e.x), ~vec3<u32>(53957u, 4294967295u, 0u) & ~vec3<u32>(var_1.b, u_input.a, 0u)) % vec3<u32>(32u));
    var var_3 = ~(~(~(~vec3<u32>(4294967295u, u_input.e.x, 1u)))) ^ min(_wgslsmith_div_vec3_u32(~(vec3<u32>(var_1.b, var_1.b, 1u) | vec3<u32>(var_1.b, 31508u, var_1.b)), ~vec3<u32>(var_1.b, 0u, var_1.b) >> (vec3<u32>(u_input.c, u_input.a, var_1.b) % vec3<u32>(32u))), vec3<u32>(1u, 4294967295u, max(1u, min(0u, 69687u))));
    let var_4 = var_0.x;
    return abs(vec3<i32>(u_input.d.x, u_input.d.x, -abs(_wgslsmith_clamp_i32(-38511i, u_input.d.x, var_1.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 7>();
    var var_0 = min(func_1(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))) | -((vec3<i32>(1i, -2147483647i, u_input.b) >> (vec3<u32>(18489u, 17035u, 79902u) % vec3<u32>(32u))) << (~vec3<u32>(u_input.c, u_input.c, u_input.e.x) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(select(abs(~vec3<i32>(-26352i, -1i, u_input.d.x)), select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, 2147483647i, -32396i), vec3<i32>(-2147483647i, -1i, 34510i)), abs(vec3<i32>(-5542i, u_input.b, u_input.d.x)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), vec3<i32>(~select(4464i, u_input.d.x, false), -u_input.d.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.d.x), vec3<i32>(-54109i, u_input.d.x, 1i)))));
    var_0 = -firstLeadingBit(_wgslsmith_add_vec3_i32(reverseBits(~vec3<i32>(u_input.b, u_input.d.x, 10609i)), ~(vec3<i32>(-32265i, var_0.x, -1i) >> (vec3<u32>(u_input.c, u_input.a, u_input.a) % vec3<u32>(32u)))));
    var_0 = reverseBits(~vec3<i32>(_wgslsmith_div_i32(0i, u_input.d.x), 15579i, u_input.b)) | -vec3<i32>(var_0.x, 2147483647i, var_0.x);
    var var_1 = u_input.e;
    let var_2 = ~(~(~(~vec3<u32>(1u, var_1.x, 4294967295u)))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e.x, 1u, u_input.e.x), vec3<u32>(var_1.x, u_input.e.x, ~u_input.c)) % vec3<u32>(32u));
    var var_3 = u_input.e;
    var_0 = vec3<i32>(_wgslsmith_mult_i32(-(~(~1i)), 45363i & -var_0.x), 8425i, -u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_div_i32(~_wgslsmith_clamp_i32(-2147483647i, u_input.d.x, var_0.x), _wgslsmith_clamp_i32(max(0i, u_input.b), var_0.x, var_0.x)), -15231i, _wgslsmith_dot_vec3_i32(countOneBits(-vec3<i32>(var_0.x, var_0.x, -12731i)), -vec3<i32>(var_0.x, u_input.d.x, var_0.x) | ~vec3<i32>(u_input.b, 11593i, u_input.d.x))), ~var_2, vec2<u32>(var_1.x, 35684u));
}

