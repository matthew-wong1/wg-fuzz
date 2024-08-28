struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(496f, 167f, -151f, 108f, -369f, -1000f, -1897f, 361f, -422f, -480f, 874f, 738f, -1157f, -1814f, 142f, 1000f, 1014f, 1000f, -794f, -2229f, 1000f);

var<private> global1: Struct_1 = Struct_1(20846u, 26329u, vec3<bool>(true, false, true));

var<private> global2: f32 = 249f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> u32 {
    global2 = -1245f;
    let var_0 = _wgslsmith_div_vec3_u32(~vec3<u32>(18820u, abs(u_input.b), ~1u), u_input.c.zyz) >> (vec3<u32>(u_input.b, ~_wgslsmith_sub_u32(u_input.b, 4294967295u) >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.c), vec4<u32>(63384u, 62186u, u_input.c.x, 1108u)) % 32u), 1u) % vec3<u32>(32u));
    global0 = array<f32, 21>();
    let var_1 = max(max(~var_0.x, firstLeadingBit(~select(10574u, var_0.x, global1.c.x))), ~u_input.b);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-920f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 21u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 21u)], 349f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(var_0.x, 21u)]) + vec2<f32>(global0[_wgslsmith_index_u32(global1.b, 21u)], global0[_wgslsmith_index_u32(1u, 21u)])))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(25568u, 21u)])))), global0[_wgslsmith_index_u32(var_1, 21u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], _wgslsmith_f_op_f32(f32(-1f) * -794f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(31581u, 21u)], 206f), vec2<f32>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(var_1, 21u)]))), vec2<f32>(global0[_wgslsmith_index_u32(global1.b, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)]))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_1, 21u)], global0[_wgslsmith_index_u32(global1.a, 21u)]), vec2<f32>(-666f, global0[_wgslsmith_index_u32(u_input.b, 21u)]))))));
    return ~var_0.x;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: vec2<u32>) -> f32 {
    let var_0 = Struct_1(20974u, ~u_input.b, vec3<bool>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_3.x), u_input.c.zw)) <= _wgslsmith_mult_u32(~u_input.b, _wgslsmith_add_u32(u_input.b, 48418u)), !(true == all(vec4<bool>(false, false, true, global1.c.x))), false));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(353f, global0[_wgslsmith_index_u32(82295u, 21u)])) + -294f)));
    global1 = Struct_1(u_input.c.x, func_3(), vec3<bool>(true, (any(global1.c) && true) || !(!arg_2), select(true, u_input.d.x > -48148i, global1.c.x)));
    global0 = array<f32, 21>();
    global2 = arg_1;
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: u32) -> u32 {
    global2 = _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 21u)] * arg_2) - -1000f)))));
    var var_0 = true | any(select(select(vec2<bool>(false, arg_0), global1.c.zy, true), global1.c.yy, !vec2<bool>(true, arg_0)));
    global2 = arg_2;
    var var_1 = global1.c.x;
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(74899u, 21u)])))), global1.c.x, ~_wgslsmith_mod_vec2_u32(vec2<u32>(global1.a, 45921u), countOneBits(u_input.c.wz))))));
    return ~(~arg_1);
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> vec3<bool> {
    let var_0 = arg_2;
    let var_1 = max(vec4<i32>(~(~arg_0.x), (arg_0.x << (global1.b % 32u)) << (1u % 32u), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(1i, u_input.a, arg_0.x, u_input.a)), select(vec4<i32>(0i, arg_0.x, arg_0.x, -2416i), vec4<i32>(31765i, -1i, 29865i, -2147483647i), false) ^ abs(vec4<i32>(u_input.a, u_input.a, u_input.a, 16059i))), _wgslsmith_sub_i32(-(-103314i ^ u_input.a), 12627i)), abs(-vec4<i32>(arg_0.x, max(u_input.d.x, arg_0.x), 27445i, -2147483647i)));
    var var_2 = Struct_1(_wgslsmith_div_u32(max(43450u << (arg_2.b % 32u), ~0u) << (_wgslsmith_clamp_u32(~53475u, var_0.a, ~1u) % 32u), min(~global1.a & 0u, 33322u)), select(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(19461u, 4294967295u, 13379u), vec3<u32>(global1.b, var_0.b, 4294967295u)), _wgslsmith_add_vec3_u32(u_input.c.wzw, vec3<u32>(83444u, u_input.c.x, var_0.a))) << (abs(~55740u) % 32u), 80938u, false), arg_2.c);
    let var_3 = Struct_1(~(~4294967295u), u_input.c.x, vec3<bool>(arg_2.c.x, true, true));
    let var_4 = var_3;
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(select(-1200f, _wgslsmith_f_op_f32(f32(-1f) * -116f), !all(!global1.c)));
    let var_0 = Struct_1(global1.a, 4294967295u, func_4(~u_input.d.yx, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(59548u, 21u)]))) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 21u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(18664u, 21u)], global0[_wgslsmith_index_u32(u_input.b, 21u)]))), Struct_1(global1.a, reverseBits(func_1(global1.c.x, 1u, -809f, u_input.b)), !(!global1.c)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global1.b, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)], 569f)), vec3<f32>(162f, global0[_wgslsmith_index_u32(22308u, 21u)], -571f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], -363f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(13554u, 21u)], -992f)))))));
    var var_1 = Struct_1(abs(~min(_wgslsmith_div_u32(var_0.b, global1.a), _wgslsmith_clamp_u32(1u, var_0.a, 1743u))), ~(~_wgslsmith_dot_vec2_u32(u_input.c.ww, vec2<u32>(global1.b, 0u))), func_4(~firstLeadingBit(~u_input.d.zx), select(false, false, false), var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1405f, -129f, 256f), vec3<f32>(global0[_wgslsmith_index_u32(1u, 21u)], 1792f, global0[_wgslsmith_index_u32(7354u, 21u)])))))));
    global0 = array<f32, 21>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -369f)))));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.b, 21u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.b, 21u)])) + _wgslsmith_div_f32(233f, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(5673u, 21u)])))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(31576u, 21u)])));
    let var_2 = select(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 58629i, -1i), u_input.d ^ u_input.d, -vec3<i32>(u_input.a, 66423i, u_input.a)), vec3<i32>(firstTrailingBit(34010i), -27656i, _wgslsmith_add_i32(u_input.d.x, 0i))), min(vec3<i32>(-u_input.a, -u_input.d.x, u_input.a), ~max(u_input.d, vec3<i32>(0i, -53509i, -36556i))), select(vec3<bool>(true, !var_1.c.x, !var_1.c.x), var_1.c, all(!vec4<bool>(global1.c.x, var_1.c.x, var_1.c.x, true)))) >> ((u_input.c.yyz ^ _wgslsmith_sub_vec3_u32(vec3<u32>(~30770u, 1u, _wgslsmith_dot_vec2_u32(u_input.c.xz, vec2<u32>(global1.b, var_1.a))), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global1.b, 0u) & u_input.c.xyx, u_input.c.xyx))) % vec3<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(19134u, 21u)] + -507f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1807f * -1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(global1.a, 21u)], global0[_wgslsmith_index_u32(var_0.a, 21u)], false, u_input.c.yy)))))));
    var var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b << (u_input.c.x % 32u), firstLeadingBit(-21602i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(3664u, 21u)]), global0[_wgslsmith_index_u32(11592u, 21u)]), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(41955u, 21u)]))), select(!var_1.c.xz, var_1.c.xx, global1.c.yx))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(var_0.b, 21u)], 680f)), global0[_wgslsmith_index_u32(abs(1u), 21u)]) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(75322u, 21u)], 229f) + vec2<f32>(global0[_wgslsmith_index_u32(global1.a, 21u)], 886f))))), ~(var_2.zz >> (reverseBits(u_input.c.yw) % vec2<u32>(32u))) & ~(~vec2<i32>(-1i, u_input.d.x)));
}

