struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(40878i, -1387i, 719i, 0i, 44134i, 0i, 42696i, -78204i, 2147483647i, -8833i, -1i, 1i, 2147483647i, -1i, 0i, -39833i, -33340i, 0i, 42426i, -4651i, i32(-2147483648), 0i, 23251i, 2147483647i, 2147483647i, 20789i, -71165i, 40203i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_5) -> i32 {
    return _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-arg_0.a.a.xy, vec2<i32>(-arg_0.b.b.b, -2147483647i)), ~vec2<i32>(-44055i, 29831i)) ^ abs(countOneBits(arg_0.b.b.b));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> vec2<f32> {
    var var_0 = any(!select(vec4<bool>(false, any(vec4<bool>(true, true, true, true)), false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(true, true, false, false)), true, true)));
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    var var_1 = Struct_3(~vec4<i32>(-_wgslsmith_clamp_i32(u_input.a.x, 12344i, -21651i), func_3(Struct_5(Struct_3(vec4<i32>(38993i, u_input.c.x, u_input.a.x, -1i), Struct_1(vec4<f32>(1254f, -750f, 1368f, 754f), u_input.c.x), Struct_1(vec4<f32>(-768f, 116f, -409f, -177f), 1i), u_input.a.xz, Struct_2(true, Struct_1(vec4<f32>(-1243f, 468f, -604f, -324f), u_input.a.x))), Struct_2(false, Struct_1(vec4<f32>(-297f, 924f, 1179f, 947f), -2147483647i)))), _wgslsmith_sub_i32(u_input.d.x << (4294967295u % 32u), u_input.c.x), u_input.d.x), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1, arg_0.x), arg_1), 28u)]), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -853f), 2634f, _wgslsmith_f_op_f32(-1117f - 2508f), _wgslsmith_f_op_f32(194f + 1354f)))), abs(-16474i)), vec2<i32>(39178i, -2147483647i), Struct_2(any(!select(vec2<bool>(false, false), vec2<bool>(true, false), true)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-309f, 824f, 420f, -1428f))), global0[_wgslsmith_index_u32(4294967295u, 28u)])));
    var var_2 = Struct_3(vec4<i32>(u_input.c.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_1, 1u), 28u)], global0[_wgslsmith_index_u32(151015u, 28u)], _wgslsmith_add_i32(-global0[_wgslsmith_index_u32(56502u, 28u)], global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 28u)])), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(150f, var_1.b.a.x, 710f, -306f) + _wgslsmith_f_op_vec4_f32(var_1.c.a + vec4<f32>(544f, 678f, 1580f, -1187f))))), -(u_input.d.x << (arg_1 % 32u)) & 9260i), Struct_1(var_1.c.a, u_input.a.x), u_input.b.xz, Struct_2(any(vec2<bool>(true | var_1.e.a, !var_1.e.a)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1163f, -638f, var_1.e.b.a.x, var_1.c.a.x)), 1i)));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1234f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1125f)), _wgslsmith_f_op_f32(floor(1156f)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_5) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(firstLeadingBit(vec2<u32>(1u, 1u)), 30460u << (countOneBits(1u) % 32u)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-147f, arg_2.b.b.a.x)), _wgslsmith_div_f32(-1000f, arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.b.b.a.yx + vec2<f32>(-1000f, arg_1)))))), select(vec2<bool>(true, true), vec2<bool>(!(20444i >= arg_2.a.e.b.b), all(select(vec4<bool>(true, true, arg_2.a.e.a, false), vec4<bool>(arg_2.b.a, arg_2.b.a, false, false), true))), any(!(!vec3<bool>(false, arg_2.a.e.a, arg_2.b.a))))));
    var var_1 = true;
    let var_2 = arg_2.a.e;
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(135f, _wgslsmith_f_op_f32(var_0.x - arg_1), any(vec2<bool>(false, true))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))))));
    var var_4 = var_2.b;
    return vec3<u32>(59414u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 18612u), _wgslsmith_clamp_u32(18499u, 16142u, 4294967295u)), 0u, 25008u), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(65405u, 27200u))))), _wgslsmith_mod_u32(81133u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(17777u, ~4294967295u, ~0u), func_1(firstTrailingBit(vec2<i32>(5910i, global0[_wgslsmith_index_u32(1u, 28u)])), _wgslsmith_div_f32(150f, 393f), Struct_5(Struct_3(vec4<i32>(2147483647i, u_input.d.x, -10589i, global0[_wgslsmith_index_u32(0u, 28u)]), Struct_1(vec4<f32>(-1288f, 1218f, -567f, 1174f), global0[_wgslsmith_index_u32(1u, 28u)]), Struct_1(vec4<f32>(1349f, 247f, -1263f, 183f), u_input.b.x), vec2<i32>(-1i, -1i), Struct_2(true, Struct_1(vec4<f32>(1300f, -263f, -1173f, 1375f), global0[_wgslsmith_index_u32(0u, 28u)]))), Struct_2(true, Struct_1(vec4<f32>(416f, -148f, -940f, -1343f), -1i)))) & _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(32761u, 1u, 39973u)))), func_1(~u_input.a.xz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1182f + 935f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-584f)), _wgslsmith_f_op_f32(f32(-1f) * -179f)))), Struct_5(Struct_3(-u_input.a, Struct_1(vec4<f32>(285f, -1017f, 1000f, -293f), u_input.d.x), Struct_1(vec4<f32>(-940f, 691f, -143f, 406f), u_input.d.x), vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(36845u, 28u)]), Struct_2(true, Struct_1(vec4<f32>(-599f, 1101f, 112f, 284f), global0[_wgslsmith_index_u32(18123u, 28u)]))), Struct_2(true, Struct_1(vec4<f32>(-136f, -641f, -172f, 915f), global0[_wgslsmith_index_u32(6530u, 28u)])))));
    var var_1 = -230f;
    var var_2 = !(!select(vec4<bool>(true, select(true, false, true), select(true, true, false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false))), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true)));
    let var_3 = select(!vec4<bool>(true, false, abs(var_0.x) > 1u, true), vec4<bool>(false, !var_2.x, true, all(var_2.wwy)), false);
    var var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -100f) - _wgslsmith_div_vec2_f32(vec2<f32>(-840f, -1006f), vec2<f32>(375f, -215f)))))), _wgslsmith_f_op_vec2_f32(func_2(vec2<u32>(~43313u, var_0.x), abs(var_0.x)))));
    var_1 = -1220f;
    var var_5 = _wgslsmith_div_vec3_i32(u_input.b, abs(u_input.c));
    var var_6 = Struct_2(select(abs(4294967295u), ~firstLeadingBit(var_0.x), false) <= ~2146u, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.x, -2137f, -695f, var_4.x), vec4<f32>(var_4.x, 463f, -380f, -1194f), var_3)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.x, -1000f, 315f, var_4.x), vec4<f32>(var_4.x, 521f, var_4.x, var_4.x), var_2.x)))), 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(-486f, 1u, var_0.x, countOneBits(var_0.xy));
}

