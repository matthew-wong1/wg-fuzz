struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: vec2<u32>,
    d: i32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: u32;

var<private> global2: Struct_3 = Struct_3(vec2<u32>(71661u, 1u));

var<private> global3: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(1u, 28149u, 0u), vec3<u32>(1u, 1484u, 45831u), vec3<u32>(17356u, 5917u, 23293u), vec3<u32>(1u, 0u, 0u), vec3<u32>(0u, 1u, 47521u), vec3<u32>(0u, 10295u, 0u), vec3<u32>(14538u, 1u, 4294967295u), vec3<u32>(0u, 33659u, 44577u), vec3<u32>(1u, 4294967295u, 11277u), vec3<u32>(0u, 4294967295u, 70881u), vec3<u32>(97178u, 1u, 25932u), vec3<u32>(1u, 18343u, 33973u), vec3<u32>(0u, 0u, 26700u), vec3<u32>(1u, 56050u, 0u), vec3<u32>(19809u, 67019u, 1u));

var<private> global4: array<i32, 3>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: Struct_5) -> vec2<u32> {
    let var_0 = ~_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(-20072i, arg_1.a.e.b)), _wgslsmith_clamp_vec2_i32(vec2<i32>(42538i, 41509i), vec2<i32>(-11824i, u_input.c), vec2<i32>(-1i, global4[_wgslsmith_index_u32(arg_2.a.e.c.x, 3u)]))) | vec2<i32>(_wgslsmith_div_i32(arg_1.a.e.b, 1i), -arg_2.a.e.b), min(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, arg_1.a.e.b) & vec2<i32>(-1i, u_input.c), -vec2<i32>(global4[_wgslsmith_index_u32(arg_2.a.e.c.x, 3u)], 1i)), vec2<i32>(i32(-1i) * -1i, 1i)));
    var var_1 = Struct_3(abs(vec2<u32>(max(64616u, arg_2.a.e.c.x), global2.a.x) >> (vec2<u32>(66553u & u_input.b.x, arg_2.a.e.c.x | 27044u) % vec2<u32>(32u))));
    let var_2 = Struct_4(vec3<i32>(_wgslsmith_sub_i32(abs(arg_0), ~u_input.c) >> (_wgslsmith_div_u32(u_input.d, ~arg_2.a.e.c.x) % 32u), arg_2.a.e.b >> (1u % 32u), -27463i), Struct_3(vec2<u32>(0u, _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.x, global2.a.x, var_1.a.x, var_1.a.x), vec4<u32>(0u, u_input.d, 0u, u_input.d))))), ~(~arg_1.a.e.c), i32(-1i) * -(arg_1.a.e.b ^ _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(0u, 3u)], arg_2.a.e.b)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-199f + arg_2.a.c.x) + _wgslsmith_f_op_f32(abs(arg_1.a.c.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -531f))))) * arg_2.a.c.x);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1096f * -458f) - -721f);
    return _wgslsmith_sub_vec2_u32(var_2.b.a, _wgslsmith_clamp_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(arg_1.a.e.c, ~arg_1.a.e.c)), ~min(arg_1.a.e.c, var_1.a), vec2<u32>(_wgslsmith_div_u32(1u, var_2.b.a.x), reverseBits(~1u))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_3(~abs(~func_3(global4[_wgslsmith_index_u32(global2.a.x, 3u)], Struct_5(Struct_2(false, false, vec4<f32>(-267f, -1269f, -181f, -239f), -224f, Struct_1(false, 2147483647i, u_input.b.yz))), Struct_5(Struct_2(false, false, vec4<f32>(1318f, -1144f, 538f, -1196f), -2318f, Struct_1(false, u_input.c, u_input.b.xz))))));
    global1 = _wgslsmith_dot_vec4_u32(max(vec4<u32>(max(~41596u, _wgslsmith_add_u32(1u, 58213u)), _wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(global2.a.x, 15u)] ^ global3[_wgslsmith_index_u32(global2.a.x, 15u)], _wgslsmith_sub_vec3_u32(vec3<u32>(23353u, var_0.a.x, 42282u), vec3<u32>(global2.a.x, 61655u, 1u))), 26864u, select(~u_input.a.x, var_0.a.x, any(vec4<bool>(false, false, false, true)))), vec4<u32>(global2.a.x, 1u, _wgslsmith_mult_u32(~31335u, _wgslsmith_sub_u32(u_input.d, 46143u)), var_0.a.x)), vec4<u32>(u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, global2.a.x), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~global3[_wgslsmith_index_u32(u_input.d, 15u)], ~vec3<u32>(var_0.a.x, u_input.b.x, 0u)), firstLeadingBit(0u)), ~11060u));
    global3 = array<vec3<u32>, 15>();
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-28514i, global4[_wgslsmith_index_u32(15346u, 3u)], u_input.c, -2147483647i), vec4<i32>(arg_0, arg_0, arg_0, global4[_wgslsmith_index_u32(var_0.a.x, 3u)])), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-528i, 16835i, global4[_wgslsmith_index_u32(1u, 3u)], arg_0), vec4<i32>(u_input.c, -11949i, arg_0, 1i))), ~(~(-vec3<i32>(-1i, u_input.c, 0i)))) << (vec3<u32>(firstLeadingBit(var_0.a.x), u_input.a.x, ~abs(abs(1u))) % vec3<u32>(32u));
    global4 = array<i32, 3>();
    return Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-287f, -393f)) * _wgslsmith_f_op_f32(f32(-1f) * -833f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(457f * -465f))), !all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(582f, 155f, -1684f, 801f) - vec4<f32>(1180f, 133f, 925f, -836f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1004f - 480f) - -1707f), Struct_1(true, 1i, vec2<u32>(4294967295u, ~(~global2.a.x))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: i32) -> Struct_3 {
    global0 = ~(-18406i);
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(819f)) + -659f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-216f - 1624f))))))));
    global1 = ~((~_wgslsmith_mult_u32(53679u, 38134u) ^ u_input.d) >> (15674u % 32u));
    let var_2 = func_2(arg_3 & -arg_0.x);
    return Struct_3(arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<i32, 3>();
    var var_0 = false;
    var var_1 = Struct_4(-_wgslsmith_sub_vec3_i32(~(~vec3<i32>(-44112i, -15092i, u_input.c)), vec3<i32>(global4[_wgslsmith_index_u32(~51279u, 3u)], 28476i, u_input.c)), func_1(vec3<i32>(u_input.c, ~u_input.c, ~u_input.c), Struct_3(vec2<u32>(u_input.b.x, ~u_input.d)), Struct_3(~vec2<u32>(u_input.d, 0u)), u_input.c), reverseBits(~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a, u_input.a), global2.a)), 0i >> (u_input.a.x % 32u));
    var var_2 = u_input.b;
    var_2 = ~vec3<u32>(var_1.c.x, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 30656u, 41938u, 0u)), vec4<u32>(var_2.x, global2.a.x, ~u_input.d, global2.a.x)), ~var_1.c.x);
    global3 = array<vec3<u32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec4_i32(vec4<i32>(15678i, 2147483647i, max(30993i, 1i), global4[_wgslsmith_index_u32(var_1.c.x, 3u)] >> (60354u % 32u)), vec4<i32>(~(-40869i), max(u_input.c, 8668i), var_1.d, global4[_wgslsmith_index_u32(1u, 3u)]), ~vec4<i32>(u_input.c, global4[_wgslsmith_index_u32(var_2.x, 3u)], var_1.a.x, -46257i)));
}

