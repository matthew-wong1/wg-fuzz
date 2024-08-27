struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: vec3<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec4<bool> {
    var var_0 = ~_wgslsmith_sub_vec2_i32(firstTrailingBit(global1.xx), -global1.xz);
    var var_1 = arg_0.a;
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(86444u, abs(~(~u_input.b)) << (4294967295u % 32u)), 3u)];
    var var_2 = arg_0.a;
    var var_3 = true;
    return vec4<bool>(arg_0.a.b.x, firstTrailingBit(1i) < ~((i32(-1i) * -1i) & select(-1i, arg_1, false)), false, !(!select(true, true, arg_0.b)));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> vec3<u32> {
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    var var_0 = Struct_2(Struct_1(firstTrailingBit((vec4<u32>(0u, 86842u, arg_1.a.c.x, u_input.b) | arg_1.a.a) >> (~arg_1.a.a % vec4<u32>(32u))), !select(arg_1.a.b, arg_1.a.b, true), vec2<u32>(firstLeadingBit(_wgslsmith_mod_u32(21800u, arg_1.a.c.x)), min(~u_input.b, 0u)), ~(~arg_1.c)), any(func_3(Struct_2(arg_1.a, false, arg_1.a.a.x), ~u_input.d.x)) && all(func_3(arg_1, max(2147483647i, 0i)).xx), 4294967295u);
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(~(~var_0.a.c.x), 19542u, abs(74609u) | u_input.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(1228u, 0u, 35770u), arg_1.a.a.yxw)), _wgslsmith_div_vec4_u32(var_0.a.a, var_0.a.a), ~(~abs(arg_1.a.a))), vec2<bool>(var_0.a.b.x, var_0.b), ~var_0.a.c << (vec2<u32>(firstTrailingBit(var_0.c) | 1u, countOneBits(25030u >> (u_input.b % 32u))) % vec2<u32>(32u)), ~(77488u << (_wgslsmith_dot_vec4_u32(~arg_1.a.a, var_0.a.a | arg_1.a.a) % 32u)));
    var var_2 = Struct_1(firstLeadingBit(~arg_1.a.a), select(var_0.a.b, var_0.a.b, !arg_1.a.b.x), ~var_0.a.a.xz, _wgslsmith_div_u32(u_input.b, max(~var_0.c, abs(4294967295u) >> (~var_0.a.d % 32u))));
    return var_1.a.wwx;
}

fn func_1() -> Struct_2 {
    let var_0 = (_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(91695u, u_input.b, 14023u), ~vec3<u32>(u_input.b, u_input.b, u_input.b)), select(~vec3<u32>(u_input.b, 27851u, 79248u), ~vec3<u32>(u_input.b, 1u, 765u), vec3<bool>(false, true, true)), (vec3<u32>(11345u, u_input.b, u_input.b) & vec3<u32>(35622u, 68060u, 0u)) << (func_2(true, Struct_2(global0[_wgslsmith_index_u32(u_input.b, 3u)], true, u_input.b)) % vec3<u32>(32u))) >> (~vec3<u32>(u_input.b, u_input.b, _wgslsmith_mod_u32(u_input.b, 0u)) % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_u32(~countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.b, 37118u), vec3<u32>(0u, 41533u, 0u))), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(0u, 4294967295u, 1u)), vec3<u32>(u_input.b, 0u, u_input.b)), vec3<u32>(min(1u, u_input.b), u_input.b, ~u_input.b)));
    var var_1 = -vec4<i32>(_wgslsmith_mod_i32(u_input.a.x | -2147483647i, 44871i), -3997i, _wgslsmith_dot_vec2_i32(firstTrailingBit(global1.zz), vec2<i32>(_wgslsmith_sub_i32(33519i, u_input.d.x), ~8510i)), ~(~min(-1i, u_input.a.x)));
    global0 = array<Struct_1, 3>();
    let var_2 = global0[_wgslsmith_index_u32(~var_0.x, 3u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1327f), -119f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1091f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(806f + 1284f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1167f, -436f, -102f, 1795f) - vec4<f32>(759f, 1398f, 137f, 106f)), vec4<f32>(208f, 697f, -1290f, 187f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(273f, 326f, 580f, -116f) * vec4<f32>(-1803f, 148f, 1387f, -1002f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -486f)), _wgslsmith_f_op_f32(ceil(483f)), _wgslsmith_f_op_f32(2057f - -1000f), 526f))));
    return Struct_2(Struct_1(firstTrailingBit(vec4<u32>(~1u, _wgslsmith_clamp_u32(var_2.d, 4294967295u, 5172u), 1u, reverseBits(91210u))), vec2<bool>(all(func_3(Struct_2(Struct_1(var_2.a, vec2<bool>(var_2.b.x, false), var_2.a.yx, var_2.d), true, var_2.a.x), var_1.x).xz), !all(vec3<bool>(var_2.b.x, false, false))), abs(var_0.xy), 4294967295u), true, 4404u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f * -208f), -1322f, _wgslsmith_f_op_f32(1860f * -898f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(889f, -1000f, -905f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(148f, -646f, 345f)), var_0.a.b.x)))));
    let var_2 = -u_input.d.yw;
    let var_3 = func_1();
    let var_4 = u_input.d ^ vec4<i32>(select(-19289i, -firstLeadingBit(4145i), false), abs(-2147483647i), global1.x, var_2.x);
    let var_5 = _wgslsmith_dot_vec4_u32(func_1().a.a, ~(var_0.a.a << (~_wgslsmith_mod_vec4_u32(vec4<u32>(26005u, 4294967295u, var_0.c, var_3.a.a.x), var_0.a.a) % vec4<u32>(32u))));
    let var_6 = var_0.a.a.xxz;
    var var_7 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(28520i, var_2.x), 0i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-u_input.d.xyy, vec3<i32>(var_2.x, u_input.c, global1.x) << (var_3.a.a.zwx % vec3<u32>(32u)), vec3<i32>(0i, var_4.x, global1.x)), _wgslsmith_sub_vec3_i32(~vec3<i32>(-1i, -4970i, var_4.x), u_input.d.yzx | vec3<i32>(var_4.x, 23358i, -28072i)))), -firstTrailingBit(var_4.www), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_add_i32(-44774i, 2147483647i), var_4.x), select(~var_4.zxw, -var_4.xyz, vec3<bool>(true, true, false))), vec3<i32>(abs(global1.x) >> (var_5 % 32u), -_wgslsmith_mult_i32(0i, var_4.x), global1.x & (-10143i | u_input.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, var_3.a.b.x)) + var_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-610f + -334f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1064f), -588f)), ~(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_7.x, -33208i, var_4.x, -1i), vec4<i32>(-24075i, 7690i, u_input.c, -39877i) >> (vec4<u32>(4294967295u, 51856u, 30385u, var_0.c) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_i32(var_4, var_4 << (var_3.a.a % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -898f, var_1.x, -808f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), -1282f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(437f * 1566f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) + _wgslsmith_f_op_f32(abs(962f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-566f, var_1.x))) <= -1315f)));
}

