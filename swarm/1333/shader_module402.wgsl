struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: vec4<i32>,
    e: i32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(1u, vec3<f32>(827f, 204f, -917f), -299f), Struct_1(4294967295u, vec3<f32>(-916f, -1000f, 594f), -254f), Struct_1(0u, vec3<f32>(-176f, 1440f, 763f), 1395f), Struct_1(1u, vec3<f32>(-369f, -519f, 604f), 400f), Struct_1(3275u, vec3<f32>(1000f, -1127f, -754f), -464f), Struct_1(0u, vec3<f32>(-417f, 712f, 2324f), -463f), Struct_1(4294967295u, vec3<f32>(-269f, 1092f, -767f), -2606f), Struct_1(1u, vec3<f32>(-312f, -687f, -1354f), 692f), Struct_1(0u, vec3<f32>(-755f, 1075f, -797f), -1423f), Struct_1(53602u, vec3<f32>(-755f, -526f, -2435f), 1550f), Struct_1(0u, vec3<f32>(1296f, 1541f, 1000f), -411f), Struct_1(4294967295u, vec3<f32>(-1000f, -881f, 254f), -224f), Struct_1(3293u, vec3<f32>(531f, -734f, 862f), -1000f), Struct_1(10309u, vec3<f32>(1804f, -338f, -545f), -872f), Struct_1(11378u, vec3<f32>(656f, -538f, 158f), -956f));

var<private> global1: vec2<u32> = vec2<u32>(28727u, 1u);

var<private> global2: array<vec4<i32>, 1>;

var<private> global3: array<vec3<f32>, 24>;

var<private> global4: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(firstTrailingBit(u_input.d), vec3<f32>(-333f, _wgslsmith_f_op_f32(-2112f * -107f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(183f, 268f, true))))), _wgslsmith_f_op_f32(trunc(-1577f)));
    let var_1 = Struct_1(49921u, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-581f)) - _wgslsmith_f_op_f32(-var_0.c)), -1117f, var_0.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-150f, var_0.b.x, var_0.b.x)))) + var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, false))))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(548f)))), var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-105f, 1423f)), 642f));
    var var_3 = Struct_3(var_1);
    let var_4 = vec3<i32>(_wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(-u_input.c.x & 14713i, -(u_input.c.x << (30537u % 32u)))), _wgslsmith_sub_i32(-57634i, -2147483647i), -1895i);
    return var_3.a;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec2<f32>) -> bool {
    return true;
}

fn func_1(arg_0: u32, arg_1: f32) -> u32 {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.d, 4294967295u, arg_0, 25145u)), max(vec4<u32>(global1.x, 25522u, 1406u, 4294967295u), ~vec4<u32>(u_input.d, u_input.d, global1.x, 8077u))), 15u)], u_input.c, func_3(Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 26433u, 45814u, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 4294967295u, global1.x, global1.x), vec4<u32>(0u, arg_0, 5841u, u_input.a))), Struct_2(func_2(), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(u_input.c.x, u_input.c.x)), true), global0[_wgslsmith_index_u32(abs(abs(1u)), 15u)], vec4<i32>(u_input.c.x, 1i, i32(-1i) * -45983i, -u_input.b.x), u_input.b.x), Struct_3(func_2()), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1))));
    let var_1 = Struct_2(Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-113f)), _wgslsmith_f_op_f32(select(-474f, arg_1, true)), var_0.a.b.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1023f, var_0.a.c, var_0.a.c)) + _wgslsmith_f_op_vec3_f32(sign(var_0.a.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-502f * var_0.a.c) * _wgslsmith_f_op_f32(-908f + arg_1))))), vec2<i32>(abs(-2147483647i), -1i), true);
    let var_2 = var_1.b.x == _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(~11889i, reverseBits(~(-4152i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_1.b.x, var_0.b.x), abs(u_input.b.zzw)), ~(-u_input.b.x)));
    global3 = array<vec3<f32>, 24>();
    let var_3 = vec2<f32>(var_0.a.b.x, -204f);
    return 51337u;
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: f32, arg_3: i32) -> Struct_1 {
    var var_0 = -_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(global2[_wgslsmith_index_u32(1u, 1u)], vec4<i32>(0i, u_input.b.x, -19434i, 32955i)) ^ ~(~vec4<i32>(arg_3, -9136i, arg_3, arg_3)), vec4<i32>(select(~arg_3, min(22001i, arg_3), arg_0), -arg_3, -u_input.b.x >> (arg_1.x % 32u), -4457i));
    let var_1 = Struct_1(4294967295u, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_1.x, func_1(u_input.a, _wgslsmith_f_op_f32(select(-1530f, arg_2, arg_0))), global1.x), u_input.a), 24u)], -279f);
    let var_2 = arg_2;
    var var_3 = Struct_3(func_2());
    var var_4 = func_2();
    return Struct_1(57497u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1523f - var_2)), arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(321f - var_3.a.b.x), 987f))), _wgslsmith_f_op_f32(-var_2));
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_add_u32(select(~(1u << (0u % 32u)), _wgslsmith_sub_u32(~global1.x, ~4294967295u), true) | firstTrailingBit(u_input.a), ~(5886u >> (u_input.d % 32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-236f, arg_0.b.x)));
    let var_2 = _wgslsmith_mult_i32(i32(-1i) * -13301i, -1i);
    global2 = array<vec4<i32>, 1>();
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-750f)) - arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-483f + var_1)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(544f + var_1)), arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1))))), var_1);
    return StorageBuffer(countOneBits(reverseBits(vec3<u32>(func_4(true, vec4<u32>(u_input.d, u_input.a, 30454u, 0u), -831f, 11925i).a, ~9681u, 1u))), ~vec2<u32>(_wgslsmith_clamp_u32(53615u, 11766u, 12539u), _wgslsmith_sub_u32(arg_0.a, 4309u)) | select(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a, 84560u), select(vec2<u32>(global1.x, 18830u), vec2<u32>(arg_0.a, 1u), true)), ~(vec2<u32>(arg_0.a, u_input.a) & vec2<u32>(arg_0.a, global1.x)), vec2<bool>(true, all(vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1128f)), 722f, true)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_4(true, vec4<u32>(87090u, u_input.d, arg_0.a, 1u), 294f, 2147483647i).b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -328f))))), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.c;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1602f - 507f), -2162f)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(510f)), -1487f), vec2<f32>(1f, 1f))));
    global3 = array<vec3<f32>, 24>();
    let var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(~abs(0u) | u_input.d, global1.x), abs(~abs(vec2<u32>(0u, u_input.a) << (vec2<u32>(u_input.d, u_input.a) % vec2<u32>(32u)))));
    let var_3 = ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 107284u, 4294967295u), _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(var_2.x, u_input.a, global1.x) >> (vec3<u32>(12876u, 9049u, var_2.x) % vec3<u32>(32u))), countOneBits(select(vec3<u32>(64123u, 95619u, 24091u), vec3<u32>(global1.x, var_2.x, 12207u), false))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.x, 4263u, global1.x) ^ vec4<u32>(4294967295u, var_2.x, 31465u, 31341u), vec4<u32>(global1.x, 0u, u_input.a, 4294967295u) | vec4<u32>(27075u, 4294967295u, 55062u, u_input.a)), ~4294967295u, 0u >> (1u % 32u)));
    let x = u_input.a;
    s_output = func_5(func_4(true, vec4<u32>(var_3.x, u_input.d, firstTrailingBit(0u), select(func_1(1u, 1261f), min(var_2.x, 4294967295u), 628f < var_1.x)), _wgslsmith_f_op_f32(-func_2().c), var_0.x));
}

