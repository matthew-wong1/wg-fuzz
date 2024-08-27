struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(abs(-621f));
    var var_1 = arg_1.d;
    let var_2 = vec3<bool>(arg_2, u_input.b >= 0i, !global0.x && !(!arg_2 & true));
    var var_3 = Struct_1(1u);
    let var_4 = Struct_4(Struct_2(true, var_1.a), _wgslsmith_clamp_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(1i, arg_1.a.x), vec2<i32>(37183i, arg_1.a.x)), abs(-vec2<i32>(2147483647i, -2228i)), arg_1.c.xz) << (vec2<u32>(25537u, max(127504u, _wgslsmith_sub_u32(arg_1.d.a, u_input.a))) % vec2<u32>(32u)), arg_1.d);
    return 76760u;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = global0.x;
    var_0 = global0.x;
    global0 = select(arg_0, !vec2<bool>(!(1u <= u_input.a), global0.x), !vec2<bool>(!(!arg_0.x), global0.x && (-36541i == u_input.b)));
    let var_1 = Struct_2(true, ~func_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1531f), 912f)), Struct_3(vec3<i32>(-2147483647i, u_input.b, -35254i), -883f, vec3<i32>(u_input.b, u_input.b, u_input.b), Struct_1(u_input.a), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 1061f), vec2<f32>(-1064f, 374f)))), true));
    let var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1427f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1852f * -393f) + 634f) * _wgslsmith_f_op_f32(round(-487f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(185f, 395f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-113f, -403f))))))))));
    return Struct_1(u_input.a);
}

fn func_1(arg_0: Struct_4, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = ~arg_0.a.b;
    let var_1 = abs(~78314u);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1199f, 318f, 362f) * vec3<f32>(1572f, -378f, -351f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-1477f * -129f), -381f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-432f, _wgslsmith_f_op_f32(step(-392f, 596f)), 1617f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-929f, 1522f, 628f), vec3<f32>(-1874f, -937f, -1000f)))))), vec3<f32>(-2450f, -601f, 387f)));
    var var_3 = !(!(!select(!vec3<bool>(global0.x, global0.x, arg_0.a.a), vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, arg_0.a.a, true))));
    let var_4 = var_2.x;
    return func_2(!var_3.yy);
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = true;
    var var_1 = Struct_1(u_input.a | 0u);
    global0 = vec2<bool>(arg_2.a.a, false);
    var var_2 = 0u;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-447f * 903f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(658f + -347f)))), -1174f, _wgslsmith_div_f32(193f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-556f - 565f)))));
    return func_2(select(select(vec2<bool>(u_input.a <= 4294967295u, arg_2.a.a), vec2<bool>(true, false), false), vec2<bool>(_wgslsmith_div_u32(1u, u_input.a) >= func_2(vec2<bool>(true, arg_2.a.a)).a, all(vec3<bool>(true, true, true))), select(select(vec2<bool>(global0.x, false), !vec2<bool>(global0.x, var_0), select(vec2<bool>(arg_2.a.a, global0.x), vec2<bool>(var_0, var_0), true)), vec2<bool>(var_0, true), vec2<bool>(true, true))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global0.x;
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-826f, _wgslsmith_f_op_f32(2678f * _wgslsmith_f_op_f32(491f - 976f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -693f), 823f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + 2354f)))))), -1103f, _wgslsmith_f_op_f32(f32(-1f) * -695f));
    var var_2 = Struct_2(!(!all(vec4<bool>(false, global0.x, true, false)) & all(select(vec2<bool>(global0.x, true), vec2<bool>(true, false), global0.x))), 35144u);
    global0 = select(!select(select(select(vec2<bool>(false, true), vec2<bool>(false, var_2.a), global0.x), vec2<bool>(global0.x, var_2.a), !vec2<bool>(true, global0.x)), vec2<bool>(!var_2.a, false), global0.x), !vec2<bool>(!(!var_2.a), !global0.x), select(select(vec2<bool>(true && global0.x, true), vec2<bool>(var_2.a, true), _wgslsmith_dot_vec2_u32(vec2<u32>(18261u, 1u), vec2<u32>(3824u, var_2.b)) <= var_2.b), select(select(select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), false), vec2<bool>(false, true), select(vec2<bool>(true, var_2.a), vec2<bool>(false, global0.x), vec2<bool>(false, var_2.a))), select(vec2<bool>(global0.x, true), select(vec2<bool>(var_2.a, false), vec2<bool>(global0.x, global0.x), vec2<bool>(true, true)), select(vec2<bool>(global0.x, false), vec2<bool>(false, true), var_2.a)), select(select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, false), true), select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), true), !global0.x)), select(!(!vec2<bool>(global0.x, false)), vec2<bool>(global0.x, any(vec3<bool>(global0.x, var_2.a, global0.x))), all(select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(var_2.a, global0.x, true, true), true)))));
    var var_3 = Struct_2(select(false, false, true) | false, ~_wgslsmith_sub_u32(func_1(Struct_4(Struct_2(var_2.a, var_2.b), vec2<i32>(u_input.b, -2147483647i), Struct_1(u_input.a)), select(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, 0i, -41280i), vec3<bool>(var_2.a, true, true))).a, 4294967295u));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_2(global0.x, ~_wgslsmith_add_u32(~u_input.a, ~1u)), vec2<i32>(u_input.b, ~(-(~u_input.b))), func_5(func_4(9208i, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b) << (vec4<u32>(u_input.a, 4294967295u, 4294967295u, 0u) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(u_input.b, -10797i, 42130i, -2157i))), Struct_4(Struct_2(false, u_input.a), vec2<i32>(u_input.b, u_input.b), func_1(Struct_4(Struct_2(true, 4294967295u), vec2<i32>(u_input.b, u_input.b), Struct_1(u_input.a)), vec3<i32>(u_input.b, u_input.b, u_input.b))))));
    let var_1 = ~var_0.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-377f, 105f, -510f), vec3<f32>(-1970f, -255f, -134f), vec3<bool>(true, false, global0.x)))))), u_input.b, firstTrailingBit(~0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -164f), -818f) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-958f, -233f)))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(646f)), -928f)))), u_input.a);
}

