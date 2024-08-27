struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 705f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-370f - 454f) - _wgslsmith_f_op_f32(f32(-1f) * -2295f)), -489f)), abs(-min(~vec3<i32>(-2147483647i, 0i, 1i), vec3<i32>(1i, 1i, 1i))));
}

fn func_3() -> bool {
    let var_0 = !select(vec2<bool>(true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))), vec2<bool>(true, true), vec2<bool>(true, true));
    let var_1 = func_1();
    var var_2 = !vec4<bool>(false, var_0.x, false, all(select(var_0, select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), var_0), var_0.x)));
    var var_3 = u_input.b.x;
    let var_4 = var_1.a;
    return var_0.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_4) -> vec3<i32> {
    let var_0 = Struct_1(func_3(), -158f);
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -min(func_2(u_input.a, func_1(), Struct_4(vec3<f32>(574f, 162f, 308f), vec3<i32>(27723i, 8861i, -24978i))), countOneBits(vec3<i32>(0i, 1i, -2147483647i))) >> (vec3<u32>(~abs(~25774u), ~_wgslsmith_mod_u32(u_input.a.x, 0u) | u_input.a.x, firstLeadingBit(countOneBits(u_input.a.x))) % vec3<u32>(32u));
    var_0 = -(vec3<i32>(-_wgslsmith_mod_i32(var_0.x, var_0.x), var_0.x, _wgslsmith_sub_i32(~var_0.x, var_0.x)) << (~(~countOneBits(vec3<u32>(u_input.b.x, u_input.a.x, 0u))) % vec3<u32>(32u)));
    var var_1 = -(~abs(vec4<i32>(-1i, countOneBits(-2147483647i), var_0.x, firstLeadingBit(var_0.x))));
    var var_2 = func_1();
    var var_3 = -(func_2(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), 0u), func_1(), Struct_4(_wgslsmith_f_op_vec3_f32(round(var_2.a)), vec3<i32>(var_0.x, 11296i, 0i))).x & (~1i | -var_0.x));
    var var_4 = vec4<i32>(min(_wgslsmith_clamp_i32(reverseBits(var_0.x), var_0.x ^ var_2.b.x, -var_0.x), _wgslsmith_dot_vec3_i32(var_1.yyz, vec3<i32>(20581i, -55525i, var_2.b.x)) << ((u_input.b.x ^ 0u) % 32u)) >> (u_input.a.x % 32u), var_2.b.x, ~(~(~(-2147483647i)) | ~var_1.x), var_0.x);
    var_0 = _wgslsmith_mod_vec3_i32(~func_2(~u_input.a, func_1(), func_1()), vec3<i32>(0i, 37068i, ~var_4.x) | (-var_4.xzw >> (u_input.a % vec3<u32>(32u)))) ^ var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1142f, -726f)))) * _wgslsmith_f_op_f32(var_2.a.x - var_2.a.x)));
}

