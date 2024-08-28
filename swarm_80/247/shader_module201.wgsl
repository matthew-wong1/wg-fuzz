struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-340f, _wgslsmith_f_op_f32(max(1f, -374f))) - _wgslsmith_f_op_f32(f32(-1f) * -150f));
    let var_1 = -2147483647i;
    var var_2 = Struct_1(firstLeadingBit(~select(vec4<u32>(u_input.c.x, 3580u, 11408u, 1u), vec4<u32>(14456u, 32521u, u_input.c.x, u_input.c.x), true) << (~(~vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x)) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_0 | u_input.d.x, _wgslsmith_div_i32(arg_0, 2147483647i)), -2147483647i), max(select(u_input.b.x, -2147483647i, true) ^ _wgslsmith_add_i32(var_1, 1i), max(-2147483647i, arg_0 ^ 2147483647i)), arg_0, -countOneBits(_wgslsmith_mult_i32(arg_0, arg_0))), -2147483647i, _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x) | vec4<u32>(16817u, u_input.c.x, u_input.c.x, 39149u), countOneBits(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))) | vec4<u32>(0u, u_input.c.x, ~44942u, u_input.c.x), ~vec4<u32>(~89920u, u_input.c.x, u_input.c.x, ~u_input.c.x)));
    var_2 = Struct_1(~vec4<u32>(34862u, _wgslsmith_sub_u32(1u, u_input.c.x), _wgslsmith_div_u32(32312u, var_2.d.x) ^ 24651u, var_2.d.x), var_2.b, var_1, _wgslsmith_clamp_vec4_u32(~select(abs(vec4<u32>(u_input.c.x, 56970u, 15424u, 0u)), var_2.d | var_2.a, any(vec4<bool>(true, false, false, true))), vec4<u32>(var_2.a.x, u_input.c.x, _wgslsmith_div_u32(38382u, var_2.a.x), 74998u), abs(var_2.a ^ (var_2.d & var_2.a))));
    let var_3 = vec4<bool>(select(all(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)), select(true, true, true) || (select(true, true, true) || all(vec4<bool>(true, false, true, false))), true), false, true, any(vec4<bool>(all(vec2<bool>(false, true)), u_input.c.x == 4780u, true, true)) == ((countOneBits(var_2.d.x) << ((51206u >> (1u % 32u)) % 32u)) == ~(~u_input.c.x)));
    return ~(~u_input.c.x);
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<i32>(9161i, u_input.d.x, 29624i);
    var var_1 = Struct_1(vec4<u32>(u_input.c.x, reverseBits(u_input.c.x), ~(~(~u_input.c.x)), select(func_3(~(-28507i)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u), ~vec4<u32>(u_input.c.x, u_input.c.x, 39574u, u_input.c.x)), true && select(true, false, false))), -vec4<i32>(-2147483647i, var_0.x, u_input.d.x, u_input.a), var_0.x, max(vec4<u32>(~1u, 32912u, _wgslsmith_dot_vec2_u32(vec2<u32>(89965u, 1u), u_input.c), u_input.c.x), ~vec4<u32>(u_input.c.x, 110312u, 1u, u_input.c.x)));
    var_1 = Struct_1(var_1.d, _wgslsmith_add_vec4_i32(var_1.b, var_1.b), countOneBits(max(-2147483647i, -55796i)), ~vec4<u32>(var_1.d.x, u_input.c.x, var_1.a.x, _wgslsmith_dot_vec4_u32(var_1.d, ~vec4<u32>(1u, var_1.d.x, var_1.a.x, 19750u))));
    var_0 = u_input.d;
    var var_2 = true;
    return Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(countOneBits(1u), ~1u, 0u, 4294967295u), vec4<u32>(u_input.c.x, 0u, reverseBits(8261u) ^ ~var_1.a.x, _wgslsmith_sub_u32(~var_1.a.x, _wgslsmith_mod_u32(104650u, 4294967295u)))), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(var_1.b, select(var_1.b, vec4<i32>(var_1.c, 1i, var_1.c, var_1.b.x), vec4<bool>(false, false, false, true)), _wgslsmith_sub_vec4_i32(var_1.b, vec4<i32>(-30725i, var_1.b.x, 0i, -27672i))), -var_1.b) & var_1.b, ~41751i, ~var_1.a);
}

fn func_1() -> Struct_1 {
    let var_0 = 0i;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1((var_0.a & var_0.d) ^ ~var_0.a, vec4<i32>(reverseBits(-1i), 16766i, i32(-1i) * -47651i, var_0.b.x), ~4561i, abs(vec4<u32>(u_input.c.x, ~_wgslsmith_clamp_u32(var_0.d.x, u_input.c.x, 0u), ~firstLeadingBit(12428u), reverseBits(var_0.d.x))));
    var_0 = Struct_1(var_0.a, _wgslsmith_add_vec4_i32(~select(-var_0.b, var_0.b & var_0.b, vec4<bool>(false, true, true, true)), var_0.b), _wgslsmith_mult_i32(~abs(var_0.c), -45329i) >> ((4294967295u ^ _wgslsmith_sub_u32(17574u, min(3689u, var_0.a.x))) % 32u), _wgslsmith_div_vec4_u32(~vec4<u32>(~0u, var_0.a.x, _wgslsmith_add_u32(0u, 4294967295u), ~1u), countOneBits(~vec4<u32>(31109u, 1u, 1u, u_input.c.x))));
    var var_1 = firstLeadingBit(~vec3<u32>(var_0.d.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, var_0.a.x), var_0.d.x), select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, 4294967295u, var_0.d.x), vec4<u32>(u_input.c.x, u_input.c.x, 1u, 50837u)), firstTrailingBit(u_input.c.x), true)));
    var var_2 = var_0.d.x;
    var var_3 = Struct_1(var_0.d, abs(var_0.b), ~abs(~(var_0.c | -1i)), _wgslsmith_mult_vec4_u32(func_1().d, _wgslsmith_clamp_vec4_u32(~var_0.d, firstTrailingBit(var_0.d), func_2().d)));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_3.a.xz | var_1.zx), (_wgslsmith_clamp_vec3_i32(max(vec3<i32>(var_3.b.x, u_input.d.x, 0i), vec3<i32>(-1989i, u_input.d.x, var_0.c)), vec3<i32>(-1i, u_input.b.x, var_0.b.x) | u_input.d, var_3.b.yzx) | ~(~vec3<i32>(0i, -47254i, var_0.b.x))) >> ((var_0.a.xxy << (vec3<u32>(_wgslsmith_mod_u32(var_1.x, var_3.a.x), 0u, 28509u & var_1.x) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

