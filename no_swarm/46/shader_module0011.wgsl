struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1032f * -214f), 425f))))))));
    var var_1 = ~_wgslsmith_sub_u32(~_wgslsmith_mod_u32(countOneBits(u_input.a.x), u_input.a.x), arg_0.a);
    var var_2 = arg_0.c;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) - -534f), var_0);
    let var_4 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -691f), _wgslsmith_f_op_f32(floor(-363f))))), 817f, -1000f)));
    return _wgslsmith_div_f32(943f, _wgslsmith_f_op_f32(-arg_0.b));
}

fn func_2(arg_0: vec3<i32>) -> bool {
    var var_0 = Struct_1(u_input.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(229f + _wgslsmith_f_op_f32(func_3(Struct_1(u_input.a.x, -1715f, vec3<bool>(true, true, true)))))), 730f)), select(vec3<bool>(true, true, all(vec2<bool>(true, true))), vec3<bool>(any(vec3<bool>(true, false, true)), true, true), any(vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(func_3(Struct_1(u_input.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - var_0.b) * _wgslsmith_div_f32(-971f, 118f)))), var_0.c)));
    var var_2 = Struct_1(var_0.a, var_0.b, vec3<bool>(all(select(var_0.c.zx, var_0.c.yy, select(var_0.c.yy, var_0.c.xy, vec2<bool>(var_0.c.x, var_0.c.x)))), (true & (true || var_0.c.x)) | var_0.c.x, !(true | (var_0.b <= var_0.b))));
    var var_3 = select(select(vec3<bool>(!(-1126f > var_0.b), true, any(select(vec4<bool>(false, false, var_2.c.x, true), vec4<bool>(false, false, var_0.c.x, var_0.c.x), vec4<bool>(false, var_2.c.x, false, true)))), vec3<bool>(true | (false & var_2.c.x), any(vec2<bool>(var_2.c.x, var_2.c.x)), !all(vec2<bool>(var_0.c.x, false))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, var_0.c.x), var_0.c), true), select(select(vec3<bool>(true, var_2.c.x, false), var_2.c, var_2.c), !vec3<bool>(var_0.c.x, var_0.c.x, false), vec3<bool>(var_0.c.x, true, var_2.c.x)), vec3<bool>(any(var_2.c), true, !var_0.c.x))), select(select(select(var_0.c, select(var_2.c, var_2.c, var_2.c.x), true), !select(vec3<bool>(true, false, var_2.c.x), vec3<bool>(var_2.c.x, false, false), var_2.c.x), true), vec3<bool>(true, true, true), var_0.c.x), var_2.c.x);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b))));
    return !all(vec4<bool>(any(!var_0.c), false, true, all(!var_2.c.yx)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>) -> vec3<bool> {
    var var_0 = arg_1.x;
    let var_1 = u_input.c;
    let var_2 = Struct_1(u_input.a.x, arg_1.x, !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    let var_3 = _wgslsmith_f_op_f32(ceil(-566f));
    var var_4 = !vec4<bool>(var_2.c.x, var_2.c.x, true, true);
    return !vec3<bool>(any(!(!vec4<bool>(true, var_2.c.x, false, false))), func_2(~vec3<i32>(14959i, 2147483647i, var_1.x)), var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-21893i, 2147483647i, 61627i), u_input.c);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1215f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(652f, -643f))))), -495f));
    let var_2 = ~u_input.b;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(697f)) - var_1.x);
    let var_4 = Struct_1(reverseBits(_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(~u_input.a.x, 24205u, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -393f) - _wgslsmith_f_op_f32(-var_3))), select(select(vec3<bool>(false, u_input.a.x > u_input.a.x, any(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true), vec3<bool>(any(vec3<bool>(false, true, true)), false, any(vec3<bool>(true, true, false)))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(483f, 899f, var_1.x, 517f) * vec4<f32>(182f, var_1.x, var_3, var_3))), vec3<f32>(-600f, _wgslsmith_div_f32(var_1.x, 606f), _wgslsmith_f_op_f32(-var_3))), select(select(func_1(vec4<f32>(-1038f, 2956f, var_3, var_1.x), vec3<f32>(-160f, var_3, var_1.x)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), func_1(vec4<f32>(-1424f, 1724f, -729f, -578f), vec3<f32>(var_3, var_1.x, var_3))), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true)))));
    let var_5 = ~(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.a.x, 2302u), vec4<u32>(0u, 7879u, u_input.a.x, var_4.a)))));
    var var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(select(10434i, abs(~_wgslsmith_sub_i32(var_2, 7132i)), false), var_1.xy);
}

