struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -15245i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1343f);
    global0 = 1i;
    var var_1 = any(select(vec2<bool>(_wgslsmith_clamp_u32(u_input.b.x, 46035u, 46272u) > 0u, true), vec2<bool>(all(vec3<bool>(true, arg_2.x, false)), any(!vec3<bool>(true, arg_2.x, true))), !vec2<bool>(arg_2.x & arg_0.b, true)));
    var_1 = arg_2.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 - -174f)))) + -431f));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_f_op_f32(-var_0))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(228f, -1669f)) + _wgslsmith_f_op_f32(func_3(Struct_2(arg_0.zz, true, vec3<u32>(0u, 4294967295u, 19702u)), vec2<u32>(u_input.b.x, u_input.b.x), vec2<bool>(false, true))))) - 617f));
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<bool>(true, all(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false))), true);
    let var_1 = vec3<u32>(u_input.b.x, ~u_input.b.x, ~51122u) & u_input.b.wzz;
    let var_2 = Struct_2(u_input.a.zy & (vec2<i32>(-u_input.a.x, u_input.a.x ^ u_input.a.x) << (vec2<u32>(u_input.b.x, var_1.x) % vec2<u32>(32u))), false, u_input.b.wzy);
    return func_2(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = max(_wgslsmith_sub_i32(reverseBits(u_input.a.x), ~(-u_input.a.x & (22846i | u_input.a.x))), 2147483647i);
    var var_2 = 62512u;
    var var_3 = Struct_2(vec2<i32>(var_1, ~(~(-var_1))), _wgslsmith_f_op_f32(-var_0.a) <= var_0.a, reverseBits(vec3<u32>(~u_input.b.x, 44083u, u_input.b.x)));
    var_0 = Struct_1(func_2(_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(1i, var_3.a.x, var_1) << (reverseBits(u_input.b.zyx) % vec3<u32>(32u)))).a);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, countOneBits(1u), -(~(-2147483647i)), var_0.a);
}

