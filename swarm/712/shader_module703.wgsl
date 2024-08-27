struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<f32> = vec3<f32>(308f, 604f, 1311f);

var<private> global2: f32 = -932f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -238f, global1.x, 911f) + vec4<f32>(global1.x, global1.x, -1332f, -882f)) + vec4<f32>(global1.x, global1.x, global1.x, global1.x)))))));
    global2 = var_0.x;
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, 29350u, abs(global0.b), 4294967295u), reverseBits(~vec4<u32>(global0.b, 4503u, 4294967295u, 1084u) | ~vec4<u32>(4294967295u, global0.b, 0u, global0.b))), global0.b);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -379f), _wgslsmith_f_op_f32(f32(-1f) * -822f))), all(vec3<bool>(false, global0.c.x, all(arg_1.b)))), ~(~(4061u >> (global0.b % 32u))), select(!(!(!global0.c)), arg_1.b.xyy, any(vec2<bool>(arg_1.b.x, arg_1.b.x)) & arg_1.b.x));
    let var_3 = global0.a;
    return abs(4294967295u);
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    return Struct_3(global0.a, !arg_0.x, select(func_3(-(u_input.b.x ^ -38465i), Struct_4(_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(-7691i, -1i, u_input.a.x)), vec4<bool>(global0.a.b, true, true, arg_0.x))), ~global0.b, false || (u_input.b.x < min(-4212i, u_input.b.x))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, global0.b)), vec2<u32>(firstTrailingBit(global0.b), 0u)), global0.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(~(3281u << (global0.b % 32u)), ~4294967295u), reverseBits(~vec2<u32>(global0.b, global0.b)), select(~vec2<u32>(global0.b, global0.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.b, 1u), vec2<u32>(18412u, 0u), vec2<u32>(global0.b, 17477u)), true) | vec2<u32>(0u, global0.b)));
    let var_1 = -2147483647i;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-445f, -818f, global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x - global1.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, global1.x))), 1331f, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1320f, global1.x)) - 519f))));
    global2 = var_2.x;
    var var_3 = func_2(!(!global0.c.xx));
    return _wgslsmith_f_op_f32(ceil(var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(~(_wgslsmith_add_u32(~6943u, global0.b) ^ global0.b), _wgslsmith_mult_u32(~_wgslsmith_mult_u32(0u, 4294967295u), global0.b) | _wgslsmith_div_u32(global0.b, abs(global0.b)));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_f_op_f32(abs(-1310f)), global1.x);
    global0 = Struct_2(Struct_1(true, u_input.a.x <= -54089i), _wgslsmith_mult_u32(~global0.b, global0.b), vec3<bool>(true, ~52367u != global0.b, false));
    global0 = Struct_2(func_2(global0.c.yz).a, abs(~84358u), select(select(select(vec3<bool>(true, true, true), select(global0.c, vec3<bool>(global0.a.b, global0.a.b, global0.a.a), global0.c.x), global0.c), !global0.c, !all(global0.c.yy)), select(!global0.c, !global0.c, any(vec4<bool>(global0.a.a, true, true, global0.c.x))), vec3<bool>(global0.a.b, true, true)));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global1.x, global1.x)), _wgslsmith_f_op_f32(global1.x + global1.x)))) - global1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))));
    var_0 = global0.b;
    global1 = vec3<f32>(-333f, global1.x, -288f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(global1.x)), ~select(vec3<i32>(_wgslsmith_div_i32(-13470i, 36445i), _wgslsmith_clamp_i32(10311i, -1i, 0i), -25565i), -vec3<i32>(u_input.a.x, -92177i, -4387i), !global0.c), _wgslsmith_f_op_f32(f32(-1f) * -1287f), max(u_input.a, min(u_input.a, vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x) & vec3<i32>(-7493i, u_input.a.x, 12402i))), vec3<u32>(func_2(vec2<bool>(true == global0.c.x, global0.c.x)).c, max(global0.b, ~57743u), min(global0.b, abs(_wgslsmith_div_u32(global0.b, global0.b)))));
}

