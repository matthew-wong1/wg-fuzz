struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: f32 = -1551f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> f32 {
    return _wgslsmith_f_op_f32(max(global0.x, 321f));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(abs(701f));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -340f);
    var var_1 = arg_0;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(func_3(true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1009f)), _wgslsmith_f_op_f32(arg_0.a - arg_0.a)))), global0.x, -1196f);
    global1 = -134f;
    return Struct_3(select(vec4<bool>(any(vec4<bool>(true, true, true, false)), !any(vec4<bool>(false, false, true, false)), all(vec2<bool>(false, true)), true), !vec4<bool>(false, all(vec2<bool>(false, true)), true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.xyw)))), ~u_input.b.yy);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_3) -> bool {
    return any(!arg_0.zwy);
}

fn func_1() -> vec3<f32> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1790f, 1000f, 101f, global0.x) * vec4<f32>(1244f, global0.x, -1194f, global0.x))))))), vec4<f32>(2189f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - 1074f), -409f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(773f)), _wgslsmith_f_op_f32(floor(global0.x))))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1115f))))));
    let var_1 = func_4(vec4<bool>(false, false, u_input.c.x > u_input.c.x, u_input.a == _wgslsmith_sub_i32(u_input.a, i32(-1i) * -2147483647i)), _wgslsmith_div_vec4_u32(u_input.b, abs(~u_input.b >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u), vec4<u32>(0u, u_input.b.x, 23532u, 30229u)) % vec4<u32>(32u)))), func_2(Struct_1(global0.x), vec2<i32>(1i, _wgslsmith_mod_i32(u_input.a, u_input.a | u_input.a))));
    let var_2 = global0.x;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))), -195f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(-1000f, var_0.x)) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1577f, 590f), _wgslsmith_f_op_f32(-global0.x), false))), _wgslsmith_f_op_f32(var_0.x + var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1147f));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true)) + 667f)), global0.x)));
    return vec3<f32>(1405f, var_3.a, -815f);
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    var_0 = arg_0.b.x;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), -1000f);
    var var_2 = !(!any(func_2(Struct_1(global0.x), vec2<i32>(0i, -17614i)).a.yyz));
    var var_3 = _wgslsmith_f_op_vec2_f32(step(global0.zx, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1051f) * _wgslsmith_f_op_f32(select(1044f, global0.x, false))), var_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.zz * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-832f, global0.x), vec2<f32>(var_1.x, -1080f))))), select((-15002i != u_input.a) && (u_input.b.x >= arg_0.c.x), arg_0.a.x, 567f > _wgslsmith_f_op_f32(-arg_0.b.x))))));
    return func_2(Struct_1(_wgslsmith_div_f32(730f, _wgslsmith_f_op_f32(-1493f + global0.x))), vec2<i32>(u_input.a, 18369i));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<u32>) -> StorageBuffer {
    let var_0 = (_wgslsmith_div_u32(u_input.c.x, ~u_input.c.x) ^ ~func_5(func_5(arg_0)).c.x) ^ ~u_input.b.x;
    var var_1 = arg_1;
    var_1 = Struct_1(963f);
    global0 = vec4<f32>(func_5(func_2(Struct_1(_wgslsmith_f_op_f32(floor(143f))), abs(-arg_2.yy))).b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a)) + global0.x))), arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))));
    let var_2 = !arg_0.a.wyw;
    return StorageBuffer(vec4<i32>(arg_2.x, _wgslsmith_mod_i32(-2147483647i, -2147483647i), 0i, -21105i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1235f) + arg_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -560f) + _wgslsmith_f_op_f32(sign(1114f)))), _wgslsmith_f_op_f32(global0.x * 599f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -100f))))));
    let var_1 = !select(vec2<bool>(any(vec3<bool>(true, true, true)), (0u << (u_input.b.x % 32u)) > u_input.b.x), vec2<bool>(true, true), !(!(-2212f <= var_0.x)));
    let var_2 = vec4<bool>(var_0.x != global0.x, var_1.x && var_1.x, true, (u_input.b.x < ~_wgslsmith_sub_u32(u_input.b.x, 12359u)) | any(select(vec2<bool>(true, var_1.x), !var_1, !var_1)));
    global1 = 1000f;
    let var_3 = ~abs(0u);
    global1 = 1000f;
    let x = u_input.a;
    s_output = func_6(func_5(Struct_3(!(!vec4<bool>(true, var_2.x, false, var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())), _wgslsmith_div_vec2_u32(~vec2<u32>(15750u, u_input.b.x), ~vec2<u32>(var_3, var_3)))), Struct_1(-963f), ~_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, u_input.a), vec3<i32>(u_input.a, 65171i, u_input.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 19455i), vec2<i32>(u_input.a, -2147483647i)), 3936i << (u_input.b.x % 32u)), vec3<i32>(-1i) * -vec3<i32>(1i, 2147483647i, u_input.a)), ~(~(~(~u_input.b.yyx))));
}

