struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<f32>(1000f, -827f, 1124f, -150f), vec3<u32>(46136u, 90928u, 1u), -1403f, 32777u, vec2<i32>(2147483647i, 1i)), Struct_1(vec4<f32>(-812f, -1000f, -1253f, -570f), vec3<u32>(16242u, 46191u, 4294967295u), 567f, 1u, vec2<i32>(0i, 0i)), Struct_1(vec4<f32>(-1000f, 361f, -351f, 1218f), vec3<u32>(0u, 1501u, 1u), -1335f, 4294967295u, vec2<i32>(-19848i, 0i)), Struct_1(vec4<f32>(595f, 152f, -616f, -1096f), vec3<u32>(23003u, 5925u, 0u), -595f, 8452u, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec4<f32>(-686f, -1543f, 2740f, -843f), vec3<u32>(4341u, 111269u, 1u), 527f, 1u, vec2<i32>(2147483647i, -1i)), Struct_1(vec4<f32>(153f, -751f, -1270f, 993f), vec3<u32>(1u, 4294967295u, 39263u), -958f, 0u, vec2<i32>(-1i, 69447i)), Struct_1(vec4<f32>(122f, 1681f, 1533f, -482f), vec3<u32>(4294967295u, 0u, 4294967295u), 1505f, 25605u, vec2<i32>(2147483647i, 1i)), Struct_1(vec4<f32>(-2477f, -996f, 1315f, -450f), vec3<u32>(0u, 10005u, 47739u), 514f, 1u, vec2<i32>(11782i, 11752i)), Struct_1(vec4<f32>(169f, 1171f, -1000f, -1171f), vec3<u32>(30834u, 4294967295u, 4596u), 1034f, 40808u, vec2<i32>(-33308i, -1i)), Struct_1(vec4<f32>(667f, -1192f, -318f, 1078f), vec3<u32>(22927u, 9808u, 4294967295u), -409f, 34289u, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec4<f32>(-1309f, -610f, 1543f, -1044f), vec3<u32>(5403u, 43331u, 178094u), 1000f, 116212u, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec4<f32>(1115f, -653f, -1084f, -896f), vec3<u32>(0u, 1u, 1u), 182f, 1u, vec2<i32>(0i, -93166i)), Struct_1(vec4<f32>(1000f, -1514f, -1200f, 348f), vec3<u32>(4294967295u, 1u, 16040u), 242f, 4294967295u, vec2<i32>(-30615i, i32(-2147483648))), Struct_1(vec4<f32>(1012f, -526f, -1000f, 157f), vec3<u32>(4294967295u, 84982u, 4294967295u), -647f, 0u, vec2<i32>(-24823i, 82262i)), Struct_1(vec4<f32>(-418f, -333f, 1116f, -485f), vec3<u32>(57666u, 1u, 1u), 191f, 39386u, vec2<i32>(0i, 0i)), Struct_1(vec4<f32>(-3434f, 1106f, 1194f, -389f), vec3<u32>(25888u, 44278u, 2825u), 1000f, 79745u, vec2<i32>(-52654i, 1i)), Struct_1(vec4<f32>(533f, 405f, 1695f, -1393f), vec3<u32>(51633u, 1u, 20403u), 614f, 1u, vec2<i32>(24832i, 16185i)), Struct_1(vec4<f32>(1738f, -291f, 2196f, 1061f), vec3<u32>(132376u, 58756u, 4294967295u), -1076f, 0u, vec2<i32>(-16711i, -52224i)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = -(~(-vec3<i32>(-2147483647i, arg_0.e.x, -1i)) ^ _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(u_input.e, 1i, 9289i)), vec3<i32>(54208i, 219i, arg_0.e.x))) << (~_wgslsmith_mod_vec3_u32(arg_0.b, arg_0.b) % vec3<u32>(32u));
    global0 = array<Struct_1, 18>();
    var var_1 = global0[_wgslsmith_index_u32(arg_0.b.x, 18u)];
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.a, arg_0.a, vec4<bool>(true, false, true, true))), var_1.a), var_1.a)), vec3<u32>(_wgslsmith_mod_u32(var_1.d, ~12063u) ^ arg_0.d, _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.d, max(17521u, 63466u)), ~firstTrailingBit(63627u)), select(~46826u, u_input.d.x, true) | ~(~42140u)), -554f, _wgslsmith_add_u32(~u_input.b, ~(~arg_0.b.x)), ~vec2<i32>(abs(~var_1.e.x), -var_0.x));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a * arg_0.a)))), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.c))), var_1.d, ~var_2.e);
    return false;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: vec2<u32>) -> vec3<bool> {
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_f32(abs(-2177f));
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.d.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(select(4294967295u, arg_3.x, arg_2.x), abs(arg_3.x)), ~(~24521u))), 18u)];
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, 432f));
    var_1 = var_2.a.x;
    return select(vec3<bool>(!arg_0 | arg_2.x, func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(var_2.d, 5082u), var_2.b.yz, vec2<bool>(arg_2.x, false)), var_2.b.xy), 18u)]), (_wgslsmith_f_op_f32(-var_2.c) >= var_2.a.x) & (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, 43205u, 4294967295u, var_2.b.x), vec4<u32>(1u, u_input.d.x, 14297u, 0u)) >= min(0u, u_input.c.x))), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(-59032i >= u_input.e, arg_1.x || arg_1.x, false)), select(!vec3<bool>(arg_0, arg_1.x, arg_0), vec3<bool>(true, true, arg_1.x), !arg_2.x));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = true;
    var var_1 = !select(vec4<bool>(var_0, !var_0, all(func_2(true, vec2<bool>(true, false), vec2<bool>(var_0, true), u_input.d.xy)), var_0), select(select(select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, false, true, true), var_0), !vec4<bool>(var_0, true, var_0, true), vec4<bool>(var_0, var_0, var_0, var_0)), select(select(vec4<bool>(var_0, false, var_0, false), vec4<bool>(true, true, var_0, var_0), true), vec4<bool>(var_0, false, var_0, false), select(false, var_0, var_0)), var_0), var_0);
    global0 = array<Struct_1, 18>();
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 18u)];
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~var_2.b.x, u_input.c.x), 65188u), 18u)];
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(1171f)), var_2.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(162f, 840f, var_0)) * _wgslsmith_f_op_f32(select(803f, var_2.a.x, true))))), -547f), u_input.d, _wgslsmith_div_f32(var_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_3.c)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_3.a.x)))))), firstTrailingBit(~u_input.b), vec2<i32>(-13134i, var_2.e.x));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    return vec3<i32>(arg_2.e.x, max(abs(abs(func_1(arg_2.e.x, vec2<u32>(arg_2.d, arg_2.b.x)).e.x)), -u_input.e), ~abs(arg_2.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_i32(firstLeadingBit(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1292f) * -619f), global0[_wgslsmith_index_u32(~(~4294967295u), 18u)], func_1(u_input.e, ~vec2<u32>(u_input.a, 1u)))), _wgslsmith_sub_vec3_i32(abs(select(min(vec3<i32>(1i, 1i, u_input.e), vec3<i32>(1i, -66619i, -23664i)), ~vec3<i32>(33456i, -1i, u_input.e), true)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, u_input.e, -44016i) >> (vec3<u32>(u_input.b, 5170u, 13277u) % vec3<u32>(32u)), vec3<i32>(u_input.e, 14355i, u_input.e)) >> (u_input.d % vec3<u32>(32u))));
    var_0 = countOneBits(abs(vec3<i32>(1i | func_4(-959f, global0[_wgslsmith_index_u32(12692u, 18u)], Struct_1(vec4<f32>(-1247f, 738f, 1504f, 256f), u_input.d, -861f, 4294967295u, vec2<i32>(26244i, u_input.e))).x, firstLeadingBit(-1i), ~_wgslsmith_mult_i32(9741i, u_input.e))));
    var_0 = vec3<i32>(13549i, abs(u_input.e), ~((i32(-1i) * -6435i) >> (u_input.d.x % 32u)));
    var var_1 = ~(~(~vec4<u32>(4294967295u, u_input.c.x, u_input.b, u_input.d.x) ^ ~vec4<u32>(u_input.a, u_input.a, 16987u, 1u)));
    var_1 = vec4<u32>(1u, ~_wgslsmith_dot_vec2_u32(u_input.d.xx, vec2<u32>(var_1.x, var_1.x)), ~_wgslsmith_clamp_u32(var_1.x, var_1.x, _wgslsmith_sub_u32(u_input.c.x, ~2353u)), var_1.x);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-159f, 112f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-833f)) - 105f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(251f, -174f)))), 1000f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1253f, 987f, 374f, -734f)) - vec4<f32>(1615f, -1398f, 350f, 154f)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -675f), _wgslsmith_f_op_f32(1357f - -2058f), 1f))), select(var_1.wyz << (vec3<u32>(60856u, 44151u, u_input.b) % vec3<u32>(32u)), ~firstTrailingBit(vec3<u32>(36430u, u_input.b, var_1.x)), func_2(select(false, true, true), vec2<bool>(true, false), vec2<bool>(true, true), _wgslsmith_mult_vec2_u32(var_1.zw, u_input.c))) & firstLeadingBit(func_1(~12899i, vec2<u32>(var_1.x, 61576u)).b), _wgslsmith_div_f32(_wgslsmith_div_f32(1816f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1218f)), 1f))), -1532f), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u) ^ abs(vec2<u32>(var_1.x, u_input.c.x)), u_input.d.zy), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.yx, _wgslsmith_mod_vec2_i32(vec2<i32>(-10859i, var_0.x), abs(var_0.xz))), _wgslsmith_mod_vec2_i32(countOneBits(-vec2<i32>(u_input.e, u_input.e)), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e, 13095i), var_0.xz)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_2.c, var_2.a.x), var_2.c, var_2.a.x, var_2.c), var_2.a)), var_2.d, 3351i);
}

