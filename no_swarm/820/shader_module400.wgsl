struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_4 = Struct_4(1u, Struct_1(27623u, 21368i, -1i), 40235u);

var<private> global2: vec3<u32> = vec3<u32>(0u, 21190u, 0u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_5, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = firstLeadingBit(vec3<i32>(global1.b.b, global1.b.c, _wgslsmith_div_i32(global1.b.b >> (global0.b.a % 32u), 27127i))) << (abs(~vec3<u32>(~global1.b.a, ~global0.b.a, 1u)) % vec3<u32>(32u));
    let var_1 = global2.x;
    global1 = arg_2.a;
    var var_2 = 766f;
    var var_3 = select(select(!select(vec4<bool>(true, global0.c, false, global0.c), select(vec4<bool>(false, arg_2.b.x, global0.c, false), vec4<bool>(global0.c, false, true, true), global0.c), false), !vec4<bool>(all(arg_2.b.zx), arg_2.b.x || false, false, all(vec2<bool>(global0.c, false))), vec4<bool>((global1.b.b > u_input.b.x) || true, _wgslsmith_f_op_f32(arg_3.a.x - 691f) == _wgslsmith_f_op_f32(-354f + -259f), all(arg_2.b.xx), any(!arg_2.b))), !select(vec4<bool>(!global0.c, global0.c, true, true), select(!vec4<bool>(arg_2.b.x, arg_2.b.x, true, false), select(vec4<bool>(false, global0.c, false, true), vec4<bool>(true, false, arg_2.b.x, false), arg_2.b.x), true), ~u_input.c.x < u_input.c.x), !(!(true | (arg_2.b.x && arg_2.b.x))));
    return vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b.x))))), -1421f);
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.e, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.e), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.e, -1i), -u_input.b.yx))) < global0.b.c;
    global2 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec4<f32>(1220f, -976f, global0.a, global0.d.x), global0.d.zz), _wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(1i, 2147483647i, u_input.b.x), u_input.b), Struct_5(Struct_4(1u, Struct_1(global2.x, 47244i, 4849i), 14011u), vec3<bool>(global0.c, var_0, true), vec2<u32>(69977u, 5235u), global0.d, global0.d), Struct_2(vec4<f32>(-594f, 484f, 1819f, global0.a), global0.d.xx))), vec3<f32>(_wgslsmith_f_op_f32(152f + 411f), global0.d.x, global0.d.x))));
    let var_2 = ~(global1.a >> (4294967295u % 32u));
    var var_3 = _wgslsmith_add_vec4_u32(abs(vec4<u32>(4294967295u, 1u, max(global1.a ^ 14703u, ~var_2), u_input.d)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(25280u, 1u, 4294967295u, global0.b.a), vec4<u32>(global0.b.a, 1u, global0.b.a, u_input.d)) >> (select(abs(firstLeadingBit(vec4<u32>(global0.b.a, 0u, 1u, 19163u))), _wgslsmith_add_vec4_u32(vec4<u32>(30655u, 58012u, 1u, global0.b.a), vec4<u32>(0u, global2.x, 1u, 1u)) & firstLeadingBit(vec4<u32>(4294967295u, global1.c, global0.b.a, 1582u)), any(vec2<bool>(global0.c, var_0)) && global0.c) % vec4<u32>(32u)));
    return Struct_4(0u, global1.b, var_3.x);
}

fn func_1(arg_0: bool, arg_1: bool) -> i32 {
    var var_0 = Struct_4(global2.x, Struct_1(_wgslsmith_div_u32(global1.c, ~(~global2.x)), reverseBits(2147483647i) | _wgslsmith_clamp_i32(u_input.e, global1.b.b, -global0.b.b), -1i), _wgslsmith_mod_u32(global2.x, global0.b.a));
    global1 = func_2();
    let var_1 = 1i | _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.c, _wgslsmith_mod_i32(~global1.b.b, -2147483647i), 0i, -52553i), ~_wgslsmith_sub_vec4_i32(vec4<i32>(global0.b.b, -2147483647i, global0.b.c, global0.b.c), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global1.b.b, u_input.e, 2147483647i), vec4<i32>(var_0.b.c, global0.b.b, var_0.b.c, global1.b.b))));
    global0 = Struct_3(911f, var_0.b, arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1469f, global0.d.x, global0.d.x) - global0.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(208f, global0.a, global0.a)), false))))));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, min(16777u << (func_2().c % 32u), 4294967295u), _wgslsmith_div_u32(~u_input.c.x, ~_wgslsmith_mult_u32(0u, 0u))), firstLeadingBit(vec3<u32>(1u, 0u, reverseBits(u_input.a) << (15324u % 32u))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<i32>(firstTrailingBit(-min(13140i, global1.b.b)), -func_1(any(vec2<bool>(true, false)), all(vec3<bool>(false, global0.c, global0.c)))), u_input.b.zy, true);
    let var_1 = Struct_5(func_2(), vec3<bool>(true, global0.c, ~global0.b.a >= ~_wgslsmith_add_u32(1719u, 62394u)), global2.yy, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-498f, 127f, global0.a), global0.d)))))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1595f)), global0.a, _wgslsmith_f_op_f32(floor(-1000f)))), global0.d)));
    global1 = var_1.a;
    var var_2 = global0.b.a;
    var var_3 = var_1.e.x;
    global1 = func_2();
    global0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.d.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1995f * 469f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1751f + _wgslsmith_f_op_f32(-var_1.e.x)), global0.d.x)), func_2().b, true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-374f, _wgslsmith_f_op_f32(sign(var_1.d.x)), -574f))), global0.d));
    var_2 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, global0.d, global1.b.c, vec4<u32>(global2.x & ~(~4294967295u), abs(~(~var_1.a.b.a)), 9331u, 30527u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1695f, global0.d.x)) * _wgslsmith_f_op_f32(select(var_1.e.x, _wgslsmith_f_op_f32(-global0.d.x), any(var_1.b)))), _wgslsmith_div_f32(-1168f, global0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.d.x, global0.d.x), 402f)))));
}

