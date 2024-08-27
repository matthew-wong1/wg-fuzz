struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(-1i, 20732i), vec2<i32>(4279i, 4438i), vec2<i32>(7999i, 0i), vec2<i32>(-30959i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-15405i, i32(-2147483648)), vec2<i32>(27775i, -52351i), vec2<i32>(40402i, 2531i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-29889i, 2147483647i), vec2<i32>(-26976i, 57543i), vec2<i32>(1i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, -1i), vec2<i32>(-49249i, -18150i), vec2<i32>(i32(-2147483648), -19116i), vec2<i32>(33529i, -874i), vec2<i32>(12991i, -28339i), vec2<i32>(-42750i, 1i), vec2<i32>(40977i, 24718i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-37349i, 1i), vec2<i32>(-1i, -13217i), vec2<i32>(-1i, 8288i), vec2<i32>(1i, -26462i), vec2<i32>(14484i, 4172i));

var<private> global1: array<u32, 23> = array<u32, 23>(0u, 4294967295u, 1u, 4294967295u, 45962u, 14007u, 4846u, 1u, 2814u, 1u, 30673u, 4294967295u, 14270u, 23493u, 4294967295u, 1u, 0u, 112927u, 23281u, 4294967295u, 33158u, 65633u, 1u);

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(44211i, vec3<bool>(false, false, true), vec3<f32>(-1523f, -907f, -1000f)), Struct_1(-1i, vec3<bool>(false, true, true), vec3<f32>(609f, 184f, -1148f)), Struct_1(-1i, vec3<bool>(false, true, true), vec3<f32>(1000f, -1203f, 305f)), Struct_1(6723i, vec3<bool>(true, true, false), vec3<f32>(-538f, -1221f, -1520f)), Struct_1(1i, vec3<bool>(true, true, false), vec3<f32>(267f, -222f, -1000f)), Struct_1(-6975i, vec3<bool>(false, false, true), vec3<f32>(-1774f, -1560f, -1334f)), Struct_1(108i, vec3<bool>(false, true, true), vec3<f32>(749f, 1303f, 400f)), Struct_1(-1i, vec3<bool>(true, false, false), vec3<f32>(-694f, 2314f, 1000f)), Struct_1(-4514i, vec3<bool>(true, true, false), vec3<f32>(-1211f, -1415f, -2071f)), Struct_1(38599i, vec3<bool>(true, false, false), vec3<f32>(-1000f, -903f, -435f)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<u32> {
    global1 = array<u32, 23>();
    var var_0 = !(!select(vec2<bool>(false, any(vec2<bool>(false, true))), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-352f + _wgslsmith_f_op_f32(sign(1123f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1401f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -114f))))) - 303f);
    var var_2 = _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], abs(_wgslsmith_add_u32(58022u, 38587u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)], u_input.a.x, 4294967295u)) % 32u)), ~1u, ~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(42138u, 23u)], 31959u)));
    let var_3 = vec2<bool>(all(!select(vec2<bool>(true, true), !vec2<bool>(true, var_0.x), select(vec2<bool>(false, false), vec2<bool>(true, true), true))), var_0.x);
    return ~vec2<u32>(~0u, _wgslsmith_div_u32(firstTrailingBit(~global1[_wgslsmith_index_u32(4294967295u, 23u)]), u_input.a.x));
}

fn func_2() -> vec2<bool> {
    let var_0 = ~_wgslsmith_div_i32(firstTrailingBit(14657i), -(~(i32(-1i) * -11572i)));
    var var_1 = func_3();
    global1 = array<u32, 23>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(133f, -1068f))) + vec2<f32>(628f, 1009f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(431f, -383f) - vec2<f32>(-1192f, 1000f))))));
    var var_3 = 198f;
    return !select(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), vec2<bool>(true, all(vec3<bool>(false, false, true))), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, all(vec2<bool>(true, true)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(44672u >> (u_input.a.x % 32u), global1[_wgslsmith_index_u32(4294967295u, 23u)]), 10u)];
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 10u)];
    var_1 = Struct_1(-21385i, var_1.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), 705f, -952f));
    var var_2 = global2[_wgslsmith_index_u32(4294967295u, 10u)];
    global1 = array<u32, 23>();
    return u_input.a.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = vec3<u32>(global1[_wgslsmith_index_u32(95527u, 23u)], abs(~u_input.a.x), _wgslsmith_add_u32(0u, arg_1) ^ global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(global1[_wgslsmith_index_u32(63811u, 23u)], global1[_wgslsmith_index_u32(24177u, 23u)], arg_2.b.x), ~100489u), 23u)]) & (~vec3<u32>(~u_input.a.x, _wgslsmith_mult_u32(58522u, u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a.wx, vec2<u32>(u_input.a.x, 4294967295u))) << (vec3<u32>(firstLeadingBit(61887u), global1[_wgslsmith_index_u32(u_input.a.x, 23u)], _wgslsmith_mult_u32(select(0u, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], arg_2.b.x), ~global1[_wgslsmith_index_u32(u_input.a.x, 23u)])) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_sub_vec3_u32(select(u_input.a.yzx, u_input.a.yxz, false), abs(vec3<u32>(func_4(vec4<f32>(arg_3, arg_2.c.x, arg_2.c.x, -1762f), func_2()), ~(u_input.a.x & global1[_wgslsmith_index_u32(43595u, 23u)]), var_0.x)));
    var_0 = ((u_input.a.wzz ^ vec3<u32>(u_input.a.x | var_0.x, 18587u & global1[_wgslsmith_index_u32(4294967295u, 23u)], 1u)) ^ vec3<u32>(28894u, ~countOneBits(87184u), reverseBits(~1u))) ^ vec3<u32>(select(arg_1, _wgslsmith_clamp_u32(var_0.x, global1[_wgslsmith_index_u32(var_0.x >> (1u % 32u), 23u)], u_input.a.x & global1[_wgslsmith_index_u32(0u, 23u)]), arg_2.a >= _wgslsmith_mult_i32(arg_0.x, 10370i)), 1u, ~1u);
    var var_2 = vec2<u32>(4294967295u, ~global1[_wgslsmith_index_u32(~4294967295u, 23u)]);
    var_2 = vec2<u32>(1u, ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(10395u, 34769u), vec2<u32>(11979u, global1[_wgslsmith_index_u32(1u, 23u)])), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_2.x), _wgslsmith_mod_vec2_u32(var_0.yx, var_0.zx))), 23u)]);
    return max(_wgslsmith_mod_i32(arg_2.a & firstLeadingBit(max(arg_2.a, 1i)), -1i), ~_wgslsmith_dot_vec2_i32((arg_0.yx << (vec2<u32>(var_1.x, u_input.a.x) % vec2<u32>(32u))) & arg_0.yx, arg_0.xz));
}

fn func_5(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u, ~(~(~u_input.a.x)), ~countOneBits(0u), func_3().x & ~_wgslsmith_mult_u32(6675u, 28669u)), min(min(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(1u, u_input.a.x, 4294967295u, 5454u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 21900u, u_input.a.x), vec4<u32>(44858u, u_input.a.x, global1[_wgslsmith_index_u32(0u, 23u)], 34636u))), u_input.a), ~(firstLeadingBit(u_input.a) >> (min(vec4<u32>(0u, u_input.a.x, global1[_wgslsmith_index_u32(35410u, 23u)], u_input.a.x), vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.a.x, u_input.a.x)) % vec4<u32>(32u)))));
    let var_1 = any(vec2<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), true)), true));
    var var_2 = Struct_1(~(2147483647i & ~arg_0) ^ abs(2147483647i), !(!(!(!vec3<bool>(var_1, false, var_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-443f * 423f), _wgslsmith_f_op_f32(abs(844f)), _wgslsmith_f_op_f32(-956f - 1651f))) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1504f, -593f)))), _wgslsmith_f_op_f32(ceil(802f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-428f)) - 1863f))));
    let var_3 = var_2.c.zy;
    let var_4 = global2[_wgslsmith_index_u32(~(~(~4294967295u)), 10u)];
    return global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(14051u, _wgslsmith_mult_u32(var_0.x, 1u), _wgslsmith_mod_u32(~(~(~var_0.x)), ~(~func_4(vec4<f32>(var_4.c.x, var_3.x, var_3.x, var_4.c.x), vec2<bool>(false, var_4.b.x))))), 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 459f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-471f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1374f))))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1286f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1385f)))) + 126f)));
    let var_1 = func_5(_wgslsmith_dot_vec4_i32(-vec4<i32>(~(-71221i), countOneBits(37831i), 8493i, func_1(vec4<i32>(-2147483647i, 2147483647i, -1i, -2147483647i), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], Struct_1(17805i, vec3<bool>(false, true, false), vec3<f32>(var_0.x, -1027f, 2148f)), var_0.x)), max(vec4<i32>(-1i, 9743i, -18259i, 1i) << (countOneBits(vec4<u32>(u_input.a.x, 1u, global1[_wgslsmith_index_u32(56206u, 23u)], 4294967295u)) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 9205i, 0i, -2147483647i), vec4<i32>(1i, -3064i, 18440i, 54690i), vec4<i32>(6742i, 1122i, 31814i, 14781i)))));
    var var_2 = Struct_1(-(var_1.a << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(abs(global1[_wgslsmith_index_u32(1u, 23u)])), 23u)], 23u)] % 32u)), !select(!var_1.b, var_1.b, !any(vec2<bool>(var_1.b.x, true))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(941f, var_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-784f - 543f)), -414f, var_1.b.x))));
    let var_3 = func_5(_wgslsmith_mult_i32(var_1.a, -43860i));
    global2 = array<Struct_1, 10>();
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -670f);
    global1 = array<u32, 23>();
    var var_5 = abs(~(-countOneBits(firstLeadingBit(vec4<i32>(32037i, -1i, 0i, var_3.a)))));
    global1 = array<u32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), vec2<u32>(global1[_wgslsmith_index_u32(29364u, 23u)], u_input.a.x)), ~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(0u, 23u)], u_input.a.x, 38353u))));
}

