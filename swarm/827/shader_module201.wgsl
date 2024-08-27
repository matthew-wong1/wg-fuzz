struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11>;

var<private> global1: vec3<i32> = vec3<i32>(-573i, 50361i, i32(-2147483648));

var<private> global2: vec4<f32> = vec4<f32>(-683f, 388f, -544f, 1492f);

var<private> global3: vec3<f32>;

var<private> global4: array<i32, 31> = array<i32, 31>(1i, 2147483647i, 1i, -1068i, 22064i, 8285i, 13595i, -17149i, i32(-2147483648), i32(-2147483648), -1i, 0i, 1i, -1i, i32(-2147483648), 43555i, -1i, 2147483647i, 17133i, -9657i, 5779i, -1i, -36039i, -1i, -56795i, i32(-2147483648), -64353i, 5466i, 1i, 7889i, 1i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec4<f32>) -> i32 {
    var var_0 = Struct_2(Struct_1(-35158i), _wgslsmith_div_u32(_wgslsmith_div_u32(min(0u, u_input.b.x) << (101728u % 32u), arg_0 & u_input.b.x), 6566u), Struct_1(~(-17303i)));
    let var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~min(_wgslsmith_div_vec3_u32(u_input.a.yww, vec3<u32>(u_input.e.x, arg_0, u_input.e.x)), _wgslsmith_mod_vec3_u32(u_input.a.ywx, vec3<u32>(arg_0, 4294967295u, 1u))), abs(u_input.a.zyx << ((vec3<u32>(0u, 0u, 81822u) | u_input.e) % vec3<u32>(32u))), abs(vec3<u32>(11213u, ~0u, var_0.b))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~u_input.e, _wgslsmith_clamp_vec3_u32(u_input.e, vec3<u32>(28670u, 15230u, 56256u), u_input.a.yxz)), 3396u, var_0.b), ~(_wgslsmith_sub_vec3_u32(u_input.a.yzy, vec3<u32>(1u, 19137u, var_0.b)) >> ((u_input.e | u_input.e) % vec3<u32>(32u)))));
    let var_2 = Struct_2(var_0.a, ~u_input.b.x, Struct_1(var_0.a.a));
    let var_3 = all(vec3<bool>(true, true, !(!any(vec4<bool>(true, false, false, true)))));
    global4 = array<i32, 31>();
    return ~var_0.a.a;
}

fn func_2() -> i32 {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), 1486f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.x, -256f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1202f * global2.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -388f, 1521f, global3.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-729f, 141f, global3.x, -125f), vec4<f32>(global2.x, global3.x, global3.x, global3.x))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 187f, global2.x) + vec4<f32>(-288f, -278f, 742f, 269f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1439f, global3.x, global2.x, -1791f)))))));
    global2 = vec4<f32>(global2.x, 943f, global3.x, global3.x);
    var var_0 = Struct_1(func_3(~_wgslsmith_mod_u32(80896u, u_input.a.x), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(981f - 1000f), _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1516f * 806f) + _wgslsmith_f_op_f32(global2.x + global2.x)), global2.x, _wgslsmith_f_op_f32(-global3.x))));
    let var_1 = ~global4[_wgslsmith_index_u32(~(~(_wgslsmith_mult_u32(u_input.e.x, u_input.e.x) ^ ~0u)), 31u)];
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.x, _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(global3.x + 190f)), -1111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, global3.x)))))));
    return _wgslsmith_sub_i32(min(_wgslsmith_dot_vec2_i32(min(global1.zz, countOneBits(global1.yx)), -(~vec2<i32>(0i, u_input.d.x))), firstLeadingBit(_wgslsmith_sub_i32(var_1, global1.x & var_0.a))), global4[_wgslsmith_index_u32(u_input.a.x, 31u)] >> (min(44213u, 1u) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-812f, global3.x, global3.x, 753f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.x, -1000f, global2.x, global2.x), vec4<f32>(global2.x, global3.x, global3.x, 1485f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1980f, -576f, global2.x, -1000f), vec4<f32>(-1163f, 379f, global2.x, global3.x))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(613f, global3.x, global3.x, -403f))))))));
    global1 = -select(~vec3<i32>(arg_0.a, arg_0.a, global1.x), -_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global4[_wgslsmith_index_u32(0u, 31u)], -9192i), vec3<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 31u)], global4[_wgslsmith_index_u32(29942u, 31u)], global4[_wgslsmith_index_u32(u_input.b.x, 31u)])), vec3<bool>(true, true, all(vec4<bool>(false, true, false, true)))) & ~max(-reverseBits(vec3<i32>(global1.x, -11131i, global4[_wgslsmith_index_u32(u_input.b.x, 31u)])), reverseBits(vec3<i32>(61492i, u_input.d.x, arg_0.a)) << (~vec3<u32>(4294967295u, 0u, 4294967295u) % vec3<u32>(32u)));
    let var_0 = vec3<bool>(true, all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), any(vec3<bool>(true, false, true))), vec4<bool>(select(true, false, false), select(false, false, false), true, all(vec4<bool>(false, false, true, false))), vec4<bool>(true, -30497i == u_input.d.x, true, all(vec2<bool>(false, true))))), false);
    global3 = vec3<f32>(_wgslsmith_div_f32(550f, _wgslsmith_f_op_f32(sign(257f))), 178f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))));
    var var_1 = Struct_3(arg_0, global3.x, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - global3.x)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(global3.x * -477f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global3.x * 199f), _wgslsmith_f_op_f32(-928f * global3.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) - global3.zz))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global3.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * -192f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(sign(1000f)))), Struct_2(arg_0, 28979u, arg_0));
    return Struct_1(_wgslsmith_mod_i32(max(global1.x, arg_0.a), -_wgslsmith_mod_i32(_wgslsmith_div_i32(-30668i, u_input.d.x), 2147483647i & global1.x)));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_mult_vec4_u32(reverseBits(u_input.a >> (~(u_input.a >> (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_div_u32(abs(~1u), arg_0), 21222u, countOneBits(u_input.e.x), countOneBits(0u)));
    var var_1 = true;
    global0 = array<vec2<f32>, 11>();
    var_1 = true;
    var var_2 = func_4(Struct_1(_wgslsmith_sub_i32(func_2(), 40173i)), ~vec4<u32>(~(~var_0.x), ~var_0.x, ~_wgslsmith_mult_u32(44455u, u_input.e.x), _wgslsmith_div_u32(~u_input.e.x, abs(arg_0))));
    return Struct_3(func_4(Struct_1(_wgslsmith_clamp_i32(_wgslsmith_div_i32(0i, u_input.d.x), 0i, global1.x)), reverseBits(reverseBits(u_input.a << (var_0 % vec4<u32>(32u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x))) * -153f) - -266f), vec2<f32>(350f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.x, arg_2.x, arg_1.x)) - 199f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_2.x)))), Struct_2(Struct_1(u_input.c.x), ~(~(0u ^ var_0.x)), Struct_1(-1i)));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec4<u32>) -> StorageBuffer {
    let var_0 = -vec4<i32>(global4[_wgslsmith_index_u32(70090u, 31u)], _wgslsmith_div_i32(u_input.d.x, global1.x), -2147483647i, arg_0.e.c.a);
    let var_1 = func_1(_wgslsmith_mod_u32(abs(_wgslsmith_clamp_u32(110u, arg_2.x, min(arg_1.x, 33992u))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, ~0u, max(arg_2.x, arg_0.e.b)), _wgslsmith_clamp_u32(arg_0.e.b | 1u, max(19525u, 29569u), 9492u))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(all(vec3<bool>(false, false, true)), select(false, false, true)), true & (arg_0.e.b >= 1u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1946f, global3.x, 1216f, -1723f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-562f, -673f, -364f, global2.x), vec4<f32>(global3.x, global2.x, -602f, -1263f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-902f, global3.x, _wgslsmith_f_op_f32(global2.x + 274f), _wgslsmith_f_op_f32(round(arg_0.b))) - vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(round(-205f)), _wgslsmith_f_op_f32(ceil(-286f)), _wgslsmith_f_op_f32(arg_0.b - -351f))), !vec4<bool>(all(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, false, false, true)), global4[_wgslsmith_index_u32(arg_1.x, 31u)] == 0i, true)))).e.c;
    var var_2 = max(_wgslsmith_mod_u32(4294967295u, 11550u), min(~(~50871u & ~u_input.e.x), max(reverseBits(_wgslsmith_sub_u32(4294967295u, arg_1.x)), 1u)));
    global0 = array<vec2<f32>, 11>();
    var var_3 = Struct_4(vec2<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))), true));
    return StorageBuffer(arg_1.yyy, global2.wzx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1000f - 473f) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -333f), _wgslsmith_f_op_f32(-global3.x)));
    var var_1 = !(!vec4<bool>(var_0, ~u_input.c.x <= (1i ^ global4[_wgslsmith_index_u32(0u, 31u)]), _wgslsmith_dot_vec2_i32(global1.yx, global1.xy) < ~50659i, true));
    var var_2 = global1.x;
    global1 = -vec3<i32>(0i, _wgslsmith_div_i32(-6421i ^ global4[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 31u)], ~(-2147483647i)), _wgslsmith_mult_i32(reverseBits(_wgslsmith_add_i32(1i, 1i)), abs(global1.x)));
    var var_3 = Struct_4(var_1.wx);
    let var_4 = u_input.b;
    var var_5 = vec2<f32>(109f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) + _wgslsmith_f_op_f32(-global3.x)))));
    let var_6 = Struct_2(Struct_1(global1.x), firstLeadingBit(u_input.b.x), Struct_1(_wgslsmith_div_i32(-750i, abs(firstTrailingBit(-15656i)))));
    let x = u_input.a;
    s_output = func_5(func_1(45552u, var_3.a, vec4<f32>(var_5.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global2.x, 420f)), _wgslsmith_f_op_f32(f32(-1f) * -1224f))), _wgslsmith_f_op_f32(-global3.x), global3.x)), ~vec4<u32>(~1u, var_4.x, u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.e, ~u_input.a.zxz)), ~firstTrailingBit(~(u_input.a & u_input.a)));
}

