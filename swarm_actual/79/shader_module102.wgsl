struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<vec2<i32>, 15>;

var<private> global2: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(-1417f, -488f, 542f), vec3<f32>(360f, -524f, 301f), vec3<f32>(-770f, -1272f, 1777f), vec3<f32>(-563f, -434f, 2027f), vec3<f32>(1415f, 601f, 642f), vec3<f32>(997f, -685f, -1000f), vec3<f32>(-1112f, -560f, 412f), vec3<f32>(-489f, 719f, -199f), vec3<f32>(-574f, 113f, 378f), vec3<f32>(1008f, -1180f, -354f), vec3<f32>(718f, -1000f, -764f));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    global2 = array<vec3<f32>, 11>();
    var var_0 = arg_1;
    global2 = array<vec3<f32>, 11>();
    var var_1 = -38899i;
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(2302f)), 799f, var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)));
    return ((1u >> (_wgslsmith_mult_u32(arg_1.e, arg_1.b << (4294967295u % 32u)) % 32u)) >> (~arg_1.b % 32u)) << (arg_1.b % 32u);
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(693f, 1985f, arg_0.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) + vec3<f32>(arg_0.x, -103f, 2142f)))), arg_0.xxw, vec3<bool>(true, true, true))), select(func_3(all(vec3<bool>(false, true, false)) || true, Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.zzy - vec3<f32>(-193f, 772f, -1412f)), ~5414u, vec2<f32>(arg_0.x, -616f), -1i, ~1u)), (func_3(false, Struct_1(vec3<f32>(arg_0.x, -814f, arg_0.x), 4294967295u, vec2<f32>(649f, -1099f), u_input.b.x, 50801u)) & 4294967295u) | 1u, true), vec2<f32>(arg_0.x, -2348f), _wgslsmith_mod_i32(max(u_input.b.x, 33039i), _wgslsmith_mod_i32(36578i, _wgslsmith_sub_i32(42414i, u_input.b.x))) << (_wgslsmith_dot_vec3_u32(max(countOneBits(vec3<u32>(1u, 4294967295u, 33044u)), _wgslsmith_mult_vec3_u32(vec3<u32>(2231u, 68029u, 32856u), vec3<u32>(44006u, 43951u, 42949u))), firstLeadingBit(vec3<u32>(39884u, 4294967295u, 0u))) % 32u), 1u);
    return 22923u;
}

fn func_4(arg_0: u32) -> Struct_3 {
    var var_0 = vec4<u32>(func_3(true, Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-745f, 1210f, -931f), global2[_wgslsmith_index_u32(arg_0, 11u)], true)), 4017u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1493f, -975f)), u_input.a, ~6448u)), ~1u, reverseBits(_wgslsmith_mult_u32(0u, 35414u)), 20089u);
    let var_1 = Struct_3(vec3<f32>(-891f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -253f), _wgslsmith_f_op_f32(floor(-859f))), -948f), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-131f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.b, -673f, -221f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(214f, 486f, var_1.a.x, -321f) - vec4<f32>(var_1.a.x, -1000f, var_1.b, var_1.a.x))), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b, 1114f, -2749f, -542f)))))) * vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1476f)), _wgslsmith_f_op_f32(max(var_1.b, _wgslsmith_f_op_f32(abs(var_1.b))))), var_1.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b - var_1.b), var_1.a.x)), 1124f))));
    global2 = array<vec3<f32>, 11>();
    var var_3 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false))), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)))), vec2<bool>(true, true), true), true);
    return Struct_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(var_1.a))))))), _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(ceil(var_2.x))));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = func_4(func_2(vec4<f32>(arg_1.d.c.x, _wgslsmith_f_op_f32(sign(2145f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.c.x, -2680f, arg_1.c.x))), arg_0)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a) - _wgslsmith_f_op_vec3_f32(min(arg_2.a, arg_1.a))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.d.a, _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(13722u, 11u)])) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(arg_2.a, vec3<f32>(-229f, 3534f, -439f)), arg_2.a)))), arg_2.b >> (arg_1.b % 32u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.a.x))) + arg_2.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-arg_1.d.a.x)) * _wgslsmith_f_op_f32(min(-1279f, _wgslsmith_div_f32(arg_0, 1037f))))), arg_1.d.d, abs(~abs(arg_1.d.b)));
    global1 = array<vec2<i32>, 15>();
    var var_2 = 1251f;
    global2 = array<vec3<f32>, 11>();
    return vec2<bool>(true, true);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = select(!(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)))), select(vec4<bool>(true, true, false, true), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false), vec4<bool>(all(vec4<bool>(true, true, true, false)), false, true, false), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false))), vec4<bool>(true, true, true, true));
    let var_1 = var_0.zy;
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(select(1u, 23737u >> (1u % 32u), true), min(func_3(var_0.x, Struct_1(vec3<f32>(-1042f, -190f, -1000f), 3711u, vec2<f32>(904f, 1327f), -19379i, 24955u)), abs(1u)), 55068u), vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u)), 25910u, 1u)), 16u)];
    var var_3 = var_2.d.e >> (4294967295u % 32u);
    let var_4 = !(!(!select(select(var_0.wxy, vec3<bool>(false, var_2.c.x, var_0.x), var_0.xzy), var_0.xww, var_0.wzx)));
    return Struct_3(var_2.a, _wgslsmith_f_op_f32(-var_2.d.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.b, _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -_wgslsmith_mult_i32(2147483647i, 0i)), countOneBits(select(global1[_wgslsmith_index_u32(24121u, 15u)] | global1[_wgslsmith_index_u32(35113u, 15u)], global1[_wgslsmith_index_u32(reverseBits(4294967295u), 15u)], func_1(436f, Struct_2(global2[_wgslsmith_index_u32(61650u, 11u)], 1u, vec2<bool>(false, true), Struct_1(vec3<f32>(531f, 903f, -1523f), 1u, vec2<f32>(749f, 1313f), 31968i, 4294967295u)), Struct_1(vec3<f32>(-576f, 535f, 469f), 4294967295u, vec2<f32>(-1822f, 290f), u_input.b.x, 1u))))));
    let var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(global1[_wgslsmith_index_u32(~(1u << (0u % 32u)), 15u)], min(reverseBits(vec2<i32>(1i, -47458i)), vec2<i32>(-8274i, 12522i))), vec2<i32>(u_input.b.x & (1316i ^ u_input.a), _wgslsmith_mod_i32(~u_input.a, ~u_input.b.x))), u_input.a, abs(u_input.b.x));
    let var_2 = ~_wgslsmith_dot_vec4_u32(abs(select(~vec4<u32>(4294967295u, 40550u, 20671u, 3367u), ~vec4<u32>(40700u, 4294967295u, 121819u, 4294967295u), true)), firstLeadingBit(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(31439u, 24247u, 0u, 0u)), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u))));
    let var_3 = ~var_1.x << (((_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(42157u, 11297u, var_2)), min(vec3<u32>(1u, 10917u, 2936u), vec3<u32>(var_2, 1u, 0u))) | ~_wgslsmith_sub_u32(var_2, var_2)) >> (~var_2 % 32u)) % 32u);
    var var_4 = global0[_wgslsmith_index_u32(max(~(~var_2), select(firstLeadingBit(var_2), var_2 << (31724u % 32u), any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true))))), 16u)];
    let var_5 = _wgslsmith_f_op_vec3_f32(round(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(abs(var_4.b << (var_4.d.e % 32u)), _wgslsmith_sub_u32(abs(var_4.d.b), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, var_2, var_2, 60675u), vec4<u32>(1u, var_2, var_4.b, 69724u))), reverseBits(var_2)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.d.a.x, 711f, var_4.a.x, 313f) * vec4<f32>(var_0.b, var_0.a.x, -326f, -526f)))), ~(~1u) | firstTrailingBit(_wgslsmith_add_u32(var_2, var_4.b))), 11u)]));
    let var_6 = func_4(~countOneBits(var_4.b)).b;
    global1 = array<vec2<i32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(select(4294967295u, 10551u, true), ~1u, firstTrailingBit(67269u), select(var_4.d.b, var_2, true))), select(max((vec2<u32>(0u, 4294967295u) >> (vec2<u32>(6346u, var_4.b) % vec2<u32>(32u))) & ~vec2<u32>(var_4.b, var_4.d.e), ~vec2<u32>(22049u, 0u)), vec2<u32>(~_wgslsmith_sub_u32(var_4.b, 0u), 32351u), var_4.c));
}

