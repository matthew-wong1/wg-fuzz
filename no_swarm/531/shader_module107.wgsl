struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(-1i, 1i, -30887i, -53042i), vec4<i32>(-9853i, -50833i, -46091i, 1i), vec4<i32>(i32(-2147483648), -20948i, 40636i, -36291i), vec4<i32>(1i, 2147483647i, 1i, 20680i), vec4<i32>(5655i, 1i, 0i, 14916i), vec4<i32>(i32(-2147483648), -1i, 37314i, 1i), vec4<i32>(5183i, -1i, -3361i, 2147483647i), vec4<i32>(36804i, 2147483647i, 73481i, -27807i), vec4<i32>(-3368i, -15225i, 7446i, 13460i), vec4<i32>(-11165i, -1i, -70744i, 25928i), vec4<i32>(0i, -1655i, -1i, -12303i));

var<private> global2: vec4<u32> = vec4<u32>(1u, 94015u, 4294967295u, 9348u);

var<private> global3: array<bool, 12>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_sub_i32(-(~1i), -19233i) & global0[_wgslsmith_index_u32(~(~global2.x), 29u)], -623f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -200f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-702f + _wgslsmith_f_op_f32(step(-349f, -1007f))), -1128f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -396f)), ~_wgslsmith_add_u32(global2.x, global2.x));
    global0 = array<i32, 29>();
    let var_1 = !vec4<bool>(global3[_wgslsmith_index_u32(global2.x, 12u)], any(select(select(vec4<bool>(false, false, true, global3[_wgslsmith_index_u32(0u, 12u)]), vec4<bool>(global3[_wgslsmith_index_u32(13499u, 12u)], global3[_wgslsmith_index_u32(1u, 12u)], true, false), vec4<bool>(false, false, true, false)), !vec4<bool>(true, true, var_0.d, var_0.d), all(vec2<bool>(false, var_0.d)))), true, true);
    var_0 = Struct_1(u_input.a.x, var_0.c, var_0.b, true, ~var_0.e);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-765f * 1581f), _wgslsmith_f_op_f32(floor(-838f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-298f, -365f, var_0.c) * vec3<f32>(var_0.b, var_0.b, var_0.c)))))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), var_2.x) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.x, 1199f), vec2<f32>(var_0.c, var_0.c))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1564f, 1317f), vec2<f32>(var_2.x, -323f))), var_0.d || global3[_wgslsmith_index_u32(4294967295u, 12u)]))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), var_0.c), var_2.yz)) - var_2.xy));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.c);
    var var_1 = false;
    let var_2 = Struct_1((abs(_wgslsmith_sub_i32(arg_0.a, 1i)) << (abs(select(18380u, 35871u, arg_0.d)) % 32u)) << (_wgslsmith_clamp_u32(1u, ~85422u << (~arg_2.e % 32u), global2.x) % 32u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c + arg_2.b), arg_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1389f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_2()).x)))), any(!select(vec2<bool>(global3[_wgslsmith_index_u32(arg_0.e, 12u)], false), select(vec2<bool>(false, true), vec2<bool>(arg_2.d, true), vec2<bool>(arg_0.d, global3[_wgslsmith_index_u32(global2.x, 12u)])), arg_0.d != false)), max(~(arg_2.e | _wgslsmith_mod_u32(global2.x, 4294967295u)), ~arg_2.e));
    let var_3 = any(select(vec4<bool>(all(select(vec2<bool>(arg_2.d, global3[_wgslsmith_index_u32(global2.x, 12u)]), vec2<bool>(true, var_2.d), vec2<bool>(false, true))), any(!vec3<bool>(arg_0.d, false, true)), (arg_0.d & true) | all(vec3<bool>(true, true, var_2.d)), any(!vec3<bool>(false, arg_2.d, false))), vec4<bool>(any(select(vec4<bool>(false, arg_2.d, true, false), vec4<bool>(true, arg_2.d, false, global3[_wgslsmith_index_u32(48623u, 12u)]), false)), false, arg_0.d, var_2.d), select(vec4<bool>(select(global3[_wgslsmith_index_u32(24815u, 12u)], global3[_wgslsmith_index_u32(arg_2.e, 12u)], true), true, var_2.d, all(vec4<bool>(arg_2.d, arg_2.d, false, false))), select(select(vec4<bool>(false, arg_2.d, true, arg_2.d), vec4<bool>(false, true, true, true), arg_0.d), select(vec4<bool>(true, arg_2.d, false, global3[_wgslsmith_index_u32(var_2.e, 12u)]), vec4<bool>(true, true, arg_2.d, global3[_wgslsmith_index_u32(41747u, 12u)]), arg_2.d), vec4<bool>(false, var_2.d, var_2.d, global3[_wgslsmith_index_u32(805u, 12u)])), vec4<bool>(arg_2.d, true, all(vec3<bool>(arg_2.d, true, true)), global3[_wgslsmith_index_u32(20311u, 12u)]))));
    let var_4 = vec2<u32>(firstLeadingBit(var_2.e), arg_0.e);
    return ~_wgslsmith_sub_vec4_u32(select(~abs(vec4<u32>(var_2.e, 0u, 39515u, var_4.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, var_2.e, 5134u), ~vec4<u32>(28890u, var_4.x, 4294967295u, arg_0.e)), !(!vec4<bool>(arg_2.d, arg_0.d, arg_2.d, false))), ~min(countOneBits(vec4<u32>(8270u, 0u, global2.x, 1u)), abs(vec4<u32>(1u, arg_0.e, global2.x, arg_0.e))));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    let var_0 = Struct_1(30109i, -554f, _wgslsmith_f_op_f32(abs(-1191f)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~global2.x), 29u)] != global0[_wgslsmith_index_u32(~0u, 29u)], _wgslsmith_sub_u32(~global2.x & 15772u, ~global2.x));
    var var_1 = Struct_1(var_0.a, var_0.c, _wgslsmith_f_op_f32(round(192f)), global3[_wgslsmith_index_u32(global2.x, 12u)], countOneBits(~global2.x));
    var var_2 = _wgslsmith_mod_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(var_1.e, 27712u), ~var_0.e, _wgslsmith_dot_vec2_u32(global2.yx, vec2<u32>(1u, var_0.e)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e, global2.x, global2.x), vec3<u32>(var_0.e, var_1.e, 0u))), vec4<u32>(_wgslsmith_mult_u32(global2.x, var_0.e), ~4294967295u, _wgslsmith_mult_u32(global2.x, 127895u), var_1.e))), _wgslsmith_clamp_vec4_u32(func_3(Struct_1(~arg_0, _wgslsmith_f_op_f32(-1196f + var_1.b), var_0.c, all(vec2<bool>(true, false)), 59722u), _wgslsmith_f_op_vec2_f32(func_2()), Struct_1(var_1.a, 222f, -2116f, false, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.e, 4294967295u), vec2<u32>(global2.x, var_0.e)))), _wgslsmith_add_vec4_u32(~(vec4<u32>(var_0.e, 1u, global2.x, var_0.e) >> (vec4<u32>(5705u, 15985u, 46390u, var_0.e) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 1u), select(vec4<u32>(4294967295u, var_1.e, 0u, global2.x), vec4<u32>(var_0.e, 1u, 64587u, 26257u), vec4<bool>(true, global3[_wgslsmith_index_u32(13346u, 12u)], var_1.d, var_0.d)))), _wgslsmith_mult_vec4_u32(select(vec4<u32>(0u, 71750u, var_0.e, var_0.e), vec4<u32>(6768u, 4294967295u, global2.x, 4294967295u), vec4<bool>(true, true, true, true)) & vec4<u32>(125948u, var_1.e, var_0.e, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.e, var_1.e, 0u, var_1.e), vec4<u32>(var_0.e, 4294967295u, 58017u, global2.x)) ^ firstTrailingBit(vec4<u32>(global2.x, 4294967295u, global2.x, var_0.e)))));
    let var_3 = Struct_1(u_input.a.x >> (_wgslsmith_sub_u32(1u & firstTrailingBit(1u), 22908u) % 32u), _wgslsmith_f_op_f32(trunc(-741f)), var_1.b, any(!vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 12u)], var_1.d, global3[_wgslsmith_index_u32(var_2.x, 12u)])) || all(vec4<bool>(true, var_0.c <= var_0.c, all(vec4<bool>(var_0.d, var_1.d, var_0.d, global3[_wgslsmith_index_u32(53438u, 12u)])), 1i < arg_0)), 1u);
    var_2 = ~firstTrailingBit(vec4<u32>(reverseBits(abs(4294967295u)), ~firstTrailingBit(var_2.x), var_1.e, var_3.e));
    return StorageBuffer(2147483647i, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - var_1.b) + var_1.c), -669f), _wgslsmith_div_f32(-1578f, _wgslsmith_f_op_f32(f32(-1f) * -462f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.c, var_1.c), _wgslsmith_f_op_f32(-var_0.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.c), _wgslsmith_f_op_f32(f32(-1f) * -971f))) * _wgslsmith_f_op_f32(sign(-346f)))), ~(var_0.a & _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mult_i32(var_3.a, -9301i))), countOneBits(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(0u, var_2.x, var_0.e) >> (var_2.wxy % vec3<u32>(32u))), ~select(var_2.wzz, vec3<u32>(global2.x, 0u, var_2.x), var_1.d), firstLeadingBit(select(vec3<u32>(6449u, 4294967295u, var_2.x), vec3<u32>(45545u, global2.x, 85533u), vec3<bool>(global3[_wgslsmith_index_u32(1u, 12u)], true, true))))), firstTrailingBit(1u) ^ 27052u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 29>();
    let x = u_input.a;
    s_output = func_1(1i);
}

