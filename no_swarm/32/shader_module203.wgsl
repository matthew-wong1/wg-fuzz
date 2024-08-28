struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_2(vec4<u32>(~abs(_wgslsmith_add_u32(16075u, arg_2.x)), abs(arg_2.x), arg_2.x, _wgslsmith_mult_u32(arg_2.x, _wgslsmith_add_u32(~16861u, ~arg_2.x))), Struct_1(4294967295u), Struct_1(1u));
    var var_1 = Struct_1(0u);
    let var_2 = vec2<bool>(false, true);
    var var_3 = Struct_3(var_0, u_input.b.x);
    var var_4 = Struct_1(var_0.c.a);
    return Struct_1(39764u);
}

fn func_3(arg_0: vec2<bool>) -> bool {
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool, arg_3: f32) -> Struct_2 {
    var var_0 = ~arg_1.a.a.a.xw;
    var var_1 = arg_0;
    let var_2 = Struct_3(arg_1.a.a, _wgslsmith_add_i32(~(-1i), abs(arg_1.a.b)));
    var var_3 = _wgslsmith_add_vec2_i32(u_input.a.zz, _wgslsmith_div_vec2_i32(vec2<i32>(~4440i, -3880i) >> (vec2<u32>(var_1.a, 4294967295u) % vec2<u32>(32u)), vec2<i32>(reverseBits(_wgslsmith_mod_i32(1i, -2147483647i)), arg_1.a.b)));
    var var_4 = 2058f;
    return Struct_2(~var_2.a.a, arg_0, arg_0);
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = func_4(func_2(any(vec2<bool>(true, true)), -1845f, vec4<u32>(1u, 1u, 1u, 1u)), Struct_4(Struct_3(Struct_2(vec4<u32>(1u, 1u, 1u, 1u), Struct_1(0u), Struct_1(112789u)), 22239i)), all(vec4<bool>(false, func_3(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), -u_input.a.x == 1i, true | any(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1082f * -1389f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))));
    var var_1 = select(select(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), var_0.c.a > ~4294967295u), vec4<bool>(true, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true))), select(true, true, false), -222f == _wgslsmith_f_op_f32(trunc(-2529f)))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, any(vec3<bool>(false, true, false)), true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), true)), vec4<bool>(false, !all(vec3<bool>(false, false, false)), true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true))), true)), false);
    var_1 = vec4<bool>(true, func_3(!var_1.xz) | true, -988f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(511f)) * _wgslsmith_f_op_f32(f32(-1f) * -825f))), true);
    let var_2 = 1u ^ firstTrailingBit(~firstTrailingBit(~var_0.b.a));
    let var_3 = (u_input.a.x <= _wgslsmith_dot_vec3_i32(vec3<i32>(~arg_0, _wgslsmith_add_i32(arg_0, arg_0), -u_input.b.x), firstLeadingBit(_wgslsmith_mod_vec3_i32(u_input.a, u_input.a)))) | all(vec4<bool>(true, select(!var_1.x, false & var_1.x, var_1.x), true, true));
    return Struct_3(var_0, 17962i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(min(u_input.b.x, -76339i >> (1u % 32u)));
    var var_1 = Struct_1(var_0.a.b.a);
    let var_2 = any(vec2<bool>(any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1358f, -403f), vec2<f32>(-346f, 1831f), vec2<bool>(true, false)))), vec2<f32>(_wgslsmith_f_op_f32(1073f * 1000f), _wgslsmith_f_op_f32(-187f * 1000f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(317f, -624f), vec2<f32>(1528f, 1235f))), vec2<f32>(912f, -785f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1261f, -547f)), vec2<f32>(-1453f, -1137f), vec2<bool>(var_2, var_2))))));
    let var_4 = var_0.a;
    var var_5 = Struct_1(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(~1i)));
}

