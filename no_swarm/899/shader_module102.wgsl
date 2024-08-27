struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(10353u, 1u), vec2<u32>(83432u, 17113u), vec2<u32>(8209u, 0u), vec2<u32>(30579u, 0u), vec2<u32>(4294967295u, 33001u), vec2<u32>(1u, 53925u), vec2<u32>(1u, 33529u), vec2<u32>(1u, 19637u), vec2<u32>(1u, 4294967295u));

var<private> global1: array<vec2<f32>, 32>;

var<private> global2: f32;

var<private> global3: array<f32, 14> = array<f32, 14>(-240f, -1000f, 272f, -766f, 1126f, 1011f, -2066f, -341f, 1000f, 1000f, 527f, -379f, 944f, 473f);

var<private> global4: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    var var_1 = 1000f;
    let var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-642f + -443f), _wgslsmith_div_f32(-105f, global3[_wgslsmith_index_u32(93880u, 14u)]), _wgslsmith_f_op_f32(ceil(arg_1.a.x)), _wgslsmith_f_op_f32(1047f - 335f)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(arg_0.x, 14u)]))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(892f, -1174f, true)))), var_0.a.x, _wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x))));
    var var_4 = -427f;
    return 0u;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(~func_3(u_input.c, Struct_1(arg_0.a)) ^ firstTrailingBit(_wgslsmith_div_u32(1u, u_input.c.x)), u_input.c.x), select(firstLeadingBit(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, 0u), vec2<u32>(4294967295u, u_input.c.x))), firstTrailingBit(min(~u_input.c.wz, u_input.c.zz)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(true, true))));
    let var_1 = vec3<bool>(true, true, true);
    let var_2 = _wgslsmith_dot_vec3_u32(u_input.c.xzx, firstTrailingBit(u_input.c.xxx)) ^ max(_wgslsmith_mod_u32(~0u, ~44435u), _wgslsmith_dot_vec4_u32(vec4<u32>(25229u, u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.c.yxy, u_input.c.xww), min(4294967295u, 4294967295u)), u_input.c));
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1245f))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(arg_1, arg_1), global3[_wgslsmith_index_u32(1u, 14u)]))));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_3.a))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(arg_0.a))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = vec3<bool>(!select(1000f <= arg_2.a.x, abs(arg_3) < arg_3, arg_0.x), true, true);
    let var_1 = ~(~u_input.c.x);
    var var_2 = -vec2<i32>(1i, arg_3);
    global4 = select(1u, 4294967295u, any(vec3<bool>(var_0.x, !any(vec4<bool>(false, var_0.x, false, true)), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_2.x, var_2.x, var_2.x, -1i)) > select(-1i, var_2.x, true))));
    global0 = array<vec2<u32>, 10>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a - vec3<f32>(arg_2.a.x, 2032f, -330f)) + vec3<f32>(1406f, -578f, -393f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.a * arg_2.a)), all(!vec3<bool>(false, arg_0.x, true))))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>, arg_3: f32) -> i32 {
    var var_0 = select(select(vec2<bool>(arg_2.x, any(vec3<bool>(arg_2.x, arg_2.x, arg_2.x))), select(select(vec2<bool>(true, true), select(arg_2.xw, vec2<bool>(false, arg_2.x), arg_2.xy), vec2<bool>(arg_2.x, true)), select(arg_2.yw, select(vec2<bool>(false, false), arg_2.wx, arg_2.x), !arg_2.wx), select(arg_2.zw, select(vec2<bool>(arg_2.x, arg_2.x), vec2<bool>(false, arg_2.x), true), arg_2.wz)), any(select(select(vec4<bool>(arg_2.x, arg_2.x, true, true), arg_2, arg_2), arg_2, arg_2))), vec2<bool>(!any(!arg_2), arg_2.x), func_4(select(!arg_2.xw, !arg_2.yy, vec2<bool>(arg_2.x, arg_2.x)), Struct_1(arg_0.a), func_4(vec2<bool>(arg_2.x, arg_2.x), func_4(vec2<bool>(arg_2.x, arg_2.x), Struct_1(vec3<f32>(arg_3, arg_0.a.x, -581f)), arg_0, u_input.b.x), arg_0, i32(-1i) * -27369i), u_input.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.zx) % 32u)).a.x <= _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-222f)), _wgslsmith_f_op_f32(round(arg_3))), 1408f)));
    return 2147483647i;
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-275f + _wgslsmith_f_op_f32(297f - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 14u)] + global3[_wgslsmith_index_u32(u_input.c.x, 14u)]))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1045f)) * arg_0.a.x))), -308f));
    var var_1 = u_input.b.x;
    let var_2 = vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(-firstLeadingBit(_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(61158i, u_input.b.x, -1i, u_input.b.x))), u_input.b), func_5(func_4(vec2<bool>(true, true), arg_0, Struct_1(_wgslsmith_f_op_vec3_f32(func_2(arg_0, 1713f))), u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -169f), !vec4<bool>(all(vec3<bool>(false, true, false)), u_input.c.x != u_input.c.x, true, true), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(739f, var_0.a.x), _wgslsmith_f_op_f32(sign(1f)), abs(0i) > u_input.a))), 1i);
    let var_3 = u_input.c.xwx;
    var var_4 = var_2.x;
    return _wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(~(~select(_wgslsmith_clamp_u32(0u, var_3.x, 79691u), abs(71451u), true)), 10u)], (~_wgslsmith_mod_vec2_u32(vec2<u32>(1994u, 4294967295u), vec2<u32>(0u, var_3.x)) >> (countOneBits(vec2<u32>(0u, var_3.x)) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_u32(countOneBits(~u_input.c.ww), abs(vec2<u32>(145u, u_input.c.x)) & var_3.zy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.xz;
    global4 = u_input.c.x ^ ~(u_input.c.x ^ ~(u_input.c.x << (u_input.c.x % 32u)));
    var var_1 = _wgslsmith_dot_vec2_u32(func_1(Struct_1(vec3<f32>(1000f, 893f, -1974f))) & (~select(u_input.c.wy, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], vec2<bool>(false, true)) ^ vec2<u32>(~u_input.c.x, u_input.c.x)), vec2<u32>(39453u, reverseBits((51881u & u_input.c.x) ^ 4294967295u)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-570f, 549f, 206f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(1u, 14u)], global3[_wgslsmith_index_u32(u_input.c.x, 14u)], -606f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], -1424f, 202f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(590f, -162f, global3[_wgslsmith_index_u32(4294967295u, 14u)]))), vec3<bool>(true, true, true))), vec3<bool>(true, true, u_input.b.x > var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, global3[_wgslsmith_index_u32(u_input.c.x, 14u)], -1427f, var_2.a.x) + vec4<f32>(909f, var_2.a.x, var_2.a.x, 446f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(708f, 792f, 343f, global3[_wgslsmith_index_u32(110079u, 14u)]) + vec4<f32>(-109f, var_2.a.x, var_2.a.x, 1457f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.x, global3[_wgslsmith_index_u32(4294967295u, 14u)], -248f, -697f), vec4<f32>(236f, var_2.a.x, global3[_wgslsmith_index_u32(0u, 14u)], global3[_wgslsmith_index_u32(0u, 14u)]))))))), u_input.c);
}

