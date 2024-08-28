struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: u32) -> u32 {
    return 0u;
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = any(select(select(!(!vec2<bool>(arg_0.d.d.x, arg_0.d.e.x)), select(!vec2<bool>(arg_0.d.e.x, arg_0.d.d.x), arg_0.d.d.zy, true), !arg_0.d.d.x), select(arg_0.d.e.zz, select(arg_0.d.e.yz, vec2<bool>(true, false), false), !(!arg_0.d.e.xz)), vec2<bool>(true, -arg_0.c.x == -21600i)));
    let var_1 = abs(vec3<u32>(1u, _wgslsmith_clamp_u32(arg_0.b, 4294967295u, 0u), 1u));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_add_u32(arg_0.b, func_1(~(var_1.x | 60683u))), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, var_1.x, 0u) ^ var_1, var_1), _wgslsmith_clamp_u32(arg_0.b, ~21928u, 4294967295u)));
    var_2 = _wgslsmith_div_u32(_wgslsmith_mod_u32(select(func_1(var_1.x), firstTrailingBit(68496u), arg_0.d.e.x) >> (arg_0.b % 32u), ~(~(~arg_0.b))), arg_0.b);
    var_2 = select(~var_1.x ^ _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(13968u, 0u, 1u), ~var_1), abs(var_1 >> (var_1 % vec3<u32>(32u)))), 39096u, true);
    return ~var_1.xx;
}

fn func_2() -> Struct_1 {
    var var_0 = ~countOneBits(abs(func_3(Struct_2(u_input.a.x, 1u, u_input.a.zx, Struct_1(vec2<f32>(-659f, 296f), 1i, u_input.a.x, vec3<bool>(true, true, false), vec3<bool>(false, false, true))))) & ~vec2<u32>(0u, 67770u));
    let var_1 = true;
    var var_2 = all(vec3<bool>(any(vec3<bool>(!var_1, true, true)), true, select(var_1, var_1, true) | false));
    var_0 = abs(vec2<u32>(var_0.x, firstLeadingBit(0u) << (~(~1u) % 32u)));
    var var_3 = select(any(vec2<bool>(var_1, false)), false, var_1);
    return Struct_1(vec2<f32>(-150f, -234f), u_input.a.x, -2147483647i, !(!select(vec3<bool>(true, false, var_1), select(vec3<bool>(false, var_1, var_1), vec3<bool>(false, false, true), vec3<bool>(var_1, false, var_1)), var_1)), !select(!select(vec3<bool>(true, var_1, true), vec3<bool>(var_1, var_1, true), vec3<bool>(false, var_1, var_1)), !vec3<bool>(var_1, true, false), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u;
    let var_0 = reverseBits(vec2<u32>(func_1(~10399u), 1u));
    var var_1 = func_2();
    var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.x))))), ~(~var_1.c), _wgslsmith_mult_i32(firstLeadingBit(var_1.b), 0i), !(!select(vec3<bool>(false, true, true), var_1.d, vec3<bool>(var_1.d.x, false, false))), !var_1.d);
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(891f, var_1.a.x) + _wgslsmith_f_op_vec2_f32(var_1.a * var_1.a)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a.x)) + var_1.a.x), -1229f)), -(~var_1.b), -10858i, var_1.e, select(!var_1.d, vec3<bool>(u_input.a.x > ~(-35962i), var_1.e.x, all(vec4<bool>(true, false, var_1.e.x, false))), true));
    global0 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(var_0.x & _wgslsmith_dot_vec3_u32(vec3<u32>(21467u, 1u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, var_0.x))), vec3<f32>(var_1.a.x, var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-801f + var_1.a.x))) - var_1.a.x)));
}

