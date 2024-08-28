struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: bool) -> vec2<f32> {
    let var_0 = (~_wgslsmith_clamp_u32(0u, 14800u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) & ~u_input.a.x) | u_input.a.x;
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    var var_1 = select(arg_2.zz, vec2<bool>(!(!arg_3 || true), (_wgslsmith_f_op_f32(round(-307f)) != _wgslsmith_f_op_f32(exp2(arg_1.a.a.x))) == arg_2.x), all(!select(vec4<bool>(false, arg_2.x, arg_2.x, false), select(vec4<bool>(arg_2.x, false, arg_3, arg_3), arg_2, true), true)));
    let var_2 = 49368u;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_1.a.a, vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), arg_1.a.a.x)))), arg_0.yw);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1767f, 1108f) * vec2<f32>(1000f, -343f)))))));
    var_0 = Struct_1(vec2<f32>(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-511f, _wgslsmith_f_op_f32(var_0.a.x - 897f)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(var_0.a, _wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(628f, var_0.a.x, 1182f, -139f), Struct_3(Struct_1(vec2<f32>(-1000f, -1000f)), vec2<i32>(global0[_wgslsmith_index_u32(15953u, 3u)], -2147483647i)), vec4<bool>(false, false, true, false), false))))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)), vec2<f32>(682f, -1120f), true)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1113f, var_0.a.x) * _wgslsmith_f_op_vec2_f32(-var_0.a))), !(4294967295u > u_input.a.x) & true)));
    global0 = array<i32, 3>();
    return Struct_2(select(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), u_input.c.x <= 17139i), vec4<bool>(any(vec2<bool>(true, true)), true, select(true, var_0.a.x == 884f, true), -1i <= u_input.b.x), true), min(abs(-vec3<i32>(u_input.b.x, global0[_wgslsmith_index_u32(64482u, 3u)], 10588i)) | _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b.x, 10722i, -2147483647i), vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 3u)], -13204i)), ~(-vec3<i32>(u_input.c.x, u_input.c.x, u_input.b.x))), firstLeadingBit(_wgslsmith_mod_i32(-51212i, select(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], -1i, false) ^ -2147483647i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    let var_0 = func_2();
    var var_1 = vec2<i32>(var_0.c, _wgslsmith_sub_i32(u_input.b.x, ~u_input.c.x));
    global0 = array<i32, 3>();
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(max(4294967295u, 4294967295u), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-1169f + _wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(-1072f, 1000f)), Struct_1(vec2<f32>(-1358f, -533f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-124f - 586f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-203f + 541f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(509f + 1151f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-180f))))), 603f, u_input.c.x);
}

