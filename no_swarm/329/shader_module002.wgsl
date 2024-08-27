struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(1u, vec4<bool>(true, true, false, true), vec3<f32>(198f, 1724f, -189f)), Struct_1(21154u, vec4<bool>(true, false, false, false), vec3<f32>(1201f, 822f, -287f)), Struct_1(1u, vec4<bool>(true, false, true, true), vec3<f32>(-546f, 166f, 146f)), Struct_1(46111u, vec4<bool>(false, false, true, true), vec3<f32>(-290f, 1023f, 753f)), Struct_1(1u, vec4<bool>(true, true, true, true), vec3<f32>(-286f, -615f, -1270f)), Struct_1(47844u, vec4<bool>(true, true, true, false), vec3<f32>(870f, 795f, 1407f)), Struct_1(0u, vec4<bool>(true, true, false, true), vec3<f32>(804f, 1515f, -240f)), Struct_1(38418u, vec4<bool>(true, false, true, false), vec3<f32>(-124f, -907f, 1238f)), Struct_1(4618u, vec4<bool>(true, true, true, true), vec3<f32>(184f, 800f, 1581f)), Struct_1(42126u, vec4<bool>(false, false, false, true), vec3<f32>(1288f, -1000f, -499f)), Struct_1(30184u, vec4<bool>(false, false, false, true), vec3<f32>(-539f, -1000f, -150f)), Struct_1(0u, vec4<bool>(true, false, true, true), vec3<f32>(-821f, -554f, 1024f)), Struct_1(4294967295u, vec4<bool>(true, true, false, true), vec3<f32>(-256f, 538f, 1000f)), Struct_1(14244u, vec4<bool>(true, false, true, true), vec3<f32>(862f, -1202f, -1492f)), Struct_1(15053u, vec4<bool>(false, false, true, false), vec3<f32>(-412f, -974f, -1221f)));

var<private> global1: array<Struct_1, 25>;

var<private> global2: bool = false;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: f32, arg_1: bool) -> vec2<bool> {
    return !(!vec2<bool>(arg_1, !arg_1));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32) -> bool {
    var var_0 = Struct_1(0u, select(!select(arg_1.b, !arg_1.b, arg_1.b), !(!(!vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x))), vec4<bool>(any(func_2(-2063f, arg_0.x)), true, func_2(_wgslsmith_f_op_f32(sign(-286f)), true).x, firstTrailingBit(u_input.d) <= firstTrailingBit(2147483647i))), vec3<f32>(arg_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_1.c.x)), -1223f)))), arg_2));
    var var_1 = global0[_wgslsmith_index_u32(65648u, 15u)];
    global2 = any(vec4<bool>(true, !(false || arg_0.x), !(_wgslsmith_f_op_f32(floor(823f)) < _wgslsmith_f_op_f32(select(var_1.c.x, arg_1.c.x, true))), var_0.b.x));
    var var_2 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(firstTrailingBit(u_input.b.zy), u_input.b.xz, ~_wgslsmith_div_vec2_u32(u_input.b.xx, vec2<u32>(0u, var_1.a))), select(abs(~u_input.b.yz), vec2<u32>(~32144u, firstLeadingBit(5574u)), any(vec2<bool>(true, var_0.b.x)))), var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_1.c), vec3<f32>(arg_2, arg_2, 283f)))) + arg_1.c));
    global0 = array<Struct_1, 15>();
    return !var_0.b.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32) -> i32 {
    let var_0 = 1u;
    global2 = select(true, all(arg_1.b), arg_1.b.x) && !arg_1.b.x;
    global0 = array<Struct_1, 15>();
    var var_1 = Struct_1(62442u, !vec4<bool>(arg_1.b.x || arg_1.b.x, all(arg_1.b.wzz), true, !arg_1.b.x), _wgslsmith_f_op_vec3_f32(-arg_1.c));
    var var_2 = Struct_1(4294967295u, vec4<bool>(var_1.b.x, all(arg_1.b), false, func_3(!func_2(165f, true), global0[_wgslsmith_index_u32(select(u_input.b.x | arg_1.a, 1u, func_2(1000f, var_1.b.x).x), 15u)], -278f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.c.x))), -572f, -2186f))));
    return 1i;
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: vec3<i32>, arg_3: i32) -> f32 {
    var var_0 = u_input.c.x;
    let var_1 = !(-2147483647i != _wgslsmith_mult_i32(_wgslsmith_add_i32(~(-1i), 24262i), countOneBits(arg_2.x >> (u_input.b.x % 32u))));
    let var_2 = Struct_1(firstLeadingBit(~_wgslsmith_add_u32(~u_input.b.x, u_input.b.x)), vec4<bool>(var_1, var_1, var_1, func_3(func_2(-887f, var_1), Struct_1(u_input.b.x, vec4<bool>(true, false, true, var_1), vec3<f32>(1706f, arg_1, arg_1)), arg_1) || true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)), vec3<f32>(arg_1, arg_1, -1184f), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -116f, -356f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, -329f, arg_1)))))));
    return _wgslsmith_f_op_f32(-var_2.c.x);
}

fn func_5(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global2 = arg_2.b.x;
    var var_0 = _wgslsmith_add_i32(select(_wgslsmith_mod_i32(0i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 11296i, 2147483647i), vec3<i32>(-1i, -1i, 0i)), i32(-1i) * -8678i, -u_input.a)), (-1i << (_wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.yy) % 32u)) & (_wgslsmith_sub_i32(52993i, u_input.a) ^ ~(-13150i)), true), _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(u_input.c.x, u_input.c.x))), firstLeadingBit(vec2<i32>(-2147483647i, u_input.a))));
    var_0 = select(u_input.a, ~(~_wgslsmith_div_i32(u_input.a, u_input.d)), !arg_2.b.x);
    global1 = array<Struct_1, 25>();
    return global0[_wgslsmith_index_u32(~min(~(~(~u_input.b.x)), ~13606u), 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(~(~vec2<u32>(u_input.b.x, u_input.b.x)), max(u_input.b.zz, min(~u_input.b.xz | (vec2<u32>(u_input.b.x, 31017u) | u_input.b.xy), u_input.b.yx >> (_wgslsmith_mod_vec2_u32(u_input.b.xy, u_input.b.zy) % vec2<u32>(32u)))));
    var var_1 = u_input.b.x;
    global0 = array<Struct_1, 15>();
    let var_2 = vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(u_input.d, u_input.c.x, 36147i) >> (vec3<u32>(0u, u_input.b.x, var_0.x) % vec3<u32>(32u))), vec3<i32>(2147483647i, u_input.c.x, u_input.a) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.c.x), vec3<i32>(-1i, u_input.d, 73744i))), vec3<i32>(_wgslsmith_mult_i32(max(1i, u_input.c.x), u_input.d), _wgslsmith_div_i32(-58351i, i32(-1i) * -34513i), u_input.d)), -7652i);
    let var_3 = func_5(vec2<f32>(1000f, _wgslsmith_f_op_f32(func_4(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c, u_input.c), ~var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(105f * 681f)), reverseBits(vec3<i32>(-1i, -8068i, u_input.c.x)) ^ vec3<i32>(var_2.x, -1i, u_input.a), -func_1(vec4<f32>(1000f, -1314f, 1148f, 488f), global0[_wgslsmith_index_u32(0u, 15u)], 4294967295u)))), _wgslsmith_clamp_u32((_wgslsmith_div_u32(22906u, 70738u) >> (var_0.x % 32u)) << (_wgslsmith_mod_u32(min(1u, u_input.b.x), ~u_input.b.x) % 32u), 4294967295u, var_0.x), Struct_1(u_input.b.x, select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, any(vec3<bool>(true, true, false)), true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-978f + 945f), -566f, _wgslsmith_f_op_f32(max(1769f, -1717f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 0u, 23079u, 0u)), select(vec4<u32>(0u, var_0.x, 69722u, var_0.x), vec4<u32>(74845u, u_input.b.x, var_0.x, u_input.b.x), true)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, 1u, 22237u, 1u), vec4<u32>(u_input.b.x, 4820u, 34426u, 4294967295u)), vec4<u32>(~var_0.x, ~var_3.a, _wgslsmith_add_u32(var_0.x, u_input.b.x), _wgslsmith_mult_u32(16387u, 54108u))), u_input.c.x >> (~var_0.x % 32u), ~(vec2<i32>(min(-1i, 1i), 2147483647i) | vec2<i32>(u_input.d ^ u_input.a, var_2.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(-firstLeadingBit(-2147483647i), firstLeadingBit(_wgslsmith_mult_i32(1i, 2147483647i))), vec2<i32>(1i, u_input.c.x)), abs(-3100i ^ -_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 1i, -12688i), vec3<i32>(u_input.d, -2147483647i, var_2.x))));
}

