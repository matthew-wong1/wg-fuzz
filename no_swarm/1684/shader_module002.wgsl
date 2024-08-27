struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<bool>, 11>;

var<private> global2: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(1u), Struct_5(45716u), Struct_5(25599u), Struct_5(17934u), Struct_5(4294967295u), Struct_5(1u), Struct_5(7439u), Struct_5(105486u), Struct_5(4294967295u), Struct_5(68723u), Struct_5(5059u), Struct_5(3761u), Struct_5(0u), Struct_5(1805u), Struct_5(3462u), Struct_5(0u), Struct_5(41492u), Struct_5(0u), Struct_5(86134u), Struct_5(55018u), Struct_5(42289u), Struct_5(35528u), Struct_5(0u), Struct_5(25058u), Struct_5(1u), Struct_5(33894u), Struct_5(4294967295u), Struct_5(21828u), Struct_5(63711u), Struct_5(0u), Struct_5(26578u), Struct_5(1u));

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(33208i, vec3<f32>(475f, 884f, -1000f), vec3<i32>(-1i, 1i, 6351i), vec2<u32>(0u, 9445u)), Struct_1(-7502i, vec3<f32>(510f, 416f, -627f), vec3<i32>(12641i, 0i, -1i), vec2<u32>(1u, 1u)), Struct_1(-2002i, vec3<f32>(1441f, -590f, 673f), vec3<i32>(59352i, i32(-2147483648), 1i), vec2<u32>(27854u, 17226u)), Struct_1(-12051i, vec3<f32>(871f, -240f, 162f), vec3<i32>(i32(-2147483648), 3695i, 1i), vec2<u32>(4294967295u, 1u)), Struct_1(0i, vec3<f32>(-394f, -1894f, 448f), vec3<i32>(26619i, -5554i, -915i), vec2<u32>(11405u, 31080u)), Struct_1(-49242i, vec3<f32>(598f, 178f, -520f), vec3<i32>(-1i, -4330i, 32051i), vec2<u32>(1u, 72677u)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> u32 {
    global3 = array<Struct_1, 6>();
    global2 = array<Struct_5, 32>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1077f - arg_0.c)), true | arg_0.a.x)) * 1101f);
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(1560f, -145f), _wgslsmith_f_op_f32(global0.x + arg_0.c))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1258f, arg_0.c) * -1373f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1196f, arg_0.c)), arg_0.c)), select(select(!select(global1[_wgslsmith_index_u32(4294967295u, 11u)], arg_0.a.wwz, global1[_wgslsmith_index_u32(4294967295u, 11u)]), select(!vec3<bool>(false, true, arg_0.a.x), !global1[_wgslsmith_index_u32(arg_1, 11u)], global1[_wgslsmith_index_u32(1u, 11u)]), vec3<bool>(all(vec2<bool>(true, arg_0.a.x)), false, false)), global1[_wgslsmith_index_u32(~arg_0.d, 11u)], vec3<bool>(true, arg_0.a.x, arg_0.a.x))));
    let var_1 = vec2<u32>(arg_0.d, ~(~(~arg_1)) >> ((0u << (arg_0.b % 32u)) % 32u));
    return max(~countOneBits(arg_1), ~firstLeadingBit(var_1.x));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, ~abs(1u), ~(~34015u), ~1u), vec4<u32>(1u, ~1u, _wgslsmith_sub_u32(~4294967295u, func_3(Struct_3(vec4<bool>(false, false, true, false), 0u, global0.x, 0u), 4294967295u)), _wgslsmith_mult_u32(~17917u, 1u))), max(~_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 1u, 4294967295u, 79513u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, _wgslsmith_add_u32(~4294967295u, 1u), 1u, max(4294967295u, ~26794u))));
    var var_1 = vec3<u32>(var_0.x, 16073u, ~(var_0.x << (var_0.x % 32u)));
    var var_2 = !vec2<bool>(!(false || (-821f <= global0.x)), ~var_0.x < 1u);
    var var_3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global0.x, -121f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-2311f)), _wgslsmith_f_op_f32(floor(global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(169f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -324f))))))));
    let var_4 = Struct_5(_wgslsmith_div_u32(48621u, 4294967295u));
    return global3[_wgslsmith_index_u32(~var_4.a, 6u)];
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = 27819u;
    var var_1 = Struct_4(202f, func_2(), vec3<u32>(func_2().d.x, ~abs(~63515u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4589u, 41359u), vec2<u32>(var_0, var_0))), select(vec3<bool>(true, all(vec4<bool>(false, true, true, false)), false || (2147483647i < u_input.a.x)), !select(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0, 58641u), 11u)], vec3<bool>(false, false, false), false), true || all(vec4<bool>(true, true, true, false))));
    global2 = array<Struct_5, 32>();
    var var_2 = vec2<bool>(all(!(!vec3<bool>(true, var_1.d.x, var_1.d.x))), true);
    return Struct_3(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(var_2.x, true, true))), select(vec4<bool>(false, var_2.x, false, true), select(vec4<bool>(true, var_1.d.x, true, var_1.d.x), vec4<bool>(true, false, var_1.d.x, var_1.d.x), vec4<bool>(false, var_1.d.x, false, var_1.d.x)), vec4<bool>(true, var_1.d.x, true, var_2.x)), vec4<bool>(any(vec2<bool>(true, var_2.x)), false & var_2.x, true, any(vec2<bool>(var_1.d.x, var_2.x)))), !select(vec4<bool>(var_1.d.x, false, var_1.d.x, var_2.x), !vec4<bool>(true, var_1.d.x, true, false), var_2.x != var_1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(961f * arg_0)) <= global0.x), _wgslsmith_sub_u32(~func_2().d.x, ~(~func_2().d.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -794f) + 1394f))))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(max(select(var_1.c, var_1.c, vec3<bool>(var_1.d.x, false, true)), ~vec3<u32>(var_1.c.x, var_0, var_0)), var_1.c), abs(~(vec3<u32>(11442u, 23987u, 4294967295u) & var_1.c))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = arg_0;
    var_0 = arg_0;
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-502f, 1069f, 241f), vec3<f32>(1000f, 863f, -160f)))), vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.c, arg_1.c, false)), global0.x, _wgslsmith_f_op_f32(select(arg_1.c, 239f, arg_1.a.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-183f, -1442f, -1057f))))))));
    var var_1 = Struct_4(global0.x, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32((func_1(-197f).d | func_1(global0.x).b) >> (abs(arg_1.b << (83089u % 32u)) % 32u), abs(arg_1.b)), 6u)], ~(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.d, 34100u, 93054u), vec3<u32>(31531u, arg_1.b, 1u), vec3<u32>(0u, 40886u, 7879u)))), vec3<bool>(arg_2.x, arg_2.x, false));
    var_0 = -vec3<i32>(_wgslsmith_dot_vec4_i32(~(vec4<i32>(var_1.b.c.x, arg_0.x, -1i, var_1.b.a) | vec4<i32>(var_0.x, u_input.a.x, 4093i, u_input.a.x)), vec4<i32>(~u_input.a.x, arg_0.x, ~(-9406i), _wgslsmith_mod_i32(0i, -6411i))), -(_wgslsmith_dot_vec2_i32(arg_0.yy, vec2<i32>(-2147483647i, arg_0.x)) >> (select(arg_1.b, arg_1.d, false) % 32u)), u_input.a.x);
    return Struct_2(var_1.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.b.b.zz), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)), -2574f))), func_2(), all(vec3<bool>(any(arg_2.xx), arg_1.a.x, false || var_1.d.x)));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a.b.x * global0.x), global0.x)))), func_2(), vec3<u32>(1u, ~1u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0.a.d.x, arg_0.c.d.x), ~(~54897u))), select(global1[_wgslsmith_index_u32(10635u, 11u)], !vec3<bool>(arg_0.d, arg_1.x != 2147483647i, u_input.a.x >= 5832i), vec3<bool>(all(!global1[_wgslsmith_index_u32(67693u, 11u)]), any(vec2<bool>(arg_0.d, false)), arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(vec3<i32>(_wgslsmith_clamp_i32(1i, u_input.a.x, 1i), 1i, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), func_1(_wgslsmith_f_op_f32(-109f - global0.x)), global1[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 16949u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u))), 11u)]), min(vec2<i32>(-_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), u_input.a.x), vec2<i32>(~u_input.a.x, _wgslsmith_sub_i32(i32(-1i) * -1980i, -1i))));
    var var_1 = Struct_2(global3[_wgslsmith_index_u32(~firstTrailingBit(var_0.c.x), 6u)], var_0.b.b.zz, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.c.x, var_0.c.x), 6u)], true);
    global1 = array<vec3<bool>, 11>();
    global3 = array<Struct_1, 6>();
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(675f, global0.x, 110f, 577f) + vec4<f32>(-955f, var_0.a, global0.x, -1000f))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 1242f, -174f, var_0.a))), vec4<f32>(var_0.b.b.x, 757f, global0.x, global0.x)))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(global0.x, -344f), _wgslsmith_f_op_f32(round(var_1.b.x)), var_1.a.b.x, func_4(var_1.a.c, Struct_3(vec4<bool>(var_1.d, true, true, var_1.d), 0u, -224f, var_1.a.d.x), vec3<bool>(false, false, var_1.d)).a.b.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1409f, 127f, -783f, var_1.b.x), vec4<f32>(-1324f, var_1.b.x, -289f, 512f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(831f, -749f, 814f, 896f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.b.x, 117f, 723f, 964f), vec4<f32>(var_0.b.b.x, -1260f, -529f, -1504f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0.a, var_1.a.b.x, global0.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, var_0.b.b.x, 194f, global0.x) - vec4<f32>(global0.x, global0.x, 394f, var_1.b.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_i32(1i, _wgslsmith_add_i32(u_input.a.x, 0i)), abs(vec3<u32>(~reverseBits(var_1.a.d.x), 30072u, var_1.c.d.x)), 1024f, _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(var_1.c.d.x, 21575u, ~var_0.b.d.x, ~1u)), firstTrailingBit(countOneBits(vec4<u32>(var_0.c.x, 1u, var_1.c.d.x, 288u) << (vec4<u32>(0u, var_0.b.d.x, var_1.c.d.x, var_0.b.d.x) % vec4<u32>(32u)))), vec4<u32>(1u, ~select(20926u, var_0.c.x, true), func_3(func_1(var_1.a.b.x), max(4294967295u, 17822u)), _wgslsmith_div_u32(var_1.a.d.x, var_1.a.d.x) << (1u % 32u))));
}

