struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> vec3<u32> {
    let var_0 = global0.a.xxx;
    let var_1 = vec3<bool>(!(!(_wgslsmith_f_op_f32(global0.c.x * global0.c.x) > _wgslsmith_f_op_f32(667f * -1338f))), !all(vec3<bool>(true, true, true)), true);
    let var_2 = firstLeadingBit(~u_input.a.x);
    let var_3 = 185f;
    let var_4 = Struct_2(true);
    return ~_wgslsmith_div_vec3_u32(u_input.b.yzw, u_input.b.zxx);
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_sub_vec2_i32(global0.a.wx, vec2<i32>(_wgslsmith_clamp_i32(global0.a.x, select(global0.a.x, -1i, true), global0.a.x), 1i));
    let var_1 = arg_1;
    global0 = Struct_1(firstLeadingBit(global0.a), 0i, global0.c);
    var_0 = reverseBits(~select(global0.a.zy, vec2<i32>(-1i) * -global0.a.wx, !(!var_1.a)));
    var var_2 = ~(-reverseBits(vec4<i32>(0i & global0.a.x, global0.b, var_0.x, _wgslsmith_add_i32(15900i, -35380i))));
    return Struct_4(_wgslsmith_add_vec4_i32(~vec4<i32>(var_2.x & 29733i, _wgslsmith_div_i32(-1120i, 2147483647i), global0.a.x, var_0.x), vec4<i32>(-var_0.x, var_2.x, _wgslsmith_add_i32(global0.a.x, -20697i), var_0.x) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 3229u, 0u, 857u), _wgslsmith_sub_vec4_u32(u_input.b, u_input.b)) % vec4<u32>(32u))), arg_1, func_3(var_2.wxy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c.x))) - _wgslsmith_div_f32(global0.c.x, 1361f))), abs(var_2.wzx));
}

fn func_1() -> Struct_4 {
    let var_0 = func_2(604f, Struct_2(true));
    var var_1 = ~func_2(769f, var_0.b).c.x;
    var_1 = u_input.c.x;
    return Struct_4(firstTrailingBit(~var_0.a), func_2(_wgslsmith_f_op_f32(-global0.c.x), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), var_0.b).b).b, ~func_2(global0.c.x, Struct_2(var_0.b.a)).c, ~_wgslsmith_sub_vec3_i32(~vec3<i32>(5323i, global0.a.x, -2147483647i), var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = func_1();
    var var_2 = _wgslsmith_div_vec2_i32(abs(vec2<i32>(min(_wgslsmith_sub_i32(1i, -1i), 26634i), -32552i)), vec2<i32>(-1i, 5177i << (_wgslsmith_clamp_u32(~4294967295u, ~var_1.c.x, ~u_input.c.x) % 32u)));
    var_2 = global0.a.ww;
    let var_3 = Struct_2(true);
    let var_4 = vec4<bool>(true, false, true, func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.c.x, -1065f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1231f)), -765f)))), Struct_2(false)).b.a);
    let var_5 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1272f, _wgslsmith_div_f32(-351f, global0.c.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.x, 327f))))));
    var_2 = var_1.a.yx;
    let var_6 = -1299f;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.xz, ~abs(_wgslsmith_div_vec2_u32(~u_input.b.yw, ~var_1.c.xz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1230f, var_5, global0.c.x, var_5) + _wgslsmith_div_vec4_f32(global0.c, global0.c)))), vec2<i32>(countOneBits(_wgslsmith_mult_i32(-1i, 2147483647i) >> (~u_input.b.x % 32u)), ~(~var_1.a.x) | ((i32(-1i) * -34926i) ^ -var_1.a.x)), u_input.b.x | _wgslsmith_sub_u32(u_input.a.x, ~(~122175u)));
}

