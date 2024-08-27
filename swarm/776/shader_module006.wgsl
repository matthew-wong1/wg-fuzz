struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true);

var<private> global1: Struct_4;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_4) -> f32 {
    global1 = Struct_4(select(!(!(!vec2<bool>(global1.b.c.x, arg_1.a.x))), select(vec2<bool>(true, true), vec2<bool>(false, any(vec3<bool>(false, true, false))), global0.a), global1.b.c.wz), Struct_2(_wgslsmith_f_op_f32(-1743f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1328f + -933f) + _wgslsmith_f_op_f32(f32(-1f) * -833f))), global1.b.b, global1.b.c));
    let var_0 = 1i;
    var var_1 = arg_1;
    global0 = Struct_3(true);
    let var_2 = _wgslsmith_mod_vec2_i32(abs(arg_2.b.b), arg_2.b.b);
    return global1.b.a;
}

fn func_2(arg_0: i32) -> Struct_4 {
    global1 = Struct_4(vec2<bool>(true, true), Struct_2(_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.d, u_input.d, u_input.e), countOneBits(vec3<u32>(4294967295u, 64108u, 1838u))), Struct_1(select(global1.b.c.wwy, global1.b.c.yzx, true), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-451f, global1.b.a))), -289f), Struct_4(vec2<bool>(global0.a, global1.a.x), global1.b))), global1.b.b, vec4<bool>(false || any(global1.b.c.zw), false, global0.a, true)));
    let var_0 = Struct_4(select(!global1.b.c.yx, global1.a, select(global1.a, vec2<bool>(global0.a, any(global1.b.c.xy)), false)), Struct_2(global1.b.a, -vec2<i32>(global1.b.b.x & global1.b.b.x, -arg_0), global1.b.c));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a + 341f) - _wgslsmith_f_op_f32(max(-374f, var_0.b.a))), global1.b.a)));
    var var_2 = _wgslsmith_f_op_f32(trunc(1103f));
    global0 = Struct_3(!all(vec4<bool>(true, true, any(vec4<bool>(var_0.b.c.x, var_0.a.x, global1.b.c.x, false)), 16614u == u_input.d)));
    return Struct_4(global1.a, Struct_2(_wgslsmith_div_f32(-915f, _wgslsmith_f_op_f32(step(-1185f, var_1.x))), vec2<i32>(~global1.b.b.x, countOneBits(global1.b.b.x) ^ -2147483647i), select(var_0.b.c, select(var_0.b.c, select(var_0.b.c, vec4<bool>(false, var_0.a.x, true, var_0.b.c.x), global1.b.c.x), all(vec3<bool>(false, false, true))), !vec4<bool>(true, var_0.a.x, global0.a, global1.b.c.x))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global1 = func_2(-55921i);
    let var_0 = select(vec4<bool>(all(global1.b.c), global1.a.x, any(select(select(global1.b.c, global1.b.c, global1.b.c), select(vec4<bool>(global1.a.x, global1.b.c.x, false, true), vec4<bool>(global1.a.x, global0.a, global1.b.c.x, global1.a.x), global1.a.x), true)), all(global1.a)), !vec4<bool>(true, !global1.b.c.x & !global1.b.c.x, !(!global1.a.x), func_2(u_input.a << (u_input.e % 32u)).a.x), false);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1319f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.a - 233f)))))));
    var_1 = global1.b.a;
    var var_2 = -2147483647i;
    return Struct_1(select(global1.b.c.wyy, select(!global1.b.c.yyz, select(vec3<bool>(global0.a, false, false), select(var_0.yxw, global1.b.c.xyx, global1.b.c.x), vec3<bool>(false, true, global1.a.x)), arg_0.x > countOneBits(2147483647i)), all(vec2<bool>(var_0.x, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.a, 441f) * vec2<f32>(global1.b.a, -1000f)), vec2<f32>(1178f, global1.b.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-569f, global1.b.a)) * vec2<f32>(global1.b.a, global1.b.a)), var_0.wz)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1443f, 389f), vec2<f32>(global1.b.a, global1.b.a))))))), _wgslsmith_f_op_f32(func_3(abs(~(vec3<u32>(22043u, 0u, u_input.d) >> (vec3<u32>(1u, u_input.d, 0u) % vec3<u32>(32u)))), Struct_1(!vec3<bool>(global1.b.c.x, true, global1.b.c.x), vec2<f32>(_wgslsmith_f_op_f32(-global1.b.a), global1.b.a), _wgslsmith_f_op_f32(ceil(-1701f))), func_2(global1.b.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1((abs(global1.b.b) | _wgslsmith_sub_vec2_i32(vec2<i32>(global1.b.b.x, global1.b.b.x), -global1.b.b)) & vec2<i32>(i32(-1i) * -u_input.b, ~0i));
    let var_1 = ~4294967295u;
    var var_2 = -_wgslsmith_add_vec3_i32(countOneBits(-vec3<i32>(u_input.b, u_input.b, u_input.b)) & _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.c, 2147483647i, u_input.b), vec3<i32>(global1.b.b.x, 2147483647i, u_input.a)), vec3<i32>(abs(u_input.c ^ 22684i), -(~(-8081i)), select(1i, 37279i, global1.b.b.x < 2147483647i)));
    global1 = Struct_4(!(!(!(!vec2<bool>(global1.b.c.x, global0.a)))), func_2(~var_2.x).b);
    var_2 = -_wgslsmith_div_vec3_i32(vec3<i32>(global1.b.b.x << (~57065u % 32u), _wgslsmith_sub_i32(~var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_2.x, 2147483647i, global1.b.b.x), vec4<i32>(u_input.b, -2147483647i, var_2.x, -10747i))), -1i), reverseBits(vec3<i32>(global1.b.b.x, global1.b.b.x, u_input.b) & -vec3<i32>(69953i, u_input.a, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-abs(~0i), abs(var_2.x)), ~vec2<u32>(1u, var_1), vec2<i32>(-1i) * -vec2<i32>(55621i, -8647i), _wgslsmith_f_op_f32(max(713f, var_0.b.x)), vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(global1.b.b.x, global1.b.b.x, var_2.x, var_2.x) & vec4<i32>(16315i, u_input.a, 15288i, 12227i), min(vec4<i32>(-2147483647i, -45966i, u_input.c, u_input.b), vec4<i32>(var_2.x, 54399i, -1940i, 29225i))));
}

