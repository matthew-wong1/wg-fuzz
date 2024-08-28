struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>) -> f32 {
    let var_0 = Struct_4(select(vec2<i32>(firstLeadingBit(2147483647i), firstTrailingBit(1i)), vec2<i32>(1i, 1i), true), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(1i, -1i), firstTrailingBit(countOneBits(2147483647i))), 1i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-33600i, 2147483647i), -vec2<i32>(32862i, 14886i), firstLeadingBit(vec2<i32>(1i, 0i))), vec2<i32>(1i, -1i) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))), ~firstLeadingBit(8341i)));
    let var_1 = false;
    let var_2 = vec3<f32>(-831f, _wgslsmith_div_f32(-113f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(776f * 556f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-523f * _wgslsmith_f_op_f32(f32(-1f) * -819f)))) - 1000f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
}

fn func_2() -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1379f)), _wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1544f)), _wgslsmith_f_op_f32(f32(-1f) * -298f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-724f))))), -1525f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1188f, -1446f))))));
    let var_1 = Struct_1(!select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), any(vec2<bool>(true, true))), !vec3<bool>(true, !any(vec4<bool>(false, false, true, false)), any(vec4<bool>(false, false, true, false)) && true), select(reverseBits(u_input.a) <= _wgslsmith_mod_u32(4909u, 115585u), false, !any(vec4<bool>(false, false, true, true))));
    let var_2 = Struct_4(~max((vec2<i32>(15886i, 1i) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))) | abs(vec2<i32>(-1i, -2147483647i)), ~(~vec2<i32>(-45268i, 1i))), vec4<i32>(_wgslsmith_clamp_i32(-32915i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), abs(vec4<i32>(-42246i, -44858i, 0i, -75443i)))), abs(1i), _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, 1i), -vec2<i32>(-8888i, 1i)), -1i));
    let var_3 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.x, _wgslsmith_mod_i32(0i, var_2.a.x)), abs(vec2<i32>(i32(-1i) * -2261i, _wgslsmith_add_i32(var_2.a.x, var_2.b.x)))), select(-(~var_2.a.x), ~_wgslsmith_dot_vec3_i32(~var_2.b.yyw, vec3<i32>(2147483647i, var_2.a.x, var_2.b.x) | var_2.b.zzz), !var_1.b.x));
    var var_4 = Struct_2(~(vec3<u32>(u_input.a, firstLeadingBit(26597u), u_input.a) >> (reverseBits(max(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(20155u, 0u, 50442u))) % vec3<u32>(32u))), var_1, Struct_1(vec4<bool>(!all(vec2<bool>(false, false)), false, all(!var_1.a.zy), var_1.c), var_1.a.xyx, any(vec4<bool>(all(vec3<bool>(false, false, false)), true, false, var_1.b.x))));
    return 8678u;
}

fn func_1() -> vec4<u32> {
    var var_0 = (_wgslsmith_sub_i32(-5906i, -select(2147483647i, 1i, true)) | min(min(-2147483647i, i32(-1i) * -29255i), max(_wgslsmith_mod_i32(-20934i, 2147483647i), ~1i))) << (_wgslsmith_mult_u32(_wgslsmith_add_u32(~u_input.a & u_input.a, ~func_2()), u_input.a) % 32u);
    let var_1 = -2147483647i;
    var var_2 = Struct_5(var_1, select(-(~(vec3<i32>(var_1, var_1, var_1) & vec3<i32>(var_1, 1i, var_1))), -vec3<i32>(~var_1, var_1, var_1), any(vec3<bool>(true, true, true)) || true));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, false, true, 28812i != var_1), vec4<bool>(true, true, all(vec4<bool>(true, false, true, false)), false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1322f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(364f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1363f), 1467f)))), 1217f);
    var_0 = firstLeadingBit(abs(2147483647i));
    return _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a, _wgslsmith_clamp_u32(_wgslsmith_div_u32(17040u, 2245u), ~1u, u_input.a), 49040u, 52277u), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(59216u, u_input.a, 64991u, 44562u)), (vec4<u32>(u_input.a, 1u, u_input.a, 32883u) << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) ^ select(vec4<u32>(60040u, u_input.a, 1u, 59968u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), false))), vec4<u32>(~_wgslsmith_mult_u32(~4294967295u, ~60874u), u_input.a, u_input.a, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_2(_wgslsmith_div_vec3_u32(countOneBits((var_0.zww >> (vec3<u32>(u_input.a, 0u, 4294967295u) % vec3<u32>(32u))) ^ vec3<u32>(1u, 24956u, u_input.a)), abs(var_0.xzx)), Struct_1(select(vec4<bool>(true, any(vec3<bool>(true, true, true)), true, all(vec3<bool>(false, true, false))), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), true), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))), Struct_1(vec4<bool>(true, _wgslsmith_div_u32(51062u, 3625u) <= ~var_0.x, true, !any(vec3<bool>(true, false, false))), vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), false, false), any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), true))));
    let var_2 = Struct_5(select(-4508i, -(~1i), true), firstTrailingBit(~vec3<i32>(1i, _wgslsmith_add_i32(-1i, 6234i), i32(-1i) * -64432i)));
    let var_3 = min(4294967295u, _wgslsmith_dot_vec3_u32(var_1.a, ~min(var_0.xyx, vec3<u32>(u_input.a, u_input.a, 0u))));
    var var_4 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(firstTrailingBit(var_2.b.x)), ~var_2.a, 9138i, var_2.b.x), ~abs(min(vec4<i32>(var_2.b.x, var_2.b.x, 2147483647i, -5121i), vec4<i32>(56031i, var_2.a, 30585i, 2147483647i))));
    var var_5 = !select(var_1.c.a.zzy, select(select(!var_1.b.a.zzw, vec3<bool>(var_1.b.b.x, false, var_1.c.b.x), any(var_1.b.a)), var_1.c.b, vec3<bool>(true, false && var_1.b.b.x, !var_1.b.a.x)), vec3<bool>(var_1.b.a.x & (var_1.b.c && false), firstTrailingBit(var_4.x) <= var_4.x, select(any(vec4<bool>(false, false, true, false)), var_1.c.a.x, var_1.b.a.x)));
    var_4 = vec4<i32>(-2147483647i, var_2.a, ~(-9703i), -8294i);
    var var_6 = -1139f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0, ~(~vec2<u32>(6523u & var_0.x, ~var_3)));
}

