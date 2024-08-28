struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: Struct_3,
    d: f32,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: bool,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<u32>) -> f32 {
    var var_0 = Struct_3(Struct_1(arg_1.a), arg_2.b);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(941f))))), select(vec2<bool>(var_0.a.a, true), vec2<bool>(false, arg_2.a.a), !(!(!vec2<bool>(false, var_0.a.a)))), Struct_3(arg_1, ~arg_2.b | _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(var_0.b, vec4<i32>(arg_2.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), _wgslsmith_sub_vec4_i32(var_0.b, vec4<i32>(28222i, 0i, arg_2.b.x, 8849i)), vec4<i32>(var_0.b.x, var_0.b.x, arg_2.b.x, 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-142f)))) + _wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -961f), -641f))), var_0.a);
    let var_2 = Struct_2(vec4<f32>(-1445f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d + var_1.a))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(255f - -1000f) * _wgslsmith_f_op_f32(max(var_1.a, -2933f))))), Struct_1(true), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1861f, _wgslsmith_f_op_f32(var_1.d * var_1.a), _wgslsmith_f_op_f32(390f + 1130f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, 751f, var_1.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, var_1.a, 161f) - vec3<f32>(-542f, 1000f, var_1.a)), vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.d, _wgslsmith_f_op_f32(-var_1.d), 447f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, var_1.d, var_1.d) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.d, var_1.d))), vec3<bool>(any(vec3<bool>(false, var_0.a.a, var_0.a.a)), var_1.b.x, arg_1.a)))));
    var_0 = arg_2;
    var var_3 = arg_2;
    return var_1.d;
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(11362u, Struct_1(true), Struct_3(Struct_1(false), vec4<i32>(22963i, 27117i, arg_0, -1i)), vec2<u32>(u_input.b.x, 4294967295u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 397f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(34113u, Struct_1(true), Struct_3(Struct_1(false), vec4<i32>(0i, 1i, arg_0, -1i)), vec2<u32>(101266u, u_input.a))))))), vec2<bool>(true, false | all(vec3<bool>(true, false, true))), Struct_3(Struct_1(false), select(~(~vec4<i32>(arg_0, 3199i, -2147483647i, arg_0)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1969i, arg_0, 2147483647i, 31965i), vec4<i32>(arg_0, arg_0, arg_0, -75746i), vec4<i32>(29001i, 2251i, -2147483647i, arg_0)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1096f), _wgslsmith_div_f32(1000f, -567f), select(true, false, true)))))), Struct_1(select(true, true, false)));
    let var_1 = 56454i >= var_0.c.b.x;
    var var_2 = var_0.b;
    var var_3 = _wgslsmith_f_op_f32(sign(var_0.a));
    var var_4 = Struct_4(-1000f, !(!var_0.b), Struct_3(Struct_1(u_input.a != u_input.b.x), ~(vec4<i32>(-781i, -1i, arg_0, -2147483647i) | -vec4<i32>(arg_0, arg_0, arg_0, 2147483647i))), -839f, Struct_1(all(!select(var_0.b, vec2<bool>(var_0.c.a.a, var_2.x), vec2<bool>(var_0.c.a.a, false)))));
    return u_input.a;
}

fn func_1() -> vec3<u32> {
    return ~vec3<u32>(u_input.a, u_input.b.x, func_2(10682i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_vec3_u32(u_input.b.ywx, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1277f, _wgslsmith_f_op_f32(select(1479f, -1044f, true)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(290f, 2195f, -1650f, -141f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(966f, 989f, -1021f, -1670f) - vec4<f32>(1439f, -348f, -355f, -108f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -1000f, 404f))), vec3<f32>(113f, 1000f, 779f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-382f, 163f, -293f) + _wgslsmith_div_vec3_f32(vec3<f32>(-811f, 131f, 1000f), vec3<f32>(-372f, -199f, -1089f))))), u_input.a, 9625i);
}

