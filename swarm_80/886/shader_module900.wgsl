struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -421f), vec2<i32>(~30294i, abs(479i) | arg_3.x)));
    let var_1 = arg_1;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(325f)))) * _wgslsmith_f_op_f32(-var_0.a.a)))), vec2<i32>(var_1.x, _wgslsmith_mod_i32(-16738i, 1i)) >> (arg_2.xz % vec2<u32>(32u)));
    var var_3 = Struct_3(max(_wgslsmith_div_u32(1u, arg_2.x), abs(arg_0.x)), select(vec2<i32>(~_wgslsmith_clamp_i32(arg_3.x, var_0.a.b.x, var_2.b.x), firstLeadingBit(var_2.b.x)), arg_3, vec2<bool>(true, true)), -var_0.a.b.x);
    let var_4 = 25094i;
    return !vec3<bool>(any(vec3<bool>(all(vec3<bool>(true, false, true)), all(vec4<bool>(false, false, true, false)), true)), any(vec2<bool>(true, true)), (_wgslsmith_div_f32(-481f, 604f) > var_0.a.a) && true);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<bool> {
    let var_0 = 88418u;
    return select(vec3<bool>(true, true, true), select(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, any(vec4<bool>(false, false, true, true)), true), vec3<bool>(true, true, true)), vec3<bool>(false, true, any(vec4<bool>(false, false, false, true)))), select(!select(vec3<bool>(false, false, true), func_3(vec2<u32>(u_input.d, 1u), arg_1.wyy, vec3<u32>(u_input.c, 0u, u_input.c), arg_1.yz), vec3<bool>(true, true, true)), vec3<bool>(any(vec2<bool>(true, true)) | false, 4691u >= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 48043u, 37490u), vec3<u32>(u_input.c, 1u, u_input.d)), 54309u >= u_input.c), !(any(vec4<bool>(false, false, false, false)) == any(vec3<bool>(false, true, false)))));
}

fn func_1() -> f32 {
    let var_0 = !(!select(func_2(Struct_1(-1000f, vec2<i32>(u_input.b, 2147483647i)), vec4<i32>(u_input.a, u_input.a, -36499i, 55817i) >> (vec4<u32>(20735u, 10233u, u_input.d, u_input.c) % vec4<u32>(32u))), vec3<bool>(false, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, false, true), true)));
    let var_1 = Struct_3(u_input.c, firstTrailingBit(vec2<i32>(0i, -1i)), u_input.a);
    let var_2 = 1561f;
    let var_3 = var_0.x;
    let var_4 = true;
    return -455f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(132f * _wgslsmith_f_op_f32(func_1())), firstLeadingBit(vec2<i32>(~(~u_input.a), u_input.b)));
    var var_1 = Struct_4(Struct_2(var_0), vec4<bool>(true, any(select(func_3(vec2<u32>(u_input.d, u_input.d), vec3<i32>(u_input.b, -2522i, 14262i), vec3<u32>(u_input.c, 48233u, u_input.c), vec2<i32>(-15901i, var_0.b.x)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), all(vec4<bool>(true, true, true, false)))), var_0.a < var_0.a, select(true, false, true)));
    var var_2 = Struct_5(countOneBits(_wgslsmith_div_i32(-15195i, 643i)), var_1.a, select(select(var_1.b, select(select(var_1.b, vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, false), false), vec4<bool>(var_1.b.x, false, var_1.b.x, true), var_1.b.x), vec4<bool>(var_1.b.x, func_2(Struct_1(var_1.a.a.a, var_1.a.a.b), vec4<i32>(var_0.b.x, -1i, var_0.b.x, var_0.b.x)).x, any(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, false)), true)), vec4<bool>(var_1.a.a.a <= _wgslsmith_f_op_f32(trunc(var_0.a)), var_1.b.x, ~var_1.a.a.b.x > var_0.b.x, _wgslsmith_div_i32(var_1.a.a.b.x, u_input.b) <= _wgslsmith_sub_i32(var_1.a.a.b.x, -37429i)), !all(vec4<bool>(var_1.b.x, true, false, var_1.b.x))));
    let var_3 = var_0;
    var_1 = Struct_4(var_1.a, select(!var_2.c, select(select(vec4<bool>(var_2.c.x, true, var_1.b.x, var_1.b.x), !vec4<bool>(false, var_1.b.x, var_1.b.x, var_1.b.x), !var_2.c), select(vec4<bool>(false, var_1.b.x, var_1.b.x, var_2.c.x), var_2.c, select(vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.c.x), vec4<bool>(var_2.c.x, var_2.c.x, false, false), vec4<bool>(var_1.b.x, var_1.b.x, true, true))), true), any(vec2<bool>(false, var_2.c.x))));
    var_1 = Struct_4(Struct_2(var_3), select(var_2.c, var_2.c, !(!var_2.c)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a.a);
}

