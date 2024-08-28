struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, false, true, true), 47837u, vec2<f32>(806f, 433f), vec4<u32>(1u, 6898u, 128983u, 4294967295u));

var<private> global2: array<Struct_1, 7>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    var var_0 = global1.a.wx;
    let var_1 = vec3<bool>(any(vec3<bool>(true, 2147483647i < max(u_input.c, u_input.a), any(select(vec2<bool>(false, arg_0.a.x), vec2<bool>(false, false), arg_0.a.x)))), _wgslsmith_f_op_f32(min(arg_0.c.x, global1.c.x)) > -715f, any(select(!arg_1.zx, select(global1.a.xy, arg_0.a.yx, !vec2<bool>(false, arg_0.a.x)), !global1.a.x & true)));
    let var_2 = Struct_1(vec4<bool>(var_1.x, !(!var_1.x), true & var_0.x, !global1.a.x), (min(u_input.e, u_input.e) & ~countOneBits(9818u)) | ~1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(arg_0.c.x, -630f, true)), arg_0.c.x))), vec4<u32>(u_input.e, ~firstLeadingBit(47378u), 0u, firstTrailingBit(u_input.e)));
    var var_3 = _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(global1.d, var_2.d), countOneBits(min(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(40959u, var_2.d.x, u_input.e, 68734u), arg_0.d, arg_0.d), ~vec4<u32>(u_input.e, global1.b, global1.b, var_2.b)), ~var_2.d)));
    global2 = array<Struct_1, 7>();
    return !select(global1.a.x, var_0.x, all(arg_1.yy));
}

fn func_2() -> vec2<bool> {
    var var_0 = global1.a;
    var var_1 = Struct_1(select(select(vec4<bool>(true, var_0.x, true, !global1.a.x), vec4<bool>(var_0.x, true, func_3(Struct_1(vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x), 16652u, vec2<f32>(504f, 589f), global1.d), global1.a.yzw), !var_0.x), vec4<bool>(global1.a.x, all(vec3<bool>(global1.a.x, true, var_0.x)), true, any(global1.a.wxy))), global1.a, !(!(!global1.a))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(global1.d, vec4<u32>(52756u, 1u, 46956u, u_input.e))), 38257u), 4294967295u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(global1.c)))), vec4<u32>(min(~(~u_input.e), ~(global1.d.x ^ 33210u)), 11223u, _wgslsmith_mod_u32(1u, ~global1.d.x), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~0u, 0u, 26007u), 63740u)));
    global1 = global2[_wgslsmith_index_u32(62264u, 7u)];
    var var_2 = Struct_1(global1.a, 4294967295u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.c.x - 898f))), _wgslsmith_f_op_f32(1102f - _wgslsmith_f_op_f32(global1.c.x * global1.c.x)))), vec4<u32>(var_1.d.x, 37782u, var_1.d.x, global1.d.x));
    let var_3 = global2[_wgslsmith_index_u32(1u, 7u)];
    return var_3.a.zw;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(!(!(!select(arg_2.a, global1.a, global1.a))), _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_sub_u32(arg_2.d.x, _wgslsmith_mult_u32(18185u, global1.d.x))), global1.d.x, u_input.e << (_wgslsmith_sub_u32(54917u, 7231u) % 32u)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(410f - -1309f)), _wgslsmith_f_op_f32(abs(global1.c.x))), _wgslsmith_f_op_f32(-global1.c.x)), firstLeadingBit(~(~arg_2.d)) ^ _wgslsmith_mult_vec4_u32(arg_2.d, vec4<u32>(abs(arg_2.b), arg_2.d.x, 1u, 24427u)));
    let var_1 = arg_2.d.yw;
    global1 = Struct_1(global1.a, arg_2.d.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, var_0.c.x) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.c.x))))), ~firstLeadingBit(var_0.d));
    global2 = array<Struct_1, 7>();
    global1 = global2[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(abs(0u), var_1.x, ~arg_2.b), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, 1u, 4294967295u), abs(vec3<u32>(global1.b, 53617u, 1u))))), 7u)];
    return select(!(!vec4<bool>(true & arg_1.x, false, true, false)), global1.a, !(!vec4<bool>(true, !arg_2.a.x, true, false)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = Struct_1(vec4<bool>(true, any(func_4(vec3<u32>(9408u, u_input.e, arg_1.d.x), func_2(), Struct_1(arg_2.a, 17773u, vec2<f32>(423f, -874f), vec4<u32>(arg_2.d.x, u_input.e, 0u, 1u)))), any(global1.a.wx), arg_2.d.x == _wgslsmith_mult_u32(~global1.d.x, global1.d.x)), ~arg_2.d.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(494f + -1766f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1699f, 2490f))))), 1469f), ~(~firstTrailingBit(~arg_2.d)));
    global0 = _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(ceil(arg_0.x))));
    var var_0 = arg_1;
    var var_1 = abs(vec2<i32>(u_input.b ^ -1i, _wgslsmith_div_i32(-36924i, -50877i)) >> (vec2<u32>(arg_2.b >> (u_input.e % 32u), ~31399u) % vec2<u32>(32u))) ^ reverseBits(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(7425i, 4338i, -8033i, u_input.a), vec4<i32>(u_input.c, u_input.a, u_input.d, -1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, -23173i), vec3<i32>(0i, -21798i, u_input.d))) ^ min(~vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, u_input.d)));
    var var_2 = arg_2.a.x;
    return Struct_1(select(vec4<bool>((global1.a.x || var_0.a.x) & (u_input.a <= var_1.x), var_0.a.x, all(select(arg_1.a.xz, var_0.a.yw, var_0.a.x)), all(vec4<bool>(false, arg_2.a.x, var_0.a.x, false))), !(!(!vec4<bool>(true, false, arg_2.a.x, global1.a.x))), !(true || !var_0.a.x)), ~var_0.b ^ ~global1.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.c, var_0.c)) * vec2<f32>(arg_1.c.x, arg_1.c.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, arg_1.c.x), vec2<f32>(arg_2.c.x, var_0.c.x), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.x, 798f))))), ~vec4<u32>(abs(~108615u), _wgslsmith_add_u32(u_input.e, 50747u), select(~var_0.b, _wgslsmith_dot_vec3_u32(global1.d.yzx, arg_1.d.xwy), false), firstTrailingBit(19876u)));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(432f, arg_2.c.x, arg_2.c.x, arg_1.c.x) + vec4<f32>(arg_2.c.x, 263f, 274f, -541f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-887f, 291f, arg_2.c.x, global1.c.x)))))), Struct_1(!vec4<bool>(arg_2.a.x, false, true, select(false, arg_1.a.x, false)), ~1u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-475f, arg_2.c.x)))))), select(_wgslsmith_add_vec4_u32(global1.d, global1.d), ~_wgslsmith_clamp_vec4_u32(global1.d, vec4<u32>(1u, global1.b, 8873u, 1u), vec4<u32>(13303u, arg_2.b, global1.d.x, 19508u)), !arg_2.a.x & func_1(vec4<f32>(437f, arg_2.c.x, -776f, 754f), arg_1, Struct_1(vec4<bool>(global1.a.x, global1.a.x, true, arg_2.a.x), global1.b, vec2<f32>(arg_2.c.x, 761f), vec4<u32>(79232u, 1u, 14169u, global1.d.x))).a.x)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.b, ~_wgslsmith_dot_vec2_u32(arg_1.d.xz, max(arg_1.d.yy, arg_1.d.xw))), 7u)]);
    let var_1 = vec4<bool>(any(!(!vec4<bool>(true, global1.a.x, var_0.a.x, var_0.a.x))), true, select(u_input.b, u_input.c, all(arg_2.a)) < select(_wgslsmith_mod_i32(1i, 23740i), firstLeadingBit(-u_input.d), all(func_4(vec3<u32>(arg_1.d.x, 1u, 27348u), arg_1.a.yy, Struct_1(arg_1.a, var_0.b, global1.c, global1.d)).wwy)), select(arg_1.a.x, arg_2.a.x, true));
    let var_2 = func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.x, var_0.c.x, -950f, var_0.c.x) * vec4<f32>(896f, -494f, -1084f, global1.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(633f, 703f, arg_1.c.x, arg_1.c.x) - vec4<f32>(var_0.c.x, global1.c.x, 493f, arg_2.c.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, arg_2.c.x, arg_2.c.x, -220f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-989f, var_0.c.x, -2412f, var_0.c.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(421f, global1.c.x, global1.c.x, -572f)))), select(!global1.a.x, false, true))), arg_1, global2[_wgslsmith_index_u32(var_0.b, 7u)]);
    global1 = func_1(vec4<f32>(arg_1.c.x, -1281f, var_2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1033f)), Struct_1(!global1.a, 4294967295u, global1.c, arg_2.d), global2[_wgslsmith_index_u32(~26178u, 7u)]);
    global2 = array<Struct_1, 7>();
    return StorageBuffer(_wgslsmith_clamp_vec3_u32(~vec3<u32>(~var_2.d.x, ~global1.b, ~4294967295u), vec3<u32>(20903u, global1.d.x, _wgslsmith_mod_u32(0u ^ arg_2.d.x, ~arg_2.d.x)), var_0.d.yzw), var_0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_div_i32(u_input.d, i32(-1i) * -u_input.c), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, -882f, 842f, 156f) * vec4<f32>(global1.c.x, -824f, global1.c.x, 731f))), global2[_wgslsmith_index_u32(u_input.e, 7u)], global2[_wgslsmith_index_u32(1u, 7u)]), func_1(vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(sign(global1.c.x)), _wgslsmith_f_op_f32(-1619f + -850f), _wgslsmith_f_op_f32(f32(-1f) * -1520f)), global2[_wgslsmith_index_u32(1u, 7u)], Struct_1(global1.a, ~(global1.b & 1u), global1.c, global1.d)));
}

