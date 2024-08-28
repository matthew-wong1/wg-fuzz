struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global2: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(2147483647i, i32(-2147483648), -26280i), vec3<i32>(0i, 1i, -226i), vec3<i32>(6774i, 1i, -51741i), vec3<i32>(i32(-2147483648), -3718i, -1i), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(-96194i, 7102i, 28035i), vec3<i32>(-1i, -18410i, -1i), vec3<i32>(-3414i, -1i, -5691i), vec3<i32>(-28619i, 28734i, 1i), vec3<i32>(-2945i, -30367i, -1i), vec3<i32>(37633i, 2147483647i, 72167i), vec3<i32>(-5319i, -886i, -34590i), vec3<i32>(-18780i, i32(-2147483648), i32(-2147483648)), vec3<i32>(19476i, 26140i, -19634i), vec3<i32>(-9462i, -39418i, 33512i), vec3<i32>(-7188i, 2147483647i, -52739i), vec3<i32>(1i, -32701i, 2147483647i), vec3<i32>(1i, -1950i, 0i), vec3<i32>(41302i, -22124i, 30582i), vec3<i32>(10773i, 91463i, -19136i), vec3<i32>(-1i, 1i, 488i));

var<private> global3: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> u32 {
    let var_0 = vec3<i32>(-11635i, _wgslsmith_div_i32(2147483647i, countOneBits(arg_1)), _wgslsmith_add_i32(-39896i, _wgslsmith_mult_i32(-1i, arg_2)) | firstTrailingBit(~3254i));
    let var_1 = arg_0;
    var var_2 = -2147483647i;
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -588f), vec2<u32>(~(~0u), ~(~arg_0.b.x)), var_1.c));
    let var_4 = Struct_3(Struct_1(arg_0.c.x, vec2<u32>(~74187u, 1u), vec3<f32>(_wgslsmith_f_op_f32(max(476f, _wgslsmith_f_op_f32(-var_3.a.c.x))), 153f, _wgslsmith_f_op_f32(f32(-1f) * -964f))));
    return 0u;
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global1 = select(vec4<bool>(true || all(vec3<bool>(true, global1.x, true)), global1.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(5546u, 0u, 0u, 43351u)), abs(vec4<u32>(72091u, 0u, 1u, 0u))) > 5885u, true), vec4<bool>(false, any(vec3<bool>(any(global1.yxx), !global1.x, true || global1.x)), all(!select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(false, false, global1.x, global1.x))), true), !global1.x);
    var var_0 = ~1u;
    var var_1 = 270f;
    var var_2 = Struct_3(Struct_1(1136f, global0[_wgslsmith_index_u32(~(~1u), 17u)], vec3<f32>(1f, 1f, 1f)));
    var var_3 = _wgslsmith_f_op_f32(516f + var_2.a.a) != _wgslsmith_f_op_f32(max(var_2.a.c.x, _wgslsmith_f_op_f32(round(1042f))));
    return _wgslsmith_add_u32(~(func_3(var_2.a, 21138i, u_input.a) ^ var_2.a.b.x), ~(_wgslsmith_div_u32(var_2.a.b.x, ~8155u) >> (~var_2.a.b.x % 32u)));
}

fn func_1() -> Struct_2 {
    let var_0 = false;
    let var_1 = _wgslsmith_mod_vec2_u32(firstTrailingBit(global0[_wgslsmith_index_u32(39125u, 17u)]), abs(firstLeadingBit(global0[_wgslsmith_index_u32(~57962u, 17u)])) << (global0[_wgslsmith_index_u32(0u, 17u)] % vec2<u32>(32u)));
    global0 = array<vec2<u32>, 17>();
    global2 = array<vec3<i32>, 21>();
    global3 = 4294967295u;
    return Struct_2(select(var_1.x >> (_wgslsmith_mod_u32(var_1.x, 18553u) % 32u), func_2(global2[_wgslsmith_index_u32(max(abs(4294967295u), _wgslsmith_add_u32(80256u, 36441u)), 21u)]), var_0), Struct_1(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-584f * _wgslsmith_f_op_f32(step(411f, 1390f)))), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, var_1.x), _wgslsmith_add_vec2_u32(countOneBits(global0[_wgslsmith_index_u32(1u, 17u)]), var_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(987f, -510f, -1000f), vec3<f32>(1760f, 1000f, 1031f), var_0)), vec3<f32>(722f, -1000f, 552f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(515f, 1107f, -1059f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -847f, -1367f)))))), Struct_1(_wgslsmith_f_op_f32(min(-949f, -875f)), ~(~firstLeadingBit(vec2<u32>(var_1.x, 10500u))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(1387f * -1493f), _wgslsmith_f_op_f32(ceil(1148f)), -488f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1350f, -716f, 320f), vec3<f32>(374f, 1506f, -574f)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -322f))), _wgslsmith_div_vec2_u32(~countOneBits(vec2<u32>(var_1.x, 55648u)), var_1), vec3<f32>(1f, 1f, 1f)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    var var_0 = -u_input.a;
    var_0 = 59880i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(141362u, 77692u, 18933u), vec3<u32>(62156u, 41183u, 4294967295u)), arg_1.d.b.x ^ arg_0.a.b.x), func_3(arg_0.a, -17266i, -77719i)), ~vec2<u32>(arg_1.c.b.x, 18747u)) % 32u);
    let var_1 = any(!vec3<bool>(true, global1.x, true));
    global3 = ~arg_1.b.b.x;
    var var_2 = true;
    return arg_1.c;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_4) -> Struct_1 {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(55889u, 20378u, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_2.c, 0u), vec3<u32>(arg_0.b.x, 0u, arg_1)))), ~vec3<u32>(~arg_2.c, arg_2.b.b.x, _wgslsmith_add_u32(2504u, 11812u))), 18225u);
    global2 = array<vec3<i32>, 21>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(func_4(Struct_3(arg_2.b), func_1()).a - _wgslsmith_f_op_f32(-arg_0.c.x))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-278f + -255f), -925f, _wgslsmith_f_op_f32(step(var_1.x, arg_0.c.x)), arg_0.c.x)))), arg_0, ~_wgslsmith_sub_u32(arg_1, 46752u), arg_2.d, _wgslsmith_f_op_f32(floor(arg_0.c.x)));
    global2 = array<vec3<i32>, 21>();
    return arg_2.b;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-669f, 299f)))), vec2<u32>(arg_0.b.x, func_2(_wgslsmith_mod_vec3_i32(global2[_wgslsmith_index_u32(arg_0.b.x ^ arg_0.b.x, 21u)], vec3<i32>(85066i, u_input.a, u_input.a)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0.c - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.a, -631f, -568f), arg_0.c))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(281f, arg_0.a, -1048f)) + arg_0.c), global1.yxw)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1470f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1299f, -1123f), _wgslsmith_f_op_f32(203f + -917f)))))));
    var var_1 = Struct_1(-470f, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 267u, 4294967295u, 46307u), vec4<u32>(0u, 4294967295u, 82420u, 12184u)), ~41888u, 5893u, _wgslsmith_clamp_u32(42508u, 24751u, 1u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(17276u, 4294967295u, 49858u, 14971u), vec4<u32>(0u, 105065u, 47137u, 13869u))), 18244u), 17u)], vec3<f32>(209f, 1890f, var_0.x));
    var_1 = func_6(func_5(Struct_1(663f, var_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_1.c.x)) - var_1.c)), firstTrailingBit(4294967295u), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(step(-330f, var_0.x)), var_0.x, -1246f, _wgslsmith_f_op_f32(var_1.c.x - 934f)), func_4(Struct_3(Struct_1(var_1.c.x, vec2<u32>(var_1.b.x, var_1.b.x), vec3<f32>(-175f, var_0.x, 1588f))), func_1()), select(1u, 21433u, global1.x & false), false, var_1.a)), abs(reverseBits(~(~vec2<i32>(0i, u_input.a)))));
    global2 = array<vec3<i32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(-126f, var_1.c.yy, 1u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(2378f, -381f, -1347f, var_1.c.x) * vec4<f32>(var_1.c.x, var_1.a, 1172f, var_1.c.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-949f, var_1.c.x, -443f, 701f)))))), 1i);
}

