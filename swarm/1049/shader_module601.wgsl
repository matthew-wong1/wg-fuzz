struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = Struct_1(global0.a);
    let var_1 = Struct_2(vec3<u32>(_wgslsmith_mult_u32(~4294967295u, 61230u), ~(~abs(49645u)), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(var_0.a.x, global0.a.x), 4294967295u)), Struct_1(global0.a));
    let var_2 = vec3<f32>(-422f, _wgslsmith_f_op_f32(f32(-1f) * -519f), _wgslsmith_f_op_f32(round(438f)));
    var var_3 = abs(_wgslsmith_sub_u32(u_input.d.x >> (~_wgslsmith_div_u32(u_input.b, 0u) % 32u), u_input.e.x));
    var var_4 = var_1.b.a.x;
    return all(vec3<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), !(false | (var_2.x > var_2.x))));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: u32) -> vec3<i32> {
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec3_i32(arg_2, -(~vec3<i32>(2147483647i, -2147483647i, arg_2.x))));
    global0 = Struct_1(~(~((vec3<u32>(global0.a.x, 12519u, 15213u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) >> ((u_input.e | vec3<u32>(73929u, 21293u, arg_3)) % vec3<u32>(32u)))));
    var_0 = -(~(arg_2.x >> ((~u_input.d.x & _wgslsmith_mod_u32(global0.a.x, global0.a.x)) % 32u)));
    var var_1 = any(vec2<bool>(func_3() | !any(vec2<bool>(false, true)), true));
    let var_2 = Struct_1(vec3<u32>(~(global0.a.x >> (_wgslsmith_sub_u32(u_input.a, 78994u) % 32u)), arg_3, _wgslsmith_add_u32(u_input.a, global0.a.x)));
    return vec3<i32>(u_input.c, -1i, _wgslsmith_sub_i32(max(_wgslsmith_div_i32(max(-32501i, -7004i), i32(-1i) * -32158i), ~_wgslsmith_div_i32(u_input.c, u_input.c)), select(abs(_wgslsmith_mod_i32(arg_2.x, -2147483647i)), -25395i, any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))))));
}

fn func_4(arg_0: vec3<i32>) -> i32 {
    var var_0 = 0u;
    return arg_0.x;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_clamp_vec3_i32(-select(vec3<i32>(47102i, -35796i, u_input.c), vec3<i32>(3168i, u_input.c, u_input.c), false), func_2(_wgslsmith_f_op_f32(-555f - 1168f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-333f, -233f, -1000f), vec3<f32>(-251f, -1499f, -715f))), min(vec3<i32>(u_input.c, u_input.c, -49513i), vec3<i32>(u_input.c, -1i, u_input.c)), select(1u, global0.a.x, true)), func_2(-816f, _wgslsmith_div_vec3_f32(vec3<f32>(1605f, 573f, -395f), vec3<f32>(-1553f, 1829f, 1688f)), -vec3<i32>(0i, u_input.c, u_input.c), u_input.b))) >= ~u_input.c;
    var var_1 = Struct_2(~abs(~u_input.e | vec3<u32>(global0.a.x, u_input.e.x, u_input.a)), Struct_1(u_input.d.yzx));
    var var_2 = 585f;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(!(!vec4<bool>(true, true, true, any(vec2<bool>(false, true)))));
    global0 = Struct_1(_wgslsmith_add_vec3_u32(~firstTrailingBit(u_input.e), vec3<u32>(4294967295u & u_input.a, u_input.d.x, ~_wgslsmith_add_u32(global0.a.x, 0u))));
    global0 = func_1(!vec4<bool>(true, false, all(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), true));
    global0 = func_1(vec4<bool>(true & (-5800i <= u_input.c), true, (u_input.c ^ 1i) <= _wgslsmith_div_i32(u_input.c, u_input.c), !(!any(vec3<bool>(true, false, true)))));
    var var_0 = Struct_3(Struct_1(~vec3<u32>(select(0u, 0u, false), _wgslsmith_dot_vec3_u32(u_input.d.xwx, u_input.d.wzx), u_input.b)), ~vec4<i32>(-40555i, -u_input.c << (~13937u % 32u), max(u_input.c << (1u % 32u), ~29995i), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 2147483647i, 9078i, u_input.c), vec4<i32>(-2147483647i, u_input.c, u_input.c, -219i))));
    let var_1 = _wgslsmith_div_vec2_i32(var_0.b.yx, vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, -5330i), ~var_0.b.zxy), u_input.c));
    let var_2 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(192f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(365f)))), true))), abs(u_input.c), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(520f, -205f)))), _wgslsmith_f_op_f32(-322f - _wgslsmith_f_op_f32(ceil(-777f))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1224f - -1049f) * _wgslsmith_f_op_f32(f32(-1f) * -1548f)) - _wgslsmith_f_op_f32(-614f + -1460f))), -_wgslsmith_mult_i32(func_4(var_0.b.wzy >> (var_0.a.a % vec3<u32>(32u))), -368i), vec3<i32>(2147483647i, -abs(abs(47554i)), 2147483647i));
}

