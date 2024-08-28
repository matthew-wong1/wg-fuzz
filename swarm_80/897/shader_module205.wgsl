struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<u32, 26>;

var<private> global2: bool;

var<private> global3: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(vec3<bool>(false, false, false), Struct_1(-767f, 1u, vec3<bool>(false, false, false), vec3<u32>(1u, 116863u, 4294967295u), vec3<i32>(21251i, -25688i, 0i)), vec3<f32>(-2179f, -258f, 286f), vec2<i32>(1i, 0i)), Struct_3(vec3<bool>(true, false, true), Struct_1(1781f, 2342u, vec3<bool>(false, true, false), vec3<u32>(72256u, 10820u, 4294967295u), vec3<i32>(-26248i, 4587i, -1i)), vec3<f32>(153f, -1039f, 582f), vec2<i32>(12217i, i32(-2147483648))), Struct_3(vec3<bool>(false, true, false), Struct_1(1692f, 10900u, vec3<bool>(true, true, true), vec3<u32>(1u, 14115u, 4294967295u), vec3<i32>(-32388i, 1i, 0i)), vec3<f32>(-727f, 300f, -525f), vec2<i32>(i32(-2147483648), -1i)), Struct_3(vec3<bool>(true, false, true), Struct_1(-319f, 20886u, vec3<bool>(false, true, true), vec3<u32>(4294967295u, 1u, 1u), vec3<i32>(-14184i, -1i, 0i)), vec3<f32>(788f, -963f, -294f), vec2<i32>(32602i, i32(-2147483648))), Struct_3(vec3<bool>(true, true, true), Struct_1(-553f, 57777u, vec3<bool>(false, true, true), vec3<u32>(0u, 31259u, 0u), vec3<i32>(-28709i, i32(-2147483648), i32(-2147483648))), vec3<f32>(-1000f, 973f, 1887f), vec2<i32>(-1i, -100276i)));

var<private> global4: bool = false;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    global4 = global0.x;
    let var_0 = vec3<bool>(all(vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x))), select(global0.x, true, true), false, global0.x)), all(!(!vec4<bool>(true, false, global0.x, global0.x))), true);
    global1 = array<u32, 26>();
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(639f + _wgslsmith_f_op_f32(sign(-408f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(444f * -352f))), 2194f, _wgslsmith_f_op_f32(max(-333f, -284f)))));
    global4 = !(!any(var_0.xx));
    return _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>((global1[_wgslsmith_index_u32(39492u, 26u)] >> (24385u % 32u)) | firstTrailingBit(u_input.c.x), _wgslsmith_clamp_u32(u_input.b.x, 4294967295u, global1[_wgslsmith_index_u32(3867u, 26u)]) & ~22902u), ~u_input.b.yw), 26u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstLeadingBit(0u), 26u)], 26u)]);
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_2 {
    var var_0 = reverseBits(_wgslsmith_sub_vec2_i32(~(-(vec2<i32>(u_input.a, -1i) & vec2<i32>(u_input.a, u_input.a))), vec2<i32>(2147483647i, abs(~u_input.a))));
    var var_1 = vec2<u32>(func_3(), ~(~firstTrailingBit(0u)));
    var_1 = ~_wgslsmith_sub_vec2_u32(u_input.b.zw, _wgslsmith_mult_vec2_u32(abs(u_input.b.ww), ~u_input.c.yy));
    var var_2 = !select(select(vec3<bool>(true, all(vec4<bool>(global0.x, global0.x, global0.x, true)), false), vec3<bool>(global0.x, !global0.x, !global0.x), !select(vec3<bool>(true, global0.x, false), vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x))), select(vec3<bool>(true, true, global0.x), select(vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(true, true, global0.x), all(vec2<bool>(true, global0.x))), all(!vec4<bool>(global0.x, global0.x, global0.x, true))), all(select(select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, true, true, false), global0.x), vec4<bool>(true, true, true, true), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x)))));
    let var_3 = global3[_wgslsmith_index_u32(~4294967295u, 5u)];
    return Struct_2(!vec2<bool>(var_3.c.x != _wgslsmith_f_op_f32(-var_3.c.x), (global0.x && false) == !var_3.b.c.x));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> vec2<bool> {
    global1 = array<u32, 26>();
    global0 = arg_0.a.zx;
    global4 = !(!(false | (func_2(global1[_wgslsmith_index_u32(4294967295u, 26u)], u_input.b.x).a.x || any(vec2<bool>(true, false)))));
    var var_0 = Struct_3(select(vec3<bool>(false, select(arg_1, false, any(vec4<bool>(arg_3.a.x, false, false, arg_3.a.x))), all(arg_3.a)), vec3<bool>(arg_1, arg_1, _wgslsmith_f_op_f32(sign(1000f)) <= -1009f), !((1u < global1[_wgslsmith_index_u32(63887u, 26u)]) || true)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-865f + 840f)))), 1u, vec3<bool>(arg_3.a.x, arg_0.b.c.x, true), vec3<u32>(~0u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, 0u, 0u, arg_0.b.d.x)), vec4<u32>(43011u, u_input.b.x, 40465u, 0u)), _wgslsmith_div_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.b.d.x, 26u)], 26u)], ~8395u)), select(vec3<i32>(firstLeadingBit(arg_0.d.x), 0i, arg_2), ~arg_0.b.e, _wgslsmith_add_i32(1757i, 17936i) != ~arg_0.b.e.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.x + 943f), arg_0.c.x, _wgslsmith_div_f32(arg_0.b.a, 972f)) * arg_0.c)), vec2<i32>(-1i, arg_0.d.x));
    global1 = array<u32, 26>();
    return var_0.b.c.yz;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(25271u, 26u)], 67473u, 0u, 24221u), min(vec4<u32>(arg_1, u_input.b.x, 1u, global1[_wgslsmith_index_u32(3773u, 26u)]), vec4<u32>(arg_1, 4294967295u, u_input.c.x, 65826u))), ~(~vec4<u32>(1u, 1u, arg_1, 4294967295u))), ~_wgslsmith_mod_vec4_u32(~u_input.b, _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(u_input.c.x, 4878u, 26650u, 56748u))));
    var var_1 = 1466u;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -141f))), ~(~var_0), select(!(!vec3<bool>(global0.x, global0.x, arg_3.a.x)), select(select(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, arg_0.a.x, arg_0.a.x), arg_3.a.x), vec3<bool>(arg_0.a.x, false, true), select(vec3<bool>(true, global0.x, arg_3.a.x), vec3<bool>(arg_3.a.x, true, true), vec3<bool>(false, arg_3.a.x, false))), vec3<bool>(global0.x && false, global0.x || arg_0.a.x, all(vec4<bool>(true, arg_3.a.x, false, false))), select(select(vec3<bool>(global0.x, false, true), vec3<bool>(false, false, arg_3.a.x), arg_0.a.x), select(vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, true, false)), true)), true == (all(vec3<bool>(false, arg_3.a.x, false)) & !arg_3.a.x)), u_input.c, vec3<i32>(-u_input.a, arg_2, 1i));
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(354f, var_2.a, -797f, -527f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1891f, 665f, var_2.a, var_2.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_2.a, -126f, var_2.a)), vec4<f32>(var_2.a, var_2.a, -786f, var_2.a))))));
    global4 = var_2.c.x;
    return arg_3;
}

fn func_1(arg_0: bool, arg_1: f32) -> u32 {
    let var_0 = func_5(Struct_2(vec2<bool>(!(!arg_0), !(!global0.x))), ~(~u_input.c.x), ~388i, Struct_2(!func_4(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.c.zz), 5u)], false, _wgslsmith_mult_i32(u_input.a, 36018i), func_2(4294967295u, 1u))));
    var var_1 = Struct_1(1863f, ~1u, vec3<bool>(true, select(any(vec3<bool>(false, arg_0, false)), all(select(var_0.a, vec2<bool>(false, false), true)), global0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1, -910f))) == 1203f), u_input.b.yww, -vec3<i32>(u_input.a, _wgslsmith_mult_i32(u_input.a, select(19705i, u_input.a, arg_0)), u_input.a ^ _wgslsmith_mod_i32(-2147483647i, 39998i)));
    let var_2 = vec2<bool>(false, true);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1332f * arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1188f * _wgslsmith_f_op_f32(var_1.a * arg_1))))), firstLeadingBit(0u), vec3<bool>(any(var_1.c), global0.x, func_4(Struct_3(vec3<bool>(var_1.c.x, true, true), Struct_1(var_1.a, 0u, var_1.c, u_input.b.xyx, var_1.e), _wgslsmith_f_op_vec3_f32(vec3<f32>(153f, var_1.a, arg_1) - vec3<f32>(-2159f, var_1.a, arg_1)), vec2<i32>(var_1.e.x, u_input.a)), true, var_1.e.x, func_2(firstLeadingBit(20802u), _wgslsmith_sub_u32(var_1.b, 64069u))).x), vec3<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, 1u, 0u), vec3<u32>(73339u, 4294967295u, 4294967295u))), select(_wgslsmith_div_u32(var_1.b, 37174u), ~var_1.b, var_0.a.x), min(global1[_wgslsmith_index_u32(65994u, 26u)], ~68031u)) | ~vec3<u32>(max(global1[_wgslsmith_index_u32(var_1.d.x, 26u)], 4294967295u), ~global1[_wgslsmith_index_u32(4294967295u, 26u)], _wgslsmith_dot_vec3_u32(var_1.d, vec3<u32>(29381u, u_input.c.x, 1u))), vec3<i32>(-2147483647i, -2147483647i, ~(~56173i | (49894i >> (global1[_wgslsmith_index_u32(var_1.d.x, 26u)] % 32u)))));
    var var_4 = u_input.b;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, ~(~4294967295u)), vec2<u32>(~(~0u), global1[_wgslsmith_index_u32(~min(var_4.x, ~global1[_wgslsmith_index_u32(28934u, 26u)]), 26u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_1(any(vec2<bool>(true, true)), -1000f), u_input.b.x), -761f, ~abs(vec3<i32>(u_input.a, -24258i, u_input.a)) & _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 18999i, u_input.a), ~vec3<i32>(-53327i, u_input.a, 2147483647i)), ~(~vec3<i32>(u_input.a, u_input.a, u_input.a))), -u_input.a << ((29270u | ~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.b.x, 26u)], 26u)]) % 32u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1425f, -270f, 381f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(579f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -245f) - _wgslsmith_f_op_f32(173f + 616f)), -261f), select(!(!vec3<bool>(true, global0.x, true)), !(!vec3<bool>(true, global0.x, global0.x)), true))));
}

