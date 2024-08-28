struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 17453u);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<u32> {
    global0 = countOneBits(vec2<u32>(63913u, global0.x));
    let var_0 = ~firstTrailingBit(firstTrailingBit(~(30938u | arg_1.c.x)));
    global0 = arg_2.c.xz;
    let var_1 = select(vec3<bool>(arg_2.d.x, all(arg_2.d), arg_0), vec3<bool>(true, true, true), (_wgslsmith_f_op_f32(step(-1318f, -1926f)) < -515f) | true);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-620f, 1000f, 313f, 1395f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1237f, -1423f, _wgslsmith_f_op_f32(select(557f, -294f, arg_2.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -559f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(752f, 1216f, 1061f, -438f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, _wgslsmith_f_op_f32(select(-1158f, -296f, false)), _wgslsmith_f_op_f32(select(516f, 1868f, var_1.x)), _wgslsmith_f_op_f32(trunc(587f))))), true)));
    return vec2<u32>(23329u, ~arg_2.c.x);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool) -> i32 {
    global0 = ~_wgslsmith_mod_vec2_u32(~func_3(arg_0, Struct_1(true, vec2<i32>(2147483647i, u_input.b.x), vec4<u32>(global0.x, u_input.c, u_input.c, 0u), vec2<bool>(false, arg_1)), Struct_1(arg_1, vec2<i32>(2147483647i, u_input.b.x), vec4<u32>(4294967295u, global0.x, 132572u, 4294967295u), vec2<bool>(arg_0, arg_1)), -vec2<i32>(29226i, u_input.b.x)), (vec2<u32>(global0.x, 25892u) & _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, u_input.a), vec2<u32>(u_input.a, global0.x), vec2<u32>(global0.x, 0u))) ^ vec2<u32>(func_3(false, Struct_1(true, vec2<i32>(u_input.b.x, 11534i), vec4<u32>(1u, global0.x, 0u, 1u), vec2<bool>(false, arg_2)), Struct_1(true, u_input.b.yz, vec4<u32>(1u, 11449u, 66948u, 18332u), vec2<bool>(true, false)), vec2<i32>(u_input.b.x, 13770i)).x, select(u_input.c, 1u, arg_2)));
    global0 = vec2<u32>(global0.x << ((~global0.x << (~27056u % 32u)) % 32u), ~(~78836u));
    var var_0 = vec4<u32>(_wgslsmith_div_u32(~1u, 4294967295u ^ (_wgslsmith_clamp_u32(global0.x, u_input.a, 1u) & min(u_input.a, global0.x))), u_input.a, u_input.a ^ 35542u, ~_wgslsmith_div_u32(_wgslsmith_mod_u32(~10186u, _wgslsmith_add_u32(1u, u_input.c)), min(global0.x | 24760u, _wgslsmith_mult_u32(global0.x, 23645u))));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(894f))));
    var var_2 = i32(-1i) * -41064i;
    return -38311i;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    var var_0 = Struct_1(all(!arg_2), _wgslsmith_add_vec2_i32(-(arg_1.b << (countOneBits(vec2<u32>(0u, arg_1.c.x)) % vec2<u32>(32u))), -(~vec2<i32>(2147483647i, u_input.b.x))), vec4<u32>(~(~arg_1.c.x), _wgslsmith_mult_u32(abs(62824u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, 34727u), vec3<u32>(global0.x, 0u, arg_0.x) & vec3<u32>(7108u, arg_0.x, 1u))), u_input.c, arg_1.c.x), vec2<bool>(select(all(select(vec3<bool>(true, false, true), vec3<bool>(false, arg_2.x, arg_1.a), vec3<bool>(true, arg_1.d.x, arg_1.a))), arg_2.x, _wgslsmith_sub_u32(108884u, 32717u) < _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c), arg_1.c.zw)), -2151f != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2241f)))));
    let var_1 = firstLeadingBit(~max(var_0.b, _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b.x, arg_1.b.x), var_0.b)) | _wgslsmith_div_vec2_i32(select(vec2<i32>(-61i, 1i), vec2<i32>(u_input.b.x, 18501i), any(arg_2.yz)), vec2<i32>(func_2(true, arg_1.d.x, arg_1.a), var_0.b.x)));
    let var_2 = Struct_1(arg_2.x, var_1, _wgslsmith_div_vec4_u32(arg_1.c, select(vec4<u32>(abs(arg_0.x), min(arg_1.c.x, 55961u), 6382u >> (arg_0.x % 32u), ~global0.x), vec4<u32>(firstLeadingBit(arg_1.c.x), ~global0.x, ~arg_1.c.x, ~global0.x), select(arg_2, vec4<bool>(true, true, true, true), true))), !vec2<bool>(false, arg_1.a));
    global0 = vec2<u32>(abs(countOneBits(_wgslsmith_sub_u32(arg_1.c.x, 1u))), 27696u);
    var var_3 = Struct_1(true, min(vec2<i32>(-(var_1.x | u_input.b.x), _wgslsmith_clamp_i32(-12708i, var_1.x, _wgslsmith_clamp_i32(0i, u_input.b.x, arg_1.b.x))), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b.x, var_2.b.x), -var_1)), ~vec4<u32>(60428u, 3307u, 1u, global0.x) >> (firstTrailingBit(vec4<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.x, 25935u), vec2<u32>(0u, 4649u)), 1u, 58426u)) % vec4<u32>(32u)), vec2<bool>(arg_2.x, select(true, !(31591u < arg_0.x), true)));
    return abs(~firstTrailingBit(37302u)) ^ (arg_0.x >> (30115u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_add_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(24105u, global0.x), func_1(vec3<u32>(0u, 0u, global0.x), Struct_1(false, vec2<i32>(u_input.b.x, -1i), vec4<u32>(82280u, u_input.a, 0u, global0.x), vec2<bool>(false, false)), vec4<bool>(true, true, true, false))), select(~abs(vec2<u32>(global0.x, u_input.c)), _wgslsmith_div_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, 4294967295u)) << (vec2<u32>(58589u, u_input.c) % vec2<u32>(32u)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), true)));
    global0 = reverseBits(abs(vec2<u32>(1u, min(u_input.c, u_input.a << (global0.x % 32u)))));
    global0 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(max(~vec3<u32>(global0.x, global0.x, u_input.c), vec3<u32>(global0.x, 0u, global0.x)), ~vec3<u32>(1u, global0.x, global0.x)), 4294967295u), ~40999u);
    let var_0 = ~abs(abs(select(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, 1u), true) | ~vec2<u32>(8850u, 0u)));
    var var_1 = Struct_1(_wgslsmith_sub_u32(~func_3(false, Struct_1(false, u_input.b.zx, vec4<u32>(u_input.a, var_0.x, var_0.x, global0.x), vec2<bool>(false, false)), Struct_1(false, vec2<i32>(u_input.b.x, -1i), vec4<u32>(var_0.x, u_input.c, u_input.a, 1u), vec2<bool>(true, true)), u_input.b.zy).x, 18039u) >= (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, global0.x), ~var_0) ^ min(var_0.x, max(4294967295u, u_input.c))), vec2<i32>(firstTrailingBit(~u_input.b.x & _wgslsmith_mod_i32(-6004i, -19081i)), i32(-1i) * -16938i), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 14974u, _wgslsmith_clamp_u32(52084u, 1u, 25361u), ~4294967295u), ~(~vec4<u32>(4294967295u, 1u, 66165u, 842u))) | select(vec4<u32>(17937u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(32215u, global0.x), vec2<u32>(u_input.a, 0u)), _wgslsmith_div_u32(var_0.x, 4294967295u)), countOneBits(vec4<u32>(58308u, 1u, u_input.a, u_input.a)), (u_input.c >> (4294967295u % 32u)) != ~17902u), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(false, false)), vec2<bool>(true, all(vec4<bool>(false, false, true, true)))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(u_input.b, firstTrailingBit(u_input.b)), 7803u, select(vec2<u32>(~countOneBits(39347u), ~40664u), ~(~select(vec2<u32>(var_1.c.x, 18987u), var_1.c.yz, false)), !(max(26186u, var_1.c.x) < var_1.c.x)));
}

