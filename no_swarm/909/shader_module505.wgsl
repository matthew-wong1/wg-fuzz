struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 3>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>) -> i32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-122f)) - arg_0.a.x);
    var var_2 = _wgslsmith_f_op_f32(select(1250f, -782f, u_input.b.x != arg_1));
    var var_3 = u_input.a.x;
    var var_4 = arg_1;
    return abs(arg_1 ^ (firstLeadingBit(~(-1i)) | arg_1));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: bool) -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-715f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-510f * arg_1.x)), -544f))));
    var var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(abs(_wgslsmith_dot_vec3_u32(countOneBits(abs(vec3<u32>(arg_2.x, 4294967295u, 78252u))), arg_2))), 3u)];
    return arg_0;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec3<f32>) -> bool {
    var var_0 = vec4<i32>(-(~(-arg_1)), func_4(-func_3(Struct_1(arg_2.xz, 4294967295u), u_input.b.x, vec4<f32>(arg_2.x, arg_2.x, -594f, arg_2.x)) & func_3(Struct_1(vec2<f32>(arg_2.x, arg_2.x), 1u), _wgslsmith_mod_i32(-2147483647i, u_input.b.x), vec4<f32>(arg_2.x, arg_2.x, 551f, 833f)), arg_2, _wgslsmith_add_vec3_u32(vec3<u32>(17762u, 0u >> (1u % 32u), 80021u), vec3<u32>(~4294967295u, ~0u, ~4294967295u)), any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, arg_0), true), vec3<bool>(true, true, true), 334f == arg_2.x))), -1i, arg_1);
    global1 = array<Struct_2, 3>();
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(arg_2.x + arg_2.x), arg_0))));
    let var_1 = Struct_2(Struct_1(vec2<f32>(461f, arg_2.x), ~1u), _wgslsmith_f_op_f32(round(-902f)));
    var var_2 = Struct_1(vec2<f32>(var_1.b, _wgslsmith_f_op_f32(max(-1833f, _wgslsmith_f_op_f32(abs(var_1.a.a.x))))), _wgslsmith_add_u32(55532u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.a.b), vec2<u32>(var_1.a.b, 35774u)), _wgslsmith_mod_u32(0u, var_1.a.b), var_1.a.b ^ 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.a.b, var_1.a.b, 1u), vec4<u32>(0u, 0u, var_1.a.b, 0u)))));
    return arg_0;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    global1 = array<Struct_2, 3>();
    let var_0 = arg_2.b;
    let var_1 = min(34007i, 2147483647i);
    global1 = array<Struct_2, 3>();
    let var_2 = !(!arg_0);
    return arg_2;
}

fn func_1() -> bool {
    var var_0 = vec2<i32>(-1i, _wgslsmith_clamp_i32(1744i, u_input.a.x, -15438i >> (1u % 32u)));
    let var_1 = Struct_2(func_5(!vec4<bool>(all(vec4<bool>(true, false, true, true)), false, func_2(true, u_input.a.x, vec3<f32>(-1031f, 945f, -704f)), select(false, false, true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-258f, 444f, -358f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -462f, -1221f)))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(411f, 719f)), ~1u)), 2351f);
    var var_2 = false;
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_add_i32(21095i, max(var_0.x, -5445i)) ^ -(~var_0.x), firstTrailingBit(var_0.x)) ^ _wgslsmith_div_i32(-1i, _wgslsmith_mod_i32(firstTrailingBit(u_input.b.x), ~2147483647i));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -412f) - var_1.a.a.x), -463f))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(!(-1i > _wgslsmith_mult_i32(u_input.b.x, 1i)), func_1()), select(select(vec2<bool>(func_2(false, -52422i, vec3<f32>(343f, 1851f, 1053f)), select(false, true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), false)), vec2<bool>(true, true), true), vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)) | (_wgslsmith_mult_u32(39479u, 0u) == select(4294967295u, 0u, true)), true));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(138f)))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -561f))))));
    let var_2 = u_input.b.x;
    let var_3 = true;
    let var_4 = _wgslsmith_add_vec4_i32(-vec4<i32>(-9894i, -1i, select(u_input.b.x, var_2, var_3 && false), 47337i), -_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, var_2) ^ vec4<i32>(var_2, u_input.a.x, u_input.a.x, var_2), reverseBits(vec4<i32>(-1i, var_2, u_input.a.x, var_2)), var_3), vec4<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2, var_2, u_input.b.x, var_2), vec4<i32>(-1i, 2147483647i, u_input.b.x, -2147483647i)), 1i, -1i & u_input.b.x)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -676f)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(21525u, 1u, 1u, 3996u), vec4<u32>(0u, 0u, 4294967295u, 55701u)), max(~4294967295u, ~4294967295u), ~(~78542u)), vec3<u32>(func_5(select(vec4<bool>(var_3, false, true, var_3), vec4<bool>(var_3, var_0.x, true, true), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-455f, -561f, -1604f)), func_5(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec3<f32>(-1691f, -627f, -213f), Struct_1(vec2<f32>(243f, 1026f), 4294967295u))).b, ~(~1u), ~0u), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-926f, -660f, -1558f) + vec3<f32>(-425f, 2930f, -1410f)), vec3<f32>(-783f, -387f, -1104f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(688f, 815f, 534f)))))))), ~var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(974f, _wgslsmith_f_op_f32(ceil(-117f))) - -118f)), _wgslsmith_mod_u32(9632u, ~_wgslsmith_clamp_u32(~5709u, ~40649u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 27087u, 0u), vec3<u32>(0u, 0u, 0u)))));
}

