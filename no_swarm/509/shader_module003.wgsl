struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1416f, -764f)))))))));
    global1 = Struct_3(arg_2.xx, ~(~9780u), !(!any(!vec2<bool>(global1.c, global1.c))));
    let var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-arg_2.x, min(-global1.a.x << (u_input.a % 32u), global1.a.x), ~_wgslsmith_mod_i32(-global1.a.x, u_input.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.b, _wgslsmith_div_i32(global1.a.x, -19217i)), abs(_wgslsmith_mod_i32(global1.a.x, global1.a.x)), _wgslsmith_add_i32(-2147483647i, u_input.b) >> (27849u % 32u)), arg_2), vec3<i32>(_wgslsmith_div_i32(select(-45596i, 27i, global1.c), 1i), -22856i, ~min(arg_2.x, u_input.b)) | vec3<i32>(_wgslsmith_mod_i32(~(-2147483647i), 1i), 1i, 1i));
    var var_2 = !(!(all(!vec3<bool>(global1.c, global1.c, false)) | any(select(vec2<bool>(true, false), vec2<bool>(false, global1.c), vec2<bool>(true, true)))));
    var var_3 = Struct_3(select(_wgslsmith_sub_vec2_i32((arg_2.xy | vec2<i32>(arg_1.x, arg_1.x)) & arg_2.yz, ~_wgslsmith_add_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(11347i, u_input.b))), arg_1.wy, _wgslsmith_f_op_f32(floor(1588f)) > var_0.x), firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_add_u32(~global1.b, global1.b), u_input.a >> (1u % 32u))), true || arg_0);
    return 0u;
}

fn func_2() -> i32 {
    global1 = Struct_3(reverseBits(-vec2<i32>(abs(global1.a.x), u_input.b)), (~u_input.a ^ 94271u) << ((abs(u_input.a) | func_3(false, abs(vec4<i32>(2147483647i, u_input.b, 2147483647i, u_input.b)), reverseBits(vec3<i32>(-87393i, global1.a.x, u_input.b)))) % 32u), !any(!vec4<bool>(global1.c, global1.c, true, false)) & all(!select(vec2<bool>(false, global1.c), vec2<bool>(true, true), true)));
    let var_0 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(reverseBits(0i), -1i, _wgslsmith_add_i32(u_input.b, -2147483647i), 28689i), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.b, global1.a.x, 0i), vec4<i32>(-1i, global1.a.x, 0i, 0i)) & select(vec4<i32>(global1.a.x, u_input.b, -35502i, -26523i), vec4<i32>(global1.a.x, 1403i, 0i, 0i), vec4<bool>(global1.c, global1.c, false, global1.c))) | _wgslsmith_sub_vec4_i32(min(select(vec4<i32>(-22720i, -33961i, u_input.b, global1.a.x), vec4<i32>(-9326i, global1.a.x, -1i, u_input.b), global1.c), vec4<i32>(u_input.b, 1i, 1i, global1.a.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.a.x, global1.a.x, 1i, 45967i), vec4<i32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x) | vec4<i32>(-1i, global1.a.x, 24630i, -44788i), ~vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b))), vec4<i32>(0i, _wgslsmith_mod_i32(-10245i, 1i), select(_wgslsmith_dot_vec4_i32(vec4<i32>(5541i, u_input.b, global1.a.x, -16674i), vec4<i32>(0i, global1.a.x, 22626i, global1.a.x)), i32(-1i) * -2147483647i, !global1.c) & _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-21871i, global1.a.x, 1i, 2147483647i), vec4<i32>(0i, global1.a.x, u_input.b, 2147483647i)), u_input.b), -global1.a.x));
    global0 = _wgslsmith_dot_vec4_u32(abs(vec4<u32>(8724u, max(select(global1.b, u_input.a, true), 28025u), (global1.b ^ 1u) << (1u % 32u), 0u)), ~abs(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(38775u, 0u, u_input.a, 1u), vec4<u32>(4294967295u, global1.b, 1u, 6059u)), firstTrailingBit(global1.b), 9796u, 17509u)));
    global0 = 1u;
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(i32(-1i) * -(u_input.b | u_input.b), -(0i & _wgslsmith_clamp_i32(u_input.b, 2147483647i, -1i))), -min(_wgslsmith_mult_i32(reverseBits(u_input.b), _wgslsmith_div_i32(u_input.b, 25605i)), ~_wgslsmith_clamp_i32(-21503i, global1.a.x, var_0.x)));
    return 2147483647i;
}

fn func_4(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = arg_0.e;
    global0 = reverseBits(27630u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, 7802u, 0u) >> (vec3<u32>(4294967295u, 7837u, u_input.a) % vec3<u32>(32u)), select(vec3<u32>(270u, u_input.a, 0u), vec3<u32>(global1.b, global1.b, u_input.a), false))) << (firstLeadingBit(u_input.a) % 32u);
    var var_1 = select(select(arg_0.e.a.yx, !arg_0.c.zx, !(!(!var_0.a.yx))), vec2<bool>(var_0.a.x, true), !select(vec2<bool>(global1.b != 1u, all(vec3<bool>(true, arg_0.e.a.x, global1.c))), vec2<bool>(!arg_0.c.x, !arg_0.e.a.x), _wgslsmith_add_i32(23983i, u_input.b) == -2147483647i));
    let var_2 = _wgslsmith_mult_i32(u_input.b, ~arg_0.d);
    let var_3 = var_2;
    return vec2<i32>(_wgslsmith_clamp_i32(-17532i, var_3 << (_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, u_input.a, global1.b) ^ vec3<u32>(u_input.a, 66111u, 53337u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global1.b, 0u), vec3<u32>(1812u, global1.b, global1.b))) % 32u), var_3), var_2);
}

fn func_1() -> u32 {
    global1 = Struct_3(func_4(Struct_2(_wgslsmith_f_op_f32(max(-1648f, 1815f)), ~global1.a, !vec3<bool>(false, true, global1.c), max(u_input.b, -2147483647i) | func_2(), Struct_1(!vec3<bool>(false, global1.c, global1.c), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(981f, 1000f, 633f, 666f), vec4<f32>(1117f, -1083f, -653f, 1724f))), -1344f))), reverseBits(~global1.b), false);
    global0 = global1.b;
    var var_0 = Struct_3(vec2<i32>(func_2(), _wgslsmith_sub_i32(global1.a.x, u_input.b)), func_3(global1.c, vec4<i32>(max(-1931i, global1.a.x), ~global1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(-1i, 3554i, 23680i, 51913i)), -2147483647i) & abs(vec4<i32>(global1.a.x, 9657i, u_input.b, u_input.b)), select(_wgslsmith_div_vec3_i32(vec3<i32>(global1.a.x, -1711i, 18973i), vec3<i32>(27267i, u_input.b, u_input.b)) & vec3<i32>(global1.a.x, u_input.b, global1.a.x), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(-2147483647i, -19576i, -12883i)), select(vec3<i32>(global1.a.x, u_input.b, 24407i), vec3<i32>(global1.a.x, u_input.b, global1.a.x), vec3<bool>(global1.c, global1.c, true))), false)), all(select(select(select(vec2<bool>(global1.c, global1.c), vec2<bool>(true, false), false), select(vec2<bool>(global1.c, false), vec2<bool>(global1.c, true), vec2<bool>(global1.c, global1.c)), select(vec2<bool>(global1.c, false), vec2<bool>(false, global1.c), true)), vec2<bool>(true, true), vec2<bool>(global1.c, global1.c))));
    var var_1 = ~global1.a.x;
    var var_2 = Struct_1(select(select(!vec3<bool>(var_0.c, var_0.c, false), select(select(vec3<bool>(true, var_0.c, true), vec3<bool>(false, global1.c, var_0.c), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(var_0.c, true, var_0.c), false), vec3<bool>(global1.c, var_0.c, false)), select(select(vec3<bool>(var_0.c, global1.c, false), vec3<bool>(global1.c, false, true), false), select(vec3<bool>(var_0.c, var_0.c, false), vec3<bool>(false, var_0.c, var_0.c), vec3<bool>(true, false, global1.c)), global1.c)), select(!(!vec3<bool>(var_0.c, var_0.c, false)), !vec3<bool>(var_0.c, true, true), select(!vec3<bool>(var_0.c, var_0.c, global1.c), select(vec3<bool>(global1.c, true, var_0.c), vec3<bool>(false, global1.c, true), vec3<bool>(var_0.c, false, var_0.c)), select(vec3<bool>(var_0.c, var_0.c, global1.c), vec3<bool>(var_0.c, var_0.c, false), global1.c))), select(select(select(vec3<bool>(global1.c, global1.c, global1.c), vec3<bool>(var_0.c, true, false), global1.c), !vec3<bool>(var_0.c, global1.c, var_0.c), vec3<bool>(var_0.c, var_0.c, true)), !select(vec3<bool>(true, var_0.c, global1.c), vec3<bool>(false, global1.c, var_0.c), vec3<bool>(false, var_0.c, true)), !global1.c)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1365f)))))), -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-378f, 571f)) * _wgslsmith_f_op_f32(ceil(114f))))), 1166f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2280f)) * -1569f) * -399f)));
    return abs(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1336f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(484f, 1000f)) + _wgslsmith_f_op_f32(ceil(-1831f)))))));
    global0 = func_1();
    var var_1 = Struct_2(var_0, global1.a, !(!vec3<bool>(global1.a.x < u_input.b, true, false)), -global1.a.x, Struct_1(select(!select(vec3<bool>(false, global1.c, global1.c), vec3<bool>(global1.c, global1.c, global1.c), true), vec3<bool>(any(vec3<bool>(false, false, global1.c)), global1.c, false), any(vec4<bool>(global1.c, global1.c, global1.c, true)) | true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(414f, var_0, 1492f, 1098f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, -1018f, -705f, 522f), vec4<f32>(-608f, var_0, var_0, var_0))))), var_0));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_div_f32(var_1.e.c, _wgslsmith_f_op_f32(floor(var_0))))))));
    var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(482f, _wgslsmith_f_op_f32(f32(-1f) * -641f))))));
    let var_3 = !select(vec2<bool>(abs(global1.b) < ~10910u, false), select(vec2<bool>(global1.a.x == u_input.b, global1.c), select(!var_1.e.a.zy, !var_1.c.xz, select(vec2<bool>(var_1.c.x, var_1.c.x), var_1.e.a.yz, global1.c)), select(var_1.c.xy, !var_1.c.zx, all(vec4<bool>(var_1.e.a.x, global1.c, true, var_1.e.a.x)))), vec2<bool>(false, true));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-1136f - -605f)), vec2<i32>(var_1.b.x, ~1i), select(vec3<bool>(true, ~0u >= min(u_input.a, 15336u), true), vec3<bool>(global1.c, !all(vec4<bool>(var_3.x, false, global1.c, true)), var_3.x), _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(-var_0))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -722f)) - _wgslsmith_f_op_f32(step(-208f, var_1.e.c)))), abs(-2147483647i), var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-2147483647i, i32(-1i) * -1i));
}

