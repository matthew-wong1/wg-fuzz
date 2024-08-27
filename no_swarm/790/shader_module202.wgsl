struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_5) -> bool {
    return abs(arg_0.a.c) >= abs(u_input.d.x);
}

fn func_3() -> u32 {
    var var_0 = ~u_input.c;
    var var_1 = !select(vec3<bool>(true, true, true), vec3<bool>(!any(vec2<bool>(true, true)), !all(vec4<bool>(false, true, false, false)), all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))), vec3<bool>(!all(vec3<bool>(true, false, false)), true, all(vec3<bool>(true, true, true))));
    var_1 = select(vec3<bool>(true, true, true), select(!(!select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_1.x))), select(!(!vec3<bool>(var_1.x, true, true)), !vec3<bool>(false, var_1.x, true), any(vec4<bool>(var_1.x, var_1.x, false, var_1.x)) || (var_0.x <= 1u)), vec3<bool>(false, var_1.x, (u_input.b > -51959i) | true)), select(!select(!vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, var_1.x, false), var_1.x), !vec3<bool>(u_input.b < u_input.b, !var_1.x, true), vec3<bool>(select(var_1.x, any(vec2<bool>(false, var_1.x)), var_1.x), (var_1.x && var_1.x) & any(vec4<bool>(var_1.x, var_1.x, false, false)), !func_1(Struct_5(Struct_3(Struct_2(vec2<bool>(var_1.x, var_1.x), u_input.b), Struct_1(false), u_input.d.x))))));
    var_1 = vec3<bool>(true, true, select(!var_1.x, var_1.x, true));
    let var_2 = select(!vec3<bool>(func_1(Struct_5(Struct_3(Struct_2(var_1.zz, u_input.a), Struct_1(false), 4294967295u))) && true, false, !any(vec2<bool>(var_1.x, var_1.x))), vec3<bool>(true, var_1.x, true), true);
    return 31805u | u_input.c.x;
}

fn func_2(arg_0: bool) -> Struct_4 {
    let var_0 = true;
    let var_1 = u_input.d.x;
    let var_2 = ~_wgslsmith_div_u32(func_3(), ~u_input.c.x);
    var var_3 = Struct_2(vec2<bool>((true && var_0) | any(vec2<bool>(true, false)), true), u_input.b ^ _wgslsmith_clamp_i32(-19758i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, -1i), vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_i32(u_input.a & 38169i, i32(-1i) * -25275i)));
    var var_4 = max(abs(firstTrailingBit(-abs(-1i))), -abs(2147483647i << (var_1 % 32u)));
    return Struct_4(var_2, -(~(-vec2<i32>(2147483647i, var_3.b) >> (firstTrailingBit(vec2<u32>(1u, var_1)) % vec2<u32>(32u)))), select(u_input.d.x, reverseBits(_wgslsmith_add_u32(23805u, 1u)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(select(func_1(Struct_5(Struct_3(Struct_2(vec2<bool>(true, false), -30558i), Struct_1(true), u_input.d.x))), false, select(true, true, false)));
    let var_1 = vec4<u32>(_wgslsmith_add_u32(firstLeadingBit(var_0.a), ~func_3()), ~(~(~firstLeadingBit(var_0.a))), _wgslsmith_mod_u32(func_3(), var_0.a), _wgslsmith_mod_u32(~u_input.d.x, 4294967295u));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -757f)) - -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-399f)) + _wgslsmith_f_op_f32(f32(-1f) * -963f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-347f, 1141f, true)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1074f)), -794f))))));
    let x = u_input.a;
    s_output = StorageBuffer((u_input.d.x >> (var_0.a % 32u)) | ~var_1.x);
}

