struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(vec2<i32>(0i, i32(-2147483648))), Struct_4(vec2<i32>(i32(-2147483648), 2147483647i)), Struct_4(vec2<i32>(1i, 5927i)), Struct_4(vec2<i32>(-26110i, -1i)), Struct_4(vec2<i32>(0i, i32(-2147483648))), Struct_4(vec2<i32>(-87106i, -52551i)), Struct_4(vec2<i32>(10904i, -9460i)), Struct_4(vec2<i32>(0i, 37468i)), Struct_4(vec2<i32>(-47854i, 1i)), Struct_4(vec2<i32>(-1i, -33138i)), Struct_4(vec2<i32>(-9165i, -24799i)), Struct_4(vec2<i32>(-31231i, -1i)), Struct_4(vec2<i32>(-24566i, -75997i)), Struct_4(vec2<i32>(2147483647i, 11585i)), Struct_4(vec2<i32>(-16011i, -18221i)), Struct_4(vec2<i32>(-12069i, 2147483647i)), Struct_4(vec2<i32>(0i, -1i)), Struct_4(vec2<i32>(23988i, 49727i)), Struct_4(vec2<i32>(0i, -25562i)), Struct_4(vec2<i32>(1i, 20108i)), Struct_4(vec2<i32>(19785i, i32(-2147483648))), Struct_4(vec2<i32>(33558i, 345i)), Struct_4(vec2<i32>(20674i, 1i)), Struct_4(vec2<i32>(2147483647i, -1i)), Struct_4(vec2<i32>(46568i, -41199i)), Struct_4(vec2<i32>(50629i, -1i)), Struct_4(vec2<i32>(-1i, -50556i)), Struct_4(vec2<i32>(13488i, -42072i)), Struct_4(vec2<i32>(13114i, 0i)), Struct_4(vec2<i32>(-32394i, 6644i)));

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(vec2<i32>(19811i, i32(-2147483648)), vec4<f32>(-863f, -1244f, 362f, 1000f)), Struct_3(vec2<i32>(35356i, -1i), vec4<f32>(679f, 843f, -1439f, -1611f)), Struct_3(vec2<i32>(1i, 50938i), vec4<f32>(-428f, -1483f, -550f, 1000f)), Struct_3(vec2<i32>(i32(-2147483648), -8681i), vec4<f32>(-1391f, 1801f, 959f, 579f)), Struct_3(vec2<i32>(-2687i, -28921i), vec4<f32>(-170f, 1207f, 814f, 2397f)), Struct_3(vec2<i32>(-49360i, 35225i), vec4<f32>(-1334f, 370f, 1543f, -606f)), Struct_3(vec2<i32>(2147483647i, 1i), vec4<f32>(-853f, 496f, 1225f, 221f)), Struct_3(vec2<i32>(-3014i, -56344i), vec4<f32>(-595f, -496f, -887f, -1095f)), Struct_3(vec2<i32>(-9322i, -1i), vec4<f32>(-1748f, 975f, 1140f, -517f)), Struct_3(vec2<i32>(i32(-2147483648), 4445i), vec4<f32>(533f, 1065f, -1553f, -111f)), Struct_3(vec2<i32>(0i, 0i), vec4<f32>(-771f, -1002f, 1048f, 503f)), Struct_3(vec2<i32>(-18523i, -5024i), vec4<f32>(211f, 1000f, -484f, 109f)), Struct_3(vec2<i32>(0i, 2147483647i), vec4<f32>(-271f, -861f, -373f, -1973f)));

var<private> global2: Struct_4 = Struct_4(vec2<i32>(1i, -709i));

var<private> global3: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec2<i32>(2141i, -14160i), vec4<f32>(-1149f, 1116f, -1219f, -1363f)), Struct_3(vec2<i32>(2847i, -95896i), vec4<f32>(2243f, 959f, -696f, -1010f)), Struct_3(vec2<i32>(0i, 19215i), vec4<f32>(841f, 1466f, 272f, -1943f)), Struct_3(vec2<i32>(0i, -1i), vec4<f32>(-1445f, 204f, 219f, 359f)), Struct_3(vec2<i32>(0i, -14110i), vec4<f32>(823f, -563f, 1725f, 247f)), Struct_3(vec2<i32>(-1i, -1i), vec4<f32>(-301f, 900f, 884f, 481f)), Struct_3(vec2<i32>(-1i, -3989i), vec4<f32>(-188f, -461f, 519f, -1000f)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec2<bool> {
    var var_0 = firstTrailingBit(firstTrailingBit(~(~(~vec4<u32>(u_input.d, u_input.c, u_input.c, 86731u)))));
    return select(select(vec2<bool>(true, true), select(vec2<bool>(true, all(vec3<bool>(false, false, false))), vec2<bool>(true, true), true), false), !vec2<bool>(true, all(vec4<bool>(true, true, true, true))), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, true), !any(vec3<bool>(false, true, false))));
}

fn func_2(arg_0: vec2<u32>) -> vec2<bool> {
    global3 = array<Struct_3, 7>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1153f + _wgslsmith_f_op_f32(-1000f + 153f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(203f, 2851f))))) * -2401f));
    var var_1 = !vec2<bool>(all(func_3()), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true)));
    let var_2 = Struct_2(_wgslsmith_div_i32(u_input.a.x & _wgslsmith_add_i32(global2.a.x, global2.a.x), -(global2.a.x >> (0u % 32u))) | (_wgslsmith_add_i32(min(u_input.e, 25920i), -1i) >> (firstLeadingBit(1u) % 32u)), Struct_1(0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -822f) * vec2<f32>(-1000f, -190f)))), !func_3()));
    global2 = global0[_wgslsmith_index_u32(~48547u, 30u)];
    return vec2<bool>(var_2.b.c.x, any(!vec3<bool>(any(vec3<bool>(var_2.b.c.x, false, var_1.x)), true, true)));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>) -> f32 {
    let var_0 = vec2<u32>(~u_input.c, ~(~u_input.d)) << (max(vec2<u32>(~_wgslsmith_mult_u32(u_input.c, 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, 65415u, 22277u, u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 1u, 4294967295u, u_input.d), vec4<u32>(u_input.c, u_input.d, u_input.d, u_input.c)))), vec2<u32>(u_input.c, ~0u) ^ _wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u) >> (vec2<u32>(26718u, u_input.d) % vec2<u32>(32u)), vec2<u32>(u_input.c, 1u))) % vec2<u32>(32u));
    var var_1 = Struct_1(_wgslsmith_clamp_i32(i32(-1i) * -2528i, 2147483647i, 32417i), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(-312f, arg_0))))))), func_2((~var_0 & vec2<u32>(8336u, var_0.x)) & _wgslsmith_mult_vec2_u32(var_0, var_0)));
    var var_2 = vec3<bool>(var_1.c.x, func_2(vec2<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d, 4294967295u), abs(vec3<u32>(68871u, var_0.x, u_input.d))))).x, true);
    global2 = Struct_4(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(~(-41774i), ~arg_1.x), abs(arg_1.x << (1u % 32u))), abs(2147483647i)));
    var var_3 = firstTrailingBit(~(~vec4<u32>(var_0.x, u_input.d, u_input.c, 0u)) << ((countOneBits(abs(vec4<u32>(1u, u_input.d, u_input.c, u_input.c))) & ~vec4<u32>(39021u, u_input.d, var_0.x, 35273u)) % vec4<u32>(32u)));
    return -119f;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_4 {
    let var_0 = Struct_1(arg_1.a, vec2<f32>(-292f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-377f - 249f))), min(u_input.b, u_input.b >> (vec4<u32>(u_input.c, 45682u, u_input.d, 4294967295u) % vec4<u32>(32u)))))), vec2<bool>(arg_1.c.x | !(1000f <= arg_0), !all(vec2<bool>(true, arg_1.c.x)) | true));
    var var_1 = Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(arg_0 + arg_1.b.x)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1512f, 1258f)))))), vec2<bool>(!arg_1.c.x, true));
    let var_2 = var_1.c.x;
    var var_3 = global2.a.x;
    global3 = array<Struct_3, 7>();
    return global0[_wgslsmith_index_u32(u_input.d, 30u)];
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: vec3<u32>) -> f32 {
    global2 = func_5(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, global2.a.x, arg_2.a.x, -4246i), vec4<i32>(u_input.b.x, 2147483647i, -10369i, arg_2.a.x)) | _wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.b.x, 31195i, -1i), u_input.b), vec4<i32>(~(-2147483647i), 4691i, _wgslsmith_sub_i32(-1i, 0i), _wgslsmith_div_i32(arg_2.a.x, global2.a.x)), any(func_2(vec2<u32>(arg_3.x, 0u)))))), Struct_1(2147483647i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, 313f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(465f, arg_0))))), func_2(vec2<u32>(0u, max(arg_3.x, 0u)))));
    global0 = array<Struct_4, 30>();
    global3 = array<Struct_3, 7>();
    let var_0 = Struct_2(-(~(~(2147483647i | global2.a.x))), Struct_1(global2.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.b.xz + arg_2.b.wy), vec2<f32>(arg_0, arg_0))), !select(vec2<bool>(false, false), vec2<bool>(true, false), func_2(arg_3.xx))));
    var var_1 = arg_3.x;
    return arg_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 30>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(1130f, _wgslsmith_mult_u32(1u, u_input.d), Struct_3(global2.a, vec4<f32>(1057f, 917f, 877f, -667f)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.d, u_input.c))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, -451f, all(vec3<bool>(false, true, false)))) + _wgslsmith_f_op_f32(-1081f * 1f))) + -769f);
    var_0 = 2284f;
    let var_1 = select(select(!vec4<bool>(42111u == u_input.d, true, false, func_2(vec2<u32>(16927u, u_input.d)).x), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), !vec4<bool>(!func_3().x, true, true, !any(vec3<bool>(false, true, true))), vec4<bool>(!(u_input.d > u_input.c), true | all(vec4<bool>(true, false, true, true)), true, !all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)))));
    var var_2 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-139f + 681f), -377f)) + _wgslsmith_f_op_f32(min(-1166f, _wgslsmith_f_op_f32(f32(-1f) * -309f))))));
}

