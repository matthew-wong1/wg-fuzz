struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: u32,
    e: vec2<i32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-326f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(354f, 917f))), 1000f)), 794f, _wgslsmith_f_op_f32(abs(1000f)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(991f, _wgslsmith_f_op_f32(-409f * _wgslsmith_f_op_f32(round(var_0.x)))), var_0.x)));
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(~arg_0.b, arg_0.b), vec4<i32>(select(arg_0.b.x, reverseBits(-44737i), true), i32(-1i) * -26775i, 1i, max(-(~(-16723i)), ~u_input.a)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.c.x, (u_input.c.x | 0u) | min(0u, arg_0.c.x), arg_0.c.x), vec3<u32>(39020u, min(u_input.d.x, ~39524u), ~_wgslsmith_add_u32(arg_0.c.x, 13023u))));
    let var_3 = Struct_1(-1i << (_wgslsmith_add_u32(countOneBits(0u) | (70759u ^ u_input.b), 1u) % 32u), var_2.b, vec3<u32>(~(~reverseBits(arg_0.c.x)), _wgslsmith_mult_u32(4294967295u, ~(~var_2.c.x)), _wgslsmith_mod_u32(arg_0.c.x, u_input.d.x) << (34256u % 32u)));
    let var_4 = _wgslsmith_mult_vec2_u32(~var_2.c.xy, _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.c.x ^ max(1u, 19416u), countOneBits(1u)), vec2<u32>(~86162u, reverseBits(0u)) & countOneBits(select(var_2.c.yz, var_3.c.xy, vec2<bool>(false, false)))));
    return all(vec3<bool>(true, true, true));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(u_input.a, arg_0.b, vec3<u32>(0u, arg_0.c.x, _wgslsmith_add_u32(u_input.b >> (39696u % 32u), arg_0.c.x)));
    var_0 = arg_0;
    var_0 = Struct_1(firstLeadingBit(56096i), ~min(vec4<i32>(arg_0.b.x, 0i, var_0.b.x, arg_0.b.x) ^ abs(arg_0.b), ~arg_0.b), ~(~vec3<u32>(arg_0.c.x, abs(1u), 4294967295u)));
    var var_1 = ~vec4<i32>(~0i, abs(abs(11354i)), _wgslsmith_sub_i32(2147483647i, -var_0.b.x), countOneBits(u_input.a));
    let var_2 = func_3(arg_0, 19380i) == !any(vec3<bool>(true, true, true));
    return !(!select(vec2<bool>(false, var_0.c.x > 44752u), vec2<bool>(var_2, var_2), vec2<bool>(var_2, !var_2)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -158f);
    let var_1 = select(select(vec2<bool>(true, true), func_2(Struct_1(u_input.a ^ arg_0.b.x, ~arg_0.b, arg_0.c)), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(step(var_0, var_0))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0))))), vec2<bool>(true, arg_0.b.x == -15187i), true);
    var var_2 = firstTrailingBit(arg_0.c.x);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) * -332f), var_0, _wgslsmith_f_op_f32(f32(-1f) * -142f));
    let var_4 = arg_0;
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(0i, _wgslsmith_div_i32(-23916i, ~u_input.a));
    var var_1 = Struct_1(-func_1(Struct_1(var_0.x >> (u_input.d.x % 32u), select(vec4<i32>(30695i, u_input.a, u_input.a, u_input.a), vec4<i32>(0i, 15795i, -1i, -43133i), false), ~u_input.d.yyw)), ~select(~(vec4<i32>(-1i, u_input.a, 2147483647i, u_input.a) >> (vec4<u32>(u_input.d.x, 10056u, 0u, 1u) % vec4<u32>(32u))), max(select(vec4<i32>(u_input.a, -2147483647i, 2147483647i, u_input.a), vec4<i32>(var_0.x, var_0.x, u_input.a, 2147483647i), vec4<bool>(false, true, true, false)), vec4<i32>(u_input.a, var_0.x, u_input.a, var_0.x)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true))), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.c.yww, select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 6000u), vec3<u32>(4294967295u, 65253u, u_input.c.x)), ~vec3<u32>(4294967295u, 5640u, u_input.d.x), vec3<bool>(false, false, false)), ~(~u_input.c.wyx)), firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 14017u, u_input.b) & vec3<u32>(1u, u_input.d.x, 4294967295u), ~u_input.d.xwz))));
    var_1 = Struct_1(-1i, var_1.b, firstTrailingBit(countOneBits(max(vec3<u32>(1u, 29084u, var_1.c.x) << (vec3<u32>(u_input.d.x, u_input.d.x, u_input.b) % vec3<u32>(32u)), u_input.c.wwz))));
    var var_2 = Struct_1(1i, countOneBits(~firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(21514i, u_input.a, 0i, var_1.a), vec4<i32>(1i, u_input.a, var_1.b.x, u_input.a)))), ~(~_wgslsmith_mult_vec3_u32(u_input.c.yyx, select(vec3<u32>(var_1.c.x, 1324u, u_input.b), var_1.c, vec3<bool>(true, false, false)))));
    var_2 = Struct_1(-26380i, -abs(vec4<i32>(~var_0.x, _wgslsmith_mult_i32(1i, var_1.a), 1i >> (1u % 32u), u_input.a)), vec3<u32>(577u, 1u ^ ~countOneBits(var_2.c.x), _wgslsmith_add_u32(~abs(var_2.c.x), _wgslsmith_mod_u32(min(var_1.c.x, 8212u), min(var_1.c.x, u_input.d.x)))));
    var_1 = Struct_1(_wgslsmith_mult_i32(1i, u_input.a), var_2.b, firstTrailingBit(var_2.c));
    let var_3 = Struct_1(-_wgslsmith_mod_i32(u_input.a, _wgslsmith_mult_i32(i32(-1i) * -48284i, firstTrailingBit(var_0.x))), -_wgslsmith_mod_vec4_i32(var_1.b << (u_input.c % vec4<u32>(32u)), countOneBits(var_2.b)) >> (firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(26034u, u_input.b, 0u, 29664u), _wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, u_input.c))) % vec4<u32>(32u)), vec3<u32>(35498u, u_input.c.x, u_input.c.x));
    let var_4 = var_3.c.x;
    var_2 = Struct_1(_wgslsmith_sub_i32(-var_1.a, i32(-1i) * -93902i), var_3.b, countOneBits(vec3<u32>(var_3.c.x, firstTrailingBit(reverseBits(18619u)), ~_wgslsmith_mult_u32(var_4, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.d.x), 511f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -126f)))), _wgslsmith_mod_u32(var_4 & _wgslsmith_mult_u32(5706u, var_4), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(2256u, var_1.c.x, var_4, 40726u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, var_4, var_4, u_input.d.x), abs(u_input.d)))), var_0);
}

