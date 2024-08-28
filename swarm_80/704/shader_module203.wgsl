struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, false);

var<private> global1: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec4<f32>(-636f, 1027f, -1000f, 483f), Struct_1(0i, false), 1u), Struct_3(vec4<f32>(271f, 363f, 358f, 513f), Struct_1(-1i, true), 6698u), Struct_3(vec4<f32>(1000f, -1023f, -166f, -1077f), Struct_1(-67064i, false), 88636u), Struct_3(vec4<f32>(-1244f, 642f, 267f, -759f), Struct_1(-15560i, false), 88470u), Struct_3(vec4<f32>(1650f, 370f, 1019f, -293f), Struct_1(-46747i, true), 24778u), Struct_3(vec4<f32>(1386f, -1504f, -2345f, 1118f), Struct_1(1i, true), 20253u), Struct_3(vec4<f32>(-102f, -444f, 1710f, 1432f), Struct_1(67177i, true), 49909u), Struct_3(vec4<f32>(794f, 791f, -511f, -256f), Struct_1(1i, false), 4294967295u), Struct_3(vec4<f32>(1000f, -445f, 1000f, -747f), Struct_1(1i, true), 46002u), Struct_3(vec4<f32>(926f, 1199f, 1254f, -689f), Struct_1(0i, false), 11724u), Struct_3(vec4<f32>(1000f, 258f, 1000f, -509f), Struct_1(-3298i, true), 0u), Struct_3(vec4<f32>(-896f, -531f, 695f, 229f), Struct_1(20323i, true), 1u), Struct_3(vec4<f32>(575f, -2712f, -631f, -1223f), Struct_1(0i, true), 0u), Struct_3(vec4<f32>(747f, -854f, -836f, -1452f), Struct_1(-18298i, false), 0u), Struct_3(vec4<f32>(-508f, 1591f, 1000f, -728f), Struct_1(10548i, false), 6350u), Struct_3(vec4<f32>(-1524f, 851f, -117f, 320f), Struct_1(1i, false), 4294967295u), Struct_3(vec4<f32>(-1032f, -105f, -328f, 775f), Struct_1(25805i, false), 4778u), Struct_3(vec4<f32>(1256f, 656f, -537f, 874f), Struct_1(0i, false), 29827u), Struct_3(vec4<f32>(764f, -1255f, -335f, -244f), Struct_1(9258i, true), 13519u));

var<private> global2: vec3<f32>;

var<private> global3: Struct_2;

var<private> global4: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = abs(_wgslsmith_div_vec4_i32(-(vec4<i32>(-9792i, -1i, 0i, 2147483647i) ^ vec4<i32>(arg_3.a, arg_3.a, -2147483647i, -26658i)), vec4<i32>(reverseBits(u_input.c.x | global3.d.a), _wgslsmith_dot_vec2_i32(~vec2<i32>(global3.e, arg_3.a), -u_input.c.zx), global3.a.a, firstTrailingBit(i32(-1i) * -2147483647i))));
    let var_1 = !(!vec2<bool>(!arg_1.x && true, arg_1.x));
    var var_2 = Struct_1(1i, arg_3.b);
    let var_3 = arg_3;
    global1 = array<Struct_3, 19>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1173f, _wgslsmith_f_op_f32(-618f + -449f), -781f, -1290f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -689f, arg_0.x, -117f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-484f, 572f, -820f, -1414f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 103f, global2.x) * vec4<f32>(arg_0.x, arg_0.x, -242f, -354f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0, vec4<f32>(1692f, -915f, arg_0.x, 825f))))), true)));
}

fn func_2(arg_0: i32) -> vec4<f32> {
    global1 = array<Struct_3, 19>();
    global0 = global3.d;
    global3 = Struct_2(global3.a, 1u, ~vec4<u32>(0u, ~abs(u_input.a), u_input.a, global3.b), Struct_1(-1i, true), global0.a ^ _wgslsmith_div_i32(22080i ^ ~global0.a, u_input.b.x));
    let var_0 = 1u;
    global3 = Struct_2(Struct_1(66840i, any(!(!vec2<bool>(global3.d.b, global3.a.b)))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(~u_input.a, ~var_0), 4294967295u) ^ 265u, ~_wgslsmith_sub_vec4_u32(~global3.c | vec4<u32>(47631u, u_input.a, 1u, 65701u), vec4<u32>(_wgslsmith_sub_u32(var_0, 4294967295u), 31510u, _wgslsmith_add_u32(u_input.a, 8294u), 1u)), global3.a, 39789i);
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x), -836f, -244f), select(select(vec2<bool>(global0.b, global0.b), vec2<bool>(true, false), global3.d.b), select(vec2<bool>(global0.b, true), vec2<bool>(true, true), global3.a.b), global3.d.b), _wgslsmith_add_vec3_u32(~global3.c.zwx, global3.c.zww), global3.d)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: u32, arg_3: vec3<i32>) -> f32 {
    global3 = Struct_2(Struct_1(-global3.e, !global3.d.b), u_input.a, _wgslsmith_mult_vec4_u32(global3.c, abs(_wgslsmith_mult_vec4_u32(vec4<u32>(21877u, arg_1.c, arg_2, u_input.a) | global3.c, ~vec4<u32>(arg_1.c, 34746u, arg_1.c, 42932u)))), arg_1.b, -1i);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(arg_3.x)).x);
    let var_1 = arg_1.a;
    var var_2 = global3.d;
    let var_3 = Struct_2(arg_1.b, arg_1.c, vec4<u32>(u_input.a, firstTrailingBit(_wgslsmith_sub_u32(arg_0.x, arg_1.c)), _wgslsmith_mod_u32(select(1u, 16307u, var_2.b), 1u), min(0u, 27569u)) >> (~min(abs(vec4<u32>(arg_2, 1u, 1u, 83258u)), ~vec4<u32>(arg_0.x, arg_0.x, 8679u, u_input.a)) % vec4<u32>(32u)), arg_1.b, firstTrailingBit(u_input.c.x));
    return _wgslsmith_f_op_f32(ceil(-1065f));
}

fn func_1() -> i32 {
    global4 = array<vec3<bool>, 20>();
    let var_0 = _wgslsmith_f_op_f32(func_4(~_wgslsmith_mult_vec3_u32(vec3<u32>(reverseBits(1u), min(0u, 110167u), global3.b << (global3.b % 32u)), vec3<u32>(global3.c.x, 25769u, 87290u) & global3.c.wwz), Struct_3(_wgslsmith_f_op_vec4_f32(func_2(select(~global0.a, 1i, global0.b | global0.b))), global3.d, _wgslsmith_add_u32(u_input.a, firstLeadingBit(1u)) ^ 5721u), ~(~countOneBits(_wgslsmith_add_u32(1u, global3.c.x))), -reverseBits(u_input.c)));
    let var_1 = !any(!select(select(vec4<bool>(true, global0.b, false, global3.d.b), vec4<bool>(false, global3.d.b, global3.a.b, true), global3.a.b), vec4<bool>(true, false, true, global0.b), !vec4<bool>(true, false, false, global3.d.b)));
    let var_2 = global2.xz;
    global1 = array<Struct_3, 19>();
    return -u_input.b.x;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: i32) -> Struct_2 {
    var var_0 = ~(-(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, arg_0)) | u_input.c.yx);
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, 1001f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(962f, 376f, global2.x)))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(355f, var_1.x, -272f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1746f - global2.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(635f, 400f, global2.x, _wgslsmith_f_op_f32(global2.x + 1911f)), vec2<bool>(false, global3.a.b), global3.c.xzy, Struct_1(arg_0, global3.a.b)))));
    var_0 = reverseBits(select(select(vec2<i32>(var_0.x, arg_2), vec2<i32>(var_0.x, 9710i), global3.d.b), -u_input.b, vec2<bool>(false, global3.a.b)) | (vec2<i32>(global0.a, 1i) ^ -vec2<i32>(u_input.b.x, 5372i))) | u_input.c.yx;
    let var_3 = vec3<bool>(true, global3.d.b, true);
    return Struct_2(global3.a, u_input.a, abs(~global3.c), Struct_1(global0.a, false), -18334i);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: u32) -> vec2<i32> {
    var var_0 = 1u;
    let var_1 = func_5(-773i, 0u, arg_1.d.a);
    var var_2 = global1[_wgslsmith_index_u32(25526u, 19u)];
    var var_3 = _wgslsmith_clamp_u32(1u, countOneBits(var_1.b), arg_0.c.x);
    global0 = var_1.d;
    return -u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(_wgslsmith_dot_vec3_i32(abs(-vec3<i32>(global3.d.a, global0.a, -2147483647i)), vec3<i32>(0i, global3.e, global3.e)), 0u, _wgslsmith_sub_i32(~func_1(), global0.a)), Struct_2(func_5(global0.a, u_input.a, -(~23289i)).d, u_input.a, _wgslsmith_sub_vec4_u32(vec4<u32>(global3.b, _wgslsmith_add_u32(0u, u_input.a), select(global3.c.x, u_input.a, false), ~u_input.a), ~global3.c), global3.d, firstLeadingBit(~1i)), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(global3.d.b, false), false), select(vec2<bool>(true, global0.b), vec2<bool>(global3.a.b, true), vec2<bool>(false, global0.b)))), ~(_wgslsmith_dot_vec3_u32(select(global3.c.yxz, global3.c.xzz, global4[_wgslsmith_index_u32(u_input.a, 20u)]), vec3<u32>(14821u, global3.c.x, global3.b)) | u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(140f, ~(-u_input.c), ~global3.c.x, vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -2147483647i, 2147483647i, 2147483647i), -vec4<i32>(-28006i, 1i, u_input.b.x, -9139i)), _wgslsmith_sub_i32(var_0.x, -44893i) >> (global3.c.x % 32u), func_5(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), 4294967295u, -25865i).a.a) << (global3.c.xzz % vec3<u32>(32u)), global0.a);
}

