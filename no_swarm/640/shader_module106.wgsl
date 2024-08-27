struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(select(!arg_1.a, select(arg_1.a, select(vec3<bool>(arg_1.a.x, false, arg_1.a.x), vec3<bool>(true, arg_1.a.x, arg_1.a.x), any(vec2<bool>(arg_1.a.x, false))), (u_input.a >> (arg_1.d % 32u)) == u_input.a), arg_1.a.x), max(reverseBits(29625u >> (u_input.a % 32u)) >> (reverseBits(_wgslsmith_add_u32(4294967295u, arg_1.e.x)) % 32u), 1u), -1312f, 1u, vec3<u32>(arg_0, firstLeadingBit(arg_1.e.x), _wgslsmith_div_u32(12727u, abs(43036u)) | u_input.a));
    var var_1 = Struct_4((_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_1.c)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c, arg_1.c, true)))) && false, vec3<u32>(firstLeadingBit(1u), reverseBits(~var_0.e.x), abs(~(var_0.e.x ^ 1u))));
    let var_2 = Struct_3(Struct_1(arg_1.a, var_1.b.x, -2109f, 1u, max(var_1.b, var_0.e) ^ var_0.e));
    var_1 = Struct_4(true, firstLeadingBit(~abs(~vec3<u32>(23514u, 0u, arg_0))));
    var var_3 = _wgslsmith_sub_i32(-1549i, -6974i);
    return vec4<bool>(var_1.a, arg_0 >= _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_1.e.x, var_2.a.b & arg_1.e.x, 39721u), abs(max(arg_1.e, vec3<u32>(arg_0, 19435u, u_input.a)))), arg_1.a.x, false);
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: i32, arg_3: vec4<f32>) -> vec4<bool> {
    let var_0 = ~_wgslsmith_add_vec2_u32(arg_0.a.e.xz, vec2<u32>(arg_0.a.b, countOneBits(4294967295u)));
    var var_1 = 0i;
    var_1 = -1i;
    return func_3(~(~_wgslsmith_dot_vec3_u32(arg_0.a.e, ~arg_0.a.e)), Struct_1(vec3<bool>(1u <= _wgslsmith_add_u32(var_0.x, arg_0.a.d), arg_2 != (3521i << (arg_0.a.d % 32u)), true), arg_0.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.a.c, _wgslsmith_f_op_f32(ceil(arg_0.a.c)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - -1761f)), firstLeadingBit(0u), _wgslsmith_sub_vec3_u32(~arg_0.a.e, ~vec3<u32>(var_0.x, 20047u, var_0.x))));
}

fn func_1() -> u32 {
    let var_0 = select(vec3<bool>(true, true & all(vec3<bool>(false, false, true)), false), vec3<bool>(all(vec3<bool>(any(vec4<bool>(true, true, true, true)), select(false, false, true), true)), all(select(func_2(Struct_3(Struct_1(vec3<bool>(true, true, false), 18706u, 364f, 0u, vec3<u32>(u_input.a, 57132u, u_input.a))), -45744i, 3619i, vec4<f32>(-1169f, 1734f, 2003f, -918f)), func_3(72723u, Struct_1(vec3<bool>(true, true, true), u_input.a, 194f, 84015u, vec3<u32>(44694u, 1u, u_input.a))), true)), false || any(func_3(12591u, Struct_1(vec3<bool>(true, false, true), u_input.a, 209f, 38217u, vec3<u32>(u_input.a, u_input.a, 1u))))), vec3<bool>(true, _wgslsmith_f_op_f32(select(-108f, _wgslsmith_div_f32(-581f, 1191f), all(vec3<bool>(true, true, true)))) != _wgslsmith_f_op_f32(min(-728f, _wgslsmith_f_op_f32(868f + 236f))), any(vec3<bool>(true, true, true)) & true));
    let var_1 = var_0;
    var var_2 = !var_0.zz;
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(531f)), _wgslsmith_f_op_f32(-2188f + -772f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-752f, 242f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1553f, -1174f))))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-772f, -813f)))))))));
    let var_4 = Struct_2(Struct_1(var_1, 58464u | abs(22484u & u_input.a), 3125f, select(u_input.a, ~(10130u >> (0u % 32u)), func_3(u_input.a, Struct_1(var_1, 0u, var_3.x, u_input.a, vec3<u32>(u_input.a, u_input.a, 0u))).x), ~reverseBits(vec3<u32>(0u, 26008u, 0u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.x, -1017f, var_3.x, var_3.x), vec4<f32>(var_3.x, var_3.x, -1000f, var_3.x), var_0.x)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1405f, -1813f, var_3.x, -266f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-120f, var_3.x, var_3.x, 402f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -436f, var_3.x, 930f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(528f, var_3.x, var_3.x, var_3.x) * vec4<f32>(971f, 798f, var_3.x, -359f))))), Struct_1(!vec3<bool>(!var_2.x, var_1.x, true), ~0u, _wgslsmith_f_op_f32(f32(-1f) * -467f), ~(~u_input.a), max(~vec3<u32>(u_input.a, 94507u, u_input.a), max(vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<u32>(5685u, u_input.a, u_input.a))) & (vec3<u32>(1u, u_input.a, 95711u) << (vec3<u32>(81344u, 1u, u_input.a) % vec3<u32>(32u)))), var_3.x > var_3.x, abs(vec3<i32>(_wgslsmith_sub_i32(0i, -2147483647i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1274i, -4214i), vec3<i32>(0i, 47227i, 0i)), abs(1i), _wgslsmith_mult_i32(1i, 1i))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 87986u), vec2<u32>(u_input.a, 0u)), ~(~vec2<u32>(u_input.a, 3162u))), vec2<u32>(_wgslsmith_add_u32(u_input.a, ~max(45762u, 0u)), u_input.a));
    var_0 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), firstTrailingBit(vec2<u32>(122784u, 8478u))), ~u_input.a) ^ vec2<u32>(var_0.x, _wgslsmith_mod_u32(0u, ~u_input.a));
    var var_1 = (_wgslsmith_clamp_u32(~(~35405u), 1u, var_0.x) << (func_1() % 32u)) ^ (abs(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, 0u), ~u_input.a)) << (min(~(~var_0.x), u_input.a) % 32u));
    var var_2 = Struct_4(select(true, true, !any(vec2<bool>(true, true))), select(vec3<u32>(u_input.a ^ var_0.x, 4294967295u | u_input.a, ~28188u) & _wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.a, 28339u, u_input.a), vec3<u32>(28458u, 0u, 14081u), false), ~vec3<u32>(1u, 37552u, 1u)), _wgslsmith_mult_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, 1u), vec3<u32>(u_input.a, 13149u, u_input.a))), abs(~vec3<u32>(u_input.a, var_0.x, 1u))), any(vec2<bool>(true, true))));
    var var_3 = Struct_3(Struct_1(!(!func_3(4294967295u, Struct_1(vec3<bool>(true, false, false), u_input.a, 1786f, 1u, var_2.b)).xxw), 46034u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-162f, 672f) + -1423f))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 37779u, 4294967295u, var_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, var_0.x, 25913u), vec4<u32>(51598u, 17711u, 0u, u_input.a)), true), vec4<u32>(_wgslsmith_sub_u32(u_input.a, 40199u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4294967295u), var_2.b), u_input.a ^ u_input.a, ~53457u)), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(var_2.b, var_2.b), u_input.a, ~var_0.x), vec3<u32>(abs(var_2.b.x), 1u >> (u_input.a % 32u), ~50819u))));
    let var_4 = var_3.a.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x, var_3.a.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.c) * var_3.a.c), var_2.b.x, _wgslsmith_clamp_u32(0u, 0u, var_2.b.x));
}

