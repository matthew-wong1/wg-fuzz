struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: i32 = -27815i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec2<i32> {
    var var_0 = arg_1;
    var var_1 = vec3<f32>(-1039f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-402f, -424f) + _wgslsmith_f_op_f32(ceil(-428f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -598f), _wgslsmith_f_op_f32(trunc(-444f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-131f + 1464f) + 1073f)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-466f, var_1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(step(-2590f, -1074f)), all(vec2<bool>(global0[_wgslsmith_index_u32(61448u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)])))))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(381f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(f32(-1f) * -883f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) - _wgslsmith_f_op_f32(floor(var_1.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x - 145f), _wgslsmith_f_op_f32(var_1.x + var_1.x)))), 1638f)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_div_f32(1279f, var_1.x), var_2.x)) + var_2.zyy));
    var var_3 = (select(abs(abs(vec3<i32>(arg_0.a.x, -93649i, arg_0.a.x))), vec3<i32>(arg_0.a.x, arg_0.a.x, 1i), !select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], false, false), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(22828u, 4u)]), global0[_wgslsmith_index_u32(1u, 4u)])) ^ _wgslsmith_clamp_vec3_i32(~firstTrailingBit(vec3<i32>(37504i, 104515i, -17826i)), vec3<i32>(_wgslsmith_div_i32(-2147483647i, arg_0.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, arg_0.a.x, 1i), vec3<i32>(-30988i, 2147483647i, -2147483647i)), arg_0.a.x & arg_0.a.x), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(arg_0.a.x, -10407i, arg_0.a.x)), firstLeadingBit(vec3<i32>(arg_0.a.x, -32614i, arg_0.a.x))))) | abs(vec3<i32>(-39532i, -(arg_0.a.x ^ 33658i), arg_0.a.x));
    return ~vec2<i32>(-(~var_3.x) << (61232u % 32u), var_3.x);
}

fn func_2(arg_0: u32, arg_1: i32) -> vec3<i32> {
    let var_0 = Struct_1(func_3(Struct_1(-vec2<i32>(34839i, -30822i)), _wgslsmith_sub_u32(4294967295u, arg_0 << (5933u % 32u))) ^ (min(-vec2<i32>(23049i, 18842i), vec2<i32>(arg_1, arg_1)) & -(vec2<i32>(arg_1, -21031i) & vec2<i32>(arg_1, 0i))));
    let var_1 = select(abs(~abs(vec3<u32>(u_input.a, arg_0, 16938u))), select(~(~vec3<u32>(u_input.a, arg_0, 0u)), vec3<u32>(~(arg_0 >> (42193u % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 28707u) & vec2<u32>(arg_0, arg_0), vec2<u32>(1u, 1u)), u_input.a), true & (true || (global0[_wgslsmith_index_u32(0u, 4u)] || false))), !select(!select(vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 4u)], true, global0[_wgslsmith_index_u32(36284u, 4u)]), false), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 4u)], true), global0[_wgslsmith_index_u32(arg_0, 4u)]), vec3<bool>(global0[_wgslsmith_index_u32(36307u, 4u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], true, false)), vec3<bool>(!global0[_wgslsmith_index_u32(arg_0, 4u)], false, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(26654u, 1u), 4u)])));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1765f), Struct_1(reverseBits(-_wgslsmith_mult_vec2_i32(vec2<i32>(22330i, arg_1), var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 280f))))), var_0, var_0);
    var var_3 = -min(vec2<i32>(-1122i, 1i), -(var_2.b.a >> (vec2<u32>(84753u, arg_0) % vec2<u32>(32u))));
    var var_4 = var_2;
    return abs(_wgslsmith_div_vec3_i32(firstLeadingBit(select(_wgslsmith_div_vec3_i32(vec3<i32>(var_4.d.a.x, var_3.x, -9833i), vec3<i32>(var_3.x, var_3.x, var_2.d.a.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(10923i, var_0.a.x, -1i), vec3<i32>(var_3.x, arg_1, var_0.a.x)), !vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)]))), -(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.x, -5848i, var_4.b.a.x), vec3<i32>(var_0.a.x, 0i, -2147483647i)) & vec3<i32>(var_2.b.a.x, 6841i, var_4.e.a.x))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: u32) -> Struct_3 {
    var var_0 = !global0[_wgslsmith_index_u32(reverseBits(u_input.a), 4u)];
    let var_1 = i32(-1i) * -(~_wgslsmith_dot_vec3_i32(func_2(arg_3, arg_1), _wgslsmith_clamp_vec3_i32(vec3<i32>(31305i, 1i, arg_1), vec3<i32>(-42856i, -305i, -6085i), vec3<i32>(1i, 0i, arg_1))));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_2, 130f), vec3<f32>(-1418f, arg_2, 655f))))))));
    global1 = reverseBits(~(_wgslsmith_mult_i32(_wgslsmith_add_i32(var_1, var_1), ~(-1i)) | var_1));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, arg_2)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, arg_2), _wgslsmith_f_op_f32(sign(var_2.x)))))), Struct_1(~(-min(vec2<i32>(1i, arg_1), vec2<i32>(-1i, arg_1)))), 1000f, Struct_1(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, 0i, arg_1), vec3<i32>(arg_1, -1i, -1i)), -arg_1), arg_1 ^ func_2(u_input.a, -2147483647i).x)), Struct_1(_wgslsmith_mult_vec2_i32(func_3(Struct_1(vec2<i32>(arg_1, var_1)), arg_3), _wgslsmith_div_vec2_i32(abs(vec2<i32>(arg_1, var_1)), -vec2<i32>(62585i, -2147483647i)))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_2.xy))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<i32> {
    global1 = func_3(arg_2, u_input.a).x;
    var var_0 = arg_3.x;
    var var_1 = abs(vec3<i32>(1i, arg_3.x, -54171i) << ((~vec3<u32>(20937u, u_input.a, u_input.a) & reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(82240u, u_input.a, u_input.a)))) % vec3<u32>(32u)));
    var_1 = max(func_2(47450u, -11955i), vec3<i32>(_wgslsmith_mult_i32(arg_3.x, 356i), _wgslsmith_dot_vec4_i32(min(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, arg_2.a.x, 8078i, arg_3.x), vec4<i32>(var_1.x, 0i, 17771i, 2147483647i)), -vec4<i32>(2147483647i, arg_3.x, 2010i, arg_2.a.x)), ~(vec4<i32>(69258i, arg_2.a.x, arg_3.x, 16100i) << (vec4<u32>(0u, u_input.a, 22424u, u_input.a) % vec4<u32>(32u)))), 1i >> (u_input.a % 32u)));
    global1 = _wgslsmith_add_i32(1i & _wgslsmith_sub_i32(abs(_wgslsmith_sub_i32(1i, arg_2.a.x)), var_1.x), _wgslsmith_add_i32(arg_3.x, -(~var_1.x ^ _wgslsmith_mult_i32(arg_2.a.x, 49580i))));
    return vec2<i32>(max(-arg_2.a.x, ~0i) & (~(~arg_3.x) >> (u_input.a % 32u)), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(1i, 33158i), vec2<i32>(2053i, -43444i)), firstLeadingBit(vec2<i32>(-2147483647i, 2147483647i))), _wgslsmith_clamp_vec2_i32(func_4(func_1(u_input.a, 35366i, 1000f, 1138u), _wgslsmith_f_op_f32(f32(-1f) * -966f), Struct_1(vec2<i32>(-2147483647i, 0i)), vec2<i32>(-41560i, 1i)), -abs(vec2<i32>(2147483647i, 0i)), vec2<i32>(1i, 1i))));
    let var_1 = ~(~abs(_wgslsmith_mod_i32(func_4(Struct_3(vec2<f32>(-2195f, 647f)), -185f, var_0, var_0.a).x, ~46488i)));
    global0 = array<bool, 4>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(810f + 632f)), Struct_1(-vec2<i32>(var_1, var_0.a.x)), -1729f, var_0, var_0);
    global1 = 40069i;
    var_2 = Struct_2(-798f, var_0, _wgslsmith_f_op_f32(select(1073f, _wgslsmith_f_op_f32(var_2.a * var_2.c), global0[_wgslsmith_index_u32(0u, 4u)])), Struct_1(vec2<i32>(1i, 1i)), var_2.e);
    let var_3 = firstLeadingBit(abs(vec3<i32>(var_2.e.a.x >> (1u % 32u), -68446i, var_1))) << (~vec3<u32>(~u_input.a & 34766u, abs(u_input.a) ^ 51415u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(30183u, u_input.a), 64671u << (u_input.a % 32u))) % vec3<u32>(32u));
    global1 = var_2.e.a.x;
    let var_4 = Struct_3(vec2<f32>(-1062f, var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.x, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mod_i32(abs(5772i & var_3.x), -2147483647i)), 30888i);
}

