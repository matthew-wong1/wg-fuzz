struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(22039i, 0i, -21416i, -1i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), 2147483647i), vec4<i32>(2147483647i, i32(-2147483648), -8150i, 0i), vec4<i32>(38766i, 0i, -1i, -26399i), vec4<i32>(2147483647i, 2147483647i, 12852i, 37288i), vec4<i32>(-24407i, i32(-2147483648), 15679i, 61390i), vec4<i32>(-1i, i32(-2147483648), 15258i, -30916i), vec4<i32>(0i, -21512i, 11734i, 27285i), vec4<i32>(0i, -29983i, 0i, 63971i), vec4<i32>(-1i, i32(-2147483648), 11369i, 16588i), vec4<i32>(i32(-2147483648), 1i, 21115i, 2147483647i), vec4<i32>(1i, 14868i, -18537i, 5882i), vec4<i32>(-90154i, -17643i, -2487i, 0i), vec4<i32>(0i, -4297i, -18574i, 2147483647i));

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec3<f32> {
    global1 = Struct_1(abs(2147483647i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-433f, _wgslsmith_f_op_f32(trunc(1867f))))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.b, global1.c.x, -1653f, 333f) * arg_2.c) - _wgslsmith_f_op_vec4_f32(arg_2.c - global1.c)), arg_0.a.c)))), select(select(vec4<bool>(global1.d.x, global1.d.x, arg_1, any(arg_3.d)), !select(vec4<bool>(true, arg_3.d.x, false, true), arg_2.d, vec4<bool>(true, arg_3.d.x, arg_3.d.x, true)), arg_1), select(select(vec4<bool>(arg_2.d.x, arg_0.a.d.x, false, arg_2.d.x), vec4<bool>(global1.d.x, false, true, arg_0.a.d.x), !arg_3.d), select(select(vec4<bool>(arg_1, arg_1, arg_2.d.x, true), vec4<bool>(true, arg_1, arg_1, false), global1.d.x), vec4<bool>(arg_0.a.d.x, arg_2.d.x, true, false), false), select(arg_0.a.d, global1.d, true)), true | arg_3.d.x), 1i);
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_0.a.c.xzw)));
    var var_1 = Struct_1(2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -1113f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.a.c, _wgslsmith_f_op_vec4_f32(arg_3.c * arg_3.c), vec4<bool>(true, arg_0.a.d.x | global1.d.x, true, select(false, false, arg_3.d.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c))), vec4<bool>(u_input.b <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.b, 30305u, u_input.d.x), u_input.d), true != select(false, true, 65942u >= u_input.b), !all(arg_3.d.wxz) & any(vec4<bool>(global1.d.x, true, true, true)), all(global1.d.zzy)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.e << (37633u % 32u), ~(-2147483647i)), u_input.a), vec2<i32>(1i, firstTrailingBit(arg_2.e))));
    let var_2 = 0i;
    var var_3 = abs(min(u_input.a, reverseBits(~u_input.a) >> (vec2<u32>(countOneBits(u_input.d.x), u_input.d.x) % vec2<u32>(32u))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b)), -397f, _wgslsmith_f_op_f32(f32(-1f) * -930f));
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1952f, arg_0.c.x, 415f), vec3<f32>(-325f, arg_0.b, -1890f))) - _wgslsmith_div_vec3_f32(global1.c.zzy, global1.c.xxy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(arg_0), false, arg_0, arg_0)) + global1.c.wyz), !(u_input.b > 0u)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global1.b, arg_0.c.x))), global1.c.xwy, vec3<bool>(false, true, any(select(vec3<bool>(false, arg_0.d.x, true), vec3<bool>(true, global1.d.x, false), arg_0.d.xyw))))));
    let var_1 = Struct_2(Struct_1(0i, -281f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.c, global1.c, global1.d)))), vec4<bool>(true, global1.d.x, true || (-308f == global1.b), !(!global1.d.x)), ~global1.a));
    var var_2 = select(global1.d, !vec4<bool>(any(!var_1.a.d), !global1.d.x, true, true != (u_input.d.x != u_input.d.x)), arg_0.d);
    let var_3 = -2147483647i;
    global0 = array<vec4<i32>, 14>();
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1228f) * _wgslsmith_f_op_f32(global1.c.x * var_1.a.c.x)), global1.b, 987f);
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_2) -> vec4<u32> {
    global0 = array<vec4<i32>, 14>();
    let var_0 = global1.d.zx;
    let var_1 = _wgslsmith_f_op_vec3_f32(func_2(arg_2.a));
    let var_2 = vec4<f32>(518f, -1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-754f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))))), var_1.x);
    var var_3 = !arg_2.a.d.x;
    return u_input.d;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(global1.c + arg_0.c);
    var var_1 = _wgslsmith_mult_u32(func_1(select(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(70720u, 14u)], vec4<i32>(2147483647i, arg_0.e, -363i, arg_0.e)), min(global0[_wgslsmith_index_u32(u_input.b, 14u)], vec4<i32>(-55339i, -21994i, global1.e, u_input.a.x))), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a, -2147483647i, -2147483647i, -12262i), global0[_wgslsmith_index_u32(arg_1.x, 14u)])), false), var_0.x, Struct_2(arg_0)).x, u_input.d.x & 1u);
    global1 = arg_0;
    let var_2 = _wgslsmith_div_vec2_f32(arg_0.c.ww, _wgslsmith_f_op_vec2_f32(min(var_0.yy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, -916f) + vec2<f32>(arg_0.c.x, arg_0.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, -178f) + vec2<f32>(-266f, 282f)))) * _wgslsmith_f_op_vec2_f32(select(var_0.xy, var_0.zz, select(arg_0.d.x, arg_2.x, false)))))));
    return all(select(!global1.d.wz, global1.d.zy, !(!(!vec2<bool>(true, arg_2.x)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = -22985i;
    var var_1 = arg_0.xz;
    global0 = array<vec4<i32>, 14>();
    let var_2 = Struct_2(Struct_1(-29796i, -106f, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -401f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-304f, -505f)))), _wgslsmith_f_op_vec3_f32(func_2(Struct_1(45024i, -1123f, arg_0, vec4<bool>(true, global1.d.x, false, arg_1), global1.a))).x, _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(866f - -900f)))), global1.d, 1i));
    let var_3 = var_0;
    return var_2.a;
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    let var_0 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.c)) + _wgslsmith_div_vec4_f32(global1.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1051f, arg_1.c.x, 421f, global1.b)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(arg_1.c))))), true, _wgslsmith_sub_vec3_u32(vec3<u32>(~countOneBits(u_input.b), _wgslsmith_dot_vec3_u32(u_input.d.yww, ~vec3<u32>(107332u, 12480u, u_input.d.x)), _wgslsmith_mod_u32(1u, func_1(global0[_wgslsmith_index_u32(u_input.b, 14u)], arg_1.b, Struct_2(arg_1)).x)), u_input.d.wzy), select(func_5(arg_1.c, !all(vec4<bool>(false, true, true, global1.d.x)), u_input.d.zwy, !select(vec2<bool>(true, arg_1.d.x), arg_1.d.wz, arg_1.d.xz)).d.yz, !func_5(arg_1.c, all(global1.d), ~u_input.d.xzz, !vec2<bool>(arg_1.d.x, arg_1.d.x)).d.ww, global1.d.wx)).d.xyz;
    let var_1 = arg_2;
    global0 = array<vec4<i32>, 14>();
    global1 = Struct_1(func_5(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(1000f + 165f), _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(round(global1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), false, ~vec3<u32>(_wgslsmith_mult_u32(u_input.d.x, 32500u), arg_2, 4294967295u), !func_5(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.b, arg_1.c.x, -1317f, 993f))), any(vec2<bool>(false, false)), ~vec3<u32>(arg_2, 15059u, 19993u), !var_0.yx).d.zy).e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x - arg_1.b)) + arg_1.b), global1.b), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -292f), _wgslsmith_f_op_f32(floor(214f)), _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(f32(-1f) * -154f)), select(select(global1.d, !select(arg_1.d, vec4<bool>(false, global1.d.x, global1.d.x, global1.d.x), true), func_4(arg_1, _wgslsmith_add_vec2_u32(u_input.d.yy, vec2<u32>(6325u, 6494u)), arg_1.d, vec4<u32>(u_input.d.x, 19611u, var_1, u_input.d.x))), arg_1.d, vec4<bool>(true, !var_0.x, global1.d.x, false)), arg_1.e | u_input.e);
    let var_2 = 207f;
    return func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2278f, -974f, _wgslsmith_f_op_f32(abs(3012f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(arg_1), arg_1.d.x, arg_1, arg_1)).x))), !var_0.x, u_input.d.yww, global1.d.xw).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a.x, 1160f, global1.c, func_6(u_input.a, func_5(global1.c, func_4(Struct_1(global1.a, -1274f, vec4<f32>(global1.c.x, global1.b, -101f, -1911f), global1.d, 30933i), vec2<u32>(u_input.d.x, u_input.b), vec4<bool>(global1.d.x, false, global1.d.x, global1.d.x), func_1(vec4<i32>(-2147483647i, global1.a, global1.e, -2147483647i), 624f, Struct_2(Struct_1(-2147483647i, 603f, global1.c, vec4<bool>(global1.d.x, true, true, false), global1.a)))), vec3<u32>(11682u, u_input.d.x, func_1(vec4<i32>(global1.a, u_input.e, -6223i, -1i), global1.c.x, Struct_2(Struct_1(u_input.a.x, 1686f, global1.c, vec4<bool>(false, global1.d.x, false, false), global1.a))).x), vec2<bool>(!global1.d.x, true)), 0u), -(~global1.e >> (4294967295u % 32u)));
    let var_1 = 4294967295u;
    global1 = func_5(vec4<f32>(701f, -460f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1284f + global1.c.x)) - global1.b), global1.c.x), any(func_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.c - var_0.c), var_0.c, var_0.d.x)), true, vec3<u32>(~22996u, var_1, 19811u), !vec2<bool>(global1.d.x, false)).d), vec3<u32>(countOneBits(~(4294967295u >> (var_1 % 32u))), u_input.d.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~u_input.d, u_input.d), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 3231u, 1u, var_1) ^ u_input.d, u_input.d))), !vec2<bool>(func_5(global1.c, 2147483647i >= global1.e, vec3<u32>(var_1, 4294967295u, 68789u), vec2<bool>(global1.d.x, false)).d.x, (global1.e > var_0.a) || all(global1.d.wyw)));
    global1 = Struct_1(_wgslsmith_dot_vec2_i32(select(u_input.c, u_input.a, !var_0.d.x), u_input.a) ^ 27311i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.c + vec4<f32>(global1.c.x, 1042f, var_0.c.x, 768f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.c.x, 1000f, global1.c.x, global1.c.x)))))) + _wgslsmith_div_vec4_f32(var_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(617f, var_0.c.x, 176f, global1.b), var_0.c) * _wgslsmith_f_op_vec4_f32(-global1.c)))), vec4<bool>(global1.d.x, any(func_6(-vec2<i32>(23601i, 18256i), Struct_1(985i, var_0.b, global1.c, vec4<bool>(false, var_0.d.x, true, global1.d.x), 14536i), _wgslsmith_add_u32(var_1, var_1))), true, global1.d.x), global1.a);
    global0 = array<vec4<i32>, 14>();
    global0 = array<vec4<i32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xyy);
}

