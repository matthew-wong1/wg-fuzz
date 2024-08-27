struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<i32, 14> = array<i32, 14>(40748i, 1i, 0i, -10475i, 1i, -2370i, -14148i, 0i, 1i, 1i, -3285i, 0i, 0i, 2147483647i);

var<private> global2: array<i32, 13> = array<i32, 13>(-1i, -26084i, 2147483647i, -20794i, 2147483647i, -32421i, i32(-2147483648), 2147483647i, 0i, 68897i, 5884i, 0i, -21515i);

var<private> global3: array<bool, 30>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1123f, _wgslsmith_f_op_f32(-107f * 856f))))), _wgslsmith_f_op_f32(f32(-1f) * -1438f), _wgslsmith_f_op_f32(select(1955f, -1297f, (false | global3[_wgslsmith_index_u32(1731u, 30u)]) != true))));
    var_0 = Struct_1(vec3<f32>(var_0.a.x, _wgslsmith_div_f32(-2279f, _wgslsmith_f_op_f32(372f + _wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-722f + var_0.a.x), -547f)))));
    let var_1 = vec4<i32>(u_input.c, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-19312i, 0i, global1[_wgslsmith_index_u32(u_input.d, 14u)], u_input.c)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(arg_0, 14u)], 1i, global2[_wgslsmith_index_u32(arg_0, 13u)]), vec4<i32>(0i, -24768i, global2[_wgslsmith_index_u32(arg_0, 13u)], 39935i)), vec4<i32>(global1[_wgslsmith_index_u32(132440u, 14u)] << (u_input.d % 32u), -2147483647i, -4603i, reverseBits(u_input.c))), 2147483647i), abs(min(~0i, global1[_wgslsmith_index_u32(max(select(12211u, 68777u, false), countOneBits(80969u)), 14u)])), _wgslsmith_sub_i32(~u_input.c, firstLeadingBit(_wgslsmith_div_i32(0i, global2[_wgslsmith_index_u32(0u, 13u)])) << (28142u % 32u)));
    var var_2 = Struct_1(var_0.a);
    global0 = vec4<bool>(!(!(!global0.x)), false, false, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(select(var_1.zz, u_input.a, global0.yz), vec2<i32>(-3760i, -24375i), countOneBits(u_input.a)), max(vec2<i32>(0i, -2147483647i) | u_input.a, u_input.a)) <= (i32(-1i) * -73417i));
    return u_input.d;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 1i & _wgslsmith_sub_i32(0i, _wgslsmith_dot_vec3_i32(-vec3<i32>(global1[_wgslsmith_index_u32(arg_0, 14u)], global2[_wgslsmith_index_u32(1u, 13u)], u_input.c), vec3<i32>(~u_input.a.x, global2[_wgslsmith_index_u32(15707u, 13u)] << (arg_0 % 32u), global1[_wgslsmith_index_u32(u_input.d, 14u)] >> (u_input.d % 32u))));
    let var_1 = _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(~60272u, 14u)], -global2[_wgslsmith_index_u32(func_3(1u), 13u)]);
    var var_2 = arg_2;
    global3 = array<bool, 30>();
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_3.a.x - 1151f), _wgslsmith_f_op_f32(-1558f + -2724f), -429f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-775f, 911f, arg_3.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1085f, arg_2.a.x, arg_2.a.x) - vec3<f32>(var_2.a.x, arg_3.a.x, arg_2.a.x))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_2.a - arg_3.a)))))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), var_3.a.x, _wgslsmith_div_f32(arg_3.a.x, -657f)), _wgslsmith_f_op_vec3_f32(var_2.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -739f, -158f))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.a.x, var_3.a.x, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3.a.x + 246f))), _wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_div_f32(-357f, arg_2.a.x)))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(reverseBits(118893u), _wgslsmith_mod_vec2_u32(countOneBits(u_input.b.yy), firstTrailingBit(min(vec2<u32>(u_input.b.x, u_input.d), u_input.b.yy)) ^ u_input.b.yz), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 1058f, -1131f), vec3<f32>(1229f, 603f, -1915f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(233f, 2135f, -1000f))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1725f, -833f, 1000f)))))));
    global0 = !(!(!vec4<bool>(true, global0.x, global3[_wgslsmith_index_u32(38341u, 30u)], false)));
    var var_1 = Struct_1(var_0.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1165f - 553f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.x * var_1.a.x))))));
    var var_3 = -(~(~(~reverseBits(vec3<i32>(-8943i, -84610i, u_input.a.x)))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    global1 = array<i32, 14>();
    let var_1 = all(vec3<bool>(select(u_input.a.x, abs(53402i), !global3[_wgslsmith_index_u32(29206u, 30u)]) < global2[_wgslsmith_index_u32(~firstLeadingBit(u_input.d), 13u)], true, false));
    var var_2 = Struct_2(func_1(), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1f * 479f), _wgslsmith_f_op_f32(-func_2(10722u, vec2<u32>(4294967295u, 0u), Struct_1(vec3<f32>(429f, -811f, 1000f)), Struct_1(vec3<f32>(-1057f, -1227f, 404f))).a.x), _wgslsmith_f_op_f32(step(-458f, -1122f)))));
    let var_3 = select(~(reverseBits(vec4<u32>(6875u, u_input.d, u_input.d, 1u)) << (vec4<u32>(u_input.b.x, u_input.d, 4294967295u, 0u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(select(vec4<u32>(78839u, 112063u, 29343u, 1u), vec4<u32>(u_input.b.x, 16407u, 69259u, u_input.d), vec4<bool>(true, global3[_wgslsmith_index_u32(78240u, 30u)], false, false)), select(vec4<u32>(0u, u_input.d, 13981u, 60191u), vec4<u32>(5773u, u_input.b.x, u_input.b.x, 55874u), vec4<bool>(global3[_wgslsmith_index_u32(u_input.d, 30u)], global3[_wgslsmith_index_u32(9115u, 30u)], global0.x, false))), true) << (~vec4<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, u_input.d, 24153u)), ~u_input.b), 54308u, 1u ^ u_input.d, 4294967295u) % vec4<u32>(32u));
    var var_4 = !select(global3[_wgslsmith_index_u32(52001u, 30u)], any(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(var_1, false, true, false), true)) && !global0.x, global0.x);
    var_0 = global1[_wgslsmith_index_u32(13701u, 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.x, ~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2371i), max(vec2<i32>(3907i, u_input.a.x), u_input.a)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_3.x, abs(u_input.b.x)), 13u)], -_wgslsmith_mult_i32(-23224i, u_input.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.a.x))), -232f, _wgslsmith_f_op_f32(-132f * _wgslsmith_f_op_f32(-404f + var_2.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -634f)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1537f)), -1460f, _wgslsmith_f_op_f32(func_2(u_input.b.x, u_input.b.xz, var_2.b, var_2.a).a.x - var_2.a.a.x), func_2(select(1u, u_input.d, false), vec2<u32>(1u, 86759u), func_2(var_3.x, vec2<u32>(21550u, u_input.d), Struct_1(vec3<f32>(-462f, var_2.b.a.x, -527f)), var_2.a), Struct_1(var_2.b.a)).a.x)), u_input.b.x);
}

