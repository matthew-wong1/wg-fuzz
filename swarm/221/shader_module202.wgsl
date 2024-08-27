struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: u32) -> f32 {
    let var_0 = select(!(!vec2<bool>(arg_0.b.a, arg_0.b.a || true)), !select(select(select(vec2<bool>(arg_0.b.a, false), vec2<bool>(arg_0.b.a, arg_0.b.a), false), select(vec2<bool>(true, arg_0.b.a), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, arg_0.b.a), vec2<bool>(true, false), arg_0.b.a)), !select(vec2<bool>(false, true), vec2<bool>(arg_0.b.a, arg_0.b.a), vec2<bool>(true, false)), any(select(vec4<bool>(arg_0.b.a, arg_0.b.a, arg_0.b.a, arg_0.b.a), vec4<bool>(arg_0.b.a, arg_0.b.a, false, arg_0.b.a), vec4<bool>(false, arg_0.b.a, true, false)))), vec2<bool>(((14407i >> (u_input.b % 32u)) >= select(arg_0.a.x, arg_0.a.x, true)) == !all(vec3<bool>(false, true, false)), true));
    var var_1 = Struct_2(arg_0.e, countOneBits(7484i));
    var var_2 = Struct_2(arg_0.e, ~_wgslsmith_div_i32(var_1.b, _wgslsmith_add_i32(max(1i, arg_1.x), abs(var_1.b))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -328f), ~u_input.d);
    var_2 = Struct_2(121f, _wgslsmith_sub_i32(arg_0.a.x, ~firstTrailingBit(arg_1.x) ^ ~_wgslsmith_clamp_i32(u_input.e, arg_1.x, arg_0.a.x)));
    return -612f;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_1((arg_1 << (u_input.a % 32u)) < u_input.b, ~_wgslsmith_clamp_vec2_u32(countOneBits(arg_0.zx), _wgslsmith_add_vec2_u32(arg_0.xx, vec2<u32>(u_input.a, 41884u)), reverseBits(vec2<u32>(arg_0.x, u_input.b))) & arg_0.xy);
    let var_1 = ~1u;
    var_0 = Struct_1(any(!(!select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, true)))), reverseBits(vec2<u32>(u_input.c, ~arg_1) << (~var_0.b % vec2<u32>(32u))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(func_3(Struct_3(vec3<i32>(_wgslsmith_clamp_i32(u_input.e, u_input.e, u_input.e), u_input.d, u_input.d & 2147483647i), Struct_1(var_0.a, vec2<u32>(arg_1, 35909u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1164f))), select(firstTrailingBit(vec4<u32>(arg_0.x, arg_0.x, 41401u, var_0.b.x)), vec4<u32>(61267u, 76961u, 1u, arg_0.x), select(vec4<bool>(false, false, var_0.a, var_0.a), vec4<bool>(false, false, var_0.a, var_0.a), false)), -640f), ~vec4<i32>(min(0i, u_input.d), _wgslsmith_clamp_i32(u_input.e, 1i, 2147483647i), 1i, 1i), ~arg_1)), -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.e, u_input.d), vec2<i32>(u_input.d, 22918i)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.a + 556f))));
    return Struct_1(var_0.a, ~vec2<u32>(80154u, _wgslsmith_mult_u32(arg_0.x, var_0.b.x)) >> (vec2<u32>(firstLeadingBit(arg_0.x), arg_1) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = true;
    let var_1 = arg_0;
    var var_2 = var_1;
    var var_3 = !select(vec2<bool>(var_0, false), !vec2<bool>(u_input.e <= u_input.e, all(vec3<bool>(false, true, arg_0.a))), true);
    var var_4 = all(vec3<bool>(false, false, !(!select(false, false, var_1.a))));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(1u), 86788u, arg_0.b.x, ~(~var_1.b.x) ^ _wgslsmith_sub_u32(reverseBits(29343u), countOneBits(arg_0.b.x))), ~abs(vec4<u32>(_wgslsmith_mod_u32(u_input.c, 28393u), abs(0u), var_2.b.x >> (var_2.b.x % 32u), var_2.b.x)));
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = max(firstLeadingBit(abs(reverseBits(vec3<u32>(u_input.c, 10325u, 49115u))) << (_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(79760u, 32726u, 4294967295u), vec3<u32>(u_input.a, 18698u, u_input.c)), vec3<u32>(u_input.a, 11483u, 4294967295u) << (vec3<u32>(56624u, u_input.a, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(abs(vec3<u32>(_wgslsmith_mult_u32(u_input.c, u_input.b), u_input.b, u_input.a)), vec3<u32>(func_4(func_2(vec3<u32>(60719u, u_input.b, 15599u), u_input.b)), 1u, 16572u)));
    let var_1 = Struct_2(927f, 2147483647i);
    var var_2 = _wgslsmith_add_vec4_i32(~firstLeadingBit(vec4<i32>(~u_input.e, u_input.d, u_input.d, var_1.b)), countOneBits(-(_wgslsmith_sub_vec4_i32(vec4<i32>(-104131i, u_input.e, u_input.d, var_1.b), vec4<i32>(var_1.b, var_1.b, var_1.b, -2147483647i)) | vec4<i32>(2147483647i, u_input.d, -2147483647i, u_input.d))));
    var var_3 = _wgslsmith_div_i32(abs(1i) >> (~(~u_input.b) % 32u), _wgslsmith_div_i32(63967i, -1i));
    let var_4 = var_1;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(u_input.e | 46716i, u_input.e << (u_input.a % 32u)), u_input.e)));
    let var_1 = Struct_2(-1349f, -46321i);
    let var_2 = _wgslsmith_add_vec3_i32(~(~abs(abs(vec3<i32>(var_0.x, var_0.x, 1i)))), _wgslsmith_div_vec3_i32(vec3<i32>(-36362i, min(var_0.x, -2147483647i), 12910i) | -vec3<i32>(u_input.d, var_0.x, -2147483647i), abs(vec3<i32>(2465i, func_1(var_1.a), var_0.x))));
    let var_3 = Struct_3(var_2, func_2(select(vec3<u32>(99758u, 4294967295u, 5163u & u_input.a), abs(~vec3<u32>(u_input.c, u_input.c, 21168u)), vec3<bool>(true, -1000f == var_1.a, true)), 0u), -1264f, ~(~abs(reverseBits(vec4<u32>(0u, u_input.c, u_input.c, 4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2429f * var_1.a)));
    var var_4 = var_3;
    let var_5 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_4.e, var_3.c, true)) * _wgslsmith_f_op_f32(exp2(var_3.c)))))));
    let x = u_input.a;
    s_output = StorageBuffer(517f, vec3<i32>(_wgslsmith_div_i32(var_2.x, -var_4.a.x), firstTrailingBit(_wgslsmith_mult_i32(var_2.x, _wgslsmith_clamp_i32(var_0.x, var_0.x, 11526i))), -89132i));
}

