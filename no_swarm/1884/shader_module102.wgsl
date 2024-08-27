struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12>;

var<private> global1: f32 = 172f;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) - _wgslsmith_f_op_f32(-615f * var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1346f, var_0.x)) - 2760f))), _wgslsmith_f_op_f32(select(-2484f, var_0.x, any(select(select(vec4<bool>(arg_2.b.d.x, arg_2.b.b, arg_0.a, arg_2.b.d.x), vec4<bool>(arg_2.b.d.x, true, arg_2.a.x, arg_2.a.x), true), !vec4<bool>(true, false, arg_2.a.x, arg_0.a), select(vec4<bool>(true, false, true, arg_2.a.x), vec4<bool>(arg_2.a.x, false, arg_2.a.x, true), vec4<bool>(false, arg_2.b.d.x, false, arg_0.a)))))), _wgslsmith_f_op_f32(ceil(-1578f)), _wgslsmith_f_op_f32(round(1f)));
    var var_2 = _wgslsmith_mod_u32(firstLeadingBit(58839u), _wgslsmith_sub_u32(arg_2.d.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(23457u, 1u), arg_2.d), vec2<u32>(4294967295u, 4294967295u))) ^ arg_2.d.x);
    var_2 = max(arg_2.c, 23098u);
    var_2 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(firstLeadingBit(16482u), arg_2.c), abs(~0u));
    return arg_2.b.d.x | any(!(!arg_2.b.d));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: u32) -> Struct_1 {
    let var_0 = select(vec3<bool>(true && (_wgslsmith_add_i32(37463i, arg_1.x) != (u_input.a & 0i)), select(func_3(Struct_4(true), -1i, Struct_2(vec2<bool>(false, false), Struct_1(arg_1, false, 1i, vec3<bool>(false, false, false)), 14932u, vec2<u32>(arg_3, arg_3))), true, true & (13852i > arg_0.x)), false), global0[_wgslsmith_index_u32(min(42282u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_3), vec3<u32>(44995u, 29224u, arg_3)))), 12u)], (false && all(vec2<bool>(true, true))) || select((arg_0.x << (arg_3 % 32u)) >= -1i, any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), select(true, true, true)));
    let var_1 = Struct_3(-414f, firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3, arg_3, 25597u), vec3<u32>(1u, arg_3, arg_3) >> (vec3<u32>(39701u, arg_3, 22955u) % vec3<u32>(32u)))) | vec3<u32>(~(~8558u), ~arg_3, firstTrailingBit(~arg_3)), 1i, var_0.x);
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - var_1.a)), 356f, -521f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(825f))))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), 724f, -1000f, _wgslsmith_f_op_f32(floor(arg_2.x))));
    let var_3 = -1i;
    var var_4 = 4294967295u;
    return Struct_1(reverseBits(vec4<i32>(arg_0.x, -abs(-2147483647i), var_3 << (abs(28623u) % 32u), 60774i)), false, var_3 << (22510u % 32u), vec3<bool>(21454i < _wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, arg_1.x, 44476i), firstLeadingBit(11005i)), true, !var_0.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> vec2<u32> {
    let var_0 = Struct_3(660f, ~arg_1.wyx, _wgslsmith_div_i32(abs(firstLeadingBit(-1i)), ~33731i), arg_3.x & func_2(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, arg_0.b.c), vec2<i32>(-1i, u_input.a), vec2<i32>(36642i, arg_2.x)), countOneBits(vec2<i32>(u_input.a, -16354i))), countOneBits(arg_0.b.a), vec2<f32>(_wgslsmith_f_op_f32(abs(-356f)), _wgslsmith_f_op_f32(abs(2735f))), _wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(arg_1.x, arg_1.x, arg_1.x))).b);
    return vec2<u32>(_wgslsmith_sub_u32(4294967295u, ~(~arg_0.d.x ^ (arg_0.d.x ^ 39739u))), arg_0.d.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: f32) -> f32 {
    var var_0 = _wgslsmith_mult_vec2_u32(arg_0.xz, func_4(Struct_2(vec2<bool>(true, true), func_2(vec2<i32>(u_input.a, -1i), arg_1, vec2<f32>(135f, arg_2), arg_0.x), ~0u, vec2<u32>(arg_0.x, 4294967295u) ^ vec2<u32>(1948u, 1u)), firstTrailingBit(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, 71221u, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))), -countOneBits(arg_1.zw << (vec2<u32>(arg_0.x, arg_0.x) % vec2<u32>(32u))), vec2<bool>(false, any(vec2<bool>(false, false)))));
    let var_1 = Struct_4(!(all(vec4<bool>(true, true, true, true)) & !any(global0[_wgslsmith_index_u32(arg_0.x, 12u)])));
    var var_2 = false;
    var var_3 = _wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-2147483647i, 9744i), -arg_1.x, ~(-1i)), firstLeadingBit(_wgslsmith_mult_vec3_i32(arg_1.yyz, vec3<i32>(arg_1.x, 6357i, -10416i))))), func_2(abs(-vec2<i32>(4675i, 10981i)) & (vec2<i32>(-12861i, -4879i) & arg_1.xz), ~abs(_wgslsmith_mult_vec4_i32(arg_1, arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f - arg_2), arg_2) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), vec2<f32>(arg_2, 1288f)))), 4294967295u).a.x);
    var var_4 = vec4<u32>(var_0.x, arg_0.x, arg_0.x, _wgslsmith_clamp_u32(0u, arg_0.x, func_4(Struct_2(!vec2<bool>(true, var_1.a), Struct_1(vec4<i32>(0i, -7906i, u_input.a, -10391i), false, u_input.a, global0[_wgslsmith_index_u32(arg_0.x, 12u)]), 4294967295u, vec2<u32>(4296u, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, arg_0.x, 29587u), vec4<u32>(arg_0.x, 4294967295u, arg_0.x, var_0.x)), ~(arg_1.yw << (arg_0.zy % vec2<u32>(32u))), select(vec2<bool>(false, false), !vec2<bool>(true, var_1.a), true || var_1.a)).x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-786f + _wgslsmith_f_op_f32(func_1(vec3<u32>(1u, 1u, 1u), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, -1i, -27853i), -1000f))), -104f, true))));
    let var_0 = vec2<u32>(countOneBits(_wgslsmith_mult_u32(~1u, ~firstTrailingBit(31868u))), ~firstTrailingBit(_wgslsmith_sub_u32(4294967295u, ~1u)));
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-282f)))) * -1727f))));
    var var_1 = 1853f;
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(125f, 596f) - vec2<f32>(-832f, -675f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(ceil(384f)), -705f))))));
    let var_3 = vec2<i32>(_wgslsmith_mod_i32(select(u_input.a, -55330i, false) >> ((25386u >> (var_0.x % 32u)) % 32u), u_input.a << (1u % 32u)) ^ (_wgslsmith_clamp_i32(u_input.a, _wgslsmith_div_i32(29949i, u_input.a), u_input.a) & 28497i), u_input.a);
    var var_4 = 1636f;
    var var_5 = Struct_3(_wgslsmith_f_op_f32(max(var_2.x, -1828f)), ~max(~abs(vec3<u32>(4294967295u, 64634u, 5870u)), select(vec3<u32>(var_0.x, 34415u, 0u), vec3<u32>(44697u, 4294967295u, 27872u), vec3<bool>(true, false, false)) | abs(vec3<u32>(var_0.x, var_0.x, var_0.x))), ~39245i >> (var_0.x % 32u), true);
    let x = u_input.a;
    s_output = StorageBuffer(~min(firstLeadingBit(vec4<u32>(var_0.x, 1u, var_0.x, var_0.x) >> (vec4<u32>(var_0.x, var_5.b.x, 4294967295u, 7270u) % vec4<u32>(32u))), ~(~vec4<u32>(61986u, 1u, 36767u, 12798u))));
}

