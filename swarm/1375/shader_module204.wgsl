struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: vec3<f32>;

var<private> global2: vec3<bool>;

var<private> global3: array<u32, 5>;

var<private> global4: array<u32, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.c.x, -391f))), -1340f), _wgslsmith_sub_vec4_u32(arg_0.a.b, ~select(arg_0.a.b, arg_0.a.b, vec4<bool>(global2.x, true, global2.x, true))), arg_0.a.c, arg_0.a.d), max(u_input.b.xz, arg_0.b));
    let var_1 = vec3<bool>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(global4[_wgslsmith_index_u32(arg_0.a.b.x, 1u)], 0u, 0u, u_input.d), vec4<u32>(83189u, global4[_wgslsmith_index_u32(1u, 1u)], global3[_wgslsmith_index_u32(1u, 5u)], 37330u)), arg_0.a.b), ~63443u, 1u) <= 4294967295u, !select(_wgslsmith_f_op_f32(-global1.x) <= _wgslsmith_f_op_f32(-var_0.a.c.x), global2.x, ~15981u > var_0.a.b.x), all(vec4<bool>(!global2.x, (global1.x <= arg_0.a.a.x) & global2.x, global2.x, false)));
    global4 = array<u32, 1>();
    let var_2 = abs(vec4<i32>(0i, ~(-2147483647i), _wgslsmith_add_i32(u_input.b.x, firstLeadingBit(var_0.b.x)), u_input.c.x)) << (arg_0.a.b % vec4<u32>(32u));
    let var_3 = arg_0;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.c.x), 1000f)), _wgslsmith_f_op_f32(var_3.a.a.x * _wgslsmith_f_op_f32(step(631f, var_0.a.c.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_0.a.c.x)))), _wgslsmith_f_op_f32(ceil(global1.x))) * _wgslsmith_f_op_vec4_f32(-var_0.a.c))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    global3 = array<u32, 5>();
    global2 = !(!vec3<bool>(global1.x == _wgslsmith_f_op_f32(abs(254f)), true, global2.x));
    global0 = array<Struct_1, 13>();
    let var_0 = Struct_2(Struct_1(vec2<f32>(323f, -655f), ~vec4<u32>(4294967295u & global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(18124u, 1u)], 1u)], 5u)], global4[_wgslsmith_index_u32(countOneBits(global3[_wgslsmith_index_u32(0u, 5u)]), 1u)], 2713u, _wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(0u, 5u)], 108u, u_input.d), vec3<u32>(129786u, global4[_wgslsmith_index_u32(34159u, 1u)], global3[_wgslsmith_index_u32(0u, 5u)]))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, global1.x, -817f, -190f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, -1916f, global1.x), vec4<f32>(-768f, global1.x, 1000f, global1.x))), select(select(vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(global2.x, global2.x, true, true), vec4<bool>(true, global2.x, global2.x, true)), !vec4<bool>(false, false, true, global2.x), select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(global2.x, false, global2.x, global2.x), global2.x)))), ~(~(vec3<u32>(1u, 1u, 51880u) & vec3<u32>(26974u, 19150u, u_input.d)))), vec2<i32>(u_input.c.x, ~abs(_wgslsmith_add_i32(u_input.b.x, -11200i))));
    global3 = array<u32, 5>();
    return Struct_2(Struct_1(global1.xz, vec4<u32>(abs(countOneBits(41217u)), 1u, ~(global3[_wgslsmith_index_u32(0u, 5u)] | 0u), ~_wgslsmith_add_u32(u_input.a, 4055u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(global0[_wgslsmith_index_u32(0u, 13u)], vec2<i32>(-14134i, 2147483647i)))) * _wgslsmith_f_op_vec4_f32(step(var_0.a.c, var_0.a.c))) + var_0.a.c), _wgslsmith_add_vec3_u32(min(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 55435u, u_input.d), var_0.a.b.zxy), max(var_0.a.b.zxw, var_0.a.b.yxw)), vec3<u32>(_wgslsmith_sub_u32(1u, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 5u)], 1u)]), ~3541u, firstTrailingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 5u)], 5u)])))), reverseBits(max(reverseBits(u_input.c.yx), -u_input.c.zw)) >> (vec2<u32>(_wgslsmith_div_u32(u_input.a, 1u) | _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(15161u, 5u)], 13873u, u_input.a, global3[_wgslsmith_index_u32(var_0.a.d.x, 5u)]), var_0.a.b), max(1u, u_input.a) | _wgslsmith_add_u32(global3[_wgslsmith_index_u32(4294967295u, 5u)], 4944u)) % vec2<u32>(32u)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = ~18530u;
    let var_1 = func_2(firstLeadingBit(u_input.c.xx));
    let var_2 = vec2<u32>(10356u >> (firstLeadingBit(countOneBits(15025u)) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.a.d.x, 1u), 5u)]), _wgslsmith_sub_u32(~0u, 0u)), _wgslsmith_sub_vec2_u32(~arg_0.b.zw ^ ~arg_0.d.yy, _wgslsmith_add_vec2_u32(countOneBits(arg_0.d.yx), ~vec2<u32>(arg_0.b.x, global3[_wgslsmith_index_u32(60217u, 5u)])))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.c.x, var_1.a.c.x) - vec2<f32>(global1.x, 996f)) - _wgslsmith_f_op_vec2_f32(-arg_0.c.wx)), global1.xz), ~var_1.a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1093f, _wgslsmith_f_op_f32(exp2(global1.x)), 801f, _wgslsmith_f_op_f32(var_1.a.c.x - arg_0.c.x))), arg_0.d), vec2<i32>(_wgslsmith_div_i32(-1i, var_1.b.x), max(-23381i, u_input.c.x)));
    let var_4 = func_2(vec2<i32>(-2147483647i, ~(var_1.b.x ^ (u_input.c.x >> (var_2.x % 32u)))));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 5>();
    global3 = array<u32, 5>();
    global4 = array<u32, 1>();
    global1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-443f + -669f), global1.x, global1.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(430f, 660f, 1723f), vec3<f32>(-1662f, -516f, 396f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.x, global1.x, -797f), vec3<f32>(global1.x, 2007f, 101f)))))))));
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global4[_wgslsmith_index_u32(u_input.a, 1u)] | 4294967295u, ~0u), 13u)], vec2<i32>(-1i, func_1(global0[_wgslsmith_index_u32(firstLeadingBit(54748u), 13u)]) << (_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(0u, 5u)], 5u)], ~1u) % 32u)));
    global1 = _wgslsmith_div_vec3_f32(var_0.a.c.wwx, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(var_0.a.c.wxz)))));
    global1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c.x) - _wgslsmith_f_op_f32(ceil(global1.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1100f)), _wgslsmith_f_op_f32(abs(-864f)))), 824f, 292f)));
    var var_1 = _wgslsmith_sub_i32(-54096i, u_input.c.x);
    var_0 = func_2(max(vec2<i32>(-(~(-6878i)), ~(-8995i) ^ u_input.b.x), var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, -1014f);
}

