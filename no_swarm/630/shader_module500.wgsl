struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<i32>;

var<private> global2: array<vec4<bool>, 1>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(max(firstTrailingBit(reverseBits(~arg_1)), arg_3.c.b), abs(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(arg_3.d.b, arg_2.c.b), vec4<u32>(arg_3.d.b.x, arg_3.d.b.x | 1u, _wgslsmith_div_u32(1u, 5258u), _wgslsmith_clamp_u32(32329u, arg_3.d.c.x, arg_1.x)))));
    let var_1 = any(vec2<bool>(arg_1.x < 1u, !all(select(vec2<bool>(arg_2.e.x, arg_2.b), vec2<bool>(true, true), arg_2.e.yx))));
    return arg_3.d.c.x;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    let var_0 = Struct_1(709f, vec4<u32>(func_3(~global1.x, vec4<u32>(0u, 0u, 55688u, 0u), Struct_2(arg_0.x, false, Struct_1(589f, vec4<u32>(1u, 1u, 3537u, 1u), vec2<u32>(5352u, 1u)), vec4<i32>(u_input.a, -32099i, 0i, -1i), global2[_wgslsmith_index_u32(48325u, 1u)]), Struct_3(arg_0.x, u_input.a, Struct_1(arg_0.x, vec4<u32>(4294967295u, 0u, 4294967295u, 84663u), vec2<u32>(55887u, 0u)), Struct_1(arg_0.x, vec4<u32>(1u, 0u, 7504u, 1u), vec2<u32>(16491u, 41112u)), u_input.a)) ^ reverseBits(4294967295u), 18354u, 1u, 1u), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(1u, abs(76061u))), vec2<u32>(min(64137u, _wgslsmith_dot_vec4_u32(vec4<u32>(17648u, 31954u, 0u, 30613u), vec4<u32>(0u, 1u, 1u, 1u))), 18766u)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -916f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)) * arg_0.x)), -firstTrailingBit(-70433i), Struct_1(116f, vec4<u32>(var_0.c.x, ~min(37388u, var_0.b.x), ~_wgslsmith_mult_u32(73556u, 4947u), _wgslsmith_dot_vec2_u32(vec2<u32>(5442u, 1u), _wgslsmith_add_vec2_u32(var_0.b.xy, var_0.c))), _wgslsmith_sub_vec2_u32(vec2<u32>(abs(var_0.c.x), 4019u), var_0.b.yx)), Struct_1(-411f, abs(select(abs(var_0.b), ~var_0.b, true)), vec2<u32>(var_0.c.x, 1u)), -max(u_input.a, 0i));
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(0i, u_input.a, -5347i, 33935i), ~vec4<i32>(u_input.a, var_1.b, global1.x, u_input.a)), ~firstLeadingBit(~vec4<i32>(-1i, var_1.e, var_1.e, 25844i))), var_1.b);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: vec4<i32>) -> f32 {
    let var_0 = vec2<i32>(func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 1814f))))), firstLeadingBit(max(i32(-1i) * -16173i, arg_2.x)));
    let var_1 = !(!select(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true));
    global0 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 72654u, 4294967295u, 1u), vec4<u32>(39820u, 29648u, 4294967295u, 50373u)), vec4<u32>(1u, ~4294967295u, func_3(0i, vec4<u32>(34146u, 28020u, 0u, 4294967295u), Struct_2(1194f, var_1.x, Struct_1(-184f, vec4<u32>(4294967295u, 1u, 44054u, 4294967295u), vec2<u32>(4294967295u, 1u)), arg_2, global2[_wgslsmith_index_u32(21545u, 1u)]), Struct_3(-135f, u_input.a, Struct_1(-333f, vec4<u32>(77335u, 0u, 40135u, 0u), vec2<u32>(46541u, 1u)), Struct_1(arg_0.x, vec4<u32>(152687u, 4294967295u, 0u, 134u), vec2<u32>(0u, 0u)), arg_2.x)), 22802u)) | ~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(282u, 59011u, 0u, 97714u), vec4<u32>(12544u, 3594u, 1u, 3390u)) | 10147u, 1u, _wgslsmith_div_u32(25537u, 1u), ~1u), select(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 15023u, 4803u, 0u), vec4<u32>(22782u, 1u, 56046u, 81541u)), global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(10817u, 504u), 1u)])));
    var var_2 = Struct_4(~23338u, Struct_3(arg_1.x, global1.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(645f, arg_1.x))), vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec2<u32>(1u, 1u))), Struct_1(arg_1.x, vec4<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(22470u, 1u, 1u), vec3<u32>(4294967295u, 37021u, 0u)), ~0u, ~0u), abs(~vec2<u32>(0u, 32652u))), 0i), vec3<u32>(~countOneBits(func_3(global1.x, vec4<u32>(1530u, 70829u, 0u, 4294967295u), Struct_2(arg_0.x, true, Struct_1(-371f, vec4<u32>(23186u, 0u, 5110u, 0u), vec2<u32>(71868u, 25303u)), vec4<i32>(var_0.x, 7217i, u_input.a, -12057i), vec4<bool>(true, var_1.x, var_1.x, false)), Struct_3(-813f, -29537i, Struct_1(659f, vec4<u32>(4294967295u, 4294967295u, 63414u, 1u), vec2<u32>(0u, 1u)), Struct_1(504f, vec4<u32>(21940u, 2665u, 100002u, 0u), vec2<u32>(4294967295u, 26228u)), -1i))), func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -28265i), global1.wx), ~(~vec4<u32>(26102u, 1u, 1u, 4294967295u)), Struct_2(_wgslsmith_f_op_f32(-arg_0.x), false, Struct_1(arg_1.x, vec4<u32>(4190u, 57157u, 4294967295u, 0u), vec2<u32>(31940u, 27267u)), arg_2, select(global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(52365u, 1u)], vec4<bool>(false, var_1.x, true, true))), Struct_3(_wgslsmith_f_op_f32(-arg_0.x), -global1.x, Struct_1(arg_1.x, vec4<u32>(1u, 0u, 50632u, 4294967295u), vec2<u32>(81334u, 4294967295u)), Struct_1(arg_1.x, vec4<u32>(4294967295u, 4294967295u, 19905u, 14709u), vec2<u32>(4294967295u, 0u)), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, -1i), vec2<i32>(u_input.a, -37177i)))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))));
    var var_3 = Struct_2(arg_0.x, any(select(select(select(global2[_wgslsmith_index_u32(0u, 1u)], vec4<bool>(true, true, false, var_1.x), global2[_wgslsmith_index_u32(37598u, 1u)]), select(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(1u, 1u)], vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), global2[_wgslsmith_index_u32(4294967295u & var_2.b.c.b.x, 1u)]), select(!global2[_wgslsmith_index_u32(6823u, 1u)], !global2[_wgslsmith_index_u32(var_2.a, 1u)], select(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(var_2.a, 1u)], var_1.x)), !(arg_1.x < var_2.b.c.a))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x))), -844f)), ~(~vec4<u32>(4294967295u, var_2.c.x, var_2.a, var_2.a)), var_2.b.c.b.wy), arg_2, global2[_wgslsmith_index_u32(4294967295u, 1u)]);
    return _wgslsmith_f_op_f32(-var_3.c.a);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    return Struct_1(737f, ~(~vec4<u32>(arg_0, var_0.c.x, ~4294967295u, 88033u)), select(vec2<u32>(~var_0.b.x, 4294967295u ^ (1u ^ arg_2.c.x)), max(var_0.b.xz >> (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 19661u), var_0.b.zz) % vec2<u32>(32u)), max(vec2<u32>(arg_0, 11777u), firstLeadingBit(arg_2.b.wx))), true));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_4) -> Struct_2 {
    var var_0 = false;
    global1 = vec4<i32>(1i, global1.x, 58950i, _wgslsmith_dot_vec3_i32(global1.xzy, global1.ywz));
    var var_1 = ~vec4<i32>(~_wgslsmith_mod_i32(-2147483647i, ~(-36578i)), 11016i | firstTrailingBit(countOneBits(-2147483647i)), -1i, abs(~global1.x));
    global0 = _wgslsmith_clamp_u32(~firstLeadingBit(58951u), 73723u, 0u);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-858f * _wgslsmith_f_op_f32(abs(arg_3.b.d.a))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1330f + arg_3.b.a), arg_1.x));
    return Struct_2(arg_3.b.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1002u << (arg_3.a % 32u), _wgslsmith_mod_u32(arg_3.b.c.b.x, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d.b.x, arg_3.c.x), vec2<u32>(39152u, 31074u)), 1u), vec4<u32>(_wgslsmith_add_u32(arg_3.a, 1u), arg_0.c.c.x, _wgslsmith_mult_u32(6844u, arg_0.c.b.x), countOneBits(43169u))) >= (((10270u ^ arg_3.c.x) >> (min(arg_3.c.x, arg_3.a) % 32u)) >> (0u % 32u)), Struct_1(func_4(_wgslsmith_div_u32(8604u, arg_3.a), max(0i, global1.x), Struct_1(var_2, arg_0.d.b, ~vec2<u32>(arg_0.d.b.x, arg_3.b.c.b.x))).a, vec4<u32>(~0u, arg_3.c.x, ~(arg_3.a << (40083u % 32u)), _wgslsmith_mod_u32(41980u, arg_3.b.d.c.x) | arg_3.a), min(reverseBits(arg_3.c.yy), vec2<u32>(1u, 7278u))), abs(-(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -438i, 2147483647i, 17365i), vec4<i32>(18663i, global1.x, u_input.a, arg_3.b.e), vec4<i32>(arg_3.b.e, global1.x, -2147483647i, u_input.a)) >> (min(arg_3.b.c.b, vec4<u32>(arg_0.c.b.x, 73008u, 30596u, 14262u)) % vec4<u32>(32u)))), !global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(firstLeadingBit(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(9625u, arg_3.b.d.b.x, 0u, 59508u), arg_3.b.c.b), ~arg_3.c.x), 1u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~21035u;
    global0 = var_0;
    let var_1 = func_5(Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-790f, -687f))))), _wgslsmith_div_i32(-16541i, _wgslsmith_dot_vec2_i32(global1.wx, vec2<i32>(-2147483647i, u_input.a))) & select(reverseBits(0i), -57343i, true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-595f, -1679f)), (vec4<u32>(var_0, 0u, 4294967295u, 45911u) & vec4<u32>(1u, var_0, var_0, 0u)) ^ firstLeadingBit(vec4<u32>(var_0, var_0, 1u, var_0)), ~(~vec2<u32>(var_0, var_0))), func_4(1u, max(_wgslsmith_dot_vec4_i32(vec4<i32>(-1068i, 1514i, 1i, 44796i), vec4<i32>(u_input.a, 27899i, 2147483647i, -5122i)), -45996i), Struct_1(_wgslsmith_f_op_f32(func_1(vec4<f32>(-442f, -534f, -435f, -897f), vec3<f32>(-1638f, -1117f, 679f), vec4<i32>(-2147483647i, global1.x, global1.x, global1.x))), vec4<u32>(14119u, 78501u, var_0, var_0) ^ vec4<u32>(39860u, var_0, 41793u, var_0), vec2<u32>(var_0, 23813u))), max(2147483647i, abs(-1i))), vec4<f32>(-363f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(871f, 636f)) - _wgslsmith_div_f32(-1122f, 1621f)))), _wgslsmith_f_op_f32(f32(-1f) * -2067f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-855f))))), false, Struct_4(~(~_wgslsmith_div_u32(var_0, 0u)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -641f) - _wgslsmith_f_op_f32(f32(-1f) * -1166f)), 1i, Struct_1(_wgslsmith_f_op_f32(max(428f, 1797f)), vec4<u32>(var_0, 21001u, 1u, var_0) | vec4<u32>(var_0, 0u, var_0, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_0), vec2<u32>(36883u, 4294967295u), vec2<u32>(var_0, 40322u))), Struct_1(_wgslsmith_f_op_f32(264f + -1000f), vec4<u32>(957u, 55452u, var_0, 15535u) << (vec4<u32>(75539u, 0u, 1u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(31517u, 4294967295u), vec2<u32>(var_0, 1u))), 28746i), firstTrailingBit(~(~vec3<u32>(55347u, 0u, var_0)))));
    global0 = var_1.c.c.x;
    global2 = array<vec4<bool>, 1>();
    global2 = array<vec4<bool>, 1>();
    global2 = array<vec4<bool>, 1>();
    let var_2 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~var_1.c.c.x), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.c.a)), var_1.a), -2581f, 325f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1112f, var_1.c.a, 2098f)), vec3<f32>(var_1.a, -305f, var_1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.a, var_1.a, var_1.c.a))))), var_1.c.b.zwx, 21238u);
}

