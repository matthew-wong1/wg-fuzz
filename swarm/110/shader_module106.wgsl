struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: bool;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: vec4<bool>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> bool {
    let var_0 = Struct_1(arg_1.yy, 507f, arg_1.yww, select(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 4u)], global3.x, false, global0[_wgslsmith_index_u32(16185u, 4u)]), vec4<bool>(true, global2.x, true, false), global3.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], global2.x, false), vec4<bool>(global3.x, global0[_wgslsmith_index_u32(4294967295u, 4u)], global3.x, global2.x)), !select(!vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 4u)], global2.x, global3.x, true), !vec4<bool>(global2.x, global2.x, true, false), !vec4<bool>(false, global0[_wgslsmith_index_u32(31720u, 4u)], false, true)), all(vec4<bool>(true, !global3.x, global2.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) == _wgslsmith_f_op_f32(-arg_0));
    global3 = !select(select(vec4<bool>(true, false, -19411i == u_input.c.x, !global3.x), var_0.d, var_0.d), var_0.d, false);
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1240f * _wgslsmith_f_op_f32(-459f - arg_0)), var_0.b) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -644f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1439f, 1745f) * vec2<f32>(var_0.b, 405f)), select(global3.wx, vec2<bool>(var_0.d.x, false), false)))))));
    var var_2 = var_0;
    var var_3 = !select(select(var_0.d, vec4<bool>(var_2.d.x, true, var_0.e, var_0.d.x && true), !var_0.d), vec4<bool>(any(select(var_0.d, var_0.d, vec4<bool>(true, global0[_wgslsmith_index_u32(22861u, 4u)], false, false))), 0u < _wgslsmith_mult_u32(var_2.a.x, var_2.a.x), var_2.c.x > arg_1.x, global2.x && var_2.e), false);
    return any(select(var_3.xxz, select(global3.yzy, !(!vec3<bool>(var_2.e, var_2.d.x, var_2.e)), vec3<bool>(false, true, u_input.c.x > 11247i)), !var_0.d.zxx));
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    global0 = array<bool, 4>();
    global0 = array<bool, 4>();
    var var_0 = countOneBits(vec3<u32>(u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 0u, 0u, 54078u) ^ (vec4<u32>(25455u, u_input.a, 3656u, 0u) & vec4<u32>(24436u, 22333u, u_input.a, 4294967295u)), min(vec4<u32>(1u, 0u, u_input.a, 4294967295u), vec4<u32>(1u, 3194u, 0u, u_input.a)) ^ ~vec4<u32>(u_input.e, u_input.e, u_input.a, 38151u)), u_input.a));
    global0 = array<bool, 4>();
    global2 = !(!vec2<bool>(true, func_3(_wgslsmith_f_op_f32(252f + arg_0.x), vec4<u32>(u_input.e, 4294967295u, var_0.x, var_0.x) >> (vec4<u32>(var_0.x, var_0.x, u_input.e, var_0.x) % vec4<u32>(32u)))));
    return countOneBits(-18192i);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<i32>) -> vec2<u32> {
    var var_0 = ~arg_2.x;
    var var_1 = arg_0;
    global1 = !(-115638i < _wgslsmith_sub_i32(0i, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, 150f, -1000f)))));
    var var_2 = arg_1.x;
    var var_3 = arg_0;
    return var_1.a;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<f32>) -> Struct_1 {
    global2 = !(!(!(!global3.wz)));
    let var_0 = _wgslsmith_sub_vec3_u32(~abs(~vec3<u32>(1u, arg_0.x, arg_0.x)), ~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.e, arg_0.x, u_input.a)), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, 66126u), vec3<u32>(arg_0.x, 39002u, 52932u)), _wgslsmith_clamp_u32(u_input.e, u_input.a, 40181u))));
    var var_1 = _wgslsmith_div_u32(abs(var_0.x), firstLeadingBit(min(min(firstTrailingBit(0u), 0u), min(abs(arg_0.x), firstTrailingBit(35269u)))));
    global0 = array<bool, 4>();
    let var_2 = !(_wgslsmith_sub_u32(arg_0.x, ~(~75181u)) >= max(1u, arg_0.x));
    return Struct_1(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1378f - arg_1.x))))))), ~vec3<u32>(_wgslsmith_dot_vec3_u32(select(var_0, var_0, false), _wgslsmith_sub_vec3_u32(var_0, vec3<u32>(u_input.a, arg_0.x, var_0.x))), arg_0.x & 11929u, arg_0.x), select(select(vec4<bool>(all(global3.wy), false, select(global0[_wgslsmith_index_u32(u_input.e, 4u)], false, false), false), !(!vec4<bool>(true, false, global2.x, var_2)), !vec4<bool>(var_2, true, false, global2.x)), !select(!vec4<bool>(var_2, var_2, global2.x, false), vec4<bool>(true, true, true, true), !global0[_wgslsmith_index_u32(u_input.a, 4u)]), ~_wgslsmith_mod_i32(u_input.c.x, u_input.b) == (~u_input.c.x >> (var_0.x % 32u))), true);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    let var_0 = Struct_2(arg_1);
    let var_1 = 4294967295u;
    global2 = vec2<bool>(func_4(vec2<u32>(var_1, (var_0.a.a.x >> (var_1 % 32u)) >> (max(1u, var_1) % 32u)), vec2<f32>(_wgslsmith_div_f32(var_0.a.b, -382f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.b * var_0.a.b), arg_1.b))).e, true & !global3.x);
    var var_2 = vec3<i32>(-1i, 1i, arg_0.x);
    let var_3 = var_0;
    return !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.e, select(u_input.e, _wgslsmith_div_u32(var_1, arg_1.a.x) & _wgslsmith_clamp_u32(var_1, 13319u, 76695u), true)), 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = array<bool, 4>();
    let var_1 = true;
    global1 = !select(true, func_5(~firstLeadingBit(vec4<i32>(-31215i, 1i, u_input.c.x, 9001i)), func_4(func_1(Struct_1(vec2<u32>(u_input.a, 0u), -1108f, vec3<u32>(u_input.e, 4294967295u, u_input.e), vec4<bool>(var_0, global2.x, global2.x, true), true), global3.wy, vec3<i32>(49159i, -2147483647i, u_input.d)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1228f, 1144f)))), ~select(vec4<i32>(-54231i, u_input.c.x, -2169i, -1i), vec4<i32>(-1i, u_input.c.x, -1i, u_input.c.x), vec4<bool>(var_1, global2.x, var_0, var_1))), var_0);
    let var_2 = ~u_input.c.x;
    var var_3 = select(select(!vec4<bool>(func_5(vec4<i32>(var_2, -1i, 16571i, var_2), Struct_1(vec2<u32>(u_input.a, 10406u), 705f, vec3<u32>(47899u, 1u, 4294967295u), vec4<bool>(false, false, global3.x, global2.x), var_1), vec4<i32>(-1i, u_input.b, -4795i, -1i)), all(vec4<bool>(global2.x, false, global2.x, global3.x)), func_3(679f, vec4<u32>(10664u, u_input.a, 35714u, u_input.e)), all(vec4<bool>(global2.x, global0[_wgslsmith_index_u32(u_input.a, 4u)], true, var_0))), !vec4<bool>(func_4(vec2<u32>(32283u, 1u), vec2<f32>(-1000f, -926f)).e, global2.x, true, var_2 <= u_input.c.x), !(true == !global2.x)), !func_4(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 8518u), vec3<u32>(u_input.e, 4294967295u, 1u)), ~4294967295u), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -695f), -771f)).d, !vec4<bool>(true, any(!global3.ww), var_0, var_0));
    global0 = array<bool, 4>();
    let var_4 = ~((~(~u_input.e) | 23414u) ^ _wgslsmith_sub_u32(u_input.a, u_input.a));
    var var_5 = -(~(~(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -1i, 2147483647i, var_2), vec4<i32>(1i, u_input.c.x, 2147483647i, 15206i)) ^ abs(vec4<i32>(var_2, var_2, -2147483647i, 1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~max(~vec3<u32>(1u, 16331u, 44457u), reverseBits(vec3<u32>(4712u, u_input.e, 1u))), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_4, 4294967295u, u_input.e), vec3<u32>(0u, u_input.e, 4294967295u)) >> ((vec3<u32>(u_input.a, 4294967295u, 24970u) | select(vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(u_input.e, 45495u, 1u), global3.yzx)) % vec3<u32>(32u)), false), ~(_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 66034u, var_4), vec3<u32>(u_input.a, u_input.e, 39237u), vec3<bool>(false, var_0, global2.x)), vec3<u32>(var_4, 1u, 1u)) >> (var_4 % 32u)), ~(~vec4<u32>(var_4, 49308u, 4294967295u, 1u)) ^ ((_wgslsmith_sub_vec4_u32(vec4<u32>(45490u, var_4, 23980u, 68392u), vec4<u32>(21280u, var_4, 17829u, 1u)) | ~vec4<u32>(1u, u_input.a, 33464u, var_4)) >> (~(~vec4<u32>(u_input.e, u_input.a, var_4, 4294967295u)) % vec4<u32>(32u))));
}

