struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26>;

var<private> global1: array<Struct_3, 21>;

var<private> global2: array<i32, 1>;

var<private> global3: array<bool, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> f32 {
    var var_0 = select(vec3<bool>(~countOneBits(u_input.c) < u_input.c, select(any(vec2<bool>(global3[_wgslsmith_index_u32(u_input.c, 27u)], false)), max(2147483647i, 0i) < u_input.a.x, !(u_input.c != u_input.c)), all(select(vec3<bool>(false, global3[_wgslsmith_index_u32(65124u, 27u)], false), vec3<bool>(global3[_wgslsmith_index_u32(64653u, 27u)], global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(u_input.c, 27u)]), u_input.d.x <= -15666i))), vec3<bool>(firstLeadingBit(abs(u_input.c)) == 1u, global3[_wgslsmith_index_u32(52908u, 27u)] | true, any(vec3<bool>(any(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.c, 27u)], true, false)), all(vec2<bool>(global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)])), global2[_wgslsmith_index_u32(63441u, 1u)] > global2[_wgslsmith_index_u32(u_input.c, 1u)]))), select(!(!(!vec3<bool>(true, true, global3[_wgslsmith_index_u32(0u, 27u)]))), vec3<bool>(true, false, select(global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(u_input.c << (u_input.c % 32u), 27u)], true)), !(!(!vec3<bool>(global3[_wgslsmith_index_u32(8660u, 27u)], false, false)))));
    var var_1 = Struct_2(Struct_1(abs(~vec4<u32>(u_input.c, 57246u, 90222u, 0u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_div_vec3_f32(vec3<f32>(510f, -182f, -1255f), vec3<f32>(-387f, -473f, 728f))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-1229f + -631f), _wgslsmith_f_op_f32(abs(233f)), -439f))), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.c, 27u)], true), vec4<u32>(_wgslsmith_add_u32(1u, ~u_input.c), 1u, firstTrailingBit(139354u) | u_input.c, reverseBits(_wgslsmith_mod_u32(39869u, u_input.c)))), -global2[_wgslsmith_index_u32(u_input.c, 1u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1350f, -1128f, -1733f, -366f)))))), Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, 0u, u_input.c, u_input.c), vec4<u32>(1666u, 10406u, 4294967295u, u_input.c), false), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 0u, 4294967295u, 0u))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(9896u, 1u, 15840u, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, 73424u), vec4<u32>(1u, u_input.c, 4294967295u, u_input.c))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -239f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1000f, 743f)), 400f)), _wgslsmith_f_op_f32(round(-2177f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(437f, -564f, 1000f)))), select(!vec3<bool>(var_0.x, global3[_wgslsmith_index_u32(u_input.c, 27u)], global3[_wgslsmith_index_u32(0u, 27u)]), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c, 27u)], global3[_wgslsmith_index_u32(u_input.c, 27u)], global3[_wgslsmith_index_u32(u_input.c, 27u)]), vec3<bool>(global3[_wgslsmith_index_u32(1u, 27u)], true, var_0.x)), true), all(vec2<bool>(true, false)) || true), ~vec4<u32>(1u, reverseBits(0u), u_input.c >> (u_input.c % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 21180u), vec2<u32>(u_input.c, 4294967295u)))));
    var var_2 = -u_input.b.xy;
    var var_3 = _wgslsmith_dot_vec3_i32(~u_input.b, select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, global2[_wgslsmith_index_u32(u_input.c, 1u)], var_2.x) >> (_wgslsmith_mod_vec3_u32(var_1.a.e.xyw, var_1.a.a.yyw) % vec3<u32>(32u)), abs(_wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(var_2.x, var_1.b, -37138i)))), reverseBits(reverseBits(vec3<i32>(var_2.x, 6599i, var_2.x)) << (vec3<u32>(4294967295u, 103394u, u_input.c) % vec3<u32>(32u))), var_0.x));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(433f, -1000f, -324f) * vec3<f32>(1734f, -299f, -1000f))))));
    return var_4.x;
}

fn func_2() -> f32 {
    global3 = array<bool, 27>();
    let var_0 = Struct_1(firstLeadingBit(vec4<u32>(u_input.c, max(u_input.c, max(4294967295u, u_input.c)), _wgslsmith_dot_vec3_u32(vec3<u32>(31929u, 41690u, u_input.c), vec3<u32>(6029u, u_input.c, u_input.c)) >> (_wgslsmith_mult_u32(u_input.c, u_input.c) % 32u), ~0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1028f, 183f, -359f), vec3<f32>(186f, -1582f, -822f)))), vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(243f, -1220f, 1063f))))) * vec3<f32>(_wgslsmith_f_op_f32(-526f + 1086f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(2876f * 1619f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1276f, -996f, 369f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1515f, 1006f, 249f) - vec3<f32>(1346f, -428f, -771f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(639f, 456f, 1421f) + vec3<f32>(-903f, -356f, 512f)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-253f * -467f), _wgslsmith_f_op_f32(ceil(472f)), -1289f))))), select(vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 25691u, 0u), vec3<u32>(u_input.c, u_input.c, u_input.c)) <= ~12683u), vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 27u)], all(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.c, 27u)], true))), select(!(!vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 27u)], true)), !vec3<bool>(global3[_wgslsmith_index_u32(58417u, 27u)], false, true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c, 27u)], true, select(true, global3[_wgslsmith_index_u32(u_input.c, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)])))), ~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, u_input.c, 11027u, u_input.c), select(vec4<u32>(u_input.c, 58084u, 32241u, 59989u), vec4<u32>(38483u, 64627u, 0u, 4294967295u), global3[_wgslsmith_index_u32(1u, 27u)]))));
    var var_1 = _wgslsmith_div_u32(var_0.a.x, ~u_input.c);
    global1 = array<Struct_3, 21>();
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, var_0.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-884f + var_0.c.x), var_0.c.x, !global3[_wgslsmith_index_u32(0u, 27u)]))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(755f, 1922f, var_0.c.x, var_0.c.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(581f, var_0.b.x, var_0.c.x, 652f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1670f, _wgslsmith_f_op_f32(f32(-1f) * -264f), _wgslsmith_f_op_f32(-var_0.b.x), var_0.c.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1103f, var_0.b.x, var_0.c.x, var_0.b.x) + vec4<f32>(517f, -319f, var_0.b.x, var_0.c.x)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-350f, -883f, var_0.c.x, 623f)))), vec4<f32>(var_0.b.x, _wgslsmith_div_f32(-972f, -754f), _wgslsmith_f_op_f32(var_0.c.x + 825f), 1014f), select(!vec4<bool>(false, var_0.d.x, false, global3[_wgslsmith_index_u32(u_input.c, 27u)]), !vec4<bool>(var_0.d.x, true, true, global3[_wgslsmith_index_u32(0u, 27u)]), !global3[_wgslsmith_index_u32(u_input.c, 27u)]))), select(vec4<bool>(global3[_wgslsmith_index_u32(44501u, 27u)] & false, true, false, true), vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.e.x, var_0.e.x), 27u)], var_0.a.x <= u_input.c, !var_0.d.x, global3[_wgslsmith_index_u32(~1u, 27u)]), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, var_0.d.x, true, true), true))))));
    return -1561f;
}

fn func_1() -> StorageBuffer {
    let var_0 = -3615i;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1034f * 1405f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1214f), _wgslsmith_div_f32(1000f, -561f))))), _wgslsmith_div_f32(-1473f, 343f), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(623f * _wgslsmith_f_op_f32(sign(-1551f))), -1000f)));
    var var_2 = -1373f;
    var var_3 = u_input.a.x ^ global2[_wgslsmith_index_u32(~u_input.c, 1u)];
    let var_4 = 823f;
    return StorageBuffer((_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c, u_input.c, 4294967295u), ~vec3<u32>(0u, 25928u, 11183u)) << ((~vec3<u32>(0u, u_input.c, u_input.c) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 36315u, u_input.c), vec3<u32>(4294967295u, 0u, u_input.c))) % vec3<u32>(32u))) | ~(~abs(vec3<u32>(4294967295u, 4294967295u, 12391u))), firstTrailingBit(countOneBits(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.c, 0u, u_input.c), vec4<u32>(u_input.c, u_input.c, 39916u, u_input.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1445f)) - _wgslsmith_f_op_f32(sign(254f))))));
    var var_1 = u_input.b;
    var var_2 = var_1.yy;
    global3 = array<bool, 27>();
    let var_3 = ~0u;
    let var_4 = Struct_4(183f);
    global3 = array<bool, 27>();
    let x = u_input.a;
    s_output = func_1();
}

