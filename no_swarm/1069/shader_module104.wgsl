struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(667f, 1778f, 484f, -396f), vec4<f32>(-1678f, -1179f, 131f, -214f), vec4<f32>(-896f, 1218f, -1826f, 417f), vec4<f32>(-2104f, -928f, 898f, 441f), vec4<f32>(688f, 559f, 516f, 675f), vec4<f32>(-1594f, -184f, -219f, 1812f), vec4<f32>(-2014f, -845f, 623f, 1223f), vec4<f32>(-898f, -236f, -944f, 1491f), vec4<f32>(-2526f, -1356f, 1841f, 459f), vec4<f32>(-154f, -1088f, -656f, -1121f), vec4<f32>(-969f, -1522f, -794f, 487f), vec4<f32>(-1652f, -1596f, -2365f, 804f), vec4<f32>(-389f, -1049f, 925f, 1419f), vec4<f32>(-668f, 673f, -1589f, 1000f), vec4<f32>(1364f, 897f, 545f, 431f), vec4<f32>(508f, -994f, -288f, -1000f), vec4<f32>(605f, 318f, 1380f, -546f), vec4<f32>(933f, -1000f, -757f, -1207f), vec4<f32>(-2266f, -1010f, -283f, -515f));

var<private> global1: array<vec2<f32>, 5>;

var<private> global2: Struct_1;

var<private> global3: bool;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    let var_0 = Struct_2(u_input.c.zww, Struct_1(global2.c.yww, vec4<i32>(select(-1i, u_input.e << (0u % 32u), any(vec4<bool>(false, false, false, true))), _wgslsmith_mod_i32(73245i, 2147483647i >> (0u % 32u)), _wgslsmith_add_i32(~u_input.e, -1i), -2147483647i), firstLeadingBit(vec4<i32>(u_input.e, 66018i, -2147483647i, -40929i)) ^ reverseBits(~global2.c), vec3<f32>(374f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(211f)) + _wgslsmith_f_op_f32(f32(-1f) * -762f)), arg_0.x), global2.d.x), Struct_1(global2.a, ~_wgslsmith_div_vec4_i32(~global2.b, global2.c), global2.b, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, -1000f, arg_0.x))) + vec3<f32>(arg_0.x, 1210f, -610f)))), _wgslsmith_f_op_f32(select(1743f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.d.x, global2.e) * -1970f), true))));
    return min(var_0.c.a.x, 1i);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>) -> u32 {
    global2 = Struct_1(reverseBits(vec3<i32>(0i, 0i, func_3(vec3<f32>(-800f, -253f, 419f)))), _wgslsmith_sub_vec4_i32(firstTrailingBit(-firstTrailingBit(vec4<i32>(9588i, global2.b.x, 1i, global2.b.x))), global2.b), vec4<i32>(-1i, arg_0.x, -u_input.e ^ abs(-u_input.e), select(-firstTrailingBit(global2.c.x), -(44232i & global2.b.x), -322f > _wgslsmith_f_op_f32(-global2.d.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global2.e, 995f), arg_1.x, _wgslsmith_f_op_f32(arg_1.x - arg_1.x)), _wgslsmith_f_op_vec3_f32(round(arg_1.zzw))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-129f)) - _wgslsmith_f_op_f32(-global2.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -116f), -528f), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(486f, arg_1.x, true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.e, 1320f)) + _wgslsmith_f_op_f32(f32(-1f) * -245f))), global2.e));
    global0 = array<vec4<f32>, 19>();
    let var_0 = true | ((-111f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) + _wgslsmith_f_op_f32(722f * 412f))) & all(vec2<bool>(true, true)));
    var var_1 = Struct_2(u_input.c.yzz, Struct_1(global2.a, _wgslsmith_mod_vec4_i32(vec4<i32>(-2600i, -29725i, arg_0.x, u_input.e), global2.c), arg_0 | ~_wgslsmith_mult_vec4_i32(vec4<i32>(global2.c.x, arg_0.x, 20898i, arg_0.x), vec4<i32>(u_input.e, -72905i, 2147483647i, arg_0.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(step(-909f, -290f)), _wgslsmith_f_op_f32(f32(-1f) * -582f), _wgslsmith_f_op_f32(arg_1.x + 479f)), _wgslsmith_f_op_vec3_f32(global2.d + global2.d))), arg_1.x), Struct_1(global2.a, vec4<i32>(global2.a.x, 42533i, 12732i, _wgslsmith_add_i32(u_input.e >> (0u % 32u), arg_0.x)), vec4<i32>(arg_0.x >> (_wgslsmith_add_u32(52u, u_input.c.x) % 32u), i32(-1i) * -61894i, _wgslsmith_dot_vec4_i32(global2.b, vec4<i32>(-2570i, u_input.e, -20078i, 2147483647i)) ^ firstLeadingBit(30783i), ~(-24573i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.wxw - vec3<f32>(418f, -144f, global2.d.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 506f, global2.d.x))) * vec3<f32>(-391f, _wgslsmith_f_op_f32(global2.e * global2.e), -1000f)), 512f));
    let var_2 = !vec4<bool>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.d.x * var_1.b.e)) > -184f, true, any(!vec3<bool>(var_0, false, var_0)));
    return ~(~0u);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> vec3<bool> {
    var var_0 = true;
    let var_1 = true;
    var var_2 = _wgslsmith_add_vec2_i32(-(vec2<i32>(max(global2.b.x, 0i), arg_1.x << (u_input.a.x % 32u)) ^ (~vec2<i32>(global2.c.x, arg_1.x) | _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e, -28984i), vec2<i32>(-1608i, u_input.e)))), global2.c.xw);
    let var_3 = _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 1u))), vec2<u32>(u_input.b.x, select(4294967295u, func_2(global2.c, global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), any(vec4<bool>(true, false, var_1, var_1)))) | min(u_input.b, vec2<u32>(abs(4294967295u), _wgslsmith_dot_vec2_u32(u_input.a, u_input.c.zy))));
    global2 = Struct_1(~arg_1, ~global2.b, -(~(vec4<i32>(u_input.e, arg_1.x, global2.b.x, var_2.x) | _wgslsmith_clamp_vec4_i32(global2.c, global2.b, global2.b))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global2.d + vec3<f32>(arg_0.x, global2.e, arg_2.x)))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1012f - arg_3.x) * -457f)));
    return !(!select(vec3<bool>(all(vec4<bool>(false, var_1, true, var_1)), var_1, all(vec4<bool>(false, true, false, var_1))), vec3<bool>(any(vec3<bool>(var_1, false, var_1)), all(vec3<bool>(true, false, false)), var_1), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(-u_input.e < 0i));
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-737f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x))), global2.d.x), global2.d.xx);
    var var_2 = Struct_1(_wgslsmith_mult_vec3_i32(-(~(vec3<i32>(-2147483647i, global2.a.x, global2.a.x) << (vec3<u32>(u_input.c.x, u_input.a.x, u_input.d) % vec3<u32>(32u)))), -global2.c.wxz), global2.c, -(~_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-39656i, u_input.e, 38741i, -25801i), global2.c), vec4<i32>(global2.a.x, global2.c.x, global2.b.x, global2.a.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-global2.d.x)), _wgslsmith_div_f32(-639f, var_1.x)), _wgslsmith_f_op_vec3_f32(-global2.d))), _wgslsmith_f_op_f32(sign(var_1.x)));
    var var_3 = !all(select(!vec3<bool>(false, var_0, true), !vec3<bool>(var_0, true, var_0), select(vec3<bool>(true, var_0, true), func_1(global1[_wgslsmith_index_u32(u_input.d, 5u)], vec3<i32>(-1i, u_input.e, -2147483647i), global1[_wgslsmith_index_u32(u_input.b.x, 5u)], global1[_wgslsmith_index_u32(0u, 5u)]), true)));
    global2 = Struct_1(select(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, 2883i, global2.c.x), vec3<i32>(var_2.b.x, 2147483647i, -37669i), var_2.a), reverseBits(var_2.c.xyw)), -(vec3<i32>(global2.a.x, var_2.a.x, u_input.e) | min(global2.c.ywz, var_2.b.xzx)), !any(vec3<bool>(var_0, var_0, false))), vec4<i32>(global2.c.x, u_input.e, -(u_input.e >> (u_input.b.x % 32u)), global2.b.x), reverseBits(var_2.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-344f, _wgslsmith_f_op_f32(ceil(var_2.e)), _wgslsmith_f_op_f32(-global2.d.x))), var_2.d), _wgslsmith_f_op_f32(-var_1.x));
    var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.d.yz + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(179f, var_1.x) * vec2<f32>(1092f, global2.d.x)) - global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.d, 0u, 0u), u_input.c), 5u)])) - _wgslsmith_f_op_vec2_f32(-global2.d.zz))));
    global2 = Struct_1(global2.a, abs(_wgslsmith_add_vec4_i32(vec4<i32>(1i, abs(u_input.e), 10932i, _wgslsmith_mod_i32(-11064i, -7077i)), (vec4<i32>(1i, -59999i, 43542i, -1i) ^ var_2.c) | global2.c)), global2.b, vec3<f32>(_wgslsmith_f_op_f32(round(global2.e)), 177f, -152f), var_2.d.x);
    var var_4 = Struct_1(vec3<i32>(~64416i ^ global2.c.x, 1i ^ (_wgslsmith_mult_i32(66429i, global2.b.x) ^ abs(u_input.e)), firstLeadingBit(u_input.e)), reverseBits(firstLeadingBit(reverseBits(vec4<i32>(global2.a.x, -88609i, 38720i, global2.c.x))) & ~(-global2.b)), vec4<i32>(-1i, u_input.e, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-1i, -1i), global2.c.xz, true), var_2.c.zz), _wgslsmith_div_i32(2147483647i, -2147483647i), var_2.c.x), _wgslsmith_dot_vec4_i32(~(~var_2.c), vec4<i32>(-u_input.e, -2147483647i, 1i, i32(-1i) * -2147483647i))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.d.x, var_2.e))), -1000f, 2559f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-191f, var_1.x, var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1219f), _wgslsmith_div_f32(119f, global2.d.x), _wgslsmith_f_op_f32(floor(-2192f)))))), 1043f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(var_4.b.zww, var_4.a), vec3<i32>(var_2.a.x << (1317u % 32u), func_3(var_2.d), var_2.a.x << (1u % 32u)) | -var_2.a), firstLeadingBit(-32025i), _wgslsmith_f_op_f32(-var_2.e), ~var_4.c.ywy >> (~vec3<u32>(0u, ~0u, 1339u) % vec3<u32>(32u)), var_4.d.x);
}

