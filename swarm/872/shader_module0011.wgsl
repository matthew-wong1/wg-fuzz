struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(0u, 20751u, 46574u, 16243u, 79u, 1u, 38422u, 80335u, 0u, 3545u, 4294967295u, 1u, 4294967295u, 95541u, 1u, 4294967295u, 21144u, 323u, 82808u, 4294967295u, 21573u, 13859u, 101748u, 1u, 13570u, 16021u);

var<private> global1: array<vec3<bool>, 5>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<f32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(554f)))))))) + -147f);
    let var_1 = u_input.c.x;
    var var_2 = arg_1;
    let var_3 = arg_1;
    var var_4 = arg_3.xxz;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_3.yz)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> Struct_1 {
    let var_0 = firstLeadingBit(vec3<i32>(1i, i32(-1i) * -19783i, -(firstLeadingBit(u_input.a.x) ^ u_input.a.x)));
    var var_1 = arg_1;
    let var_2 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.a.x), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -17717i), vec2<i32>(u_input.a.x, u_input.a.x)), ~u_input.a.xz), select(-u_input.a.xx, vec2<i32>(1i, -1i), vec2<bool>(false, arg_1)), vec2<i32>(u_input.a.x, var_0.x))), -1i);
    let var_3 = var_2;
    var_1 = !arg_1 && false;
    return Struct_1(~var_0.x, ~max(-var_2.b, i32(-1i) * -3320i));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global1 = array<vec3<bool>, 5>();
    global1 = array<vec3<bool>, 5>();
    let var_0 = arg_1;
    var var_1 = 86468u;
    var_1 = 8910u;
    return arg_1;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-865f, 246f), _wgslsmith_f_op_f32(f32(-1f) * -321f))), func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-407f, -1909f), vec2<f32>(534f, -1124f), false))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_2(57128u, Struct_1(u_input.a.x, u_input.a.x), vec3<bool>(false, true, false), vec4<f32>(849f, 900f, -895f, -132f)))))), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2659f, _wgslsmith_f_op_f32(-1f)))));
    let var_1 = Struct_1(min(u_input.a.x << (~_wgslsmith_mod_u32(u_input.b.x, 0u) % 32u), 2147483647i), ~max(_wgslsmith_mod_i32(var_0.b ^ 0i, _wgslsmith_add_i32(u_input.a.x, 0i)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, var_0.b, -14376i, 52072i), vec4<i32>(var_0.b, u_input.a.x, var_0.b, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, var_0.a, u_input.a.x)), firstTrailingBit(vec4<i32>(14211i, -32657i, -503i, var_0.a)))));
    var var_2 = vec3<i32>(select(u_input.a.x, -7515i, true), -2147483647i >> (u_input.c.x % 32u), func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(588f, 662f) - vec2<f32>(827f, -1488f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1477f, 926f), vec2<f32>(-164f, 215f), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-254f, -755f), vec2<f32>(-490f, 1353f))))), false)), var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2019f * _wgslsmith_div_f32(-1000f, -709f)) - _wgslsmith_f_op_f32(f32(-1f) * -607f))).a);
    let var_3 = func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1276f, -913f)))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(284f)), 427f))), !select(any(vec2<bool>(true, true)), true, false));
    global0 = array<u32, 26>();
    return Struct_1(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1000f)), -837f)), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1634f, -1673f), vec2<f32>(-710f, 255f))), false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(785f))))).a, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 26>();
    let var_0 = Struct_1(1i, 50107i);
    global1 = array<vec3<bool>, 5>();
    global0 = array<u32, 26>();
    var var_1 = func_1();
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, ~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.b.yz), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], u_input.b.x, 4294967295u))), vec3<i32>(func_4(vec2<f32>(_wgslsmith_f_op_f32(step(1454f, 570f)), _wgslsmith_f_op_f32(-316f * -374f)), Struct_1(0i, u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(117f - -1000f) * _wgslsmith_f_op_f32(-1232f + -235f))).b, -22316i, reverseBits(var_0.b ^ -2147483647i)), var_0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(640f, 451f, false)))))));
}

