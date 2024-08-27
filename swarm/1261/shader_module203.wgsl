struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-580f + _wgslsmith_f_op_f32(round(-626f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-288f + -439f))), 2155f)), u_input.a, _wgslsmith_add_vec2_u32(abs(~vec2<u32>(4294967295u, 2744u)), vec2<u32>(29521u, _wgslsmith_mult_u32(u_input.d, u_input.d)) | vec2<u32>(u_input.d >> (1u % 32u), _wgslsmith_mod_u32(u_input.a, u_input.d))));
    var var_1 = vec4<bool>((44968u & _wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.d, 94106u), var_0.c), _wgslsmith_mult_vec2_u32(vec2<u32>(52872u, 74941u), var_0.c))) <= ~u_input.d, any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true))))), !(~u_input.a >= ~u_input.a), any(select(vec2<bool>(true, true), vec2<bool>(true, 0u < u_input.a), vec2<bool>(false, true))));
    var var_2 = false;
    let var_3 = var_0.a.x;
    let var_4 = ~vec3<u32>(~4294967295u, u_input.d, countOneBits(_wgslsmith_sub_u32(~var_0.b, u_input.d)));
    return 0u;
}

fn func_2() -> vec3<f32> {
    let var_0 = reverseBits(vec4<i32>(u_input.c.x, 1i, 1i & u_input.b.x, -19867i));
    let var_1 = _wgslsmith_mod_i32(1i, (~(-u_input.c.x) >> (_wgslsmith_mod_u32(~57230u, func_3(2156i)) % 32u)) << (~1u % 32u));
    let var_2 = u_input.c.yx;
    return vec3<f32>(1f, 1f, 1f);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2())))), 9094u, min(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 24319u), vec2<u32>(arg_2, 0u)) ^ vec2<u32>(u_input.d, 65919u)), ~vec2<u32>(u_input.a, u_input.d)));
    var var_1 = 38145u;
    var_1 = var_0.b;
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-var_0.a.x), 1132f), ~(~(1656u << (firstTrailingBit(u_input.a) % 32u))), ~var_0.c);
    var var_3 = vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x);
    return var_2;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_1(!select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec4<i32>(min(abs(_wgslsmith_div_i32(u_input.b.x, u_input.b.x)), u_input.b.x), countOneBits(_wgslsmith_sub_i32(reverseBits(u_input.b.x), -1i)), -2147483647i, min(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -23884i), vec2<i32>(7512i, u_input.b.x)), _wgslsmith_dot_vec3_i32(min(vec3<i32>(-4893i, u_input.c.x, 34253i), u_input.c.yzx), select(vec3<i32>(12880i, u_input.c.x, 13551i), u_input.c.zzz, true)))), ~0u);
    var var_1 = arg_0.x;
    var_1 = 58143u;
    var var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -45191i), u_input.c.yy) & u_input.b;
    var_2 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(var_2.x, ~(var_2.x ^ var_2.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, ~25481i, _wgslsmith_add_i32(u_input.c.x, u_input.c.x)), u_input.c.yzy)), var_2.x);
    return func_1(select(vec3<bool>(select(select(true, true, false), false, true), true, false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), -36462i <= var_2.x)), true), select(-select(vec4<i32>(7449i, u_input.c.x, var_2.x, u_input.b.x) & u_input.c, firstTrailingBit(u_input.c), vec4<bool>(true, true, true, true)), _wgslsmith_add_vec4_i32(select(firstTrailingBit(vec4<i32>(u_input.b.x, 2147483647i, u_input.c.x, 0i)), vec4<i32>(0i, u_input.c.x, 0i, -2147483647i), true), u_input.c), !vec4<bool>(true, any(vec2<bool>(true, true)), true, -19404i != u_input.b.x)), abs(_wgslsmith_clamp_u32(reverseBits(5347u), reverseBits(u_input.a) >> (firstLeadingBit(arg_0.x) % 32u), ~49372u << (min(u_input.d, u_input.d) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(u_input.c.yxz, ~vec3<i32>(firstLeadingBit(~u_input.b.x), -_wgslsmith_add_i32(u_input.b.x, -2147483647i), ~min(u_input.b.x, u_input.b.x)));
    var var_1 = ~(max(~(vec2<u32>(56735u, 72402u) << (vec2<u32>(u_input.d, 4294967295u) % vec2<u32>(32u))), vec2<u32>(24794u, 4294967295u)) & ~vec2<u32>(_wgslsmith_clamp_u32(1u, 21447u, u_input.a), u_input.d | 1u));
    let var_2 = func_4(~max(vec3<u32>(38346u, 4294967295u, 1u), select(vec3<u32>(u_input.a, u_input.a, var_1.x), vec3<u32>(1u, u_input.d, 16124u), vec3<bool>(true, false, true))) & max(abs(~vec3<u32>(var_1.x, var_1.x, 0u)), select(vec3<u32>(44401u, 4294967295u, 4294967295u) & vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(40791u, var_1.x, var_1.x), vec3<u32>(33607u, 0u, 6028u)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false))), func_1(vec3<bool>(true, true, true || all(vec2<bool>(true, false))), u_input.c | -reverseBits(vec4<i32>(1i, -7308i, var_0, u_input.c.x)), u_input.d));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -731f)))), 672f);
    let var_4 = !select(vec2<bool>(true, true), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(any(vec2<bool>(true, false)), true), true), vec2<bool>(false, u_input.c.x < -62451i));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_u32(var_2.c >> (vec2<u32>(76502u, u_input.a) % vec2<u32>(32u)), vec2<u32>(var_2.b, 4294967295u) >> (_wgslsmith_mult_vec2_u32(var_2.c, var_2.c) % vec2<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-603f * var_3.x)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(abs(var_3.x)))));
}

