struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28>;

var<private> global1: array<f32, 7>;

var<private> global2: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(false, vec3<i32>(9447i, 21803i, -1i), vec2<i32>(1i, 2147483647i), vec4<f32>(-335f, -1000f, -1650f, -263f), vec3<u32>(0u, 1u, 1u)), Struct_3(false, vec3<i32>(2540i, 0i, 14814i), vec2<i32>(i32(-2147483648), 0i), vec4<f32>(786f, -1764f, 2984f, 616f), vec3<u32>(40627u, 4294967295u, 16420u)), Struct_3(false, vec3<i32>(8721i, -19887i, 0i), vec2<i32>(30162i, -17103i), vec4<f32>(2508f, -1000f, -685f, -831f), vec3<u32>(1u, 0u, 67457u)), Struct_3(true, vec3<i32>(i32(-2147483648), -1270i, -1i), vec2<i32>(0i, 0i), vec4<f32>(-1658f, 432f, -346f, 997f), vec3<u32>(62378u, 1u, 4023u)), Struct_3(false, vec3<i32>(-1i, 170i, -1i), vec2<i32>(1i, 15436i), vec4<f32>(870f, -1113f, 967f, -488f), vec3<u32>(101288u, 1u, 5882u)));

var<private> global3: vec3<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>) -> vec4<u32> {
    global0 = array<vec3<u32>, 28>();
    var var_0 = Struct_2(false);
    let var_1 = false;
    var_0 = Struct_2(any(vec2<bool>(!var_0.a, false)));
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(0i), 1i, -40572i, 2147483647i), -vec4<i32>(-1i, u_input.b, -17474i, u_input.c.x)), -(~abs(u_input.c))), _wgslsmith_mod_vec4_i32(-u_input.c, ~abs(select(vec4<i32>(-17209i, u_input.b, -40484i, u_input.c.x), vec4<i32>(0i, u_input.c.x, u_input.c.x, 21745i), var_1))));
    return ~(vec4<u32>(~_wgslsmith_mult_u32(4294967295u, u_input.a.x), u_input.a.x, 8799u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 1679u, global3.x, 4294967295u), vec4<u32>(1u, global3.x, u_input.a.x, 13850u))) << (~abs(firstLeadingBit(vec4<u32>(0u, 28470u, u_input.a.x, arg_0.x))) % vec4<u32>(32u)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> vec2<f32> {
    var var_0 = firstTrailingBit(func_3(global3.zx));
    global1 = array<f32, 7>();
    let var_1 = Struct_3(true, vec3<i32>(arg_0, _wgslsmith_add_i32(-2147483647i, arg_1.a) << (~arg_3 % 32u), -17573i) << (~vec3<u32>(~global3.x, reverseBits(1u), _wgslsmith_mult_u32(arg_1.e, 1u)) % vec3<u32>(32u)), reverseBits(vec2<i32>(arg_0, firstLeadingBit(u_input.c.x))) ^ (abs(abs(u_input.c.ww)) & (firstTrailingBit(u_input.c.xz) | (u_input.c.xx | u_input.c.yy))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.b.x, 1000f, 480f, 535f))), _wgslsmith_div_vec4_f32(vec4<f32>(1087f, arg_1.b.x, -279f, 1065f), vec4<f32>(arg_1.b.x, 724f, global1[_wgslsmith_index_u32(arg_1.e, 7u)], global1[_wgslsmith_index_u32(15086u, 7u)]))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-177f, global1[_wgslsmith_index_u32(1u, 7u)], 569f, -1032f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(global3.x, 7u)], -726f, global1[_wgslsmith_index_u32(28345u, 7u)], arg_1.b.x)))))))), firstTrailingBit(vec3<u32>(~11882u, arg_3, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, arg_3, 58819u, arg_1.e), vec4<u32>(0u, u_input.a.x, 0u, var_0.x)))));
    let var_2 = Struct_2(all(select(!(!vec3<bool>(arg_1.d, false, false)), vec3<bool>(true, true, !var_1.a), vec3<bool>(true, all(vec4<bool>(true, false, arg_2, false)), any(vec3<bool>(false, false, false))))));
    global2 = array<Struct_3, 5>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.d.zy + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1845f, var_1.d.x))))));
}

fn func_1() -> vec2<f32> {
    global2 = array<Struct_3, 5>();
    var var_0 = Struct_2(false);
    var var_1 = vec2<bool>(~20946i != ~u_input.c.x, !(!var_0.a & var_0.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1557f * global1[_wgslsmith_index_u32(52326u, 7u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1126f * global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 7u)] - global1[_wgslsmith_index_u32(7747u, 7u)])))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(u_input.a.x), _wgslsmith_mult_u32(584u, global3.x)), 7u)] + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global3.x, 7u)] * global1[_wgslsmith_index_u32(21575u, 7u)]), -882f)))));
    var var_3 = Struct_2(!var_0.a);
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_2(0i, Struct_1(0i, vec3<f32>(_wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(ceil(1915f)), -392f), u_input.b, true, 1u), -(u_input.c.x << (0u % 32u)) == u_input.c.x, 0u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-556f, var_2.x) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(1u, 7u)]))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 7>();
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global3.x, global3.x, 4294967295u) ^ _wgslsmith_add_u32(global3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global3.x, 7507u), vec3<u32>(global3.x, u_input.a.x, global3.x))), 7u)], -185f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(19190u, 7u)], global1[_wgslsmith_index_u32(global3.x, 7u)]) + vec2<f32>(-1068f, 2076f)) * vec2<f32>(-213f, global1[_wgslsmith_index_u32(global3.x, 7u)])) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(249f, global1[_wgslsmith_index_u32(u_input.a.x, 7u)])))))), _wgslsmith_f_op_vec2_f32(func_1())));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(reverseBits(u_input.a.zx), ~(~_wgslsmith_add_vec2_u32(vec2<u32>(global3.x, 67585u), u_input.a.yz))), reverseBits(701u)), 5u)];
    var var_2 = var_1.e.x;
    var var_3 = global2[_wgslsmith_index_u32(abs(u_input.a.x << (var_1.e.x % 32u)), 5u)];
    var var_4 = Struct_1(u_input.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_1.d.yxz + var_3.d.zzx))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.x, var_0.x, var_3.d.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(681f, var_1.d.x, var_3.d.x))))), _wgslsmith_f_op_vec3_f32(round(var_3.d.zyz))), ~var_1.c.x, (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1000f)))) != _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_1()).x, -1000f)) || all(select(select(vec2<bool>(false, var_1.a), vec2<bool>(true, true), vec2<bool>(var_3.a, true)), !vec2<bool>(true, var_3.a), var_3.a & false)), 34282u);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(22375u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(0u, 1u)), vec2<u32>(14577u, 9008u))), var_1.e.xx);
}

