struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
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

var<private> global0: u32 = 26094u;

var<private> global1: vec2<u32>;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(100650u, 62780u), vec3<u32>(0u, 0u, 1u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    global1 = _wgslsmith_clamp_vec2_u32(min(max(global2.b.xz ^ vec2<u32>(0u, global1.x), ~(~arg_0.b.zz)), vec2<u32>(abs(0u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global2.b, arg_0.b), abs(112714u)))), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, arg_0.a.x, global2.a.x, 72100u), abs(vec4<u32>(global1.x, global2.a.x, u_input.b, 1u))), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.b.x, arg_0.a.x, 40013u, arg_0.b.x), vec4<u32>(arg_0.b.x, global2.a.x, global1.x, global1.x)), abs(vec4<u32>(arg_0.b.x, 25219u, global1.x, 21147u)))), global1.x), abs(global2.a));
    var var_0 = arg_0;
    let var_1 = min(vec3<u32>(arg_0.a.x, ~global1.x, arg_0.a.x), ~(firstLeadingBit(abs(var_0.b)) << (~select(global2.b, vec3<u32>(4294967295u, var_0.b.x, u_input.b), vec3<bool>(false, true, true)) % vec3<u32>(32u))));
    var var_2 = arg_0;
    var var_3 = -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a >> (1u % 32u)) & _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -34536i), vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, u_input.a)), vec2<i32>(2793i, 2147483647i)), ~(~firstLeadingBit(vec2<i32>(-29537i, u_input.a))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -615f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-721f, _wgslsmith_f_op_f32(floor(-182f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1086f))))))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(func_3(Struct_1(~vec2<u32>(global1.x | 14319u, 4294967295u), vec3<u32>(global1.x, 1u >> (global1.x % 32u), u_input.b))));
    global0 = abs(~(~(~4294967295u)) | _wgslsmith_mult_u32(reverseBits(4294967295u), max(29952u, global2.a.x)));
    global0 = global2.b.x;
    let var_2 = !var_0;
    return Struct_1(vec2<u32>(~_wgslsmith_sub_u32(~0u, ~76294u), _wgslsmith_mod_u32(~global1.x, 1u)), ~abs(~(~global2.b)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global0 = firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.a.x, 5417u, global1.x), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.b.x, 65424u, global2.b.x), arg_0.b), ~vec3<u32>(arg_0.b.x, 4294967295u, arg_2.a.x)) & ~(arg_0.b & global2.b), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(0u, u_input.b, arg_2.a.x), vec3<u32>(4294967295u, global1.x, global2.b.x), true), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(global2.b, vec3<u32>(75339u, 56127u, global1.x)), arg_0.b), min(arg_0.b, ~arg_0.b))));
    let var_0 = ~vec4<u32>(~func_2(vec4<u32>(4294967295u, 0u, global2.a.x, u_input.c) << (vec4<u32>(19789u, 18640u, 1u, global2.a.x) % vec4<u32>(32u))).b.x, abs(firstLeadingBit(4294967295u)), arg_0.a.x, select(86102u, 28589u, true));
    global1 = select(vec2<u32>(countOneBits(min(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, u_input.c), vec2<u32>(1u, 1u)), ~var_0.x)), ~(~(~1u))), ~select(vec2<u32>(global2.b.x, global1.x), ~func_2(var_0).a, all(vec2<bool>(false, false)) || true), !any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)) && true);
    global1 = reverseBits(vec2<u32>(0u, global1.x));
    global2 = Struct_1(~vec2<u32>(var_0.x & min(14439u, 1u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global2.b.x, global2.b.x), vec2<u32>(6340u, var_0.x)), arg_0.a)), ~var_0.ywz);
    return arg_2;
}

fn func_5(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -454f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(723f + 363f), -219f), _wgslsmith_div_f32(-1464f, -1934f))))));
    var var_1 = func_2(vec4<u32>(2808u, 67033u, ~83670u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global2.a.x), arg_0.b.yy))));
    var var_2 = true;
    let var_3 = true != (_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0 + var_0))))) > var_0);
    var_2 = true;
    return -vec3<i32>(u_input.a >> (arg_0.b.x % 32u), _wgslsmith_div_i32(~0i, -(u_input.a << (4294967295u % 32u))), u_input.a);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(arg_1.x, _wgslsmith_clamp_u32(61350u, ~global2.b.x, ~0u)), ~(~(arg_0.b.x & 1u))), arg_2.b);
    global1 = firstLeadingBit(func_4(Struct_1(vec2<u32>(4294967295u, firstTrailingBit(9276u)), vec3<u32>(arg_0.b.x, 73677u >> (arg_2.a.x % 32u), 0u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1432f + 836f), _wgslsmith_f_op_f32(f32(-1f) * -280f), _wgslsmith_f_op_f32(1253f * -1208f))), func_4(arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-959f, 622f, 541f)), func_4(Struct_1(vec2<u32>(0u, 0u), arg_0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(604f, -1421f, -1253f) - vec3<f32>(273f, -1432f, -1322f)), func_2(vec4<u32>(1u, arg_0.b.x, 4294967295u, u_input.b)), _wgslsmith_f_op_f32(max(501f, 1935f))), -142f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -378f), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_2.a, vec3<u32>(u_input.c, 51970u, 22585u)))).x))).b.xx);
    global1 = var_1.a;
    var var_2 = func_2(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(min(vec4<u32>(arg_2.b.x, global1.x, 36165u, arg_1.x), vec4<u32>(0u, 47820u, 4294967295u, 43769u)), vec4<u32>(1u, 99947u, arg_0.a.x, 4294967295u)) << (vec4<u32>(1u, u_input.b ^ global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(9118u, var_1.a.x, global1.x, 0u), vec4<u32>(arg_0.a.x, 14712u, 1u, 67239u)), func_4(Struct_1(var_1.a, var_1.b), vec3<f32>(-510f, -711f, -2787f), arg_2, -1533f).b.x) % vec4<u32>(32u)), ~(~vec4<u32>(4294967295u, var_0.a.x, 0u, var_0.b.x)) << (~vec4<u32>(0u, global2.b.x, 25179u, arg_2.b.x) % vec4<u32>(32u))));
    return Struct_1(select(~arg_0.a, vec2<u32>(select(~global2.a.x, 1u, -12613i > arg_3.x), _wgslsmith_mult_u32(arg_2.a.x, abs(17234u))), !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))), ~var_0.b);
}

fn func_1(arg_0: bool) -> vec2<u32> {
    var var_0 = Struct_1(global2.b.yx ^ ~_wgslsmith_add_vec2_u32(~global2.a, global2.a), countOneBits(global2.b));
    var var_1 = _wgslsmith_add_i32(~_wgslsmith_mod_i32(-abs(u_input.a), _wgslsmith_add_i32(_wgslsmith_mult_i32(2147483647i, u_input.a), ~0i)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, -(0i << (global1.x % 32u))), _wgslsmith_mod_i32(15015i, -874i)));
    let var_2 = func_6(Struct_1(_wgslsmith_add_vec2_u32(var_0.b.yx, ~global2.a), var_0.b), global2.a, Struct_1(~_wgslsmith_add_vec2_u32(min(vec2<u32>(global2.a.x, var_0.b.x), vec2<u32>(global2.b.x, 4294967295u)), global2.b.xy), var_0.b), func_5(func_4(func_2(vec4<u32>(1u, 18984u, u_input.b, global1.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-230f, 423f, -1041f) + vec3<f32>(-555f, 2250f, -142f)))), func_2(_wgslsmith_div_vec4_u32(vec4<u32>(65868u, 1u, 33415u, 1u), vec4<u32>(1u, 1u, 31346u, var_0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -195f), _wgslsmith_f_op_f32(round(1333f))))));
    return ~global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1(true), vec3<u32>(50956u, select(55578u, _wgslsmith_mult_u32(global2.a.x >> (71160u % 32u), ~50004u), false), max(65973u, global1.x)));
    global0 = countOneBits(func_1(true).x);
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(-1667f, -1000f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(254f, 158f)) * vec2<f32>(-123f, 1340f)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1014f, 1301f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1321f, 580f))))))));
    var var_2 = func_4(func_4(func_6(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b.x, 4294967295u), var_0.b.zz), vec3<u32>(0u, 4294967295u, 72670u) | global2.b), countOneBits(~vec2<u32>(global2.b.x, 4294967295u)), Struct_1(~vec2<u32>(1u, global1.x), vec3<u32>(var_0.b.x, global2.a.x, 10437u) >> (vec3<u32>(global1.x, var_0.a.x, 82478u) % vec3<u32>(32u))), vec3<i32>(-u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 1i)), func_5(Struct_1(vec2<u32>(20401u, 0u), vec3<u32>(u_input.c, var_0.a.x, 0u))).x)), vec3<f32>(738f, var_1.x, -2063f), func_4(Struct_1(~vec2<u32>(1u, 37020u), vec3<u32>(global2.b.x, 1u, global2.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -552f, var_1.x) - vec3<f32>(var_1.x, var_1.x, var_1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1383f, -1000f, 224f))), Struct_1(vec2<u32>(4294967295u, 1u) ^ global2.a, var_0.b), 1303f), _wgslsmith_f_op_f32(var_1.x + 491f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1199f), _wgslsmith_f_op_f32(-633f + 612f))), -722f, var_1.x), Struct_1((global2.a ^ ~vec2<u32>(u_input.c, var_0.a.x)) << (vec2<u32>(11309u, firstLeadingBit(var_0.a.x)) % vec2<u32>(32u)), global2.b), var_1.x).a.x;
    var var_3 = Struct_1(global2.a, ~vec3<u32>(~_wgslsmith_div_u32(u_input.c, 42302u), 66614u | min(u_input.b, var_0.a.x), 1u));
    let var_4 = Struct_1(var_3.b.xy ^ vec2<u32>(func_4(Struct_1(vec2<u32>(global1.x, global2.a.x), vec3<u32>(4294967295u, var_0.b.x, u_input.b)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, 1789f, var_1.x))), Struct_1(vec2<u32>(1u, u_input.c), var_3.b), _wgslsmith_f_op_f32(-var_1.x)).a.x, max(var_3.b.x, _wgslsmith_mod_u32(global1.x, 1u))), ~global2.b);
    var_3 = var_4;
    var var_5 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(var_4)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-135f, var_1.x, 589f)))))));
    let var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1000f, var_5.x), _wgslsmith_f_op_f32(var_5.x + var_5.x), -1405f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(614f, var_1.x, var_5.x))) - vec3<f32>(var_5.x, -642f, 164f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_5.x, var_5.x, 586f), vec3<f32>(var_5.x, var_1.x, -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.x, var_5.x, var_5.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_5.x, var_5.x, 751f), vec3<f32>(1446f, var_5.x, var_1.x), false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 445f, var_5.x) * vec3<f32>(var_5.x, -193f, -149f)) + vec3<f32>(1082f, 374f, var_5.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1007f, 430f, var_1.x) - vec3<f32>(-955f, var_1.x, var_5.x)) + vec3<f32>(var_1.x, 1888f, var_5.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~func_1(false).x, 57965u << (_wgslsmith_div_u32(var_3.b.x, ~var_4.a.x) % 32u)));
}

