struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec4<bool> {
    var var_0 = ~1i;
    var var_1 = ~u_input.a.x << (u_input.b.x % 32u);
    let var_2 = Struct_1(-1i, 0u ^ (u_input.b.x >> (~firstLeadingBit(u_input.b.x) % 32u)));
    var_1 = u_input.a.x;
    var_0 = i32(-1i) * -(~((u_input.a.x ^ var_2.a) | u_input.a.x));
    return vec4<bool>(true, _wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a, var_2.a, var_2.a), vec3<i32>(0i, u_input.a.x, var_2.a)), firstTrailingBit(1i))) < var_2.a, any(vec2<bool>(false, false)), true);
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1105f + -668f))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(636f))))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var_0 = vec2<bool>(!(var_0.x && var_0.x) | (~u_input.b.x < 4294967295u), var_0.x);
    var var_1 = Struct_1(_wgslsmith_div_i32(abs(~71631i), u_input.a.x), countOneBits(_wgslsmith_add_u32(~u_input.b.x >> (4294967295u % 32u), _wgslsmith_add_u32(47205u, u_input.b.x))));
    var_1 = Struct_1(-2147483647i, 50383u ^ u_input.b.x);
    let var_2 = func_3();
    return Struct_1(firstTrailingBit(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x) << ((u_input.b.x & ~36381u) % 32u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_div_u32(35210u, 1u)), var_1.b), u_input.b.x));
}

fn func_1() -> vec4<bool> {
    let var_0 = func_2();
    let var_1 = func_2();
    var var_2 = func_3().zww;
    var_2 = vec3<bool>(true, true, true);
    var var_3 = 2147483647i;
    return vec4<bool>(var_2.x | false, var_2.x, true, all(!(!vec3<bool>(true, var_2.x, var_2.x))) | (var_2.x & true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec4<bool>(u_input.a.x < ~2147483647i, true, any(func_1()), all(vec2<bool>(true, true))), func_1(), vec4<bool>(true, false, !select(any(vec3<bool>(false, false, false)), true, true), false));
    var var_1 = ~max(~(85001u | u_input.b.x), _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 15989u, u_input.b.x), vec3<u32>(u_input.b.x, 13206u, u_input.b.x), var_0.x), firstTrailingBit(vec3<u32>(u_input.b.x, 4294967295u, 0u))) << (~min(0u, u_input.b.x) % 32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1685f)) + _wgslsmith_f_op_f32(-1285f - 225f)))), -733f));
    let var_3 = Struct_1((u_input.a.x << ((1u >> (_wgslsmith_mult_u32(80266u, 0u) % 32u)) % 32u)) | 35419i, u_input.b.x);
    var var_4 = min(vec4<i32>(abs(countOneBits(25429i)), _wgslsmith_add_i32(i32(-1i) * -3799i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, -41040i, var_3.a, var_3.a)), vec4<i32>(var_3.a, 0i, var_3.a, var_3.a) << (vec4<u32>(u_input.b.x, 1u, u_input.b.x, var_3.b) % vec4<u32>(32u)))), u_input.a.x, -16388i), ~vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, var_3.a), 0i, ~(~var_3.a), var_3.a << ((0u << (var_3.b % 32u)) % 32u)));
    var_4 = vec4<i32>(~var_4.x, countOneBits(-7522i), u_input.a.x, u_input.a.x);
    var var_5 = Struct_2(func_2(), -abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a.x, var_3.a, var_4.x, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(32741i, var_3.a, 2147483647i, var_4.x), vec4<i32>(18077i, var_4.x, var_4.x, 681i)))), !var_0.x);
    var_4 = _wgslsmith_add_vec4_i32(var_5.b << (vec4<u32>(var_3.b, ~_wgslsmith_add_u32(0u, 32617u), var_3.b, ~(~4294967295u)) % vec4<u32>(32u)), select(firstTrailingBit(-vec4<i32>(var_3.a, var_3.a, -1i, 20193i)), min(-vec4<i32>(var_5.b.x, -18087i, var_3.a, 1580i), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 29913i, var_4.x, var_4.x), vec4<i32>(var_5.b.x, 0i, var_4.x, var_3.a)) >> (~vec4<u32>(u_input.b.x, var_5.a.b, var_3.b, u_input.b.x) % vec4<u32>(32u))), vec4<bool>(-1115f < _wgslsmith_f_op_f32(ceil(var_2.x)), all(var_0.wyz) | true, var_0.x, select(var_5.c, false, true) & func_3().x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(var_2)), vec3<u32>(~firstTrailingBit(var_3.b), 13467u, _wgslsmith_dot_vec4_u32(vec4<u32>(50948u, ~67615u, 37550u, 4294967295u), ~(vec4<u32>(1u, 1u, 1u, var_5.a.b) ^ vec4<u32>(8540u, u_input.b.x, 1u, 17668u)))), ~_wgslsmith_div_vec3_u32(min(vec3<u32>(var_5.a.b, 4294967295u, var_5.a.b) ^ vec3<u32>(var_5.a.b, var_3.b, 100083u), select(vec3<u32>(var_3.b, 1u, u_input.b.x), vec3<u32>(32284u, 4294967295u, 60689u), var_0.www)), ~reverseBits(vec3<u32>(var_3.b, 41033u, var_3.b))), _wgslsmith_mod_i32(~(56856i << (var_5.a.b % 32u)), _wgslsmith_sub_i32(0i, var_3.a)), -11189i);
}

