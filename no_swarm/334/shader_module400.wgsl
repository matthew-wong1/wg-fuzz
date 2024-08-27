struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: f32) -> vec4<i32> {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(58720u, ~u_input.a, 4294967295u), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(1855u, u_input.a, u_input.a), vec3<u32>(0u, 67276u, 0u)))), 70999u);
    var var_1 = Struct_4(_wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(~0u), max(_wgslsmith_div_u32(4945u, u_input.a), ~var_0.x)), vec2<u32>(~u_input.a >> (1u % 32u), min(~var_0.x, 106695u))), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(-868i), -(~0i)), vec2<i32>(~1i, -_wgslsmith_add_i32(-4454i, -88004i))), ~u_input.a ^ ~u_input.a);
    return vec4<i32>(2147483647i, _wgslsmith_mult_i32(1i, 81778i), _wgslsmith_clamp_i32(var_1.b, var_1.b, ~(i32(-1i) * -1i)), 0i);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec2<u32>, arg_3: u32) -> Struct_5 {
    var var_0 = select(!any(select(select(vec4<bool>(arg_1, arg_0, arg_1, false), vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(false, arg_0, arg_0, arg_1)), vec4<bool>(true, true, true, arg_0), !vec4<bool>(arg_1, true, arg_1, false))), !any(vec2<bool>(arg_0, all(vec3<bool>(arg_1, arg_0, arg_1)))), reverseBits(_wgslsmith_div_i32(i32(-1i) * -46446i, ~(-66069i))) >= -_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 44365i, 1i), select(vec3<i32>(-1i, -2147483647i, -85269i), vec3<i32>(-19992i, -2216i, -1i), vec3<bool>(false, false, true))));
    var var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(~(~vec4<i32>(1i, 2147483647i, 56107i, -599i)), func_3(_wgslsmith_f_op_f32(abs(-673f)), -304f)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 71115u, 19640u), vec3<u32>(arg_3, 4294967295u, 6846u)), ~arg_3, _wgslsmith_sub_u32(arg_3, arg_3), 139107u), ~countOneBits(vec4<u32>(u_input.a, 0u, arg_2.x, arg_3))) % vec4<u32>(32u)), min(vec4<i32>(countOneBits(-1i), 1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -8570i, -5787i, 2147483647i), vec4<i32>(-2147483647i, 3303i, 48309i, 2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(-55129i, 0i, 13622i, -1i), vec4<i32>(-21052i, 16019i, -278i, 18266i)))), ~(~abs(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, -216i)))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1058f)), -1592f, -1280f, 585f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2328f, 1286f, -631f, 1203f)))), arg_3, Struct_1(arg_3), -884f);
    let var_3 = !any(!vec2<bool>(arg_1, false));
    var_1 = select(~(~((vec4<i32>(var_1.x, 2147483647i, -12080i, var_1.x) & vec4<i32>(var_1.x, var_1.x, -9254i, var_1.x)) >> (vec4<u32>(0u, arg_3, 0u, arg_3) % vec4<u32>(32u)))), abs(-(~vec4<i32>(-32719i, 0i, 18569i, 1i)) & vec4<i32>(2147483647i, var_1.x, select(var_1.x, 2147483647i, false), -11156i << (u_input.a % 32u))), !(!var_3));
    return Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_2.a))), ~(~(5593u | var_2.b)), Struct_1(14050u), var_2.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d, var_2.d, var_2.a.x, var_2.d) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-537f, -403f, -557f, var_2.a.x), vec4<f32>(-719f, 734f, 1378f, -693f))))))), ~var_1.x);
}

fn func_1() -> i32 {
    let var_0 = func_2(all(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), true)), true, vec2<u32>(u_input.a, ~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 1u, 1u)), firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 0u)))), ~21670u);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(var_0.b)), var_0.a.a, var_0.b.x < _wgslsmith_f_op_f32(max(-497f, _wgslsmith_f_op_f32(1486f - var_0.a.d)))));
    var var_2 = Struct_5(var_0.a, func_2(all(vec4<bool>(true, any(vec2<bool>(true, true)), true, true)), false, _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, var_0.a.b), vec2<u32>(4294967295u, 0u)), vec2<u32>(var_0.a.c.a, u_input.a) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))), ~vec2<u32>(var_0.a.c.a, u_input.a)), countOneBits(1u)).a.a, 33749i);
    var_2 = var_0;
    var var_3 = Struct_5(var_2.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(var_0.a.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -484f), _wgslsmith_f_op_f32(min(-1000f, var_2.a.d)), var_0.a.a.x, _wgslsmith_f_op_f32(-var_2.b.x))))), var_2.c);
    return countOneBits(_wgslsmith_div_i32((1i >> (var_0.a.b % 32u)) ^ var_2.c, 5091i)) << (min(u_input.a, var_2.a.c.a) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(33413i, -43203i, 1i), select(vec3<i32>(-35032i, 84704i, -30176i), vec3<i32>(-1483i, 0i, 37239i), vec3<bool>(true, true, false))), firstTrailingBit(i32(-1i) * -30246i)), func_1(), countOneBits(-func_3(-1000f, -1915f).x), abs(firstLeadingBit(0i))));
    var_0 = _wgslsmith_mod_vec4_i32(~abs(vec4<i32>(func_1(), _wgslsmith_div_i32(var_0.x, 1i), _wgslsmith_add_i32(2147483647i, -1i), var_0.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(var_0.x, 13050i, var_0.x, 2147483647i)) ^ vec4<i32>(var_0.x ^ -28548i, 1i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(-38663i, var_0.x, -10563i, 20422i))), select(~_wgslsmith_div_vec4_i32(vec4<i32>(7824i, var_0.x, 2147483647i, 1i), vec4<i32>(2147483647i, 0i, -64408i, 1i)), ~vec4<i32>(var_0.x, 4843i, 29872i, -2147483647i) | -vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(70492i >= var_0.x, all(vec4<bool>(false, true, true, false)), false, any(vec4<bool>(false, true, true, false)))), vec4<i32>(~var_0.x, 1i, ~_wgslsmith_clamp_i32(22459i, -2147483647i, -16832i), abs(var_0.x))));
    let var_1 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), select(select(vec2<bool>(true, var_0.x < 4019i), vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(true, true, false, false)))), !vec2<bool>(any(vec2<bool>(true, true)), false), !select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec4<bool>(true, true, false, false)))));
    let var_2 = ~(~(~(~vec3<u32>(u_input.a, u_input.a, u_input.a) >> (~vec3<u32>(15508u, u_input.a, 4294967295u) % vec3<u32>(32u)))));
    var_0 = _wgslsmith_mult_vec4_i32(abs(-vec4<i32>(-2147483647i, var_0.x, var_0.x, var_0.x) >> (min(vec4<u32>(var_2.x, u_input.a, 1u, 1u), vec4<u32>(96422u, 74121u, 5235u, 1u)) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_sub_i32(0i, 15670i), -var_0.x, -16120i, var_0.x) << (firstTrailingBit(vec4<u32>(var_2.x, 1u, u_input.a, 7451u)) % vec4<u32>(32u))) ^ ~vec4<i32>(var_0.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-2147483647i, -24324i, -31071i), 1i), ~(var_0.x ^ var_0.x), var_0.x);
    var var_3 = func_2(any(vec2<bool>(var_1.x, all(select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, true), var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(786f * 297f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -806f))) >= _wgslsmith_f_op_f32(ceil(968f)), reverseBits(~(vec2<u32>(4294967295u, var_2.x) | ~var_2.yx)), min(~(~u_input.a), 4294967295u)).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -582f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1151f)))))), ~u_input.a, vec3<i32>(var_0.x << (u_input.a % 32u), var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-2147483647i, -6259i), func_2(false, var_1.x, var_2.xy, 97586u).c, var_0.x >> (69570u % 32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(-15416i, var_0.x, var_0.x), var_0.xzw))), _wgslsmith_mult_vec4_u32(~(vec4<u32>(32770u, 0u, 1u, u_input.a) & vec4<u32>(11278u, var_2.x, 56642u, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 1u), vec4<u32>(60077u, u_input.a, u_input.a, var_2.x)) << (firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u)) % vec4<u32>(32u))) >> ((vec4<u32>(u_input.a | 0u, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, u_input.a, u_input.a), var_2), 2645u) << (max(select(vec4<u32>(var_2.x, 75017u, var_2.x, 0u), vec4<u32>(var_2.x, 1u, 1u, 41843u), vec4<bool>(false, var_1.x, var_1.x, var_1.x)), vec4<u32>(60070u, 0u, 21126u, u_input.a) << (vec4<u32>(var_2.x, var_2.x, 14739u, var_2.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(788f, 948f, var_1.x))))))));
}

