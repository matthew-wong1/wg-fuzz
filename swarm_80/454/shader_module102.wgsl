struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(717f, -1349f);

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<u32, 9> = array<u32, 9>(1u, 65507u, 39124u, 4294967295u, 30282u, 25914u, 5992u, 1u, 38425u);

var<private> global3: vec3<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> u32 {
    var var_0 = arg_0.b.x;
    let var_1 = arg_3;
    var var_2 = arg_0;
    global3 = vec3<u32>(1027u, _wgslsmith_add_u32(110762u, global3.x), 60139u) ^ (_wgslsmith_mod_vec3_u32(~(~vec3<u32>(arg_3.a, 4294967295u, global3.x)), ~max(vec3<u32>(20678u, global3.x, 0u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 9u)], 31353u, var_1.b))) & ~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 47676u), firstTrailingBit(vec3<u32>(var_1.a, u_input.a, 0u))));
    var var_3 = _wgslsmith_dot_vec4_u32(select(select(vec4<u32>(global3.x, global3.x, 35249u, global2[_wgslsmith_index_u32(u_input.a, 9u)]), ~vec4<u32>(12201u, arg_3.b, 32717u, 4294967295u), !vec4<bool>(true, arg_1, arg_1, true)), vec4<u32>(~1u, 76108u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.b, global3.x, var_1.b, 43261u), vec4<u32>(u_input.a, arg_0.a.a.b, 0u, global3.x)), _wgslsmith_sub_u32(4294967295u, var_2.c.a)), false) ^ vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_3.a), global3.xx), _wgslsmith_sub_u32(4294967295u, global2[_wgslsmith_index_u32(11595u, 9u)]), 40617u), global2[_wgslsmith_index_u32(abs(~var_1.a), 9u)], ~countOneBits(arg_0.c.b), arg_3.b), _wgslsmith_sub_vec4_u32(min(_wgslsmith_sub_vec4_u32(vec4<u32>(52654u, u_input.a, 1u, arg_3.b), vec4<u32>(0u, global3.x, 1u, var_2.a.a.a)), countOneBits(vec4<u32>(0u, global2[_wgslsmith_index_u32(1u, 9u)], 4294967295u, 1u))), reverseBits(firstTrailingBit(vec4<u32>(31064u, arg_0.a.a.a, 0u, 0u)))) ^ ~vec4<u32>(select(var_1.a, global3.x, true), 30860u, firstTrailingBit(0u), 1u));
    return _wgslsmith_dot_vec2_u32(~global3.xz, global3.zy) ^ ~select(~abs(global2[_wgslsmith_index_u32(arg_0.a.a.a, 9u)]), reverseBits(global2[_wgslsmith_index_u32(arg_0.c.b, 9u)]) ^ global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 32967u), 9u)], !arg_0.a.b.x);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> u32 {
    var var_0 = Struct_2(arg_0.c, arg_0.a.b, 906f);
    var_0 = arg_0.a;
    let var_1 = global0.x;
    var var_2 = arg_1;
    let var_3 = Struct_1(global3.x, 4294967295u, arg_0.a.a.d, -5917i);
    return arg_0.c.b;
}

fn func_2() -> Struct_3 {
    global3 = ~vec3<u32>(u_input.a, func_4(Struct_3(Struct_2(Struct_1(4294967295u, global2[_wgslsmith_index_u32(66456u, 9u)], 1i, -1i), vec2<bool>(true, false), global0.x), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -163f), vec2<f32>(global0.x, -211f)), global1[_wgslsmith_index_u32(29680u, 14u)]), select(~global3.x, func_3(Struct_3(Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.a, 9u)], global3.x, -2147483647i, u_input.b), vec2<bool>(true, false), -271f), vec2<f32>(global0.x, 445f), Struct_1(17034u, 1u, -35797i, u_input.b)), true, global0.x, global1[_wgslsmith_index_u32(u_input.a, 14u)]), true)), 1u);
    global2 = array<u32, 9>();
    let var_0 = Struct_3(Struct_2(Struct_1(select(select(39972u, global3.x, true), func_3(Struct_3(Struct_2(global1[_wgslsmith_index_u32(global3.x, 14u)], vec2<bool>(false, false), 257f), vec2<f32>(1392f, global0.x), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7204u, 9u)], 9u)], 14u)]), false, -223f, global1[_wgslsmith_index_u32(70895u, 14u)]), true), ~min(global3.x, 4294967295u), 9314i, ~_wgslsmith_mod_i32(-62146i, -2147483647i)), vec2<bool>(1u > u_input.a, select(false, u_input.a >= global3.x, true)), 363f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-682f, global0.x)))))), global1[_wgslsmith_index_u32(36964u, 14u)]);
    let var_1 = false;
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -108f), _wgslsmith_f_op_f32(1000f + var_0.a.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(785f, global0.x), var_0.b)), select(select(vec2<bool>(var_1, var_1), var_0.a.b, var_0.a.b), vec2<bool>(var_0.a.b.x, true), !var_0.a.b))))));
    return var_0;
}

fn func_1() -> Struct_3 {
    var var_0 = func_2();
    let var_1 = var_0.a.b.x;
    var var_2 = func_2();
    global3 = vec3<u32>(global3.x, var_0.c.a, _wgslsmith_dot_vec2_u32(~(~abs(global3.xz)), global3.zy));
    let var_3 = _wgslsmith_mod_u32(reverseBits(u_input.a), var_2.c.b | ~_wgslsmith_clamp_u32(~1u, min(global2[_wgslsmith_index_u32(var_2.a.a.a, 9u)], 1u), var_2.a.a.b));
    return Struct_3(func_2().a, var_2.b, Struct_1(global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.b, u_input.a, 105429u, u_input.a), vec4<u32>(var_2.c.b, 23622u, 118606u, var_2.a.a.b) ^ vec4<u32>(u_input.a, 1u, var_0.c.a, 30059u)) ^ ~abs(0u), -32852i, _wgslsmith_add_i32(~(~u_input.b), ~(-19855i ^ u_input.b))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<f32>) -> vec3<u32> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.b, arg_0.b, all(vec4<bool>(arg_0.a.b.x, arg_1.a.b.x, arg_1.a.b.x, arg_0.a.b.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(arg_2.c, arg_3.x)))), vec2<f32>(_wgslsmith_f_op_f32(244f * _wgslsmith_f_op_f32(round(-421f))), arg_3.x))));
    let var_0 = arg_0.a;
    let var_1 = select(false, arg_0.a.b.x, all(select(vec3<bool>(any(vec4<bool>(var_0.b.x, arg_1.a.b.x, arg_0.a.b.x, false)), any(vec4<bool>(var_0.b.x, arg_2.b.x, false, arg_1.a.b.x)), true), select(!vec3<bool>(var_0.b.x, arg_1.a.b.x, arg_0.a.b.x), select(vec3<bool>(true, arg_2.b.x, arg_1.a.b.x), vec3<bool>(false, false, arg_1.a.b.x), var_0.b.x), !vec3<bool>(true, false, arg_0.a.b.x)), select(vec3<bool>(arg_1.a.b.x, true, arg_0.a.b.x), select(vec3<bool>(var_0.b.x, false, false), vec3<bool>(arg_2.b.x, false, var_0.b.x), vec3<bool>(false, true, arg_0.a.b.x)), true))));
    global2 = array<u32, 9>();
    let var_2 = func_1().a.a;
    return _wgslsmith_mult_vec3_u32(~firstLeadingBit(reverseBits(vec3<u32>(u_input.a, 4294967295u, arg_0.c.a) << (vec3<u32>(var_2.b, global2[_wgslsmith_index_u32(global3.x, 9u)], global2[_wgslsmith_index_u32(32912u, 9u)]) % vec3<u32>(32u)))), ~max(~vec3<u32>(arg_2.a.b, u_input.a, 55007u), vec3<u32>(_wgslsmith_mod_u32(var_0.a.b, 1u), ~1u, _wgslsmith_add_u32(26468u, arg_1.c.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = _wgslsmith_add_vec3_u32(max(select(vec3<u32>(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(u_input.a, 9u)], 14689u), global3.x, u_input.a), func_5(func_1(), Struct_3(Struct_2(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35723u, 9u)], 14u)], vec2<bool>(false, true), -914f), vec2<f32>(757f, global0.x), global1[_wgslsmith_index_u32(u_input.a, 14u)]), func_1().a, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(-303f, 1204f, global0.x)))), !vec3<bool>(var_0, false, true)), _wgslsmith_mult_vec3_u32(min(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.x, 9u)], 9u)], global2[_wgslsmith_index_u32(55249u, 9u)]), vec3<u32>(1u, 4294967295u, global2[_wgslsmith_index_u32(3473u, 9u)])), _wgslsmith_div_vec3_u32(vec3<u32>(5577u, global2[_wgslsmith_index_u32(u_input.a, 9u)], u_input.a), vec3<u32>(66080u, 4294967295u, u_input.a) | vec3<u32>(1u, global3.x, global3.x)))), firstTrailingBit(max(~vec3<u32>(4294967295u, u_input.a, 15831u), abs(vec3<u32>(global2[_wgslsmith_index_u32(global3.x, 9u)], 0u, 103768u) << (vec3<u32>(36508u, global3.x, 0u) % vec3<u32>(32u))))));
    let var_2 = ~(func_5(func_1(), func_2(), Struct_2(global1[_wgslsmith_index_u32(4294967295u, 14u)], vec2<bool>(true, var_0), func_2().a.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 246f, global0.x))) & vec3<u32>(~u_input.a, _wgslsmith_mod_u32(~1u, 40476u & var_1.x), ~(~23646u)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1070f, 1687f)))), vec2<f32>(-1912f, -185f))) - vec2<f32>(712f, global0.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-466f, 1743f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1260f, 575f)))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-857f, global0.x))))));
    let var_3 = func_2().a;
    let var_4 = -_wgslsmith_mult_vec2_i32(abs(-firstTrailingBit(vec2<i32>(u_input.b, 1i))), vec2<i32>(_wgslsmith_add_i32(var_3.a.c, var_3.a.d), abs(2147483647i)) << ((global3.xx | ~var_1.xz) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(-1i), var_3.a.c & 0i), var_4), -var_4, _wgslsmith_f_op_vec4_f32(vec4<f32>(-701f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.c, 410f) - _wgslsmith_f_op_f32(-423f * 107f)), var_3.c, _wgslsmith_f_op_f32(f32(-1f) * -470f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-254f, _wgslsmith_f_op_f32(exp2(var_3.c)), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(sign(409f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c, -1468f, 1811f, -423f))))), firstLeadingBit(select(vec3<i32>(reverseBits(1789i), var_4.x, u_input.b ^ 51217i), _wgslsmith_div_vec3_i32(vec3<i32>(5058i, u_input.b, var_4.x), vec3<i32>(u_input.b, var_3.a.c, var_3.a.d)) << ((vec3<u32>(0u, 4294967295u, global3.x) >> (var_2 % vec3<u32>(32u))) % vec3<u32>(32u)), !var_0)), -347f);
}

