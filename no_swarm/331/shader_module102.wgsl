struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: array<bool, 14> = array<bool, 14>(false, true, false, false, true, false, false, true, false, true, false, false, true, true);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> bool {
    global1 = array<bool, 14>();
    global1 = array<bool, 14>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, arg_0.b, -186f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1296f, -1000f, arg_0.b, -229f) * vec4<f32>(arg_0.b, arg_0.b, -1006f, 1712f)), vec4<f32>(-1033f, 1000f, -1180f, -811f)), any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 25u)], true, global1[_wgslsmith_index_u32(4294967295u, 14u)], true))))));
    let var_1 = vec3<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, arg_1, 0u), vec3<u32>(4294967295u, arg_1, 28863u)), vec3<u32>(arg_1 << (u_input.d.x % 32u), u_input.d.x, 0u)), ~arg_1, arg_1);
    global0 = array<bool, 25>();
    return all(select(!(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(u_input.c.x, 25u)], true, false)), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], false, false, true), vec4<bool>(global1[_wgslsmith_index_u32(28603u, 14u)], true, false, global1[_wgslsmith_index_u32(53744u, 14u)]))), false));
}

fn func_2() -> vec4<bool> {
    var var_0 = ~0u;
    let var_1 = func_3(Struct_1(-abs(i32(-1i) * -2147483647i), 726f), ~(~0u));
    return select(!(!select(vec4<bool>(var_1, false, false, global1[_wgslsmith_index_u32(u_input.b, 14u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 25u)], global1[_wgslsmith_index_u32(1u, 14u)], true, global1[_wgslsmith_index_u32(1u, 14u)]), true)), vec4<bool>(u_input.a.x >= u_input.c.x, !global1[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(~u_input.b), reverseBits(u_input.c.x)), 25u)], global0[_wgslsmith_index_u32(u_input.c.x ^ u_input.d.x, 25u)]), all(vec3<bool>(!(!global0[_wgslsmith_index_u32(u_input.b, 25u)]), _wgslsmith_dot_vec3_u32(u_input.c.xwz, vec3<u32>(16249u, u_input.a.x, 122650u)) <= ~28444u, select(true, var_1, global1[_wgslsmith_index_u32(u_input.b, 14u)]))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>) -> u32 {
    let var_0 = vec2<bool>(true, all(!arg_1) != (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1895f * -561f))) == _wgslsmith_f_op_f32(-162f + _wgslsmith_f_op_f32(857f + -1041f))));
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(32503u, reverseBits(_wgslsmith_clamp_u32(u_input.b, u_input.c.x, 0u)) & (u_input.b & ~u_input.c.x)), ~u_input.d.zx);
    let var_2 = ~_wgslsmith_mult_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(-vec2<i32>(-1i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-16690i, 1i), vec2<i32>(-2147483647i, 1i), vec2<i32>(-1i, -40977i)))), -select(vec2<i32>(0i, 33005i) << (u_input.c.zw % vec2<u32>(32u)), vec2<i32>(1i, 1i), !var_0.x));
    return abs(1u);
}

fn func_1() -> bool {
    global0 = array<bool, 25>();
    var var_0 = 23460u;
    var_0 = firstLeadingBit(35723u) << (_wgslsmith_sub_u32(~_wgslsmith_mod_u32(select(u_input.c.x, 4840u, false), 1u), func_4(!vec3<bool>(global0[_wgslsmith_index_u32(56135u, 25u)], true, false), !func_2())) % 32u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    let var_2 = min(~(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-13770i, -2147483647i, 0i), vec3<i32>(-19304i, 31022i, -16460i), vec3<i32>(-1027i, -37602i, 6974i)), vec3<i32>(-1i, 0i, 0i)) ^ vec3<i32>(0i, ~13237i, _wgslsmith_div_i32(-39053i, 2147483647i))), _wgslsmith_div_vec3_i32(max(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 1i, -5144i), vec3<i32>(-2147483647i, -1i, -47292i)), vec3<i32>(-53643i, 0i, 58239i)) | ((vec3<i32>(6611i, 13633i, 1i) << (vec3<u32>(0u, u_input.c.x, 43978u) % vec3<u32>(32u))) >> (~vec3<u32>(u_input.c.x, u_input.d.x, u_input.d.x) % vec3<u32>(32u))), ~vec3<i32>(abs(20423i), i32(-1i) * -10633i, min(51615i, -31260i))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 25>();
    var var_0 = select(select(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 25u)], false, false, global1[_wgslsmith_index_u32(4294967295u, 14u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b, 25u)], global1[_wgslsmith_index_u32(u_input.c.x, 14u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(50023u, 25u)], false, true))), vec4<bool>(true, true, any(vec3<bool>(global1[_wgslsmith_index_u32(74601u, 14u)], global0[_wgslsmith_index_u32(93625u, 25u)], false)), func_1()), true), vec4<bool>(false, !(any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 25u)])) | global1[_wgslsmith_index_u32(27117u, 14u)]), true, true), true);
    var var_1 = Struct_1(-1i, _wgslsmith_f_op_f32(f32(-1f) * -1099f));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -1341f))) * _wgslsmith_f_op_f32(min(-553f, var_1.b))));
    var var_3 = ~1u;
    var var_4 = _wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(230f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.b + var_1.b), _wgslsmith_f_op_f32(-var_1.b)))))), true));
    let var_5 = Struct_1(~firstLeadingBit(-(~(-2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.b, 1640f, global1[_wgslsmith_index_u32(~u_input.a.x, 14u)]))));
    let var_6 = vec2<f32>(-610f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + var_5.b)));
    var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, ~firstLeadingBit(4294967295u), 53099u) << (reverseBits(u_input.d.xxx) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x << (u_input.b % 32u), ~49408u, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<i32>(var_1.a, -var_1.a, ~0i) >> (vec3<u32>(u_input.a.x << (u_input.d.x % 32u), ~u_input.a.x, 54036u) % vec3<u32>(32u))), countOneBits(select(select(~(-13i), -var_1.a, global0[_wgslsmith_index_u32(u_input.c.x, 25u)]), -(i32(-1i) * -1i), !func_1())));
}

