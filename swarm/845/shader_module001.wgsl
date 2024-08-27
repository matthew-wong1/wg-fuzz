struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(-35412i, 34797i, 0i, 30073i), vec4<i32>(-53530i, 26501i, -9557i, 78929i), vec4<i32>(25429i, i32(-2147483648), 1i, 2147483647i));

var<private> global1: vec3<bool>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-173f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(468f, 212f) * -389f), _wgslsmith_f_op_f32(min(523f, _wgslsmith_f_op_f32(f32(-1f) * -1736f))))), !(!(!global1.x)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -406f)) - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1700f))) + -639f))));
    return (firstTrailingBit(-9691i) >> (arg_0.x % 32u)) >= arg_2.x;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> i32 {
    var var_0 = arg_0;
    global0 = array<vec4<i32>, 3>();
    global0 = array<vec4<i32>, 3>();
    var var_1 = !vec2<bool>((true & !global1.x) & func_3(u_input.a << (u_input.a % vec3<u32>(32u)), any(vec3<bool>(true, true, arg_0.c)), u_input.c.xxz), global1.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(-759f, 1000f), -206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1044f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-500f + -1610f) + _wgslsmith_f_op_f32(floor(1154f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(816f, -1682f, -416f, _wgslsmith_f_op_f32(f32(-1f) * -262f)) - vec4<f32>(-858f, 133f, -716f, -427f))))));
    return reverseBits(_wgslsmith_div_i32(u_input.c.x, 1i));
}

fn func_1() -> u32 {
    var var_0 = -(~_wgslsmith_div_i32(func_2(Struct_1(vec3<u32>(0u, u_input.a.x, 4294967295u), u_input.a.x, global1.x, global1.zx), _wgslsmith_add_u32(3469u, 32722u), true), ~_wgslsmith_sub_i32(-52254i, u_input.c.x)));
    var var_1 = ~(~vec2<u32>(5015u, abs(u_input.a.x)));
    var_1 = u_input.a.zy;
    let var_2 = 1u;
    global1 = vec3<bool>(all(vec3<bool>(true, true, global1.x)), all(!select(vec2<bool>(global1.x, false), select(vec2<bool>(true, true), global1.yx, false), select(vec2<bool>(false, true), vec2<bool>(global1.x, global1.x), global1.xy))), global1.x);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    global1 = !vec3<bool>(true, true, global1.x);
    var var_1 = _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(-u_input.c.yy, _wgslsmith_sub_vec2_i32(vec2<i32>(~var_0, _wgslsmith_clamp_i32(-74196i, u_input.b.x, 2147483647i)), ~min(vec2<i32>(-1i, -1i), u_input.c.zx))), select(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b.xz, -u_input.c.xz), u_input.b.yx), max(abs(vec2<i32>(-47845i, -2147483647i)), vec2<i32>(~0i, 2147483647i)), global1.zx));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1346f, 227f, -256f))))), vec3<f32>(1f, 1f, 1f), !(!vec3<bool>(global1.x, false, true)))));
    var var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(11627u, ~u_input.a.x & u_input.a.x), vec2<u32>(32938u, ~func_1())) ^ select(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xz, func_3(firstLeadingBit(_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, u_input.a)), true, abs(firstTrailingBit(vec3<i32>(var_1.x, u_input.c.x, u_input.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(2344f - _wgslsmith_f_op_f32(var_2.x * -1247f)), firstTrailingBit(1u), max(vec4<u32>(~var_3.x, ~max(var_3.x, 0u), 0u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a.x, 0u)), ~vec2<u32>(u_input.a.x, 28322u))), abs(vec4<u32>(var_3.x, _wgslsmith_dot_vec2_u32(vec2<u32>(84314u, u_input.a.x), vec2<u32>(u_input.a.x, var_3.x)), u_input.a.x << (1u % 32u), var_3.x))), u_input.c.zw, vec2<f32>(1363f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1073f))))));
}

