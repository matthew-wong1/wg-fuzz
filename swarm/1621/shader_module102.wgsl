struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> Struct_1 {
    let var_0 = arg_1;
    return arg_1;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = firstTrailingBit(u_input.c.x >> (_wgslsmith_mod_u32(~arg_1, 34157u) % 32u));
    var_0 = arg_1;
    var var_1 = _wgslsmith_sub_u32(0u, ~(~(arg_1 & 56217u)) & _wgslsmith_dot_vec4_u32(~min(vec4<u32>(u_input.b, 0u, arg_1, u_input.c.x), vec4<u32>(u_input.d, arg_1, 29715u, 23371u)), ~vec4<u32>(0u, 0u, arg_1, arg_1)));
    var_1 = _wgslsmith_sub_u32(~reverseBits(countOneBits(~u_input.d)), u_input.c.x);
    var var_2 = arg_0;
    return arg_0;
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = select(!vec3<bool>(arg_0.a, arg_0.a, any(select(vec4<bool>(arg_0.a, arg_0.a, true, true), vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), arg_0.a))), vec3<bool>(true, true, arg_0.a), !vec3<bool>(arg_0.a, any(select(vec2<bool>(arg_0.a, true), vec2<bool>(false, false), arg_0.a)), arg_0.a));
    var var_1 = Struct_1(false, arg_0.b);
    let var_2 = Struct_1(true, ~_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 2122i, arg_0.b.x), var_1.b), ~var_1.b ^ ~vec3<i32>(var_1.b.x, u_input.a, u_input.a), countOneBits(var_1.b)));
    let var_3 = arg_0;
    var var_4 = var_0;
    return func_2(Struct_1(any(select(vec2<bool>(true, true), var_4.yy, var_3.a)), firstTrailingBit(vec3<i32>(u_input.a, _wgslsmith_sub_i32(31956i, var_3.b.x), abs(var_3.b.x)))), 19454u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec2<bool>(true, all(vec3<bool>(false, false, true))));
    let var_1 = u_input.a;
    let var_2 = func_3(func_2(func_1(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(0u, u_input.c.x, 1u, u_input.d)), u_input.c >> (vec4<u32>(u_input.b, u_input.b, u_input.b, 3735u) % vec4<u32>(32u))), Struct_1(true, vec3<i32>(var_1, u_input.a, u_input.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(487f, -669f)), _wgslsmith_div_f32(1730f, 861f))), 0u ^ max(u_input.d, 0u)), u_input.c.x));
    let var_3 = func_1(vec4<u32>(~(44679u | u_input.b), max(~u_input.c.x, _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.b)), _wgslsmith_sub_u32(u_input.b, countOneBits(0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 3499u, 1499u), ~u_input.c)) >> (u_input.c % vec4<u32>(32u)), var_2, -885f, u_input.b);
    var var_4 = vec2<bool>(func_3(func_2(func_2(Struct_1(false, vec3<i32>(var_2.b.x, var_3.b.x, -1i)), _wgslsmith_dot_vec4_u32(vec4<u32>(37958u, 0u, u_input.c.x, u_input.b), u_input.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 23939u, 45160u, 4294967295u), select(vec4<u32>(1u, 0u, u_input.d, 12467u), u_input.c, vec4<bool>(true, false, true, true))))).a, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(u_input.c.zxw >> (u_input.c.zxy % vec3<u32>(32u))) << ((vec3<u32>(1u, 0u, u_input.d) >> (u_input.c.www % vec3<u32>(32u))) % vec3<u32>(32u))), u_input.c.x, var_2.b.xy);
}

