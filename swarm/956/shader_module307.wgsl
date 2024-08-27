struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<f32>(-325f, 683f, -301f, -647f)), 25541i, 343f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_2(global1.a, _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, u_input.d.x) & select(abs(vec2<i32>(6679i, u_input.c)), u_input.d.zy, global0.zy), _wgslsmith_sub_vec2_i32(u_input.d.xx, reverseBits(_wgslsmith_mult_vec2_i32(u_input.d.zz, vec2<i32>(27479i, 0i))))), global1.c);
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(global1.b, ~(~global1.b)), vec2<i32>(~select(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(64467i, 11771i), vec2<i32>(var_0.b, u_input.c)), true), -_wgslsmith_mult_i32(min(global1.b, global1.b), firstLeadingBit(var_0.b))));
    global0 = vec3<bool>(u_input.a.x >= u_input.a.x, true, u_input.a.x < 10287u);
    var_1 = ~u_input.d.xy;
    global1 = Struct_2(global1.a, ~_wgslsmith_div_i32(~_wgslsmith_sub_i32(-3308i, -24531i), _wgslsmith_div_i32(2147483647i >> (u_input.a.x % 32u), -14487i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(303f * _wgslsmith_f_op_f32(global1.c - var_0.c)) * _wgslsmith_f_op_f32(-global1.c)))));
    return _wgslsmith_div_vec2_f32(global1.a.a.ww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, -508f) - vec2<f32>(global1.a.a.x, var_0.c))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = firstTrailingBit(-abs(~(~u_input.b.xz)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(756f, _wgslsmith_div_f32(global1.a.a.x, global1.a.a.x)), _wgslsmith_f_op_vec2_f32(func_3()))) + global1.a.a.zz);
    global0 = select(!(!(!select(vec3<bool>(global0.x, true, true), vec3<bool>(arg_0, false, global0.x), vec3<bool>(arg_0, false, arg_0)))), !(!select(!vec3<bool>(arg_0, global0.x, arg_0), !vec3<bool>(global0.x, true, global0.x), arg_0)), vec3<bool>(any(vec4<bool>(arg_0, !arg_0, any(vec2<bool>(global0.x, arg_0)), !global0.x)), global0.x, arg_0));
    var var_2 = vec4<bool>(!any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, arg_0), vec3<bool>(global0.x, arg_0, false))) & any(select(global0.yy, select(vec2<bool>(true, true), vec2<bool>(global0.x, arg_0), true), select(global0.zz, vec2<bool>(true, global0.x), arg_0))), !(!all(vec2<bool>(false, global0.x))), arg_0, !((_wgslsmith_sub_i32(-2147483647i, var_0.x) < u_input.b.x) == global0.x));
    var var_3 = global1.a.a.zxw;
    return Struct_2(global1.a, _wgslsmith_add_i32(abs(-var_0.x), -global1.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(662f))))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = global1.a;
    global1 = func_2(-1i >= u_input.b.x);
    let var_1 = Struct_3(Struct_2(func_2(true).a, _wgslsmith_sub_i32(-5671i, i32(-1i) * -38488i), -1385f), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(global1.c - -2656f), global1.c, _wgslsmith_div_f32(global1.c, global1.a.a.x), -900f)), -(~global1.b), _wgslsmith_f_op_f32(-var_0.a.x)), 0i);
    var var_2 = u_input.a.x | _wgslsmith_div_u32(1u, 4408u);
    var var_3 = u_input.a.zz;
    return func_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global1.a.a.yz);
    let var_1 = 1u;
    var var_2 = func_1(vec2<bool>(true, global0.x));
    global1 = Struct_2(Struct_1(var_2.a.a), global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1422f + var_2.c) + var_0.x));
    var var_3 = func_2(global0.x);
    let var_4 = !vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-291f)) * 1846f) >= 1792f, false, !(628f > var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(22349i, reverseBits(u_input.b.yz));
}

