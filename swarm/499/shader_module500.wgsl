struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<i32>(-23398i, 1i, 1i, -1i), vec4<i32>(0i, i32(-2147483648), 2147483647i, i32(-2147483648)), false, 45272u), Struct_1(vec4<i32>(2147483647i, -3985i, -24438i, -1i), vec4<i32>(0i, 0i, -26711i, -3000i), false, 0u));

var<private> global1: array<Struct_1, 23>;

var<private> global2: i32 = 9719i;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> vec2<f32> {
    global2 = firstLeadingBit(_wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(-17073i, global3.c.b.x), -1i) << (min(firstTrailingBit(1u), 0u) % 32u));
    var var_0 = abs(firstLeadingBit(~(~(~vec3<u32>(u_input.a.x, u_input.a.x, 1u)))));
    global2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(select(global3.a.a, vec4<i32>(34444i, arg_0, arg_0, 34232i), vec4<bool>(global3.b, global3.b, global3.b, global3.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(-42453i, 2147483647i, -3604i, -15420i), vec4<i32>(-11485i, 1i, global3.c.a.x, global3.a.a.x))), abs(_wgslsmith_clamp_vec4_i32(firstTrailingBit(global3.c.b), global3.c.b, select(global3.a.b, global3.a.a, vec4<bool>(false, global3.b, global3.a.c, global3.c.c))))), 48633i);
    let var_1 = 1427f;
    global0 = array<Struct_1, 2>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1748f, -356f)) * vec2<f32>(-230f, _wgslsmith_f_op_f32(var_1 * 1504f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-707f, -1017f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-208f, var_1) + vec2<f32>(268f, 966f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1327f, var_1), vec2<f32>(var_1, 262f), vec2<bool>(true, global3.a.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-920f, var_1) - vec2<f32>(417f, var_1)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 146f))))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    global3 = Struct_2(Struct_1(firstTrailingBit(select(vec4<i32>(1i, global3.c.a.x, 2147483647i, global3.c.b.x), ~vec4<i32>(arg_1.b.x, -22123i, global3.a.a.x, arg_1.a.x), true)), _wgslsmith_mod_vec4_i32(~arg_1.a, -_wgslsmith_add_vec4_i32(vec4<i32>(global3.a.b.x, 2147483647i, global3.a.b.x, 2147483647i), vec4<i32>(arg_1.a.x, -51860i, -2147483647i, 16261i))), any(!(!vec3<bool>(arg_1.c, global3.c.c, true))), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(28788u, 4294967295u, 0u), vec3<u32>(arg_1.d, 0u, 19070u), vec3<u32>(4294967295u, global3.c.d, 4294967295u)), reverseBits(vec3<u32>(0u, arg_0, 4294967295u)), ~vec3<u32>(38981u, global3.c.d, arg_1.d)), vec3<u32>(76361u >> (global3.a.d % 32u), arg_0 | arg_1.d, 17202u))), global3.b, Struct_1(global3.a.b, max(max(_wgslsmith_mult_vec4_i32(global3.a.a, global3.c.b), -global3.a.b), global3.a.b), !(!(arg_1.b.x != arg_1.a.x)), global3.a.d));
    var var_0 = _wgslsmith_add_u32(~(~(arg_0 ^ arg_0)), _wgslsmith_sub_u32(1u, _wgslsmith_add_u32(arg_0, _wgslsmith_clamp_u32(~arg_1.d, _wgslsmith_mult_u32(1u, u_input.a.x), _wgslsmith_add_u32(0u, u_input.a.x)))));
    var var_1 = -(_wgslsmith_clamp_i32(min(global3.c.a.x & global3.c.b.x, firstLeadingBit(-41548i)), (arg_1.a.x >> (4294967295u % 32u)) | -arg_1.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.c.b.x, arg_1.b.x, 11609i, global3.c.a.x), vec4<i32>(0i, -16304i, -1i, -1i)), arg_1.a)) >> (_wgslsmith_mult_u32(_wgslsmith_mod_u32(global3.c.d, firstLeadingBit(45206u)), countOneBits(~u_input.a.x)) % 32u));
    var var_2 = global3.c.b.wy;
    var var_3 = vec4<u32>(~arg_1.d, global3.c.d, 21786u, arg_1.d);
    return abs(global3.c.d);
}

fn func_2() -> vec3<bool> {
    let var_0 = global0[_wgslsmith_index_u32(func_4(~(global3.c.d | (~34103u >> (0u % 32u))), Struct_1(reverseBits(global3.a.b), global3.a.a, false, _wgslsmith_mod_u32(abs(~global3.a.d), ~global3.a.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(~_wgslsmith_dot_vec4_i32(global3.a.b, vec4<i32>(1i, global3.c.a.x, global3.a.b.x, 50806i)))) - _wgslsmith_f_op_vec2_f32(func_3(0i)))), 2u)];
    global1 = array<Struct_1, 23>();
    return !select(select(select(vec3<bool>(false, global3.b, var_0.c), vec3<bool>(true, global3.b, false), all(vec3<bool>(global3.c.c, global3.c.c, false))), select(vec3<bool>(global3.b, false, true), vec3<bool>(false, false, var_0.c), false), true), vec3<bool>(all(!vec3<bool>(false, var_0.c, false)), !(!var_0.c), all(vec4<bool>(false, var_0.c, true, global3.a.c))), global3.b);
}

fn func_1(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_1(-arg_0.a.b, vec4<i32>(~(-2147483647i), -27993i, _wgslsmith_dot_vec2_i32(arg_0.c.a.yw, _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(global3.a.b.x, -2147483647i)), select(vec2<i32>(arg_0.c.b.x, arg_0.a.b.x), arg_0.a.a.wy, false), vec2<i32>(-2147483647i, 22780i))), ~global3.c.a.x), all(func_2()), ~(func_4(_wgslsmith_div_u32(global3.c.d, 41010u), Struct_1(global3.c.b, arg_0.a.b, false, arg_0.c.d), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(135f, 111f), vec2<f32>(588f, -560f)))) >> (max(u_input.a.x, ~0u) % 32u)));
    var var_1 = global1[_wgslsmith_index_u32(0u, 23u)];
    global1 = array<Struct_1, 23>();
    global0 = array<Struct_1, 2>();
    global2 = ~max(_wgslsmith_mod_i32(var_1.b.x, arg_0.c.b.x) ^ _wgslsmith_mult_i32(global3.c.b.x, arg_0.c.b.x), global3.c.b.x) << (22166u % 32u);
    return _wgslsmith_mult_u32(16682u, u_input.a.x);
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_2 {
    global3 = Struct_2(arg_3, true, global3.c);
    let var_0 = global3.a.a.x;
    global1 = array<Struct_1, 23>();
    let var_1 = ~vec4<u32>(~arg_3.d, firstTrailingBit(u_input.a.x), u_input.a.x, _wgslsmith_clamp_u32(arg_0, ~4294967295u, arg_0));
    let var_2 = vec2<f32>(arg_1.x, arg_1.x);
    return Struct_2(global1[_wgslsmith_index_u32(4294967295u, 23u)], firstLeadingBit(min(~66284u, var_1.x)) >= _wgslsmith_clamp_u32(arg_0, _wgslsmith_mod_u32(global3.a.d, 49548u), ~select(global3.a.d, 9413u, false)), global0[_wgslsmith_index_u32(abs(4294967295u), 2u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -global3.c.a.x;
    let var_0 = -global3.c.b.wx;
    global3 = func_5(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_mod_u32(~global3.c.d, global3.c.d)), vec3<f32>(_wgslsmith_f_op_f32(-720f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(751f)) * _wgslsmith_f_op_f32(floor(340f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1131f - 1587f) - 1710f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(575f + -1017f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -963f))))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(5874u, 15497u, global3.c.d, 4294967295u), max(vec4<u32>(1u, 41096u, 4294967295u, 1u), vec4<u32>(4294967295u, global3.c.d, 68058u, u_input.a.x))) << (~firstLeadingBit(vec4<u32>(4818u, u_input.a.x, u_input.a.x, 1u)) % vec4<u32>(32u)), vec4<u32>(~(56804u >> (global3.a.d % 32u)), func_1(Struct_2(Struct_1(global3.c.a, global3.a.b, false, u_input.a.x), true, Struct_1(global3.a.b, global3.c.a, false, global3.c.d))), min(~4294967295u, func_4(u_input.a.x, Struct_1(vec4<i32>(-10886i, -2147483647i, var_0.x, var_0.x), vec4<i32>(-2147483647i, global3.a.b.x, 41738i, global3.a.b.x), global3.b, global3.c.d), vec2<f32>(-1455f, 162f))), min(abs(1u), firstTrailingBit(895u)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(24543u, 15900u, global3.c.d) ^ ~vec3<u32>(1u, 4294967295u, 50973u), abs(vec3<u32>(u_input.a.x, 9222u, 1u))), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(global3.a.d, global3.a.d, global3.c.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(global3.a.d, 26588u, u_input.a.x), vec3<u32>(24040u, global3.c.d, global3.a.d), vec3<u32>(u_input.a.x, 6753u, global3.a.d))), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, global3.c.d, 44544u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, global3.c.d), vec3<u32>(11435u, 15841u, u_input.a.x))))), 2u)]);
    global2 = abs(_wgslsmith_dot_vec4_i32(~global3.c.b, -countOneBits(global3.c.a)));
    global2 = firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, var_0.x, var_0.x, -13159i), ~global3.c.b, true), _wgslsmith_sub_vec4_i32(global3.a.a, _wgslsmith_mult_vec4_i32(global3.a.a, global3.c.a))), ~(~(~28614i))));
    var var_1 = _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 50781u, firstLeadingBit(52063u), ~1472u), ~(~(~(~vec4<u32>(4294967295u, global3.c.d, 4294967295u, 36815u)))));
    global2 = select(2147483647i, -22094i, !all(vec3<bool>(global3.b, false, true)));
    var var_2 = -vec3<i32>(_wgslsmith_clamp_i32(var_0.x, 0i, var_0.x) | -var_0.x, global3.a.a.x, _wgslsmith_clamp_i32(min(global3.a.b.x, global3.c.b.x), ~var_0.x, func_5(1u, vec3<f32>(999f, 859f, -885f), vec4<u32>(u_input.a.x, u_input.a.x, global3.a.d, u_input.a.x), Struct_1(global3.a.a, vec4<i32>(-22195i, var_0.x, global3.c.b.x, 2147483647i), global3.b, u_input.a.x)).c.b.x)) | ~vec3<i32>(max(-1i, -18005i) >> ((var_1.x | var_1.x) % 32u), global3.c.a.x, _wgslsmith_clamp_i32(var_0.x, reverseBits(91095i), var_0.x));
    global2 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(105f, 1000f)))) + vec2<f32>(_wgslsmith_f_op_f32(1003f - _wgslsmith_f_op_f32(f32(-1f) * -1928f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1441f * 233f)))));
}

