struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_2 {
    var var_0 = countOneBits(select(_wgslsmith_div_vec4_u32(vec4<u32>(~6051u, ~6383u, 1u, 0u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(17240u, 63005u, 36561u), vec3<u32>(45135u, 4294967295u, 47948u)), ~1u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(98799u, 4294967295u), vec2<u32>(30305u, 6074u)))), select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(12990u, 4294967295u, 4294967295u, 0u), vec4<u32>(36296u, 31652u, 15893u, 2317u), vec4<u32>(6877u, 0u, 41228u, 0u)), ~vec4<u32>(1u, 1u, 1u, 1u), all(vec4<bool>(false, true, false, false))), all(vec4<bool>(any(vec4<bool>(true, true, false, true)), true, true, true))));
    return Struct_2(Struct_1(1476i & ((i32(-1i) * -12532i) ^ (u_input.a.x | u_input.a.x))), Struct_1(countOneBits(1i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_3(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), false), vec3<bool>(true, true, true), !(false || any(vec3<bool>(false, false, true)))), Struct_1(-(abs(arg_3.x) ^ firstLeadingBit(-39244i))));
    return func_2().a;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32, arg_3: bool) -> Struct_1 {
    var var_0 = func_3(func_2(), func_2().a, u_input.b, vec2<i32>(-1i, -_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_0.a, arg_2), -2147483647i)));
    var var_1 = u_input.a.x;
    let var_2 = 1f;
    var_0 = func_3(func_2(), arg_0, u_input.b, vec2<i32>(33579i, ~(~(i32(-1i) * -1i))));
    var var_3 = !select(!(!select(vec2<bool>(false, arg_3), vec2<bool>(true, true), vec2<bool>(arg_3, arg_3))), vec2<bool>(true, arg_3), true);
    return Struct_1(-(~var_0.a));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_3) -> vec2<i32> {
    let var_0 = Struct_3(!vec3<bool>(true & (false && arg_3.a.x), any(select(vec2<bool>(true, arg_3.a.x), arg_3.a.yx, true)), arg_2.x), arg_1);
    var var_1 = vec4<bool>(true, arg_2.x, select(var_0.a.x && true, var_0.a.x, !(!select(arg_3.a.x, true, false))), all(!arg_2));
    var_1 = select(vec4<bool>(true, var_1.x, true, true), vec4<bool>(false, true, any(vec3<bool>(all(vec3<bool>(arg_3.a.x, true, false)), var_0.a.x, arg_2.x)), any(select(vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(var_1.x, arg_3.a.x), vec2<bool>(false, false), var_0.a.x), vec2<bool>(true, arg_2.x)))), true);
    var_1 = arg_2;
    var_1 = vec4<bool>(any(arg_2), arg_2.x, true, any(vec4<bool>(true, !arg_2.x, !(!var_0.a.x), !arg_2.x)));
    return -(~min(_wgslsmith_clamp_vec2_i32(arg_0.xy, vec2<i32>(2147483647i, -2714i), vec2<i32>(arg_1.a, arg_0.x)), select(u_input.a, vec2<i32>(var_0.b.a, u_input.b.x), false)) ^ abs(select(vec2<i32>(arg_3.b.a, -23555i), vec2<i32>(arg_1.a, arg_0.x), arg_2.x) >> (firstLeadingBit(vec2<u32>(5811u, 48646u)) % vec2<u32>(32u))));
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = func_2();
    var_0 = Struct_2(var_0.a, func_2().b);
    var_0 = func_2();
    var_0 = func_2();
    var var_1 = vec3<bool>(all(vec3<bool>(arg_3.a.x, arg_3.a.x, -5503i != arg_0.x)), arg_3.a.x, !(!(!(arg_3.b.a <= u_input.a.x))));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 654f, 616f, arg_1) * vec4<f32>(arg_1, -610f, 943f, arg_1)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-998f, 1477f, arg_1, arg_1))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, arg_1) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -192f, arg_1, arg_1))))), arg_3.b.a, u_input.a.x, vec4<u32>(arg_2.x, ~_wgslsmith_div_u32(1u, arg_2.x), 52658u, _wgslsmith_clamp_u32(arg_2.x, 13866u, arg_2.x) & 4294967295u) >> (max(~(~vec4<u32>(arg_2.x, 0u, arg_2.x, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.x, 38418u, arg_2.x, 1u), vec4<u32>(4294967295u, 90596u, 4294967295u, 4294967295u), vec4<u32>(62367u, 121553u, 1u, arg_2.x)) | abs(vec4<u32>(43586u, arg_2.x, arg_2.x, 4294967295u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(28054i | u_input.b.x);
    let x = u_input.a;
    s_output = func_5(vec2<i32>(-1i) * -func_4(vec3<i32>(var_0.a, var_0.a, 2147483647i) << (vec3<u32>(1u, 82827u, 78973u) % vec3<u32>(32u)), func_1(Struct_1(-68646i), vec3<u32>(61157u, 4294967295u, 0u), var_0.a, true), vec4<bool>(true, true, true, true), Struct_3(vec3<bool>(true, false, true), Struct_1(var_0.a))), 1424f, vec2<u32>(~_wgslsmith_mult_u32(~1u, 0u), 55808u), Struct_3(vec3<bool>(true, true, true), Struct_1(1i)));
}

