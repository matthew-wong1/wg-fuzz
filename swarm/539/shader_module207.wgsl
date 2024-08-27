struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 2>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<u32>) -> f32 {
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-759f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(806f + -1276f)))))), -1000f));
}

fn func_2() -> u32 {
    return 32062u;
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.b, u_input.a.x), -u_input.a.ww ^ (vec2<i32>(1i, u_input.d.x) >> (vec2<u32>(0u, u_input.e.x) % vec2<u32>(32u)))) >> (~_wgslsmith_mult_vec2_u32(u_input.e << (vec2<u32>(4294967295u, u_input.e.x) % vec2<u32>(32u)), select(u_input.e, vec2<u32>(41964u, 54554u), vec2<bool>(false, false))) % vec2<u32>(32u)), vec2<i32>(u_input.b, ~(-u_input.d.x) << (0u % 32u)));
    var_0 = u_input.b;
    let var_1 = Struct_2(Struct_1(true, 4294967295u != u_input.e.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(824f, -499f, -266f, -1959f)))))), ~(~vec4<u32>(82691u, 4294967295u, 43909u, u_input.e.x) << (~vec4<u32>(u_input.e.x, u_input.e.x, u_input.c, 1u) % vec4<u32>(32u))), true), u_input.e.x | (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e.x, u_input.c), u_input.e) & u_input.e.x), u_input.c, ~_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, u_input.e.x, u_input.c), ~firstTrailingBit(vec3<u32>(135867u, u_input.c, 59304u))));
    var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, firstTrailingBit(u_input.a.x ^ -55526i), u_input.b) >> (_wgslsmith_add_vec3_u32(reverseBits(~var_1.a.d.ywz), countOneBits(~var_1.d)) % vec3<u32>(32u)), ~(((vec3<i32>(u_input.d.x, 1i, u_input.b) << (vec3<u32>(var_1.c, 23732u, 46823u) % vec3<u32>(32u))) | vec3<i32>(u_input.a.x, -36585i, u_input.a.x)) >> (vec3<u32>(15501u, u_input.c, 1u) % vec3<u32>(32u))));
    var_0 = u_input.b;
    return select(u_input.c, 0u, var_1.a.a);
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_2) -> f32 {
    global0 = array<vec2<bool>, 2>();
    let var_0 = Struct_1(!(!any(vec3<bool>(true, arg_3.a.e, true))), !((~arg_2 < firstTrailingBit(-13804i)) || true), vec4<f32>(864f, -310f, arg_3.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.a.c.x, 206f))) + arg_3.a.c.x)), min(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.e.x, arg_1.x), arg_1.x, 1u), ~u_input.e.x, _wgslsmith_mult_u32(firstTrailingBit(4294967295u), u_input.e.x), ~u_input.e.x), select(~max(vec4<u32>(4294967295u, arg_1.x, arg_3.b, u_input.e.x), arg_1), vec4<u32>(func_3(), 26976u, countOneBits(arg_1.x), arg_1.x), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true))), select(arg_3.a.a, true, true));
    global0 = array<vec2<bool>, 2>();
    let var_1 = (~(~vec2<i32>(u_input.d.x, -2147483647i)) << (~(~arg_3.d.xy) % vec2<u32>(32u))) >> (var_0.d.zx % vec2<u32>(32u));
    global0 = array<vec2<bool>, 2>();
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(any(vec3<bool>(true, true, true)), true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-874f, -1012f, 273f, -1094f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1359f, -632f, -923f, -581f), vec4<f32>(668f, 619f, 526f, -1978f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2315f, -1856f, -1090f, -891f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-803f, -342f, -1218f, -245f)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1679f * -1942f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-606f - -761f))), -1056f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-659f, -702f)) * -246f)), all(vec2<bool>(true, true)))), ~vec4<u32>(u_input.c, u_input.e.x, u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, 36023u) << (vec4<u32>(1278u, u_input.e.x, u_input.c, 7418u) % vec4<u32>(32u)), vec4<u32>(1u, u_input.e.x, u_input.e.x, 43558u))), !(!(!all(global0[_wgslsmith_index_u32(u_input.c, 2u)]))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(false, var_0.a, true, false), vec2<u32>(var_0.d.x, u_input.e.x)))))));
    let var_2 = vec4<u32>((~30394u << (func_2() % 32u)) >> ((12436u & abs(u_input.e.x)) % 32u), var_0.d.x, 41500u, 1u);
    var var_3 = _wgslsmith_f_op_f32(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-356f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(367f, var_0.c.x, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1156f - var_0.c.x)))), vec4<u32>(_wgslsmith_mod_u32(~u_input.e.x & min(var_2.x, 1u), ~func_3()), var_2.x, firstTrailingBit(~var_2.x), ~var_2.x & _wgslsmith_div_u32(min(60345u, var_0.d.x), u_input.c)), -28232i, Struct_2(Struct_1(false && !var_0.b, !(!var_0.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(876f, var_0.c.x, -483f, var_0.c.x)) * var_0.c), var_2, var_0.b), 46359u, _wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(reverseBits(var_2.x), var_0.d.x, 0u)), vec3<u32>(max(u_input.e.x, var_2.x), _wgslsmith_clamp_u32(4294967295u, var_0.d.x, var_0.d.x), u_input.c) | vec3<u32>(var_2.x, func_2(), var_0.d.x))));
    var_0 = Struct_1(all(!(!vec3<bool>(true, true, var_0.a))), !(var_0.c.x <= _wgslsmith_f_op_f32(max(156f, -1377f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x), 417f, var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0.c, vec4<f32>(-146f, -151f, 123f, -542f))) * vec4<f32>(-964f, var_0.c.x, 364f, var_0.c.x)))), _wgslsmith_sub_vec4_u32(vec4<u32>(28569u, var_2.x, ~var_0.d.x, ~var_0.d.x), vec4<u32>(1u, _wgslsmith_div_u32(4294967295u, var_2.x), u_input.c, ~1u)) ^ vec4<u32>(var_0.d.x, 17359u, _wgslsmith_div_u32(var_0.d.x, abs(79219u)), var_2.x), any(select(!(!vec3<bool>(true, var_0.a, var_0.e)), select(select(vec3<bool>(var_0.e, var_0.a, false), vec3<bool>(var_0.a, var_0.b, true), vec3<bool>(var_0.e, false, var_0.b)), !vec3<bool>(false, var_0.e, var_0.b), vec3<bool>(true, false, var_0.e)), vec3<bool>(any(vec4<bool>(true, false, true, true)), var_0.a, !var_0.a))));
    var var_4 = Struct_2(Struct_1(!any(!vec3<bool>(false, var_0.a, false)), var_0.e, _wgslsmith_f_op_vec4_f32(var_0.c + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, 882f, -1242f))), vec4<u32>(max(countOneBits(47293u), _wgslsmith_div_u32(10227u, var_2.x)), 4294967295u, _wgslsmith_div_u32(0u, var_2.x), 17255u), u_input.c != (u_input.e.x & _wgslsmith_mod_u32(var_2.x, 0u))), _wgslsmith_dot_vec4_u32(min(var_2 >> (vec4<u32>(var_0.d.x, var_2.x, 4294967295u, var_2.x) % vec4<u32>(32u)), ~(~vec4<u32>(var_0.d.x, var_0.d.x, 14066u, var_2.x))), max(~var_0.d, var_0.d)), max(~(~(~1u)), _wgslsmith_mod_u32(~var_2.x, _wgslsmith_sub_u32(4294967295u, 59404u) ^ abs(var_0.d.x))), _wgslsmith_clamp_vec3_u32(~select(vec3<u32>(1u, u_input.e.x, 32625u), ~var_0.d.zyx, select(vec3<bool>(var_0.e, var_0.a, var_0.e), vec3<bool>(var_0.a, var_0.b, var_0.a), var_0.a)), var_0.d.xww, ~_wgslsmith_div_vec3_u32(~var_0.d.xwx, var_2.xzy)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.wxx, abs(firstTrailingBit(vec3<i32>(-u_input.a.x, _wgslsmith_sub_i32(u_input.d.x, u_input.a.x), _wgslsmith_sub_i32(u_input.d.x, -1i)))), 0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-846f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1071f, var_4.a.c.x, var_0.a)), -1883f)), _wgslsmith_f_op_f32(min(1781f, _wgslsmith_f_op_f32(-var_0.c.x))))), u_input.d.zzx << (min(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(var_0.d.yzy, var_4.a.d.wwx), vec3<u32>(var_4.c, 1u, 7543u)), select(abs(vec3<u32>(4294967295u, 40436u, 10849u)), vec3<u32>(24273u, 24524u, u_input.c) & var_2.zyy, !vec3<bool>(var_4.a.b, false, true))) % vec3<u32>(32u)));
}

