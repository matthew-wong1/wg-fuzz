struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> vec3<i32> {
    let var_0 = -37053i;
    let var_1 = vec2<f32>(1969f, _wgslsmith_f_op_f32(sign(1000f)));
    var var_2 = 1000f;
    var var_3 = Struct_4(vec4<bool>(all(!select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, true), vec2<bool>(false, false))), !(any(vec3<bool>(true, arg_1, arg_1)) & all(vec2<bool>(arg_1, true))), false, true), Struct_3(Struct_1(~vec3<u32>(4294967295u, 4294967295u, u_input.a.x), _wgslsmith_f_op_f32(floor(-725f))), any(vec2<bool>(true, arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -657f) + _wgslsmith_f_op_f32(abs(1698f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(825f + -1548f)))), u_input.a.x), vec4<i32>(40093i, var_0, var_0, _wgslsmith_mult_i32(~7931i, _wgslsmith_mult_i32(var_0, var_0) & -var_0)));
    return -(firstLeadingBit(var_3.c.yyw) >> (_wgslsmith_mod_vec3_u32(firstLeadingBit(var_3.b.a.a), ~vec3<u32>(arg_0.x, 54357u, u_input.a.x)) % vec3<u32>(32u))) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.zx >> (arg_0.zx % vec2<u32>(32u)), ~arg_0.zy), vec2<u32>(~38695u, arg_0.x)), _wgslsmith_mod_u32(var_3.b.d, firstTrailingBit(min(arg_0.x, u_input.a.x))), var_3.b.d) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_4) -> u32 {
    let var_0 = arg_0.b.a.a.x;
    var var_1 = func_3(_wgslsmith_mult_vec3_u32(~u_input.a & arg_0.b.a.a, firstLeadingBit(u_input.a)), false);
    var_1 = arg_0.c.yyz | vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, var_1.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x, arg_0.c.x), var_1.xy, arg_0.c.yz)) ^ firstTrailingBit(-23095i), _wgslsmith_clamp_i32(1i, -(var_1.x | arg_0.c.x), abs(var_1.x) >> (_wgslsmith_sub_u32(1u, 0u) % 32u)), -1i);
    var_1 = vec3<i32>(-abs(var_1.x), -57445i, var_1.x);
    var_1 = vec3<i32>(-2147483647i, -var_1.x, 2147483647i);
    return ~(~var_0);
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-678f, -916f, -1081f, 700f), vec4<f32>(-1000f, 1000f, -1795f, 654f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-596f, -683f, -1000f, -363f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-976f, 1297f, -369f, _wgslsmith_f_op_f32(trunc(415f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(266f, 185f, 1827f, -1758f), vec4<f32>(1000f, -612f, 685f, -1683f))))))), all(vec4<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), true, !any(vec2<bool>(true, false)), false))));
    let var_1 = var_0.x;
    let var_2 = abs(~vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 79811u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u)), ~95845u, func_2(Struct_4(vec4<bool>(true, false, false, true), Struct_3(Struct_1(u_input.a, var_1), false, var_1, 38693u), vec4<i32>(1i, -2527i, 0i, 18333i)))), select(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 73035u, true), _wgslsmith_clamp_u32(func_2(Struct_4(vec4<bool>(true, true, true, true), Struct_3(Struct_1(u_input.a, -495f), false, 648f, u_input.a.x), vec4<i32>(81860i, 0i, -12624i, -17217i))), u_input.a.x >> (u_input.a.x % 32u), _wgslsmith_sub_u32(u_input.a.x, 10015u)), reverseBits(u_input.a.x)));
    var var_3 = select(-45275i, -(-select(-1i, 2147483647i, false) >> (min(~u_input.a.x, 0u) % 32u)), true);
    var_3 = -(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-62757i, 1i, -29730i, 38513i)), ~1i) << (~select(_wgslsmith_div_u32(u_input.a.x, var_2.x), u_input.a.x, true) % 32u));
    return Struct_3(Struct_1(vec3<u32>(~firstTrailingBit(var_2.x), u_input.a.x, 1u), var_0.x), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(883f + -415f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), -1000f)), 42331u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = func_1().a;
    var var_1 = firstLeadingBit(vec4<i32>(0i, -2147483647i, ~firstTrailingBit(1i), _wgslsmith_add_i32(abs(-1i) | _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 27138i), vec2<i32>(2147483647i, 2147483647i)), 2147483647i)));
    var var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_div_u32(func_1().a.a.x, 32712u)), ~u_input.a.yx), min(min(_wgslsmith_mod_u32(arg_0.d, 28222u), 2182u) >> ((arg_0.a.a.x << (0u % 32u)) % 32u), _wgslsmith_clamp_u32(~arg_1.a.x, abs(_wgslsmith_add_u32(9079u, 16308u)), 11082u)), ~u_input.a.x);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-792f, var_0.b), vec2<f32>(1011f, var_0.b))), vec2<f32>(-466f, _wgslsmith_div_f32(arg_0.a.b, arg_0.a.b)), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-450f, arg_0.c)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1147f, var_0.b), vec2<f32>(630f, arg_1.b))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2047f, -1764f), vec2<f32>(arg_1.b, -1587f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b, -851f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(581f, arg_0.a.b)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1492f, arg_1.b)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(347f, arg_1.b) + vec2<f32>(arg_1.b, arg_1.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.a.x, 3506u);
    var var_1 = 31310u;
    var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_4(func_1(), func_1().a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1504f, -308f)))))));
    let var_3 = Struct_1(vec3<u32>(~(~_wgslsmith_mod_u32(3869u, u_input.a.x)), var_0.x, 4294967295u), -2931f);
    var var_4 = Struct_2(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), func_1().b), abs(_wgslsmith_clamp_i32(-2147483647i >> (u_input.a.x % 32u), -977i, 0i >> (0u % 32u))) & -2147483647i, var_0.x, _wgslsmith_div_vec4_u32(reverseBits(~(~vec4<u32>(0u, var_0.x, 0u, 60343u))), abs(vec4<u32>(~var_3.a.x, u_input.a.x, _wgslsmith_div_u32(var_3.a.x, 34133u), 4418u))), _wgslsmith_sub_vec2_i32(vec2<i32>(abs(-14456i), i32(-1i) * -31960i), vec2<i32>(1i, 1i)) << ((vec2<u32>(1u, ~var_0.x) | _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 3986u), vec2<u32>(9271u, 14817u)), vec2<u32>(0u, 40929u) >> (vec2<u32>(2870u, var_3.a.x) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    var_4 = Struct_2(var_4.a, var_4.b ^ var_4.e.x, ~(~select(~90114u, 36610u ^ u_input.a.x, true)), ~(~firstTrailingBit(vec4<u32>(1u, 0u, 1u, 0u))), -(~var_4.e | select(vec2<i32>(var_4.e.x, var_4.e.x), reverseBits(var_4.e), vec2<bool>(false, var_4.a.x))));
    let var_5 = max(firstTrailingBit(var_4.c), ~(~var_4.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, var_5, var_4.c), firstTrailingBit(vec3<u32>(var_4.c & 1u, 4294967295u, var_4.d.x))), 68719u, abs(var_0));
}

