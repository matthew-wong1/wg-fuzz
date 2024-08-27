struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-831f, -725f, 962f, -327f, -1000f, 538f, 602f, -580f, -418f, 1258f, -372f, 2093f, 1537f, -642f, -482f, 1247f, -243f, 1016f);

var<private> global1: array<f32, 5> = array<f32, 5>(-1408f, -1216f, -383f, 1330f, 593f);

var<private> global2: vec4<i32> = vec4<i32>(-26431i, 1i, 18590i, -32845i);

var<private> global3: Struct_2 = Struct_2(0u, vec3<u32>(4294967295u, 50105u, 0u), vec3<f32>(1083f, 316f, -1000f));

var<private> global4: vec3<f32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    return _wgslsmith_f_op_f32(floor(global4.x));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    global4 = _wgslsmith_div_vec3_f32(vec3<f32>(472f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3.a, 18u)]) - 1793f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(arg_0, global3.c))) - vec3<f32>(731f, _wgslsmith_div_f32(693f, global3.c.x), global4.x))));
    global2 = ~max(~_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b, 0i, u_input.b, global2.x), vec4<i32>(u_input.b, 28823i, 1i, global2.x) << (vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, global3.a) % vec4<u32>(32u))), firstTrailingBit(-(vec4<i32>(-1i, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(global3.b.x, u_input.a.x, 15959u, global3.a) % vec4<u32>(32u)))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, u_input.c), 5u)]) - 3728f));
    let var_1 = -(vec4<i32>(-select(global2.x, -32517i, true), (-15533i >> (u_input.c % 32u)) | ~(-2147483647i), 19861i << (1u % 32u), -47563i) >> (~vec4<u32>(4294967295u, global3.a, reverseBits(global3.a), ~1u) % vec4<u32>(32u)));
    global4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 5u)] * arg_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 18u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(false)), -1803f, Struct_1(true), vec2<bool>(false, true))) * 954f)))), 1033f);
    return Struct_1(false);
}

fn func_3() -> Struct_1 {
    global3 = Struct_2(u_input.c, ~(min(u_input.a, vec3<u32>(u_input.c, 1u, 35911u)) | _wgslsmith_clamp_vec3_u32(~global3.b, reverseBits(u_input.a), ~vec3<u32>(global3.a, global3.b.x, 34938u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1055f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(393f))), _wgslsmith_f_op_f32(1158f + _wgslsmith_f_op_f32(trunc(205f))))));
    let var_0 = global2.zxw;
    var var_1 = !select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, false), vec3<bool>(true, true, true), true);
    global3 = Struct_2(firstTrailingBit(~min(0u, 4294967295u)), global3.b, global3.c);
    let var_2 = Struct_2(reverseBits(~42479u), u_input.a, vec3<f32>(-827f, global0[_wgslsmith_index_u32(global3.a, 18u)], _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~(u_input.a.x ^ 4294967295u), 18u)]))));
    return func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1265f, _wgslsmith_f_op_f32(f32(-1f) * -1691f), -175f))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> Struct_3 {
    var var_0 = select(select(select(select(vec3<bool>(arg_0.a, true, arg_1.a), !vec3<bool>(arg_1.a, true, false), arg_2.a.a), select(vec3<bool>(arg_2.a.a, true, false), !vec3<bool>(arg_2.a.a, true, true), u_input.b == -15108i), select(select(vec3<bool>(false, false, arg_0.a), vec3<bool>(arg_0.a, true, false), arg_0.a), select(vec3<bool>(false, arg_1.a, false), vec3<bool>(arg_2.a.a, true, arg_0.a), vec3<bool>(false, arg_0.a, false)), true)), vec3<bool>(all(select(vec2<bool>(arg_1.a, true), vec2<bool>(arg_2.a.a, arg_0.a), vec2<bool>(arg_2.a.a, arg_1.a))), arg_0.a, arg_1.a), false), select(!select(vec3<bool>(true, arg_0.a, false), select(vec3<bool>(arg_0.a, false, true), vec3<bool>(arg_0.a, arg_0.a, false), arg_2.a.a), vec3<bool>(arg_1.a, true, arg_0.a)), !vec3<bool>(true, any(vec3<bool>(arg_1.a, true, false)), true), arg_2.a.a), vec3<bool>(select(any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), arg_1.a, false), !arg_1.a, reverseBits(_wgslsmith_add_u32(1u, u_input.c)) < min(~0u, _wgslsmith_sub_u32(37690u, 20252u))));
    var var_1 = Struct_1(arg_0.a);
    return Struct_3(arg_2.a);
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    var var_0 = true;
    var var_1 = Struct_1(arg_0.a.a);
    let var_2 = vec4<bool>(true, any(select(vec4<bool>(!var_1.a, false, global4.x <= 458f, var_1.a), !vec4<bool>(var_1.a, true, false, true), true)), _wgslsmith_div_u32(min(~1u, global3.a), ~(~71371u)) >= 78560u, !var_1.a);
    global0 = array<f32, 18>();
    global2 = -vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global2.x), global2.wy)) << (~u_input.c % 32u), reverseBits(_wgslsmith_mult_i32(15019i, u_input.b)) ^ 0i, u_input.b ^ _wgslsmith_dot_vec3_i32(global2.zyy, _wgslsmith_sub_vec3_i32(vec3<i32>(global2.x, -2147483647i, -9423i), vec3<i32>(global2.x, u_input.b, 1i))), firstLeadingBit(global2.x | (1i >> (global3.a % 32u))));
    return Struct_1(!((false || any(var_2)) & func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(643f, global3.c.x, global3.c.x))).a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    global0 = array<f32, 18>();
    global1 = array<f32, 5>();
    var var_1 = Struct_1(any(vec4<bool>(true, true, true, true)));
    var var_2 = func_5(func_4(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3.c.x, global0[_wgslsmith_index_u32(u_input.c, 18u)], global3.c.x), global3.c) + _wgslsmith_f_op_vec3_f32(-global3.c))), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.c + vec3<f32>(global3.c.x, -1108f, 957f)) * vec3<f32>(359f, global0[_wgslsmith_index_u32(var_0, 18u)], global3.c.x))), Struct_3(func_3())));
    let var_3 = 71822i;
    let x = u_input.a;
    s_output = StorageBuffer(-927f, global3.c, u_input.a.x, ~vec4<u32>(3026u, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0, u_input.c, global3.b.x), vec4<u32>(global3.a, 1u, 0u, var_0)), abs(global3.a)) >> (~firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global3.a, var_0, 4294967295u), vec4<u32>(var_0, u_input.a.x, var_0, 31187u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, -1750f, -1457f, global4.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(861f, 417f, 1358f, global0[_wgslsmith_index_u32(u_input.a.x, 18u)]))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-164f)), 527f, _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(var_0, 5u)], 486f)), _wgslsmith_f_op_f32(sign(global3.c.x)))) - vec4<f32>(1709f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4.x - -601f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-442f))))));
}

