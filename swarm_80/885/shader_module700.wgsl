struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(false, true, true, true, false, true, false);

var<private> global1: vec4<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: vec2<u32>) -> vec4<bool> {
    var var_0 = -select(vec4<i32>(select(firstLeadingBit(u_input.c), 11810i, false), i32(-1i) * -u_input.b, -2147483647i, -2147483647i), -(~vec4<i32>(u_input.a, u_input.b, 1i, u_input.c)), false);
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1714f + global1.x)))) - global1.x), Struct_1(-1595f >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1339f, global1.x)), !(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 7u)], global0[_wgslsmith_index_u32(u_input.d.x, 7u)])))));
    let var_2 = -_wgslsmith_div_i32(11811i, -2474i);
    return vec4<bool>(true, var_1.b.a, global0[_wgslsmith_index_u32(arg_1.x, 7u)] | !any(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 7u)], true, false, global0[_wgslsmith_index_u32(4294967295u, 7u)])), !((global0[_wgslsmith_index_u32(4294967295u, 7u)] && all(vec4<bool>(var_1.b.a, false, var_1.b.a, global0[_wgslsmith_index_u32(arg_1.x, 7u)]))) && true));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = select(select(vec4<bool>(u_input.b < u_input.b, _wgslsmith_dot_vec2_u32(u_input.d.zy, vec2<u32>(u_input.d.x, u_input.d.x)) > ~u_input.d.x, true, !any(arg_0.b)), select(!vec4<bool>(global0[_wgslsmith_index_u32(102594u, 7u)], global0[_wgslsmith_index_u32(u_input.d.x, 7u)], global0[_wgslsmith_index_u32(475u, 7u)], false), select(select(vec4<bool>(false, true, arg_0.b.x, true), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 7u)], arg_0.b.x, true), vec4<bool>(true, false, arg_0.a, true)), select(vec4<bool>(arg_0.a, true, global0[_wgslsmith_index_u32(u_input.d.x, 7u)], global0[_wgslsmith_index_u32(11170u, 7u)]), vec4<bool>(arg_0.a, arg_0.b.x, arg_0.a, true), vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 7u)], true)), vec4<bool>(false, arg_0.a, arg_0.b.x, arg_0.b.x)), func_3(~vec4<u32>(0u, 29237u, u_input.d.x, 17376u), ~vec3<u32>(u_input.d.x, 1u, u_input.d.x), u_input.d.yz)), true), !vec4<bool>(func_3(vec4<u32>(1u, u_input.d.x, u_input.d.x, 85191u) << (vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.d.x) % vec4<u32>(32u)), vec3<u32>(4294967295u, u_input.d.x, 4294967295u) | vec3<u32>(0u, 16908u, u_input.d.x), u_input.d.zx).x, any(arg_0.b), !all(arg_0.b), any(vec2<bool>(false, true)) & (false || arg_0.a)), abs(u_input.c) != _wgslsmith_div_i32(firstLeadingBit(u_input.a), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(21992i, u_input.a, u_input.c), vec3<i32>(0i, u_input.c, 23120i)), u_input.c)));
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.d.x, 7u)];
    global0 = array<bool, 7>();
    return select(-u_input.c, ~52459i, func_3(vec4<u32>(u_input.d.x, u_input.d.x, _wgslsmith_clamp_u32(abs(11778u), 1u, 0u), u_input.d.x), u_input.d & u_input.d, countOneBits(~(vec2<u32>(u_input.d.x, 15594u) | u_input.d.zz))).x);
}

fn func_1(arg_0: Struct_4, arg_1: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_div_i32(-_wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-20629i, -1i, 1i, arg_0.a), vec4<i32>(-53802i, u_input.b, u_input.a, 1i)), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b, 27194i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_0.a, -21882i, u_input.b), vec4<i32>(-2147483647i, u_input.c, 1i, 1i)))), -(~func_2(arg_0.b.e)));
    var var_1 = !(!func_3(arg_1, vec3<u32>(1u, ~u_input.d.x, ~arg_1.x), ~arg_1.xw ^ _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 68634u), vec2<u32>(u_input.d.x, 0u))).zw);
    var_0 = _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(arg_0.a, 12920i)), _wgslsmith_div_vec2_i32(-(vec2<i32>(u_input.b, u_input.b) >> (vec2<u32>(64546u, u_input.d.x) % vec2<u32>(32u))), -(vec2<i32>(u_input.c, 40769i) << (arg_1.yy % vec2<u32>(32u)))) << (_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(u_input.d.x, arg_1.x)), ~(u_input.d.zy << (vec2<u32>(u_input.d.x, u_input.d.x) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1377f, arg_0.b.b.a, global1.x, -1000f), vec4<f32>(arg_0.b.c, -598f, 545f, arg_0.b.b.a), arg_0.b.d)))))))));
    var var_2 = _wgslsmith_mod_i32(arg_0.a, min(~(i32(-1i) * -2147483647i), -arg_0.a) ^ abs(max(~2964i, 2147483647i)));
    return -884f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 7>();
    var var_0 = vec4<i32>(~min(1i, _wgslsmith_div_i32(-45816i, u_input.b)), -34318i, abs(1i), -2147483647i);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-716f, global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1071f - _wgslsmith_f_op_f32(func_1(Struct_4(var_0.x, Struct_3(Struct_1(false, vec3<bool>(global0[_wgslsmith_index_u32(3403u, 7u)], global0[_wgslsmith_index_u32(u_input.d.x, 7u)], false)), Struct_2(1051f, Struct_1(global0[_wgslsmith_index_u32(u_input.d.x, 7u)], vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 7u)], global0[_wgslsmith_index_u32(u_input.d.x, 7u)]))), global1.x, vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 7u)], global0[_wgslsmith_index_u32(90767u, 7u)], global0[_wgslsmith_index_u32(u_input.d.x, 7u)], global0[_wgslsmith_index_u32(u_input.d.x, 7u)]), Struct_1(global0[_wgslsmith_index_u32(u_input.d.x, 7u)], vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.d.x, 7u)])))), vec4<u32>(u_input.d.x, 38877u, u_input.d.x, u_input.d.x)))), _wgslsmith_f_op_f32(-global1.x))));
    global1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(948f, global1.x)), _wgslsmith_f_op_f32(-var_1.x)) + -1051f), _wgslsmith_f_op_f32(step(575f, _wgslsmith_f_op_f32(f32(-1f) * -539f))), -1615f, global1.x)));
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, -650f, 443f, var_1.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, -385f, -1169f, var_1.x), vec4<f32>(var_1.x, global1.x, var_1.x, -1361f)))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(2321f)), _wgslsmith_f_op_f32(select(735f, -593f, global0[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_f_op_f32(max(268f, var_1.x)), _wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 720f, global1.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(107f, global1.x, global1.x, -1750f)))))), _wgslsmith_f_op_vec2_f32(-global1.zz));
    var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(802f, -1000f, -511f)));
    let var_3 = min(4294967295u, u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(87600u, ~(~firstLeadingBit(~(-50349i))));
}

