struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec3<i32>) -> f32 {
    let var_0 = !any(vec4<bool>(true, arg_1.a.d.x && false, all(vec2<bool>(false, true)), all(vec3<bool>(false, false, false)))) & (-(arg_1.a.b.x & _wgslsmith_sub_i32(28679i, 0i)) > arg_2.x);
    var var_1 = vec4<bool>(true, !all(select(select(vec2<bool>(false, arg_1.a.d.x), arg_1.a.d.xy, var_0), !arg_1.a.d.xz, !arg_1.a.d.xx)), true, !arg_1.a.d.x);
    let var_2 = arg_1.a;
    let var_3 = vec4<bool>(false, var_2.d.x, true, 1i < min(abs(-33569i), -u_input.b));
    var_1 = select(var_3, var_3, select(!select(var_3, !var_3, var_3), vec4<bool>(false, false, all(vec4<bool>(true, false, false, var_3.x)), !(!var_3.x)), var_3.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(466f, -267f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-345f)), _wgslsmith_f_op_f32(f32(-1f) * -843f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-540f + -340f)), all(vec4<bool>(true, var_2.d.x, false, arg_1.a.d.x)) || true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(412f - 1000f) * _wgslsmith_f_op_f32(696f - -2557f)))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(~_wgslsmith_add_u32(firstTrailingBit(4294967295u), 1u), u_input.d.zy, (u_input.d.x >> (1u % 32u)) & (0i << (0u % 32u)), vec3<bool>(all(vec2<bool>(false, false)), true, _wgslsmith_f_op_f32(f32(-1f) * -198f) == _wgslsmith_f_op_f32(func_3(vec4<u32>(75146u, 25115u, 1u, 1u), Struct_3(Struct_1(14905u, vec2<i32>(u_input.c, u_input.a), u_input.b, vec3<bool>(false, false, true))), vec3<i32>(u_input.b, u_input.b, u_input.c))))), _wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_add_i32(u_input.c, _wgslsmith_div_i32(2147483647i, 21434i)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(51106i, -38020i, -2147483647i, u_input.c), vec4<i32>(-50259i, 1i, 12615i, u_input.b)), vec4<i32>(u_input.b, 8615i, -47371i, -18720i) << (vec4<u32>(142766u, 21406u, 1u, 45664u) % vec4<u32>(32u))), 1i), vec4<i32>(u_input.d.x, -_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(0i, 39411i, 1i)), -_wgslsmith_div_i32(u_input.a, u_input.b), select(_wgslsmith_mult_i32(30844i, 53744i), -u_input.c, all(vec3<bool>(false, true, false))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(510f, 1625f, 306f, -1254f) + vec4<f32>(764f, -1382f, 1000f, -1092f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1525f, 312f, 978f, -645f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-354f, 230f, 2359f, -305f), vec4<f32>(-773f, 570f, -1000f, 1000f)))))), u_input.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(240f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(622f, 1124f), 302f, all(vec4<bool>(false, true, true, false))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(736f, -1230f))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-503f, -887f)))) - vec2<f32>(_wgslsmith_f_op_f32(1263f * 495f), _wgslsmith_f_op_f32(f32(-1f) * -1403f)))));
    let var_1 = Struct_3(var_0.a);
    var var_2 = Struct_1(~(122885u >> (_wgslsmith_mod_u32(~var_0.a.a, 0u) % 32u)), ~(-firstLeadingBit(reverseBits(var_1.a.b))), u_input.d.x, select(vec3<bool>(!var_1.a.d.x, var_0.a.d.x || var_1.a.d.x, select(all(vec4<bool>(var_1.a.d.x, true, var_0.a.d.x, true)), true, var_0.a.d.x)), var_1.a.d, !var_0.a.d.x));
    let var_3 = Struct_1(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(13068u, 59953u, var_0.a.a, 389u) << (vec4<u32>(608u, 5228u, 3200u, 1u) % vec4<u32>(32u)), abs(vec4<u32>(24608u, var_2.a, 32527u, var_2.a))), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(var_2.a, var_2.a), 2385u), 79271u)), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(1i, -1i), vec2<i32>(28768i, u_input.b), false), vec2<i32>(var_2.b.x, var_0.a.c)), select(var_2.b, var_1.a.b, vec2<bool>(true, true)) << (vec2<u32>(4294967295u, 3010u) % vec2<u32>(32u))), countOneBits(_wgslsmith_mod_vec2_i32(~var_1.a.b, vec2<i32>(1i, var_1.a.c))), firstLeadingBit(max(var_1.a.b, var_0.b.zz))), i32(-1i) * -select(u_input.c, ~var_2.c, any(vec4<bool>(true, var_0.a.d.x, false, true))), vec3<bool>(all(var_2.d.yx), any(vec3<bool>(any(var_1.a.d.xy), var_1.a.d.x, var_2.d.x)), var_1.a.d.x));
    let var_4 = var_0.a.d.x & (var_0.a.a == _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a, var_0.a.a, var_3.a), vec3<u32>(4294967295u, var_3.a, var_2.a)), var_0.a.a));
    return var_3;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: i32, arg_3: i32) -> i32 {
    let var_0 = select(arg_0.a.d.xy, arg_0.a.d.yz, arg_0.a.d.yz);
    var var_1 = arg_0.e.x;
    let var_2 = Struct_3(Struct_1(1u, u_input.d.zx, 0i, select(select(vec3<bool>(arg_0.a.d.x, var_0.x, arg_0.a.d.x), vec3<bool>(var_0.x, var_0.x, var_0.x), !arg_0.a.d), arg_0.a.d, true)));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1185f);
    var var_3 = func_2();
    return countOneBits(i32(-1i) * -abs(u_input.c ^ -9887i));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    let var_0 = ~(-2147483647i);
    return _wgslsmith_div_i32(_wgslsmith_sub_i32(abs(max(1i, var_0)), func_4(Struct_2(func_2(), ~vec4<i32>(var_0, var_0, 20462i, 25973i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1145f, -958f, 1000f, -885f) * vec4<f32>(616f, 2062f, 1000f, 617f)), ~0i, _wgslsmith_f_op_vec2_f32(vec2<f32>(231f, 1000f) * vec2<f32>(635f, -239f))), abs(~vec4<u32>(4294967295u, 4294967295u, 8419u, 27655u)), var_0 << (~25475u % 32u), ~_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(-2147483647i, u_input.c, -2147483647i)))), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.c, -1i) & ((u_input.c | func_1(vec4<bool>(false, false, false, true))) << (58615u % 32u)), -32726i);
    var_1 = firstLeadingBit(u_input.d.x);
    var var_2 = u_input.d;
    var_1 = max(_wgslsmith_mult_i32(~var_2.x | -var_2.x, 0i) ^ reverseBits(2147483647i), -35064i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~select(4294967295u, 62772u, true), 0u) | 35657u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -100f) + _wgslsmith_div_f32(1462f, -1662f)), _wgslsmith_f_op_f32(896f - -2067f), -1356f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(472f * 252f)) + -2374f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2108f - 1967f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(2873f, -892f, false))))), 371f), ~_wgslsmith_div_vec2_u32(~(~vec2<u32>(4294967295u, 4294967295u)), abs(vec2<u32>(110442u, 1u))));
}

