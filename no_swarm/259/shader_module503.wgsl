struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: vec4<f32>,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_4, 20>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_3(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 608f, -187f)), vec4<f32>(1366f, -589f, -540f, global0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1029f, global0.x, global0.x, 851f)))), 382f, vec2<bool>(all(vec2<bool>(true, true)), firstTrailingBit(0u) < ~4294967295u)));
    let var_1 = firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 31499u), vec2<u32>(19814u, 75024u)), 27712u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 0u, 1u, 13318u)), vec4<u32>(1u, 1u, 1u, 1u)), ~29370u), vec4<u32>(76675u << (_wgslsmith_div_u32(18243u, 8017u) % 32u), select(1u, min(4294967295u, 4294967295u), true), 1u, 1u)));
    global1 = array<Struct_4, 20>();
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-868f, 657f, -1094f, global0.x))))), vec4<f32>(-688f, _wgslsmith_f_op_f32(-global0.x), -159f, _wgslsmith_f_op_f32(ceil(global0.x))))))) - var_0.a.b);
    return -reverseBits(~(~vec3<i32>(u_input.a, 23315i, 109793i) ^ vec3<i32>(u_input.a, -2147483647i, -15066i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_2) -> Struct_1 {
    global0 = vec4<f32>(arg_3.b, _wgslsmith_div_f32(-1085f, -1285f), _wgslsmith_f_op_f32(trunc(arg_3.c.b.x)), arg_1.a.c.c);
    global1 = array<Struct_4, 20>();
    let var_0 = func_3();
    global0 = arg_3.c.b;
    let var_1 = vec4<u32>(4294967295u, _wgslsmith_mult_u32(arg_0.x, 9180u), arg_0.x, _wgslsmith_dot_vec2_u32(arg_0.zy, select(reverseBits(arg_0.xw & vec2<u32>(arg_0.x, 0u)), max(vec2<u32>(1u, 10118u), arg_0.wx) << ((arg_0.zz << (arg_0.wy % vec2<u32>(32u))) % vec2<u32>(32u)), all(arg_1.a.c.a.wx) || (false & arg_3.c.d.x))));
    return arg_1.a.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_4) -> Struct_1 {
    global0 = arg_2.a.c.b;
    let var_0 = _wgslsmith_sub_i32(~min(~arg_2.b, u_input.a), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~arg_2.b, -(arg_2.b << (arg_1.b % 32u)), -_wgslsmith_div_i32(0i, u_input.a)), arg_2.b, u_input.a));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x + global0.x)), _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(round(-831f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.a.d, _wgslsmith_f_op_f32(global0.x * -709f), _wgslsmith_f_op_f32(f32(-1f) * -227f), arg_0.c))))));
    var var_1 = arg_1.b;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_0.b, arg_0.b)))))));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: i32) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(~(~1u), 20u)];
    global1 = array<Struct_4, 20>();
    var var_1 = select(_wgslsmith_clamp_vec3_u32(vec3<u32>(40953u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 22579u, 1u, 6779u), vec4<u32>(13500u, 4294967295u, 1071u, 23815u)), ~5718u) >> (vec3<u32>(~4294967295u, firstTrailingBit(79245u), ~18253u) % vec3<u32>(32u)), ~(~firstLeadingBit(vec3<u32>(0u, 28761u, 23646u))), vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(~(~10511u), select(48040u, ~70295u, global0.x == 364f), 1u), false);
    var var_2 = Struct_5(vec4<bool>(arg_0.a.x, false, !(!arg_0.a.x), !(var_1.x >= var_1.x) && var_0.a.a), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(19980u, 4294967295u, 12690u, 5119u), vec4<u32>(1u, var_1.x, var_1.x, 16606u)), _wgslsmith_div_u32(0u, 19273u), var_1.x, ~1u), ~firstTrailingBit(vec4<u32>(5494u, 5344u, var_1.x, 0u))), var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.d)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.b))), _wgslsmith_f_op_f32(min(1590f, 1525f)), _wgslsmith_f_op_f32(f32(-1f) * -1383f))), !func_2(vec4<u32>(var_1.x, ~59860u, _wgslsmith_clamp_u32(var_1.x, 4294967295u, var_1.x), _wgslsmith_sub_u32(33264u, 1u)), Struct_4(Struct_2(arg_2.c.a.x, arg_0.b.x, Struct_1(arg_0.a, vec4<f32>(global0.x, 389f, global0.x, -183f), var_0.a.b, var_0.a.c.a.wy), -1000f), var_0.b), Struct_4(var_0.a, min(10331i, var_0.b)), Struct_2(false | arg_2.c.a.x, -1369f, Struct_1(arg_0.a, vec4<f32>(1053f, arg_2.c.c, 2056f, global0.x), 1353f, vec2<bool>(false, arg_1.x)), 1392f)).a, _wgslsmith_mod_u32(var_1.x, firstTrailingBit(var_1.x >> (0u % 32u)) & select(9358u, 25778u, !var_0.a.c.d.x)));
    global1 = array<Struct_4, 20>();
    return 29835i;
}

fn func_1(arg_0: f32, arg_1: Struct_5) -> Struct_1 {
    var var_0 = ~arg_1.e;
    let var_1 = -vec2<i32>(func_5(func_4(func_2(vec4<u32>(6343u, 77529u, 1u, arg_1.b), global1[_wgslsmith_index_u32(10041u, 20u)], global1[_wgslsmith_index_u32(arg_1.b, 20u)], Struct_2(arg_1.a.x, -394f, Struct_1(arg_1.a, arg_1.c, 355f, arg_1.d.yz), -361f)), Struct_5(vec4<bool>(arg_1.d.x, arg_1.d.x, false, true), arg_1.e, vec4<f32>(global0.x, 1217f, -757f, 949f), arg_1.a, 0u), global1[_wgslsmith_index_u32(18858u >> (arg_1.b % 32u), 20u)]), vec3<bool>(true, true, true), Struct_2(select(true, arg_1.d.x, arg_1.d.x), _wgslsmith_f_op_f32(ceil(global0.x)), func_2(vec4<u32>(arg_1.e, arg_1.b, 0u, arg_1.b), Struct_4(Struct_2(arg_1.a.x, arg_0, Struct_1(vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x, arg_1.d.x), vec4<f32>(-1605f, -748f, -766f, -1018f), -1000f, arg_1.d.zx), -940f), u_input.a), Struct_4(Struct_2(arg_1.a.x, -599f, Struct_1(arg_1.a, vec4<f32>(-2750f, global0.x, -806f, 1000f), 1162f, vec2<bool>(true, true)), global0.x), -1i), Struct_2(arg_1.a.x, 590f, Struct_1(vec4<bool>(true, true, true, true), arg_1.c, -1003f, arg_1.d.wx), -328f)), global0.x), _wgslsmith_mod_i32(firstTrailingBit(u_input.a), 0i)), ~1473i);
    let var_2 = func_2(vec4<u32>(arg_1.b, ~(~(~75457u)), arg_1.b, _wgslsmith_div_u32(~_wgslsmith_mult_u32(1u, arg_1.b), ~arg_1.b)), Struct_4(Struct_2(-709f > _wgslsmith_f_op_f32(828f - arg_1.c.x), 756f, func_4(func_4(Struct_1(arg_1.a, vec4<f32>(1179f, global0.x, 2272f, arg_0), arg_0, arg_1.a.zy), Struct_5(vec4<bool>(arg_1.d.x, arg_1.d.x, true, true), arg_1.e, vec4<f32>(arg_0, 407f, global0.x, arg_0), arg_1.d, 0u), Struct_4(Struct_2(false, -1600f, Struct_1(arg_1.d, arg_1.c, 1170f, arg_1.d.xy), global0.x), u_input.a)), Struct_5(vec4<bool>(true, false, arg_1.d.x, false), arg_1.e, vec4<f32>(arg_0, 1814f, arg_1.c.x, global0.x), vec4<bool>(false, true, arg_1.a.x, false), 4294967295u), global1[_wgslsmith_index_u32(1956u, 20u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2073f + -1119f))), var_1.x), Struct_4(Struct_2(false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_1.c.x)), _wgslsmith_f_op_f32(423f * 1000f))), Struct_1(arg_1.a, arg_1.c, _wgslsmith_f_op_f32(round(global0.x)), arg_1.d.wz), _wgslsmith_div_f32(-1046f, _wgslsmith_f_op_f32(arg_0 - arg_0))), _wgslsmith_clamp_i32(reverseBits(0i), var_1.x, var_1.x ^ func_5(Struct_1(arg_1.d, arg_1.c, global0.x, arg_1.a.zy), arg_1.d.yxz, Struct_2(arg_1.d.x, 357f, Struct_1(vec4<bool>(false, arg_1.d.x, arg_1.a.x, false), vec4<f32>(1029f, arg_0, -1067f, global0.x), arg_1.c.x, arg_1.a.xw), arg_1.c.x), var_1.x))), Struct_2(true, -597f, Struct_1(arg_1.d, vec4<f32>(arg_0, _wgslsmith_div_f32(-154f, arg_0), _wgslsmith_f_op_f32(min(global0.x, -1315f)), _wgslsmith_f_op_f32(max(1394f, 214f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) - _wgslsmith_f_op_f32(global0.x * global0.x)), vec2<bool>(!arg_1.a.x, arg_1.a.x)), global0.x)).a.wxx;
    return func_4(Struct_1(arg_1.a, vec4<f32>(-1453f, _wgslsmith_f_op_f32(1f - -665f), global0.x, arg_1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -298f), select(vec2<bool>(false, arg_1.e <= arg_1.e), select(var_2.xz, !vec2<bool>(false, arg_1.a.x), true), arg_1.d.x)), arg_1, global1[_wgslsmith_index_u32(4294967295u, 20u)]);
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: f32, arg_3: f32) -> Struct_3 {
    var var_0 = global0.x <= arg_3;
    var_0 = _wgslsmith_add_u32(1u, 0u) >= max(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(44473u, 87398u), vec2<u32>(16865u, 44562u))), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(29015u, 4294967295u, 27824u, 4294967295u), ~vec4<u32>(40947u, 4294967295u, 4294967295u, 1u))));
    global1 = array<Struct_4, 20>();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a.c.b + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a.c.b) - _wgslsmith_f_op_vec4_f32(ceil(arg_1.a.c.b)))));
    global1 = array<Struct_4, 20>();
    return Struct_3(func_2(~min(reverseBits(vec4<u32>(59558u, 29001u, 0u, 15802u)), vec4<u32>(4294967295u, 26700u, 48474u, 0u)), Struct_4(arg_1.a, -13607i), Struct_4(Struct_2(false, arg_3, func_1(arg_0.x, Struct_5(vec4<bool>(arg_1.a.c.a.x, true, arg_1.a.c.d.x, true), 34373u, arg_1.a.c.b, arg_1.a.c.a, 14656u)), arg_3), 7658i), arg_1.a));
}

fn func_7(arg_0: Struct_3) -> f32 {
    let var_0 = vec3<bool>(all(arg_0.a.a.zzx), any(vec4<bool>(arg_0.a.a.x | all(arg_0.a.a.yy), arg_0.a.a.x || true, true, true)), !arg_0.a.a.x & (arg_0.a.d.x && !arg_0.a.a.x));
    let var_1 = Struct_5(func_1(_wgslsmith_f_op_f32(ceil(func_2(countOneBits(vec4<u32>(4294967295u, 1u, 27093u, 4294967295u)), global1[_wgslsmith_index_u32(countOneBits(4294967295u), 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], Struct_2(var_0.x, -1018f, arg_0.a, -1592f)).c)), Struct_5(arg_0.a.a, firstLeadingBit(min(0u, 1u)), _wgslsmith_f_op_vec4_f32(select(arg_0.a.b, _wgslsmith_f_op_vec4_f32(-arg_0.a.b), !vec4<bool>(arg_0.a.d.x, false, arg_0.a.d.x, arg_0.a.d.x))), arg_0.a.a, 71164u)).a, 4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.x)), arg_0.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.c + -118f) * 247f), _wgslsmith_f_op_f32(round(func_2(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), global1[_wgslsmith_index_u32(2698u, 20u)], Struct_4(Struct_2(true, global0.x, Struct_1(arg_0.a.a, vec4<f32>(-652f, global0.x, 1487f, -1053f), arg_0.a.b.x, var_0.zx), global0.x), u_input.a), Struct_2(arg_0.a.d.x, 344f, Struct_1(arg_0.a.a, vec4<f32>(1000f, 758f, global0.x, global0.x), global0.x, var_0.xy), 160f)).b.x)))), arg_0.a.a, _wgslsmith_mult_u32(54192u, ~select(_wgslsmith_clamp_u32(4294967295u, 35313u, 4724u), 4294967295u, arg_0.a.d.x & true)));
    global0 = vec4<f32>(689f, 877f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_f32(-var_1.c.x), Struct_5(vec4<bool>(false, false, true, false), 4294967295u, arg_0.a.b, vec4<bool>(var_0.x, var_1.d.x, var_1.a.x, arg_0.a.d.x), 1u)).c) - _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-func_6(vec3<f32>(arg_0.a.c, 713f, var_1.c.x), global1[_wgslsmith_index_u32(13670u, 20u)], var_1.c.x, var_1.c.x).a.b.x)))), _wgslsmith_div_f32(-225f, func_2(~select(vec4<u32>(var_1.e, 18385u, var_1.e, 1u), vec4<u32>(4294967295u, var_1.b, 4294967295u, var_1.e), vec4<bool>(false, true, false, false)), global1[_wgslsmith_index_u32(abs(firstTrailingBit(0u)), 20u)], Struct_4(Struct_2(var_0.x, 1097f, arg_0.a, var_1.c.x), 2147483647i << (var_1.e % 32u)), Struct_2(var_0.x, var_1.c.x, func_4(arg_0.a, Struct_5(arg_0.a.a, 90497u, vec4<f32>(-1046f, -1930f, -1163f, var_1.c.x), vec4<bool>(var_0.x, true, false, true), var_1.b), Struct_4(Struct_2(true, global0.x, arg_0.a, 622f), u_input.a)), -422f)).c));
    global1 = array<Struct_4, 20>();
    let var_2 = Struct_4(Struct_2(var_0.x, _wgslsmith_f_op_f32(ceil(-1797f)), func_2(vec4<u32>(var_1.b, min(var_1.e, 0u), ~var_1.b, ~var_1.e), global1[_wgslsmith_index_u32(~7914u, 20u)], Struct_4(Struct_2(false, global0.x, Struct_1(arg_0.a.a, vec4<f32>(global0.x, 1396f, 879f, -411f), 1000f, vec2<bool>(var_0.x, arg_0.a.a.x)), global0.x), ~2147483647i), Struct_2(4294967295u >= var_1.b, 1596f, func_6(var_1.c.wzy, global1[_wgslsmith_index_u32(1u, 20u)], global0.x, -1130f).a, _wgslsmith_f_op_f32(f32(-1f) * -832f))), 3186f), 2147483647i);
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 20>();
    var var_0 = _wgslsmith_f_op_f32(func_7(func_6(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(global0.xwx, global0.wzx)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global0.zxx)))), Struct_4(Struct_2(true, 1131f, func_1(global0.x, Struct_5(vec4<bool>(false, false, false, true), 8466u, vec4<f32>(-992f, global0.x, -239f, 854f), vec4<bool>(false, false, true, true), 0u)), _wgslsmith_f_op_f32(-global0.x)), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(global0.x, Struct_5(vec4<bool>(false, true, false, false), 4294967295u, vec4<f32>(709f, 1667f, -1027f, global0.x), vec4<bool>(false, false, false, false), 24286u)).b.x)), global0.x)));
    global1 = array<Struct_4, 20>();
    var_0 = _wgslsmith_f_op_f32(-global0.x);
    var var_1 = max(1u, ~max(select(17871u, 65687u, false) >> (_wgslsmith_add_u32(1u, 85025u) % 32u), ~select(14838u, 1u, true)));
    var_0 = func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.xzw) * vec3<f32>(_wgslsmith_f_op_f32(sign(global0.x)), 2745f, global0.x)), Struct_4(Struct_2(func_2(vec4<u32>(1u, 1u, 1u, 1u), global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(~1u, 20u)], Struct_2(false, global0.x, Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(1878f, 887f, -2091f, 270f), global0.x, vec2<bool>(false, true)), 476f)).a.x, -665f, func_1(global0.x, Struct_5(vec4<bool>(true, false, false, false), 4294967295u, vec4<f32>(global0.x, 410f, global0.x, 780f), vec4<bool>(false, false, false, true), 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-410f + global0.x))), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), 1000f).a.c;
    global1 = array<Struct_4, 20>();
    let var_2 = _wgslsmith_sub_i32(firstTrailingBit(u_input.a) & u_input.a, ~1110i >> (~(~1u) % 32u));
    let var_3 = Struct_5(vec4<bool>(_wgslsmith_f_op_f32(-func_4(Struct_1(vec4<bool>(false, true, false, true), vec4<f32>(global0.x, -714f, 121f, 225f), global0.x, vec2<bool>(true, true)), Struct_5(vec4<bool>(true, false, false, false), 0u, vec4<f32>(-100f, -499f, global0.x, global0.x), vec4<bool>(false, false, false, true), 1u), Struct_4(Struct_2(true, global0.x, Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(-247f, global0.x, 1842f, -657f), -1592f, vec2<bool>(true, true)), 911f), u_input.a)).c) <= 582f, all(vec2<bool>(true, true)), !(~var_2 == var_2), true), ~(~57921u) ^ _wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 3753u, 46542u)), vec3<u32>(22988u, firstLeadingBit(64029u), ~14575u)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -228f))), -1901f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_7(func_6(vec3<f32>(global0.x, global0.x, global0.x), Struct_4(Struct_2(true, 1060f, Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(global0.x, 383f, 746f, global0.x), global0.x, vec2<bool>(true, false)), global0.x), 3116i), -455f, -833f)))), -1000f), vec4<bool>(any(vec3<bool>(true, true, false)) | true, func_2(abs(vec4<u32>(4294967295u, 1u, 0u, 89416u)), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(51014u, 1u, 79339u), vec3<u32>(1u, 1u, 4294967295u)), 20u)], global1[_wgslsmith_index_u32(1u, 20u)], Struct_2(true, _wgslsmith_f_op_f32(step(global0.x, global0.x)), func_6(vec3<f32>(-786f, 959f, -319f), global1[_wgslsmith_index_u32(1u, 20u)], -220f, -686f).a, _wgslsmith_f_op_f32(max(956f, -790f)))).a.x, true, !(-314f == _wgslsmith_f_op_f32(-global0.x))), select(~23073u, 44214u, all(vec4<bool>(true, true, true, true))) ^ 33586u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -1161f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(1976f, _wgslsmith_f_op_f32(var_3.c.x - -1000f))), _wgslsmith_add_u32(1u, var_3.e), ~(~(~vec3<i32>(-2147483647i, u_input.a, var_2))));
}

