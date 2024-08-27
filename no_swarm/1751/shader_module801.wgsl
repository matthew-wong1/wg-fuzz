struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_mod_u32(~arg_1, arg_1), countOneBits(_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, _wgslsmith_div_u32(1u, 4294967295u)), arg_1)));
    let var_1 = abs(~0u);
    return vec2<bool>(false, ~_wgslsmith_mult_u32(~arg_1, ~11908u) > (_wgslsmith_sub_u32(~var_1, countOneBits(arg_1)) | ((7988u | arg_1) | max(76805u, 16476u))));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(8136u, 0u, 21808u, 42254u), vec4<u32>(4294967295u, 1u, 4294967295u, 0u)), 1u) & vec2<u32>(1u, ~40175u), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(817f, _wgslsmith_f_op_f32(f32(-1f) * -126f), _wgslsmith_f_op_f32(step(1000f, -555f)))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), ~(~vec3<u32>(4294967295u, 53107u, _wgslsmith_div_u32(0u, 4294967295u))), Struct_1(vec2<u32>(~52512u, ~1u), true, vec3<f32>(_wgslsmith_f_op_f32(round(-394f)), _wgslsmith_f_op_f32(f32(-1f) * -651f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1451f * -206f))), false), Struct_1(select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), func_3(-1223f, 5683u)), !select(true, true, all(vec4<bool>(false, true, false, false))), vec3<f32>(-2065f, _wgslsmith_f_op_f32(f32(-1f) * -583f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(707f, -753f))))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(204f * 472f) * _wgslsmith_f_op_f32(step(-1000f, -1160f))), 4294967295u).x));
    var_0 = Struct_2(var_0.d, _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(var_0.d.a.x, var_0.c.a.x, var_0.c.a.x)), vec3<u32>(620u, reverseBits(51103u), 1126u)), ~var_0.b), Struct_1(var_0.b.zz, var_0.c.b, vec3<f32>(_wgslsmith_f_op_f32(-740f + _wgslsmith_f_op_f32(667f * 774f)), _wgslsmith_f_op_f32(-1000f + var_0.c.c.x), var_0.d.c.x), true), var_0.a);
    let var_1 = Struct_2(var_0.d, var_0.b, var_0.d, Struct_1(countOneBits(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b.x, var_0.d.a.x), var_0.b.zx)), false, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.c.x))), _wgslsmith_f_op_f32(ceil(-193f)), var_0.a.c.x), all(select(select(vec4<bool>(true, false, var_0.a.d, true), vec4<bool>(false, true, false, var_0.d.b), vec4<bool>(var_0.c.d, true, true, var_0.a.b)), select(vec4<bool>(false, true, var_0.a.d, var_0.c.b), vec4<bool>(true, false, false, var_0.d.d), var_0.d.b), true))));
    var_0 = Struct_2(var_1.a, firstTrailingBit(var_0.b), Struct_1(select(select(~vec2<u32>(0u, 1u), ~vec2<u32>(4294967295u, 26641u), true), vec2<u32>(~68260u, ~var_1.a.a.x), false), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(689f, -1543f, -1000f) + var_1.d.c), _wgslsmith_f_op_vec3_f32(-var_1.d.c), !vec3<bool>(true, var_1.c.b, var_1.c.d))) - _wgslsmith_f_op_vec3_f32(-var_0.c.c)), true), var_0.d);
    let var_2 = Struct_1(var_1.c.a, true, vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1357f)), -493f), var_0.a.d);
    return u_input.a;
}

fn func_1(arg_0: vec3<i32>) -> vec2<u32> {
    var var_0 = func_2();
    let var_1 = ~max(~vec3<u32>(~13774u, _wgslsmith_clamp_u32(4555u, 4294967295u, 19813u), 4294967295u), vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(80696u, 103385u, 4294967295u, 0u), vec4<u32>(30317u, 1u, 1u, 1u)) ^ ~0u, ~62823u >> (1u % 32u)));
    var_0 = -1i;
    let var_2 = vec2<i32>(_wgslsmith_mod_i32(u_input.a, -54689i), 13839i);
    let var_3 = vec2<f32>(_wgslsmith_div_f32(-1290f, _wgslsmith_f_op_f32(step(-980f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(599f, 555f, true)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1016f + _wgslsmith_f_op_f32(f32(-1f) * -196f)))))));
    return vec2<u32>(1u, ~var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~func_1(max(reverseBits(vec3<i32>(u_input.a, 27545i, -50004i)), ~vec3<i32>(u_input.a, u_input.a, u_input.a))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-908f, 616f, 1281f), vec3<f32>(-265f, -1000f, 790f))), vec3<f32>(-686f, -3071f, 1000f)), vec3<f32>(_wgslsmith_f_op_f32(step(1360f, 259f)), _wgslsmith_div_f32(-1432f, -490f), _wgslsmith_f_op_f32(-221f + 236f))))), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(min(1669f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1038f, 1000f)) * _wgslsmith_f_op_f32(step(-730f, -210f))))));
    var var_2 = abs(-(~_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(37235i, -2147483647i, u_input.a, u_input.a), vec4<i32>(0i, -1i, u_input.a, -35267i)), firstTrailingBit(vec4<i32>(u_input.a, 2147483647i, u_input.a, 20161i)))));
    let var_3 = reverseBits(vec4<u32>(~0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(68572u, 1u), var_0.a), ~(~55474u) & var_0.a.x, ~var_0.a.x));
    let var_4 = vec2<i32>(u_input.a, max(_wgslsmith_add_i32(u_input.a, 20267i) | _wgslsmith_mult_i32(var_2.x, var_2.x), -u_input.a & _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -3696i), var_2.yw)) ^ var_2.x);
    var_2 = ~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(25158i, 7682i), _wgslsmith_dot_vec4_i32(vec4<i32>(-11154i, -1i, 1i, -2147483647i), vec4<i32>(var_4.x, 0i, -15244i, var_4.x)), ~var_4.x, u_input.a), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 2147483647i, 43104i, 0i), vec4<i32>(1i, -2147483647i, u_input.a, var_2.x))), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, var_2.x, 1i, var_2.x), vec4<i32>(var_2.x, var_4.x, 0i, 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-17692i, -62950i, -60871i, 0i), vec4<i32>(var_2.x, 2023i, var_2.x, u_input.a)))));
    var var_5 = !(!select(select(func_3(var_1.x, 16743u), !vec2<bool>(var_0.d, var_0.d), !var_0.d), func_3(708f, 4294967295u), !vec2<bool>(var_0.b, true)));
    let var_6 = -vec4<i32>(~1i, 78128i, u_input.a, -1i);
    var_2 = -var_6;
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_dot_vec3_u32(var_3.wxy, ~select(max(vec3<u32>(1u, 0u, 41396u), vec3<u32>(var_3.x, 1u, var_3.x)), var_3.wyy, !vec3<bool>(var_5.x, var_0.b, var_0.b))));
}

