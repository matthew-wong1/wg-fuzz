struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(315f, -522f, 1322f, 778f, -205f, -1000f, -1222f, 472f, -2248f, -127f, 1000f, -1000f, 1000f, -492f, -839f, -980f, 913f);

var<private> global1: array<vec2<u32>, 12>;

var<private> global2: array<bool, 4>;

var<private> global3: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(0i, 11011i, 1i), vec3<i32>(-4397i, 8584i, -28725i), vec3<i32>(1i, -8746i, 1i), vec3<i32>(2147483647i, -37285i, 27791i), vec3<i32>(-1i, -1i, -1009i), vec3<i32>(8124i, -76505i, 1i), vec3<i32>(0i, 2147483647i, 36576i), vec3<i32>(25241i, 1723i, 36513i), vec3<i32>(2170i, -1i, 36061i), vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(8350i, -849i, 71906i), vec3<i32>(i32(-2147483648), -16143i, -4804i), vec3<i32>(-21049i, 25194i, -114i), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(15780i, -59333i, -1i), vec3<i32>(0i, -1469i, 0i), vec3<i32>(-4063i, 18768i, -42233i), vec3<i32>(-1i, 0i, -52223i), vec3<i32>(-92129i, -41235i, 46434i), vec3<i32>(0i, 14856i, -1i), vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(-19594i, 0i, 24370i), vec3<i32>(-11230i, -1i, -14050i), vec3<i32>(i32(-2147483648), 1i, -1i), vec3<i32>(2147483647i, 4790i, 80573i), vec3<i32>(-4787i, 10352i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -1i, -7548i), vec3<i32>(i32(-2147483648), -861i, i32(-2147483648)), vec3<i32>(10886i, 1i, -56336i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = select(!(!(!select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], false, true, global2[_wgslsmith_index_u32(u_input.c, 4u)]), vec4<bool>(true, arg_0.e, true, false), vec4<bool>(true, true, true, true)))), !vec4<bool>((false && arg_0.e) != global2[_wgslsmith_index_u32(71629u, 4u)], true, !arg_0.e, select(select(true, false, false), any(vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 4u)], true)), true)), all(vec4<bool>(~arg_0.d <= ~1u, all(vec2<bool>(true, false)), true, true)));
    var var_1 = arg_0.d & 31287u;
    global3 = array<vec3<i32>, 29>();
    var_0 = !select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, u_input.e.x >= 40731i, any(var_0.xxx) || true, true | global2[_wgslsmith_index_u32(u_input.b, 4u)]), select(!select(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(u_input.c, 4u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(37296u, 4u)], global2[_wgslsmith_index_u32(arg_0.d, 4u)], true), global2[_wgslsmith_index_u32(arg_0.d, 4u)]), vec4<bool>(!arg_0.e, any(vec2<bool>(true, true)), global2[_wgslsmith_index_u32(reverseBits(arg_0.d), 4u)], true), select(!vec4<bool>(global2[_wgslsmith_index_u32(20745u, 4u)], arg_0.e, true, true), select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 4u)], true, arg_0.e, true), vec4<bool>(false, false, arg_0.e, global2[_wgslsmith_index_u32(u_input.a.x, 4u)]), global2[_wgslsmith_index_u32(1u, 4u)]), all(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(arg_0.d, 4u)], true, false)))));
    let var_2 = arg_0;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(50542u, 30113u, ~1u) | _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, u_input.a) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.d, 4294967295u, var_2.d), vec3<u32>(4294967295u, 89254u, 4294967295u)) % vec3<u32>(32u)), u_input.a, _wgslsmith_mult_vec3_u32(~vec3<u32>(9964u, arg_0.d, 36975u), ~u_input.a)), u_input.a);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-222f + arg_1.c.x);
    let var_1 = Struct_1(u_input.e, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1000f, global0[_wgslsmith_index_u32(0u, 17u)])))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-148f)), arg_2)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -270f), arg_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + 846f) + _wgslsmith_div_f32(-1000f, arg_1.c.x)))), var_0), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(arg_1.c, vec2<f32>(1175f, arg_1.c.x), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(u_input.a.x, 4u)]))), arg_0.yx)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1192f, 1655f)))), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(887u, arg_1.d, u_input.a.x) ^ (vec3<u32>(arg_1.d, arg_1.d, 9204u) ^ u_input.a), (vec3<u32>(u_input.c, 87519u, 41946u) >> (u_input.a % vec3<u32>(32u))) >> (u_input.a % vec3<u32>(32u)))), any(!select(vec4<bool>(false, arg_1.e, arg_1.e, false), vec4<bool>(true, arg_1.e, false, global2[_wgslsmith_index_u32(arg_1.d, 4u)]), false)) | (!any(vec4<bool>(global2[_wgslsmith_index_u32(arg_1.d, 4u)], global2[_wgslsmith_index_u32(arg_1.d, 4u)], global2[_wgslsmith_index_u32(5083u, 4u)], false)) || (any(vec2<bool>(true, false)) | !global2[_wgslsmith_index_u32(29626u, 4u)])));
    let var_2 = ~min(reverseBits(-25239i), 0i);
    global2 = array<bool, 4>();
    let var_3 = Struct_2(arg_0.x, var_1.c, _wgslsmith_div_u32(var_1.d, 1u));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_1.b.yy + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -188f), 2006f))));
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    var var_0 = ~_wgslsmith_add_vec2_i32(u_input.d.yx, u_input.e.wy);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.x, 17u)] - -1247f))), global0[_wgslsmith_index_u32(0u, 17u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b, 17u)], -290f)), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, var_0.x, 1i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, var_0.x, u_input.d.x, var_0.x), vec4<i32>(2147483647i, -28943i, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -228f, -1036f) + vec3<f32>(-1000f, global0[_wgslsmith_index_u32(0u, 17u)], 394f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4537u, 17u)], global0[_wgslsmith_index_u32(u_input.c, 17u)])) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2234f, 1000f), vec2<f32>(global0[_wgslsmith_index_u32(15055u, 17u)], -1500f), vec2<bool>(false, global2[_wgslsmith_index_u32(arg_0.x, 4u)])))), func_3(Struct_1(vec4<i32>(2147483647i, u_input.d.x, -2147483647i, -20849i), vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 17u)], 355f, global0[_wgslsmith_index_u32(arg_0.x, 17u)]), vec2<f32>(-211f, global0[_wgslsmith_index_u32(arg_0.x, 17u)]), 51948u, true)), !all(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 4u)], global2[_wgslsmith_index_u32(0u, 4u)]))), global0[_wgslsmith_index_u32(countOneBits(30879u), 17u)])) + vec2<f32>(-252f, 765f));
    var var_2 = 39937u & firstTrailingBit(arg_0.x);
    let var_3 = true;
    global0 = array<f32, 17>();
    return min(_wgslsmith_add_u32(abs(0u), 1u), arg_0.x);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(func_2(vec2<u32>(arg_1.d, arg_1.d) ^ vec2<u32>(u_input.b, u_input.c)) | 4294967295u, 17u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -825f), arg_1.b.x) + arg_1.c.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-549f, arg_1.b.x)), 1u);
    global2 = array<bool, 4>();
    let var_1 = min(1i, ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~u_input.d.zzw, arg_1.a.wxw), reverseBits(arg_1.a.zzw)));
    var var_2 = Struct_1(_wgslsmith_sub_vec4_i32(u_input.e, _wgslsmith_mult_vec4_i32(select(-u_input.d, firstTrailingBit(arg_2), select(vec4<bool>(false, true, arg_1.e, arg_1.e), vec4<bool>(arg_1.e, arg_0, true, false), false)), arg_2)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.b - arg_1.b))), _wgslsmith_f_op_vec3_f32(-arg_1.b)), vec2<f32>(var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.c, 17u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * 1208f))), ~u_input.a.x, all(vec3<bool>(!(!arg_0), true, any(select(vec2<bool>(arg_0, true), vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 4u)], true))))));
    let var_3 = Struct_1(~vec4<i32>(1i, arg_2.x, -2147483647i, firstTrailingBit(var_2.a.x)), vec3<f32>(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(-103f)))), -1285f), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1178f * 199f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-812f)))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, ~var_0.c), 17u)])), 79377u << ((~0u | ~var_2.d) % 32u), arg_0);
    return _wgslsmith_sub_i32(var_2.a.x, reverseBits(arg_2.x)) == max(_wgslsmith_clamp_i32(arg_2.x >> ((var_0.c >> (1u % 32u)) % 32u), 10419i, arg_2.x), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 12>();
    global0 = array<f32, 17>();
    global0 = array<f32, 17>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 1u), 17u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(279f + 920f)))));
    let var_1 = Struct_3(vec2<bool>(all(vec4<bool>(any(vec3<bool>(true, false, false)), any(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 4u)], false)), func_1(false, Struct_1(u_input.e, vec3<f32>(-585f, global0[_wgslsmith_index_u32(0u, 17u)], -1149f), var_0, u_input.b, false), vec4<i32>(1i, u_input.e.x, u_input.d.x, -52074i)), select(true, global2[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(u_input.a.x, 4u)]))), true));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -185f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 17u)] - var_0.x) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-677f, 1388f), _wgslsmith_f_op_f32(min(-1259f, global0[_wgslsmith_index_u32(u_input.c, 17u)]))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(572f, 216f, -2201f)), Struct_1(vec4<i32>(u_input.d.x, -96269i, u_input.e.x, u_input.e.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(44043u, 17u)], var_0.x) - vec3<f32>(205f, var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 17u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -268f) + var_0), _wgslsmith_add_u32(26781u, 0u), global2[_wgslsmith_index_u32(84905u, 4u)] || false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(1u, 48162u, u_input.a.x, 0u) >> (vec4<u32>(u_input.b, u_input.c, 4294967295u, 24059u) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(~abs(vec4<u32>(u_input.c, 22513u, 29327u, u_input.c)), ~(~vec4<u32>(0u, 1u, u_input.a.x, 24885u)))), u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-618f, -610f, 277f, var_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], -620f, 972f)))))));
}

