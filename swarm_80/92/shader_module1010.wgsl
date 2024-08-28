struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<u32, 8> = array<u32, 8>(6553u, 36882u, 51507u, 71048u, 0u, 85990u, 1u, 4294967295u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_3) -> i32 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a.wzw, ~vec3<u32>(1u, u_input.a.x, _wgslsmith_add_u32(arg_2.e, 23472u))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(31606u, u_input.b.x, 0u, u_input.c.x), _wgslsmith_mult_vec4_u32(select(vec4<u32>(global1[_wgslsmith_index_u32(0u, 8u)], arg_2.e, u_input.c.x, 4294967295u), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(arg_2.b, 8u)], u_input.c.x, 5175u), vec4<bool>(arg_2.c.x, false, arg_2.c.x, true)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11056u, 8u)], 8u)], 8u)], 39071u), u_input.c))));
    let var_1 = select(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.c.x, 8u)], 8u)], ~firstLeadingBit(13444u | (72480u >> (global1[_wgslsmith_index_u32(arg_2.b, 8u)] % 32u))), !arg_2.c.x);
    let var_2 = arg_2.c;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.b * 1545f))))) < arg_0.b;
    var var_4 = var_1 | ~_wgslsmith_dot_vec2_u32(u_input.b, reverseBits(firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(18296u, 8u)], 80420u))));
    return _wgslsmith_div_i32(-33186i, abs(-60784i));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: bool) -> bool {
    let var_0 = Struct_3(vec4<i32>(arg_1.d, 0i, -2147483647i, 24494i), arg_1.c, select(!(!select(vec4<bool>(arg_3, false, false, arg_3), vec4<bool>(false, true, arg_0, arg_0), arg_3)), vec4<bool>(select(all(vec3<bool>(arg_2.x, arg_3, false)), arg_1.c > global1[_wgslsmith_index_u32(arg_1.c, 8u)], all(vec4<bool>(arg_3, arg_0, true, true))), !(!arg_0), true, (arg_0 || false) && arg_3), arg_3), arg_1.b, ~4294967295u);
    global0 = any(vec3<bool>(_wgslsmith_f_op_f32(floor(1000f)) == _wgslsmith_f_op_f32(arg_1.b.b * _wgslsmith_f_op_f32(arg_1.b.b - arg_1.b.b)), ~var_0.a.x > _wgslsmith_sub_i32(-251i, ~var_0.a.x), !all(vec3<bool>(arg_2.x, false, true))));
    let var_1 = Struct_5(arg_3, _wgslsmith_clamp_i32(6524i, _wgslsmith_dot_vec2_i32(arg_1.a.zz, vec2<i32>(func_3(Struct_1(vec4<i32>(1i, var_0.d.a.x, var_0.a.x, var_0.d.a.x), arg_1.b.b), var_0.a.wwz, Struct_3(vec4<i32>(arg_1.b.a.x, var_0.d.a.x, var_0.a.x, arg_1.a.x), u_input.a.x, vec4<bool>(arg_3, true, true, arg_3), Struct_1(vec4<i32>(var_0.a.x, -11093i, -2147483647i, -6804i), arg_1.b.b), 25129u)), reverseBits(-5343i))), arg_1.b.a.x), arg_1, Struct_1(vec4<i32>(-1i) * -vec4<i32>(-58366i, arg_1.a.x, arg_1.d, 14526i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1274f)))), u_input.a.ywy);
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(~var_1.e.x, firstLeadingBit(4294967295u))), vec2<u32>(firstLeadingBit(abs(var_1.c.c)), arg_1.c)), _wgslsmith_mod_u32(4294967295u >> (~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.a.x), 8u)] % 32u), 1u));
    let var_3 = -(~0i) << (u_input.a.x % 32u);
    return false;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> f32 {
    let var_0 = select(vec4<bool>(true, (_wgslsmith_f_op_f32(f32(-1f) * -1236f) != arg_0.x) && false, any(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), true), vec4<bool>(true, true, !(arg_0.x != arg_1), !(any(vec3<bool>(true, true, false)) & all(vec3<bool>(false, true, true)))), all(vec4<bool>(func_2(any(vec2<bool>(true, true)), Struct_2(vec3<i32>(-2147483647i, 0i, 0i), Struct_1(vec4<i32>(-32442i, -1i, 11708i, 16281i), arg_0.x), 13272u, -48521i), vec2<bool>(true, false), false), all(vec3<bool>(false, false, false)) == func_2(false, Struct_2(vec3<i32>(9466i, 0i, 1i), Struct_1(vec4<i32>(72631i, -2147483647i, 218i, 1i), arg_0.x), global1[_wgslsmith_index_u32(4294967295u, 8u)], -1i), vec2<bool>(false, false), true), true, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))))));
    var var_1 = _wgslsmith_dot_vec2_i32(~abs(~(vec2<i32>(-28458i, 1i) >> (u_input.a.yz % vec2<u32>(32u)))), firstLeadingBit(-vec2<i32>(-1i, -1i)) & (-select(vec2<i32>(-48993i, 2147483647i), vec2<i32>(-1i, -38678i), var_0.x) ^ vec2<i32>(abs(45311i), -2147483647i)));
    return -484f;
}

fn func_4(arg_0: f32, arg_1: bool) -> Struct_1 {
    let var_0 = u_input.a.wzx;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(212f, _wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -696f), vec2<f32>(arg_0, arg_0)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(705f, 948f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1113f) + vec2<f32>(arg_0, arg_0))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-714f, arg_0) * vec2<f32>(528f, -1000f)))), arg_1))));
    let var_2 = select(vec4<bool>(arg_1, true, arg_1 | any(select(vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(arg_1, arg_1, true, false), true)), all(vec3<bool>(any(vec2<bool>(false, true)), false, any(vec4<bool>(true, true, arg_1, true))))), !select(select(vec4<bool>(arg_1, true, arg_1, true), select(vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(true, false, true, arg_1), arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), select(vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(arg_1, arg_1, true, arg_1), select(arg_1, true, false)), select(!vec4<bool>(true, arg_1, false, true), vec4<bool>(arg_1, false, true, false), !vec4<bool>(arg_1, true, arg_1, arg_1))), !arg_1);
    var var_3 = u_input.a;
    var var_4 = Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(57693i, -64068i, -15652i, ~1i), firstTrailingBit(firstLeadingBit(vec4<i32>(-2147483647i, 74900i, -2147483647i, -29792i)))) <= -51047i, vec3<u32>(90937u, ~(~4073u), ~var_0.x) >> (_wgslsmith_add_vec3_u32(abs(~var_3.wxw), vec3<u32>(0u, var_0.x, var_3.x) & u_input.c.xxw) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_1)) * vec2<f32>(-803f, arg_0)) + var_1)), vec3<bool>(arg_1, (all(vec2<bool>(true, true)) == true) | true, false), Struct_2(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(15144i, 20828i, 51445i), -vec3<i32>(-3042i, -21374i, -36551i)), select(vec3<i32>(250i, 2147483647i, -32155i), vec3<i32>(1i, 1i, -2461i), select(vec3<bool>(true, true, arg_1), vec3<bool>(arg_1, arg_1, false), var_2.zww)), vec3<i32>(-1172i << (1u % 32u), 19037i, _wgslsmith_add_i32(-1i, -1i))), Struct_1(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, -1i), ~1i, abs(13144i), _wgslsmith_mod_i32(0i, -45713i)), -542f), 0u, -1i));
    return var_4.e.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_5) -> Struct_4 {
    let var_0 = vec4<u32>(~global1[_wgslsmith_index_u32(30702u, 8u)], ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, 12722u, 137417u, 16877u), u_input.a), u_input.a) >> (arg_2.c.c % 32u), 1u, countOneBits(17048u >> (~global1[_wgslsmith_index_u32(~arg_2.e.x, 8u)] % 32u)));
    let var_1 = select(-4770i, 1i, !all(vec2<bool>(false, arg_2.a)) | !(~arg_2.e.x <= ~arg_2.e.x));
    var var_2 = Struct_1(vec4<i32>(2147483647i, i32(-1i) * -firstLeadingBit(arg_0.a.x), func_3(Struct_1(arg_2.d.a, arg_1.x), vec3<i32>(var_1, var_1, -45236i), Struct_3(vec4<i32>(arg_0.a.x, var_1, var_1, -12054i), 4294967295u, vec4<bool>(false, arg_2.a, false, arg_2.a), Struct_1(vec4<i32>(1i, -2147483647i, -1i, arg_0.a.x), 405f), 1u)) >> (_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_2.c.c, 0u), ~u_input.b.x) % 32u), var_1), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(max(arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_1.x, 779f) + arg_1))), -898f)), arg_2.c.b.b)));
    let var_3 = arg_2.d.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(~4294967295u, 1u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.zw & vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(arg_2.e.x, 8u)]), ~u_input.c.wx), 8u)], global1[_wgslsmith_index_u32(arg_2.e.x, 8u)]), var_0.yyw >> ((vec3<u32>(var_0.x, 16861u, 4294967295u) >> (_wgslsmith_mod_vec3_u32(u_input.a.zxz, vec3<u32>(global1[_wgslsmith_index_u32(31240u, 8u)], 4294967295u, arg_2.e.x)) % vec3<u32>(32u))) % vec3<u32>(32u))) % 32u);
    global0 = !(arg_2.a & false);
    return Struct_4(any(select(select(select(vec3<bool>(arg_2.a, false, false), vec3<bool>(true, true, arg_2.a), false), select(vec3<bool>(true, arg_2.a, true), vec3<bool>(false, false, arg_2.a), vec3<bool>(arg_2.a, arg_2.a, arg_2.a)), vec3<bool>(arg_2.a, false, arg_2.a)), !vec3<bool>(false, true, arg_2.a), !(!vec3<bool>(true, false, arg_2.a)))), var_0.yxz, arg_1.xz, select(!(!vec3<bool>(false, true, arg_2.a)), select(vec3<bool>(!arg_2.a, true, arg_2.a), !(!vec3<bool>(arg_2.a, arg_2.a, arg_2.a)), !(!arg_2.a)), arg_2.a), Struct_2(-arg_2.d.a.wyw, Struct_1(arg_0.a, 1354f), ~(~_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(55353u, arg_2.c.c, 0u, u_input.b.x))), 42556i & var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(max(vec4<i32>(1i, 1i, 1i, 1i), reverseBits(-vec4<i32>(-2147483647i, -2147483647i, -46116i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1609f - -294f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-773f, -2528f, -1000f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1117f, 852f, -423f)))) + vec3<f32>(_wgslsmith_f_op_f32(-796f + -978f), _wgslsmith_div_f32(344f, 612f), _wgslsmith_f_op_f32(-1279f * 777f)))), Struct_5(all(vec2<bool>(true, true)), 1i, Struct_2(min(vec3<i32>(2147483647i, -2147483647i, -2147483647i), vec3<i32>(-2147483647i, -25073i, 63037i)) << (_wgslsmith_sub_vec3_u32(u_input.a.yyw, vec3<u32>(u_input.b.x, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 8u)])) % vec3<u32>(32u)), func_4(_wgslsmith_f_op_f32(func_1(vec3<f32>(1327f, -398f, -1661f), 1223f)), true), 18181u, i32(-1i) * -2147483647i), func_4(1f, (u_input.b.x & global1[_wgslsmith_index_u32(u_input.b.x, 8u)]) > 1u), ~vec3<u32>(1u ^ global1[_wgslsmith_index_u32(u_input.b.x, 8u)], 4294967295u, _wgslsmith_add_u32(u_input.a.x, 1u))));
    global0 = var_0.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-199f, -444f, _wgslsmith_f_op_f32(abs(-1096f)), var_0.c.x) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_4(var_0.e.b.b, var_0.a).b, -307f))), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(var_0.e.b.b, var_0.a).b) + 159f), _wgslsmith_f_op_f32(413f * _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-764f, -699f, var_0.e.b.b) * vec3<f32>(-371f, -2211f, var_0.c.x)), var_0.c.x)))));
    let var_2 = 4294967295u;
    var var_3 = func_5(var_0.e.b, vec3<f32>(-171f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-var_1.x)), 1000f), Struct_5(true, -(~countOneBits(var_0.e.d)), func_5(var_0.e.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(721f, var_1.x, -1132f) * vec3<f32>(var_1.x, var_1.x, var_1.x)), Struct_5(var_0.d.x, func_3(Struct_1(vec4<i32>(8824i, var_0.e.a.x, -2147483647i, var_0.e.b.a.x), var_0.c.x), vec3<i32>(var_0.e.d, var_0.e.d, 40652i), Struct_3(vec4<i32>(var_0.e.d, var_0.e.d, -1i, -22613i), 1u, vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.d.x), Struct_1(var_0.e.b.a, 796f), 1u)), var_0.e, var_0.e.b, firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(21424u, 8u)], 4294967295u)))).e, var_0.e.b, var_0.b)).e.b.b;
    var var_4 = abs(var_0.e.a.x);
    var var_5 = func_4(var_1.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-796f, -1018f), vec2<f32>(1059f, 704f))) * var_0.c) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xw), _wgslsmith_f_op_vec2_f32(-var_1.xx))))), _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(var_0.e.a.x), -_wgslsmith_clamp_i32(var_0.e.d, -41405i, -13780i)), vec2<i32>(abs(_wgslsmith_div_i32(var_0.e.d, var_0.e.d)), max(var_0.e.a.x, -1i))));
}

