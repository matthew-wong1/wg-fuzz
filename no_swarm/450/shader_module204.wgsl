struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(-900f, -1722f, -1484f, 222f, -631f, 463f, -155f, -556f, -300f, 1474f, 404f, -1145f, 1395f, 365f, -897f, 752f, 421f);

var<private> global1: array<vec3<f32>, 18>;

var<private> global2: vec3<f32> = vec3<f32>(710f, -1326f, -252f);

var<private> global3: f32 = 100f;

var<private> global4: array<Struct_3, 7>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> i32 {
    let var_0 = global4[_wgslsmith_index_u32(~(~(~u_input.d)), 7u)];
    var var_1 = max(0u, _wgslsmith_mult_u32(~u_input.d, firstLeadingBit(u_input.d) ^ 79350u));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + -1347f);
    global3 = 259f;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1320f, -825f)))));
    return (~(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 4905i), vec2<i32>(25107i, 27177i))) ^ (-28510i & _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-6009i, -18847i)), vec2<i32>(1i, 1i)))) | -1i;
}

fn func_3() -> u32 {
    var var_0 = u_input.b;
    let var_1 = Struct_1(vec4<bool>(max(_wgslsmith_clamp_i32(-38725i, 39525i, -8359i), i32(-1i) * -8261i) >= ~_wgslsmith_mod_i32(-45499i, 17481i), !all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), !(all(vec4<bool>(false, false, false, true)) != true), true), u_input.b, 1i);
    var var_2 = ~(~(countOneBits(~vec3<u32>(u_input.d, var_1.b.x, 43291u)) & _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_1.b.x, u_input.b.x), vec3<u32>(2718u, var_1.b.x, u_input.a.x)), vec3<u32>(u_input.c, 86471u, u_input.c))));
    global3 = _wgslsmith_f_op_f32(step(-952f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.c, (var_0.x | 1u) | ~var_0.x), vec3<u32>(var_2.x | _wgslsmith_mod_u32(1u, u_input.a.x), 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(13027u, var_1.b.x, var_0.x, var_1.b.x), vec4<u32>(13868u, 1u, 12787u, var_1.b.x)))), 17u)]));
    let var_3 = -457f;
    return firstTrailingBit(1u);
}

fn func_2() -> Struct_1 {
    global3 = -247f;
    global0 = array<f32, 17>();
    global1 = array<vec3<f32>, 18>();
    global0 = array<f32, 17>();
    var var_0 = vec4<u32>(~_wgslsmith_sub_u32(func_3(), u_input.c ^ 1u), ~(countOneBits(~105260u) >> (reverseBits(4294967295u ^ u_input.a.x) % 32u)), _wgslsmith_clamp_u32(0u, ~(u_input.b.x & 28035u), 45114u >> (u_input.c % 32u)) ^ u_input.d, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b.x, 0u, 39912u, u_input.a.x)), max(select(vec4<u32>(u_input.c, 2661u, 10456u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.d, u_input.a.x, u_input.b.x), true), vec4<u32>(u_input.b.x, 0u, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.b.x, 4294967295u, 0u, 14913u) % vec4<u32>(32u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.c | u_input.c, 1u), vec3<u32>(1u, 0u, 1u))));
    return Struct_1(!vec4<bool>(true, var_0.x > u_input.b.x, true, false), ~vec3<u32>(_wgslsmith_sub_u32(var_0.x, firstLeadingBit(var_0.x)), ~1u, _wgslsmith_mod_u32(~u_input.d, 0u)), -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 33313i), firstTrailingBit(vec2<i32>(572i, 23961i))) | reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, 0i), vec3<i32>(1i, 1i, 1i))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1603f, _wgslsmith_f_op_f32(min(global2.x, global0[_wgslsmith_index_u32(4294967295u, 17u)])), global0[_wgslsmith_index_u32(arg_1.b.x, 17u)]) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1156f, -136f, global2.x) * global1[_wgslsmith_index_u32(32721u, 18u)])))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(global2.x, -675f)), _wgslsmith_f_op_f32(-465f - global2.x), _wgslsmith_f_op_f32(-arg_2.x)) + vec3<f32>(-953f, _wgslsmith_f_op_f32(-arg_2.x), -736f))) + vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-836f - arg_2.x)))), -757f, global0[_wgslsmith_index_u32(4294967295u, 17u)]));
    global4 = array<Struct_3, 7>();
    var var_1 = _wgslsmith_div_vec4_i32(~(firstLeadingBit(select(vec4<i32>(-83401i, arg_1.c, 2147483647i, arg_1.c), vec4<i32>(2147483647i, arg_1.c, 2147483647i, arg_1.c), vec4<bool>(true, arg_0, true, arg_1.a.x))) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b.x, 5571u, 5926u, arg_1.b.x), ~vec4<u32>(42602u, 4180u, 19762u, arg_1.b.x)) % vec4<u32>(32u))), countOneBits(~vec4<i32>(_wgslsmith_div_i32(arg_1.c, 1i), select(arg_1.c, 2516i, false), -arg_3.c, 1i)));
    global2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2 + _wgslsmith_div_vec3_f32(vec3<f32>(-209f, 661f, -236f), arg_2)) + _wgslsmith_f_op_vec3_f32(-arg_2)))));
    let var_2 = arg_3.b.x;
    return Struct_2(Struct_1(select(vec4<bool>(true, true, true, !arg_0), !(!vec4<bool>(true, arg_0, true, true)), arg_3.a), firstLeadingBit(min(u_input.b, vec3<u32>(u_input.c, 68542u, arg_3.b.x))), var_1.x), ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_2, 1u), _wgslsmith_add_u32(113738u, 1u)), _wgslsmith_sub_u32(2924u, u_input.d), arg_3.b.x, 17995u), arg_3.c);
}

fn func_5(arg_0: Struct_2) -> f32 {
    global4 = array<Struct_3, 7>();
    global4 = array<Struct_3, 7>();
    var var_0 = _wgslsmith_mod_i32(-2147483647i, arg_0.c);
    global1 = array<vec3<f32>, 18>();
    var var_1 = Struct_1(arg_0.a.a, firstTrailingBit(vec3<u32>(u_input.c, u_input.a.x, 1u)), ~arg_0.a.c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(411f - _wgslsmith_f_op_f32(f32(-1f) * -199f))));
}

fn func_6(arg_0: i32, arg_1: f32, arg_2: bool) -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(29406u, 17u)], 716f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(860f, global2.x)))))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(firstTrailingBit(_wgslsmith_add_u32(0u, 50121u))), u_input.d), 17u)]);
    let var_1 = -10600i;
    let var_2 = min(~_wgslsmith_sub_i32(-4638i, ~15078i), 0i);
    let var_3 = !(!(!(!select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false)))));
    global3 = _wgslsmith_f_op_f32(269f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) - global2.x));
    return global4[_wgslsmith_index_u32(~u_input.d, 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 18>();
    let var_0 = abs(vec4<i32>(countOneBits(func_1()), -(~(~2147483647i)), firstTrailingBit(_wgslsmith_mod_i32(-5694i, -27008i)) ^ ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -4138i, -2147483647i), vec3<i32>(13065i, -979i, -19221i)), 1i));
    var var_1 = u_input.b >> (~(~(~vec3<u32>(27197u, 4294967295u, u_input.b.x)) ^ u_input.b) % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-388f + global2.x), _wgslsmith_f_op_f32(floor(global2.x)), 136f))));
    let var_3 = global0[_wgslsmith_index_u32(abs(~var_1.x << (~var_1.x % 32u)), 17u)];
    var var_4 = func_6(_wgslsmith_mod_i32(i32(-1i) * -func_1(), -44029i), _wgslsmith_f_op_f32(func_5(func_4(false, func_2(), var_2, Struct_1(vec4<bool>(true, true, true, true), u_input.b, var_0.x)))), any(func_2().a));
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -226f);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, var_1.x, u_input.a.x, u_input.a.x)), vec4<u32>(var_1.x, var_1.x, var_1.x, 26617u) | vec4<u32>(6236u, u_input.b.x, u_input.b.x, 0u)), ~firstLeadingBit(vec4<u32>(u_input.c, 4294967295u, 18596u, var_1.x))), min(~(~vec4<u32>(u_input.c, 1514u, u_input.b.x, var_1.x)), vec4<u32>(u_input.c, u_input.c, 1u, 26016u) << (vec4<u32>(0u, 0u, u_input.b.x, var_1.x) % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(select(reverseBits(vec4<u32>(u_input.a.x, 1u, var_1.x, 44878u)), vec4<u32>(4294967295u, 1u, u_input.d, 9627u), true), ~select(vec4<u32>(u_input.c, var_1.x, u_input.a.x, var_1.x), vec4<u32>(var_1.x, u_input.d, 67951u, var_1.x), vec4<bool>(true, false, false, false))) % vec4<u32>(32u)));
}

