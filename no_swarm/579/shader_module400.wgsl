struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: f32,
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

var<private> global0: array<Struct_2, 4>;

var<private> global1: array<vec2<u32>, 18>;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<i32>(-1i, 2147483647i, -1i), vec3<u32>(49173u, 1u, 1u), 0u, vec4<i32>(38314i, 31159i, 2909i, 2147483647i), 1u), Struct_1(vec3<i32>(1i, 48418i, 17322i), vec3<u32>(1u, 70268u, 4294967295u), 0u, vec4<i32>(0i, 15977i, 2147483647i, 2147483647i), 4294967295u), Struct_1(vec3<i32>(-1i, -53213i, 0i), vec3<u32>(51516u, 0u, 54768u), 5907u, vec4<i32>(13436i, 14752i, 10802i, -1i), 0u), Struct_1(vec3<i32>(2147483647i, 0i, -28263i), vec3<u32>(5436u, 15847u, 2521u), 23906u, vec4<i32>(-30239i, i32(-2147483648), 1i, 2147483647i), 4294967295u), Struct_1(vec3<i32>(-1i, -26029i, -29708i), vec3<u32>(4294967295u, 1u, 1u), 0u, vec4<i32>(-1i, i32(-2147483648), 0i, 24361i), 31991u), Struct_1(vec3<i32>(1i, 26698i, 1i), vec3<u32>(0u, 120095u, 42132u), 1u, vec4<i32>(-1i, -39627i, 67173i, -1i), 93251u), Struct_1(vec3<i32>(-3069i, 0i, -1i), vec3<u32>(50420u, 1u, 9995u), 11177u, vec4<i32>(-9511i, 23124i, 0i, 2147483647i), 4294967295u), Struct_1(vec3<i32>(-1i, -13815i, -1i), vec3<u32>(0u, 4294967295u, 0u), 4294967295u, vec4<i32>(-18116i, 2147483647i, -13484i, 51872i), 1u), Struct_1(vec3<i32>(-35387i, 0i, -523i), vec3<u32>(11109u, 4294967295u, 4294967295u), 13687u, vec4<i32>(-29434i, -36727i, -21679i, 1i), 4294967295u), Struct_1(vec3<i32>(-59055i, 16849i, 1i), vec3<u32>(13610u, 4294967295u, 26524u), 16025u, vec4<i32>(i32(-2147483648), -36047i, 2147483647i, 1i), 1u), Struct_1(vec3<i32>(-61838i, 2147483647i, 18001i), vec3<u32>(14386u, 60439u, 20120u), 4294967295u, vec4<i32>(21082i, -27014i, -30453i, -1i), 4294967295u), Struct_1(vec3<i32>(-1i, i32(-2147483648), 1i), vec3<u32>(1u, 12134u, 0u), 50715u, vec4<i32>(-508i, -19316i, i32(-2147483648), 6890i), 0u), Struct_1(vec3<i32>(0i, i32(-2147483648), 10870i), vec3<u32>(29130u, 33350u, 5826u), 1u, vec4<i32>(1i, -3307i, 2147483647i, -39214i), 1u), Struct_1(vec3<i32>(1519i, i32(-2147483648), -59777i), vec3<u32>(0u, 0u, 21281u), 50459u, vec4<i32>(1i, 0i, 0i, 0i), 24560u), Struct_1(vec3<i32>(i32(-2147483648), -36465i, 2147483647i), vec3<u32>(0u, 1u, 0u), 1u, vec4<i32>(36157i, 2147483647i, 1i, -1127i), 23331u), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec3<u32>(1u, 19349u, 0u), 4294967295u, vec4<i32>(38234i, -1i, -1i, 0i), 74285u), Struct_1(vec3<i32>(0i, -44477i, -57195i), vec3<u32>(11128u, 0u, 0u), 0u, vec4<i32>(56265i, 1i, 35860i, 45741i), 33014u), Struct_1(vec3<i32>(-1i, 0i, 2147483647i), vec3<u32>(58305u, 1u, 18042u), 1u, vec4<i32>(-1i, 34025i, 0i, -1i), 4294967295u), Struct_1(vec3<i32>(1i, 0i, 15973i), vec3<u32>(44244u, 14960u, 4294967295u), 1u, vec4<i32>(-12961i, 2147483647i, -1i, -85667i), 28795u), Struct_1(vec3<i32>(1i, 7027i, 7198i), vec3<u32>(37641u, 15371u, 85002u), 3369u, vec4<i32>(44335i, 15191i, -18932i, 1i), 87194u), Struct_1(vec3<i32>(9142i, 2147483647i, -13894i), vec3<u32>(1u, 11103u, 0u), 1837u, vec4<i32>(-11335i, -7741i, 13456i, 38972i), 4294967295u), Struct_1(vec3<i32>(-1i, 8502i, -273i), vec3<u32>(45906u, 23518u, 57963u), 104318u, vec4<i32>(-17986i, -6313i, 2147483647i, -24250i), 45267u), Struct_1(vec3<i32>(0i, -26625i, 3942i), vec3<u32>(6508u, 63204u, 10533u), 0u, vec4<i32>(-34269i, i32(-2147483648), -1i, 1i), 95364u), Struct_1(vec3<i32>(-17785i, -4997i, i32(-2147483648)), vec3<u32>(0u, 1u, 4294967295u), 1u, vec4<i32>(9601i, 70i, 0i, 98537i), 11792u), Struct_1(vec3<i32>(i32(-2147483648), -5743i, -21997i), vec3<u32>(1u, 23658u, 45496u), 1u, vec4<i32>(1i, 1i, -21787i, -24601i), 24424u), Struct_1(vec3<i32>(2854i, i32(-2147483648), 39520i), vec3<u32>(0u, 1u, 0u), 17485u, vec4<i32>(14673i, 1i, 11723i, 25181i), 11208u));

var<private> global3: array<i32, 29> = array<i32, 29>(-35990i, 1i, -18421i, -22691i, 1i, -7723i, 2147483647i, 54756i, 2147483647i, 4921i, 60428i, 18681i, 1i, 2147483647i, 0i, 0i, 51304i, -1i, -968i, 0i, 0i, -1i, 2147483647i, 0i, i32(-2147483648), -1i, -1i, 5222i, -39864i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> i32 {
    var var_0 = _wgslsmith_add_u32(43123u, ~87269u);
    let var_1 = arg_0.c;
    var var_2 = arg_0.a;
    global0 = array<Struct_2, 4>();
    var var_3 = _wgslsmith_div_vec3_u32(var_2.b, arg_0.d.b);
    return -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(~(-37385i), -81342i), var_2.d.ww), arg_0.a.d.xz);
}

fn func_3() -> bool {
    return true;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2.e;
    var var_1 = Struct_1(arg_2.d.zwy, ~vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 17785u, arg_0.b.c), arg_0.a.b), arg_2.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 91469u), global1[_wgslsmith_index_u32(4294967295u, 18u)]) << (arg_0.d.b.x % 32u)), abs(u_input.a) >> ((~u_input.a & 4294967295u) % 32u), vec4<i32>(1i, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(26298u, arg_2.c), 29u)], 0i, 0i), u_input.a);
    var var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(1u | var_1.e), ~min(1u, arg_0.b.b.x)), abs(~countOneBits(arg_0.d.b.zz)));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(max(countOneBits(_wgslsmith_dot_vec3_u32(var_1.b, vec3<u32>(0u, 1u, 1u))), 1u), u_input.a), max(u_input.a | var_1.e, 4294967295u)), 4u)];
    global1 = array<vec2<u32>, 18>();
    return arg_0.e;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> bool {
    let var_0 = ~_wgslsmith_div_i32(func_2(Struct_2(Struct_1(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 29u)], arg_3, arg_3), vec3<u32>(0u, 4294967295u, 0u), u_input.a, vec4<i32>(arg_3, arg_3, arg_3, 22303i), 0u), Struct_1(vec3<i32>(-2147483647i, arg_3, arg_3), vec3<u32>(47338u, 57935u, 71554u), u_input.a, vec4<i32>(global3[_wgslsmith_index_u32(u_input.a, 29u)], global3[_wgslsmith_index_u32(9497u, 29u)], 0i, arg_3), u_input.a), true || arg_1, Struct_1(vec3<i32>(-22799i, arg_3, -56511i), vec3<u32>(u_input.a, 24097u, 58719u), 28019u, vec4<i32>(16850i, arg_3, 18358i, global3[_wgslsmith_index_u32(u_input.a, 29u)]), 90944u), _wgslsmith_f_op_f32(f32(-1f) * -537f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))), arg_0.x), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(2147483647i, reverseBits(global3[_wgslsmith_index_u32(1u, 29u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(-20745i, 60856i, global3[_wgslsmith_index_u32(u_input.a, 29u)]), vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 29u)], 2147483647i, 2147483647i))), 2147483647i));
    var var_1 = ~(~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(33756u, ~u_input.a, u_input.a)));
    global0 = array<Struct_2, 4>();
    var var_2 = ~_wgslsmith_add_u32(5361u, firstLeadingBit(4294967295u));
    let var_3 = vec3<u32>(424u, var_1.x, var_1.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec3<i32>(arg_3, 2147483647i, arg_3), vec3<u32>(86020u, 16858u, var_3.x), u_input.a, vec4<i32>(-23530i, var_0, 14863i, var_0), 20503u), global2[_wgslsmith_index_u32(~var_3.x, 26u)], func_3(), global2[_wgslsmith_index_u32(1u, 26u)], _wgslsmith_f_op_f32(sign(arg_0.x))), _wgslsmith_f_op_f32(-arg_0.x), Struct_1(min(vec3<i32>(var_0, -33457i, -4563i), vec3<i32>(arg_3, 13354i, -59005i)), var_3, ~var_3.x, vec4<i32>(2147483647i, var_0, global3[_wgslsmith_index_u32(var_1.x, 29u)], global3[_wgslsmith_index_u32(var_3.x, 29u)]), ~1011u)))) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1081f))) * -1919f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, -524f), -1231f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * 529f)), func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec3<bool>(false, true, !any(vec4<bool>(true, true, true, true))));
    var var_1 = global0[_wgslsmith_index_u32(33315u, 4u)];
    global2 = array<Struct_1, 26>();
    let var_2 = any(vec2<bool>(true, true));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.e, -1000f, var_1.e, var_1.e), vec4<f32>(var_1.e, var_1.e, 177f, 1230f), vec4<bool>(var_2, false, true, true))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e, var_1.e, -847f, 446f) + vec4<f32>(var_1.e, 166f, var_1.e, 127f))))), vec4<f32>(1064f, _wgslsmith_f_op_f32(abs(var_1.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-151f - _wgslsmith_f_op_f32(var_1.e - -1687f))), 408f), !func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.e, var_1.e)))), var_0, !select(vec3<bool>(var_2, true, true), vec3<bool>(var_2, false, var_1.c), vec3<bool>(var_1.c, var_2, true)), ~_wgslsmith_clamp_i32(var_1.a.a.x, var_1.d.d.x, var_1.d.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.b.x);
}

