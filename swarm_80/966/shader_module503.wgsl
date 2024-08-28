struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(4294967295u, vec4<bool>(false, false, false, true), 2147483647i), Struct_3(49757u, vec4<bool>(false, false, false, false), -24422i), Struct_3(46637u, vec4<bool>(false, true, false, false), -21724i), Struct_3(73666u, vec4<bool>(false, false, true, true), -28920i), Struct_3(46624u, vec4<bool>(false, false, false, true), i32(-2147483648)), Struct_3(37131u, vec4<bool>(true, true, false, false), 0i), Struct_3(71783u, vec4<bool>(false, false, false, true), 2147483647i), Struct_3(9388u, vec4<bool>(false, true, true, true), -1i), Struct_3(167u, vec4<bool>(false, true, true, true), 1i), Struct_3(4294967295u, vec4<bool>(true, true, true, true), 2147483647i), Struct_3(1u, vec4<bool>(true, false, true, false), -48915i), Struct_3(1u, vec4<bool>(false, true, false, true), -1i), Struct_3(35954u, vec4<bool>(false, false, false, true), 20519i), Struct_3(0u, vec4<bool>(true, false, false, true), 43986i), Struct_3(78712u, vec4<bool>(true, true, false, false), 2147483647i), Struct_3(17891u, vec4<bool>(false, true, false, true), -1i), Struct_3(13998u, vec4<bool>(false, false, false, true), 56200i), Struct_3(51350u, vec4<bool>(false, false, false, false), 1i), Struct_3(0u, vec4<bool>(false, true, true, false), 2147483647i), Struct_3(10741u, vec4<bool>(false, true, false, true), -1i), Struct_3(1u, vec4<bool>(false, true, true, true), -18912i), Struct_3(4294967295u, vec4<bool>(true, false, false, false), 94209i), Struct_3(24884u, vec4<bool>(false, true, true, true), 1i), Struct_3(8366u, vec4<bool>(false, false, true, true), 9304i), Struct_3(26087u, vec4<bool>(false, true, false, true), -1i), Struct_3(1u, vec4<bool>(false, true, false, false), -38592i), Struct_3(0u, vec4<bool>(false, true, false, true), 32510i), Struct_3(37823u, vec4<bool>(true, true, true, true), 11944i), Struct_3(54696u, vec4<bool>(false, false, true, true), 1i), Struct_3(1u, vec4<bool>(true, false, false, false), 12667i), Struct_3(48619u, vec4<bool>(true, false, false, false), -1i));

var<private> global1: array<bool, 14>;

var<private> global2: Struct_5 = Struct_5(false);

var<private> global3: bool = true;

var<private> global4: array<vec3<bool>, 2>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<u32> {
    let var_0 = vec2<bool>(false, !(~1u >= ~_wgslsmith_div_u32(u_input.d, 4294967295u)));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1827f), Struct_1(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(13335u, 12701u, u_input.d), vec3<u32>(55260u, 44818u, u_input.b), global4[_wgslsmith_index_u32(4294967295u, 2u)]), vec3<u32>(u_input.b, u_input.b, u_input.d) | vec3<u32>(u_input.b, 1u, u_input.b)), u_input.a.x), vec3<i32>(1i, -8381i, _wgslsmith_div_i32(6357i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.a.x), vec4<i32>(u_input.c.x, -1i, 2147483647i, u_input.c.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(25442i, 0i, u_input.c.x, -46529i), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)))), _wgslsmith_clamp_u32(143748u, u_input.b, reverseBits(~u_input.d)) << (104522u % 32u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(1409f + var_1.a))))) * var_1.a);
    global0 = array<Struct_3, 31>();
    let var_3 = select(!vec4<bool>(false, all(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 14u)], true, true)), true, true), !(!(!select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(global2.a, global1[_wgslsmith_index_u32(5305u, 14u)], true, false), global1[_wgslsmith_index_u32(var_1.b.a, 14u)]))), !(~_wgslsmith_dot_vec3_i32(u_input.a, var_1.c) <= (var_1.b.b >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.a, 11360u, 64977u, var_1.d), vec4<u32>(66217u, 1u, var_1.b.a, u_input.d)) % 32u))));
    return ~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(16538u, u_input.b)), ~vec2<u32>(4294967295u, var_1.d), abs(vec2<u32>(var_1.d, 1u))), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(33893u, var_1.b.a), vec2<u32>(38800u, var_1.d)), min(vec2<u32>(var_1.d, u_input.d), vec2<u32>(1873u, var_1.b.a))), ~vec2<u32>(var_1.d, 753u) & ~vec2<u32>(44070u, 12785u)) & ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.d | var_1.b.a, 259u), _wgslsmith_div_vec2_u32(min(vec2<u32>(4294967295u, 19709u), vec2<u32>(u_input.d, 30992u)), min(vec2<u32>(4294967295u, var_1.d), vec2<u32>(4294967295u, u_input.d))));
}

fn func_2() -> Struct_5 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(-520f, -286f)), 104f);
    global2 = Struct_5(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), func_3()) <= _wgslsmith_clamp_u32(min(0u, u_input.d), 55986u, max(6942u, 1u)));
    var var_1 = ~abs(min(~firstTrailingBit(u_input.d), max(24092u, _wgslsmith_clamp_u32(1u, 0u, 4294967295u))));
    var var_2 = countOneBits(firstLeadingBit(vec4<u32>(~9863u, ~(10649u >> (u_input.b % 32u)), 67837u, 4294967295u | firstTrailingBit(4294967295u))));
    let var_3 = vec3<i32>(2147483647i, countOneBits(-firstTrailingBit(-2147483647i)) & countOneBits(58766i), -1i);
    return Struct_5(all(vec3<bool>(any(vec4<bool>(global2.a, false, true, global1[_wgslsmith_index_u32(4294967295u, 14u)])), global2.a & any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 14u)], false)), false == global2.a)));
}

fn func_1(arg_0: u32) -> vec4<f32> {
    var var_0 = func_2();
    var_0 = func_2();
    let var_1 = ~vec3<i32>(~u_input.c.x, -864i, -u_input.a.x) | _wgslsmith_div_vec3_i32(abs(_wgslsmith_mod_vec3_i32(min(vec3<i32>(u_input.c.x, 16321i, u_input.c.x), vec3<i32>(u_input.a.x, u_input.c.x, 0i)), abs(u_input.a))), vec3<i32>(~countOneBits(-7372i), u_input.a.x, (-5670i & u_input.a.x) >> (~4294967295u % 32u)));
    let var_2 = !func_2().a;
    let var_3 = func_3().x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(627f, 1443f, 251f, 1054f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-446f, -335f, 520f, -755f), vec4<f32>(123f, -344f, -969f, -1000f))))), vec4<bool>(true, true, var_3 >= 2799u, true))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    let var_0 = ~_wgslsmith_div_vec4_i32(~vec4<i32>(arg_1.x ^ 52204i, u_input.c.x, 2147483647i, u_input.c.x), firstLeadingBit(firstLeadingBit(abs(vec4<i32>(14241i, u_input.c.x, arg_1.x, arg_1.x)))));
    global4 = array<vec3<bool>, 2>();
    let var_1 = _wgslsmith_dot_vec2_i32(var_0.yz ^ firstLeadingBit(u_input.a.xz), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, countOneBits(~var_0.x)), _wgslsmith_add_vec2_i32(arg_1.yx, vec2<i32>(var_0.x & arg_1.x, arg_2.c >> (u_input.b % 32u)))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(ceil(489f)), Struct_1(_wgslsmith_add_u32(u_input.b, max(~u_input.b, arg_3)), (-1i ^ u_input.a.x) & _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, -1i, 16383i), abs(var_0.x))), select(_wgslsmith_mod_vec3_i32(select(vec3<i32>(arg_2.c, 2147483647i, arg_1.x) >> (vec3<u32>(u_input.d, arg_3, 1u) % vec3<u32>(32u)), abs(vec3<i32>(arg_1.x, var_1, -2147483647i)), !global1[_wgslsmith_index_u32(4159u, 14u)]), vec3<i32>(2147483647i, 27962i, var_0.x)), var_0.xxx, select(arg_2.b.zzz, arg_2.b.zzz, global4[_wgslsmith_index_u32(arg_2.a, 2u)])), ~select(arg_2.a, arg_2.a & 0u, global1[_wgslsmith_index_u32(u_input.b, 14u)]));
    var var_3 = Struct_1(func_3().x, _wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-11852i, arg_1.x, arg_2.c, arg_1.x), var_0), var_0.x) << (countOneBits(~var_2.d) % 32u));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(4294967295u)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1284f, 653f, -1000f, 698f) * vec4<f32>(623f, 830f, 295f, 731f))))), firstLeadingBit(vec3<i32>(u_input.c.x, 1i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-13761i, 10437i, u_input.c.x))) >> (vec3<u32>(~u_input.d, u_input.b, ~1u) % vec3<u32>(32u))), Struct_3((_wgslsmith_sub_u32(u_input.b, u_input.b) ^ u_input.b) >> (max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, 9710u, 22202u), vec4<u32>(9344u, 4294967295u, u_input.d, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 13695u), vec2<u32>(u_input.b, u_input.b))) % 32u), vec4<bool>(select(false, true, false), -u_input.c.x > u_input.a.x, false, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.d, 86637u), vec4<u32>(u_input.b, 0u, 22493u, 4294967295u)), 14u)] == all(vec2<bool>(true, false))), -1i), _wgslsmith_div_u32(~(~u_input.b) ^ u_input.b, ~u_input.d));
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-204f, -1000f)), -2307f, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_div_f32(-987f, 1116f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(417f, -1616f, 794f, 201f) * vec4<f32>(-689f, -1344f, -553f, -673f)), _wgslsmith_f_op_vec4_f32(func_1(112015u))) * vec4<f32>(-1619f, -698f, -1179f, -1095f)))), max(vec3<i32>(3972i, var_0.b, _wgslsmith_sub_i32(_wgslsmith_add_i32(var_0.b, -1i), 0i)), -max(vec3<i32>(23002i, 2147483647i, u_input.c.x), vec3<i32>(var_0.b, 2147483647i, var_0.b))), global0[_wgslsmith_index_u32(abs(min(_wgslsmith_sub_u32(abs(var_0.a), 1u), var_0.a)), 31u)], u_input.d);
    var var_2 = ~firstTrailingBit(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.c.x, var_0.b), vec4<i32>(var_0.b, var_1.b, -16598i, -585i)))) >> (countOneBits(~min(vec4<u32>(62420u, var_0.a, 56110u, 19478u), vec4<u32>(4294967295u, var_0.a, u_input.d, 0u)) | (vec4<u32>(var_0.a, u_input.b, 37515u, 4294967295u) & _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a, u_input.b, var_1.a, u_input.d), vec4<u32>(23030u, var_0.a, 63954u, 6473u)))) % vec4<u32>(32u));
    global1 = array<bool, 14>();
    var var_3 = Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.b, ~1i, 1i), _wgslsmith_div_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(u_input.a, -var_2.xyz))), 432f);
    global4 = array<vec3<bool>, 2>();
    global1 = array<bool, 14>();
    let var_4 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -429f))), var_3.b);
}

