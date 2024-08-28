struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_3, 9>;

var<private> global2: array<vec3<bool>, 6>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = select(vec2<bool>(global0.x, false && global0.x), vec2<bool>(max(firstLeadingBit(-19757i), arg_2.a) <= arg_1, any(select(vec4<bool>(true, global0.x, true, false), vec4<bool>(true, global0.x, false, true), !vec4<bool>(false, global0.x, global0.x, false)))), (true || (_wgslsmith_dot_vec3_i32(arg_0.d.xyx, arg_0.d.wzw) == _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.e.x, -11976i, -16105i), vec3<i32>(-7711i, arg_2.a, -39496i)))) && all(global2[_wgslsmith_index_u32(21425u, 6u)]));
    let var_1 = vec4<u32>(max(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 1u), arg_2.c), 53192u), arg_0.b.c.x), u_input.e.x, arg_0.a.d >> (~countOneBits(1u) % 32u), 74506u);
    var var_2 = abs(0i);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1199f, -753f, true)) * _wgslsmith_f_op_f32(-arg_0.b.b))))));
    var var_4 = Struct_2(Struct_1(arg_1 ^ ~(-arg_2.e.x), _wgslsmith_f_op_f32(-arg_2.b), firstLeadingBit(var_1.wzw), reverseBits(u_input.d ^ _wgslsmith_div_u32(arg_2.c.x, 1u)), -countOneBits(arg_2.e)), arg_0.a, _wgslsmith_f_op_f32(var_3 * -681f), -arg_0.d);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1747f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c, var_3) * _wgslsmith_f_op_f32(trunc(-1788f)))), _wgslsmith_f_op_f32(floor(arg_0.c))), var_4.a.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_2.b)))));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(arg_0.b, Struct_1(21737i, 642f, arg_0.b.c, u_input.e.x, vec3<i32>(u_input.c, -72167i, u_input.c)), arg_0.a.b, arg_0.d), -58040i, arg_0.a))), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(arg_0.b, arg_0.a, arg_0.a.b, arg_0.d), u_input.c, arg_0.b)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.b, arg_0.a.b, arg_0.c, 488f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, arg_0.b.b, 488f, arg_0.a.b) + vec4<f32>(-1000f, arg_0.c, arg_0.a.b, arg_0.b.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, arg_0.c, arg_0.b.b, 475f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(796f, arg_0.b.b, arg_0.b.b, 937f) + vec4<f32>(-641f, arg_0.a.b, arg_0.c, -1594f))) + vec4<f32>(1433f, _wgslsmith_f_op_f32(ceil(arg_0.c)), _wgslsmith_f_op_f32(select(arg_0.b.b, -1797f, true)), _wgslsmith_f_op_f32(f32(-1f) * -120f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.a.b)), var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1084f + _wgslsmith_f_op_f32(-477f - 441f)), _wgslsmith_f_op_f32(838f + 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1255f))));
    let var_1 = abs(vec2<u32>(_wgslsmith_dot_vec3_u32(arg_0.a.c, arg_0.b.c ^ u_input.b), 99298u));
    global1 = array<Struct_3, 9>();
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-597f - arg_0.b.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(floor(1000f)))) * _wgslsmith_f_op_vec4_f32(func_3(Struct_2(arg_0.a, arg_0.b, _wgslsmith_div_f32(273f, var_0.x), countOneBits(vec4<i32>(-17798i, 11748i, 0i, u_input.c))), ~_wgslsmith_div_i32(arg_0.a.a, arg_0.a.a), arg_0.b)).x), -665f, _wgslsmith_f_op_f32(step(var_0.x, -553f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-967f, -221f)), var_0.x)) * 307f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0.x)), arg_0.c)) * arg_0.a.b))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    let var_0 = firstTrailingBit(arg_1.e.x);
    global0 = select(select(select(vec2<bool>(arg_0.x != 281f, true), !(!vec2<bool>(global0.x, false)), true), vec2<bool>(global0.x, all(vec3<bool>(global0.x, false, false))), vec2<bool>(all(!vec2<bool>(global0.x, global0.x)), all(select(global2[_wgslsmith_index_u32(u_input.d, 6u)], global2[_wgslsmith_index_u32(31035u, 6u)], vec3<bool>(global0.x, true, global0.x))))), vec2<bool>(global0.x, all(vec2<bool>(!global0.x, !global0.x))), true);
    let var_1 = ~(~(~(~vec4<u32>(arg_1.c.x, u_input.b.x, 28987u, 1u))));
    var var_2 = vec3<bool>(any(vec4<bool>(global0.x, true, true, false)), false, true);
    var var_3 = Struct_2(Struct_1(15219i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1f)))), reverseBits(~_wgslsmith_sub_vec3_u32(u_input.b, arg_1.c)), arg_1.d, arg_1.e), Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(var_0, 0i), vec2<i32>(var_0, arg_1.a)), arg_1.e.yx), -1794f, u_input.b, _wgslsmith_add_u32(firstLeadingBit(arg_1.c.x), countOneBits(21811u)) ^ abs(_wgslsmith_div_u32(var_1.x, var_1.x)), select(~arg_1.e, -(vec3<i32>(1i, var_0, -1i) >> (arg_1.c % vec3<u32>(32u))), true)), _wgslsmith_f_op_f32(ceil(arg_0.x)), select(countOneBits(~vec4<i32>(u_input.c, 3129i, arg_1.e.x, var_0)), vec4<i32>(reverseBits(-51953i) | reverseBits(var_0), abs(~u_input.c), abs(arg_1.a & 1i), -_wgslsmith_mod_i32(0i, -2379i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -657f)) <= _wgslsmith_f_op_f32(-1606f * arg_1.b)));
    return true;
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = global0.x;
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2100f, -1272f, 838f) * vec3<f32>(2390f, -484f, 336f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(485f, -1388f, -308f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-245f, -2096f, _wgslsmith_f_op_f32(f32(-1f) * -1065f)) * vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(-36165i, 1929f, vec3<u32>(u_input.d, 82997u, 1u), 4294967295u, vec3<i32>(u_input.c, u_input.c, u_input.c)), Struct_1(u_input.c, 886f, u_input.b, u_input.b.x, vec3<i32>(-10279i, u_input.c, u_input.c)), -1173f, vec4<i32>(2147483647i, 2147483647i, -4158i, 1760i)), true)), -505f, -1725f))), Struct_1(-14864i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -833f)), ~u_input.b, u_input.e.x, vec3<i32>(-4863i, -2147483647i, -_wgslsmith_mod_i32(1999i, -2147483647i))));
    var var_2 = -reverseBits(firstLeadingBit(~max(vec3<i32>(13991i, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c))));
    var var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, 26688u), 9u)];
    let var_4 = Struct_3(~var_3.a);
    return global1[_wgslsmith_index_u32(17731u, 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.d);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(u_input.c, 1135f, u_input.b, 0u, vec3<i32>(u_input.c, u_input.c, 2147483647i)), Struct_1(u_input.c, 2747f, u_input.b, 19033u, vec3<i32>(35505i, u_input.c, 6670i)), -653f, vec4<i32>(u_input.c, u_input.c, u_input.c, 5587i)), -1i, Struct_1(1i, 493f, vec3<u32>(var_0.a, 0u, 1u), 38891u, vec3<i32>(u_input.c, u_input.c, u_input.c)))).xw)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(672f, 284f), vec2<f32>(-1262f, -1132f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1569f, 234f), vec2<f32>(345f, 1064f), global0.x)))))) * _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 325f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1658f, 757f))))));
    var var_2 = Struct_3(abs(var_0.a));
    let var_3 = u_input.c;
    var var_4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(556f, 1000f, 992f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 537f)))))))));
    global0 = vec2<bool>(func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x * 681f)), -550f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(u_input.c, -170f, vec3<u32>(4294967295u, var_0.a, 31357u), 79164u, vec3<i32>(var_3, u_input.c, 0i)), Struct_1(13923i, -201f, vec3<u32>(11937u, 29176u, 4294967295u), 44474u, vec3<i32>(-28049i, u_input.c, var_3)), var_1.x, vec4<i32>(-1i, u_input.c, u_input.c, var_3)), false)), var_1.x)), Struct_1(-1100i, var_1.x, ~u_input.b, var_2.a, _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 1i, -66814i), vec3<i32>(-8618i, -11308i, 27095i)), ~vec3<i32>(u_input.c, var_3, var_3)))), any(select(!select(vec2<bool>(false, false), vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x)), vec2<bool>(false, all(vec4<bool>(true, global0.x, global0.x, false))), !all(vec2<bool>(true, global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x + 516f)), var_4.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(621f, var_1.x, var_4.x, -191f)))) * vec4<f32>(-205f, _wgslsmith_f_op_f32(trunc(305f)), var_1.x, _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(-23942i, var_4.x, u_input.b, 19057u, vec3<i32>(-1320i, 48424i, -13852i)), Struct_1(-1i, -360f, u_input.b, var_2.a, vec3<i32>(-28411i, var_3, -7908i)), -1000f, vec4<i32>(u_input.c, var_3, -35139i, u_input.c)), true))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_4.yy))), -2403i, vec2<i32>(~u_input.c, -2147483647i));
}

