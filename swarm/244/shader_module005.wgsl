struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(true, false, true, false, false, true, false, false, true, false);

var<private> global1: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(33231u, 1015u, 4294967295u), vec3<u32>(0u, 105323u, 57070u), vec3<u32>(1u, 4067u, 4294967295u), vec3<u32>(5255u, 4294967295u, 1u), vec3<u32>(4294967295u, 97084u, 17131u), vec3<u32>(1u, 47192u, 1u), vec3<u32>(4294967295u, 25851u, 1u), vec3<u32>(68583u, 4294967295u, 29528u), vec3<u32>(134u, 1u, 1u), vec3<u32>(0u, 63007u, 55250u), vec3<u32>(4294967295u, 4294967295u, 77740u), vec3<u32>(0u, 42159u, 1u), vec3<u32>(87540u, 4294967295u, 1u), vec3<u32>(7982u, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(2295u, 45041u, 27563u), vec3<u32>(3944u, 28066u, 4294967295u), vec3<u32>(64883u, 49438u, 1u), vec3<u32>(7365u, 1u, 37673u), vec3<u32>(71042u, 0u, 27764u), vec3<u32>(0u, 0u, 49660u), vec3<u32>(146645u, 4294967295u, 65765u), vec3<u32>(50260u, 4294967295u, 13254u), vec3<u32>(4294967295u, 1u, 29913u), vec3<u32>(0u, 21925u, 19071u), vec3<u32>(102290u, 0u, 25604u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(11001u, 38868u, 0u), vec3<u32>(31713u, 10427u, 20373u), vec3<u32>(21670u, 112321u, 4294967295u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(4615u, 8740u, 8808u));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> i32 {
    var var_0 = Struct_3(-1i);
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_2.a.b, arg_1.b), _wgslsmith_div_f32(arg_2.b.b, arg_1.b), -807f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, 2685f, -877f)))))));
    var var_2 = u_input.a;
    var var_3 = arg_2;
    var var_4 = Struct_3(-(arg_3 ^ 2147483647i));
    return -var_4.a;
}

fn func_3(arg_0: vec2<i32>) -> vec4<bool> {
    global1 = array<vec3<u32>, 32>();
    global1 = array<vec3<u32>, 32>();
    global1 = array<vec3<u32>, 32>();
    global0 = array<bool, 10>();
    var var_0 = max(reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(arg_0.x, arg_0.x, arg_0.x), (vec3<i32>(arg_0.x, 0i, -1i) >> (global1[_wgslsmith_index_u32(u_input.a, 32u)] % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, -12982i, 0i), vec3<i32>(arg_0.x, arg_0.x, arg_0.x)))), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_sub_i32(6298i, arg_0.x), _wgslsmith_sub_i32(0i, _wgslsmith_mult_i32(arg_0.x, 49167i))), ~(~firstLeadingBit(vec3<i32>(59930i, arg_0.x, 0i)))));
    return select(select(!(!(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 10u)], false, false, true))), vec4<bool>(true, true, true, true), true), select(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 10u)], true, global0[_wgslsmith_index_u32(u_input.a, 10u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 10u)], true, global0[_wgslsmith_index_u32(u_input.a, 10u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 10u)], false, global0[_wgslsmith_index_u32(67812u, 10u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)], true)), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 10u)], true, true)), !(!select(vec4<bool>(global0[_wgslsmith_index_u32(9303u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(5444u, 10u)], false), global0[_wgslsmith_index_u32(0u, 10u)])), !select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], true, false), !vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(u_input.a, 10u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 10u)], false, global0[_wgslsmith_index_u32(u_input.a, 10u)]))), !(!all(select(vec4<bool>(false, false, true, false), vec4<bool>(global0[_wgslsmith_index_u32(18893u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)], true), true))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: u32) -> u32 {
    let var_0 = Struct_4(select(!vec4<bool>(global0[_wgslsmith_index_u32(11637u, 10u)] & true, global0[_wgslsmith_index_u32(1u, 10u)], true, true), !func_3(vec2<i32>(1i, 1i)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(23647u, 10u)], false, true, false), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 10u)], false, global0[_wgslsmith_index_u32(arg_1.x, 10u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(35054u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)], true)), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 10u)], false, true, false), vec4<bool>(true, true, false, false))), _wgslsmith_add_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), countOneBits(~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -47873i, -842i, -2147483647i), vec4<i32>(-7511i, -41140i, 13496i, 1i)))), Struct_3(abs(1i)));
    global0 = array<bool, 10>();
    let var_1 = min(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 18260u, _wgslsmith_dot_vec2_u32(arg_1.yz, reverseBits(vec2<u32>(arg_2, arg_2))), 1685u), max(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, arg_2, 29564u, arg_1.x), vec4<u32>(3243u, arg_1.x, 40710u, u_input.a)), ~(vec4<u32>(40363u, u_input.a, u_input.a, arg_1.x) ^ vec4<u32>(u_input.a, arg_1.x, 10443u, 1u)))), 109493u);
    let var_2 = 48480i;
    global1 = array<vec3<u32>, 32>();
    return ~arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    var var_1 = true || global0[_wgslsmith_index_u32(13593u, 10u)];
    let var_2 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(-2147483647i, -1699i, -16842i) >> (vec3<u32>(u_input.a, 1u, 0u) % vec3<u32>(32u))), func_1(_wgslsmith_add_vec4_u32(vec4<u32>(36165u, 6369u, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a)), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)]), -762f, global0[_wgslsmith_index_u32(29237u, 10u)]), Struct_2(Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]), -771f, global0[_wgslsmith_index_u32(1u, 10u)]), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 10u)], true), 1001f, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(59307u, 10u)]), -644f), i32(-1i) * -2147483647i)), -_wgslsmith_mod_i32(~0i, -6690i)), 2147483647i, -55217i);
    var var_3 = Struct_3(-2147483647i);
    var var_4 = vec2<i32>(1i, -42730i);
    global0 = array<bool, 10>();
    let var_5 = ~(-var_4.x);
    var var_6 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u | u_input.a, ~u_input.a, 1u), vec4<u32>(~u_input.a, u_input.a, ~reverseBits(u_input.a), 29888u)), vec4<u32>(1u, min(24074u, u_input.a), _wgslsmith_mod_u32(func_2(-692f, vec3<u32>(90194u, u_input.a, 1u), ~4294967295u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(70560u, 1u, 4294967295u, 16019u), vec4<u32>(31726u, u_input.a, u_input.a, u_input.a)), vec4<u32>(5913u, 4294967295u, 0u, u_input.a) << (vec4<u32>(u_input.a, 0u, u_input.a, 89215u) % vec4<u32>(32u)))), max(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), vec4<u32>(33675u, 29073u, 13349u, u_input.a))))));
    var_0 = ~countOneBits(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_5, var_2, 33223u, ~_wgslsmith_sub_vec4_i32(vec4<i32>(-16601i, var_3.a, var_2.x, -1i), countOneBits(~vec4<i32>(var_2.x, -1357i, var_4.x, var_5))), -(~(-vec4<i32>(-36619i, -13093i, var_4.x, var_3.a))));
}

