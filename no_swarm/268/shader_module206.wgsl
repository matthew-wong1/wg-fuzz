struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(-1234f, -1312f, -750f, 649f), vec4<f32>(309f, 515f, 609f, -1601f), vec4<f32>(-1081f, -574f, -686f, -1038f), vec4<f32>(1825f, 942f, 484f, 940f), vec4<f32>(-498f, 1035f, 1801f, -343f), vec4<f32>(344f, -2326f, -1123f, 1269f), vec4<f32>(-344f, 169f, -339f, -798f), vec4<f32>(-1000f, 408f, -1028f, -537f), vec4<f32>(1685f, -377f, -937f, 332f), vec4<f32>(764f, -229f, -605f, 388f), vec4<f32>(-639f, 345f, -2050f, 1258f), vec4<f32>(954f, 1843f, 479f, 342f), vec4<f32>(-373f, 1509f, -1885f, -1087f), vec4<f32>(392f, -1192f, 708f, -404f), vec4<f32>(-326f, 113f, -914f, 1591f), vec4<f32>(856f, -233f, -714f, -887f), vec4<f32>(-640f, -1013f, 986f, -1173f), vec4<f32>(-1778f, -899f, 1248f, 3239f), vec4<f32>(-206f, -368f, 814f, -538f), vec4<f32>(-1000f, 661f, 2046f, -791f), vec4<f32>(127f, 1208f, 446f, 1000f), vec4<f32>(1000f, -434f, -1745f, -1081f), vec4<f32>(2864f, -483f, 847f, 1338f), vec4<f32>(-665f, -1000f, -580f, -745f), vec4<f32>(-755f, 1820f, 1884f, 1198f));

var<private> global1: vec3<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_4 {
    let var_0 = ~(-17554i) == _wgslsmith_dot_vec3_i32(arg_0.a.zzx, _wgslsmith_mod_vec3_i32(firstTrailingBit(arg_0.a.ywy), arg_0.a.ywx & ~vec3<i32>(1i, -1i, -1i)));
    global0 = array<vec4<f32>, 25>();
    let var_1 = ~arg_1.yww;
    global1 = vec3<u32>(u_input.a, abs(~17647u), 5778u);
    let var_2 = vec3<u32>(global1.x, abs(countOneBits(select(var_1.x & 0u, u_input.a, false))), arg_1.x);
    return Struct_4(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(arg_0.a.x, 0i, arg_0.a.x)), select(vec3<i32>(-5167i, -9144i, -31089i), vec3<i32>(-25272i, 2147483647i, arg_0.a.x) & vec3<i32>(48939i, 0i, arg_0.a.x), true) ^ arg_0.a.yzw), Struct_2(arg_0.a), arg_0.a.x);
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> Struct_2 {
    global1 = select(~(~(~vec3<u32>(global1.x, global1.x, u_input.a)) ^ ~(~vec3<u32>(4576u, global1.x, u_input.a))), vec3<u32>(global1.x, u_input.a, global1.x) >> (~countOneBits(vec3<u32>(global1.x, 1u, 4294967295u)) % vec3<u32>(32u)), any(!select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, false), !vec2<bool>(arg_0, arg_0))));
    global0 = array<vec4<f32>, 25>();
    let var_0 = !select(!vec3<bool>(true, all(vec2<bool>(arg_0, true)), arg_0), vec3<bool>(any(vec2<bool>(true, true)), select(arg_0, true, true), !any(vec3<bool>(true, arg_0, true))), !vec3<bool>(true, arg_0, true));
    let var_1 = Struct_3(vec2<bool>(!(40734i >= _wgslsmith_mult_i32(arg_1.a, arg_1.c)), 4294967295u >= firstTrailingBit(14776u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-206f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1040f, 1230f, arg_0)))), 1f, -386f)));
    global0 = array<vec4<f32>, 25>();
    return Struct_2(vec4<i32>(-33764i, arg_1.c, _wgslsmith_sub_i32(arg_1.a, ~arg_1.c), ~_wgslsmith_mod_i32(~arg_1.c, _wgslsmith_add_i32(arg_1.c, arg_1.a))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_3(!(!vec2<bool>(any(vec4<bool>(true, arg_1.b.x, arg_1.b.x, false)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, arg_1.c.x, -331f, arg_1.d.x)), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(1u, 25u)] * vec4<f32>(-372f, arg_1.d.x, arg_1.c.x, arg_1.c.x)))))));
    let var_1 = !select(vec4<bool>(!(arg_1.b.x && false), !arg_2.x, false, true), !(!(!vec4<bool>(arg_2.x, true, arg_2.x, var_0.a.x))), false);
    let var_2 = ~0u;
    global0 = array<vec4<f32>, 25>();
    global1 = ~vec3<u32>(global1.x, _wgslsmith_add_u32(firstTrailingBit(var_2), 77274u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, global1.x, var_2), vec4<u32>(0u, var_2, 0u, u_input.a)), _wgslsmith_mod_u32(global1.x, global1.x))) >> ((vec3<u32>(~var_2, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, global1.x), vec4<u32>(4294967295u, var_2, 15353u, global1.x)), var_2) >> (firstLeadingBit(vec3<u32>(6709u, abs(u_input.a), countOneBits(25887u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    return var_0;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_4 {
    global1 = _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, global1.x & ~u_input.a, ~(~u_input.a)), abs(firstTrailingBit(vec3<u32>(global1.x, 7102u, 21790u)) ^ (abs(vec3<u32>(102240u, u_input.a, 10626u)) | firstTrailingBit(vec3<u32>(global1.x, 4294967295u, u_input.a)))));
    global1 = select(vec3<u32>(u_input.a, 1u, 26649u), ~countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global1.x, 1u), vec3<u32>(13820u, global1.x, 10398u))) >> (~min(~vec3<u32>(2485u, global1.x, 0u), ~vec3<u32>(1u, global1.x, u_input.a)) % vec3<u32>(32u)), true);
    let var_0 = Struct_1(~(vec4<i32>(1i, 1i, 1i, 1i) << (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 83022u, 23480u, 54890u), vec4<u32>(0u, u_input.a, global1.x, 4294967295u)) % vec4<u32>(32u))) << (firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(60522u, 1u), global1.zx), ~u_input.a, abs(44944u), global1.x)) % vec4<u32>(32u)), arg_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_1.x, arg_0.b.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-870f, arg_0.b.x, arg_0.b.x) * arg_0.b.zzx))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_2(vec4<i32>(-2005i, 6117i, -2147483647i, -1i)), Struct_1(vec4<i32>(-1i, 41884i, -2147483647i, 0i), vec2<bool>(false, true), vec3<f32>(arg_1.x, 1506f, arg_1.x), arg_0.b.zyw), vec3<bool>(true, arg_0.a.x, arg_0.a.x)).b.x - arg_0.b.x), arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1354f + arg_0.b.x)))), _wgslsmith_div_f32(551f, -829f)));
    global1 = max(select(_wgslsmith_mod_vec3_u32(select(vec3<u32>(global1.x, 81579u, 52457u), vec3<u32>(4294967295u, 0u, global1.x), vec3<bool>(arg_0.a.x, false, false)) | ~vec3<u32>(7853u, 51711u, u_input.a), ~(~vec3<u32>(global1.x, u_input.a, u_input.a))), vec3<u32>(15342u, global1.x | (global1.x >> (5437u % 32u)), 1u), var_0.b.x | true), firstLeadingBit(select(vec3<u32>(41718u | global1.x, ~0u, u_input.a | global1.x), vec3<u32>(global1.x, _wgslsmith_div_u32(global1.x, u_input.a), _wgslsmith_add_u32(global1.x, u_input.a)), any(vec4<bool>(arg_0.a.x, arg_0.a.x, false, false)) || false)));
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(func_3(arg_0.a.x, func_2(func_2(Struct_2(vec4<i32>(-5617i, var_0.a.x, -1i, 7030i)), vec4<u32>(26516u, u_input.a, 14225u, 75746u), vec4<bool>(false, var_0.b.x, true, true), arg_0).b, _wgslsmith_clamp_vec4_u32(vec4<u32>(97046u, 4294967295u, 65018u, global1.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 7579u), vec4<u32>(u_input.a, 7978u, 0u, 27500u)), select(vec4<bool>(true, true, true, var_0.b.x), vec4<bool>(false, var_0.b.x, true, false), false), arg_0)).a.yy, vec2<i32>(var_0.a.x, -1i)), -2220i);
    return Struct_4(1i, Struct_2(countOneBits(vec4<i32>(var_0.a.x, var_0.a.x, 2147483647i, var_0.a.x) | ~vec4<i32>(var_0.a.x, -38469i, 1i, var_0.a.x))), func_3(false, func_2(func_2(func_2(Struct_2(vec4<i32>(-1i, var_0.a.x, var_0.a.x, var_0.a.x)), vec4<u32>(u_input.a, 26769u, u_input.a, global1.x), vec4<bool>(false, true, false, arg_0.a.x), arg_0).b, vec4<u32>(u_input.a, 36403u, u_input.a, 60694u), vec4<bool>(false, true, var_0.b.x, true), arg_0).b, vec4<u32>(4294967295u, firstTrailingBit(0u), 35171u, 32285u), !(!vec4<bool>(true, arg_0.a.x, var_0.b.x, arg_0.a.x)), func_4(func_3(var_0.b.x, Struct_4(-43094i, Struct_2(vec4<i32>(18777i, 2147483647i, var_0.a.x, var_0.a.x)), var_0.a.x)), var_0, vec3<bool>(true, var_0.b.x, true)))).a.x);
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = func_5(func_4(func_3(all(vec3<bool>(true, false, false)) | any(vec4<bool>(false, false, true, true)), func_2(Struct_2(vec4<i32>(-9771i, -2147483647i, 39569i, 5769i)), vec4<u32>(u_input.a, 1u, 39084u, 72423u) << (vec4<u32>(0u, u_input.a, arg_0, global1.x) % vec4<u32>(32u)), vec4<bool>(false, true, false, true), Struct_3(vec2<bool>(true, false), vec4<f32>(226f, 378f, -567f, -389f)))), Struct_1(-vec4<i32>(22361i, -7604i, 1691i, -1i) << (vec4<u32>(0u, 65523u, u_input.a, arg_0) % vec4<u32>(32u)), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 2218f, -1738f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1288f, 1000f, 517f)), vec3<f32>(1638f, -187f, -582f), true))), !vec3<bool>(true, any(vec3<bool>(true, false, false)), 56837u > global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(359f * 570f)), _wgslsmith_f_op_f32(-1003f * _wgslsmith_div_f32(1046f, -464f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1268f)))))));
    var var_1 = firstTrailingBit(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, arg_0, global1.x) << (vec4<u32>(arg_0, 10540u, 14061u, u_input.a) % vec4<u32>(32u)), vec4<u32>(global1.x, 65679u, u_input.a, global1.x)), max(u_input.a, 0u), select(global1.x, 4294967295u, true), arg_0));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -608f)), _wgslsmith_f_op_f32(-1135f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(290f, -628f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-645f, -556f) * -1078f))), 281f);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1452f, var_2.x) * _wgslsmith_f_op_vec2_f32(var_2.xx + _wgslsmith_f_op_vec2_f32(floor(var_2.xz)))), vec2<f32>(-2318f, _wgslsmith_f_op_f32(func_4(Struct_2(var_0.b.a), Struct_1(vec4<i32>(var_0.b.a.x, var_0.c, -42510i, -1i), vec2<bool>(false, false), var_2, vec3<f32>(var_2.x, var_2.x, -1115f)), vec3<bool>(false, true, true)).b.x + 512f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.xz * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.x, 1662f), _wgslsmith_f_op_vec2_f32(var_2.xy - var_2.zz)))), vec2<f32>(873f, _wgslsmith_f_op_f32(step(550f, var_2.x)))));
    var var_4 = all(vec3<bool>(true, var_1.x > var_1.x, true));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, global1.x)), ~vec2<u32>(4294967295u, 63835u))), 1u, countOneBits(22969u));
    var var_0 = ~1i;
    global0 = array<vec4<f32>, 25>();
    var var_1 = _wgslsmith_dot_vec4_i32(-((vec4<i32>(1i, 1i, 1i, 1i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, global1.x, 53847u, u_input.a), vec4<u32>(u_input.a, 1u, 7149u, global1.x)) % vec4<u32>(32u))) | ~select(vec4<i32>(0i, 16454i, 19826i, 1i), vec4<i32>(2147483647i, 18136i, -29826i, -32717i), true)), firstTrailingBit(vec4<i32>(_wgslsmith_clamp_i32(65735i, -2147483647i << (0u % 32u), 1i), 1i, abs(min(1i, 35055i)), 22751i)));
    var_0 = -1i;
    let var_2 = _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 1i, _wgslsmith_div_i32(1i, 1i), _wgslsmith_div_i32(1i, 35i)), _wgslsmith_mult_vec4_i32(select(~vec4<i32>(-2147483647i, -7566i, 2147483647i, 2147483647i), vec4<i32>(0i, -1i, 25743i, 2147483647i), vec4<bool>(false, false, false, true)), vec4<i32>(~2147483647i, reverseBits(0i), countOneBits(-2147483647i), func_1(1u)))));
    var var_3 = Struct_3(vec2<bool>(true && all(vec4<bool>(false, false, false, true)), !select(true, var_2 < var_2, any(vec3<bool>(false, false, true)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -410f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(Struct_2(vec4<i32>(var_2, var_2, 17474i, var_2)), Struct_1(vec4<i32>(var_2, var_2, -52954i, 53558i), vec2<bool>(true, true), vec3<f32>(-148f, -735f, 1394f), vec3<f32>(-1319f, 1262f, 606f)), vec3<bool>(false, true, true)).b.x * _wgslsmith_f_op_f32(f32(-1f) * -1672f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -2224f), -1842f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-385f + -383f))))), _wgslsmith_f_op_f32(round(1764f))));
    var_3 = func_4(Struct_2(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(var_2, var_2, var_2, 0i), vec4<i32>(var_2, 2147483647i, var_2, var_2)))), Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, -1i), vec3<i32>(var_2, 0i, -2147483647i)), max(var_2, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2, 42757i, 15390i, 1i), vec4<i32>(var_2, 64039i, var_2, var_2))), var_2, _wgslsmith_sub_i32(var_2, var_2)), select(var_3.a, vec2<bool>(!var_3.a.x, true), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1676f, var_3.b.x, var_3.b.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.b.xzw) + _wgslsmith_f_op_vec3_f32(round(var_3.b.wwy)))), var_3.b.xyw), vec3<bool>(true | var_3.a.x, any(select(select(vec4<bool>(var_3.a.x, var_3.a.x, true, var_3.a.x), vec4<bool>(var_3.a.x, var_3.a.x, true, true), true), vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, var_3.a.x), select(vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, true), vec4<bool>(var_3.a.x, true, var_3.a.x, var_3.a.x), vec4<bool>(true, var_3.a.x, false, var_3.a.x)))), var_3.a.x));
    var_3 = func_4(Struct_2(func_2(Struct_2(vec4<i32>(var_2, var_2, 0i, 29413i)), ~vec4<u32>(global1.x, 0u, 4294967295u, u_input.a), select(vec4<bool>(var_3.a.x, false, false, var_3.a.x), vec4<bool>(false, var_3.a.x, false, false), var_3.a.x), Struct_3(vec2<bool>(false, var_3.a.x), var_3.b)).b.a | (~vec4<i32>(-23963i, var_2, var_2, var_2) >> (vec4<u32>(49547u, 4269u, 35227u, 10476u) % vec4<u32>(32u)))), Struct_1(abs(select(vec4<i32>(-67764i, var_2, 3770i, var_2) ^ vec4<i32>(1i, -1i, var_2, var_2), select(vec4<i32>(var_2, -13506i, 70050i, var_2), vec4<i32>(1336i, var_2, 0i, var_2), var_3.a.x), select(var_3.a.x, false, true))), func_4(func_2(func_5(Struct_3(var_3.a, var_3.b), vec3<f32>(121f, -616f, 241f)).b, abs(vec4<u32>(u_input.a, 64042u, u_input.a, u_input.a)), !vec4<bool>(true, var_3.a.x, false, var_3.a.x), Struct_3(vec2<bool>(true, var_3.a.x), vec4<f32>(var_3.b.x, 578f, 1227f, var_3.b.x))).b, Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2, 2147483647i, -2147483647i, var_2), vec4<i32>(27282i, var_2, var_2, -8019i)), select(vec2<bool>(false, var_3.a.x), vec2<bool>(var_3.a.x, false), var_3.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.x, -2351f, -1545f)), _wgslsmith_f_op_vec3_f32(round(var_3.b.xzy))), !select(vec3<bool>(var_3.a.x, true, false), vec3<bool>(var_3.a.x, true, var_3.a.x), false)).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.x, -1518f, 288f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(var_3.b.x, -779f), -500f))), !(!select(vec3<bool>(var_3.a.x, var_3.a.x, true), select(vec3<bool>(true, var_3.a.x, var_3.a.x), vec3<bool>(var_3.a.x, false, false), vec3<bool>(var_3.a.x, true, var_3.a.x)), all(vec3<bool>(var_3.a.x, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, select(-7916i, var_2, true), 1u, var_3.b.wyz);
}

