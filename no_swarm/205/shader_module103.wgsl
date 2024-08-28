struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_0.a, abs(~(~vec2<u32>(26952u, arg_0.b.x))), abs(arg_0.b.x), ~_wgslsmith_sub_u32(9213u, arg_0.d));
    let var_1 = 1u;
    var var_2 = var_0.a.zw;
    var var_3 = -8396i;
    let var_4 = arg_0;
    return 45015u;
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_1 {
    let var_0 = countOneBits(vec4<i32>(~(~(-68937i)), -1i, _wgslsmith_clamp_i32(max(-43679i, -32014i), 2147483647i, u_input.a.x & abs(u_input.a.x)), countOneBits(-21283i)));
    var var_1 = Struct_1(!(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)))), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, arg_0) & (vec2<u32>(arg_0, arg_0) ^ vec2<u32>(arg_0, 4294967295u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_0), ~vec2<u32>(41790u, arg_0))) | vec2<u32>(3054u, func_3(Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(42817u, 63930u), 1u, 4294967295u), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(27337u, arg_0), arg_0, 36295u))), ~(~(~(~arg_0))), max(arg_0, arg_0));
    var_1 = Struct_1(var_1.a, var_1.b, _wgslsmith_clamp_u32(99650u, arg_0, arg_0), var_1.c);
    var_1 = Struct_1(!vec4<bool>(var_1.a.x, all(select(var_1.a, vec4<bool>(true, var_1.a.x, false, true), var_1.a.x)), var_1.a.x, true || all(vec2<bool>(false, true))), vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_div_u32(1u, arg_0), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(2859u, var_1.c, 44689u), arg_0, ~arg_0)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 33042u), var_1.b), vec2<u32>(_wgslsmith_mult_u32(arg_0, var_1.c), 34202u))), arg_0, 4294967295u);
    var_1 = Struct_1(select(var_1.a, vec4<bool>(true, all(var_1.a.wwx), select(true, true, true), any(var_1.a.wyx)), var_1.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0, 92999u), 41318u), arg_0), var_1.b), select(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 1u), var_1.b, false), _wgslsmith_mod_vec2_u32(var_1.b, vec2<u32>(arg_0, 4294967295u))), var_1.d), arg_0, var_1.a.x), var_1.c);
    return Struct_1(var_1.a, ~var_1.b, countOneBits(1u), var_1.d);
}

fn func_1() -> Struct_1 {
    return func_2(firstTrailingBit(27416u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -372f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(138f))))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_1();
    var_0 = func_1();
    var var_1 = u_input.a.x;
    var var_2 = vec2<i32>(u_input.a.x, 1i) >> (countOneBits(vec2<u32>(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_sub_u32(91567u, 10883u)), ~arg_0.c << (var_0.b.x % 32u))) % vec2<u32>(32u));
    var_0 = arg_0;
    return Struct_1(vec4<bool>(true, func_1().a.x, true, true), vec2<u32>(var_0.c, var_0.b.x << (reverseBits(~var_0.c) % 32u)), ~(~30251u), ~(~var_0.d));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = select(!select(func_1().a.zwx, vec3<bool>(true, false, !arg_0.x), !(0i <= u_input.a.x)), arg_1.a.yzz, !all(vec2<bool>(all(vec2<bool>(arg_0.x, false)), true)));
    var var_1 = arg_1;
    var_1 = func_1();
    var_1 = Struct_1(vec4<bool>(max(-22235i << (arg_1.c % 32u), firstLeadingBit(u_input.a.x)) > u_input.a.x, func_4(func_1()).a.x, any(select(vec3<bool>(arg_0.x, true, false), select(arg_1.a.zwx, var_1.a.yyy, var_0), 4431u > arg_1.d)), true & all(func_4(Struct_1(arg_0, var_1.b, arg_1.d, arg_1.c)).a.wy)), ~(~_wgslsmith_mod_vec2_u32(var_1.b, arg_1.b)), var_1.b.x, 1u);
    let var_2 = _wgslsmith_sub_vec4_i32(~max(-abs(vec4<i32>(u_input.a.x, -1493i, -3680i, -2147483647i)), max(vec4<i32>(-31094i, u_input.a.x, -37845i, 12774i), max(vec4<i32>(u_input.a.x, u_input.a.x, 45571i, u_input.a.x), vec4<i32>(45506i, u_input.a.x, u_input.a.x, u_input.a.x)))), vec4<i32>(u_input.a.x, abs(~u_input.a.x), _wgslsmith_mod_i32(-(~u_input.a.x), _wgslsmith_mult_i32(1i, max(u_input.a.x, u_input.a.x))), ~_wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x))));
    return func_2(_wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.c, ~0u), _wgslsmith_sub_u32(arg_1.d, ~0u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2200f - _wgslsmith_f_op_f32(1093f * -361f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -537f), _wgslsmith_f_op_f32(f32(-1f) * -338f))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_5(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true)), func_4(func_1())), max(min(vec2<u32>(1u, 1u), max(~vec2<u32>(39460u, 43263u), vec2<u32>(1u, 1u))), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(19548u, 17151u), vec2<u32>(60777u, 1u)))), min(1u, ~(~abs(41202u))), 4294967295u);
    var var_1 = _wgslsmith_div_vec2_u32(var_0.b, min(var_0.b, ~max(vec2<u32>(var_0.b.x, 4294967295u), _wgslsmith_add_vec2_u32(var_0.b, vec2<u32>(var_0.b.x, 23122u)))));
    var_1 = vec2<u32>(var_1.x ^ countOneBits(35750u ^ _wgslsmith_mult_u32(1u, var_1.x)), 9371u);
    let var_2 = ~vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(~0u, ~var_0.d), var_1.x), 1u);
    var_1 = var_0.b;
    var_0 = Struct_1(!(!var_0.a), vec2<u32>(1u, 78448u), abs((~13086u << ((var_1.x & var_0.c) % 32u)) | ~1u), var_0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-481f, -686f, 1763f, 2663f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(450f, -712f, 2258f, -739f))))))), 1u);
}

