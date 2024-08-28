struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec3<bool>,
    d: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-326f, 896f);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> bool {
    let var_0 = Struct_1(arg_0.wzz, global0.x, _wgslsmith_f_op_f32(global0.x - 268f), arg_0.x == (_wgslsmith_f_op_f32(round(-361f)) < global0.x));
    return (-11592i << (~_wgslsmith_sub_u32(arg_1, min(4294967295u, 16065u)) % 32u)) <= -abs(_wgslsmith_mult_i32(0i << (arg_1 % 32u), firstTrailingBit(u_input.c)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-684f + arg_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-395f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)))));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(1000f * 417f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, global0.x))) + vec2<f32>(global0.x, arg_1)))), false && arg_0.a.x));
    let var_0 = u_input.a.x;
    var var_1 = global0.x;
    var var_2 = ~vec4<u32>(~u_input.d.x, ~min(~1u, var_0 | var_0), abs(_wgslsmith_div_u32(4294967295u, var_0)), var_0);
    return arg_0.a.yww;
}

fn func_1(arg_0: bool) -> Struct_5 {
    var var_0 = select(select(vec3<bool>(!func_2(vec4<bool>(arg_0, arg_0, arg_0, true), u_input.a.x), true, select(all(vec2<bool>(false, false)), arg_0, arg_0)), vec3<bool>(!(u_input.c >= u_input.b.x), all(vec4<bool>(false, arg_0, arg_0, true)), arg_0), select(select(!vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, arg_0, arg_0)), select(vec3<bool>(arg_0, false, arg_0), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), true), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, true, false))), func_2(select(vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, true, false), arg_0), u_input.a.x))), select(select(func_3(Struct_2(vec4<bool>(arg_0, true, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -296f)), !(!vec3<bool>(arg_0, true, true)), arg_0), !vec3<bool>(true, global0.x < global0.x, arg_0 && arg_0), arg_0), any(func_3(Struct_2(vec4<bool>(arg_0, false, false, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(150f, global0.x)))).yx));
    let var_1 = vec3<bool>(true, arg_0 & any(vec2<bool>(arg_0, true)), (~max(0i, u_input.c) | ~max(2147483647i, u_input.c)) < _wgslsmith_dot_vec3_i32(vec3<i32>(13548i ^ u_input.b.x, u_input.b.x | u_input.b.x, 2147483647i), vec3<i32>(firstTrailingBit(u_input.b.x), ~u_input.b.x, -1i)));
    var var_2 = u_input.b.xy;
    var_2 = -_wgslsmith_mult_vec2_i32(u_input.b.yz, min(firstTrailingBit(~u_input.b.zy), min(-vec2<i32>(u_input.b.x, 29390i), ~vec2<i32>(u_input.b.x, var_2.x))));
    let var_3 = Struct_2(select(select(select(vec4<bool>(var_1.x, true, var_0.x, true), vec4<bool>(false, false, false, false), select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(var_1.x, true, false, true), vec4<bool>(true, false, false, arg_0))), select(vec4<bool>(false, var_1.x, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0, var_1.x, var_1.x, true), false), true), select(select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(arg_0, true, false, false), vec4<bool>(false, var_1.x, var_1.x, true)), vec4<bool>(true, var_0.x, var_0.x, false), !vec4<bool>(false, true, false, var_1.x))), select(!(!vec4<bool>(var_0.x, false, false, true)), !select(vec4<bool>(var_1.x, var_0.x, arg_0, true), vec4<bool>(arg_0, true, false, false), vec4<bool>(var_1.x, false, false, true)), func_2(select(vec4<bool>(true, false, true, arg_0), vec4<bool>(var_1.x, var_1.x, arg_0, arg_0), true), ~1u)), !vec4<bool>(true, var_1.x, any(vec3<bool>(var_1.x, false, false)), false)));
    return Struct_5(Struct_1(!vec3<bool>(func_2(vec4<bool>(var_1.x, var_1.x, true, true), u_input.d.x), !arg_0, arg_0), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-134f, 118f))), 627f, any(var_0.yx)), false, abs(48633u) >> (~abs(u_input.d.x) % 32u));
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: Struct_1, arg_3: vec2<u32>) -> StorageBuffer {
    var var_0 = arg_1.c;
    var_0 = 4294967295u;
    var var_1 = u_input.c >= arg_0;
    var var_2 = arg_1.a.a;
    var var_3 = true;
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1056f, arg_1.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(574f * 593f) * _wgslsmith_f_op_f32(-arg_2.c))) - global0.x), vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1009f + global0.x) * arg_1.a.c) + _wgslsmith_f_op_f32(666f - _wgslsmith_div_f32(-1483f, -1583f))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x)))), arg_1.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.c, -538f, _wgslsmith_f_op_f32(-global0.x), 2210f) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(f32(-1f) * -103f), -1000f, arg_1.a.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.b, -799f, -379f, -535f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.b, arg_1.a.b, arg_2.c, global0.x))), vec4<bool>(var_2.x, true, false, false))))), 84069u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_sub_i32(-(22726i ^ _wgslsmith_add_i32(u_input.c, u_input.b.x)), ((u_input.b.x & 1i) | 1i) | -12334i), func_1(false), Struct_1(vec3<bool>(false, false, select(all(vec4<bool>(false, true, true, false)), false, any(vec3<bool>(false, false, true)))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), false), ~(~(~select(vec2<u32>(u_input.d.x, 17593u), vec2<u32>(u_input.d.x, u_input.d.x), false))));
}

