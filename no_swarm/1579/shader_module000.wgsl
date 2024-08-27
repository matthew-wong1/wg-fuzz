struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10>;

var<private> global1: vec2<bool>;

var<private> global2: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec3<u32> {
    global0 = array<vec4<f32>, 10>();
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(962f, -1292f) + vec2<f32>(592f, -1322f)))))))));
    var var_2 = 23426u;
    let var_3 = 0u;
    return vec3<u32>(u_input.b.x, var_3, ~_wgslsmith_sub_u32(var_3, _wgslsmith_mult_u32(reverseBits(u_input.c.x), ~11494u)));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = Struct_2(abs(~global2.a), any(vec3<bool>(true, true, true)));
    var_0 = Struct_2(vec4<u32>(u_input.b.x, abs(_wgslsmith_sub_u32(arg_0, global2.a.x)), 0u, arg_0), global1.x);
    var var_1 = abs(u_input.a.x);
    let var_2 = 1i;
    var var_3 = Struct_1(func_3(), vec3<bool>(var_0.b, false, true), min(~arg_0, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.a.x, global2.a.x, 49320u), var_0.a) & ~(37206u | u_input.b.x)));
    return 69884u;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = !(false || arg_0.b);
    var var_1 = arg_2;
    var_1 = Struct_2(vec4<u32>(arg_1.c, 1u, ~(~reverseBits(2440u)), ~(func_2(0u) ^ u_input.b.x)), true);
    global0 = array<vec4<f32>, 10>();
    var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(824f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1709f, -120f))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(3187f, _wgslsmith_f_op_f32(1169f + 1000f))));
    return _wgslsmith_mult_vec4_u32(abs(global2.a), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 68612u, var_1.a.x), func_3()), ~u_input.c.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_2.a.x, var_1.a.x, var_1.a.x)), firstLeadingBit(vec3<u32>(28525u, 1u, arg_2.a.x))), func_2(45577u)) >> (global2.a % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(reverseBits(~(~func_1(Struct_2(vec4<u32>(4294967295u, u_input.c.x, 0u, 1u), global2.b), Struct_1(u_input.c, vec3<bool>(false, false, global2.b), global2.a.x), Struct_2(vec4<u32>(global2.a.x, global2.a.x, global2.a.x, 27048u), true)))), _wgslsmith_f_op_f32(ceil(-1000f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1782f, 1506f), _wgslsmith_f_op_f32(min(371f, -1934f))))));
    var var_1 = Struct_2(abs(~(~global2.a)), !any(select(select(vec3<bool>(true, global2.b, var_0.b), vec3<bool>(var_0.b, global2.b, true), false), vec3<bool>(global1.x, true, true), vec3<bool>(false, false, global1.x))));
    let var_2 = Struct_1(var_1.a.xww | var_1.a.yyz, vec3<bool>(false, !all(select(vec2<bool>(global2.b, true), vec2<bool>(true, var_1.b), true)), global1.x && true), ~0u);
    var_0 = Struct_2(vec4<u32>(func_1(Struct_2(global2.a & vec4<u32>(var_2.c, u_input.b.x, 0u, var_0.a.x), !var_2.b.x), Struct_1(vec3<u32>(100068u, var_2.c, var_0.a.x), vec3<bool>(true, var_1.b, true), var_2.a.x), Struct_2(vec4<u32>(global2.a.x, 0u, 0u, var_2.a.x), select(global1.x, global2.b, global1.x))).x, ~(~28973u) >> (_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 4294967295u)), _wgslsmith_add_vec2_u32(vec2<u32>(global2.a.x, 3265u), var_2.a.zx)) % 32u), _wgslsmith_dot_vec2_u32(var_0.a.yw, var_1.a.wx), var_1.a.x), var_2.b.x);
    var_1 = Struct_2(global2.a, any(select(vec4<bool>(!var_2.b.x, true, var_0.b, all(vec4<bool>(global2.b, false, false, var_2.b.x))), vec4<bool>(var_1.b, all(var_2.b.xy), true, !var_0.b), all(!var_2.b))));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1004f, 1f) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(957f, 420f)) + vec2<f32>(-428f, 1777f)))))));
    global2 = Struct_2(~var_0.a, any(var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_vec2_i32(u_input.d, select(u_input.d, u_input.a.zy, var_1.b) & ~vec2<i32>(2147483647i, 1i)), _wgslsmith_add_vec2_i32(vec2<i32>(-24697i, ~(-56822i)), -(vec2<i32>(48637i, 30089i) << (vec2<u32>(var_1.a.x, var_1.a.x) % vec2<u32>(32u))))));
}

