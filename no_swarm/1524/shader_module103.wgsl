struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(-519f, -206f, 297f, 914f), vec4<f32>(713f, -2182f, -464f, 389f), vec4<f32>(-760f, -1278f, 339f, -135f), vec4<f32>(-490f, 754f, -420f, 796f), vec4<f32>(-439f, -812f, -1746f, 1000f), vec4<f32>(-803f, -1359f, -1280f, 430f), vec4<f32>(1390f, 1000f, -135f, 197f), vec4<f32>(-603f, 618f, -1238f, 102f), vec4<f32>(1166f, 1384f, 1000f, 1347f), vec4<f32>(-578f, -665f, -1089f, 125f), vec4<f32>(-1287f, 242f, 1078f, 1886f), vec4<f32>(-1088f, 1703f, -515f, -533f), vec4<f32>(-356f, -1000f, 551f, 587f), vec4<f32>(599f, 1823f, 1999f, -1100f), vec4<f32>(1021f, -1393f, -881f, -760f), vec4<f32>(114f, -1933f, 282f, 645f), vec4<f32>(1000f, -1027f, 1010f, -1868f), vec4<f32>(919f, 299f, 358f, 113f), vec4<f32>(-542f, 153f, -1000f, -764f), vec4<f32>(271f, -948f, 534f, -1765f));

var<private> global1: array<u32, 23>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_div_i32(~(_wgslsmith_dot_vec2_i32(vec2<i32>(-78396i, 0i), vec2<i32>(arg_2, -20333i)) << (u_input.a % 32u)), _wgslsmith_mult_i32(select(arg_2, 2147483647i, true | arg_1.a.a.x), arg_2 ^ -35226i)), abs(_wgslsmith_clamp_i32(reverseBits(-2147483647i), 2147483647i, u_input.b.x)));
    let var_1 = _wgslsmith_mod_i32(0i, ~u_input.c.x) & -554i;
    let var_2 = -((-vec4<i32>(u_input.c.x, 1i, var_0, -2147483647i) & firstLeadingBit(vec4<i32>(arg_2, -2147483647i, var_1, 0i))) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 23u)], 48921u, 12037u, u_input.a), vec4<u32>(u_input.a, 49792u, global1[_wgslsmith_index_u32(0u, 23u)], 0u)), global1[_wgslsmith_index_u32(u_input.a >> (global1[_wgslsmith_index_u32(4294967295u, 23u)] % 32u), 23u)], ~0u, 33210u) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_i32(vec4<i32>(countOneBits(52737i) >> (u_input.a % 32u), min(50906i, var_1) & ~u_input.c.x, 45888i, ~16416i & ~var_1), vec4<i32>(-_wgslsmith_mult_i32(47276i, var_1), -var_1, -arg_2 >> (reverseBits(1u) % 32u), select(-1i, -12350i, true) ^ -1i));
    global0 = array<vec4<f32>, 20>();
    var var_3 = ~countOneBits(vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(u_input.a, 23u)]), 23u)], global1[_wgslsmith_index_u32(12251u, 23u)], abs(3084u)), 23u)], u_input.a));
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> u32 {
    global0 = array<vec4<f32>, 20>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1480f + -1434f)), -1057f, (13213i ^ u_input.b.x) > _wgslsmith_div_i32(u_input.b.x, 2147483647i)))), !vec3<bool>(all(!arg_0.a.a.wz), arg_0.a.a.x, false));
    var var_1 = Struct_1(vec4<bool>(!arg_0.a.a.x, !any(var_0.b.xy), true, true), _wgslsmith_div_f32(530f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -727f), _wgslsmith_f_op_f32(-arg_0.b.x))) * -229f)));
    var var_2 = vec2<u32>(global1[_wgslsmith_index_u32(~(firstTrailingBit(4294967295u) << (~global1[_wgslsmith_index_u32(4294967295u, 23u)] % 32u)), 23u)], _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 23u)]), ~1u), 1u)) & ((vec2<u32>(31793u, 1u) << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(28664u, u_input.a, global1[_wgslsmith_index_u32(47386u, 23u)], global1[_wgslsmith_index_u32(12072u, 23u)]), vec4<u32>(0u, u_input.a, u_input.a, global1[_wgslsmith_index_u32(91219u, 23u)])), ~52250u) % vec2<u32>(32u))) >> (vec2<u32>(~(~u_input.a), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 27032u) ^ ~13816u) % vec2<u32>(32u)));
    var_0 = Struct_3(arg_0.b.x, select(vec3<bool>(true, true, true), vec3<bool>(false, u_input.c.x >= 0i, !(arg_0.a.a.x || true)), !var_0.b));
    return ~firstTrailingBit(26012u);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: i32, arg_3: i32) -> f32 {
    global0 = array<vec4<f32>, 20>();
    global1 = array<u32, 23>();
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, u_input.a), func_4(Struct_2(Struct_1(arg_1.a.a.a, 1000f), vec2<f32>(arg_1.a.a.b, 764f)), vec3<i32>(func_3(-1415f, Struct_2(Struct_1(arg_1.a.a.a, -284f), arg_0), -1i), func_3(110f, Struct_2(Struct_1(vec4<bool>(arg_1.a.a.a.x, arg_1.c.a.x, arg_1.c.a.x, arg_1.c.a.x), 661f), arg_0), -43583i), -23131i))), 20u)]));
    var_0 = _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(0u, 20u)]);
    var_0 = global0[_wgslsmith_index_u32(1u, 20u)];
    return arg_1.a.a.b;
}

fn func_1(arg_0: Struct_3) -> f32 {
    global1 = array<u32, 23>();
    global0 = array<vec4<f32>, 20>();
    global0 = array<vec4<f32>, 20>();
    global0 = array<vec4<f32>, 20>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a))), Struct_5(Struct_2(Struct_1(vec4<bool>(true, arg_0.b.x, false, false), -255f), vec2<f32>(arg_0.a, -1824f)), ~u_input.c.x, Struct_1(vec4<bool>(arg_0.b.x, arg_0.b.x, true, true), 554f)), u_input.b.x, 40997i))) + arg_0.a);
    return _wgslsmith_f_op_f32(-var_0);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = Struct_2(Struct_1(vec4<bool>(all(select(arg_1.b.xx, vec2<bool>(false, arg_0.a.x), vec2<bool>(false, arg_2.a.a.x))), true, true, arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1515f * _wgslsmith_f_op_f32(-866f + arg_1.a)))), _wgslsmith_f_op_vec2_f32(arg_2.b + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1000f, arg_2.a.b))), vec2<f32>(-600f, -754f)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a.b, -1014f), _wgslsmith_f_op_vec2_f32(-arg_2.b))))));
    let var_1 = -1185f;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1261f);
    let var_3 = 18447i;
    var var_4 = Struct_3(var_0.b.x, !var_0.a.a.ywy);
    return vec2<u32>(_wgslsmith_sub_u32(((4294967295u & global1[_wgslsmith_index_u32(4990u, 23u)]) ^ (79959u | global1[_wgslsmith_index_u32(4294967295u, 23u)])) << (global1[_wgslsmith_index_u32(u_input.a, 23u)] % 32u), ~4294967295u), max(firstLeadingBit(min(~u_input.a, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.a, 23u)], 0u))), global1[_wgslsmith_index_u32(13189u, 23u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 23>();
    var var_0 = func_5(Struct_1(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(107f)))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(351f, vec3<bool>(false, false, false))))), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), Struct_2(Struct_1(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), 855f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1775f, 646f) + vec2<f32>(363f, 999f))))) >> (max(_wgslsmith_clamp_vec2_u32(vec2<u32>(8201u, select(86963u, u_input.a, false)), _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], 23u)]), vec2<u32>(51565u, 1u)), vec2<u32>(4294967295u, func_4(Struct_2(Struct_1(vec4<bool>(false, false, false, false), -749f), vec2<f32>(-487f, 479f)), vec3<i32>(-1i, -13849i, 21664i)))), vec2<u32>(103419u, 33740u)) % vec2<u32>(32u));
    var_0 = ~vec2<u32>(_wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(var_0.x, 23u)], ~(2550u << (u_input.a % 32u))), ~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, 4294967295u), 23u)], global1[_wgslsmith_index_u32(var_0.x, 23u)], 1u));
    var var_1 = u_input.b.x;
    let var_2 = select(vec2<bool>(_wgslsmith_f_op_f32(round(-271f)) < _wgslsmith_f_op_f32(abs(-1101f)), all(vec2<bool>(true, true))), vec2<bool>(true, (_wgslsmith_mult_u32(12183u, 19127u) >> (u_input.a % 32u)) > 1u), vec2<bool>(1u > _wgslsmith_mod_u32(u_input.a << (4294967295u % 32u), 1u), any(vec2<bool>(true, true))));
    var_0 = ~vec2<u32>(_wgslsmith_sub_u32(5190u, _wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(u_input.a, 23u)], 0u)), (19834u | var_0.x) & 47475u);
    let var_3 = var_0.x ^ ~(~(~(~var_0.x)));
    let var_4 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-24858i ^ (20184i & u_input.c.x), -1i), -1i), select(-_wgslsmith_sub_i32(u_input.b.x, -2147483647i), abs(-22044i), true) << (((4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(var_3, var_3, u_input.a, global1[_wgslsmith_index_u32(var_0.x, 23u)]), vec4<u32>(1u, var_0.x, var_0.x, var_3))) | abs(~0u)) % 32u), 0i, 52284i);
    let x = u_input.a;
    s_output = StorageBuffer(var_4 | var_4, vec4<u32>(var_0.x & (firstTrailingBit(1u) << (_wgslsmith_sub_u32(var_0.x, 4294967295u) % 32u)), 4294967295u, ~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, var_0.x, 106378u)), _wgslsmith_sub_vec3_u32(vec3<u32>(11032u, 58944u, u_input.a), vec3<u32>(var_3, var_0.x, 1u))), ~(~8491u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1867f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-944f + -1173f)))), _wgslsmith_f_op_f32(func_2(vec2<f32>(575f, -1371f), Struct_5(Struct_2(Struct_1(vec4<bool>(true, true, false, var_2.x), -330f), vec2<f32>(-1324f, -1252f)), -1i, Struct_1(vec4<bool>(false, false, false, true), 973f)), _wgslsmith_clamp_i32(1i, -var_4.x, var_4.x >> (global1[_wgslsmith_index_u32(u_input.a, 23u)] % 32u)), _wgslsmith_sub_i32(2147483647i, var_4.x) << (~1u % 32u)))), 14770u);
}

