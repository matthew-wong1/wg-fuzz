struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -62129i;

var<private> global1: vec2<u32>;

var<private> global2: array<f32, 30> = array<f32, 30>(-478f, 372f, -610f, -1000f, -1221f, -324f, -1000f, 1015f, -1280f, -169f, -116f, 1000f, 863f, -1000f, 122f, -1675f, 1000f, 1063f, -361f, -832f, -1000f, 447f, -757f, -1733f, -1620f, 1000f, 1714f, -1556f, -1000f, 222f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    var var_0 = Struct_1(2147483647i, _wgslsmith_mod_vec4_u32(~firstTrailingBit(vec4<u32>(global1.x, global1.x, 0u, global1.x)), select(vec4<u32>(global1.x, 1u, ~45022u, global1.x), _wgslsmith_mult_vec4_u32(~vec4<u32>(global1.x, 22816u, 114326u, 1u), ~vec4<u32>(23436u, global1.x, global1.x, global1.x)), any(vec2<bool>(true, false)))), select(!vec2<bool>(select(false, true, true), any(vec2<bool>(false, true))), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), all(vec2<bool>(true, true))), vec2<bool>(true, true)), 10033i, true);
    let var_1 = firstLeadingBit(~(~(var_0.b.www & (var_0.b.wzz | var_0.b.yyw))));
    var var_2 = vec2<u32>(global1.x, 32515u) << (vec2<u32>(_wgslsmith_clamp_u32(~firstTrailingBit(51096u), _wgslsmith_dot_vec3_u32(vec3<u32>(10393u, 0u, var_1.x), vec3<u32>(105531u, 105140u, 0u)), 1u & _wgslsmith_mult_u32(var_1.x, global1.x)), abs(~var_0.b.x) | firstTrailingBit(_wgslsmith_mod_u32(1u, var_1.x))) % vec2<u32>(32u));
    let var_3 = arg_0.xz;
    global1 = select(~(~(~vec2<u32>(57314u, var_2.x))), vec2<u32>(var_1.x, 3534u), -14328i != firstTrailingBit(-1i)) & _wgslsmith_mult_vec2_u32((var_0.b.wy ^ vec2<u32>(var_0.b.x, 0u)) >> (var_0.b.xw % vec2<u32>(32u)), firstLeadingBit(~(~var_1.yz)));
    return _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(countOneBits(2147483647i), u_input.a), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -43368i, -3340i), vec3<i32>(u_input.a, -2147483647i, -35599i)), ~vec3<i32>(u_input.a, 31169i, -1i))), abs(u_input.a)) << (global1.x % 32u);
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    global0 = _wgslsmith_add_i32(arg_0.d, -2147483647i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a >> (arg_0.b.x % 32u), select(-26132i, -38720i, false), 1i), -_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -10915i, -9904i), vec3<i32>(98918i, -1i, arg_0.a))));
    return min(~(~(~vec3<u32>(0u, arg_0.b.x, 10893u)) | vec3<u32>(_wgslsmith_mult_u32(36649u, 2936u), 4434u, 1u)), arg_0.b.wxz);
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    global2 = array<f32, 30>();
    var var_0 = func_4(Struct_1(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(0u, 30u)]) - vec3<f32>(108f, global2[_wgslsmith_index_u32(18865u, 30u)], global2[_wgslsmith_index_u32(118489u, 30u)])))), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(global1.x, global1.x, global1.x, 41494u), firstTrailingBit(vec4<u32>(global1.x, global1.x, 4294967295u, 1u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, global1.x, global1.x, 53141u), _wgslsmith_div_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, 4294967295u), vec4<u32>(41300u, 4294967295u, global1.x, global1.x)))), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false)), i32(-1i) * -arg_0.x, true));
    let var_1 = Struct_1(select(u_input.a, abs(u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 30u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.x, 30u)])) < global2[_wgslsmith_index_u32(~var_0.x, 30u)]), ~vec4<u32>(global1.x, 12708u, 1u, _wgslsmith_mod_u32(abs(var_0.x), ~63823u)), vec2<bool>(select(true, any(vec2<bool>(true, true)) && any(vec4<bool>(false, true, false, true)), false), !(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(32827u, 1u, 0u, var_0.x), vec4<u32>(4294967295u, 66477u, 26552u, var_0.x)), 30u)] == -186f)), -(~u_input.b & abs(_wgslsmith_mult_i32(u_input.a, arg_0.x))), false & (all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))) || (~0u <= ~var_0.x)));
    global0 = ~(~(~(-1i) | (reverseBits(arg_0.x) >> (~0u % 32u))));
    var_0 = min(vec3<u32>(1u, var_1.b.x, abs(var_1.b.x) & 1u), ~_wgslsmith_mod_vec3_u32(var_1.b.ywz, var_1.b.xyz)) & var_1.b.zxx;
    return reverseBits(38556u);
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_div_i32(u_input.b, -1i);
    var var_2 = vec2<i32>(0i, -1i >> (global1.x % 32u));
    global2 = array<f32, 30>();
    global1 = vec2<u32>(func_2(vec2<i32>(-abs(-1i), _wgslsmith_add_i32(1i, _wgslsmith_add_i32(-1i, var_1)))), global1.x);
    return Struct_1(-51948i, _wgslsmith_clamp_vec4_u32(~vec4<u32>(~4251u, 95635u, ~global1.x, global1.x), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, 1u), vec4<u32>(global1.x, 45522u, global1.x, 32512u)) ^ 60337u, 72836u, abs(abs(54434u))), firstTrailingBit(~abs(vec4<u32>(29238u, global1.x, global1.x, 4294967295u)))), vec2<bool>(select(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), !(global2[_wgslsmith_index_u32(global1.x, 30u)] == -797f), false), !(~var_1 >= _wgslsmith_sub_i32(-1i, -1i))), -u_input.b, select(!all(vec4<bool>(false, false, true, false)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), any(vec4<bool>(false, true, false, false)) == true) && all(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !(!select(arg_0.c, vec2<bool>(any(vec2<bool>(false, true)), arg_0.e), true || (global2[_wgslsmith_index_u32(global1.x, 30u)] >= 773f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2[_wgslsmith_index_u32(global1.x, 30u)], -625f, global2[_wgslsmith_index_u32(35842u, 30u)], 390f)))))))) + vec4<f32>(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(global1.x, 30u)])), global2[_wgslsmith_index_u32(func_1().b.x, 30u)], -389f, 801f));
    return func_1();
}

fn func_6(arg_0: vec3<u32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec2<i32>(-(-min(arg_3.d, -2147483647i) << (~0u % 32u)), _wgslsmith_mod_i32(countOneBits(_wgslsmith_add_i32(i32(-1i) * -50520i, -2147483647i)), arg_3.a));
    return arg_3;
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-531f * 215f)), 1082f, _wgslsmith_f_op_f32(select(-1788f, _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)), func_5(Struct_1(-22820i, arg_1.b, arg_1.c, 22398i, true)).c.x))), vec3<f32>(1000f, arg_0.x, arg_0.x)), select(_wgslsmith_sub_vec4_u32(~vec4<u32>(global1.x, 64044u, 70813u, 68526u), arg_1.b), arg_1.b, !vec4<bool>(func_1().e, arg_1.c.x, arg_1.e, true)), vec3<f32>(215f, _wgslsmith_f_op_f32(-arg_0.x), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 30061u;
    global2 = array<f32, 30>();
    var_0 = firstTrailingBit(6911u);
    var var_1 = countOneBits(~(vec4<u32>(1u, global1.x, global1.x, global1.x) | (vec4<u32>(global1.x, 12088u, 1u, global1.x) >> (vec4<u32>(global1.x, global1.x, global1.x, 0u) % vec4<u32>(32u))))) ^ ~vec4<u32>(firstTrailingBit(global1.x), 1u, global1.x, 38071u);
    global1 = var_1.yx;
    let x = u_input.a;
    s_output = func_7(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(355f, 632f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(global1.x, 30u)], global2[_wgslsmith_index_u32(var_1.x, 30u)])), vec2<f32>(global2[_wgslsmith_index_u32(17892u, 30u)], 861f)))), func_6(~vec3<u32>(~27069u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, global1.x, 1459u), vec3<u32>(global1.x, global1.x, 23861u))), -473f, _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(global1.x, 30u)])), func_5(func_1())), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-89978i, u_input.b, 1i, u_input.a) ^ ~vec4<i32>(u_input.a, u_input.a, u_input.b, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.b) | reverseBits(vec4<i32>(u_input.b, 32185i, 1i, u_input.b))), vec4<i32>(41859i, 0i, _wgslsmith_mult_i32(56873i, u_input.b), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.a, 1i, -2147483647i), vec4<i32>(u_input.a, u_input.a, -24932i, u_input.a)))), func_4(Struct_1(-2147483647i, abs(~vec4<u32>(global1.x, 1u, var_1.x, var_1.x)), select(func_1().c, vec2<bool>(true, false), true), reverseBits(~u_input.a), false)).x);
}

