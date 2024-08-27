struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 16>;

var<private> global1: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true));

var<private> global2: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<u32>(1u, ~u_input.a.x);
    global1 = array<vec3<bool>, 20>();
    global1 = array<vec3<bool>, 20>();
    let var_1 = Struct_2(-1i, Struct_1(max(-vec4<i32>(39080i, u_input.c, 2819i, u_input.c) ^ vec4<i32>(u_input.c, 0i, u_input.c, u_input.c), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, 0i, -8608i, -2147483647i)) | -vec4<i32>(u_input.c, -27160i, 1i, -2147483647i)), vec4<bool>(true, all(vec4<bool>(true, false, true, true)), true, false)), ~select(global0[_wgslsmith_index_u32(u_input.b, 16u)] ^ vec4<u32>(0u, 0u, u_input.b, var_0.x), ~vec4<u32>(0u, 0u, 1142u, u_input.b), false) ^ (~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 57953u, var_0.x, var_0.x), vec4<u32>(1u, var_0.x, u_input.b, u_input.a.x)) & countOneBits(global0[_wgslsmith_index_u32(34751u, 16u)])));
    global1 = array<vec3<bool>, 20>();
    return Struct_1(select(var_1.b.a, firstTrailingBit(var_1.b.a) & _wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_1.b.a.x, var_1.b.a.x, 5936i), var_1.b.a), select(vec4<bool>(true, false, var_1.b.b.x, false), select(select(global2[_wgslsmith_index_u32(37004u, 18u)], global2[_wgslsmith_index_u32(var_0.x, 18u)], var_1.b.b.x), !global2[_wgslsmith_index_u32(66782u, 18u)], true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(var_1.b.b.x, false, true, var_1.b.b.x), true), !var_1.b.b, select(false, true, false)))), global2[_wgslsmith_index_u32(firstTrailingBit(~(~40576u)), 18u)]);
}

fn func_3(arg_0: bool, arg_1: u32) -> u32 {
    let var_0 = ~29409u;
    var var_1 = Struct_2(1i, Struct_1(~func_2().a, !vec4<bool>(true, arg_0, false, true)), ~max(u_input.a, vec4<u32>(0u, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(arg_1, 16u)], global0[_wgslsmith_index_u32(var_0, 16u)]), 0u, 95608u)));
    let var_2 = Struct_2(func_2().a.x, Struct_1(_wgslsmith_sub_vec4_i32(firstTrailingBit(firstTrailingBit(vec4<i32>(var_1.a, -13219i, u_input.c, 28829i))), -_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a, var_1.a, -30270i, u_input.c), var_1.b.a)), var_1.b.b), vec4<u32>(~var_0, ~4294967295u, _wgslsmith_mult_u32(select(~26753u, var_1.c.x, select(arg_0, true, var_1.b.b.x)), arg_1 >> (arg_1 % 32u)), 32733u ^ (arg_1 << ((arg_1 << (1u % 32u)) % 32u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-354f, _wgslsmith_f_op_f32(max(698f, 779f)), -1000f, 1187f) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-503f, -341f, -824f, 604f) + vec4<f32>(-1107f, 1270f, -610f, -551f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-423f, -354f, -2070f, -940f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-686f, 1609f, 767f, 571f), vec4<f32>(-734f, -273f, -1000f, -1231f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1257f, 124f, 382f))))))) * vec4<f32>(-1333f, -383f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(235f, -152f)) - _wgslsmith_div_f32(355f, -2011f)) + 1599f), _wgslsmith_f_op_f32(f32(-1f) * -691f)));
    let var_4 = vec2<i32>((~max(u_input.c, u_input.c) << (~_wgslsmith_div_u32(4294967295u, 78564u) % 32u)) | _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, -18625i, -25480i, 0i) | var_1.b.a, var_1.b.a), var_2.a);
    return ~43290u;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_mult_i32(u_input.c, 1i), func_2(), global0[_wgslsmith_index_u32(u_input.b, 16u)]);
    global0 = array<vec4<u32>, 16>();
    var_0 = Struct_2(_wgslsmith_dot_vec2_i32(select(~(~vec2<i32>(arg_0.x, arg_2)), _wgslsmith_div_vec2_i32(abs(vec2<i32>(-1i, -57557i)), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1, var_0.a), vec2<i32>(arg_0.x, u_input.c))), true), vec2<i32>(-2147483647i, -8014i)), Struct_1(_wgslsmith_mult_vec4_i32(var_0.b.a, vec4<i32>(_wgslsmith_mod_i32(u_input.c, 1i), firstTrailingBit(10375i), ~arg_2, -1i ^ u_input.c)), var_0.b.b), _wgslsmith_mod_vec4_u32(vec4<u32>(78701u, _wgslsmith_mult_u32(u_input.b, firstTrailingBit(var_0.c.x)), 1u, 32648u), _wgslsmith_sub_vec4_u32(vec4<u32>(~4294967295u, 1u, countOneBits(u_input.a.x), 4294967295u), firstTrailingBit(vec4<u32>(23341u, var_0.c.x, 4294967295u, 4294967295u)) >> (_wgslsmith_div_vec4_u32(u_input.a, var_0.c) % vec4<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(163f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_2 = abs(~vec2<i32>(-25231i, min(-var_0.b.a.x, -29942i)));
    return Struct_2(2147483647i, func_2(), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_div_u32(154400u, u_input.b) & _wgslsmith_mult_u32(func_3(var_0.b.b.x, 4294967295u), _wgslsmith_add_u32(var_0.c.x, 46307u)), 16314u), 16u)]);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_3.c.xy;
    let var_1 = func_2().b.x;
    var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, u_input.a.x), _wgslsmith_clamp_vec2_u32(arg_0.c.yx, vec2<u32>(19787u, u_input.a.x), vec2<u32>(arg_0.c.x, arg_3.c.x))), arg_1.c.zx), vec2<u32>(arg_3.c.x, reverseBits(~reverseBits(1u))));
    let var_2 = -_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(arg_1.a, 1i, 833i), (vec3<i32>(-62932i, arg_1.a, 0i) ^ vec3<i32>(18164i, arg_0.a, -6542i)) & vec3<i32>(2147483647i, arg_1.b.a.x, 9595i), ~(-vec3<i32>(arg_0.b.a.x, -2147483647i, u_input.c))), max(arg_1.b.a.xxx, vec3<i32>(0i, u_input.c | u_input.c, i32(-1i) * -15903i)));
    var_0 = arg_3.c.yx << (_wgslsmith_add_vec2_u32(vec2<u32>(12741u, u_input.b), u_input.a.xy) % vec2<u32>(32u));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<f32>) -> vec4<f32> {
    global1 = array<vec3<bool>, 20>();
    let var_0 = func_2();
    global2 = array<vec4<bool>, 18>();
    let var_1 = Struct_1(var_0.a << (u_input.a % vec4<u32>(32u)), !(!(!(!vec4<bool>(false, false, arg_2.b.x, false)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2092f * arg_3.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + 543f))))));
    return _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2, var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + 182f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(921f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), var_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1527f;
    global0 = array<vec4<u32>, 16>();
    global2 = array<vec4<bool>, 18>();
    global2 = array<vec4<bool>, 18>();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -101f, 1000f) + vec4<f32>(-1952f, var_0, var_0, var_0)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-313f, var_0, -742f, 1223f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(130f, -951f, 404f, -1569f), vec4<f32>(var_0, 506f, var_0, -1118f))) * vec4<f32>(-1513f, 253f, var_0, var_0))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 - var_0), 392f, var_0) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -2111f, var_0, -1204f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1985f, 1000f, var_0, var_0) + vec4<f32>(732f, var_0, -707f, 207f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(func_4(func_1(vec2<i32>(1i, -2147483647i), u_input.c, u_input.c), Struct_2(u_input.c, Struct_1(vec4<i32>(1i, 17984i, 4588i, 7056i), vec4<bool>(true, true, false, true)), global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), 631f, func_1(vec2<i32>(u_input.c, u_input.c), u_input.c, u_input.c)), vec3<u32>(4294967295u, u_input.b, abs(76275u)), func_2(), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1723f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_0), vec2<f32>(-1061f, var_0), vec2<bool>(false, false))), vec2<bool>(true, true))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, -933f) + vec4<f32>(var_0, var_0, 2633f, -1675f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1288f, -1000f, var_0, 443f), vec4<f32>(555f, -1751f, 1988f, var_0), vec4<bool>(true, false, true, false)))))), true));
    var var_2 = 904f;
    let var_3 = vec3<bool>(true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xzw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2334f, 918f, var_3.x)) - _wgslsmith_f_op_vec4_f32(func_5(Struct_1(vec4<i32>(-4171i, u_input.c, 1i, -24659i), vec4<bool>(true, var_3.x, var_3.x, false)), vec3<u32>(u_input.b, u_input.a.x, 4294967295u), Struct_1(vec4<i32>(0i, -83258i, u_input.c, u_input.c), vec4<bool>(var_3.x, true, var_3.x, false)), var_1.yy)).x) * var_0)), -1102f);
}

