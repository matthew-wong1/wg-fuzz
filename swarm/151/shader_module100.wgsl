struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 14>;

var<private> global1: array<Struct_5, 21> = array<Struct_5, 21>(Struct_5(Struct_1(vec2<i32>(-1i, 1i)), vec4<f32>(357f, -1375f, 980f, 732f), -180f, Struct_1(vec2<i32>(0i, 1i)), vec3<f32>(1731f, -1522f, -2450f)), Struct_5(Struct_1(vec2<i32>(33643i, -1i)), vec4<f32>(714f, -379f, 1623f, -346f), -981f, Struct_1(vec2<i32>(2147483647i, 2147483647i)), vec3<f32>(2007f, -1000f, 463f)), Struct_5(Struct_1(vec2<i32>(9646i, 0i)), vec4<f32>(-114f, -148f, 484f, 604f), -400f, Struct_1(vec2<i32>(-32396i, -7855i)), vec3<f32>(417f, 285f, -728f)), Struct_5(Struct_1(vec2<i32>(0i, 62378i)), vec4<f32>(-1122f, -437f, 359f, 2215f), -100f, Struct_1(vec2<i32>(-46370i, -35722i)), vec3<f32>(-312f, -161f, -2115f)), Struct_5(Struct_1(vec2<i32>(2147483647i, 85837i)), vec4<f32>(989f, 990f, 517f, 1910f), -1082f, Struct_1(vec2<i32>(1i, 48653i)), vec3<f32>(327f, -832f, -455f)), Struct_5(Struct_1(vec2<i32>(-22362i, 2147483647i)), vec4<f32>(364f, -294f, 2569f, 1000f), 525f, Struct_1(vec2<i32>(-11050i, -19612i)), vec3<f32>(940f, -203f, 1959f)), Struct_5(Struct_1(vec2<i32>(10036i, -74824i)), vec4<f32>(123f, 198f, 544f, 1000f), 554f, Struct_1(vec2<i32>(-36314i, 2147483647i)), vec3<f32>(380f, -243f, -120f)), Struct_5(Struct_1(vec2<i32>(2147483647i, 81352i)), vec4<f32>(977f, 925f, 751f, -271f), 991f, Struct_1(vec2<i32>(-1i, 0i)), vec3<f32>(923f, -697f, 102f)), Struct_5(Struct_1(vec2<i32>(-1i, i32(-2147483648))), vec4<f32>(403f, 1915f, 2042f, -787f), 688f, Struct_1(vec2<i32>(1i, 11833i)), vec3<f32>(-214f, 562f, 1000f)), Struct_5(Struct_1(vec2<i32>(71586i, -20003i)), vec4<f32>(1987f, 1012f, -2480f, -982f), 1000f, Struct_1(vec2<i32>(-6155i, 1i)), vec3<f32>(-917f, 1000f, 924f)), Struct_5(Struct_1(vec2<i32>(-1i, i32(-2147483648))), vec4<f32>(-1334f, -2141f, 589f, 622f), -553f, Struct_1(vec2<i32>(-1i, 2147483647i)), vec3<f32>(1000f, 254f, -348f)), Struct_5(Struct_1(vec2<i32>(0i, 10721i)), vec4<f32>(-123f, -845f, 420f, -1506f), 401f, Struct_1(vec2<i32>(0i, 0i)), vec3<f32>(676f, -494f, 345f)), Struct_5(Struct_1(vec2<i32>(i32(-2147483648), 4100i)), vec4<f32>(-196f, -1351f, -907f, 169f), 396f, Struct_1(vec2<i32>(-39123i, 2147483647i)), vec3<f32>(266f, 2152f, -1344f)), Struct_5(Struct_1(vec2<i32>(38428i, -1i)), vec4<f32>(974f, 912f, -320f, 867f), -147f, Struct_1(vec2<i32>(-5048i, -34730i)), vec3<f32>(-1000f, 238f, -1000f)), Struct_5(Struct_1(vec2<i32>(2147483647i, 0i)), vec4<f32>(1682f, 1103f, 512f, -815f), -300f, Struct_1(vec2<i32>(-26386i, -1i)), vec3<f32>(-1162f, -720f, 108f)), Struct_5(Struct_1(vec2<i32>(47774i, -10341i)), vec4<f32>(-1700f, 1000f, -253f, 235f), -1340f, Struct_1(vec2<i32>(-1i, 0i)), vec3<f32>(-1713f, -1356f, 895f)), Struct_5(Struct_1(vec2<i32>(-6164i, 9409i)), vec4<f32>(1533f, 905f, 1882f, 686f), 1534f, Struct_1(vec2<i32>(0i, 24732i)), vec3<f32>(962f, 1500f, 1000f)), Struct_5(Struct_1(vec2<i32>(-1i, 0i)), vec4<f32>(-1000f, 911f, -197f, -152f), -629f, Struct_1(vec2<i32>(2147483647i, -15688i)), vec3<f32>(591f, -1000f, -1906f)), Struct_5(Struct_1(vec2<i32>(2147483647i, -4581i)), vec4<f32>(-1721f, 1000f, -282f, 145f), -1081f, Struct_1(vec2<i32>(-1i, i32(-2147483648))), vec3<f32>(-235f, -643f, -1892f)), Struct_5(Struct_1(vec2<i32>(24721i, 5081i)), vec4<f32>(1186f, -1000f, -495f, -754f), 1458f, Struct_1(vec2<i32>(19799i, 1i)), vec3<f32>(-1499f, -2132f, -1850f)), Struct_5(Struct_1(vec2<i32>(18075i, 36495i)), vec4<f32>(1051f, 553f, 515f, 1042f), -895f, Struct_1(vec2<i32>(-33035i, -67818i)), vec3<f32>(1000f, 1000f, -134f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: vec4<i32>) -> vec4<f32> {
    let var_0 = Struct_2(arg_0.b, !all(!select(vec4<bool>(arg_0.d.b, arg_0.d.b, false, true), vec4<bool>(false, arg_0.d.b, arg_0.d.b, arg_0.d.b), vec4<bool>(true, false, arg_0.d.b, true))), _wgslsmith_f_op_f32(arg_0.d.c * 664f));
    global1 = array<Struct_5, 21>();
    var var_1 = !vec3<bool>(select(!arg_0.d.b, arg_0.d.b, arg_0.d.b), all(select(vec2<bool>(arg_0.d.b, true), vec2<bool>(false, arg_0.d.b), vec2<bool>(arg_0.d.b, true))), !(!var_0.b));
    let var_2 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1172f, -656f, true)), _wgslsmith_f_op_f32(-arg_0.d.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c, -385f)) - _wgslsmith_f_op_f32(min(171f, var_0.c)))))));
    var var_3 = arg_0.b;
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c, _wgslsmith_f_op_f32(var_2.x * var_0.c), arg_0.d.c, _wgslsmith_f_op_f32(ceil(-511f)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32, arg_3: f32) -> f32 {
    var var_0 = Struct_5(arg_0, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(vec4<u32>(13142u, 1u, arg_1.x, arg_1.x), arg_0, vec2<i32>(u_input.a, u_input.a), Struct_2(arg_0, true, arg_2), arg_1.x), u_input.a, vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i))) - vec4<f32>(arg_3, -280f, 112f, 1067f)), vec4<f32>(arg_3, 242f, arg_2, arg_3)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1120f)), -1676f)), Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(0i, 0i), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(min(u_input.a, arg_0.a.x), ~0i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1397f, 246f)) - _wgslsmith_f_op_f32(sign(-222f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_2, -1537f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * arg_3) + _wgslsmith_f_op_f32(-arg_3))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-281f, arg_3, arg_3)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_3, arg_2), vec3<f32>(-125f, -1000f, -1388f)))))));
    global0 = array<Struct_5, 14>();
    let var_1 = Struct_2(arg_0, !any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-var_0.b.x));
    var_0 = Struct_5(Struct_1(vec2<i32>(var_0.d.a.x, _wgslsmith_div_i32(-27135i, -15550i << (arg_1.x % 32u)))), var_0.b, arg_2, Struct_1(vec2<i32>(-2147483647i, -21330i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3 - var_1.c), _wgslsmith_f_op_f32(floor(var_0.b.x)), var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - -696f)), _wgslsmith_f_op_f32(-var_0.b.x))));
    let var_2 = Struct_4(firstLeadingBit(~arg_1), Struct_1(min(-select(var_0.d.a, var_0.d.a, var_1.b), var_0.a.a)), select(countOneBits(-arg_0.a), firstLeadingBit(vec2<i32>(~48273i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_1.a.a.x), var_0.a.a))), true), var_1, 42954u);
    return var_0.c;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = 0u;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(select(-258f, -747f, true)), _wgslsmith_f_op_f32(func_2(arg_1, vec4<u32>(55958u, var_0, var_0, var_0), -653f, -273f)), -271f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1321f, 146f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(527f, -206f, 1184f) * vec3<f32>(1458f, -477f, -297f))))))));
    let var_2 = -_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(arg_1.a, arg_1.a), firstTrailingBit(-vec2<i32>(2147483647i, arg_1.a.x))) << (~(vec2<u32>(~4294967295u, var_0) << (~vec2<u32>(1u, 535u) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_3 = arg_1;
    let var_4 = var_0;
    return abs(vec2<u32>(~var_4, var_0));
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    return Struct_2(arg_2, arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-580f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1352f + 1639f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~abs(vec4<i32>(u_input.a, -57916i, -72285i, u_input.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 4099i), vec4<i32>(-20762i, -1i, u_input.a, -55845i), vec4<i32>(38272i, u_input.a, u_input.a, -40824i)) >> (vec4<u32>(13786u, 0u, 1u, 1u) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, 18436i, u_input.a) & vec4<i32>(-5037i, u_input.a, -1i, 23534i)) ^ vec4<i32>(u_input.a, abs(0i), -2147483647i, 2147483647i));
    var var_1 = 42071i;
    let var_2 = Struct_3(any(select(vec3<bool>(false, true, all(vec2<bool>(true, true))), vec3<bool>(true, true, true), true)));
    global0 = array<Struct_5, 14>();
    var var_3 = -vec2<i32>(~(-31148i), firstTrailingBit(var_0));
    var_1 = u_input.a;
    let var_4 = func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-998f, -312f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -850f), _wgslsmith_f_op_f32(ceil(1000f))))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1397f, _wgslsmith_div_f32(-1605f, 525f))), max(~func_1(var_0, Struct_1(vec2<i32>(0i, -35009i))), vec2<u32>(14582u, 1u)), Struct_1(-(~reverseBits(vec2<i32>(40592i, u_input.a)))), ~firstLeadingBit(~82822u) > _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 5353u, 54469u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mult_u32(32266u, ~4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c, ~vec4<u32>(1u, 1u, 1u, 1u));
}

