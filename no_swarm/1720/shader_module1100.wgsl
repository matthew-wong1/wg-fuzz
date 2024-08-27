struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: bool,
    d: bool,
    e: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 29279u;

var<private> global1: u32;

var<private> global2: array<vec4<i32>, 7>;

var<private> global3: array<i32, 17> = array<i32, 17>(0i, -1i, 683i, 1i, 1i, 41123i, -27288i, 42666i, -18214i, -1i, -22983i, -20592i, -23142i, 2147483647i, 1i, -1i, 1i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 149f))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1000f, -650f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(495f)) * -965f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-648f))))));
    global1 = ~(~_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(u_input.d.x & 56724u, u_input.d.x)));
    var var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, ~1u), vec2<u32>(countOneBits(_wgslsmith_sub_u32(u_input.d.x, 34279u)) & _wgslsmith_sub_u32(u_input.d.x, u_input.d.x ^ u_input.d.x), ~u_input.d.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(337f, 979f, -725f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1331f, 1068f, 371f), vec3<f32>(315f, -877f, 660f), true)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-572f - _wgslsmith_f_op_f32(413f * 559f)), 1217f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1455f))))));
    let var_3 = Struct_4(vec2<bool>(false, any(vec3<bool>(u_input.c.x >= 2925i, true, true))), vec4<bool>(false, !(any(vec4<bool>(false, true, true, false)) && true), all(vec4<bool>(true, 19986i < u_input.c.x, true, true)), false), true, false, select(!select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), true), vec3<bool>(_wgslsmith_clamp_i32(38256i, -20617i, -2147483647i) == u_input.b, false, true), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), any(vec2<bool>(false, false))), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)), vec3<bool>(true, true, true))));
    return vec3<bool>(-318f >= var_2.x, !(u_input.d.x <= 59487u), true);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>) -> bool {
    var var_0 = Struct_5((select(_wgslsmith_sub_i32(arg_1, 2147483647i), u_input.a.x, !arg_0.a) | firstTrailingBit(i32(-1i) * -24192i)) >> (arg_0.b.x % 32u), Struct_2(arg_0.b, Struct_1(true, ~(~vec2<u32>(arg_0.b.x, arg_0.b.x)))));
    global2 = array<vec4<i32>, 7>();
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-269f)), _wgslsmith_f_op_f32(f32(-1f) * -106f), 570f))))));
    let var_2 = arg_0;
    var_0 = Struct_5(-var_0.a, var_0.b);
    return true;
}

fn func_2() -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f)), _wgslsmith_f_op_f32(f32(-1f) * -633f), _wgslsmith_f_op_f32(f32(-1f) * -752f), _wgslsmith_f_op_f32(f32(-1f) * -221f)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-974f, -1070f, -1000f, 1368f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(286f, -125f, 720f, -1102f) + vec4<f32>(-170f, -503f, -840f, -1147f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(1992f)), -231f, _wgslsmith_f_op_f32(1f * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(647f + -2012f) + _wgslsmith_div_f32(-725f, -485f))) - vec4<f32>(-741f, -570f, _wgslsmith_f_op_f32(-1607f * _wgslsmith_f_op_f32(f32(-1f) * -1259f)), -1006f)));
    global2 = array<vec4<i32>, 7>();
    let var_1 = Struct_1(true, u_input.d.yy);
    global0 = _wgslsmith_mult_u32(var_1.b.x, reverseBits(reverseBits(var_1.b.x)));
    var var_2 = Struct_1(!select(var_1.a, var_1.a, false), countOneBits(vec2<u32>(max(30648u, ~4294967295u), 37172u)));
    return vec2<bool>(func_4(Struct_1(true, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(2420u, var_2.b.x))), reverseBits(abs(u_input.c.x)), vec4<bool>(all(func_3()), var_1.a, var_2.a, var_1.a)), func_4(Struct_1(false, ~abs(var_2.b)), -11730i, vec4<bool>(var_2.a, (var_0.x < var_0.x) & var_1.a, false, false)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>) -> i32 {
    var var_0 = select(arg_1.b.a, true, any(func_2()));
    let var_1 = _wgslsmith_mod_vec4_i32(u_input.c, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(u_input.d.x, u_input.d.x) & 10773u), 7u)]);
    let var_2 = Struct_4(vec2<bool>(arg_1.b.a, countOneBits(global3[_wgslsmith_index_u32(arg_0.a.x << (66304u % 32u), 17u)]) == -584i), vec4<bool>((_wgslsmith_sub_u32(arg_1.b.b.x, 0u) == _wgslsmith_div_u32(u_input.d.x, 1u)) && any(vec3<bool>(arg_0.b.a, false, arg_0.b.a)), arg_0.b.a, !((u_input.b >= global3[_wgslsmith_index_u32(u_input.d.x, 17u)]) & (arg_2.x != -992f)), !all(func_3().xx)), all(!(!select(vec3<bool>(false, arg_0.b.a, true), vec3<bool>(true, false, false), vec3<bool>(arg_0.b.a, arg_0.b.a, arg_0.b.a)))), _wgslsmith_dot_vec2_i32(select(u_input.a.yy, vec2<i32>(var_1.x, -7229i), select(vec2<bool>(true, arg_1.b.a), vec2<bool>(arg_1.b.a, true), arg_0.b.a)), countOneBits(var_1.ww)) <= _wgslsmith_mod_i32(firstLeadingBit(abs(var_1.x)), -(~24335i)), select(select(!(!vec3<bool>(arg_1.b.a, arg_0.b.a, false)), vec3<bool>(arg_0.b.a, any(vec4<bool>(arg_0.b.a, arg_1.b.a, false, arg_0.b.a)), arg_1.b.a & false), select(!vec3<bool>(arg_0.b.a, arg_1.b.a, true), func_3(), !vec3<bool>(true, true, arg_0.b.a))), func_3(), vec3<bool>(func_4(Struct_1(false, vec2<u32>(4294967295u, 4294967295u)), global3[_wgslsmith_index_u32(~u_input.d.x, 17u)], select(vec4<bool>(true, arg_1.b.a, arg_0.b.a, arg_1.b.a), vec4<bool>(true, false, false, arg_1.b.a), false)), arg_1.b.a, u_input.d.x >= _wgslsmith_sub_u32(arg_1.a.x, arg_1.b.b.x))));
    let var_3 = u_input.d.x;
    var var_4 = ~(~1u);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(select(func_1(Struct_2(vec2<u32>(26171u, 0u), Struct_1(true, u_input.d.xx)), Struct_2(u_input.d.xz, Struct_1(false, vec2<u32>(4294967295u, 33175u))), vec4<f32>(1000f, 651f, -1000f, -1112f)), select(u_input.b, -43224i, false), 0u == u_input.d.x), global3[_wgslsmith_index_u32(firstTrailingBit(29948u), 17u)] & (-14807i | global3[_wgslsmith_index_u32(1u, 17u)]), _wgslsmith_add_i32(min(21217i, u_input.c.x), u_input.a.x | global3[_wgslsmith_index_u32(u_input.d.x, 17u)])), min(~global3[_wgslsmith_index_u32(1u, 17u)], reverseBits(global3[_wgslsmith_index_u32(33149u, 17u)]) | firstLeadingBit(global3[_wgslsmith_index_u32(0u, 17u)])), u_input.a.x | (i32(-1i) * -1i), func_1(Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, 0u), vec2<u32>(u_input.d.x, 24176u)), Struct_1(true, u_input.d.yx)), Struct_2(vec2<u32>(0u, u_input.d.x), Struct_1(true, vec2<u32>(u_input.d.x, u_input.d.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(354f, 1493f, -2068f, -626f) - vec4<f32>(1197f, 605f, 135f, -1995f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1260f, -1377f, -739f, 2057f), vec4<f32>(455f, -237f, 754f, 1009f)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)))))), firstTrailingBit(vec4<i32>(2147483647i, u_input.b, 21079i, -16785i & _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.d.x, 17u)], global3[_wgslsmith_index_u32(u_input.d.x, 17u)], u_input.c.x), u_input.a))));
    let var_1 = Struct_2(select(select(~vec2<u32>(27584u, u_input.d.x), min(~vec2<u32>(1u, 18629u), u_input.d.xx << (u_input.d.zx % vec2<u32>(32u))), func_4(Struct_1(false, vec2<u32>(1043u, 4294967295u)), u_input.b, vec4<bool>(false, false, false, true))), ~vec2<u32>(select(4294967295u, u_input.d.x, true), firstTrailingBit(1u)), !select(func_2(), vec2<bool>(false, false), true)), Struct_1(any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true))), vec2<u32>(_wgslsmith_mult_u32(~u_input.d.x, 1u), 6048u | u_input.d.x)));
    global1 = 50762u;
    global2 = array<vec4<i32>, 7>();
    let var_2 = ~u_input.d.x;
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-249f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1125f, 1791f), -405f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(201f))) * 642f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1039f, -1348f)), vec2<f32>(1020f, 1594f), !vec2<bool>(false, var_1.b.a)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(694f, -566f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-658f, -188f) + vec2<f32>(-553f, 294f))))), var_1.b.a)));
}

