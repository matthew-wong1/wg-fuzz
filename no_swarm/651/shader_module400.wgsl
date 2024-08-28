struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(true, false, true, false, false, false, true, false, true, true, true, false, true, false);

var<private> global1: array<vec2<bool>, 32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: vec2<bool>) -> i32 {
    global1 = array<vec2<bool>, 32>();
    let var_0 = global0[_wgslsmith_index_u32(28253u, 14u)];
    global0 = array<bool, 14>();
    var var_1 = arg_1.yxz;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(141f, -842f, -578f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-370f, -523f, -668f)))), vec3<f32>(-574f, -430f, _wgslsmith_f_op_f32(-1342f - -724f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(279f, 1368f, -135f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1261f, -1386f, 841f) - vec3<f32>(789f, 639f, 399f))))));
    return -(~(~(i32(-1i) * -45050i)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = (u_input.a.x >> (u_input.b % 32u)) | arg_0.c.x;
    global1 = array<vec2<bool>, 32>();
    global1 = array<vec2<bool>, 32>();
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(935f, -759f)))))));
    return Struct_1(select(!vec2<bool>(all(var_1.a), !arg_0.a.x), arg_0.a, !vec2<bool>(all(vec4<bool>(true, global0[_wgslsmith_index_u32(40489u, 14u)], true, true)), true)), -1278f, _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, func_3(vec4<bool>(false, true, false, false), vec4<u32>(u_input.c, u_input.c, u_input.b, 1u), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 14u)])), _wgslsmith_add_i32(-1i, arg_0.c.x), arg_0.c.x), vec4<i32>(arg_0.c.x, 1i, arg_0.c.x, i32(-1i) * -14912i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(var_1.c, firstTrailingBit(arg_0.c)), firstTrailingBit(arg_0.c), abs(reverseBits(u_input.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(860f, _wgslsmith_f_op_f32(-arg_0.d.x), var_1.b, _wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.b, -778f, arg_0.b, arg_0.d.x))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<f32>) -> u32 {
    global1 = array<vec2<bool>, 32>();
    global1 = array<vec2<bool>, 32>();
    var var_0 = func_2(Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(select(~u_input.b, countOneBits(4294967295u), arg_1), 14u)], true), arg_2.x, u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-447f, arg_2.x, -173f, -737f)), _wgslsmith_f_op_vec4_f32(-arg_0))))));
    var_0 = func_2(Struct_1(global1[_wgslsmith_index_u32(1u, 32u)], var_0.d.x, max(_wgslsmith_clamp_vec4_i32(u_input.a, _wgslsmith_mod_vec4_i32(var_0.c, vec4<i32>(-42706i, 2147483647i, -18425i, 2147483647i)), vec4<i32>(u_input.a.x, u_input.a.x, 1i, var_0.c.x)), vec4<i32>(func_3(vec4<bool>(true, var_0.a.x, var_0.a.x, arg_1), vec4<u32>(u_input.c, 44398u, u_input.b, u_input.c), vec2<bool>(var_0.a.x, false)), u_input.a.x, _wgslsmith_sub_i32(var_0.c.x, u_input.a.x), countOneBits(22257i))), var_0.d));
    global1 = array<vec2<bool>, 32>();
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 14>();
    global1 = array<vec2<bool>, 32>();
    global1 = array<vec2<bool>, 32>();
    global1 = array<vec2<bool>, 32>();
    var var_0 = ~(~(~func_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(240f, -884f, 1000f, -1124f))), !global0[_wgslsmith_index_u32(4294967295u, 14u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1027f, 264f, 180f)))));
    let var_1 = abs(select(abs(u_input.c), ~u_input.c, func_2(func_2(Struct_1(vec2<bool>(true, global0[_wgslsmith_index_u32(58602u, 14u)]), -1389f, u_input.a, vec4<f32>(833f, -1000f, 1162f, -644f)))).a.x));
    let var_2 = !(!vec4<bool>(!global0[_wgslsmith_index_u32(max(1325u, u_input.b), 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)], any(!vec4<bool>(global0[_wgslsmith_index_u32(43204u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], false, true)), true));
    var var_3 = func_2(func_2(func_2(Struct_1(func_2(Struct_1(var_2.yw, 688f, vec4<i32>(0i, 61434i, u_input.a.x, 2147483647i), vec4<f32>(502f, -425f, -1523f, -360f))).a, _wgslsmith_f_op_f32(f32(-1f) * -606f), select(u_input.a, u_input.a, vec4<bool>(false, global0[_wgslsmith_index_u32(7458u, 14u)], var_2.x, global0[_wgslsmith_index_u32(var_1, 14u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-576f, -1000f, -308f, 1409f))))));
    global0 = array<bool, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(970f, _wgslsmith_f_op_f32(round(var_3.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2269f, var_3.d.x)))))), ~firstLeadingBit(select(~vec3<u32>(u_input.b, var_1, u_input.b), vec3<u32>(1u, 0u, var_1), var_2.zxy)));
}

