struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2() -> u32 {
    let var_0 = Struct_3(Struct_1(any(vec2<bool>(true, false)), u_input.e));
    let var_1 = Struct_4(select(!vec2<bool>(!var_0.a.a, all(vec2<bool>(var_0.a.a, false))), !(!vec2<bool>(false, var_0.a.a)), var_0.a.a));
    var var_2 = var_0.a;
    let var_3 = Struct_3(Struct_1(!all(!vec2<bool>(var_2.a, false)), select(-var_0.a.b | var_0.a.b, ~(~vec2<i32>(45522i, var_0.a.b.x)), vec2<bool>(all(var_1.a), var_2.a))));
    var_2 = Struct_1(true, var_0.a.b);
    return 4294967295u;
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = 4294967295u;
    var_0 = func_2();
    var var_1 = Struct_1(false, _wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.e), -(~u_input.e | u_input.e)));
    let var_2 = arg_0;
    var_0 = 3359u;
    return 43373u;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> u32 {
    let var_0 = select(vec3<bool>(all(!arg_1.a), any(!vec2<bool>(arg_0.a.a, arg_1.a.x)), all(select(select(vec4<bool>(false, arg_0.a.a, false, false), vec4<bool>(arg_1.a.x, false, arg_1.a.x, false), true), select(vec4<bool>(false, arg_0.a.a, arg_0.a.a, true), vec4<bool>(arg_1.a.x, arg_1.a.x, false, false), true), select(vec4<bool>(arg_1.a.x, true, false, arg_0.a.a), vec4<bool>(true, arg_1.a.x, true, true), arg_0.a.a)))), select(vec3<bool>(arg_0.a.a & all(vec4<bool>(false, arg_0.a.a, true, arg_0.a.a)), arg_1.a.x, true), select(vec3<bool>(false, true, select(arg_1.a.x, true, true)), !vec3<bool>(arg_1.a.x, false, arg_1.a.x), select(select(vec3<bool>(false, arg_1.a.x, false), vec3<bool>(false, arg_0.a.a, arg_1.a.x), true), !vec3<bool>(false, arg_0.a.a, false), select(vec3<bool>(false, true, arg_1.a.x), vec3<bool>(false, arg_0.a.a, true), arg_0.a.a))), vec3<bool>(arg_1.a.x, select(arg_1.a.x, false, true) & true, true)), arg_0.a.a);
    var var_1 = Struct_1(true, abs(~reverseBits(reverseBits(u_input.e))));
    var_1 = Struct_1(!(true & arg_0.a.a), reverseBits(firstLeadingBit(-(~u_input.e))));
    let var_2 = 25888i;
    let var_3 = arg_0;
    return ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~(~u_input.d), ~_wgslsmith_mult_vec2_u32(u_input.d, vec2<u32>(u_input.a.x, 1u))), u_input.d << (max(_wgslsmith_clamp_vec2_u32(u_input.a, u_input.d, u_input.a), abs(vec2<u32>(39547u, 35182u))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_u32(u_input.d.x, func_1(24915u));
    var var_1 = ~(~(u_input.a.x | func_3(Struct_3(Struct_1(true, u_input.e)), Struct_4(vec2<bool>(true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(37371u, vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1409f + 2179f)) * _wgslsmith_f_op_f32(105f - 1030f)), -1000f), -u_input.e.x, firstTrailingBit(select(-1i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 20427i), vec2<i32>(u_input.b, 1i))), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))))), vec2<f32>(-806f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-205f + _wgslsmith_f_op_f32(step(-1296f, 919f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-442f + -1000f), _wgslsmith_f_op_f32(ceil(-426f)))))));
}

