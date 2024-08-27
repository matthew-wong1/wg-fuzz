struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<f32>, 27>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32) -> i32 {
    global1 = array<vec2<f32>, 27>();
    global0 = arg_0;
    let var_0 = Struct_1(u_input.b.x == _wgslsmith_mult_i32(reverseBits(arg_2), -25963i << (_wgslsmith_div_u32(6240u, 20683u) % 32u)));
    global1 = array<vec2<f32>, 27>();
    global1 = array<vec2<f32>, 27>();
    return _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(-22753i, _wgslsmith_mult_i32(arg_2, -11607i)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, arg_2), vec2<i32>(2147483647i, -28725i)) ^ u_input.b.x, u_input.b.x)), _wgslsmith_add_i32(u_input.b.x, 12016i) >> (abs(firstTrailingBit(u_input.c) | u_input.c) % 32u));
}

fn func_2() -> u32 {
    var var_0 = vec3<i32>(11626i, max(u_input.b.x & u_input.b.x, countOneBits(max(u_input.b.x, 27965i))), ~(-(i32(-1i) * -27207i))) | vec3<i32>(-countOneBits(abs(-2147483647i)), reverseBits(u_input.b.x), firstLeadingBit(func_3(Struct_1(global0.a), select(vec2<bool>(true, global0.a), vec2<bool>(false, false), vec2<bool>(false, global0.a)), -u_input.b.x)));
    let var_1 = ~_wgslsmith_sub_vec3_i32(~abs(vec3<i32>(-5108i, -2147483647i, -8025i)), vec3<i32>(13976i, 0i, -19035i));
    let var_2 = Struct_1(false);
    return 0u | _wgslsmith_mult_u32(_wgslsmith_mult_u32(~firstLeadingBit(u_input.c), max(u_input.a, firstTrailingBit(u_input.a))), _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(46656u, 47416u, 0u), vec3<u32>(u_input.a, u_input.c, 0u), vec3<u32>(u_input.c, 4294967295u, 92516u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.c) | vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(0u, u_input.c, 41714u) >> (vec3<u32>(1u, u_input.c, u_input.a) % vec3<u32>(32u)), vec3<u32>(0u, 4294967295u, 51218u))));
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_div_u32(~func_2(), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, 13394u)), vec2<u32>(24334u, firstTrailingBit(u_input.c))) | 4294967295u);
    let var_1 = !vec4<bool>(!arg_0.a, !(false || arg_0.a) | true, global0.a, (_wgslsmith_sub_i32(53990i, -1i) < ~u_input.b.x) | arg_0.a);
    var_0 = 0u;
    let var_2 = -2800f;
    var_0 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 50990u), vec2<u32>(u_input.a, ~func_2()));
    return StorageBuffer(u_input.a, firstLeadingBit((firstTrailingBit(vec4<u32>(40612u, u_input.c, u_input.c, u_input.c)) << (~vec4<u32>(4294967295u, 25847u, u_input.c, 4718u) % vec4<u32>(32u))) << (~select(vec4<u32>(u_input.c, 4294967295u, 22581u, 0u), vec4<u32>(4294967295u, u_input.a, u_input.a, 36714u), arg_0.a) % vec4<u32>(32u))), 22519i, vec4<f32>(_wgslsmith_f_op_f32(-var_2), 1294f, var_2, _wgslsmith_f_op_f32(ceil(-1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_1(true);
    var var_2 = Struct_1(firstTrailingBit(17147u) <= ~u_input.a);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-252f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-103f - _wgslsmith_f_op_f32(338f * -530f)) + _wgslsmith_f_op_f32(f32(-1f) * -676f)))) * 2809f);
    var var_4 = Struct_1(!any(vec2<bool>(var_1.a, any(vec2<bool>(var_1.a, var_1.a)))));
    let x = u_input.a;
    s_output = func_1(Struct_1(var_4.a));
}

