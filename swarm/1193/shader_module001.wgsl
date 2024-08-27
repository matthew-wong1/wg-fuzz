struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(false, false, false, false, true, true, true, false, false, true, false, true, true, false, true, false, true, true, false, true, true, false, false);

var<private> global1: Struct_1 = Struct_1(vec3<u32>(21182u, 9190u, 134890u), true);

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> vec3<u32> {
    let var_0 = ~vec2<i32>(firstLeadingBit(-2147483647i), 37180i);
    var var_1 = max(~u_input.b.x & -1i, select(51591i, -var_0.x, true));
    let var_2 = Struct_1(vec3<u32>(~global1.a.x, abs(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(71989u, 0u, global1.a.x, 0u) >> (vec4<u32>(4294967295u, 0u, 19009u, u_input.a.x) % vec4<u32>(32u)))), abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(20398u, 0u), _wgslsmith_mult_vec2_u32(u_input.a.wy, global1.a.zx)))), !(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(exp2(arg_0.x))) == -806f));
    global1 = Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(1u, 31100u, var_2.a.x)), vec3<u32>(var_2.a.x, 46410u, 21440u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, global1.a.x, global1.a.x), ~vec3<u32>(global1.a.x, 1u, 1u))) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(var_2.a.x, 1u, u_input.a.x), vec3<u32>(global1.a.x, var_2.a.x, ~4294967295u)) % vec3<u32>(32u)), !global1.b);
    var var_3 = firstLeadingBit(var_2.a.x);
    return ~firstLeadingBit(global1.a);
}

fn func_2() -> f32 {
    var var_0 = 263f;
    var var_1 = Struct_1(~(~(vec3<u32>(4294967295u, u_input.a.x, global1.a.x) << (func_3(vec2<f32>(-1676f, -235f)) % vec3<u32>(32u)))), true);
    let var_2 = vec4<i32>(~(-1i), 48028i, 0i, countOneBits(~_wgslsmith_sub_i32(u_input.b.x, -27079i) | _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.b.x, -2147483647i, u_input.b.x), ~42137i, u_input.b.x ^ -55491i)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2257f)) - _wgslsmith_f_op_f32(f32(-1f) * -1742f));
    var_0 = var_3;
    return var_3;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: u32) -> Struct_1 {
    var var_0 = min(select(_wgslsmith_dot_vec2_u32(~u_input.a.yx ^ firstLeadingBit(vec2<u32>(u_input.a.x, arg_2)), vec2<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(13712u, global1.a.x, 24302u), u_input.a.zxy))), 1u, !arg_1), ~arg_2);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-417f))), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -239f));
    global2 = select(select(vec3<bool>(1u < func_3(vec2<f32>(-1098f, -1000f)).x, true, !(var_1.x < arg_0.x)), select(vec3<bool>(false, true, all(global2.yz)), !vec3<bool>(global1.b, global1.b, false), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, global1.a.x, u_input.a.x), u_input.a.zxw), _wgslsmith_mult_u32(56286u, global1.a.x)), 23u)]), any(vec3<bool>(any(global2.xx), any(vec3<bool>(global1.b, global0[_wgslsmith_index_u32(global1.a.x, 23u)], arg_1)), !arg_1))), vec3<bool>(!all(!vec3<bool>(false, arg_1, global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), (_wgslsmith_f_op_f32(round(arg_0.x)) >= var_1.x) & !(false | global1.b), !all(select(global2.zy, vec2<bool>(true, global0[_wgslsmith_index_u32(41495u, 23u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(global1.a.x, 23u)])))), global1.b);
    var var_2 = Struct_1(~min(_wgslsmith_sub_vec3_u32(vec3<u32>(8524u, 0u, 44003u), vec3<u32>(global1.a.x, 32109u, global1.a.x)) | vec3<u32>(arg_2, global1.a.x, 16864u), vec3<u32>(u_input.a.x, arg_2, 0u) << (u_input.a.ywy % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)) * var_1.x) != 110f);
    var var_3 = max(_wgslsmith_sub_i32(-u_input.b.x, countOneBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, 20470i, -305i, 21665i), firstTrailingBit(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, -7736i))))), min(_wgslsmith_div_i32(-6926i, min(1i, u_input.b.x)), select(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_add_i32(-34231i, u_input.b.x)), _wgslsmith_add_i32(~u_input.b.x, firstTrailingBit(u_input.b.x)), true)));
    return Struct_1(abs(u_input.a.www), max(global1.a.x, firstTrailingBit(~arg_2)) <= ~_wgslsmith_add_u32(arg_2, _wgslsmith_mult_u32(u_input.a.x, global1.a.x)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1952f - _wgslsmith_f_op_f32(func_2())) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1102f) + _wgslsmith_f_op_f32(round(-592f)))), _wgslsmith_f_op_f32(1922f - 1195f)), global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -427f), _wgslsmith_f_op_f32(min(-1000f, -1299f))))).x, 23u)], 980u);
    var var_1 = func_4(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-415f * 630f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-173f)))), -478f), all(vec2<bool>(true, all(!vec2<bool>(false, global1.b)))), ~arg_0);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1780f, -1519f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1232f))), select(vec2<bool>(!var_1.b, !global0[_wgslsmith_index_u32(4294967295u, 23u)]), select(global2.zy, !vec2<bool>(var_1.b, false), select(global2.x, false, global0[_wgslsmith_index_u32(0u, 23u)])), global2.yy))));
    let var_3 = func_4(var_2, true, 11191u);
    global1 = var_3;
    return func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2)) * _wgslsmith_f_op_vec2_f32(var_2 - var_2)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(641f, var_2.x))))), !(!var_1.b), _wgslsmith_mult_u32(var_1.a.x, var_3.a.x ^ var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~51093u);
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(453f, -869f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1435f, -187f) - vec2<f32>(-2284f, 1657f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -377f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-654f, -946f)))))));
    let var_2 = global1.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(449f, var_1.x)), -174f, _wgslsmith_f_op_f32(-var_1.x)));
    var var_4 = global1.a.zy;
    var var_5 = !(!vec3<bool>(!(var_0.a.x < 46170u), true, (u_input.b.x <= u_input.b.x) && !var_0.b));
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -2158f, -576f) * vec3<f32>(173f, var_3.x, var_3.x))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_1.x, 307f), vec3<f32>(162f, var_1.x, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -374f, 1271f) * vec3<f32>(var_1.x, var_1.x, var_1.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(740f - var_1.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-690f, var_1.x, var_3.x) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(128f, var_3.x, 467f))))), select(select(vec3<bool>(false, var_0.b, false), !vec3<bool>(var_0.b, true, false), vec3<bool>(global2.x, global0[_wgslsmith_index_u32(82951u, 23u)], global2.x)), select(select(vec3<bool>(true, false, false), vec3<bool>(global2.x, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, global2.x), vec3<bool>(true, false, true), vec3<bool>(global0[_wgslsmith_index_u32(var_4.x, 23u)], false, global2.x)), select(vec3<bool>(var_5.x, true, var_0.b), vec3<bool>(false, global1.b, var_0.b), true)), true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, var_4.x), _wgslsmith_mod_vec4_u32(min(countOneBits(~u_input.a), u_input.a), vec4<u32>(_wgslsmith_div_u32(0u, 1u), firstLeadingBit(0u), firstTrailingBit(global1.a.x), func_3(vec2<f32>(-518f, var_3.x)).x) >> (~u_input.a % vec4<u32>(32u))), vec4<u32>(var_0.a.x, firstTrailingBit(min(~var_0.a.x, _wgslsmith_div_u32(87738u, 1u))), ~4294967295u ^ global1.a.x, _wgslsmith_dot_vec3_u32(~u_input.a.yxz, ~(~vec3<u32>(global1.a.x, 5726u, u_input.a.x)))));
}

