struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32> = vec4<f32>(-810f, -1057f, 1734f, 430f);

var<private> global2: f32;

var<private> global3: array<Struct_1, 16>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = countOneBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, 9550u), firstLeadingBit(4294967295u), ~u_input.d), firstLeadingBit(abs(u_input.e))), u_input.e.x));
    let var_1 = Struct_1(true, vec4<f32>(1441f, 1000f, arg_1.d.x, _wgslsmith_div_f32(-679f, _wgslsmith_f_op_f32(global1.x + global1.x))), true, arg_0.d, -_wgslsmith_clamp_vec4_i32(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(8365i, arg_0.e.x, global0.e.x, 0i), vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.c.x))), min(_wgslsmith_add_vec4_i32(global0.e, vec4<i32>(u_input.b.x, arg_0.e.x, u_input.b.x, arg_1.e.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.e.x, arg_0.e.x, global0.e.x, 18751i), arg_0.e)), global0.e));
    var var_2 = Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1.b, vec4<f32>(arg_0.d.x, arg_1.d.x, 1046f, 547f), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, 264f, var_1.d.x, arg_0.d.x) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-997f, var_1.d.x, 1210f, arg_0.b.x))))))), !(!any(vec3<bool>(global0.c, false, true))) || true, _wgslsmith_f_op_vec3_f32(-var_1.d), var_1.e);
    var var_3 = Struct_1(false, global0.b, !global0.c, _wgslsmith_f_op_vec3_f32(select(arg_1.b.yyz, var_2.b.xyz, true)), min(var_1.e, max(max(select(arg_1.e, var_1.e, var_1.c), var_1.e), _wgslsmith_sub_vec4_i32(-arg_1.e, vec4<i32>(-24925i, arg_0.e.x, -2147483647i, -795i)))));
    var var_4 = _wgslsmith_sub_vec4_u32(~vec4<u32>(17510u, min(u_input.e.x, 65204u), u_input.e.x, ~u_input.d), vec4<u32>(max(~4294967295u, ~u_input.d), 0u, _wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(136392u, u_input.a.x), u_input.e.zz)), max(~u_input.e.x, 1u))) << (firstLeadingBit(~vec4<u32>(1u, _wgslsmith_mult_u32(60726u, u_input.d), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.e.x), u_input.a), u_input.e.x ^ 1u)) % vec4<u32>(32u));
    return arg_0.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<i32> {
    var var_0 = select(49904u, _wgslsmith_mod_u32(4294967295u, ~1u), false);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-477f, 1f), arg_0.d.x, false)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(~arg_1.x, 16u)], arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b.x)) + _wgslsmith_f_op_f32(arg_0.d.x - global1.x))) * -1346f));
    let var_1 = arg_0;
    var var_2 = 1u;
    var_2 = u_input.e.x;
    return reverseBits(_wgslsmith_div_vec4_i32(global0.e, reverseBits(firstLeadingBit(vec4<i32>(-21753i, u_input.b.x, 0i, -60524i)))) << (select(~vec4<u32>(0u, arg_1.x, 0u, 37950u), vec4<u32>(abs(0u), ~42040u, 74317u, u_input.e.x), true) % vec4<u32>(32u)));
}

fn func_1() -> Struct_1 {
    let var_0 = global1.xy;
    return Struct_1(all(vec2<bool>(global0.c, global0.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)), false, _wgslsmith_f_op_vec3_f32(global0.d * vec3<f32>(_wgslsmith_div_f32(global0.d.x, -524f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1514f, 398f)), global0.b.x)), ~func_2(global3[_wgslsmith_index_u32(u_input.d >> (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, 8875u, u_input.a.x)) % 32u), 16u)], _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e.x, u_input.d), ~vec2<u32>(2224u, u_input.a.x), vec2<u32>(1u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global3 = array<Struct_1, 16>();
    global2 = _wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-471f * -686f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1336f)))))));
    let var_2 = func_1();
    let var_3 = func_1();
    var var_4 = func_1();
    var var_5 = func_1();
    var var_6 = Struct_1(var_5.a, var_3.b, !(!global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b.yyx)), _wgslsmith_add_vec4_i32(~var_4.e, vec4<i32>(~77237i, u_input.c.x, ~var_4.e.x, var_3.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

