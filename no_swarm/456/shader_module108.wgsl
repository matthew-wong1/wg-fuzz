struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<vec3<bool>, 18>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> vec4<bool> {
    global0 = array<vec3<bool>, 18>();
    global0 = array<vec3<bool>, 18>();
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(abs(1i), 0i), 74771i, ~u_input.a, 1i), ~_wgslsmith_mult_vec4_i32(vec4<i32>(~u_input.a, reverseBits(11433i), ~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, u_input.a), vec3<i32>(31824i, 48080i, u_input.a))), firstTrailingBit(vec4<i32>(2147483647i, 31782i, 2147483647i, 6047i))), min((max(vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.a), vec4<i32>(2147483647i, u_input.b, u_input.b, 39242i)) & select(vec4<i32>(12993i, u_input.b, 0i, u_input.b), vec4<i32>(u_input.a, 59203i, u_input.a, 1i), vec4<bool>(false, true, true, true))) << (~(~vec4<u32>(59986u, 13386u, 1376u, 0u)) % vec4<u32>(32u)), -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, 1i), vec3<i32>(32732i, 0i, -2147483647i)), u_input.b, u_input.a, -2147483647i)));
    var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, var_0.x, abs(-58662i), 2147483647i), vec4<i32>(firstLeadingBit(1i), ~var_0.x, 2147483647i, abs(u_input.b)));
    var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(14327i, -2147483647i, 4070i), vec3<i32>(var_0.x, u_input.a, var_0.x)), abs(var_0.x), -1i), ~var_0.www), var_0.x, u_input.a, var_0.x) & ~(max(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_0.x, var_0.x, -10593i), vec4<i32>(3244i, u_input.a, -2147483647i, var_0.x)), -vec4<i32>(u_input.a, var_0.x, -6406i, 2147483647i)) << (reverseBits(~vec4<u32>(4294967295u, 77009u, 4294967295u, 4294967295u)) % vec4<u32>(32u)));
    return vec4<bool>(!(!all(vec4<bool>(false, true, true, false))) | all(vec4<bool>(true, true, true, true)), var_0.x < _wgslsmith_div_i32(var_0.x, -3561i), !any(vec4<bool>(true, true, true, true)), true);
}

fn func_3() -> f32 {
    global0 = array<vec3<bool>, 18>();
    global0 = array<vec3<bool>, 18>();
    var var_0 = vec4<bool>(true, select(!(true | any(vec2<bool>(true, true))), true, true), any(select(!select(global0[_wgslsmith_index_u32(27257u, 18u)], vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(firstLeadingBit(0u), 18u)], select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(63560u, 18u)])), !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(9082u, 42251u), 18u)])), true);
    var var_1 = min(abs(~vec4<u32>(min(1u, 1u), ~73197u, abs(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 63844u), vec2<u32>(4294967295u, 4294967295u)))), ~(min(~vec4<u32>(1u, 4294967295u, 26577u, 81609u), vec4<u32>(0u, 94815u, 0u, 1u)) ^ vec4<u32>(~36716u, firstTrailingBit(4294967295u), 4294967295u, ~33270u)));
    var_1 = vec4<u32>(23534u, countOneBits(64653u), max(~60409u, 3836u), reverseBits(firstTrailingBit(~(~65109u))));
    return -1292f;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_3) -> StorageBuffer {
    var var_0 = (arg_1.x >= arg_1.x) & ((_wgslsmith_f_op_f32(func_3()) != -148f) == true);
    var var_1 = _wgslsmith_div_vec4_i32(~min(abs(-vec4<i32>(u_input.b, u_input.a, u_input.a, 21281i)), ~(-vec4<i32>(0i, -12894i, -2147483647i, 11510i))), vec4<i32>((_wgslsmith_mod_i32(1i, 1i) | ~u_input.a) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 4294967295u, 4294967295u) | vec4<u32>(28562u, arg_1.x, 549u, arg_1.x), _wgslsmith_add_vec4_u32(vec4<u32>(18656u, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(10641u, arg_1.x, 1u, arg_1.x))) % 32u), 1i, ~arg_0, min(arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_2.a.x, 0i, 2147483647i), firstLeadingBit(vec4<i32>(1305i, 45853i, arg_0, 2147483647i))))));
    var var_2 = select(~(_wgslsmith_add_vec4_u32(max(vec4<u32>(12435u, 51190u, arg_1.x, 23099u), vec4<u32>(0u, arg_1.x, 1u, arg_1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 16699u, arg_1.x), vec4<u32>(27330u, 55253u, arg_1.x, 4294967295u))) & min(vec4<u32>(0u, arg_1.x, arg_1.x, 18767u), firstTrailingBit(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 4294967295u)))), min(abs(min(~vec4<u32>(arg_1.x, 4294967295u, 0u, 60528u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 3756u, arg_1.x, 1u), vec4<u32>(52626u, 1u, 12590u, arg_1.x)))), abs(~vec4<u32>(arg_1.x, 952u, arg_1.x, 45969u))), !arg_2.c);
    var_1 = -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.b, arg_2.a.x, 2147483647i), _wgslsmith_add_i32(var_1.x, arg_0), u_input.a, -u_input.a), vec4<i32>(-1i) * -vec4<i32>(54979i, u_input.b, 75085i, 3398i), -vec4<i32>(arg_0, -5397i, u_input.a, -7497i)));
    var_2 = _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, arg_1.x), vec4<u32>(var_2.x, var_2.x, 4294967295u, var_2.x)) | vec4<u32>(4294967295u, 7449u, arg_1.x, arg_1.x)), ~select(vec4<u32>(arg_1.x, var_2.x, 50649u, var_2.x) << (vec4<u32>(var_2.x, arg_1.x, var_2.x, var_2.x) % vec4<u32>(32u)), vec4<u32>(var_2.x, 0u, var_2.x, var_2.x) ^ vec4<u32>(arg_1.x, 1u, 1u, 0u), func_1()), _wgslsmith_div_vec4_u32(~vec4<u32>(var_2.x, var_2.x, var_2.x, arg_1.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 4294967295u, 1u, var_2.x), ~vec4<u32>(4294967295u, arg_1.x, 4294967295u, var_2.x)))) << (vec4<u32>(var_2.x, ~var_2.x, 85352u, 106766u) % vec4<u32>(32u));
    return StorageBuffer(_wgslsmith_f_op_f32(step(757f, _wgslsmith_f_op_f32(step(arg_2.b.x, 376f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 18>();
    global0 = array<vec3<bool>, 18>();
    let var_0 = ~countOneBits(vec2<u32>(1u, 1u));
    let x = u_input.a;
    s_output = func_2(reverseBits(-min(u_input.b, -8248i)), ~_wgslsmith_sub_vec3_u32((vec3<u32>(40413u, var_0.x, 8034u) | vec3<u32>(var_0.x, var_0.x, var_0.x)) | vec3<u32>(1u, var_0.x, var_0.x), ~(vec3<u32>(0u, var_0.x, var_0.x) & vec3<u32>(57586u, 76542u, var_0.x))), Struct_3(vec2<i32>(u_input.a ^ -1i, firstTrailingBit(u_input.b)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1338f, 1409f, -1863f, 994f), vec4<f32>(-370f, -174f, 793f, 690f)))), select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true))), !func_1(), false)));
}

