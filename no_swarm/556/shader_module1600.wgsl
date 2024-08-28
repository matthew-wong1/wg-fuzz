struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2() -> Struct_4 {
    let var_0 = 38177u;
    var var_1 = Struct_4(Struct_3(u_input.a.x, ~_wgslsmith_clamp_u32(1u, ~u_input.c, 0u)), _wgslsmith_sub_i32(-12097i, 1660i));
    var_1 = Struct_4(var_1.a, -var_1.b);
    let var_2 = Struct_4(Struct_3(~(_wgslsmith_mod_i32(u_input.a.x, var_1.b) | u_input.a.x), ~33486u | (var_0 & 0u)), u_input.a.x);
    var var_3 = var_2;
    return Struct_4(var_1.a, var_3.a.a);
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1229f, _wgslsmith_div_f32(599f, -1000f)))))));
    let var_1 = !select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), any(vec3<bool>(false, true, false)) || false), true);
    let var_2 = reverseBits(-(0i & arg_0.b) | arg_0.b) < ~(-20002i);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-204f, -1547f, var_2))) - -1898f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-464f)))), -1137f)));
    var var_4 = _wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.a.x), ~vec2<i32>(u_input.a.x, 44943i)), vec2<i32>(~u_input.a.x, _wgslsmith_add_i32(2147483647i, u_input.a.x))), max(arg_0.a.a, abs(arg_0.b)), abs(func_2().a.a));
    return -_wgslsmith_add_i32(arg_0.b, -(~u_input.a.x));
}

fn func_1() -> Struct_3 {
    var var_0 = 0i;
    var_0 = ~u_input.a.x;
    var_0 = max(-24794i, ~(-min(0i, -2319i))) << ((u_input.b >> (~0u % 32u)) % 32u);
    var var_1 = u_input.a.x;
    var_1 = -func_3(func_2());
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec3<u32>(~abs(abs(_wgslsmith_mult_u32(37620u, var_0.b))), func_2().a.b, ~4294967295u);
    let var_2 = Struct_2(abs(_wgslsmith_mod_i32(312i, func_1().a)), Struct_1(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.c, var_1.x), vec3<u32>(4294967295u, u_input.c, 4294967295u), vec3<u32>(11673u, var_0.b, u_input.b)) & countOneBits(vec3<u32>(4369u, var_0.b, 4294967295u)), ~(~vec3<u32>(var_0.b, 9732u, u_input.b)), all(vec2<bool>(true, true))), ~_wgslsmith_mult_i32(-2147483647i, 1i), vec4<i32>(var_0.a, _wgslsmith_div_i32(func_3(Struct_4(Struct_3(1i, var_1.x), 13488i)), 40734i), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_0.a, 45097i), vec4<i32>(u_input.a.x, 2147483647i, -2147483647i, 0i)), -var_0.a), ~reverseBits(u_input.a.x))), u_input.a.x, Struct_1(_wgslsmith_add_vec3_u32(~(~vec3<u32>(27511u, var_0.b, var_0.b)), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(1u, var_1.x, 8183u)), vec3<u32>(var_1.x, 35672u, var_0.b))), -9600i, vec4<i32>(_wgslsmith_dot_vec2_i32(min(u_input.a, u_input.a), vec2<i32>(u_input.a.x, -1i)), ~59164i, var_0.a, u_input.a.x)), firstLeadingBit(_wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, 13986i, 15498i, -31274i), vec4<i32>(var_0.a, 2147483647i, -2147483647i, -7209i)) & reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, u_input.a.x, var_0.a, -2147483647i), vec4<i32>(u_input.a.x, 54382i, -1i, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, var_0.a, var_0.a)))));
    var var_3 = var_2;
    var var_4 = var_3.b;
    var var_5 = Struct_4(Struct_3(-11825i, ~(~_wgslsmith_dot_vec2_u32(var_3.b.a.zy, var_4.a.xy))), var_0.a);
    var var_6 = -((u_input.a.x | -var_2.b.c.x) << (72343u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(-vec2<i32>(~u_input.a.x, max(var_4.c.x, 1i)), ~(~(-var_2.e.zx))), vec3<i32>(-2147483647i, var_2.e.x, 14591i << ((_wgslsmith_div_u32(0u, var_4.a.x) << (31353u % 32u)) % 32u)), -11981i, var_4.c.yy, abs(~(~vec4<u32>(var_0.b, 33208u, 1u, 1u)) >> (_wgslsmith_add_vec4_u32(max(vec4<u32>(var_2.b.a.x, 0u, 70070u, 35748u), vec4<u32>(var_1.x, var_1.x, var_5.a.b, 1u)), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u) ^ vec4<u32>(21834u, 0u, var_1.x, var_3.d.a.x)) % vec4<u32>(32u))));
}

