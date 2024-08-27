struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-1789f, 208f), vec3<f32>(-974f, 1036f, -1255f));

var<private> global2: vec2<bool>;

var<private> global3: Struct_1 = Struct_1(vec2<f32>(1090f, 1419f), vec3<f32>(1000f, -528f, 601f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, global3.b.x)) + _wgslsmith_f_op_vec2_f32(max(arg_0.b.xy, vec2<f32>(-347f, 1146f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(2088f, -1171f))), vec2<bool>(true, -129f < global3.a.x))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(571f, 691f) + -136f), arg_0.b.x)), global1.b);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.b.yy))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(937f, -1078f, -891f))), arg_0.b, global2.x))));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_add_u32(max(1996u, u_input.a.x), 25680u)), 5u)];
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a * var_1.a))), var_0.b);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(var_0.a)), global3.b);
    return u_input.a;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_u32(~func_3(Struct_1(global3.a, vec3<f32>(global1.b.x, -626f, global1.b.x))) | vec4<u32>(~42532u, 49062u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), firstTrailingBit(3077u ^ u_input.a.x)), _wgslsmith_add_vec4_u32(u_input.a, _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u & u_input.a.x))));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global1.b.x)), _wgslsmith_div_f32(global1.b.x, global1.b.x)))), global3.b.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(321f, global3.b.x, global3.a.x))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.b) - global1.b)))));
    var var_2 = u_input.b;
    var var_3 = _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(~1u, 19880u)), reverseBits(~min(u_input.a.wy, _wgslsmith_mult_vec2_u32(u_input.a.yw, u_input.a.yw))));
    var var_4 = Struct_1(var_1.a, vec3<f32>(_wgslsmith_f_op_f32(round(-672f)), _wgslsmith_f_op_f32(-var_1.b.x), global1.a.x));
    return global0[_wgslsmith_index_u32(4294967295u, 5u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1157f - global1.a.x), -799f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-479f, arg_2))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.xx))), vec3<f32>(global1.a.x, 1705f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(215f, -1000f))));
    var var_1 = func_2();
    let var_2 = reverseBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.a), firstLeadingBit(vec4<u32>(73184u, 42187u, 41214u, u_input.a.x))), u_input.a.x, ~(~u_input.a.x)));
    let var_3 = _wgslsmith_mult_vec3_u32(u_input.a.wxz, func_3(arg_0).yyx) | (select(abs(u_input.a.xyw) << (u_input.a.yww % vec3<u32>(32u)), select(u_input.a.yww, ~vec3<u32>(4294967295u, var_2, 53379u), true), any(vec3<bool>(global2.x, global2.x, global2.x))) ^ vec3<u32>(~select(4294967295u, 1u, true), ~_wgslsmith_dot_vec2_u32(vec2<u32>(14846u, u_input.a.x), vec2<u32>(3733u, 4294967295u)), ~abs(4294967295u)));
    let var_4 = all(select(vec4<bool>(global2.x, false, global2.x, select(global2.x, global2.x, all(vec4<bool>(false, true, true, false)))), vec4<bool>(true, !global2.x, ~var_3.x > 771u, true), all(vec2<bool>(any(vec4<bool>(true, false, true, false)), true))));
    return global0[_wgslsmith_index_u32(1u, 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(global0[_wgslsmith_index_u32(~u_input.a.x & 61245u, 5u)], global0[_wgslsmith_index_u32(~u_input.a.x, 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -479f)))));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.a.zxw, ~(~(~u_input.a.wzy))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(49201u, 0u, 70336u)), select(~u_input.a.xzz, (u_input.a.zwy ^ vec3<u32>(14370u, 83275u, 34165u)) | func_3(Struct_1(vec2<f32>(global1.a.x, global3.a.x), vec3<f32>(1785f, 309f, 718f))).wyw, select(true, all(vec3<bool>(global2.x, false, false)), 214f == global1.a.x)))), 5u)];
    var var_0 = _wgslsmith_f_op_f32(-global3.a.x);
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(global1.b.yx))))), vec3<f32>(_wgslsmith_f_op_f32(-global3.b.x), global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(351f, 308f)) + -1144f)));
    global1 = Struct_1(vec2<f32>(-420f, _wgslsmith_f_op_f32(max(-520f, global1.b.x))), global1.b);
    var var_1 = true | global2.x;
    let var_2 = min(_wgslsmith_div_u32(~24553u, ~(firstLeadingBit(10419u) & (u_input.a.x | 10762u))), max(abs(u_input.a.x), ~_wgslsmith_add_u32(25739u, u_input.a.x)));
    var var_3 = func_1(func_1(func_1(global0[_wgslsmith_index_u32(~var_2, 5u)], func_2(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1116f - 498f), _wgslsmith_f_op_f32(-global1.b.x))), func_1(global0[_wgslsmith_index_u32(firstLeadingBit(~var_2), 5u)], global0[_wgslsmith_index_u32(firstLeadingBit(14294u), 5u)], _wgslsmith_div_f32(global3.a.x, 393f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -468f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) + _wgslsmith_f_op_f32(global3.b.x * global3.b.x))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.a + global3.b.xz) + _wgslsmith_f_op_vec2_f32(max(global1.b.zy, global3.b.zy)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1757f, 699f, -923f)), vec3<f32>(_wgslsmith_div_f32(global3.a.x, 1000f), _wgslsmith_f_op_f32(floor(534f)), _wgslsmith_f_op_f32(step(552f, -470f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(select(~vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i), reverseBits(vec4<i32>(-2147483647i, u_input.b, u_input.b, -2147483647i)), u_input.b >= 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.b, -1i, u_input.b), vec4<i32>(u_input.b, 1i, u_input.b, 32220i)) ^ -vec4<i32>(u_input.b, 2147483647i, -26652i, u_input.b), select(vec4<i32>(0i, -1i, u_input.b, u_input.b), vec4<i32>(u_input.b, -2147483647i, 0i, -2147483647i), !global2.x)) & vec4<i32>(-(~7943i), abs(30815i), 22717i, _wgslsmith_mod_i32(-u_input.b, i32(-1i) * -1i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x + var_3.a.x) + func_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(var_2, var_2)), 5u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 0u), 5u)], _wgslsmith_f_op_f32(-global3.b.x)).b.x))));
}

