struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    let var_0 = Struct_1(arg_0.a, ~arg_0.b);
    var var_1 = ~select(vec3<u32>(68056u, u_input.b.x | arg_0.a.x, u_input.b.x) & ~abs(arg_0.a.wxy), _wgslsmith_mod_vec3_u32(u_input.b, abs(vec3<u32>(0u, 46937u, arg_0.a.x)) << (min(vec3<u32>(var_0.a.x, arg_0.a.x, 57641u), vec3<u32>(var_0.a.x, 55568u, var_0.a.x)) % vec3<u32>(32u))), vec3<bool>(true, all(select(vec4<bool>(true, arg_1.x, arg_1.x, true), arg_1, arg_1)), true));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1280f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-603f)) + _wgslsmith_f_op_f32(550f + -383f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(957f)) * -1509f)))));
    let var_3 = _wgslsmith_add_i32(-max(~43924i, arg_0.b), ~_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(0i, u_input.c.x)), min(countOneBits(u_input.c.wz), vec2<i32>(-15444i, 0i) ^ vec2<i32>(u_input.c.x, arg_0.b))));
    let var_4 = var_2;
    return _wgslsmith_div_i32(_wgslsmith_add_i32(-_wgslsmith_mod_i32(2147483647i, 19587i), abs(reverseBits(var_0.b))) | ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 52903i, var_0.b), vec3<i32>(-56886i, var_0.b, -19460i)), ~vec3<i32>(-19766i, -2147483647i, u_input.c.x)), arg_0.b);
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<u32> {
    let var_0 = !select(arg_0, vec4<bool>(any(vec3<bool>(arg_0.x, false, true)), true, !select(arg_0.x, arg_0.x, false), any(arg_0.zy) && true), !select(select(arg_0, vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, true, arg_0.x)), arg_0, vec4<bool>(arg_0.x, true, true, arg_0.x)));
    let var_1 = Struct_1(~(~(~arg_2.a) | reverseBits(min(vec4<u32>(4294967295u, u_input.b.x, arg_3.x, 65037u), vec4<u32>(u_input.b.x, arg_2.a.x, arg_3.x, 1u)))), abs(~(-65434i)));
    let var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_f32(max(-2070f, -1062f));
    var_3 = 1501f;
    return reverseBits(arg_3);
}

fn func_2() -> vec3<bool> {
    let var_0 = ~(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.b.x), u_input.b), select(u_input.b.x, 4294967295u, true), u_input.b.x, 1u)) >> (firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.b.x, u_input.b.x, 59265u), min(vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, 14797u, u_input.b.x)))) % vec4<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(var_0.x, 31552u, u_input.b.x, var_0.x)), ~(var_0 >> (var_0 % vec4<u32>(32u)))), func_4(vec4<bool>(true, all(vec4<bool>(false, false, true, true)), true, any(vec4<bool>(true, false, false, true))), -35869i, Struct_1(vec4<u32>(u_input.b.x, var_0.x, var_0.x, u_input.b.x), func_3(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 44938u, u_input.b.x), u_input.a), vec4<bool>(true, true, false, true))), vec4<u32>(67621u, _wgslsmith_sub_u32(4294967295u, 1u), ~108862u, 1u & var_0.x))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~(-vec2<i32>(0i, 2147483647i)), u_input.c.zw), abs(u_input.c.zw)));
    let var_2 = all(select(vec4<bool>(true, all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false))), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false))), _wgslsmith_f_op_f32(ceil(767f)) >= -377f), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), true));
    var_1 = Struct_1(var_1.a, reverseBits(u_input.c.x));
    var_1 = Struct_1(~vec4<u32>(u_input.b.x, ~(~26455u), 18136u, ~_wgslsmith_add_u32(4294967295u, var_0.x)), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(var_1.b, 26045i, 0i)), u_input.c.zww >> (~vec3<u32>(4294967295u, 94810u, u_input.b.x) % vec3<u32>(32u))));
    return vec3<bool>(!(~_wgslsmith_dot_vec2_u32(var_0.yx, vec2<u32>(u_input.b.x, var_0.x)) > ~firstTrailingBit(93637u)), false, any(vec4<bool>(true, true, true, ~var_1.a.x == u_input.b.x)));
}

fn func_5(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = select(_wgslsmith_f_op_f32(step(-673f, -110f)) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 1305f) - _wgslsmith_f_op_f32(round(1513f))))), arg_0.x, true);
    let var_1 = !vec4<bool>(all(!(!vec4<bool>(true, false, arg_0.x, false))), all(vec4<bool>(true, false, arg_0.x, true)) & arg_0.x, false, -572f >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-140f, -2418f)))));
    let var_2 = Struct_1(~firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(26899u, 0u, 24597u), ~924u, reverseBits(1u), u_input.b.x)), min(-290i, u_input.c.x));
    let var_3 = var_2;
    var var_4 = !select(var_1, select(vec4<bool>(var_3.b <= 10710i, true, var_3.b >= var_3.b, true), var_1, var_1), !var_1);
    return Struct_1(select(select(vec4<u32>(0u, ~0u, ~1u, u_input.b.x), vec4<u32>(select(u_input.b.x, u_input.b.x, var_4.x), var_2.a.x >> (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_3.a.x, 11171u, u_input.b.x), vec4<u32>(36692u, 47581u, 4294967295u, u_input.b.x)), 1u), vec4<bool>(arg_0.x & true, !var_1.x, var_4.x, !var_1.x)), var_2.a, var_1), countOneBits(1i));
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-547f + _wgslsmith_f_op_f32(floor(204f)))) - -972f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1164f))) - 1456f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -791f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-524f)))))), 1000f);
    var var_1 = arg_0;
    let var_2 = -2147483647i;
    var_1 = arg_0;
    let var_3 = arg_0;
    return Struct_1(max(var_3.a, _wgslsmith_add_vec4_u32(vec4<u32>(~83241u, _wgslsmith_sub_u32(73315u, u_input.b.x), var_3.a.x, ~u_input.b.x), ~_wgslsmith_mod_vec4_u32(var_3.a, vec4<u32>(23425u, u_input.b.x, u_input.b.x, 19403u)))), arg_1 << ((min(firstLeadingBit(51679u), select(0u, u_input.b.x, true)) >> (_wgslsmith_mod_u32(_wgslsmith_sub_u32(38188u, arg_0.a.x), func_5(vec3<bool>(false, false, true), var_2).a.x) % 32u)) % 32u));
}

fn func_1() -> StorageBuffer {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1254f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -516f))))), _wgslsmith_f_op_f32(1145f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 177f) * -512f)), true)), -434f, 1089f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(442f, -2063f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))));
    let var_1 = func_6(func_5(func_2(), abs(~12756i)), _wgslsmith_sub_i32(2147483647i, 63505i));
    var var_2 = func_3(var_1, vec4<bool>(true, true, true, true));
    var var_3 = ~vec3<i32>(-u_input.a, -_wgslsmith_sub_i32(u_input.a << (0u % 32u), func_6(Struct_1(vec4<u32>(0u, u_input.b.x, 0u, var_1.a.x), -2147483647i), 38027i).b), ~_wgslsmith_add_i32(var_1.b, -var_1.b));
    var_2 = -_wgslsmith_dot_vec2_i32(var_3.zx ^ var_3.zy, abs(var_3.xy));
    return StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x & 1u, 96345u << (1u % 32u), 28933u) << (firstTrailingBit(~var_1.a.yzw) % vec3<u32>(32u)), vec3<u32>(func_6(Struct_1(vec4<u32>(var_1.a.x, 21679u, var_1.a.x, var_1.a.x), -54735i), -var_3.x).a.x, u_input.b.x, u_input.b.x ^ u_input.b.x)), vec2<i32>(_wgslsmith_dot_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_3.x, -1i, 8294i), u_input.c), u_input.c, all(vec4<bool>(false, true, false, false))), _wgslsmith_div_vec4_i32(vec4<i32>(-9441i, -57533i, var_1.b, 3742i), u_input.c)), u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

