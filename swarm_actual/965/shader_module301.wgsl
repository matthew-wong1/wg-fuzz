struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec4<bool>, 5>;

var<private> global2: u32 = 39879u;

var<private> global3: array<vec4<f32>, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<f32>) -> u32 {
    global0 = Struct_4(10822u, vec2<i32>(-_wgslsmith_add_i32(~(-19666i), 18695i ^ global0.c), 1i), -abs(-2147483647i), global0.d);
    global1 = array<vec4<bool>, 5>();
    let var_0 = firstTrailingBit(vec4<u32>(17393u, global0.d.c, 1u, reverseBits(global0.a << (u_input.a % 32u)))) | _wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, u_input.a), vec4<u32>(u_input.a, 4294967295u, arg_0.x, arg_0.x)), global0.d.c, 129441u, 4294967295u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.a, 1u, 39113u) << (vec4<u32>(global0.d.c, 36588u, 54072u, 12368u) % vec4<u32>(32u)), ~vec4<u32>(0u, u_input.a, 0u, arg_0.x)), u_input.a, u_input.a, ~(arg_0.x ^ arg_0.x)));
    global2 = _wgslsmith_dot_vec2_u32(~firstTrailingBit(~arg_0), var_0.wz);
    global2 = u_input.a << (reverseBits(max(_wgslsmith_clamp_u32(var_0.x, 38220u, global0.d.c), 0u)) % 32u);
    return 0u;
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    let var_0 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.d.c, global0.a, ~u_input.a), ~_wgslsmith_div_vec3_u32(vec3<u32>(9929u, global0.d.c, u_input.a), vec3<u32>(arg_0.c, global0.a, arg_0.c)), vec3<u32>(0u, u_input.a, 0u) ^ vec3<u32>(0u, u_input.a, u_input.a)), ~reverseBits(~vec3<u32>(arg_0.c, global0.d.c, arg_0.c)));
    return Struct_1(104787u ^ abs(_wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(33165u, 1u, 1u, 4294967295u), vec4<u32>(1u, arg_0.c, 4294967295u, 28848u)))), arg_0.e || (max(~arg_0.c, arg_0.c | 52615u) <= func_3(var_0.zz, true, vec3<f32>(-2433f, -1404f, -1020f))), ~var_0.x, var_0, countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-22451i, _wgslsmith_mult_i32(global0.c, arg_0.d.x), global0.c >> (u_input.a % 32u)), vec3<i32>(-2147483647i, 0i, ~0i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_4) -> u32 {
    var var_0 = Struct_4(arg_1.d.x, ~reverseBits(~_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.c, -29780i), arg_1.e.yz)), global0.b.x, Struct_3(-(~_wgslsmith_div_i32(arg_2.d.b.x, arg_0.e.x)), ~global0.d.b, arg_2.d.c, ~vec2<i32>(global0.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, arg_1.e.x), vec2<i32>(arg_2.b.x, 41244i))), true));
    global0 = arg_2;
    var var_1 = 0i;
    let var_2 = func_2(Struct_3(func_2(Struct_3(arg_2.b.x, ~vec3<i32>(arg_2.d.b.x, 1i, 1i), 1u, ~arg_1.e.yx, true), abs(~(-11969i))).e.x, ~reverseBits(arg_1.e ^ vec3<i32>(arg_1.e.x, 2147483647i, arg_1.e.x)), ~arg_0.a, _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(global0.c, 80594i), vec2<i32>(arg_1.e.x, 10822i), true), firstTrailingBit(vec2<i32>(arg_2.b.x, arg_1.e.x)), arg_0.e.yx), -(~vec2<i32>(global0.c, -2147483647i)), -vec2<i32>(1i, 0i)), all(vec4<bool>(arg_2.d.e, var_0.d.e, all(vec2<bool>(false, arg_0.b)), global0.d.e))), func_2(arg_2.d, arg_2.d.b.x).e.x);
    let var_3 = Struct_1(~(~abs(var_2.c)) ^ 28637u, func_2(global0.d, _wgslsmith_mod_i32(arg_1.e.x, firstLeadingBit(arg_0.e.x))).b, func_2(Struct_3(~arg_1.e.x, ~(~arg_1.e), ~firstLeadingBit(arg_1.d.x), -select(global0.d.b.zy, var_2.e.xz, vec2<bool>(arg_1.b, false)), any(vec3<bool>(false, var_0.d.e, var_2.b)) | true), min(~arg_1.e.x, arg_0.e.x)).a, firstLeadingBit(arg_1.d), arg_1.e);
    return global0.a;
}

fn func_1() -> vec4<f32> {
    global3 = array<vec4<f32>, 12>();
    global0 = Struct_4(~func_4(Struct_1(_wgslsmith_mult_u32(global0.a, u_input.a), global0.a > global0.d.c, 1u, countOneBits(vec3<u32>(4294967295u, global0.a, 35302u)), _wgslsmith_mod_vec3_i32(vec3<i32>(-10573i, global0.d.b.x, global0.b.x), vec3<i32>(6009i, global0.d.a, 1i))), func_2(global0.d, _wgslsmith_mult_i32(-1i, global0.b.x)), Struct_4(~global0.a, vec2<i32>(-33151i, global0.b.x), global0.d.d.x, Struct_3(global0.c, global0.d.b, global0.a, global0.b, global0.d.e))), global0.d.d << ((~vec2<u32>(u_input.a, 4294967295u) | ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 35934u), vec2<u32>(u_input.a, 29368u))) % vec2<u32>(32u)), 49239i, global0.d);
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(512f * 1715f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1377f, -839f))), _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(f32(-1f) * -1084f)))), vec4<f32>(2603f, -818f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -763f), -1350f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-263f)) - -334f), all(!vec3<bool>(global0.d.e, global0.d.e, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(371f, 1000f)) + _wgslsmith_f_op_f32(round(1086f))) * _wgslsmith_f_op_f32(max(-115f, -114f)))));
    var var_2 = Struct_2(_wgslsmith_mod_i32(~global0.c ^ global0.d.b.x, abs(0i)), Struct_1(~(~u_input.a), false, global0.d.c, max(vec3<u32>(1u, firstTrailingBit(1u), 4294967295u), ~func_2(Struct_3(-2147483647i, global0.d.b, 21288u, vec2<i32>(global0.b.x, global0.c), global0.d.e), global0.b.x).d), global0.d.b), vec4<i32>(-(~global0.d.a) | select(global0.c, -2563i ^ global0.d.d.x, true), 3520i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 46950i), global0.b) ^ ~global0.d.b.x, -30512i, _wgslsmith_mod_i32(-19515i, 1i)), abs(global0.d.a)), var_1.x, Struct_1(~firstLeadingBit(~global0.a), global0.d.e, 1u, ~(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global0.a, 1u), vec3<u32>(19303u, global0.d.c, u_input.a))), (vec3<i32>(global0.d.d.x, global0.d.d.x, global0.d.d.x) | -vec3<i32>(global0.c, global0.c, global0.b.x)) ^ ~_wgslsmith_div_vec3_i32(vec3<i32>(global0.c, -58255i, 19923i), vec3<i32>(global0.b.x, global0.d.a, global0.b.x))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 195f, -808f, var_1.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_2.d, var_1.x, -213f), _wgslsmith_f_op_vec4_f32(select(global3[_wgslsmith_index_u32(u_input.a, 12u)], global3[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(65404u, 5u)]))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 14536u;
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1175f) * -855f)), _wgslsmith_f_op_f32(round(532f)), -100f, _wgslsmith_f_op_f32(1f - 1174f)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(~(~0u))));
}

