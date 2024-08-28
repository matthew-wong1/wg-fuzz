struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 7>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = ~vec3<i32>(min(28913i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-10156i, u_input.a.x, -10474i), _wgslsmith_add_vec3_i32(vec3<i32>(31917i, -1i, u_input.b), vec3<i32>(u_input.a.x, -2147483647i, u_input.b)))), select(2147483647i, ~u_input.a.x, any(vec4<bool>(false, true, true, false))) | -9329i, abs(-31764i));
    global0 = 1u;
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-183f, 1f))), Struct_1(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 7u)], global1[_wgslsmith_index_u32(1014u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]), _wgslsmith_f_op_f32(sign(-664f)), vec4<u32>(18010u, abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)]), countOneBits(global1[_wgslsmith_index_u32(20718u, 7u)]), 9757u), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1624f, -1000f), vec2<f32>(-794f, -1000f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-534f, 198f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(2921f, -2287f) * vec2<f32>(-1751f, -2013f)))), Struct_1(~vec4<u32>(global1[_wgslsmith_index_u32(0u, 7u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], global1[_wgslsmith_index_u32(1u, 7u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(699f, -123f) - -433f), ~(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(81667u, 7u)], 7u)], 7u)], 74828u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 1u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(181f, 1925f), vec2<f32>(123f, -1373f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-178f, -599f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1658f, 1595f) + _wgslsmith_div_vec2_f32(vec2<f32>(-1020f, 2293f), vec2<f32>(1951f, -1415f))))));
    let var_2 = Struct_4(var_1.a.c.a);
    let var_3 = var_1.a.b;
    return abs(var_2.a.x);
}

fn func_2(arg_0: vec4<bool>) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(~65596u, ~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(8658u, 1u), 7u)], 20449u, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56916u, 7u)], 7u)], 7u)]), 7u)]), ~abs(min(vec4<u32>(17005u, global1[_wgslsmith_index_u32(32667u, 7u)], 4294967295u, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(88234u, 7u)], 24562u, 37369u, 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(285f * _wgslsmith_f_op_f32(trunc(-840f)))), vec4<u32>(~_wgslsmith_mult_u32(5735u, global1[_wgslsmith_index_u32(35155u, 7u)]), func_3(), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], 1u, 25922u), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 0u, global1[_wgslsmith_index_u32(4294967295u, 7u)]), vec3<u32>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], global1[_wgslsmith_index_u32(37402u, 7u)]), vec3<u32>(44944u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(70196u, 7u)], 7u)], 0u)))), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~0u, 7u)], 7u)]), vec2<f32>(-1125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-125f, 168f)))) * -849f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-509f, -659f), vec2<f32>(511f, 123f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(257f, 554f) + vec2<f32>(1000f, 940f)), select(arg_0.ww, arg_0.zy, true))))));
    global0 = _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~(~(~abs(21092u))), 7u)], var_0.a.x, 1u);
    var var_1 = vec2<bool>(!(!arg_0.x), true);
    let var_2 = ~firstLeadingBit(-abs(u_input.a.x) & u_input.b);
    var_0 = Struct_1(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 33573u, 24813u, var_0.c.x), min(vec4<u32>(76354u, 0u, 49038u, global1[_wgslsmith_index_u32(var_0.a.x, 7u)]), var_0.c)), 22663u, 4294967295u << (_wgslsmith_mod_u32(var_0.c.x, 107420u) % 32u)), global1[_wgslsmith_index_u32(~(~var_0.a.x) ^ (var_0.a.x ^ ~var_0.a.x), 7u)], _wgslsmith_mod_u32(~(~32076u), 4294967295u), 1u), var_0.e.x, vec4<u32>(var_0.c.x, 12747u, min(105367u, abs(5684u)), ~36553u) & ~var_0.c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.x, 501f) + var_0.b) + _wgslsmith_f_op_f32(trunc(1f))), var_0.d.x), var_0.d);
    return select(select(vec2<bool>(false, select(all(vec4<bool>(false, true, true, arg_0.x)), arg_0.x, !var_1.x)), arg_0.wx, !(~0u <= reverseBits(var_0.a.x))), !select(select(!arg_0.yz, !arg_0.yx, arg_0.yw), select(arg_0.zw, vec2<bool>(arg_0.x, true), arg_0.x), arg_0.yw), vec2<bool>(false, true));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -142f), _wgslsmith_f_op_f32(f32(-1f) * -475f)), _wgslsmith_f_op_f32(-905f - _wgslsmith_f_op_f32(round(852f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1197f, 2117f)))), vec2<f32>(_wgslsmith_f_op_f32(-375f - -256f), 1517f))));
    let var_1 = select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), any(!func_2(vec4<bool>(false, true, true, true)))), true);
    var var_2 = ~global1[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(1u, abs(_wgslsmith_div_u32(23977u, arg_0)))), 7u)];
    let var_3 = _wgslsmith_mod_vec4_i32(-firstTrailingBit(-vec4<i32>(u_input.b, u_input.b, -1i, 1i)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 65770i, u_input.a.x, u_input.a.x), vec4<i32>(-37972i, u_input.a.x, 4241i, u_input.b)), vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i)), vec4<i32>(33297i ^ u_input.a.x, 1i, select(-1i, u_input.b, var_1.x), ~(-1i)))) << (firstLeadingBit(~vec4<u32>(0u, arg_0, 4294967295u, 0u)) % vec4<u32>(32u));
    var var_4 = Struct_1(_wgslsmith_clamp_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 7u)], 7u)], 7871u, 8363u) | vec4<u32>(4294967295u, 38320u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], global1[_wgslsmith_index_u32(0u, 7u)]), vec4<u32>(global1[_wgslsmith_index_u32(32980u, 7u)], global1[_wgslsmith_index_u32(42390u, 7u)], 34036u, arg_0), _wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(arg_0, 7u)], global1[_wgslsmith_index_u32(arg_0, 7u)], arg_0, 12180u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 7u)], 7u)], 0u, arg_0, global1[_wgslsmith_index_u32(4294967295u, 7u)]))), ~((vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 1u, 3496u, global1[_wgslsmith_index_u32(26283u, 7u)]) << (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 23530u, 1u, 1u) % vec4<u32>(32u))) ^ vec4<u32>(4294967295u, arg_0, arg_0, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 7u)], 7u)])), vec4<u32>(~(~global1[_wgslsmith_index_u32(1u, 7u)]), 1u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(15150u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39273u, 7u)], 7u)], global1[_wgslsmith_index_u32(arg_0, 7u)]), vec3<u32>(26411u, global1[_wgslsmith_index_u32(arg_0, 7u)], global1[_wgslsmith_index_u32(42309u, 7u)]), false), max(vec3<u32>(35321u, global1[_wgslsmith_index_u32(arg_0, 7u)], 23414u), vec3<u32>(45650u, arg_0, arg_0))), firstTrailingBit(4294967295u))), 669f, vec4<u32>(_wgslsmith_add_u32(select(global1[_wgslsmith_index_u32(17546u, 7u)] >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10448u, 7u)], 7u)] % 32u), 49464u, var_1.x), global1[_wgslsmith_index_u32(~countOneBits(global1[_wgslsmith_index_u32(31669u, 7u)]), 7u)]), max(1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(24199u, 7u)], arg_0, arg_0), vec4<u32>(43335u, arg_0, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 7u)], 7u)])), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0 >> (4294967295u % 32u), max(76760u, 9294u)), 7u)]), global1[_wgslsmith_index_u32(~(~(~75249u)), 7u)], 13190u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1601f, _wgslsmith_f_op_f32(min(852f, 1040f)))) * var_0), vec2<f32>(386f, 1381f));
    return Struct_3(Struct_2(-1943f, Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(arg_0, 7u)], 5516u, global1[_wgslsmith_index_u32(arg_0, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)]), vec4<u32>(4294967295u, arg_0, var_4.c.x, global1[_wgslsmith_index_u32(var_4.a.x, 7u)])), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.x, 1225f))), var_4.c, vec2<f32>(-1406f, _wgslsmith_f_op_f32(-var_0.x)), var_0), Struct_1(abs(abs(vec4<u32>(global1[_wgslsmith_index_u32(var_4.a.x, 7u)], arg_0, arg_0, 29921u))), var_4.d.x, ~vec4<u32>(var_4.c.x, var_4.a.x, var_4.c.x, 1u), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-var_4.e.x)), vec2<f32>(var_4.d.x, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1522f;
    var var_1 = Struct_4(vec4<u32>(68769u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(39701u, 7u)], 7u)], 0u >> (0u % 32u)), 7u)]), ~(1225u >> (global1[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(0u, 7u)]), 7u)] % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], global1[_wgslsmith_index_u32(34074u, 7u)], 27208u), vec3<u32>(41047u, global1[_wgslsmith_index_u32(43735u, 7u)], 103918u)), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 0u, 4294967295u) ^ vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(62435u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)], 7u)], 0u, 17900u)), vec3<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41890u, 7u)], 7u)], 0u), min(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33385u, 7u)], 7u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21203u, 7u)] >> (global1[_wgslsmith_index_u32(1u, 7u)] % 32u), 7u)]))));
    let var_2 = func_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(firstLeadingBit(global1[_wgslsmith_index_u32(var_1.a.x, 7u)]), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.a.x, 7u)], 7u)], 7u)])), ~global1[_wgslsmith_index_u32(firstTrailingBit(var_1.a.x), 7u)]));
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_1.a, vec2<u32>(~(~(~11349u)), 4294967295u));
}

