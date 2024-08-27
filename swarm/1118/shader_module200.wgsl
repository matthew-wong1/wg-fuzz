struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = min(12263u, u_input.d >> (1u % 32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -348f));
    var var_2 = _wgslsmith_add_vec2_u32(firstLeadingBit(~vec2<u32>(1u, 1u)), ~(~(vec2<u32>(var_0, var_0) << (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 77387u), vec2<u32>(0u, var_0)) % vec2<u32>(32u)))));
    var var_3 = max(vec2<u32>(1u, ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 0u, 4294967295u, u_input.d)), vec4<u32>(var_0, 0u, var_2.x, 4294967295u))), min(abs(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0, u_input.d), vec2<u32>(4294967295u, u_input.a)))), min(vec2<u32>(_wgslsmith_clamp_u32(0u, u_input.d, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(62738u, 39674u), vec2<u32>(var_0, var_2.x))), _wgslsmith_mult_vec2_u32(select(vec2<u32>(var_2.x, 41243u), vec2<u32>(var_2.x, var_0), false), ~vec2<u32>(var_2.x, 1u)))));
    var_3 = select(_wgslsmith_mod_vec2_u32(~(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, var_2.x), vec2<u32>(51146u, 1u))), _wgslsmith_mod_vec2_u32(reverseBits(max(vec2<u32>(0u, var_0), vec2<u32>(var_0, var_3.x))), select(vec2<u32>(59906u, var_3.x), vec2<u32>(var_0, 24586u) | vec2<u32>(var_2.x, 4294967295u), vec2<bool>(false, true)))), ~(~select(vec2<u32>(u_input.d, 13943u) >> (vec2<u32>(u_input.d, var_0) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_3.x, 32829u), vec2<u32>(4294967295u, var_2.x)), true)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)))));
    return 1i;
}

fn func_2() -> Struct_1 {
    var var_0 = ~_wgslsmith_mult_i32(~(~(-21083i)), _wgslsmith_mult_i32(func_3(), min(u_input.e.x, u_input.e.x))) < u_input.e.x;
    return Struct_1(any(vec2<bool>(true, true)));
}

fn func_1() -> bool {
    let var_0 = !(!(!vec4<bool>(u_input.d > u_input.d, select(true, true, true), true, any(vec4<bool>(false, false, true, false)))));
    var var_1 = var_0.wz;
    var var_2 = Struct_1(any(!vec3<bool>(all(var_0), true, true)));
    var_2 = func_2();
    let var_3 = func_2();
    return (!func_2().a && var_0.x) || (u_input.e.x > 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(func_1(), func_1() && true);
    var_0 = vec2<bool>(var_0.x, 2147483647i <= ~(-u_input.b));
    var_0 = !(!vec2<bool>(var_0.x, var_0.x));
    var var_1 = _wgslsmith_sub_vec3_i32(u_input.e, vec3<i32>(_wgslsmith_div_i32(abs(reverseBits(43557i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.e.x, u_input.b, -68885i), vec4<i32>(1i, 3362i, 1i, 14635i)), i32(-1i) * -2147483647i)), u_input.e.x, _wgslsmith_mod_i32((i32(-1i) * -7676i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.b, -32194i, 13626i), vec4<i32>(u_input.b, u_input.b, u_input.e.x, 49549i)), firstLeadingBit(0i))));
    var var_2 = Struct_1(true & var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(var_1.x, 15042i, u_input.e.x, -2147483647i)), _wgslsmith_mult_vec4_i32(abs(~vec4<i32>(2147483647i, var_1.x, u_input.e.x, -2147483647i)), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 0i, 5648i), vec4<i32>(var_1.x, 1i, var_1.x, u_input.c.x))))), ~u_input.e, _wgslsmith_sub_i32(u_input.c.x, u_input.c.x) ^ 2147483647i);
}

