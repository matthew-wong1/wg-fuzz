struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> u32 {
    let var_0 = !select(true, _wgslsmith_f_op_f32(select(-2219f, _wgslsmith_f_op_f32(abs(353f)), false || arg_0.x)) < global0.a.c.a.x, true);
    let var_1 = Struct_4(global0.a);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1925f))), 374f, _wgslsmith_div_f32(var_1.a.c.a.x, global0.a.c.a.x), global0.a.c.a.x);
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<bool>) -> Struct_3 {
    var var_0 = global0.a.c.d.x;
    var var_1 = func_2(arg_2.yx, 1u);
    var var_2 = -reverseBits(_wgslsmith_mult_vec3_i32(~(~vec3<i32>(-15252i, arg_0, arg_0)), _wgslsmith_mod_vec3_i32(-vec3<i32>(arg_0, 2009i, 1i), vec3<i32>(-2147483647i, -4338i, 1i))));
    let var_3 = Struct_4(global0.a);
    var var_4 = Struct_3(global0.a);
    return Struct_3(global0.a);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec2<bool>) -> Struct_4 {
    let var_0 = Struct_4(func_1(i32(-1i) * -30670i, vec4<f32>(func_1(-25869i, global0.a.c.a, !vec3<bool>(arg_0.a.c.c.x, true, arg_2.x)).a.c.a.x, _wgslsmith_div_f32(arg_0.a.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -404f)), global0.a.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1525f)))), !arg_0.a.c.c).a);
    let var_1 = -1238f;
    var var_2 = Struct_3(func_1(-1i, _wgslsmith_f_op_vec4_f32(-var_0.a.c.a), vec3<bool>(!global0.a.c.c.x, false, true)).a);
    var var_3 = true;
    var var_4 = min(_wgslsmith_div_i32(arg_0.a.c.b, _wgslsmith_clamp_i32(var_0.a.a, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(5577i, 1i, var_2.a.a, global0.a.a), vec4<i32>(arg_0.a.c.b, global0.a.b, 0i, 1i))), abs(~global0.a.a))), -_wgslsmith_div_i32(1i, _wgslsmith_sub_i32(1i, 31271i) & arg_0.a.a));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(func_1(1377i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(243f, -164f, global0.a.c.a.x, 645f))))), _wgslsmith_f_op_vec4_f32(select(global0.a.c.a, _wgslsmith_f_op_vec4_f32(-global0.a.c.a), vec4<bool>(global0.a.c.c.x, global0.a.c.c.x, false, global0.a.c.c.x))), !select(vec4<bool>(false, global0.a.c.c.x, global0.a.c.c.x, false), vec4<bool>(global0.a.c.c.x, false, true, false), vec4<bool>(true, true, true, global0.a.c.c.x)))), global0.a.c.c), global0.a.c.e.xx, vec2<bool>(all(vec3<bool>(global0.a.c.c.x || false, global0.a.c.c.x, false | global0.a.c.c.x)), true));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.a.c.a.xy)));
    var_1 = global0.a.c.a.wz;
    var var_2 = true;
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_3(func_1(i32(-1i) * -12290i, global0.a.c.a, vec3<bool>(true, true, true)), _wgslsmith_mod_vec2_u32(var_0.a.c.e.xy, _wgslsmith_div_vec2_u32(var_0.a.c.e.zz, vec2<u32>(global0.a.c.d.x, global0.a.c.d.x))), select(select(var_0.a.c.c.zx, var_0.a.c.c.xz, var_0.a.c.c.x), select(vec2<bool>(var_0.a.c.c.x, false), global0.a.c.c.zy, var_0.a.c.c.x), var_0.a.c.c.yz)).a.c.a * var_0.a.c.a), func_3(Struct_3(func_1(i32(-1i) * -2844i, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.a.c.a.x, var_1.x, -1470f, global0.a.c.a.x), vec4<f32>(-1032f, var_1.x, global0.a.c.a.x, global0.a.c.a.x))), select(global0.a.c.c, vec3<bool>(global0.a.c.c.x, true, false), global0.a.c.c.x)).a), ~(~(vec2<u32>(var_0.a.c.e.x, global0.a.c.d.x) | vec2<u32>(var_0.a.c.d.x, global0.a.c.e.x))), select(select(!global0.a.c.c.zx, global0.a.c.c.yy, true), vec2<bool>(any(vec2<bool>(true, global0.a.c.c.x)), true), var_0.a.c.c.x)).a.a, var_0.a.c.e);
}

