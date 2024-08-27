struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: vec2<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-230f, -858f))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-483f, global1.x) * -1126f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1.x, -775f))))), !arg_0);
    let var_1 = vec2<bool>(global0[_wgslsmith_index_u32(1u, 15u)], any(vec3<bool>(any(select(arg_0, arg_0, false)), all(vec2<bool>(arg_2.x, false)) || any(vec3<bool>(var_0.b.x, false, global0[_wgslsmith_index_u32(71796u, 15u)])), all(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.d.x, 15u)], false), vec4<bool>(arg_0.x, true, arg_2.x, false), true)))));
    global0 = array<bool, 15>();
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(global1.x, var_0.a.x, var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -563f))), select(var_1, arg_0, (max(arg_1, u_input.b) & _wgslsmith_mod_i32(arg_1, arg_1)) >= firstTrailingBit(arg_1)));
    let var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(~14673u, ~firstLeadingBit(countOneBits(u_input.d.x)), ~18747u, ~(~1u)), ~(~vec4<u32>(46628u, u_input.d.x, abs(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 0u, 0u), vec4<u32>(u_input.c, u_input.c, u_input.d.x, 1u)))));
    return Struct_2(_wgslsmith_div_u32(~var_3.x, ~(~1u)), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(~var_3.zww, ~var_3.zwx)), ~((vec4<i32>(54152i, arg_1, -2147483647i, 2147483647i) & vec4<i32>(-1i, u_input.a.x, -1i, arg_1)) ^ ~vec4<i32>(u_input.b, 49733i, 15844i, arg_1)) ^ max(-abs(vec4<i32>(u_input.b, u_input.a.x, arg_1, -47002i)), -(vec4<i32>(2666i, -1i, u_input.a.x, -17791i) >> (var_3 % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-958f, -242f, var_0.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-492f, -990f, 295f)), vec3<bool>(true, var_0.b.x, true))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    global1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.x, arg_0.d.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_0.d.xx))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.d.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.d.zx))))));
    var var_0 = func_2(arg_2.xx, 1i, select(!select(vec2<bool>(true, true), vec2<bool>(arg_1.b.x, true), arg_1.b.x), vec2<bool>(false, !(!global0[_wgslsmith_index_u32(u_input.c, 15u)])), false));
    var_0 = Struct_2(u_input.d.x | (_wgslsmith_mult_u32(select(0u, 25415u, false), 13814u) >> (~select(27706u, 0u, false) % 32u)), ~abs(5963u), ~vec4<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(arg_0.c), abs(var_0.c)), _wgslsmith_clamp_i32(-24056i, -13009i, u_input.a.x), u_input.a.x, ~(arg_0.c.x | -7563i)), arg_0.d);
    let var_1 = arg_0;
    let var_2 = _wgslsmith_sub_u32(~arg_0.b, var_0.a);
    return max(reverseBits(var_1.b), ~(~u_input.d.x)) | 1u;
}

fn func_1() -> i32 {
    global0 = array<bool, 15>();
    let var_0 = func_2(vec2<bool>(false, true), 40604i, vec2<bool>(true, -1998f != _wgslsmith_f_op_f32(floor(1686f))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.d.x)), var_0.d.x);
    var var_2 = Struct_1(var_0.d.xy, vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, 1u, 27451u), ~vec4<u32>(var_0.a, 25835u, u_input.c, 41361u)), ~0u & func_3(Struct_2(4294967295u, 1u, vec4<i32>(var_0.c.x, -8434i, -2147483647i, 54633i), var_0.d), Struct_1(vec2<f32>(global1.x, -1000f), vec2<bool>(true, false)), vec4<bool>(global0[_wgslsmith_index_u32(76313u, 15u)], true, global0[_wgslsmith_index_u32(u_input.c, 15u)], true))), 15u)], true | global0[_wgslsmith_index_u32(reverseBits(1u), 15u)]));
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(var_2.a + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.x), var_0.d.x))), select(var_2.b, !var_2.b, var_2.b));
    return 22167i;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = func_2(select(vec2<bool>(!(!global0[_wgslsmith_index_u32(0u, 15u)]), false), arg_1.b, !(!(!arg_1.b.x))), ~(-30169i), !select(vec2<bool>(any(vec3<bool>(false, false, true)), arg_1.b.x || true), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 15u)], true), arg_1.b, vec2<bool>(global0[_wgslsmith_index_u32(38954u, 15u)], false)), select(select(vec2<bool>(true, true), arg_1.b, arg_1.b), vec2<bool>(arg_1.b.x, true), any(vec3<bool>(arg_1.b.x, global0[_wgslsmith_index_u32(arg_2.a, 15u)], global0[_wgslsmith_index_u32(arg_2.a, 15u)])))));
    let var_1 = arg_2.d;
    let var_2 = Struct_1(arg_1.a, vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mod_u32(arg_2.a, var_0.b), ~var_0.b), 15u)], !(!(!global0[_wgslsmith_index_u32(1u, 15u)]))));
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2232f, _wgslsmith_f_op_f32(-func_2(vec2<bool>(true, global0[_wgslsmith_index_u32(3662u, 15u)]), ~2147483647i, select(arg_1.b, var_2.b, vec2<bool>(true, true))).d.x)));
    global0 = array<bool, 15>();
    return func_2(vec2<bool>(true, true), i32(-1i) * -1i, vec2<bool>(var_2.b.x, any(vec2<bool>(global0[_wgslsmith_index_u32(~u_input.c, 15u)], true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(max(104i ^ _wgslsmith_clamp_i32(10479i, 1i, -13579i), func_1()), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1152f, global1.x), vec2<f32>(global1.x, global1.x))))))), select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], false), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 15u)], false), true)), func_2(select(vec2<bool>(any(vec3<bool>(false, global0[_wgslsmith_index_u32(63647u, 15u)], global0[_wgslsmith_index_u32(99751u, 15u)])), true), select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 15u)], true), vec2<bool>(true, true), global0[_wgslsmith_index_u32(0u, 15u)]), select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 15u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 15u)]), false), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 15u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 15u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 15u)], global0[_wgslsmith_index_u32(8003u, 15u)]))), select(vec2<bool>(false, global0[_wgslsmith_index_u32(49738u, 15u)]), select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 15u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 15u)]), true), any(vec2<bool>(global0[_wgslsmith_index_u32(1u, 15u)], false)))), u_input.a.x, vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 15u)]), false)), !select(true, global0[_wgslsmith_index_u32(u_input.d.x, 15u)], true))));
    var var_1 = Struct_2(~_wgslsmith_mod_u32(1u, max(_wgslsmith_sub_u32(u_input.c, 1u), _wgslsmith_dot_vec2_u32(u_input.d.yy, vec2<u32>(u_input.c, var_0.b)))), var_0.b | reverseBits(firstLeadingBit(_wgslsmith_sub_u32(48929u, var_0.a))), func_2(vec2<bool>(any(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(107959u, 15u)])), any(vec2<bool>(true, true))), -u_input.b, vec2<bool>(all(select(vec3<bool>(true, global0[_wgslsmith_index_u32(14272u, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.b, 15u)], true), vec3<bool>(global0[_wgslsmith_index_u32(var_0.b, 15u)], true, global0[_wgslsmith_index_u32(0u, 15u)]))), true)).c, vec3<f32>(1000f, global1.x, 214f));
    var_0 = Struct_2(_wgslsmith_add_u32(~u_input.d.x, var_1.b), ~var_1.b, ~reverseBits(-(vec4<i32>(10805i, u_input.a.x, var_1.c.x, var_0.c.x) >> (vec4<u32>(u_input.c, 20387u, var_1.b, 4294967295u) % vec4<u32>(32u)))), var_0.d);
    var var_2 = func_2(vec2<bool>(select(all(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 15u)], global0[_wgslsmith_index_u32(69899u, 15u)])), true, global0[_wgslsmith_index_u32(abs(u_input.c), 15u)]), true), _wgslsmith_mult_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, var_1.c.x), vec2<i32>(var_0.c.x, u_input.b)) | 32726i, min(~reverseBits(-2147483647i), u_input.a.x)), select(select(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(13850u, 15u)])), select(vec2<bool>(false, global0[_wgslsmith_index_u32(45668u, 15u)]), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(var_0.a, 15u)], global0[_wgslsmith_index_u32(69470u, 15u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(5442u, 15u)])), global0[_wgslsmith_index_u32(~u_input.c, 15u)]), false), !select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 15u)]), vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(53952u, 15u)], true)), vec2<bool>(global0[_wgslsmith_index_u32(32549u, 15u)], global0[_wgslsmith_index_u32(36107u, 15u)]), select(true, false, false)), select(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.b, 15u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 15u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.a, 15u)])), !(!vec2<bool>(global0[_wgslsmith_index_u32(25183u, 15u)], global0[_wgslsmith_index_u32(26705u, 15u)])), vec2<bool>(true, any(vec2<bool>(global0[_wgslsmith_index_u32(33503u, 15u)], global0[_wgslsmith_index_u32(var_1.a, 15u)]))))));
    var var_3 = ~(u_input.d ^ vec3<u32>(_wgslsmith_div_u32(1u, ~u_input.d.x), 0u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(25140u, 3426u, 52916u), 49803u)));
    var_1 = Struct_2(~(_wgslsmith_mod_u32(45744u, ~0u) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(u_input.d.x, 1883u, 23894u, 1u)), vec4<u32>(var_0.b, var_3.x, 12956u, var_3.x) ^ vec4<u32>(u_input.c, var_0.a, 85482u, 56465u))), _wgslsmith_add_u32(_wgslsmith_div_u32(var_0.b, u_input.d.x), 10156u), var_1.c, var_1.d);
    var var_4 = Struct_1(var_1.d.yx, select(vec2<bool>(select(true, -650f != var_2.d.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_3.x, 0u), 15u)]), !all(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 15u)]))), !vec2<bool>(var_2.c.x < u_input.b, global0[_wgslsmith_index_u32(0u, 15u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, var_2.a, 135714u), 15u)])));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(var_2.d.zz))))) * _wgslsmith_f_op_vec2_f32(-var_2.d.zz));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-221f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1887f))), var_0.d.x, _wgslsmith_div_f32(var_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_4.a.x, var_2.d.x), _wgslsmith_f_op_f32(var_2.d.x * var_1.d.x))))));
}

