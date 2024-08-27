struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(301f, vec4<bool>(true, false, true, false), false, vec3<bool>(false, false, false)), vec3<i32>(8550i, -70357i, 42909i), -84096i, vec4<f32>(989f, -1117f, -415f, -1805f));

var<private> global1: array<u32, 24> = array<u32, 24>(0u, 1u, 16510u, 35319u, 4294967295u, 9096u, 36057u, 0u, 1u, 137345u, 26539u, 4294967295u, 16273u, 1u, 39773u, 0u, 0u, 1u, 4294967295u, 46483u, 21794u, 4294967295u, 25045u, 4294967295u);

var<private> global2: array<bool, 27> = array<bool, 27>(true, true, true, true, false, false, false, true, false, true, true, false, true, false, true, false, false, false, true, false, false, false, false, false, true, true, true);

var<private> global3: array<vec4<u32>, 1>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = Struct_2(1u <= _wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 17116u, 22517u, global1[_wgslsmith_index_u32(u_input.a, 24u)]), ~vec4<u32>(18035u, 33034u, global1[_wgslsmith_index_u32(63379u, 24u)], 13185u))), global0.b.x <= _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, global0.b.x & global0.c, _wgslsmith_mod_i32(global0.b.x, global0.b.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, global0.b.x, global0.c) & vec3<i32>(-2147483647i, 1i, global0.b.x), vec3<i32>(global0.c, 2147483647i, 58117i) ^ vec3<i32>(17848i, global0.b.x, -39049i))), true || (!all(global0.a.b) && !global2[_wgslsmith_index_u32(select(1u, u_input.a, true), 27u)]));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.d + global0.d)))));
    var var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 27458u), vec2<u32>(4294967295u, 39125u))), _wgslsmith_mod_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)]))), vec2<u32>(countOneBits(global1[_wgslsmith_index_u32(14003u, 24u)]), 1u))), vec2<u32>(global1[_wgslsmith_index_u32(~15914u, 24u)], ~(~(~u_input.a))));
    let var_3 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(44519u, ~(~u_input.a), ~1u), ~(abs(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.x, 24u)], 24u)], global1[_wgslsmith_index_u32(1u, 24u)], u_input.a)) & vec3<u32>(15550u, u_input.a, u_input.a))), var_2.x, ~(global1[_wgslsmith_index_u32(53304u, 24u)] & 1u), u_input.a);
    var_2 = (~(~_wgslsmith_sub_vec2_u32(var_3.xx, vec2<u32>(1u, u_input.a))) | var_3.xz) ^ _wgslsmith_div_vec2_u32(select(~vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], 1u), vec2<u32>(0u, 103917u), any(global0.a.d)), _wgslsmith_mult_vec2_u32(vec2<u32>(6513u, 13938u), var_3.wz));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1056f, _wgslsmith_f_op_f32(-607f + global0.a.a))), -356f));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a.a)) * 411f))), global0.d.x));
    global2 = array<bool, 27>();
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(step(651f, -445f)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 - 460f), _wgslsmith_f_op_f32(func_3())))))) * global0.d);
    global2 = array<bool, 27>();
    global2 = array<bool, 27>();
    return global0.a;
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = ~global3[_wgslsmith_index_u32(1u, 1u)];
    let var_1 = ~13703i;
    global0 = Struct_3(func_2(_wgslsmith_mult_u32(~(~32340u), 0u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.d.x))), all(select(!global0.a.b.xwz, arg_0.zzz, true))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, 6760i, -2147483647i), global0.b), var_1, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(step(global0.a.a, 1000f))) + _wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_f32(global0.a.a * global0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -712f) + 2004f)), _wgslsmith_div_f32(970f, global0.a.a)));
    global3 = array<vec4<u32>, 1>();
    let var_2 = !(!select(select(!vec4<bool>(false, true, true, global0.a.b.x), global0.a.b, all(arg_0.wwx)), vec4<bool>(global0.a.b.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 24u)], 27u)], global2[_wgslsmith_index_u32(~u_input.a, 27u)], true), true));
    return global0.a.a;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: u32, arg_3: Struct_5) -> vec3<u32> {
    global2 = array<bool, 27>();
    var var_0 = Struct_5(Struct_2(arg_1.b.a.c, any(vec3<bool>(!global2[_wgslsmith_index_u32(arg_1.d, 27u)], func_2(1u, -1238f, global0.a.c).d.x, !arg_1.a.b)), any(vec2<bool>(global2[_wgslsmith_index_u32(~arg_1.d, 27u)], false))), arg_3.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, -292f, -631f)) * arg_1.c)), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(select(10308u, 1u, true), firstTrailingBit(8674u)), global1[_wgslsmith_index_u32(21033u, 24u)]));
    var_0 = arg_3;
    var var_1 = 450u != ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(118895u, u_input.a, arg_2), vec3<u32>(global1[_wgslsmith_index_u32(arg_3.d, 24u)], 49955u, arg_1.d)) & abs(vec3<u32>(arg_2, 4294967295u, u_input.a)), min(select(vec3<u32>(var_0.d, 1u, 1u), vec3<u32>(1u, 28896u, arg_3.d), false), ~vec3<u32>(arg_2, 48246u, 0u)));
    var var_2 = Struct_3(func_2(~_wgslsmith_mod_u32(min(4294967295u, global1[_wgslsmith_index_u32(arg_1.d, 24u)]), firstTrailingBit(u_input.a)), _wgslsmith_f_op_f32(ceil(-1381f)), global2[_wgslsmith_index_u32(2366u, 27u)]), arg_3.b.b, _wgslsmith_mult_i32(reverseBits(_wgslsmith_add_i32(reverseBits(-36105i), arg_1.b.c)), var_0.b.b.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1184f - arg_3.c.x), _wgslsmith_f_op_f32(arg_1.b.a.a + arg_3.b.d.x)), -1090f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.c.x), var_0.b.d.x, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(394f * arg_3.c.x) - arg_3.b.d.x)), _wgslsmith_f_op_vec4_f32(-arg_1.b.d), any(select(global0.a.b, !arg_1.b.a.b, global0.a.b.x)))));
    return countOneBits(countOneBits(~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 105892u), vec3<u32>(179095u, 4294967295u, arg_3.d)), firstTrailingBit(vec3<u32>(var_0.d, global1[_wgslsmith_index_u32(4294967295u, 24u)], u_input.a)))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: Struct_2) -> bool {
    return select(global0.d.x >= 677f, arg_2.x, all(!global0.a.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global3 = array<vec4<u32>, 1>();
    let var_1 = _wgslsmith_f_op_f32(-global0.d.x);
    var var_2 = func_5(func_4(_wgslsmith_f_op_vec3_f32(global0.d.zwy - vec3<f32>(_wgslsmith_f_op_f32(func_1(global0.a.b)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1))), Struct_5(Struct_2(!var_0, all(vec3<bool>(global2[_wgslsmith_index_u32(14431u, 27u)], false, false)), false), Struct_3(global0.a, vec3<i32>(global0.b.x, 10739i, global0.c), -global0.c, global0.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(660f, -421f, -292f)), _wgslsmith_add_u32(35405u, 44817u)), (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 24u)], u_input.a), vec3<u32>(4294967295u, 700u, 52260u)) | ~0u) & firstTrailingBit(firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 24u)], 24u)])), Struct_5(Struct_2(global2[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(51719u, 24u)], u_input.a), 27u)], !global2[_wgslsmith_index_u32(26885u, 27u)], !global0.a.d.x), Struct_3(func_2(u_input.a, 615f, true), vec3<i32>(-21213i, global0.b.x, -11999i), global0.b.x, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(945f, -595f, 566f, global0.a.a)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.a.a)), _wgslsmith_f_op_f32(exp2(var_1)), global0.a.a), u_input.a)), Struct_4(var_0, _wgslsmith_add_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(0u, u_input.a, 15351u))), _wgslsmith_div_vec3_u32(~vec3<u32>(23682u, u_input.a, 42758u), ~vec3<u32>(4294967295u, u_input.a, u_input.a))), abs(_wgslsmith_clamp_vec3_i32(global0.b, vec3<i32>(1i, global0.b.x, global0.c), vec3<i32>(global0.c, global0.c, global0.c))) << (select(countOneBits(vec3<u32>(u_input.a, u_input.a, 1u)), vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 24u)], global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(50198u, 24u)]), all(vec2<bool>(false, false))) % vec3<u32>(32u))), vec2<bool>(false, !(!all(global0.a.b))), Struct_2(!func_2(4788u, _wgslsmith_f_op_f32(-1110f - -695f), any(global0.a.d)).c, true, all(select(global0.a.d.xz, !vec2<bool>(global0.a.d.x, global0.a.b.x), select(global0.a.d.xz, vec2<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], 27u)], true), vec2<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 27u)]))))));
    global1 = array<u32, 24>();
    let var_3 = Struct_2(all(global0.a.b.xy), all(vec2<bool>(!var_0 != false, 84887u < u_input.a)), !(_wgslsmith_f_op_f32(max(575f, _wgslsmith_f_op_f32(select(-445f, 1234f, false)))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a.a + var_1)))));
    var var_4 = vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, -35690i, firstLeadingBit(~max(-1i, global0.b.x))), global0.b.x);
    let var_5 = !vec2<bool>(false, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, global0.a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-824f, _wgslsmith_f_op_f32(trunc(-1042f)))), var_1, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, var_4.x, var_4.x, global0.b.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, global0.b.x, 1i, global0.c), vec4<i32>(0i, -3344i, -4488i, 1i), vec4<i32>(0i, 0i, 16912i, var_4.x))) << (global1[_wgslsmith_index_u32(u_input.a, 24u)] % 32u), global0.c));
}

