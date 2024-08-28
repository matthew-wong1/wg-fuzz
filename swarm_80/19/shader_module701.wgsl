struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec4<f32> = vec4<f32>(-635f, -986f, 1142f, -2016f);

var<private> global2: array<vec4<u32>, 2>;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

var<private> global4: Struct_1 = Struct_1(vec2<f32>(465f, -1000f), -240f, vec4<f32>(-410f, -2863f, -216f, 1930f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: f32, arg_3: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_div_vec3_f32(global4.c.yyw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-535f, 1000f, 844f)));
    global3 = select(!arg_3, arg_3, !arg_1);
    var var_1 = global0.x;
    return 753f;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(vec2<f32>(656f, -1261f), 1285f, vec4<f32>(_wgslsmith_f_op_f32(step(1879f, _wgslsmith_f_op_f32(-419f * _wgslsmith_f_op_f32(-arg_0.b.x)))), _wgslsmith_f_op_f32(-arg_1.c.x), arg_0.b.x, _wgslsmith_f_op_f32(arg_1.c.x - -1014f)));
    let var_1 = arg_1;
    let var_2 = min(global0.yx, -(~(-global0.xw)));
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-281f, global4.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -247f) + _wgslsmith_f_op_f32(round(-1108f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -116f)), _wgslsmith_f_op_f32(global4.b - _wgslsmith_f_op_f32(ceil(var_1.a.x))), -131f, _wgslsmith_f_op_f32(max(688f, _wgslsmith_div_f32(var_0.a.x, var_1.c.x))))));
    let var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_clamp_i32(global0.x, u_input.a, -1i)), u_input.a, (u_input.a & -3970i) >> (_wgslsmith_sub_u32(arg_0.c.x, arg_0.c.x) % 32u), global0.x), vec4<i32>(u_input.a & 2147483647i, ~37761i, -2147483647i, min(global0.x ^ 2147483647i, var_2.x))), -firstLeadingBit(_wgslsmith_mod_i32(var_2.x & -1345i, var_2.x)), -var_2.x);
    return -global0.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> vec2<i32> {
    var var_0 = -(~0i & _wgslsmith_sub_i32(min(1i, -16207i) ^ u_input.a, ~_wgslsmith_dot_vec3_i32(global0.xyy, global0.yzx)));
    var var_1 = global2[_wgslsmith_index_u32(32174u, 2u)];
    var_0 = 2147483647i | (func_3(arg_1, Struct_1(vec2<f32>(global4.a.x, arg_1.a.c.x), arg_0.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global4.b, global1.x, arg_1.b.x, arg_0.x))))) ^ 2147483647i);
    let var_2 = 19611i;
    var var_3 = arg_1;
    return global0.ww;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> bool {
    let var_0 = arg_2.c;
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * 1137f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1350f - _wgslsmith_f_op_f32(abs(global1.x))) - -1835f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, -477f)) * -1675f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, arg_0.a.x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b))))) * arg_0.c);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(global1.zy, arg_2.a.a))))) + _wgslsmith_f_op_vec2_f32(round(global1.yy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-804f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(global1.x, global4.b, any(vec2<bool>(global3.x, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_f_op_f32(max(2113f, global1.x))), 1081f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-883f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, _wgslsmith_div_f32(global1.x, global1.x), global4.b, _wgslsmith_f_op_f32(ceil(arg_2.a.c.x))))));
    var var_2 = arg_2;
    var var_3 = var_2.b.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 552f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~global0.wwz, global3.x, _wgslsmith_f_op_f32(floor(-332f)), vec2<bool>(false, global3.x))));
    let var_1 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-465f, -183f))), vec2<f32>(-674f, -1387f)) + _wgslsmith_f_op_vec2_f32(floor(global4.c.zx))), global4.a.x, global4.c), -21298i ^ _wgslsmith_dot_vec2_i32((global0.xz >> (vec2<u32>(69142u, 4294967295u) % vec2<u32>(32u))) & func_2(vec3<f32>(global4.a.x, global4.a.x, global4.c.x), Struct_2(Struct_1(vec2<f32>(global4.a.x, global4.a.x), -170f, global4.c), global1.yxw, global2[_wgslsmith_index_u32(1u, 2u)], 13154u), false, true), vec2<i32>(_wgslsmith_div_i32(0i, u_input.a), global0.x)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 879f) - _wgslsmith_f_op_vec2_f32(-global1.zz)), 1850f, _wgslsmith_f_op_vec4_f32(-global4.c)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(global1.yzx, vec3<f32>(global4.b, -172f, -871f)))), firstLeadingBit(~(~global2[_wgslsmith_index_u32(14608u, 2u)])), abs(firstLeadingBit(25080u))));
    let var_2 = var_1;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global1.yw))), 1034f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1003f, global4.c.x, global1.x, global4.b), vec4<f32>(-665f, global4.a.x, global4.c.x, global4.c.x), vec4<bool>(global3.x, var_0, var_2, true)))))) + vec4<f32>(_wgslsmith_f_op_f32(-global4.c.x), _wgslsmith_f_op_f32(111f - _wgslsmith_f_op_f32(floor(770f))), 619f, global1.x)));
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, countOneBits(select(~155u, ~1u, true)), firstTrailingBit(select(_wgslsmith_div_u32(0u, 35089u), countOneBits(4294967295u), !var_1))), max(global2[_wgslsmith_index_u32(101087u | _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 17050u, 77105u), vec4<u32>(0u, 11648u, 27223u, 1u)), 1u), 2u)], ~(~max(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(21343u, 2u)])))), 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(45107u, 2u)], ~vec4<u32>(12027u, 1u, 23868u, 0u)), _wgslsmith_sub_u32(~26026u, countOneBits(var_4.x)), 7612u), _wgslsmith_add_vec3_u32(max(min(var_4.xzw, vec3<u32>(var_4.x, var_4.x, 58455u)), ~vec3<u32>(36334u, 5472u, 76549u)), ~select(var_4.yxy, var_4.zwx, vec3<bool>(var_0, true, global3.x))), global3.x), vec4<u32>(~_wgslsmith_mult_u32(countOneBits(var_4.x), var_4.x), ~var_4.x, var_4.x, ~var_4.x), -522f);
}

