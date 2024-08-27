struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec2<i32>,
    d: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    let var_0 = ~u_input.a.x;
    let var_1 = u_input.b.x;
    var var_2 = Struct_5(vec4<i32>(~countOneBits(~(-1i)), -(~var_1), 1i, min(var_0, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.a)))));
    return abs(_wgslsmith_mult_vec4_u32(((vec4<u32>(arg_0, arg_0, arg_0, arg_0) << (vec4<u32>(0u, 1u, arg_0, 4294967295u) % vec4<u32>(32u))) | vec4<u32>(arg_0, arg_0, 8222u, 5288u)) ^ vec4<u32>(arg_0 >> (0u % 32u), ~4294967295u, arg_0, arg_0), vec4<u32>(~(arg_0 & 31355u), _wgslsmith_mod_u32(abs(1u), min(arg_0, 7387u)), ~0u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(arg_0, 0u, 4294967295u, 1u), vec4<u32>(1u, 1u, arg_0, arg_0)), ~vec4<u32>(arg_0, 1u, arg_0, 1u)))));
}

fn func_4(arg_0: u32) -> vec3<i32> {
    var var_0 = func_3(arg_0).ywy;
    let var_1 = -abs(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, i32(-1i) * -14707i), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x), vec2<i32>(-2147483647i, u_input.b.x)), abs(u_input.a.x))));
    var var_2 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(~u_input.a.x, 80647i), 1i, abs(0i));
    var_0 = select(countOneBits(~vec3<u32>(27607u, 4294967295u, var_0.x) & reverseBits(select(vec3<u32>(arg_0, 9515u, arg_0), vec3<u32>(var_0.x, arg_0, var_0.x), false))), ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(4294967295u, 3767u, 36305u)), ~vec3<u32>(arg_0, 55639u, 0u)), vec3<bool>(true, true, true));
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.x, var_0.x), _wgslsmith_sub_u32(firstTrailingBit(var_0.x), ~12777u) & _wgslsmith_add_u32(~85239u, firstTrailingBit(29666u))) <= max(_wgslsmith_dot_vec4_u32(~(vec4<u32>(var_0.x, var_0.x, arg_0, var_0.x) | vec4<u32>(arg_0, 4294967295u, var_0.x, 0u)), vec4<u32>(~50080u, 4294967295u, 1812u, arg_0)), abs(reverseBits(~1u)));
    return firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 6426i, 2147483647i, var_1.x) | vec4<i32>(var_1.x, -53391i, u_input.b.x, -49553i), min(vec4<i32>(-940i, var_1.x, -1i, -2147483647i), vec4<i32>(29838i, var_1.x, var_1.x, -1i))), var_1.x, ~select(var_1.x, var_1.x, true))) >> (~(~vec3<u32>(1533u, ~37201u, func_3(0u).x)) % vec3<u32>(32u));
}

fn func_2(arg_0: vec4<u32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(126f, 297f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(2060f, 375f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1263f))) + _wgslsmith_f_op_f32(f32(-1f) * -1120f)), _wgslsmith_f_op_f32(floor(110f)))));
    var var_1 = firstTrailingBit(_wgslsmith_mod_i32(u_input.b.x, -1i));
    var var_2 = u_input.b;
    var_2 = func_4(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0.ww, arg_0.xx), firstTrailingBit(0u), arg_0.x, _wgslsmith_clamp_u32(0u, arg_0.x, 4294967295u)), func_3(44550u) ^ arg_0)));
    var var_3 = Struct_3(vec3<bool>(true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x + var_0.x))) == _wgslsmith_f_op_f32(1f - var_0.x), true), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_mult_vec2_i32(func_4(~1u).xx, -var_2.yx), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x) * _wgslsmith_f_op_f32(-var_0.x)))));
    return vec2<u32>(arg_0.x, _wgslsmith_mult_u32(35403u, arg_0.x & arg_0.x));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<bool>) -> u32 {
    let var_0 = 1u;
    let var_1 = 1i;
    var var_2 = _wgslsmith_div_f32(550f, -292f);
    let var_3 = func_2(firstTrailingBit(~_wgslsmith_add_vec4_u32(max(vec4<u32>(6230u, var_0, 52959u, var_0), vec4<u32>(var_0, var_0, var_0, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(6025u, 0u, var_0, 4294967295u), vec4<u32>(26761u, 60720u, var_0, 1330u)))));
    var var_4 = Struct_4(~83191u ^ ~(~select(var_3.x, 0u, true)));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(all(vec2<bool>(true, true)), vec3<bool>(true, true, true), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1495f * -2006f))) + -300f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-678f, -159f, true)) + -630f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1223f - -126f)))), _wgslsmith_f_op_f32(f32(-1f) * -385f), -1033f));
    var var_2 = Struct_2(vec2<f32>(var_1.x, 1763f));
    let var_3 = 1u;
    let var_4 = ~select(vec2<u32>(17431u, abs(~1u)), vec2<u32>(var_0.a, ~1u) >> (abs(vec2<u32>(var_3, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_div_i32(-28643i | u_input.b.x, 0i) < -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, u_input.b.x), u_input.a));
    var var_5 = any(select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, true, false)) | true, all(vec3<bool>(true, true, false)), true), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.a.x, 516f, var_2.a.x, -1216f))), vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x))))), ~u_input.b, vec4<u32>(_wgslsmith_dot_vec2_u32(~func_3(8598u).yw, vec2<u32>(var_4.x, 1u)), max(var_3, 17774u), ~(21062u | var_0.a) ^ max(func_1(true, vec3<bool>(true, true, false), vec4<bool>(true, false, true, false)), 11548u), ~2962u), func_1(true || all(vec4<bool>(true, true, true, true)), select(vec3<bool>(true, u_input.a.x != u_input.b.x, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), any(vec2<bool>(false, true))), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), u_input.a.x > u_input.b.x), vec4<bool>(all(vec2<bool>(true, false)), true, select(false, true, true), true))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_2.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -966f)), 1752f))));
}

