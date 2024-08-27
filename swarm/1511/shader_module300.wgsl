struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec3<f32>(-1054f, 1000f, 1302f), -19955i, 16994i), vec3<u32>(4294967295u, 39281u, 0u), false), Struct_2(Struct_1(vec3<f32>(854f, -1380f, 1704f), 2147483647i, 42290i), vec3<u32>(4529u, 1u, 45270u), false), Struct_2(Struct_1(vec3<f32>(-895f, -1041f, -101f), 0i, 2147483647i), vec3<u32>(28486u, 19947u, 1u), false), Struct_2(Struct_1(vec3<f32>(345f, 1154f, 2310f), -1i, 16476i), vec3<u32>(66321u, 21090u, 1u), true), Struct_2(Struct_1(vec3<f32>(744f, 146f, 338f), -37822i, -78149i), vec3<u32>(21652u, 0u, 1u), true), Struct_2(Struct_1(vec3<f32>(-185f, -152f, -534f), -13267i, -5974i), vec3<u32>(4294967295u, 4294967295u, 0u), false), Struct_2(Struct_1(vec3<f32>(-728f, -1520f, -1795f), 53002i, 2147483647i), vec3<u32>(1u, 35622u, 1u), true), Struct_2(Struct_1(vec3<f32>(989f, 793f, 1389f), -50099i, 37768i), vec3<u32>(1u, 0u, 23595u), true), Struct_2(Struct_1(vec3<f32>(1086f, 316f, -1144f), i32(-2147483648), i32(-2147483648)), vec3<u32>(1u, 2313u, 62517u), true), Struct_2(Struct_1(vec3<f32>(-1099f, -314f, -1936f), -6102i, 2147483647i), vec3<u32>(31393u, 4294967295u, 55085u), false), Struct_2(Struct_1(vec3<f32>(-349f, -1561f, -1062f), -7592i, -9058i), vec3<u32>(0u, 4294967295u, 4294967295u), false), Struct_2(Struct_1(vec3<f32>(-444f, 823f, -480f), 2147483647i, 2147483647i), vec3<u32>(1u, 22774u, 1u), true), Struct_2(Struct_1(vec3<f32>(-132f, 807f, 520f), 1i, -1042i), vec3<u32>(82878u, 69315u, 4294967295u), false), Struct_2(Struct_1(vec3<f32>(-1039f, 1064f, -842f), i32(-2147483648), 2147483647i), vec3<u32>(93794u, 0u, 4294967295u), true), Struct_2(Struct_1(vec3<f32>(461f, 887f, -172f), -32226i, 1i), vec3<u32>(1u, 832u, 1u), false), Struct_2(Struct_1(vec3<f32>(595f, 797f, 314f), -2361i, 1i), vec3<u32>(39174u, 51512u, 1u), false), Struct_2(Struct_1(vec3<f32>(630f, 748f, -772f), i32(-2147483648), -1i), vec3<u32>(1u, 1u, 35984u), false), Struct_2(Struct_1(vec3<f32>(1000f, 980f, -604f), i32(-2147483648), 2147483647i), vec3<u32>(17804u, 1u, 675u), true), Struct_2(Struct_1(vec3<f32>(-924f, 415f, -215f), -35719i, 2147483647i), vec3<u32>(4294967295u, 1u, 4294967295u), true), Struct_2(Struct_1(vec3<f32>(-206f, 1059f, -1226f), -6088i, -19847i), vec3<u32>(49255u, 4294967295u, 4294967295u), false), Struct_2(Struct_1(vec3<f32>(-1113f, 1098f, 219f), -46874i, -1i), vec3<u32>(11763u, 4294967295u, 5544u), false), Struct_2(Struct_1(vec3<f32>(-1470f, 732f, -831f), 0i, -20116i), vec3<u32>(25398u, 48836u, 6590u), true), Struct_2(Struct_1(vec3<f32>(-363f, 157f, 465f), i32(-2147483648), -58475i), vec3<u32>(40016u, 31042u, 0u), true), Struct_2(Struct_1(vec3<f32>(-1000f, 786f, -2316f), 17838i, -55548i), vec3<u32>(0u, 28675u, 4294967295u), true), Struct_2(Struct_1(vec3<f32>(-163f, -717f, 158f), -260i, i32(-2147483648)), vec3<u32>(58631u, 1u, 1u), false), Struct_2(Struct_1(vec3<f32>(-1245f, -412f, 1005f), i32(-2147483648), 34010i), vec3<u32>(0u, 0u, 2598u), false), Struct_2(Struct_1(vec3<f32>(246f, -1000f, -863f), 39263i, 0i), vec3<u32>(5386u, 49807u, 17257u), true), Struct_2(Struct_1(vec3<f32>(249f, -1434f, 724f), 2147483647i, i32(-2147483648)), vec3<u32>(1u, 10419u, 45090u), false), Struct_2(Struct_1(vec3<f32>(-1002f, -1200f, -178f), i32(-2147483648), -46655i), vec3<u32>(37346u, 4294967295u, 4294967295u), true), Struct_2(Struct_1(vec3<f32>(-858f, 134f, 483f), -48593i, -15114i), vec3<u32>(25806u, 7996u, 4294967295u), true), Struct_2(Struct_1(vec3<f32>(554f, -502f, -376f), -4033i, 842i), vec3<u32>(4294967295u, 4294967295u, 57004u), true), Struct_2(Struct_1(vec3<f32>(-199f, 147f, -371f), i32(-2147483648), 22969i), vec3<u32>(55720u, 0u, 36725u), true));

var<private> global3: array<Struct_3, 12>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: f32, arg_1: i32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0));
    var var_1 = vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(-(~arg_1), arg_1)), max(i32(-1i) * -1i, 0i), -24083i ^ u_input.c);
    var var_2 = Struct_3(_wgslsmith_clamp_vec3_i32(reverseBits(max(_wgslsmith_mod_vec3_i32(global0.a, vec3<i32>(u_input.c, arg_1, -18256i)), -vec3<i32>(-8041i, var_1.x, global0.d.x))), vec3<i32>(-(arg_1 | 2147483647i), 18248i, -global0.a.x >> (1u % 32u)), firstLeadingBit(vec3<i32>(-var_1.x, 0i & u_input.c, u_input.a))), u_input.e ^ _wgslsmith_mod_u32(4294967295u, global0.c), ~(u_input.e | global1.x) >> (_wgslsmith_mult_u32(0u, u_input.b.x) % 32u), global0.a);
    let var_3 = !(206f <= _wgslsmith_f_op_f32(-arg_0));
    let var_4 = vec3<bool>(any(!(!vec3<bool>(false, false, var_3))) | var_3, select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)), arg_0 >= arg_0, var_3), !var_3);
    return _wgslsmith_div_vec2_i32(var_2.d.zx, var_2.a.yy) | global0.d.zz;
}

fn func_3(arg_0: u32) -> u32 {
    global3 = array<Struct_3, 12>();
    let var_0 = 1i;
    global0 = Struct_3(vec3<i32>(-1i, 1i << (_wgslsmith_mod_u32(~global1.x, ~arg_0) % 32u), abs(global0.a.x)), ~(reverseBits(~4294967295u) << (arg_0 % 32u)), ~_wgslsmith_sub_u32(24379u, 12303u), global0.d);
    let var_1 = -1854f;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1 + 855f), -2448f, -150f)), -u_input.a, u_input.c), u_input.d, any(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))) && !(any(vec3<bool>(false, true, false)) && true));
    return _wgslsmith_div_u32(2007u, _wgslsmith_mult_u32(~4294967295u, 1u) & reverseBits(_wgslsmith_sub_u32(global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 66883u, global0.b, 56709u), vec4<u32>(global0.c, 0u, 64800u, var_2.b.x)))));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    let var_0 = true;
    global3 = array<Struct_3, 12>();
    var var_1 = min(_wgslsmith_add_vec2_i32(~_wgslsmith_div_vec2_i32(global0.d.xy, ~global0.d.yy), (select(vec2<i32>(global0.a.x, -2147483647i), vec2<i32>(global0.a.x, -2147483647i), var_0) | -global0.d.zz) ^ _wgslsmith_mod_vec2_i32(-vec2<i32>(42947i, 0i), func_2(arg_0.x, -3560i))), ~vec2<i32>(_wgslsmith_mult_i32(firstLeadingBit(u_input.a), global0.d.x ^ -2147483647i), -_wgslsmith_add_i32(-27870i, global0.a.x)));
    var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.d.x, u_input.c, u_input.a, global0.a.x), vec4<i32>(0i, global0.d.x, -1i, 34969i)), var_1.x), min(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(global0.a.xx, global0.d.yx), max(global0.d.xy, vec2<i32>(global0.d.x, 2147483647i))), 0i)), reverseBits(countOneBits(global0.a.zz)));
    global0 = global3[_wgslsmith_index_u32((global1.x >> (~1u % 32u)) | reverseBits(_wgslsmith_add_u32(func_3(~global1.x), ~(~51788u))), 12u)];
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(global1.x, 1u), _wgslsmith_clamp_vec2_u32(abs(_wgslsmith_mult_vec2_u32(u_input.d.xy, ~u_input.b.xx)), u_input.b.zy, vec2<u32>(_wgslsmith_mod_u32(~u_input.e, ~91361u), firstTrailingBit(~global0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1795f)), 1f)) <= _wgslsmith_f_op_f32(sign(1f));
    global3 = array<Struct_3, 12>();
    global2 = array<Struct_2, 32>();
    let var_1 = Struct_3(-vec3<i32>(~countOneBits(-1i), -2147483647i, countOneBits(~global0.a.x)), global0.b, func_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-755f, 652f, 589f, -272f), vec4<f32>(-1000f, -793f, 103f, 748f))))) << (firstTrailingBit(reverseBits(u_input.b.x)) % 32u), _wgslsmith_sub_vec3_i32(vec3<i32>(max(abs(global0.d.x), select(u_input.c, 1i, var_0)), global0.d.x, _wgslsmith_mult_i32(-global0.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 2147483647i, -33690i, 2147483647i), vec4<i32>(u_input.c, -1i, global0.d.x, -1i)))), global0.d));
    global1 = u_input.d.zx;
    let var_2 = !select(select(select(vec2<bool>(true, true), select(vec2<bool>(var_0, false), vec2<bool>(var_0, var_0), var_0), vec2<bool>(true, false)), !(!vec2<bool>(true, var_0)), true), select(select(vec2<bool>(true, true), !vec2<bool>(false, var_0), all(vec4<bool>(var_0, true, true, var_0))), select(vec2<bool>(true, true), vec2<bool>(true, var_0), !var_0), _wgslsmith_div_i32(var_1.d.x, 25009i) < -global0.a.x), vec2<bool>(!all(vec3<bool>(false, false, var_0)), all(select(vec2<bool>(var_0, false), vec2<bool>(var_0, false), true))));
    global0 = Struct_3(~var_1.a, u_input.b.x, global0.c, -vec3<i32>(firstTrailingBit(select(-1i, 0i, false)), global0.d.x, reverseBits(i32(-1i) * -1i)));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-245f, 150f), _wgslsmith_mod_u32(func_3(1u), ~u_input.d.x));
}

