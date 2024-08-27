struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 18>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_add_i32(-13991i, -1i);
    var var_1 = arg_0;
    let var_2 = false;
    let var_3 = global0[_wgslsmith_index_u32(4294967295u, 17u)];
    var var_4 = _wgslsmith_div_u32(~(abs(0u) >> (~u_input.d % 32u)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.d, u_input.d, u_input.a) | min(vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d), vec4<u32>(4294967295u, 35634u, u_input.a, u_input.a)), _wgslsmith_mult_vec4_u32(~vec4<u32>(94478u, 24502u, 8203u, 0u), vec4<u32>(29961u, u_input.d, u_input.d, 9949u) & vec4<u32>(4294967295u, 1239u, u_input.d, 19151u))));
    return arg_0;
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> Struct_3 {
    global0 = array<Struct_1, 17>();
    let var_0 = Struct_2(select(!(!select(vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(true, false, global1.b), vec3<bool>(true, global1.b, arg_1.b))), select(!select(vec3<bool>(true, false, global1.b), vec3<bool>(arg_1.b, true, arg_1.b), vec3<bool>(false, arg_1.b, global1.b)), vec3<bool>(true, all(vec3<bool>(false, global1.b, false)), arg_1.b), func_2(arg_1).b), vec3<bool>(false, 42450u != abs(u_input.d), all(!vec3<bool>(false, global1.b, arg_1.b)))), u_input.c.zx);
    let var_1 = vec4<u32>(~arg_3, ~arg_3, ~reverseBits(select(_wgslsmith_sub_u32(0u, arg_3), _wgslsmith_mult_u32(u_input.a, 4294967295u), !arg_1.b)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_3, u_input.a), vec3<u32>(arg_3, u_input.a, arg_3))) ^ arg_3);
    global0 = array<Struct_1, 17>();
    let var_2 = _wgslsmith_f_op_f32(round(arg_0));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.a - 155f), -347f, all(var_0.a))) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2 - 1393f), global1.a, arg_1.b))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_3(global1.a, func_2(Struct_3(-1678f, true & any(vec4<bool>(global1.b, false, true, global1.b)))), _wgslsmith_clamp_i32(~u_input.b.x << (~_wgslsmith_sub_u32(u_input.d, u_input.d) % 32u), 23381i, -u_input.c.x), ~40089u);
    let var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)) != global1.a);
    let var_2 = func_2(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, -458f))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * 773f) + _wgslsmith_f_op_f32(-1402f * global1.a)), global1.a != _wgslsmith_f_op_f32(ceil(829f))), 4601i << (0u % 32u), firstTrailingBit(0u)));
    global0 = array<Struct_1, 17>();
    let var_3 = 173f;
    return Struct_2(vec3<bool>(any(vec2<bool>(true, all(vec2<bool>(var_1, false)))), false, false | (any(vec2<bool>(false, var_1)) || var_1)), u_input.c.yy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 20203u;
    var_0 = ~u_input.a;
    var var_1 = func_1();
    var var_2 = _wgslsmith_sub_vec4_u32(select(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, 80938u, 69160u), ~vec4<u32>(53784u, u_input.a, u_input.a, u_input.d)), abs(vec4<u32>(u_input.a, u_input.d, 26849u, 4294967295u)) ^ min(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 52395u), vec4<u32>(u_input.d, u_input.d, u_input.a, 0u))), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.d), vec4<u32>(1u, 53292u, 24186u, 38787u)) | (vec4<u32>(0u, 1993u, u_input.a, u_input.a) << (vec4<u32>(u_input.d, 0u, u_input.a, u_input.d) % vec4<u32>(32u)))), false), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(u_input.d, 1u, u_input.a, 43269u))), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(4294967295u, 32982u, u_input.d, u_input.d), vec4<u32>(25538u, u_input.a, 4294967295u, u_input.a), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, global1.b)), ~vec4<u32>(35049u, u_input.a, 1u, 4294967295u), vec4<u32>(u_input.d, u_input.d, u_input.a, 4294967295u))), ~vec4<u32>(~76305u, u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 0u), vec4<u32>(37880u, 4294967295u, u_input.d, u_input.d)), u_input.d)));
    let var_3 = 987f;
    var_2 = vec4<u32>(var_2.x, ~_wgslsmith_dot_vec2_u32(~(~var_2.xw), ~vec2<u32>(4294967295u, var_2.x)), 0u | abs(_wgslsmith_clamp_u32(~4294967295u, ~1u, _wgslsmith_div_u32(var_2.x, u_input.d))), 1u);
    let var_4 = _wgslsmith_div_vec2_i32(u_input.e, ~u_input.e);
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(func_1().b.x << (_wgslsmith_sub_u32(u_input.a, u_input.d) % 32u))), var_1.b.x, 0u, vec2<u32>(~_wgslsmith_sub_u32(reverseBits(u_input.d), min(1u, 51035u)), u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(133f, 951f, global1.a, var_3) * vec4<f32>(global1.a, 1308f, var_3, 968f))), vec4<f32>(_wgslsmith_f_op_f32(var_3 + -532f), _wgslsmith_f_op_f32(-var_3), _wgslsmith_div_f32(var_3, var_3), _wgslsmith_f_op_f32(global1.a - 459f)))));
}

