struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec3<bool>,
    d: i32,
    e: u32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> f32 {
    global0 = array<Struct_4, 27>();
    var var_0 = vec4<u32>(max(4294967295u, ~_wgslsmith_dot_vec4_u32(~arg_0, max(vec4<u32>(443u, 0u, arg_0.x, 0u), vec4<u32>(1u, 31408u, 50973u, 21299u)))), ~arg_0.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_mod_u32(1u, arg_0.x)), abs(max(vec2<u32>(53520u, arg_0.x), vec2<u32>(arg_0.x, arg_0.x)))) % 32u), 55749u, reverseBits(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0.zyx, arg_0.zwx), arg_0.wwx)));
    var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(reverseBits(63427u), min(var_0.x, 0u), firstLeadingBit(var_0.x), arg_0.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, 0u, arg_0.x, 4294967295u) << ((arg_0 | arg_0) % vec4<u32>(32u)), vec4<u32>(arg_0.x, _wgslsmith_mult_u32(var_0.x, 0u), 4294967295u, arg_0.x << (arg_0.x % 32u)), min(~arg_0, ~arg_0))), vec4<u32>(~min(arg_0.x, arg_0.x), ~_wgslsmith_sub_u32(var_0.x, arg_0.x), ~3070u, ~reverseBits(var_0.x)) & firstTrailingBit(vec4<u32>(firstTrailingBit(arg_0.x), 17889u, ~arg_0.x, ~arg_0.x)));
    var_0 = reverseBits(arg_0);
    let var_1 = firstLeadingBit((arg_0 >> (_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(43161u, arg_0.x, 1u, 39566u)), vec4<u32>(1u, arg_0.x, 4294967295u, arg_0.x)) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(15885u, 41689u, 4294967295u, arg_0.x) & arg_0, _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, arg_0.x, 4294967295u, arg_0.x), arg_0)), vec4<u32>(countOneBits(arg_0.x), 1u, abs(var_0.x), ~34423u)));
    return _wgslsmith_f_op_f32(473f * _wgslsmith_f_op_f32(trunc(-505f)));
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~1u, ~13207u)), Struct_1(u_input.a, true, !all(select(arg_0, arg_0, vec3<bool>(arg_0.x, arg_0.x, false)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1952f - -148f)), _wgslsmith_f_op_f32(f32(-1f) * -883f), !all(vec4<bool>(true, false, arg_0.x, false)))) * 1281f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(25943u, var_0.a.x, 31403u, 4591u), vec4<u32>(11366u, var_0.a.x, 28268u, 44629u))), i32(-1i) * -var_0.b.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(548f))) - 628f)));
    global0 = array<Struct_4, 27>();
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-561f * 173f), -1275f) + _wgslsmith_f_op_f32(trunc(-921f)));
    var var_2 = ~firstTrailingBit(var_0.a.x);
    return 31549u;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: f32, arg_3: vec2<bool>) -> i32 {
    global0 = array<Struct_4, 27>();
    global0 = array<Struct_4, 27>();
    var var_0 = arg_0.a;
    let var_1 = abs(vec4<u32>(var_0.x << ((arg_0.b.x >> (arg_0.b.x % 32u)) % 32u), func_2(vec3<bool>(all(vec4<bool>(false, arg_0.e.c, arg_3.x, arg_3.x)), arg_0.e.b & false, any(vec2<bool>(arg_3.x, true)))), ~27991u, arg_0.b.x));
    global0 = array<Struct_4, 27>();
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 27>();
    var var_0 = _wgslsmith_mult_i32(0i, i32(-1i) * -2147483647i);
    let var_1 = -826f;
    var_0 = -_wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(1i, 0i, 33423i, u_input.b.x)), vec4<i32>(-2147483647i, 36544i, 8335i, -21441i)), ~(-u_input.a)), 29468i, firstLeadingBit(-1i));
    let var_2 = Struct_5(_wgslsmith_sub_i32(30232i, _wgslsmith_mod_i32(i32(-1i) * -u_input.b.x, ~(u_input.b.x << (0u % 32u)))));
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_mod_i32(_wgslsmith_mod_i32(func_1(Struct_3(vec3<u32>(38381u, 0u, 4983u), vec2<u32>(1u, 57282u), -1i, var_1, Struct_1(u_input.b.x, var_3, false)), min(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 40858u)), var_1, select(vec2<bool>(var_3, var_3), vec2<bool>(false, var_3), vec2<bool>(true, true))), 1i), u_input.b.x), reverseBits(vec2<u32>(abs(~47635u), _wgslsmith_sub_u32(1u, abs(1u)))));
}

