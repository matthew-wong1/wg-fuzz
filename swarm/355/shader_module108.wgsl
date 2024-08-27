struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21>;

var<private> global1: array<bool, 2>;

var<private> global2: vec4<i32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1020f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1587f * 1000f))), _wgslsmith_f_op_f32(ceil(1772f))), vec3<f32>(-302f, _wgslsmith_div_f32(-136f, _wgslsmith_f_op_f32(-939f - 317f)), -219f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(313f, -129f, _wgslsmith_f_op_f32(f32(-1f) * -518f))))));
    let var_1 = Struct_1(0i, !(!(!global1[_wgslsmith_index_u32(0u, 2u)])) | any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)] & global1[_wgslsmith_index_u32(0u, 2u)], true, !global1[_wgslsmith_index_u32(82315u, 2u)], var_0.x >= var_0.x)), !select(!(!vec2<bool>(global1[_wgslsmith_index_u32(86257u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)])), vec2<bool>(false || global1[_wgslsmith_index_u32(35558u, 2u)], true), (global1[_wgslsmith_index_u32(1u, 2u)] & global1[_wgslsmith_index_u32(1u, 2u)]) | true), vec4<i32>(1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(14015i, global2.x, u_input.b.x, -13215i), global0[_wgslsmith_index_u32(0u, 21u)]), _wgslsmith_div_i32(-global2.x, -2147483647i), firstLeadingBit(countOneBits(-462i))) & ~global0[_wgslsmith_index_u32(17053u, 21u)], reverseBits(1u));
    let var_2 = ~firstTrailingBit(vec3<u32>(var_1.e, var_1.e, ~(var_1.e ^ 18592u)));
    global0 = array<vec4<i32>, 21>();
    var var_3 = _wgslsmith_f_op_f32(round(var_0.x));
    return var_0.x;
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1933f, _wgslsmith_f_op_f32(sign(954f)))) - _wgslsmith_f_op_f32(trunc(-603f))) * _wgslsmith_f_op_f32(abs(719f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-406f + -542f) * 239f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(trunc(841f)))));
    global1 = array<bool, 2>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x)))) + _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(exp2(var_0.x)))), var_0.x, -332f);
    return Struct_2(!(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 2u)], 0i == global2.x)));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(~arg_0, 2u)];
    var var_1 = func_2();
    global2 = global0[_wgslsmith_index_u32(4294967295u, 21u)];
    var var_2 = ~max(~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 45942u, arg_0, arg_0), vec4<u32>(arg_0, arg_0, arg_0, 2651u))), 0u);
    var var_3 = _wgslsmith_f_op_f32(810f * 759f);
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_4) -> bool {
    let var_0 = Struct_4(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(select(countOneBits(arg_2.a), arg_2.a & vec2<u32>(1u, 54445u), vec2<bool>(true, arg_1.x)), _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_2.a.x, 41231u), _wgslsmith_add_vec2_u32(vec2<u32>(arg_2.a.x, 55940u), vec2<u32>(arg_2.a.x, 72279u)))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(19127u, 26897u, 4294967295u) << (vec3<u32>(20069u, arg_2.a.x, 9016u) % vec3<u32>(32u)), ~vec3<u32>(arg_2.a.x, arg_2.a.x, arg_2.a.x)), 1u), arg_2.a), true, _wgslsmith_mult_vec2_i32(vec2<i32>(1i, ~arg_2.c.x >> (54180u % 32u)), -(~global2.yw)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(967f, 2419f))), _wgslsmith_div_f32(-1571f, _wgslsmith_f_op_f32(trunc(-1507f))), -755f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1502f)), _wgslsmith_f_op_f32(trunc(-550f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-517f, 1037f, 221f, 1000f))))) + vec4<f32>(1f, 1f, 1f, 1f))));
    global1 = array<bool, 2>();
    global1 = array<bool, 2>();
    global1 = array<bool, 2>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 21>();
    var var_0 = !(!vec2<bool>(!global1[_wgslsmith_index_u32(~8341u, 2u)], true));
    let var_1 = vec4<bool>(true, select(true, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~31551u, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(7874u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 17681u, 0u, 1u)))), 2u)], !all(select(vec4<bool>(global1[_wgslsmith_index_u32(10501u, 2u)], var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, false), vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 2u)], var_0.x)))), (-20368i == select(1i, max(u_input.a, 0i), true)) | !all(!vec2<bool>(false, var_0.x)), func_4(func_1(firstTrailingBit(~4294967295u), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), !vec2<bool>(global1[_wgslsmith_index_u32(14022u, 2u)], true), !vec2<bool>(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(49749u, 2u)]))), func_2().a, Struct_4(firstLeadingBit(abs(vec2<u32>(0u, 4294967295u))), global1[_wgslsmith_index_u32(select(~4294967295u, 1u, all(vec4<bool>(global1[_wgslsmith_index_u32(86779u, 2u)], true, var_0.x, var_0.x))), 2u)], _wgslsmith_mult_vec2_i32(global2.yx, ~vec2<i32>(-4338i, -1i)))));
    global2 = abs(~vec4<i32>(~2147483647i, _wgslsmith_sub_i32(global2.x, -1i), global2.x, global2.x)) << (max(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(4294967295u, 1u, 36547u, 33343u), ~vec4<u32>(31859u, 4294967295u, 27430u, 30053u), vec4<bool>(true, true, false, var_0.x))), vec4<u32>(55595u, 0u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(82139u, 0u, 6671u, 0u), vec4<u32>(34856u, 1u, 62746u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)), select(_wgslsmith_dot_vec4_u32(vec4<u32>(95057u, 2705u, 4294967295u, 0u), vec4<u32>(1u, 1u, 1u, 6575u)), _wgslsmith_sub_u32(4294967295u, 4294967295u), !var_1.x))) % vec4<u32>(32u));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1112f + -1168f) - 1544f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(712f, -312f))))), var_1, vec4<f32>(_wgslsmith_f_op_f32(392f * 1f), _wgslsmith_f_op_f32(f32(-1f) * -1320f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -703f) + _wgslsmith_f_op_f32(floor(-1542f)))), _wgslsmith_f_op_f32(f32(-1f) * -897f)), global2.wz);
    var_0 = func_2().a;
    var_0 = var_1.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), countOneBits(vec4<u32>(1u, 1u, 1u, 1u)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), u_input.c, vec3<u32>(1u, 1u, 1u));
}

