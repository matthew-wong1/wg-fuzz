struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27>;

var<private> global1: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(1u, 46265u, 8612u), vec3<u32>(0u, 47917u, 1u), vec3<u32>(0u, 15992u, 4294967295u), vec3<u32>(1u, 1u, 64169u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    return ~u_input.a.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(909f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, arg_0.x))))))));
    global0 = array<vec4<bool>, 27>();
    let var_1 = Struct_4(u_input.a.x >> ((func_3(vec4<f32>(-210f, var_0, -2028f, 1092f)) >> (_wgslsmith_dot_vec2_u32(u_input.a.zx, select(u_input.a.yx, vec2<u32>(10463u, 46475u), arg_1.x)) % 32u)) % 32u), ~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(27211i, 0i, 38998i, 2147483647i), vec4<i32>(-1i, -2147483647i, 0i, -2147483647i), vec4<i32>(13016i, -2147483647i, -1i, 50840i))) & vec4<i32>(0i << (reverseBits(0u) % 32u), firstTrailingBit(27599i), -2818i, -abs(37408i)), min(abs(select(~vec4<u32>(0u, 28283u, 0u, 1u), vec4<u32>(77229u, u_input.a.x, 10223u, u_input.a.x), !vec4<bool>(arg_1.x, true, true, true))), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4399u, u_input.a.x, 67467u, u_input.a.x)) ^ ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), ~reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 82976u)))));
    var var_2 = Struct_3(3088f);
    var var_3 = true;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_0.x))));
}

fn func_1() -> bool {
    global1 = array<vec3<u32>, 4>();
    global1 = array<vec3<u32>, 4>();
    var var_0 = vec2<f32>(-318f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-121f)) * _wgslsmith_f_op_f32(f32(-1f) * -1096f)) + _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(457f, 1190f, 1064f, 1020f))), vec2<bool>(true, true)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-977f)), _wgslsmith_f_op_f32(3563f + -399f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1693f)), -339f)))));
    let var_1 = 36728u;
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-863f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, var_0.x, -189f))), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, -1176f)) - var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x - var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1028f + _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_div_f32(-158f, _wgslsmith_f_op_f32(-var_0.x))))));
    return all(vec3<bool>(false, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.a.x, func_1(), u_input.a.x, u_input.a.x);
    let var_1 = ~vec2<u32>(var_0.a, min(select(u_input.a.x, 20028u, false), min(4294967295u, 45500u)) ^ var_0.d);
    var var_2 = 4294967295u;
    global1 = array<vec3<u32>, 4>();
    let var_3 = -76496i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1126f), _wgslsmith_f_op_f32(1260f - 308f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(215f, -911f, 1172f)))))))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-234f, -436f, _wgslsmith_f_op_f32(f32(-1f) * -116f), -909f)), select(vec2<bool>(any(vec2<bool>(var_0.b, var_0.b)), var_0.b), vec2<bool>(!var_0.b, !var_0.b), vec2<bool>(var_0.b || true, !var_0.b)))), -177f, _wgslsmith_sub_i32(~(-14278i), firstTrailingBit(2147483647i)), _wgslsmith_f_op_f32(-1000f + -299f));
}

