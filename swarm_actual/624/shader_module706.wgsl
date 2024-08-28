struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -105f;

var<private> global1: array<f32, 3>;

var<private> global2: Struct_4;

var<private> global3: array<f32, 3>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> vec2<i32> {
    var var_0 = vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, u_input.e.x <= 26507u, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)))), false);
    global3 = array<f32, 3>();
    var var_1 = Struct_4(630f);
    var var_2 = max(firstTrailingBit(vec4<i32>(u_input.c | _wgslsmith_dot_vec2_i32(arg_1.yy, arg_1.zx), abs(select(-4662i, -18254i, var_0.x)), 4208i, _wgslsmith_dot_vec3_i32(vec3<i32>(-11826i, u_input.a, arg_0), -arg_1.yzy))), arg_1);
    global0 = -356f;
    return -(arg_1.zz | arg_1.yz) >> (u_input.b.xz % vec2<u32>(32u));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(-func_3(-1i, vec4<i32>(u_input.c, -2147483647i, 30058i, u_input.c)) >> (arg_2 % vec2<u32>(32u)), -6568i), 584f);
    var var_1 = vec3<bool>(any(select(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), false)), any(vec2<bool>(true, true)), any(vec2<bool>(true, true)) || !(!(u_input.b.x >= u_input.e.x)));
    global3 = array<f32, 3>();
    global1 = array<f32, 3>();
    return Struct_2(Struct_1(_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.c, -12024i), countOneBits(vec2<i32>(-1i, u_input.a)) & ~var_0.a.a), -21806i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * arg_0.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_4 {
    let var_0 = ~_wgslsmith_add_i32(_wgslsmith_mod_i32(abs(1i), arg_0.a.a.x), ~firstTrailingBit(_wgslsmith_mult_i32(-42219i, -33311i)));
    let var_1 = -915f;
    let var_2 = abs(u_input.e);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1)))) - var_1));
    global3 = array<f32, 3>();
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-269f)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(66014u, 3u)] <= -168f;
    global2 = func_4(func_2(vec2<f32>(654f, global3[_wgslsmith_index_u32(55126u, 3u)]), 1u, vec2<u32>(17066u, abs(arg_2))), Struct_2(Struct_1(func_3(-6232i, vec4<i32>(1i, arg_0.x, u_input.c, 1i)), arg_0.x), 1000f));
    global3 = array<f32, 3>();
    global3 = array<f32, 3>();
    let var_1 = vec3<u32>(u_input.d, _wgslsmith_mult_u32(~(arg_2 >> (_wgslsmith_add_u32(u_input.d, u_input.b.x) % 32u)), 86109u), ~(~min(abs(arg_2), u_input.e.x)));
    return func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(0u, 3u)], 645f) + _wgslsmith_div_vec2_f32(vec2<f32>(-1900f, -937f), vec2<f32>(global2.a, global3[_wgslsmith_index_u32(var_1.x, 3u)]))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1[_wgslsmith_index_u32(u_input.d, 3u)], 203f), vec2<f32>(1386f, global3[_wgslsmith_index_u32(1u, 3u)]))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a, global2.a), vec2<f32>(global3[_wgslsmith_index_u32(arg_2, 3u)], global2.a), vec2<bool>(true, var_0))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, global2.a))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -488f), 461f), select(!vec2<bool>(var_0, false), !vec2<bool>(var_0, var_0), true == var_0)))), _wgslsmith_mod_u32(~_wgslsmith_add_u32(~u_input.e.x, abs(arg_2)), 0u | arg_2), u_input.b.zz).a;
}

fn func_5(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_3) -> vec4<i32> {
    let var_0 = (_wgslsmith_clamp_i32(0i ^ firstTrailingBit(0i), ~select(u_input.a, arg_3.b.a.x, true), ~(48870i & arg_3.b.b)) << (~(~(arg_2 ^ 3822u)) % 32u)) | (0i << (0u % 32u));
    let var_1 = (!all(vec2<bool>(true, true)) & all(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)))) & false;
    global2 = Struct_4(112f);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global1[_wgslsmith_index_u32(0u, 3u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(ceil(arg_0.a))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(403f, 2782f, global3[_wgslsmith_index_u32(arg_1.x << (arg_2 % 32u), 3u)], arg_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 3u)], -1374f, arg_0.a, 1576f) + vec4<f32>(-1382f, global1[_wgslsmith_index_u32(arg_3.c, 3u)], 1708f, global1[_wgslsmith_index_u32(26815u, 3u)])), !(!vec4<bool>(var_1, var_1, true, false))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1678f, 1349f, -1383f, -1642f), vec4<f32>(arg_0.a, arg_0.a, 697f, global1[_wgslsmith_index_u32(arg_3.c, 3u)]), true)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], -176f, arg_0.a)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(arg_2, 3u)], global2.a, global2.a, -550f) - vec4<f32>(1081f, global1[_wgslsmith_index_u32(934u, 3u)], 1049f, 818f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(arg_1.x, 3u)], -1153f, -309f, 155f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, arg_0.a, global2.a, global3[_wgslsmith_index_u32(arg_2, 3u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, 300f, -1790f, global2.a)), !var_1)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-532f, global2.a, 464f, global1[_wgslsmith_index_u32(0u, 3u)]), vec4<f32>(-574f, -416f, -109f, global1[_wgslsmith_index_u32(53882u, 3u)]))))))));
    var var_3 = vec2<bool>(any(select(!(!vec3<bool>(false, var_1, var_1)), !select(vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, var_1, true), var_1), any(select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), vec2<bool>(false, var_1))))), var_1);
    return -(vec4<i32>(-1i) * -(vec4<i32>(u_input.c, 2147483647i, 0i, 1844i) ^ vec4<i32>(var_0, -2147483647i, 19381i, var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(0u, u_input.e.x), 1u), 3u)]), firstLeadingBit(~min(vec3<u32>(u_input.e.x, 39395u, u_input.d), vec3<u32>(1u, u_input.e.x, u_input.b.x))), _wgslsmith_dot_vec3_u32(~vec3<u32>(34936u, u_input.d, 1590u), ~vec3<u32>(u_input.e.x, u_input.e.x, u_input.b.x)) | 52166u, Struct_3(~u_input.a, func_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(27909i, u_input.c, u_input.a, u_input.a), vec4<i32>(u_input.c, u_input.c, 0i, 2147483647i), vec4<i32>(-1i, u_input.c, 1i, 3428i)), abs(vec2<i32>(u_input.a, 0i)), _wgslsmith_mod_u32(u_input.d, 56836u)), _wgslsmith_div_u32(1u, u_input.d))) | (vec4<i32>(u_input.c, ~firstLeadingBit(-2147483647i), _wgslsmith_mult_i32(~u_input.c, func_3(-2147483647i, vec4<i32>(u_input.c, 7283i, -54717i, u_input.a)).x), ~u_input.a) ^ vec4<i32>(-(u_input.c | -1i), ~countOneBits(u_input.c), _wgslsmith_sub_i32(abs(8428i), -18602i), abs(u_input.a)));
    let var_1 = Struct_2(func_1(min(-select(vec4<i32>(-1i, 0i, 57459i, 20549i), vec4<i32>(-48354i, -15625i, var_0.x, u_input.c), vec4<bool>(true, false, true, true)), vec4<i32>(firstTrailingBit(var_0.x), var_0.x, u_input.a ^ var_0.x, 4175i & u_input.a)), var_0.xy, ~(~u_input.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global3[_wgslsmith_index_u32(u_input.b.x, 3u)])), global2.a)), global3[_wgslsmith_index_u32(0u, 3u)], true))));
    global3 = array<f32, 3>();
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(~12762u, 3u)], -1000f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(616f, global2.a))))), 32229u, u_input.b.xy).a;
    var_0 = ~(~vec4<i32>(1i, ~_wgslsmith_div_i32(var_1.a.b, 22877i), func_3(-30042i & u_input.a, abs(vec4<i32>(-6643i, u_input.a, 1i, 42615i))).x, abs(reverseBits(10608i))));
    let var_3 = Struct_3(~18967i, func_2(vec2<f32>(381f, 851f), 4294967295u, vec2<u32>(abs(u_input.d), u_input.b.x) ^ _wgslsmith_sub_vec2_u32(reverseBits(u_input.b.xy), max(vec2<u32>(u_input.b.x, 291u), vec2<u32>(u_input.b.x, u_input.b.x)))).a, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -401f), _wgslsmith_mult_vec2_i32(var_2.a, vec2<i32>(reverseBits(max(-61134i, 20201i)), var_2.b)));
}

