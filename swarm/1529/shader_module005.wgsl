struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: bool) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1723f, _wgslsmith_f_op_f32(step(arg_2.c, arg_2.c))))), _wgslsmith_f_op_f32(round(-1529f)))), _wgslsmith_f_op_f32(-866f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)), arg_2.c)), arg_2.c);
    var var_1 = arg_2;
    var var_2 = Struct_1(var_1.a.a);
    var_2 = Struct_1(arg_0.a);
    var_2 = var_1.a;
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = 0u;
    var var_1 = arg_1;
    let var_2 = !vec3<bool>(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(889f, -337f)), _wgslsmith_f_op_f32(func_3(Struct_1(true), vec2<i32>(32317i, 9504i), Struct_3(Struct_1(true), vec4<u32>(u_input.e.x, 45564u, 1u, u_input.e.x), 269f), arg_0)))) != -1581f, true);
    let var_3 = false;
    var var_4 = !var_2;
    return select(select(select(!vec3<bool>(true, false, arg_0), select(var_2, select(var_2, var_2, vec3<bool>(var_3, var_4.x, var_3)), arg_0), select(vec3<bool>(arg_1.a, var_4.x, var_2.x), var_2, var_2.x)), select(select(!vec3<bool>(var_4.x, false, arg_1.a), var_2, true), vec3<bool>(var_2.x, true, false), vec3<bool>(select(true, var_4.x, true), 2147483647i < u_input.d.x, false)), select(select(!vec3<bool>(true, var_1.a, var_3), select(vec3<bool>(var_1.a, true, false), vec3<bool>(var_3, true, true), arg_0), true), var_2, select(select(vec3<bool>(false, var_4.x, var_3), var_2, arg_1.a), select(vec3<bool>(var_3, arg_1.a, true), vec3<bool>(true, var_1.a, true), vec3<bool>(var_3, arg_1.a, var_3)), !var_2))), select(var_2, !select(vec3<bool>(true, var_3, var_1.a), vec3<bool>(true, var_3, arg_0), all(vec3<bool>(true, true, false))), select(vec3<bool>(arg_0, true, true), vec3<bool>(true, true, u_input.e.x >= u_input.e.x), vec3<bool>(true, true, true))), vec3<bool>(true, true && ((u_input.e.x & u_input.e.x) > (u_input.e.x | u_input.e.x)), any(var_2)));
}

fn func_1() -> StorageBuffer {
    var var_0 = any(!select(func_2(all(vec2<bool>(true, true)), Struct_1(false)), !func_2(false, Struct_1(false)), true));
    var_0 = false;
    var_0 = all(select(vec4<bool>(any(vec3<bool>(true, true, true)), -2147483647i <= _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 14079i, u_input.a), vec3<i32>(u_input.b, 2147483647i, -172i)), false, true), vec4<bool>(any(vec4<bool>(false, false, true, false)), func_2(false, Struct_1(false)).x & func_2(true, Struct_1(true)).x, _wgslsmith_f_op_f32(f32(-1f) * -1680f) >= _wgslsmith_f_op_f32(floor(1189f)), true), any(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(false, true, true, true)))));
    let var_1 = ~vec4<i32>(max(u_input.a, -u_input.c | _wgslsmith_sub_i32(-2147483647i, -3503i)), ~u_input.a, 1i, ~0i);
    let var_2 = u_input.d.zx;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-316f, -453f, 1906f, 229f) * vec4<f32>(145f, -712f, -1000f, 875f))), vec4<f32>(_wgslsmith_f_op_f32(min(-1415f, -450f)), _wgslsmith_f_op_f32(f32(-1f) * -500f), _wgslsmith_f_op_f32(step(219f, 505f)), 218f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1377f, 1645f, 1067f, -398f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-551f, -1899f, -1000f, -704f), vec4<f32>(1393f, -1710f, -404f, -1234f), vec4<bool>(false, false, false, true))))))), -26106i <= (-u_input.a >> (1u % 32u)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-895f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1457f, -597f)) * -298f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1574f, -1000f) - _wgslsmith_f_op_f32(313f * -1220f))) - vec3<f32>(1767f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - -1745f), _wgslsmith_div_f32(2304f, -1485f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-801f, -192f) * _wgslsmith_f_op_f32(floor(1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = false;
    let var_1 = abs(~_wgslsmith_div_vec4_i32(-vec4<i32>(33815i, -1i, u_input.a, 21145i), -vec4<i32>(-4179i, 44304i, u_input.b, u_input.a) << (~vec4<u32>(u_input.e.x, 54951u, 15051u, 41759u) % vec4<u32>(32u))));
    var_0 = false;
    var_0 = true;
    let x = u_input.a;
    s_output = func_1();
}

