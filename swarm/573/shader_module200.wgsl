struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_5) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.c.x))))));
    var var_1 = select(!vec3<bool>(4294967295u < _wgslsmith_div_u32(4294967295u, arg_2.a.b.x), arg_2.b.x, arg_2.b.x), !select(!vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x), select(select(vec3<bool>(true, arg_2.b.x, arg_2.b.x), vec3<bool>(false, arg_2.b.x, true), arg_2.b.x), select(vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x), vec3<bool>(arg_2.b.x, true, arg_2.b.x), true), arg_2.b.x), select(vec3<bool>(false, true, true), vec3<bool>(true, true, arg_2.b.x), true)), any(!vec2<bool>(true, arg_2.b.x)));
    var var_2 = var_1.x;
    var_1 = vec3<bool>(true, !all(select(arg_2.b, select(vec2<bool>(false, arg_2.b.x), arg_2.b, var_1.x), var_1.zz)), arg_2.b.x);
    var_2 = true;
    return arg_2.a.a.zy;
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(~1u, u_input.b.x, Struct_5(Struct_1(vec3<f32>(1000f, 1520f, 1935f), vec4<u32>(67509u, arg_0, u_input.b.x, 0u), vec4<f32>(1402f, -1169f, 1038f, -1073f)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), u_input.b.x >> (1u % 32u), vec3<i32>(u_input.a, 10321i, u_input.a), _wgslsmith_f_op_f32(min(521f, 267f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 739f), vec2<f32>(-360f, -364f), false))))));
    var var_1 = !(!vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), true, true));
    let var_2 = vec3<bool>(false, true, !all(vec2<bool>(any(vec2<bool>(true, false)), all(vec3<bool>(var_1.x, var_1.x, var_1.x)))));
    var var_3 = max(firstTrailingBit(firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.a, -1i, u_input.a)))), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-1i, -2147483647i, u_input.a)), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-27833i, 2147483647i, 20418i, u_input.a), vec4<i32>(u_input.a, 49122i, 1i, -2147483647i))), vec3<i32>(max(0i, 2147483647i), firstLeadingBit(u_input.a), 344i)) | max(min(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(-1i, 1i, u_input.a) & vec3<i32>(-11271i, 2147483647i, -44110i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, 2147483647i), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)), -2147483647i, u_input.a >> (arg_0 % 32u))));
    var var_4 = _wgslsmith_f_op_f32(-var_0.a.x);
    return _wgslsmith_sub_u32(abs(select(1u, abs(0u) << (countOneBits(10115u) % 32u), false)), ~(~(firstTrailingBit(u_input.b.x) >> (4294967295u % 32u))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: bool, arg_3: vec2<i32>) -> f32 {
    let var_0 = Struct_3(vec2<f32>(1477f, -1000f));
    let var_1 = (func_2(1u) << (~43534u % 32u)) ^ 0u;
    var var_2 = Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, 117f)))), firstLeadingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(88735u, u_input.b.x, 46065u, 0u), vec4<u32>(u_input.b.x, 80473u, 4294967295u, 1u))), vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_div_f32(538f, var_0.a.x), all(vec4<bool>(false, true, arg_2, arg_0.x)))), -136f, _wgslsmith_f_op_f32(595f + _wgslsmith_f_op_f32(-var_0.a.x)))), select(!vec2<bool>(arg_0.x, 9084u <= var_1), vec2<bool>(true, true), false), var_1, -_wgslsmith_div_vec3_i32(arg_1.zzz, _wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_3.x, arg_3.x, arg_3.x), vec3<i32>(arg_3.x, arg_1.x, u_input.a), vec3<i32>(6652i, arg_3.x, 29043i) >> (u_input.b % vec3<u32>(32u)))), var_0.a.x);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(-1038f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.e - _wgslsmith_f_op_f32(-983f * -1000f)), 1956f), var_0.a.x, _wgslsmith_f_op_vec2_f32(func_3(firstLeadingBit(0u), reverseBits(u_input.b.x), Struct_5(Struct_1(vec3<f32>(var_2.a.a.x, var_2.a.c.x, var_2.e), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.c, u_input.b.x, 4294967295u, var_2.c), vec4<u32>(8984u, 14497u, 0u, 1u)), _wgslsmith_f_op_vec4_f32(var_2.a.c + vec4<f32>(1881f, var_2.e, 1439f, -184f))), !select(vec2<bool>(arg_2, true), var_2.b, arg_0.x), min(_wgslsmith_add_u32(21071u, 32204u), 27497u), ~(-arg_1.xxx), _wgslsmith_f_op_f32(abs(-1563f))))).x);
    let var_4 = abs(select(vec4<u32>(var_1, _wgslsmith_clamp_u32(u_input.b.x, firstLeadingBit(112748u), ~var_1), _wgslsmith_div_u32(var_1, ~u_input.b.x), ~1u), ~(~var_2.a.b), vec4<bool>(true, 25859u <= select(1u, u_input.b.x, false), !var_2.b.x, false)));
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(791f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, false), vec4<i32>(u_input.a, u_input.a, 2147483647i, -18012i), false, vec2<i32>(u_input.a, u_input.a))) + -292f)), _wgslsmith_div_f32(-898f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(2247f))))), _wgslsmith_f_op_f32(f32(-1f) * -1213f)), countOneBits(~vec4<u32>(u_input.b.x, 37580u, ~0u, u_input.b.x)), vec4<f32>(-1298f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(217f * -909f) + 322f), _wgslsmith_f_op_f32(-288f * -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1000f))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), vec4<u32>(u_input.b.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~u_input.b.x, ~var_0.b.x), 59825u, _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, var_0.b.x), u_input.b.x | u_input.b.x)), (_wgslsmith_add_u32(u_input.b.x, 74879u) << (~var_0.b.x % 32u)) & var_0.b.x, _wgslsmith_dot_vec2_u32(~max(vec2<u32>(var_0.b.x, u_input.b.x), u_input.b.zx), ~_wgslsmith_mult_vec2_u32(u_input.b.zy, u_input.b.xx))), var_0.c);
    let var_1 = vec3<i32>(-14202i, u_input.a, u_input.a & _wgslsmith_mult_i32(u_input.a, -6503i));
    var var_2 = var_0.a.x;
    let var_3 = Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, 432f, var_0.c.x)) + _wgslsmith_f_op_vec3_f32(var_0.a + var_0.c.zzx)), _wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(var_0.b.x, var_0.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(~0u, ~var_0.b.x, u_input.b.x >> (var_0.b.x % 32u), ~u_input.b.x), vec4<u32>(var_0.b.x, 0u, var_0.b.x, 4294967295u) & vec4<u32>(var_0.b.x, u_input.b.x, 19229u, 4294967295u)), var_0.c), vec2<bool>(true, any(vec4<bool>(true, true, any(vec2<bool>(true, true)), false))), 4294967295u, _wgslsmith_mod_vec3_i32(min(vec3<i32>(abs(0i), ~var_1.x, countOneBits(1i)), var_1), _wgslsmith_clamp_vec3_i32(var_1, ~firstTrailingBit(vec3<i32>(-27595i, 0i, u_input.a)), -vec3<i32>(2147483647i, u_input.a, u_input.a))), _wgslsmith_f_op_f32(-var_0.a.x));
    var var_4 = ~(~reverseBits(var_3.d.x));
    var var_5 = u_input.a;
    var_5 = _wgslsmith_dot_vec4_i32(vec4<i32>(max(u_input.a, 29155i) >> ((_wgslsmith_sub_u32(var_3.c, var_0.b.x) ^ ~22903u) % 32u), -(~firstLeadingBit(19681i)), -1i, 11030i), vec4<i32>(var_1.x, 0i, ~(-(u_input.a | 2147483647i)), abs(var_3.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(reverseBits(0i), -9432i, _wgslsmith_div_i32(i32(-1i) * -var_1.x, _wgslsmith_clamp_i32(min(var_3.d.x, 16432i), u_input.a, 2147483647i))), _wgslsmith_mod_u32(reverseBits(~_wgslsmith_div_u32(106520u, 8329u)), ~var_3.c), var_3.d.yy, _wgslsmith_mult_vec2_i32(vec2<i32>(16923i, 2147483647i), -vec2<i32>(var_3.d.x, var_1.x)) >> (var_3.a.b.zx % vec2<u32>(32u)));
}

