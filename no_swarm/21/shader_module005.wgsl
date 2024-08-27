struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

var<private> global1: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(4983i, i32(-2147483648), -47756i), vec3<i32>(0i, -50223i, -21036i), vec3<i32>(11848i, 60998i, 0i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_4, arg_3: Struct_2) -> u32 {
    global1 = array<vec3<i32>, 3>();
    global0 = array<Struct_3, 10>();
    let var_0 = abs(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~arg_3.a.d.x), 47998u), 3u)]);
    var var_1 = Struct_4(arg_3, arg_2.b, Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-798f - _wgslsmith_f_op_f32(min(-573f, arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(-arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.a.x) - -460f))));
    global0 = array<Struct_3, 10>();
    return ~3546u;
}

fn func_1() -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(1u, 3u)];
    global1 = array<vec3<i32>, 3>();
    global1 = array<vec3<i32>, 3>();
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-270f, 137f)))));
    var var_2 = Struct_1(vec2<i32>(_wgslsmith_add_i32(u_input.b.x, u_input.c) << (0u % 32u), firstTrailingBit(-u_input.a)) << (vec2<u32>(_wgslsmith_add_u32(~17335u, firstTrailingBit(4411u)), ~func_2(vec2<f32>(1043f, -1492f), u_input.b.x, Struct_4(Struct_2(Struct_1(u_input.b, 0u, var_0.xx, vec3<u32>(4294967295u, 62551u, 4294967295u)), Struct_1(u_input.b, 1u, vec2<i32>(u_input.b.x, 2147483647i), vec3<u32>(4294967295u, 1u, 24558u))), vec4<bool>(false, true, false, true), Struct_3(vec4<f32>(138f, 1066f, 1701f, 168f))), Struct_2(Struct_1(u_input.b, 30421u, vec2<i32>(-19465i, u_input.a), vec3<u32>(1u, 14165u, 20442u)), Struct_1(vec2<i32>(0i, -2147483647i), 82771u, var_0.xz, vec3<u32>(0u, 11515u, 4017u))))) % vec2<u32>(32u)), ~1u, select(max(max(vec2<i32>(var_0.x, var_0.x), _wgslsmith_mod_vec2_i32(var_0.yy, var_0.xz)), vec2<i32>(reverseBits(u_input.d), -40610i)), -max(var_0.xy, ~u_input.b), true), firstLeadingBit(vec3<u32>(1u, max(~4294967295u, 1060u), 1u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1160f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1431f)));
}

fn func_3() -> vec2<u32> {
    global0 = array<Struct_3, 10>();
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1054f), _wgslsmith_f_op_f32(step(875f, -797f)), _wgslsmith_f_op_f32(step(-1169f, -591f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(945f, -130f, 1347f)))))))));
    var var_1 = u_input.b.x;
    global1 = array<vec3<i32>, 3>();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1694f))), var_0.x, 910f)));
    return select(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u) & vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(83554u, 81111u)), 80452u)), firstTrailingBit(vec2<u32>(1u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 1u, 1u)) <= 4294967295u);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: bool) -> f32 {
    global1 = array<vec3<i32>, 3>();
    let var_0 = max(~_wgslsmith_add_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(40329u, 42585u), vec2<u32>(66880u, 52798u)), ~vec2<u32>(7390u, 0u), select(vec2<bool>(false, false), vec2<bool>(arg_2, true), vec2<bool>(arg_2, false))), vec2<u32>(firstTrailingBit(0u), 79583u)), ~vec2<u32>(1u, 1u));
    let var_1 = var_0.x | ~var_0.x;
    let var_2 = u_input.b;
    global1 = array<vec3<i32>, 3>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 3>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(764f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(558f + -1015f) - 129f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-244f + -388f) - _wgslsmith_f_op_f32(1117f * -867f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), 288f))))));
    var var_1 = u_input.c;
    global1 = array<vec3<i32>, 3>();
    global0 = array<Struct_3, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(163u, ~52499u, ~22447u), _wgslsmith_f_op_f32(func_4(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(599f + -837f), _wgslsmith_f_op_f32(f32(-1f) * -1148f), -1000f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_3(), firstTrailingBit(vec2<u32>(75155u, 60467u))), 3u)], false)), global1[_wgslsmith_index_u32(1u, 3u)], vec2<i32>(u_input.c, u_input.d), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(824f, 257f, -1307f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-326f, 1000f, 1000f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(2212f, -943f, 640f), vec3<f32>(1536f, -204f, 325f)), vec3<f32>(-468f, -1795f, -2008f), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-939f, -853f), _wgslsmith_f_op_f32(1272f + -1000f), 1f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(418f, 2165f, -715f), vec3<f32>(-423f, -1549f, -504f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1480f, 1000f, -147f)))))));
}

