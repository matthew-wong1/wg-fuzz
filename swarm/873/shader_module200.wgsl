struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<i32> = vec2<i32>(0i, 28017i);

var<private> global2: Struct_3;

var<private> global3: array<Struct_1, 26>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    global1 = max(reverseBits(arg_2.a.wy | (vec2<i32>(global1.x, global1.x) | select(vec2<i32>(0i, -2147483647i), global0.b.a.wy, vec2<bool>(false, global0.b.b.x)))), _wgslsmith_mult_vec2_i32(global0.b.a.yz, -arg_2.a.wy));
    global3 = array<Struct_1, 26>();
    global1 = _wgslsmith_mult_vec2_i32(~vec2<i32>(global0.b.a.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(23146i, 1i), _wgslsmith_mod_i32(global0.b.c, global0.b.a.x))), countOneBits(~max(vec2<i32>(40020i, u_input.c), vec2<i32>(arg_2.a.x, global1.x)) | arg_2.a.wy));
    var var_0 = vec3<u32>(firstTrailingBit(~_wgslsmith_mult_u32(min(global2.a, global2.a), 1u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a, u_input.d), vec2<u32>(global2.a, 4294967295u)), 16642u, _wgslsmith_div_u32(global2.a, 37466u), global2.a), vec4<u32>(arg_0, global0.d, 0u, max(u_input.e.x, 27797u))), _wgslsmith_div_u32(u_input.e.x, 82471u), ~u_input.d), _wgslsmith_mult_u32(~abs(global0.e.x | 86649u), ~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(19528u, 0u)), u_input.e.xy | global0.e.zy)));
    let var_1 = -vec2<i32>(_wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(arg_2.a, vec4<i32>(-2147483647i, -14902i, global1.x, global0.c.x)), arg_2.a), ~(~arg_2.a.x));
    return global0.e << (_wgslsmith_clamp_vec3_u32(~countOneBits(select(u_input.e.yyz, vec3<u32>(51549u, 29899u, 15484u), false)), global0.e, ~countOneBits(countOneBits(vec3<u32>(4294967295u, var_0.x, 52297u)))) % vec3<u32>(32u));
}

fn func_4(arg_0: Struct_2) -> vec2<f32> {
    global0 = arg_0;
    var var_0 = arg_0.b;
    let var_1 = Struct_3(global0.e.x);
    let var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(reverseBits(1i), -1i, -45546i), _wgslsmith_clamp_vec3_i32(abs(-vec3<i32>(arg_0.b.a.x, u_input.b, global0.b.c)), ~_wgslsmith_div_vec3_i32(var_0.a.wyw, arg_0.b.a.wwx), firstTrailingBit(arg_0.b.a.yxw) | var_0.a.yyy), select(vec3<i32>(1i, -arg_0.b.a.x, 15798i | global0.b.a.x), -var_0.a.zww, select(arg_0.b.b, vec3<bool>(true, global0.b.b.x, false), any(vec2<bool>(global0.b.b.x, true))))), vec3<i32>(select(_wgslsmith_sub_i32(-15429i, 0i) | (-2147483647i | global0.b.c), -var_0.c & ~global1.x, true), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, var_0.c, global1.x, global1.x), select(arg_0.b.a, vec4<i32>(1i, -7469i, -2147483647i, global1.x), false)), _wgslsmith_mod_i32(~arg_0.b.c, -reverseBits(arg_0.c.x))));
    var var_3 = global0.b;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1567f, -1000f), vec2<f32>(523f, 1947f)))), vec2<f32>(-2514f, _wgslsmith_f_op_f32(select(506f, -363f, arg_0.b.b.x)))))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(select(-130f, -1858f, false)), _wgslsmith_f_op_f32(818f * -686f)))))));
}

fn func_2() -> i32 {
    var var_0 = global0.b.b;
    let var_1 = !global0.b.b.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(func_4(Struct_2(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(32461u, 4294967295u, u_input.e.x, u_input.a.x)) & (vec4<u32>(global0.e.x, 65197u, 1u, global0.a) | u_input.e), ~(u_input.e >> (u_input.e % vec4<u32>(32u)))), global0.b, ~global0.c, 397u, u_input.a >> (func_3(4294967295u, all(global0.b.b), global3[_wgslsmith_index_u32(~global2.a, 26u)]) % vec3<u32>(32u)))));
    global0 = Struct_2(~u_input.d, global0.b, vec3<i32>(global1.x, global1.x, global1.x | 47566i), 52209u, func_3(4294967295u, !(global0.b.b.x || (1u == global0.e.x)), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-11933i, 56210i, global0.b.a.x, global1.x), ~global0.b.a), vec3<bool>(global0.b.b.x, false, var_1), -574i >> (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u))));
    global3 = array<Struct_1, 26>();
    return abs(_wgslsmith_dot_vec2_i32(-(-global0.b.a.yy | global0.c.xx), ~global0.c.yx));
}

fn func_1(arg_0: i32) -> bool {
    global3 = array<Struct_1, 26>();
    var var_0 = func_2();
    let var_1 = global0.c;
    var var_2 = true;
    var var_3 = Struct_2(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(u_input.e, u_input.e)), vec4<u32>(global2.a, ~firstTrailingBit(global2.a), _wgslsmith_sub_u32(~0u, global0.e.x), 4294967295u)), global0.b, (global0.c | (global0.c >> (u_input.a % vec3<u32>(32u)))) ^ vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -33345i, i32(-1i) * -36949i), ~u_input.c, _wgslsmith_mult_i32(arg_0, _wgslsmith_add_i32(global0.c.x, arg_0))), 0u | ~max(_wgslsmith_add_u32(1u, 0u), _wgslsmith_sub_u32(global0.a, global0.d)), global0.e);
    return !(!var_3.b.b.x);
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(191f, arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(598f)), -1011f)))), true | (852f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) * -930f))));
    global3 = array<Struct_1, 26>();
    global1 = vec2<i32>((~global0.c.x | abs(2147483647i)) << (global2.a % 32u), global1.x);
    let var_1 = global0.c.x;
    let var_2 = Struct_1(global0.b.a, global0.b.b, ~(-2147483647i));
    return Struct_2(0u, global0.b, countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, global1.x, reverseBits(arg_3.x)), arg_3)), global0.a, ~(vec3<u32>(_wgslsmith_div_u32(6001u, global2.a), u_input.e.x, _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(25775u, 4294967295u, global0.e.x, global0.d))) | vec3<u32>(4294967295u, 0u, ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(672f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1568f * -1348f) - 643f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-620f, -1303f, 637f, 840f) - vec4<f32>(231f, 1455f, -557f, 1370f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1255f, 955f, -633f, -242f), vec4<f32>(1175f, -1034f, -624f, -895f)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-148f, _wgslsmith_f_op_f32(min(1000f, 592f)), _wgslsmith_f_op_f32(-205f * 242f), _wgslsmith_div_f32(1060f, -248f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(853f, 775f, 328f, 190f))))))), select(global0.b.b, select(select(global0.b.b, !global0.b.b, true), global0.b.b, select(select(vec3<bool>(true, true, global0.b.b.x), vec3<bool>(true, true, true), global0.b.b.x), vec3<bool>(true, true, true), true)), select(!vec3<bool>(true, true, global0.b.b.x), select(vec3<bool>(global0.b.b.x, global0.b.b.x, global0.b.b.x), select(global0.b.b, global0.b.b, vec3<bool>(global0.b.b.x, true, global0.b.b.x)), func_1(-2147483647i)), select(select(vec3<bool>(global0.b.b.x, global0.b.b.x, true), global0.b.b, global0.b.b.x), global0.b.b, vec3<bool>(global0.b.b.x, global0.b.b.x, global0.b.b.x)))), global0.b.a.wwz);
    global0 = Struct_2(min(firstTrailingBit(abs(~4294967295u)), ~_wgslsmith_mod_u32(~56884u, abs(global0.d))), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(646f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-549f, 286f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(-1692f, -1876f), 403f, _wgslsmith_f_op_f32(abs(-1455f)), -518f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(823f, -624f, 422f, 209f) * vec4<f32>(-1451f, 1417f, -146f, -1467f)), vec4<f32>(-847f, 629f, -1092f, -2675f))))), !(!(!global0.b.b)), vec3<i32>(1i, u_input.b, u_input.c)).b, ~global0.c, ~11764u ^ countOneBits(~4294967295u >> (~u_input.a.x % 32u)), global0.e);
    var var_0 = !vec3<bool>(false, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 0u), ~vec2<u32>(25537u, global2.a)) > func_5(_wgslsmith_f_op_f32(floor(1138f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(244f, -601f, -1562f, 159f)), !global0.b.b, select(global0.c, vec3<i32>(global1.x, global0.b.a.x, global1.x), vec3<bool>(global0.b.b.x, true, global0.b.b.x))).a, abs(4198u) >= ~abs(u_input.a.x));
    let var_1 = global3[_wgslsmith_index_u32(30217u, 26u)];
    var var_2 = Struct_4(Struct_3(_wgslsmith_add_u32(60947u, firstTrailingBit(global0.e.x) ^ reverseBits(global0.d))), Struct_2(abs(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a, 14512u), global0.e.zx), 22368u)), func_5(-915f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1454f, 1753f, 131f, 254f)))), func_5(_wgslsmith_f_op_f32(-1000f + 417f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(3824f, 2074f, -358f, -345f)), select(var_1.b, var_1.b, var_0.x), ~vec3<i32>(global1.x, var_1.a.x, u_input.b)).b.b, -global0.b.a.yzx ^ var_1.a.wyy).b, vec3<i32>(9695i, -u_input.c, _wgslsmith_dot_vec4_i32(~global0.b.a, -vec4<i32>(u_input.c, -27914i, u_input.c, 2147483647i))), ~(abs(global0.a) >> (4294967295u % 32u)), ~vec3<u32>(_wgslsmith_div_u32(global0.a, u_input.e.x), func_3(1u, true, Struct_1(global0.b.a, var_1.b, var_1.a.x)).x, global2.a | 4294967295u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2093f, -2033f, -185f, 1448f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-253f, -1000f, 1509f, 854f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-449f, -960f, -433f, 1031f) - vec4<f32>(-1000f, -961f, -604f, 235f)))))), func_2());
    var_0 = !global0.b.b;
    let var_3 = ~(-47462i);
    global2 = Struct_3(~(~50261u));
    var_2 = Struct_4(Struct_3(min(~4294967295u, _wgslsmith_dot_vec4_u32(u_input.e, u_input.e))), func_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(545f + _wgslsmith_f_op_f32(ceil(521f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.c.x - 194f), 379f, _wgslsmith_f_op_f32(var_2.c.x - 509f), -446f) - _wgslsmith_f_op_vec4_f32(-var_2.c)), var_1.b, ~(~var_2.b.c | vec3<i32>(-9819i, 4400i, 2147483647i))), var_2.c, ~var_3);
    let x = u_input.a;
    s_output = StorageBuffer(-37018i, u_input.e, var_2.b.b.a, ~(~(~(~4294967295u))), max(~(~vec2<i32>(2147483647i, global0.b.a.x)), func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.c.x))), var_2.c, var_2.b.b.b, _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -19172i, global0.c.x), select(vec3<i32>(global0.c.x, global0.c.x, -18167i), vec3<i32>(-15888i, -2147483647i, var_3), var_1.b))).b.a.xx));
}

