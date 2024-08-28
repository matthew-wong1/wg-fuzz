struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(0u, 1u, 2849u, 25105u), vec4<u32>(4294967295u, 16559u, 1u, 26257u), vec4<u32>(4294967295u, 12644u, 1u, 11237u), vec4<u32>(0u, 4294967295u, 4294967295u, 53022u), vec4<u32>(14903u, 1u, 0u, 1u), vec4<u32>(42880u, 35597u, 1u, 4294967295u), vec4<u32>(4294967295u, 66930u, 0u, 1u), vec4<u32>(7306u, 21661u, 48273u, 4294967295u), vec4<u32>(0u, 1u, 1u, 14575u), vec4<u32>(0u, 1u, 941u, 4294967295u), vec4<u32>(0u, 37288u, 4294967295u, 67414u), vec4<u32>(43635u, 49712u, 13898u, 40083u), vec4<u32>(1u, 0u, 34177u, 4294967295u), vec4<u32>(4294967295u, 79468u, 1u, 1u), vec4<u32>(0u, 4294967295u, 95951u, 0u), vec4<u32>(4294967295u, 25889u, 4294967295u, 4294967295u), vec4<u32>(1u, 34961u, 68897u, 1u), vec4<u32>(4294967295u, 1848u, 33763u, 36668u), vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(4294967295u, 4294967295u, 21539u, 1798u));

var<private> global1: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(0i, 2147483647i, 19431i, i32(-2147483648)), vec4<i32>(-1607i, -1i, -3964i, -62288i), vec4<i32>(-35360i, 1i, -24630i, 5986i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    global0 = array<vec4<u32>, 20>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-914f, -551f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-341f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-760f))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1) -> vec2<i32> {
    global0 = array<vec4<u32>, 20>();
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1000f) + -120f))), _wgslsmith_f_op_f32(step(-155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -397f)))))));
    global1 = array<vec4<i32>, 3>();
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), var_0.x);
    var var_1 = 588f;
    return reverseBits(select(_wgslsmith_clamp_vec2_i32(~abs(vec2<i32>(13253i, arg_1)), u_input.b.yz, u_input.b.yz), (vec2<i32>(0i, u_input.b.x) ^ vec2<i32>(-2147483647i, u_input.b.x)) & (vec2<i32>(-1i) * -u_input.b.xy), !vec2<bool>(arg_2.a, !arg_2.a)));
}

fn func_2() -> vec4<i32> {
    var var_0 = 18268i;
    var var_1 = 0u != u_input.a.x;
    var var_2 = Struct_2(max(u_input.b.x, u_input.b.x));
    var var_3 = Struct_2(var_2.a);
    var var_4 = func_4(u_input.a, var_3.a, Struct_1(_wgslsmith_f_op_f32(func_3(-vec2<i32>(var_2.a, u_input.b.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1747f)), 7428u << (_wgslsmith_clamp_u32(abs(u_input.a.x), _wgslsmith_mult_u32(0u, 16673u), ~0u) % 32u), u_input.a.x));
    return _wgslsmith_div_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(var_3.a ^ -53950i, 1i, -2147483647i, ~var_4.x), -vec4<i32>(9519i, u_input.b.x, 16946i, 0i)), vec4<i32>(u_input.b.x, (var_3.a ^ _wgslsmith_mult_i32(var_3.a, 1i)) << (min(~39432u, _wgslsmith_div_u32(46458u, u_input.c)) % 32u), -7019i, ~(-2147483647i)));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> vec3<f32> {
    let var_0 = -_wgslsmith_dot_vec4_i32(~func_2() >> (global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(u_input.c), _wgslsmith_add_u32(16930u, 61744u)), 20u)] % vec4<u32>(32u)), vec4<i32>(reverseBits(firstTrailingBit(arg_0.x)), 2147483647i, u_input.b.x, func_2().x));
    global0 = array<vec4<u32>, 20>();
    var var_1 = Struct_2(var_0);
    let var_2 = Struct_2(firstTrailingBit(var_1.a) | _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(8236i, u_input.b.x), max(u_input.b.xz, u_input.b.xx)), max(1i, i32(-1i) * -11025i)));
    var var_3 = _wgslsmith_sub_i32(arg_0.x, 2147483647i);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-125f - 426f))))), _wgslsmith_f_op_f32(trunc(arg_1)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1159f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1765f)))))), 545f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-248f))), -262f, _wgslsmith_f_op_f32(sign(1f)));
    global0 = array<vec4<u32>, 20>();
    var var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-951f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-751f * var_0.x) + var_0.x) + 1155f), 1f), vec3<f32>(-672f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, -935f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(func_1(select(~vec4<i32>(i32(-1i) * -2147483647i, reverseBits(u_input.b.x), u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x)), vec4<i32>(-28207i >> (_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(u_input.c, u_input.d)) % 32u), u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.xz, vec2<i32>(u_input.b.x, 27752i)), -u_input.b.x), ~_wgslsmith_mult_u32(u_input.a.x, 9985u) <= select(_wgslsmith_sub_u32(73316u, u_input.c), 1u, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x)))));
    global1 = array<vec4<i32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.wyz, var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)), 467f))));
}

