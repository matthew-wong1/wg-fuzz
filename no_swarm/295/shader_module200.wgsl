struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: u32 = 109945u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1() -> i32 {
    return -17482i;
}

fn func_3(arg_0: bool) -> u32 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(504f, global0.x, arg_0)))), _wgslsmith_f_op_f32(f32(-1f) * -1164f), arg_0))), global0.x);
    let var_0 = all(vec4<bool>(any(select(select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(true, false, arg_0, arg_0), true), vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(true, arg_0, arg_0, arg_0))), _wgslsmith_f_op_f32(abs(global0.x)) > -880f, true, true));
    var var_1 = countOneBits(vec4<i32>(-1i, abs(777i) >> (~_wgslsmith_dot_vec3_u32(u_input.e.wzw, vec3<u32>(u_input.b.x, u_input.e.x, 0u)) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, select(-2147483647i, -5358i, arg_0), 1i), vec3<i32>(1i, 1i, 1i)), _wgslsmith_mult_i32(-4726i, _wgslsmith_sub_i32(1i << (u_input.c.x % 32u), firstTrailingBit(50685i)))));
    let var_2 = max(var_1.x, func_1());
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-352f, -1308f) * vec2<f32>(_wgslsmith_f_op_f32(931f - global0.x), 1273f)))));
    return u_input.a.x;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = vec4<u32>(u_input.e.x | _wgslsmith_div_u32(1u, u_input.a.x), func_3(true), u_input.b.x, select(~u_input.d.x, 2288u, select(true, true, !any(vec2<bool>(false, false)))));
    return Struct_2(Struct_1(_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(59050i, -51918i), ~(-2147483647i)), func_1())), Struct_1(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(17769i, -1i, -64355i, -2147483647i), vec4<i32>(-22201i, -78872i, -30065i, -9681i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-222f + global0.x))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0))))) - global0.x), max(~var_0.x, ~abs(var_0.x)) ^ var_0.x, max(_wgslsmith_add_i32(2147483647i, min(abs(-12322i), -2147483647i)), -2147483647i));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> i32 {
    global1 = 1u;
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(-global0.x)), global0.x) - arg_0.c));
    let var_0 = vec4<f32>(-909f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1587f))));
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-590f, -1365f) + var_0.ww) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, -1696f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-748f, -122f)))))));
    var var_1 = firstLeadingBit(_wgslsmith_mult_vec3_i32(~vec3<i32>(arg_0.e, arg_0.a.a, -29618i), ~max(vec3<i32>(arg_0.b.a, arg_0.b.a, arg_0.b.a), vec3<i32>(arg_0.a.a, arg_0.e, arg_0.e))) & vec3<i32>(-1i, func_2(_wgslsmith_f_op_f32(883f * 743f)).e, ~func_1()));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec3<bool>(true, max(i32(-1i) * -1i, 52738i) < -func_1(), any(select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))))));
    var var_1 = -firstTrailingBit(max(firstTrailingBit(_wgslsmith_mod_i32(-1i, 2147483647i)), 1i));
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(615f, global0.x), vec2<f32>(-970f, _wgslsmith_f_op_f32(floor(1434f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1520f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-599f, global0.x), vec2<f32>(global0.x, global0.x), var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0.x))))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, -1065f), _wgslsmith_f_op_f32(min(792f, 1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -255f) + _wgslsmith_f_op_f32(global0.x - 984f)) + _wgslsmith_f_op_f32(729f + 440f))));
    var var_2 = func_4(func_2(_wgslsmith_f_op_f32(-global0.x)), u_input.a.x, 1u) >> (_wgslsmith_mod_u32(27726u, 4294967295u) % 32u);
    var var_3 = select(select(vec2<bool>(true, true), select(vec2<bool>(true, var_0), vec2<bool>(any(vec2<bool>(true, var_0)), all(vec4<bool>(true, var_0, var_0, var_0))), select(vec2<bool>(var_0, false), vec2<bool>(false, var_0), !vec2<bool>(var_0, true))), vec2<bool>(false, var_0)), select(vec2<bool>(true, true), vec2<bool>(all(!vec2<bool>(var_0, false)), var_0), vec2<bool>(true, !(!var_0))), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(-countOneBits(vec3<i32>(0i, 2147483647i, 1i)) ^ min(select(vec3<i32>(1i, -107669i, 2147483647i), vec3<i32>(2147483647i, -4749i, 31083i), var_3.x), vec3<i32>(3494i, -1i, 17412i))));
}

