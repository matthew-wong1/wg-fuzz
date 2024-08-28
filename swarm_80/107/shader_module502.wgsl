struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: i32) -> f32 {
    var var_0 = !((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(-1000f + global0.b.x)) != arg_2.b.x) & false);
    var var_1 = _wgslsmith_add_i32(u_input.d & arg_0, 31003i ^ (~firstTrailingBit(2147483647i) | arg_3));
    var var_2 = (_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-8363i, 15931i), vec2<i32>(-42110i, arg_0) >> ((u_input.b & vec2<u32>(u_input.b.x, 832u)) % vec2<u32>(32u))) << (0u % 32u)) >> (_wgslsmith_div_u32(u_input.b.x, ~14586u) % 32u);
    let var_3 = 1061f;
    var_0 = false;
    return 1000f;
}

fn func_2() -> vec2<bool> {
    var var_0 = u_input.c;
    var var_1 = -1i;
    global0 = Struct_2(global0.b.x, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(max(-527f, global0.a))), -826f), global0.b), vec2<bool>(global0.d, !any(select(vec2<bool>(global0.c.x, global0.d), global0.c, false))), false);
    global0 = Struct_2(_wgslsmith_f_op_f32(global0.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(abs(1i), vec3<i32>(u_input.d, var_0.x, u_input.a), Struct_2(1231f, vec2<f32>(-951f, global0.a), vec2<bool>(false, true), true), -1095i)), global0.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b) * vec2<f32>(_wgslsmith_f_op_f32(max(-1998f, 101f)), _wgslsmith_f_op_f32(-global0.a)))), global0.c, global0.d);
    var var_2 = global0.c;
    return global0.c;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(floor(global0.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-987f, global0.a)))) - _wgslsmith_f_op_vec2_f32(global0.b - vec2<f32>(global0.a, global0.a))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global0.b)))))), func_2(), global0.c.x);
    global0 = Struct_2(_wgslsmith_div_f32(var_0.a, var_0.b.x), var_0.b, select(select(!func_2(), !global0.c, func_2()), select(var_0.c, vec2<bool>(true, true), (1i != u_input.d) && global0.d), true), !(!any(vec2<bool>(true, true))));
    let var_1 = Struct_2(_wgslsmith_div_f32(-462f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(466f * -145f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-594f, 1391f)) - var_0.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b + global0.b) + var_0.b), var_0.c, true);
    let var_2 = Struct_1(~vec3<u32>(~(~1u), _wgslsmith_clamp_u32(u_input.b.x, 4294967295u, 406u), firstTrailingBit(u_input.b.x)));
    var var_3 = var_0;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-u_input.a, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -15155i, -9239i), vec3<i32>(-862i, -22370i, u_input.d)), _wgslsmith_sub_vec3_i32(u_input.c, u_input.c))), -vec2<i32>(~u_input.d, ~(-1i))), u_input.c.zz ^ reverseBits(-u_input.c.yz << (u_input.b % vec2<u32>(32u))));
    global0 = func_1();
    var var_1 = Struct_1(~abs(~(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))));
    var_1 = Struct_1(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b.x + -762f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(countOneBits(var_0.x), select(u_input.c, u_input.c, true), Struct_2(global0.b.x, vec2<f32>(global0.b.x, -983f), global0.c, global0.d), -25255i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -345f) + global0.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1().b.x - -1666f) + global0.a), global0.a)), global0.a);
}

