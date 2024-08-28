struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_div_u32(u_input.a, (u_input.c & u_input.a) | max(u_input.c, 9130u)) < u_input.c);
    return _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2486i, abs(0i)), ~abs(vec2<i32>(-18050i, arg_0))), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, u_input.b, -2147483647i), vec3<i32>(arg_0, 2147483647i, -26955i)), select(vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(arg_0, -1i, -1i), vec3<bool>(var_0.a, true, true))), u_input.b)) & _wgslsmith_sub_vec2_i32(vec2<i32>(1i, _wgslsmith_div_i32(arg_0, 2147483647i)) << (u_input.d.xy % vec2<u32>(32u)), select(_wgslsmith_div_vec2_i32(max(vec2<i32>(arg_0, 2147483647i), vec2<i32>(u_input.b, -17558i)), vec2<i32>(arg_0, -1i) & vec2<i32>(u_input.b, u_input.b)), -vec2<i32>(-36379i, arg_0), select(vec2<bool>(true, global0.a), vec2<bool>(global0.a, true), true)));
}

fn func_4(arg_0: vec2<i32>) -> f32 {
    let var_0 = Struct_1(!all(!(!vec2<bool>(global0.a, global0.a))));
    var var_1 = ~select(arg_0, select(vec2<i32>(max(5838i, arg_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, u_input.b), arg_0)), select(arg_0, vec2<i32>(arg_0.x, arg_0.x), vec2<bool>(false, var_0.a)), vec2<bool>(true, u_input.d.x >= 9038u)), global0.a);
    let var_2 = Struct_1(var_0.a);
    global0 = Struct_1(false);
    var_1 = select(-vec2<i32>(u_input.b, 11121i), ~vec2<i32>(-17035i, 26392i), vec2<bool>(global0.a, false));
    return 2134f;
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_1(select(global0.a, global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(658f))) > _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1061f, 1523f)))));
    var_0 = Struct_1(!select(global0.a, any(select(vec3<bool>(var_0.a, false, true), vec3<bool>(true, true, global0.a), true)), true));
    var var_1 = vec2<f32>(1478f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(func_3(~u_input.b))))));
    let var_2 = Struct_1(var_0.a);
    var_0 = var_2;
    return vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(!(!all(select(vec4<bool>(false, global0.a, false, false), vec4<bool>(false, true, false, global0.a), false))));
    let var_1 = Struct_1(true);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -920f), _wgslsmith_f_op_f32(min(-343f, 858f))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-311f, 479f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2362f, 817f))))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -892f);
    var var_4 = Struct_1(any(vec2<bool>(!select(false, var_0.a, false), any(!vec4<bool>(false, var_0.a, var_1.a, false)))));
    return Struct_1(var_4.a && true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = Struct_1(!(!select(true, true, !global0.a)));
    let var_0 = all(vec4<bool>(func_1().a || global0.a, true, !(false && (15485u != u_input.a)), !any(select(vec2<bool>(global0.a, true), vec2<bool>(false, global0.a), false))));
    var var_1 = !select(global0.a, any(select(select(vec3<bool>(false, global0.a, var_0), vec3<bool>(global0.a, var_0, true), global0.a), select(vec3<bool>(false, global0.a, var_0), vec3<bool>(global0.a, global0.a, var_0), var_0), !vec3<bool>(false, global0.a, global0.a))), true);
    let var_2 = func_1();
    var var_3 = _wgslsmith_f_op_f32(1000f - 389f);
    global0 = func_1();
    let var_4 = _wgslsmith_f_op_f32(func_4(~vec2<i32>(max(u_input.b, 2147483647i), u_input.b << ((u_input.c >> (15380u % 32u)) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(29354i, 1347f, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_vec2_f32(func_2()).x)))), _wgslsmith_div_u32(max(~u_input.d.x, u_input.a & 51855u) & 0u, ~(~_wgslsmith_add_u32(u_input.c, 0u))));
}

