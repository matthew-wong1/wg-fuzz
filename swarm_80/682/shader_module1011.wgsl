struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
    d: Struct_3,
    e: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12>;

var<private> global1: array<bool, 12>;

var<private> global2: array<vec2<f32>, 4>;

var<private> global3: array<bool, 1>;

var<private> global4: array<vec4<u32>, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = Struct_5(_wgslsmith_div_u32(~(~4689u) | _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, 4294967295u, arg_2, u_input.c)), ~vec4<u32>(0u, 1u, u_input.c, arg_2)), 37598u), vec3<u32>(abs(~min(17661u, u_input.c)), ~4294967295u, 4294967295u & firstTrailingBit(_wgslsmith_mod_u32(arg_2, 123900u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1090f, -1199f, 941f, 159f), vec4<f32>(915f, 1616f, -402f, -960f))), vec4<f32>(421f, -530f, -349f, -167f)))));
    global4 = array<vec4<u32>, 31>();
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, ~(arg_1.b << (u_input.a % 32u))), firstTrailingBit(~(-2147483647i)), _wgslsmith_clamp_i32(arg_0.c, -1i, -arg_1.c)), select(u_input.b, vec4<i32>(arg_0.b, firstLeadingBit(countOneBits(1i)), -(9358i << (u_input.d.x % 32u)), i32(-1i) * -84855i), false));
    global4 = array<vec4<u32>, 31>();
    var var_2 = Struct_4(Struct_1(max(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, var_1.x), var_1.yx)), vec2<i32>(u_input.b.x, 1i)), arg_0.a.x, firstTrailingBit(_wgslsmith_mod_i32(firstLeadingBit(u_input.b.x), 0i))), Struct_3(vec2<bool>(false, !(-2147483647i != var_1.x)), Struct_2(firstTrailingBit(vec2<i32>(49247i, 15764i))), var_0.c.x, Struct_2(arg_1.a)), 0u, Struct_3(vec2<bool>(true, !(global3[_wgslsmith_index_u32(36405u, 1u)] | true)), Struct_2(vec2<i32>(arg_0.b, -2147483647i)), -1534f, Struct_2(-(arg_1.a | arg_1.a))), u_input.b);
    return 1u != ~var_2.c;
}

fn func_2(arg_0: i32, arg_1: f32) -> u32 {
    global0 = array<vec3<f32>, 12>();
    global2 = array<vec2<f32>, 4>();
    var var_0 = vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 12u)], any(vec3<bool>(!func_3(Struct_1(u_input.b.wx, 101567i, arg_0), Struct_1(vec2<i32>(5889i, 0i), -27841i, -11558i), 11066u), true, any(vec4<bool>(global3[_wgslsmith_index_u32(17508u, 1u)], global3[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(113668u, 12u)])) & global3[_wgslsmith_index_u32(u_input.c, 1u)])), ~u_input.c >= u_input.c, false);
    var var_1 = arg_0;
    var var_2 = Struct_2(-_wgslsmith_div_vec2_i32(-reverseBits(u_input.b.xx), ~vec2<i32>(1i, 1i)));
    return ~75896u;
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    global0 = array<vec3<f32>, 12>();
    global0 = array<vec3<f32>, 12>();
    let var_0 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, ~u_input.d.x), _wgslsmith_div_u32(60084u, 1u)), ~func_2(18430i, arg_0.x)) ^ ~vec2<u32>(countOneBits(1u), u_input.c);
    let var_1 = Struct_5(u_input.d.x, ~u_input.d.zww | (_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c, u_input.c, u_input.a)), vec3<u32>(var_0.x, u_input.c, 4294967295u)) | vec3<u32>(4294967295u, ~u_input.c, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), arg_0.x, _wgslsmith_f_op_f32(select(arg_0.x, 1109f, all(!vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 1u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))))));
    var var_2 = Struct_1(u_input.b.zx, u_input.b.x, 1698i);
    return Struct_3(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.c, 1u)], any(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(161u, 1u)], global1[_wgslsmith_index_u32(var_1.b.x, 12u)]))), Struct_2(min(_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.b.x, var_2.c), vec2<i32>(-12421i, -16750i) << (u_input.d.xx % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(min(vec2<i32>(1i, var_2.c), vec2<i32>(u_input.b.x, -25502i)), -vec2<i32>(u_input.b.x, var_2.c)))), _wgslsmith_f_op_f32(-839f * _wgslsmith_f_op_f32(-var_1.c.x)), Struct_2(_wgslsmith_mult_vec2_i32(abs(~var_2.a), -vec2<i32>(0i, var_2.c))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = Struct_1(~countOneBits(countOneBits(vec2<i32>(0i, arg_1.d.a.x))), reverseBits(-func_1(_wgslsmith_f_op_vec4_f32(-arg_0.c)).b.a.x), u_input.b.x);
    return abs(~arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<u32>, 31>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1256f, -1323f, !global1[_wgslsmith_index_u32(0u, 12u)]))), _wgslsmith_f_op_f32(ceil(1128f)), -383f);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -889f), _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-921f - _wgslsmith_f_op_f32(min(var_0.x, -1463f))), _wgslsmith_f_op_f32(min(-289f, 1000f)))), var_0.x);
    var var_1 = ~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~(~u_input.d.yw), ~vec2<u32>(11060u, u_input.c)), ~u_input.d.yy << (vec2<u32>(4294967295u >> (u_input.d.x % 32u), ~4294967295u) % vec2<u32>(32u)));
    let var_2 = global3[_wgslsmith_index_u32(0u, 1u)];
    var var_3 = 27804u;
    let x = u_input.a;
    s_output = StorageBuffer(20068u, -2147483647i, func_4(Struct_5(0u, vec3<u32>(0u, 11878u, 0u), vec4<f32>(var_0.x, 588f, var_0.x, var_0.x)), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1065f, var_0.x, var_0.x) - vec4<f32>(-491f, var_0.x, 907f, var_0.x)))) | ~countOneBits(vec3<u32>(21431u, var_1.x, 19952u) & u_input.d.yxz), abs(_wgslsmith_mod_vec3_i32(select(u_input.b.xzx, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<bool>(global1[_wgslsmith_index_u32(1u, 12u)], false, true)), u_input.b.yxy & u_input.b.yyw)) & firstLeadingBit(~(~vec3<i32>(u_input.b.x, u_input.b.x, -74388i))), 4294967295u);
}

