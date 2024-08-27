struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, 658f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-153f, arg_0))))))));
    var var_1 = 380f;
    var var_2 = ~(~_wgslsmith_add_i32(-2147483647i, _wgslsmith_clamp_i32(select(u_input.a.x, 0i, arg_1), firstTrailingBit(u_input.b.x), ~u_input.b.x)));
    let var_3 = Struct_1(firstTrailingBit(-1i));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x)));
    return !vec4<bool>(any(vec3<bool>(arg_1, false, true)), !(2147483647i == _wgslsmith_mod_i32(u_input.b.x, 26629i)), all(!(!vec4<bool>(true, arg_1, arg_1, true))), arg_1);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = select(select(func_3(-504f, any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false))), !vec4<bool>(true, select(false, false, false), func_3(-168f, false).x, select(false, false, false)), !select(func_3(-231f, false), vec4<bool>(false, true, true, true), true)), vec4<bool>(true, true, true, true), true);
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-827f + -2050f))), 1000f)));
    let var_2 = -169f;
    let var_3 = !(!func_3(2347f, !(false & var_0.x)));
    var var_4 = Struct_1(-2147483647i);
    return var_3.wx;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(~(~(~2484u)), u_input.e.xzy, Struct_1(0i)));
    var_0 = func_3(arg_0, var_0.x).wz;
    var_0 = !(!(!(!(!vec2<bool>(var_0.x, false)))));
    let var_1 = _wgslsmith_add_vec2_u32(min(select(min(~u_input.e.zz, u_input.e.zy), u_input.e.xw, var_0.x), u_input.e.zy), select(u_input.e.yw, countOneBits(_wgslsmith_sub_vec2_u32(u_input.e.zz, vec2<u32>(4294967295u, 7198u))) ^ firstTrailingBit(vec2<u32>(u_input.e.x, u_input.d)), select(vec2<bool>(var_0.x, var_0.x), func_3(_wgslsmith_f_op_f32(floor(1000f)), select(false, var_0.x, var_0.x)).xx, vec2<bool>(true, true))));
    let var_2 = 709f;
    return Struct_1(abs(~firstTrailingBit(~u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -7551i;
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 27841u) << (~u_input.e.wz % vec2<u32>(32u)), vec2<u32>(1u, 1u)), u_input.e.x), u_input.e.x);
    var var_2 = func_1(-756f, Struct_1(var_0));
    var_1 = 920u;
    var_2 = Struct_1(_wgslsmith_mod_i32(-2147483647i, ~(-var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(13015i);
}

