struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_mult_vec2_u32(~(~vec2<u32>(79715u, u_input.b.x)), _wgslsmith_sub_vec2_u32(~u_input.b.zw, ~vec2<u32>(arg_1.a, 0u))) << (vec2<u32>(4294967295u, ~(~(arg_0.x | arg_0.x))) % vec2<u32>(32u));
    var var_1 = Struct_2(_wgslsmith_mod_u32(52680u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.b.x, arg_1.a), 80523u), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(22834u, 54552u), vec2<u32>(u_input.b.x, var_0.x), vec2<u32>(22398u, 33214u)), vec2<u32>(1u, 7487u)))));
    var_1 = Struct_2(_wgslsmith_add_u32(~0u, _wgslsmith_dot_vec2_u32(arg_0.yy | _wgslsmith_div_vec2_u32(var_0, vec2<u32>(var_0.x, var_1.a)), ~vec2<u32>(1u, var_1.a))));
    let var_2 = Struct_3(true, i32(-1i) * -30982i, Struct_2(min(~arg_0.x, _wgslsmith_clamp_u32(arg_1.a | u_input.b.x, _wgslsmith_div_u32(var_0.x, 33664u), _wgslsmith_dot_vec2_u32(var_0, u_input.b.yx)))), arg_1, Struct_1(~_wgslsmith_mult_u32(52606u, ~var_1.a)));
    var var_3 = var_2.c;
    return 0u;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = ~(~countOneBits(vec4<i32>(-5129i >> (arg_1.x % 32u), _wgslsmith_add_i32(-74518i, arg_0.x), u_input.c, -2147483647i)));
    let var_1 = Struct_2(abs(reverseBits(firstLeadingBit(_wgslsmith_add_u32(4294967295u, arg_1.x)))));
    let var_2 = Struct_3(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(arg_0, vec4<i32>(34508i, var_0.x, u_input.d, -5114i)), u_input.a) >= (45422i ^ var_0.x), (arg_0.x | ~(var_0.x & -2147483647i)) ^ abs(_wgslsmith_div_i32(29375i & u_input.d, -2441i)), var_1, Struct_1(func_2(u_input.b >> (u_input.b % vec4<u32>(32u)), Struct_1(~89485u))), Struct_1(arg_2.x));
    let var_3 = vec4<bool>(false, false, false, true);
    let var_4 = var_2.d;
    return Struct_3(any(vec3<bool>(var_3.x, var_2.a, false)), var_2.b, Struct_2(~u_input.b.x), Struct_1(~1u), var_2.d);
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = true & !(!(false & any(vec2<bool>(true, false))));
    let var_1 = func_3(vec4<i32>(_wgslsmith_sub_i32(23743i, ~39766i), countOneBits(u_input.d), ~1i, ~u_input.c), vec3<u32>(u_input.b.x, func_2(u_input.b, Struct_1(0u)), _wgslsmith_dot_vec2_u32(~(~u_input.b.xy), ~vec2<u32>(u_input.b.x, arg_0.a))), u_input.b.yx);
    var_0 = _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4332u, func_3(vec4<i32>(5198i, var_1.b, 44628i, var_1.b), u_input.b.yxz, u_input.b.yw).c.a, 28737u, ~58535u)), vec4<u32>(max(var_1.d.a, arg_0.a), 4294967295u >> (arg_0.a % 32u), 1u, 4294967295u) >> (countOneBits(u_input.b >> (vec4<u32>(1u, u_input.b.x, arg_0.a, 17508u) % vec4<u32>(32u))) % vec4<u32>(32u))) == _wgslsmith_div_u32(arg_0.a >> (2016u % 32u), 51383u);
    let var_2 = true;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(419f + -1017f)), 932f);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(all(vec3<bool>(true, true, true)), false));
    var_0 = func_1(Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b.x, abs(u_input.b.x)), select(u_input.b.x, 1u ^ u_input.b.x, true))));
    let var_1 = Struct_1(1u);
    let var_2 = 899f;
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

