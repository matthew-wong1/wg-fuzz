struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    var var_0 = ~min(~firstTrailingBit(_wgslsmith_mod_u32(u_input.d.x, 42983u)), arg_0.x);
    var_0 = arg_0.x;
    let var_1 = u_input.d;
    let var_2 = -select(2147483647i, 24432i, false) != 2147483647i;
    var var_3 = vec2<bool>(false, var_2);
    return -352f;
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)))), -vec3<i32>(_wgslsmith_mod_i32(0i, ~50243i), u_input.c.x, ~(-arg_0.c.x)), u_input.c | ~(reverseBits(u_input.c) & ~vec4<i32>(arg_0.b.x, u_input.c.x, u_input.c.x, 431i)), -820f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.e + _wgslsmith_f_op_vec4_f32(-arg_0.e)))));
    let var_1 = Struct_1(vec3<f32>(1321f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.e.x, 1449f, false)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-988f, var_0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d)))))), vec3<i32>(arg_0.b.x, ~2593i, select(17290i, ~arg_0.b.x, true) | ~(-8756i)), select(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(max(var_0.c, vec4<i32>(0i, var_0.c.x, var_0.c.x, var_0.b.x)), _wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(0i, u_input.b, u_input.c.x, u_input.b))), ~_wgslsmith_add_vec4_i32(vec4<i32>(var_0.c.x, 2147483647i, 18279i, -768i), vec4<i32>(u_input.b, -37102i, u_input.c.x, u_input.b)), u_input.c), abs(arg_0.c ^ var_0.c), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), any(vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(22959u, u_input.a.x))), _wgslsmith_f_op_f32(-368f * _wgslsmith_div_f32(2249f, 287f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_0.e + arg_0.e))));
    var_0 = var_1;
    var var_2 = !select(vec2<bool>(true, false), vec2<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true)), true), true);
    var var_3 = arg_0;
    return false;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-447f, arg_3.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(382f, arg_3.a.x)) + vec2<f32>(arg_3.d, _wgslsmith_f_op_f32(1176f + 568f)))), !vec2<bool>(func_2(Struct_1(vec3<f32>(374f, arg_3.e.x, arg_3.a.x), u_input.c.yyz, u_input.c, -1721f, arg_3.e)), arg_3.a.x == _wgslsmith_f_op_f32(trunc(arg_3.d)))));
    var var_1 = ~firstTrailingBit(1u & min(4294967295u, arg_1.x)) <= u_input.a.x;
    var var_2 = arg_3;
    let var_3 = _wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(26387u, 76393u, u_input.d.x, 4294967295u)), vec4<u32>(u_input.a.x, 10733u, abs(720u), arg_1.x))), vec4<u32>(1u, max(u_input.a.x, 4294967295u) ^ ~_wgslsmith_mult_u32(arg_1.x, 54768u), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, 5171u, 0u, 4294967295u), ~vec4<u32>(u_input.d.x, 29554u, arg_1.x, 4294967295u)), ~0u));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-289f, 1073f, var_0.x)) + var_2.e.zxy) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-567f, 632f, 910f) - vec3<f32>(var_2.a.x, 483f, 1939f)) - vec3<f32>(-693f, -1796f, var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(343f, arg_3.e.x, -1000f))))))), ~firstTrailingBit((arg_3.b >> (u_input.d % vec3<u32>(32u))) | -vec3<i32>(2147483647i, arg_0, 24865i)), _wgslsmith_mod_vec4_i32(var_2.c, u_input.c), -1240f, vec4<f32>(-747f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-187f)))), 2158f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-910f + var_2.e.x) - _wgslsmith_f_op_f32(step(-1414f, var_0.x))) * var_2.e.x)));
    return Struct_1(var_2.e.wyy, countOneBits(_wgslsmith_add_vec3_i32(arg_3.c.xxz | var_2.c.yww, ~abs(vec3<i32>(var_4.c.x, arg_2.x, -2147483647i)))), arg_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1634f) * _wgslsmith_f_op_f32(arg_3.d * var_2.d))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_4.e)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1544f, 217f, 198f, -1920f)))), var_4.e)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    let var_0 = vec2<i32>(-2147483647i, ~(-60592i) << (1u % 32u));
    var var_1 = Struct_1(arg_1.a, vec3<i32>(~countOneBits(u_input.c.x) | -(~arg_1.c.x), -1493i, _wgslsmith_add_i32(reverseBits(func_1(-34711i, vec2<u32>(u_input.a.x, u_input.d.x), vec4<i32>(arg_0, 20570i, 0i, arg_2.x), arg_1).c.x), arg_1.b.x)), (countOneBits(arg_1.c) >> (vec4<u32>(u_input.a.x << (0u % 32u), 0u, 4294967295u, _wgslsmith_mod_u32(u_input.a.x, 4294967295u)) % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d.x, u_input.a.x, u_input.a.x, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(2588u, 108405u, 0u, u_input.d.x), vec4<u32>(u_input.a.x, u_input.d.x, 14446u, u_input.d.x), reverseBits(vec4<u32>(u_input.d.x, 42263u, 4294967295u, 1u)))) % vec4<u32>(32u)), -1043f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-2361f, arg_1.e.x, 476f, arg_1.e.x), vec4<f32>(arg_1.d, arg_1.a.x, -485f, 126f)))) - vec4<f32>(662f, arg_1.e.x, -1200f, -504f)));
    let var_2 = arg_1.a;
    var var_3 = arg_2.x;
    let var_4 = ~_wgslsmith_dot_vec3_i32(~firstTrailingBit(func_1(u_input.b, u_input.a, var_1.c, Struct_1(vec3<f32>(-263f, -1045f, arg_1.a.x), var_1.b, vec4<i32>(arg_1.b.x, 31435i, arg_2.x, arg_0), var_1.d, var_1.e)).c.wxy), ~(-vec3<i32>(arg_1.b.x, arg_0, -19868i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1264f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-407f + 863f) - -422f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(-29986i, func_1(u_input.c.x, vec2<u32>(u_input.d.x, 4294967295u), u_input.c, Struct_1(vec3<f32>(-920f, -956f, 2639f), vec3<i32>(u_input.b, 1774i, u_input.c.x), u_input.c, 291f, vec4<f32>(360f, -159f, -650f, -283f))), firstTrailingBit(u_input.c.xx))) * _wgslsmith_f_op_f32(f32(-1f) * -1442f))));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(-var_0);
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * 869f) * 645f) - -831f))));
    var_2 = 454f;
    let var_3 = _wgslsmith_f_op_f32(floor(284f));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3, -1000f, var_3)))))))), -func_1(abs(u_input.c.x), _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, 52601u)), _wgslsmith_sub_vec2_u32(u_input.a, u_input.d.xx), vec2<u32>(u_input.a.x, 11793u)), u_input.c, func_1(func_1(u_input.c.x, vec2<u32>(4294967295u, 43807u), u_input.c, Struct_1(vec3<f32>(var_0, -711f, 260f), u_input.c.zww, vec4<i32>(u_input.c.x, u_input.c.x, 18722i, u_input.c.x), var_3, vec4<f32>(var_0, 506f, var_3, var_3))).b.x, _wgslsmith_div_vec2_u32(u_input.a, u_input.d.yz), u_input.c << (vec4<u32>(u_input.d.x, u_input.d.x, 12661u, 15759u) % vec4<u32>(32u)), Struct_1(vec3<f32>(-2591f, 461f, 1000f), u_input.c.zwz, vec4<i32>(0i, 1i, u_input.c.x, 0i), var_3, vec4<f32>(-777f, var_0, -123f, 322f)))).b, ~vec4<i32>(u_input.c.x, firstTrailingBit(u_input.b), -(~u_input.c.x), -u_input.c.x), var_3, _wgslsmith_f_op_vec4_f32(vec4<f32>(-154f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + -283f), -2572f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0, 170f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3)))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -189f, var_3, _wgslsmith_f_op_f32(abs(228f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(trunc(var_3)), 603f, _wgslsmith_f_op_f32(-var_0)), u_input.d.xy << ((u_input.d.yz | firstTrailingBit(~vec2<u32>(u_input.a.x, 80169u))) % vec2<u32>(32u)), countOneBits(_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, var_4.c.x), 0i), u_input.c.x)));
}

