struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>) -> Struct_1 {
    return Struct_1(u_input.a, !(!select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), true)), u_input.b.x << (_wgslsmith_mult_u32(_wgslsmith_div_u32(15620u, arg_1.x), _wgslsmith_sub_u32(15614u, u_input.c.x)) % 32u));
}

fn func_3() -> f32 {
    var var_0 = any(vec2<bool>(true, true));
    var_0 = true;
    var var_1 = abs(vec3<u32>(14326u, u_input.c.x, ~_wgslsmith_add_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.c))));
    var_0 = reverseBits(abs(_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, u_input.c.x, 0u), vec3<u32>(u_input.c.x, 0u, 66721u))))) <= 71281u;
    var_0 = any(vec4<bool>(all(vec2<bool>(any(vec4<bool>(false, false, false, false)), var_1.x >= u_input.c.x)), true, any(func_2(vec2<u32>(u_input.c.x, u_input.c.x), ~vec3<u32>(var_1.x, 46825u, u_input.c.x)).b), false));
    return -2065f;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<i32> {
    let var_0 = func_2(vec2<u32>(5778u, 73555u << (u_input.c.x % 32u)), vec3<u32>(0u, ~1u, ~max(0u, 4294967295u)) ^ select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u) & vec3<u32>(10779u, 13563u, u_input.c.x), ~vec3<u32>(u_input.c.x, u_input.c.x, 1u)), vec3<u32>(countOneBits(1u), 49965u, select(2907u, 4294967295u, arg_1.b.x)), !vec3<bool>(arg_1.b.x, arg_1.b.x, false)));
    let var_1 = vec4<f32>(1769f, 899f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(489f * -889f))))));
    let var_2 = arg_1;
    var var_3 = firstLeadingBit(vec3<i32>(~arg_2.x, _wgslsmith_mod_i32(arg_2.x, arg_0), 3705i));
    var_3 = -(~(~(-vec3<i32>(2146i, u_input.e.x, u_input.b.x))) << ((~abs(vec3<u32>(1u, 1u, 1u)) << (min(vec3<u32>(u_input.c.x, 17930u, u_input.c.x), ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return u_input.e;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: vec3<i32>) -> f32 {
    var var_0 = ~max(~vec4<u32>(42936u, u_input.c.x, ~arg_2, 37370u | u_input.c.x), vec4<u32>(1u, _wgslsmith_mult_u32(~u_input.c.x, u_input.c.x), 20878u, firstLeadingBit(~24014u)));
    var_0 = select(~vec4<u32>(u_input.c.x, 4294967295u, var_0.x, 1u), vec4<u32>(1u, ~27208u, u_input.c.x << (u_input.c.x % 32u), 0u), vec4<bool>(false, all(!vec2<bool>(true, arg_1.b.x)), 1u <= u_input.c.x, true)) & reverseBits(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(3813u, arg_2, u_input.c.x, 107773u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, arg_2, 0u, var_0.x), vec4<u32>(0u, 90816u, var_0.x, arg_2)) % vec4<u32>(32u)), (vec4<u32>(var_0.x, var_0.x, 4294967295u, 29537u) ^ vec4<u32>(u_input.c.x, var_0.x, 4294967295u, 83454u)) | ~vec4<u32>(1360u, u_input.c.x, u_input.c.x, 4294967295u)));
    var_0 = min(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(~1u, _wgslsmith_sub_u32(arg_2, var_0.x), 632u | u_input.c.x, 75346u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, arg_2, u_input.c.x, arg_2) ^ vec4<u32>(4294967295u, 4294967295u, arg_2, 0u), ~vec4<u32>(var_0.x, u_input.c.x, u_input.c.x, arg_2)))), ~vec4<u32>(abs(var_0.x), 28650u, arg_2, arg_2) ^ (~max(vec4<u32>(u_input.c.x, 52694u, arg_2, 4294967295u), vec4<u32>(u_input.c.x, arg_2, u_input.c.x, 77375u)) >> (((vec4<u32>(arg_2, arg_2, arg_2, 59914u) ^ vec4<u32>(61111u, var_0.x, 26351u, 102324u)) | ~vec4<u32>(var_0.x, 1u, 2121u, 50805u)) % vec4<u32>(32u))));
    var_0 = ~vec4<u32>(var_0.x, firstTrailingBit(_wgslsmith_mult_u32(14884u, ~u_input.c.x)), reverseBits(1u), select(_wgslsmith_div_u32(7689u, select(12121u, 25191u, arg_1.b.x)), 11190u, -450f == _wgslsmith_f_op_f32(ceil(1614f))));
    var var_1 = arg_1;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-564f * 564f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(524f + 555f) + 1f))), Struct_1(1i, select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), -6275i), u_input.c.x, vec3<i32>(u_input.a, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a, -2419i, u_input.d)), func_1(2147483647i, Struct_1(1i, vec3<bool>(false, true, false), -1i), u_input.e.zz)), abs(func_2(u_input.c, vec3<u32>(u_input.c.x, 14625u, u_input.c.x)).a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1620f) - _wgslsmith_f_op_f32(f32(-1f) * -329f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-155f)))))), 1861f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 1f))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1397f)));
    let var_3 = firstLeadingBit(min(vec3<u32>(0u, _wgslsmith_sub_u32(u_input.c.x, u_input.c.x), 15360u), firstTrailingBit(vec3<u32>(4294967295u, 11188u, u_input.c.x)))) & abs(vec3<u32>(6702u, 1u, u_input.c.x | u_input.c.x));
    var var_4 = Struct_1(~u_input.b.x, !vec3<bool>(true, false, (-1i != u_input.a) && false), _wgslsmith_clamp_i32(2147483647i, firstTrailingBit(~3092i), abs(-firstLeadingBit(u_input.b.x))));
    let var_5 = _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, firstLeadingBit(0u), var_3.x), ~(~vec3<u32>(6640u, select(0u, var_3.x, var_4.b.x), abs(var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, u_input.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2662f, var_0.x))));
}

