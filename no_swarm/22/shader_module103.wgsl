struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: array<u32, 27>;

var<private> global2: array<vec2<u32>, 11>;

var<private> global3: bool;

var<private> global4: array<vec4<i32>, 24>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> vec3<u32> {
    let var_0 = 44209u;
    let var_1 = var_0;
    global2 = array<vec2<u32>, 11>();
    global1 = array<u32, 27>();
    global2 = array<vec2<u32>, 11>();
    return vec3<u32>(~(firstTrailingBit(_wgslsmith_div_u32(var_0, var_0)) >> (~1u % 32u)), 4294967295u, var_1);
}

fn func_3() -> vec4<bool> {
    global2 = array<vec2<u32>, 11>();
    let var_0 = Struct_1(global4[_wgslsmith_index_u32(0u, 24u)], vec3<u32>(45001u, u_input.c.x, u_input.c.x), _wgslsmith_clamp_vec3_u32(~u_input.c.www, ~(~vec3<u32>(global1[_wgslsmith_index_u32(1u, 27u)], 48989u, 14830u)), _wgslsmith_add_vec3_u32(~u_input.c.wxy, vec3<u32>(~6512u, ~1u, ~55494u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-142f)))))));
    var var_1 = Struct_1(-vec4<i32>(var_0.a.x, var_0.a.x ^ 1i, -38856i, -4802i), vec3<u32>(_wgslsmith_add_u32(var_0.b.x, 58783u), countOneBits(58929u), 17951u), u_input.c.wzx, 941f);
    let var_2 = Struct_1(_wgslsmith_mult_vec4_i32(~vec4<i32>(-15704i, max(var_0.a.x, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(5091i, var_0.a.x, var_1.a.x, u_input.b), vec4<i32>(var_0.a.x, u_input.a, u_input.b, -17359i)), _wgslsmith_dot_vec3_i32(var_0.a.xyx, vec3<i32>(var_1.a.x, -1i, var_0.a.x))), var_0.a), vec3<u32>(global1[_wgslsmith_index_u32(~var_0.c.x, 27u)], reverseBits(0u << ((var_0.b.x >> (u_input.c.x % 32u)) % 32u)), ~42774u), ~(_wgslsmith_div_vec3_u32(var_1.c, u_input.c.xyx) >> (vec3<u32>(~93999u, var_0.b.x, var_1.c.x ^ u_input.c.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -875f));
    var var_3 = select(!vec3<bool>(true, global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 23u)], !(!global0[_wgslsmith_index_u32(58629u, 23u)])), vec3<bool>(!all(vec2<bool>(false, false)) | all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], true, false, global0[_wgslsmith_index_u32(18962u, 23u)])), var_1.a.x >= var_1.a.x, false), select(vec3<bool>(true, true, any(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.c.x, 27u)], 23u)]))), vec3<bool>(global0[_wgslsmith_index_u32(~(~16767u), 23u)], false, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_1().x, 114697u >> (0u % 32u)), 23u)]), !(!select(vec3<bool>(global0[_wgslsmith_index_u32(61861u, 23u)], global0[_wgslsmith_index_u32(var_2.b.x, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 23u)], true, true), true))));
    return select(!vec4<bool>(!(!var_3.x), !all(vec2<bool>(var_3.x, true)), true, !(var_2.d >= var_0.d)), select(vec4<bool>(false, true, -16001i <= ~var_1.a.x, select(2147483647i <= var_2.a.x, false, true)), !select(vec4<bool>(true, true, var_3.x, global0[_wgslsmith_index_u32(u_input.c.x, 23u)]), select(vec4<bool>(false, var_3.x, global0[_wgslsmith_index_u32(0u, 23u)], false), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(1u, 23u)]), false), select(vec4<bool>(var_3.x, global0[_wgslsmith_index_u32(55115u, 23u)], var_3.x, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], 23u)]), vec4<bool>(true, true, var_3.x, global0[_wgslsmith_index_u32(u_input.c.x, 23u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(20413u, 23u)], var_3.x))), !select(!vec4<bool>(true, false, var_3.x, false), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], false, global0[_wgslsmith_index_u32(var_2.c.x, 23u)], global0[_wgslsmith_index_u32(var_1.b.x, 23u)]), vec4<bool>(false, true, true, false), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 23u)]), select(vec4<bool>(var_3.x, true, true, false), vec4<bool>(var_3.x, false, var_3.x, var_3.x), var_3.x))), select(!(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_1.b.x, 23u)], false, true), vec4<bool>(var_3.x, global0[_wgslsmith_index_u32(u_input.c.x, 23u)], var_3.x, global0[_wgslsmith_index_u32(u_input.c.x, 23u)]), var_3.x)), !select(select(vec4<bool>(var_3.x, var_3.x, global0[_wgslsmith_index_u32(u_input.c.x, 23u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.c.x, 27u)], 27u)], 23u)]), vec4<bool>(var_3.x, true, true, var_3.x), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], 23u)]), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(var_2.c.x, 23u)], global0[_wgslsmith_index_u32(62636u, 23u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 23u)], false, var_3.x), vec4<bool>(var_3.x, global0[_wgslsmith_index_u32(22153u, 23u)], true, global0[_wgslsmith_index_u32(13733u, 23u)])), false), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(var_2.b.x, 4372u, 62578u, var_1.c.x)) != 31592u));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = select(select(select(!func_3(), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 23u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 23u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 23u)], global0[_wgslsmith_index_u32(49513u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.c.x), firstTrailingBit(arg_0.zz)), 23u)]), select(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], true, false, false), vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(0u, 23u)]), global0[_wgslsmith_index_u32(u_input.c.x, 23u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(~4294967295u, 23u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(24147u, u_input.c.x), 23u)], global0[_wgslsmith_index_u32(50955u, 23u)]), true), !select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(21712u, 23u)], global0[_wgslsmith_index_u32(arg_0.x, 23u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 23u)], true, false), any(vec3<bool>(false, false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], 23u)])))), func_3(), select(!vec4<bool>(global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 27u)], 23u)], any(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3953u, 27u)], 23u)])), true, global0[_wgslsmith_index_u32(~u_input.c.x, 23u)]), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(22280u, 23u)], global0[_wgslsmith_index_u32(31198u, 23u)], false), func_3(), !global0[_wgslsmith_index_u32(~1u, 23u)]), !(!(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 23u)], true, false, false)))));
    var var_1 = true;
    let var_2 = Struct_1(vec4<i32>(max(u_input.a, ~1i), ~(-2147483647i), ((-2147483647i ^ u_input.a) << (~arg_0.x % 32u)) >> ((_wgslsmith_div_u32(arg_0.x, arg_0.x) & ~84850u) % 32u), ~u_input.a), _wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(u_input.c.zxw, vec3<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], u_input.c.x, global1[_wgslsmith_index_u32(76291u, 27u)]) >> (arg_0 % vec3<u32>(32u))), vec3<u32>(~1u, ~_wgslsmith_dot_vec2_u32(u_input.c.wx, vec2<u32>(u_input.c.x, global1[_wgslsmith_index_u32(u_input.c.x, 27u)])), arg_0.x)), ~u_input.c.yww, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1633f + -186f), _wgslsmith_f_op_f32(733f + 1121f))), _wgslsmith_f_op_f32(f32(-1f) * -868f), all(!var_0.xy))) + 1027f));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(-806f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.d))))), -947f, _wgslsmith_f_op_f32(-170f + _wgslsmith_f_op_f32(831f - var_2.d)), var_2.d);
    global4 = array<vec4<i32>, 24>();
    return var_2;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    let var_0 = _wgslsmith_sub_u32(~(arg_2.b.x >> (_wgslsmith_add_u32(23241u, global1[_wgslsmith_index_u32(~121847u, 27u)]) % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 0u, arg_3.b.x), arg_1.b), vec3<u32>(global1[_wgslsmith_index_u32(61829u, 27u)], (u_input.c.x | 93128u) >> (select(11237u, arg_1.c.x, global0[_wgslsmith_index_u32(4294967295u, 23u)]) % 32u), _wgslsmith_div_u32(1u, func_2(arg_1.b).b.x))));
    global2 = array<vec2<u32>, 11>();
    global1 = array<u32, 27>();
    return func_3().wy;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<i32>, 24>();
    var var_0 = Struct_1(~(max(vec4<i32>(2147483647i, u_input.b, -25244i, -22200i), global4[_wgslsmith_index_u32(~u_input.c.x, 24u)]) ^ vec4<i32>(u_input.a, 1i, 1i, reverseBits(u_input.a))), ~(~_wgslsmith_clamp_vec3_u32(~u_input.c.yyy, vec3<u32>(u_input.c.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6637u, 27u)], 27u)], u_input.c.x), ~u_input.c.wxx)), vec3<u32>(~1u, _wgslsmith_mod_u32(u_input.c.x, abs(~75347u)), global1[_wgslsmith_index_u32(~(~4294967295u), 27u)]), -451f);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -337f) + _wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.d * var_0.d)))))));
    var var_2 = Struct_1(global4[_wgslsmith_index_u32(firstLeadingBit(~u_input.c.x) ^ u_input.c.x, 24u)], var_0.c, ~_wgslsmith_add_vec3_u32(vec3<u32>(~1u, u_input.c.x, _wgslsmith_clamp_u32(var_0.c.x, 64049u, 30621u)), ~var_0.b >> (func_1() % vec3<u32>(32u))), -857f);
    var var_3 = func_4(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.a.x, var_2.a.x, u_input.b), countOneBits(max(var_2.a.wzz, vec3<i32>(26439i, var_0.a.x, -2147483647i)))), i32(-1i) * -1i), func_2(~var_2.b), Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_2.a.x, var_2.a.x), var_2.a.wzw), ~0i, var_0.a.x >> (func_2(var_0.c).c.x % 32u), u_input.b), vec3<u32>(var_2.b.x, u_input.c.x | ~var_0.b.x, _wgslsmith_sub_u32(~4294967295u, u_input.c.x)), vec3<u32>(var_0.b.x, 29517u, ~(~var_2.c.x)), -1234f), Struct_1(_wgslsmith_div_vec4_i32(func_2(~vec3<u32>(4294967295u, var_0.b.x, u_input.c.x)).a, firstTrailingBit(var_0.a)), var_2.b, vec3<u32>(~u_input.c.x, 10282u, _wgslsmith_add_u32(~var_2.b.x, var_2.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d * var_1.x) * 1641f), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(trunc(699f))))))));
    global4 = array<vec4<i32>, 24>();
    let var_4 = func_2(vec3<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.c.x, var_0.b.x, global1[_wgslsmith_index_u32(var_2.c.x, 27u)]), vec3<u32>(89605u, var_0.b.x, 7997u), var_2.c), select(vec3<u32>(0u, var_2.b.x, 30057u), var_0.b, false)), u_input.c.x, func_1().x));
    let x = u_input.a;
    s_output = StorageBuffer(-428f, select(~(~(~vec3<u32>(29536u, 4294967295u, var_4.b.x))), _wgslsmith_div_vec3_u32(vec3<u32>(~66800u, var_2.c.x << (16879u % 32u), ~var_2.c.x), var_2.b), !(var_0.d <= _wgslsmith_f_op_f32(f32(-1f) * -272f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -220f), _wgslsmith_f_op_f32(var_1.x - var_2.d))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.d - var_4.d))))) + _wgslsmith_f_op_f32(-880f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - -975f))))));
}

