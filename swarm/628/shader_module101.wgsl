struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(0u, Struct_2(24526u, 62197u), 28531i), Struct_3(34765u, Struct_2(3590u, 34042u), -34314i), Struct_3(4294967295u, Struct_2(1u, 59913u), 29840i), Struct_3(97446u, Struct_2(0u, 0u), -6986i), Struct_3(10989u, Struct_2(78081u, 4294967295u), -1i), Struct_3(10971u, Struct_2(26141u, 84781u), 16744i), Struct_3(4294967295u, Struct_2(4294967295u, 1u), -19550i), Struct_3(20829u, Struct_2(1u, 23932u), -18232i), Struct_3(4294967295u, Struct_2(4294967295u, 1u), 32077i));

var<private> global1: Struct_4 = Struct_4(vec3<i32>(-1i, 1i, 2147483647i), -1047f, Struct_1(false), 80452u);

var<private> global2: Struct_1 = Struct_1(true);

var<private> global3: array<i32, 6>;

var<private> global4: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(-1045f, -454f, 857f), vec3<f32>(1000f, 847f, -697f), vec3<f32>(-266f, 1000f, -171f), vec3<f32>(1000f, 1298f, -2371f), vec3<f32>(928f, -827f, -1174f), vec3<f32>(-821f, 309f, -1000f), vec3<f32>(-137f, -1009f, 479f), vec3<f32>(612f, 698f, -1000f), vec3<f32>(-1000f, 537f, 496f), vec3<f32>(-1508f, 926f, 1475f), vec3<f32>(-186f, -1494f, 2469f), vec3<f32>(-472f, -631f, -1282f), vec3<f32>(453f, -1276f, 658f), vec3<f32>(-238f, 100f, 344f), vec3<f32>(-551f, -1280f, 585f), vec3<f32>(1067f, -582f, -549f), vec3<f32>(125f, -509f, -411f), vec3<f32>(-1004f, 1351f, -314f), vec3<f32>(-610f, 232f, -1345f), vec3<f32>(1119f, -1165f, -118f), vec3<f32>(169f, -913f, -979f), vec3<f32>(-473f, -447f, -1011f), vec3<f32>(-1047f, -1551f, -532f), vec3<f32>(694f, 629f, 1471f), vec3<f32>(-701f, 1704f, 1546f), vec3<f32>(350f, 530f, -114f), vec3<f32>(-1420f, -1623f, -1000f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: vec3<i32>) -> Struct_4 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(383f - arg_1.x)))));
    let var_2 = global1.c.a;
    var var_3 = Struct_4(global1.a, 442f, global1.c, 56615u);
    global4 = array<vec3<f32>, 27>();
    return Struct_4(-global1.a & var_3.a, _wgslsmith_f_op_f32(sign(var_0.x)), Struct_1(false), 0u & global1.d);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: u32, arg_3: vec3<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(select(1f, -678f, global1.c.a));
    var var_1 = true;
    let var_2 = vec4<i32>(arg_1.c & _wgslsmith_mult_i32(global1.a.x, 1i), ~global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(88209u, arg_0.d, (arg_1.a ^ 1u) & arg_1.b.a), 6u)], ~arg_1.c, arg_1.c);
    var var_3 = func_2(select(!select(!arg_3.xx, !arg_3.xx, global2.a), vec2<bool>(true, arg_3.x), !arg_3.xz), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0.b)), _wgslsmith_f_op_f32(-global1.b), 2086f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(224f, arg_0.b, arg_0.b), vec3<f32>(global1.b, global1.b, 1485f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(200f, 1458f, global1.b))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(529f, arg_0.b, arg_0.b, 1000f) - vec4<f32>(global1.b, -550f, arg_0.b, 1861f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -1492f, 234f, global1.b)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global1.b, -648f, global1.b) * vec4<f32>(-466f, -955f, 525f, global1.b))))), firstLeadingBit(~(~vec3<i32>(arg_0.a.x, 0i, 0i))) | (-vec3<i32>(0i, global3[_wgslsmith_index_u32(4294967295u, 6u)], arg_0.a.x) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.d, 1u, 26096u), select(vec3<u32>(80970u, arg_1.a, 25273u), vec3<u32>(46203u, global1.d, arg_2), arg_0.c.a), ~vec3<u32>(10662u, arg_1.b.b, 19246u)) % vec3<u32>(32u))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_0.b, var_3.b)))) + _wgslsmith_f_op_f32(ceil(-705f)));
    return vec4<u32>(69685u, 1u, _wgslsmith_sub_u32(arg_2, 1141u), select(arg_0.d, arg_2, !arg_0.c.a));
}

fn func_1() -> f32 {
    let var_0 = ~(~firstTrailingBit(~vec4<u32>(0u, global1.d, 17678u, global1.d))) & func_3(func_2(select(vec2<bool>(false, false), vec2<bool>(global1.c.a, true), select(vec2<bool>(false, false), vec2<bool>(global2.a, false), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1296f, global1.b))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.b, -692f, -1000f, global1.b), vec4<f32>(global1.b, -391f, 224f, global1.b))), _wgslsmith_div_vec4_f32(vec4<f32>(global1.b, -1055f, global1.b, global1.b), vec4<f32>(global1.b, global1.b, -1691f, global1.b)), false)), vec3<i32>(~7635i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, global3[_wgslsmith_index_u32(45911u, 6u)]), vec3<i32>(u_input.a, u_input.a, -14073i)), global1.a.x)), global0[_wgslsmith_index_u32(~(global1.d << (global1.d % 32u)), 9u)], 47809u, vec3<bool>(38652i < global3[_wgslsmith_index_u32(1u, 6u)], !global1.c.a, _wgslsmith_div_f32(global1.b, global1.b) >= -1917f));
    let var_1 = false;
    global3 = array<i32, 6>();
    var var_2 = 0i;
    global4 = array<vec3<f32>, 27>();
    return global1.b;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> Struct_3 {
    global1 = Struct_4(_wgslsmith_mult_vec3_i32(reverseBits(~global1.a), -vec3<i32>(0i, 0i, 1i)) | vec3<i32>(abs(_wgslsmith_add_i32(-1i, u_input.a)), -func_2(vec2<bool>(arg_2.a, global1.c.a), global4[_wgslsmith_index_u32(global1.d, 27u)], vec4<f32>(arg_1, -1326f, arg_0, -871f), global1.a).a.x, 0i), _wgslsmith_f_op_f32(trunc(arg_1)), global1.c, 1u);
    global4 = array<vec3<f32>, 27>();
    return Struct_3(~(~func_2(vec2<bool>(global2.a, true), global4[_wgslsmith_index_u32(global1.d | global1.d, 27u)], _wgslsmith_div_vec4_f32(vec4<f32>(global1.b, global1.b, arg_1, -1388f), vec4<f32>(global1.b, -1005f, arg_0, arg_0)), global1.a).d), Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.d, 1u, global1.d, 22062u), vec4<u32>(20714u, 56054u, 0u, 117287u)), vec4<u32>(1u, global1.d, global1.d, 0u) & vec4<u32>(global1.d, global1.d, 17017u, global1.d)), ~vec4<u32>(global1.d, global1.d, 1u, global1.d)), (~global1.d << (551u % 32u)) | _wgslsmith_mult_u32(global1.d, ~global1.d)), global1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(0u, _wgslsmith_mod_u32(_wgslsmith_add_u32(~(~12910u), global1.d), global1.d));
    let var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), global1.b, Struct_1(func_2(!vec2<bool>(global2.a, false), vec3<f32>(232f, -570f, _wgslsmith_f_op_f32(f32(-1f) * -616f)), vec4<f32>(-450f, _wgslsmith_f_op_f32(132f - global1.b), -766f, 251f), global1.a).c.a));
    global0 = array<Struct_3, 9>();
    global2 = global1.c;
    var var_2 = func_4(-145f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-258f, -1382f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1167f))))), Struct_1(all(vec3<bool>(!global2.a, true, all(vec3<bool>(true, global2.a, true)))))).b;
    global4 = array<vec3<f32>, 27>();
    var var_3 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -267f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, 1000f) - global1.b)) - global1.b), func_2(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, global1.c.a), global2.a)), _wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(global1.d, 27u)]), vec4<f32>(-754f, -112f, _wgslsmith_f_op_f32(sign(455f)), _wgslsmith_f_op_f32(select(653f, global1.b, global1.c.a))), reverseBits(global1.a)).c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_mod_u32(func_3(Struct_4(global1.a, 1969f, Struct_1(true), var_2.b), global0[_wgslsmith_index_u32(var_2.a, 9u)], var_2.a, vec3<bool>(global2.a, global1.c.a, global2.a)).x, ~var_3.b.a), var_0.b, 38358u));
}

