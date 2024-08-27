struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(false, vec4<bool>(false, true, false, true), true), Struct_1(false, vec4<bool>(true, false, true, true), true), Struct_1(true, vec4<bool>(true, false, false, true), true), Struct_1(false, vec4<bool>(true, true, false, false), true), Struct_1(true, vec4<bool>(false, false, true, false), false), Struct_1(false, vec4<bool>(false, true, false, true), false), Struct_1(false, vec4<bool>(true, true, true, true), false), Struct_1(false, vec4<bool>(false, true, true, false), true), Struct_1(true, vec4<bool>(true, false, false, false), true), Struct_1(true, vec4<bool>(true, true, true, true), true), Struct_1(false, vec4<bool>(false, true, true, true), true), Struct_1(false, vec4<bool>(false, true, false, false), false), Struct_1(true, vec4<bool>(true, false, false, false), false));

var<private> global1: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(13757u, 57470u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 4573u, 1u), vec3<u32>(35360u, 1u, 21465u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(44133u, 74356u, 4294967295u));

var<private> global2: Struct_1 = Struct_1(false, vec4<bool>(true, true, false, false), false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = vec3<bool>(true, true, true);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(612f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, 191f), _wgslsmith_f_op_f32(f32(-1f) * -512f), false)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1551f, -1049f)) + _wgslsmith_f_op_f32(315f + 883f))))), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -123f));
    var var_2 = _wgslsmith_f_op_f32(409f * _wgslsmith_f_op_f32(trunc(1412f)));
    var var_3 = _wgslsmith_mult_i32(20756i, abs(u_input.a));
    let var_4 = Struct_2(_wgslsmith_div_i32(-2147483647i, ~arg_2), global0[_wgslsmith_index_u32(arg_3, 13u)], reverseBits(1u), _wgslsmith_sub_u32(arg_0.x, firstLeadingBit(4294967295u)));
    return 0u << (firstLeadingBit(abs(_wgslsmith_add_u32(arg_3 & 0u, 1u))) % 32u);
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~func_3(vec4<u32>(20390u, ~1u, 0u, 22428u), arg_0, _wgslsmith_dot_vec4_i32(max(vec4<i32>(7885i, -1i, u_input.a, u_input.a), u_input.b), u_input.b), 1u), 13u)];
    global1 = array<vec3<u32>, 6>();
    let var_1 = reverseBits(max(-42296i, select(_wgslsmith_div_i32(u_input.a, 0i), max(u_input.a, u_input.b.x), arg_0.x)));
    global2 = global0[_wgslsmith_index_u32(1u, 13u)];
    return Struct_1(-37104i > _wgslsmith_dot_vec2_i32(countOneBits(u_input.b.zx), vec2<i32>(var_1, -1721i)), select(vec4<bool>(85080i > -var_1, true, global2.c, true), global2.b, true), true);
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    global2 = func_2(!(!(!vec3<bool>(global2.b.x, false, global2.c))));
    global0 = array<Struct_1, 13>();
    var var_0 = func_2(select(global2.b.yxw, global2.b.zwz, false));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1555f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1000f, 1899f)), -822f, 2147483647i != arg_1)), -726f, _wgslsmith_div_f32(-1255f, -461f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-2811f, -1602f, -829f, _wgslsmith_f_op_f32(396f * -252f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(654f, 1000f, -925f, 557f), vec4<f32>(-1000f, -2062f, 1987f, -814f), false))))), global0[_wgslsmith_index_u32(1u, 13u)], Struct_2(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(72719i, -1i)), -854i << (1u % 32u), firstTrailingBit(arg_1)), Struct_1(true, global2.b, global2.b.x), 0u, ~_wgslsmith_mult_u32(98758u, 1u)), !((-arg_0 & _wgslsmith_mult_i32(-10229i, arg_1)) <= 0i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(419f * 196f), 252f, _wgslsmith_f_op_f32(trunc(354f))) + vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(415f, 750f, -2834f) * vec3<f32>(1000f, 1224f, 2156f)))));
    let var_2 = true;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(min(2147483647i, u_input.b.x), -22009i);
    var var_0 = Struct_2(u_input.a, func_2(vec3<bool>(true, true, all(select(vec4<bool>(true, global2.c, true, global2.b.x), vec4<bool>(global2.c, false, true, false), global2.b)))), 1u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(6141u, 57146u, 4294967295u), vec3<u32>(56167u, 46780u, 1u))), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b.yxx, vec3<i32>(_wgslsmith_clamp_i32(~u_input.a, var_0.a, ~(i32(-1i) * -2147483647i)), u_input.b.x & (u_input.a & (u_input.a | u_input.b.x)), _wgslsmith_dot_vec4_i32(u_input.b, select(~vec4<i32>(var_0.a, u_input.a, u_input.a, 2147483647i), u_input.b, global2.b.x))), u_input.a);
}

