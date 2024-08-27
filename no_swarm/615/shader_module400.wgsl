struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-381f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(238f - 576f) * _wgslsmith_div_f32(518f, 1888f))))), _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, 1i), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), select(u_input.a.x, -15636i, false))) < _wgslsmith_dot_vec3_i32(vec3<i32>(-40719i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 25304i, u_input.c, u_input.c), vec4<i32>(39259i, u_input.c, u_input.c, u_input.c))), u_input.a.yzz), Struct_1(vec4<u32>(u_input.b.x, 0u, ~(u_input.e.x & u_input.b.x), 4294967295u)), 47744u);
    let var_1 = abs(u_input.a.wy) >> (vec2<u32>(25557u, 4294967295u) % vec2<u32>(32u));
    let var_2 = firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(-52928i, u_input.a.x), -26685i), abs(u_input.c), min(~(-31754i), countOneBits(-39289i))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(5755i, u_input.a.x, var_1.x), u_input.a.xzx), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a.wzw, u_input.a.wyz), u_input.a.xzx ^ vec3<i32>(var_1.x, var_1.x, u_input.c)), u_input.a.wwy)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(var_0.a)), var_0.b, Struct_1(var_0.c.a), u_input.d);
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1167f)), _wgslsmith_f_op_f32(ceil(-121f)), _wgslsmith_f_op_f32(f32(-1f) * -156f)) * vec3<f32>(-844f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1365f * var_0.a)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(677f, var_0.a, var_0.a)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, -1366f) + _wgslsmith_f_op_f32(min(610f, var_0.a))), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))));
    return reverseBits(firstLeadingBit(_wgslsmith_sub_i32(2147483647i, abs(reverseBits(var_2.x)))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = vec3<i32>(~(-2147483647i), func_3(), u_input.c);
    var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(abs(var_0.x), abs(var_0.x)), -59961i), vec3<i32>(u_input.a.x, u_input.a.x, ~(-2147483647i)) << (~vec3<u32>(u_input.d, 4294967295u, 4294967295u) % vec3<u32>(32u)), ~_wgslsmith_clamp_vec3_i32(abs(u_input.a.zzx), reverseBits(vec3<i32>(28308i, u_input.a.x, -31657i)), -vec3<i32>(18562i, var_0.x, var_0.x))), ~u_input.a.yww);
    var_0 = u_input.a.xwx;
    var var_1 = Struct_2(-1000f, !(!arg_0.x), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(~0u, ~82784u, u_input.e.x, u_input.e.x), countOneBits(vec4<u32>(u_input.e.x, 21976u, u_input.e.x, 5130u) | vec4<u32>(u_input.e.x, 62545u, 63949u, u_input.e.x)))), ~(~u_input.d));
    let var_2 = Struct_3(31765i);
    return var_1.c;
}

fn func_1() -> vec3<bool> {
    var var_0 = func_2(vec4<bool>(true, all(vec4<bool>(any(vec3<bool>(true, false, false)), true, all(vec2<bool>(false, true)), all(vec2<bool>(true, false)))), true, all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), 1i < u_input.a.x))));
    let var_1 = var_0.a.x;
    let var_2 = u_input.c ^ -(~(-1i));
    let var_3 = var_0.a.x;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1234f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1612f - 1649f)))));
    return vec3<bool>(any(vec3<bool>(true, true, true)) || (~_wgslsmith_add_i32(u_input.c, -40815i) == min(1i, var_2)), !(false && (true || all(vec4<bool>(true, false, false, false)))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!func_1()) && true;
    let var_1 = Struct_3(u_input.c);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-972f + 350f) * _wgslsmith_f_op_f32(344f + _wgslsmith_f_op_f32(sign(-427f)))), true, Struct_1(~vec4<u32>(u_input.d, 1u, u_input.e.x, 1u) << (~(~vec4<u32>(57089u, 4294967295u, u_input.e.x, 0u)) % vec4<u32>(32u))), max(59892u, ~u_input.e.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-197f, _wgslsmith_f_op_f32(-1100f * _wgslsmith_f_op_f32(-var_2.a)), var_2.a)));
    var_0 = !var_2.b;
    let var_4 = ~min(_wgslsmith_mod_vec3_i32(firstTrailingBit(abs(u_input.a.xwz)), vec3<i32>(1i, _wgslsmith_mult_i32(-2147483647i, var_1.a), _wgslsmith_sub_i32(4266i, 1i))), vec3<i32>(func_3(), _wgslsmith_dot_vec3_i32(u_input.a.zwx, -vec3<i32>(35637i, var_1.a, u_input.c)), u_input.c));
    let var_5 = _wgslsmith_f_op_f32(-var_2.a);
    var var_6 = Struct_4(vec2<bool>(var_2.b, var_2.b), vec3<u32>(min(abs(_wgslsmith_dot_vec2_u32(var_2.c.a.xz, vec2<u32>(0u, 0u))), 84892u), (~12900u | ~var_2.d) >> (u_input.e.x % 32u), ~(~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1633f) - _wgslsmith_f_op_f32(step(var_3.x, 576f)))))), ~u_input.a.yz);
}

