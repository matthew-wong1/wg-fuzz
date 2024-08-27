struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global2: Struct_2 = Struct_2(vec2<f32>(1037f, -1277f));

var<private> global3: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(33446u, 1u), vec2<u32>(0u, 17143u));

var<private> global4: vec4<i32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    global0 = array<f32, 20>();
    let var_1 = Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(global2.a.x * _wgslsmith_f_op_f32(-1454f + _wgslsmith_f_op_f32(-1107f * _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(4294967295u, 20u)]))))), _wgslsmith_clamp_u32(global1.x, ~_wgslsmith_add_u32(global1.x, _wgslsmith_sub_u32(41992u, global1.x)), global1.x));
    var var_2 = u_input.d.x & _wgslsmith_add_i32(1i, u_input.d.x);
    var var_3 = var_1;
    return u_input.d.x;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_2 {
    global1 = ~(~(~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, arg_1.c), 2u)] & vec2<u32>(abs(arg_1.c), u_input.b)));
    var var_0 = !(!any(vec3<bool>(true, true, true)));
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1305f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1991f, arg_1.b)) + _wgslsmith_f_op_f32(floor(arg_1.b)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global2.a)), vec2<f32>(1015f, global0[_wgslsmith_index_u32(30673u, 20u)])) - _wgslsmith_f_op_vec2_f32(select(global2.a, _wgslsmith_f_op_vec2_f32(trunc(global2.a)), true)))));
    let var_1 = 34707u;
    let var_2 = _wgslsmith_dot_vec4_u32(~(~firstTrailingBit(vec4<u32>(0u, arg_1.c, u_input.c.x, 26637u)) << (vec4<u32>(max(u_input.b, global1.x), max(u_input.e, 1u), ~var_1, 1u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(global1.x, ~arg_1.c, 0u, _wgslsmith_div_u32(var_1, 49284u)), vec4<u32>(var_1 << (0u % 32u), reverseBits(25933u), ~1u, firstLeadingBit(0u))));
    return Struct_2(vec2<f32>(global2.a.x, 1184f));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<bool>) -> vec3<f32> {
    global2 = func_3(_wgslsmith_f_op_f32(max(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f)))), Struct_1(vec4<bool>(arg_3.x, false, true, true), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 70046u << (global1.x % 32u)), 20u)])), ~(~0u)), vec4<i32>(~_wgslsmith_dot_vec4_i32(~vec4<i32>(global4.x, 17044i, u_input.d.x, -15119i), vec4<i32>(u_input.d.x, u_input.d.x, 74519i, 2147483647i) >> (vec4<u32>(58770u, arg_1.c, u_input.c.x, 37663u) % vec4<u32>(32u))), func_2(_wgslsmith_mult_u32(1u, countOneBits(7747u)), arg_0), ~firstTrailingBit(~2208i), u_input.d.x));
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-954f, 646f))));
    global2 = func_3(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a.x))), global0[_wgslsmith_index_u32((11818u & arg_1.c) << (_wgslsmith_div_u32(55816u, u_input.b) % 32u), 20u)]), Struct_1(select(arg_1.a, arg_1.a, -1896f < arg_1.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(445f * -745f), _wgslsmith_f_op_f32(f32(-1f) * -535f))), _wgslsmith_div_u32(global1.x, 15518u)), select(~vec4<i32>(global4.x, u_input.d.x, global4.x, -1i), vec4<i32>(global4.x, global4.x, u_input.d.x, u_input.d.x), arg_1.a.x && arg_3.x) << (reverseBits(min(vec4<u32>(arg_1.c, 165682u, arg_1.c, arg_1.c), vec4<u32>(arg_1.c, u_input.e, arg_1.c, global1.x))) % vec4<u32>(32u))).a.x, arg_1, firstTrailingBit(~_wgslsmith_clamp_vec4_i32(-vec4<i32>(-53543i, -15959i, -66617i, global4.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(global4.x, global4.x, u_input.d.x, global4.x), vec4<i32>(21781i, u_input.d.x, 2147483647i, u_input.d.x), vec4<i32>(0i, u_input.d.x, 43854i, u_input.d.x)), vec4<i32>(global4.x, -23366i, global4.x, 36183i))));
    let var_1 = Struct_1(select(arg_1.a, arg_1.a, true), -240f, _wgslsmith_add_u32(57u, u_input.e));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.b * -1338f), _wgslsmith_f_op_f32(-1536f + arg_1.b))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(1u, global1.x)), 20u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.c, 20u)] - -459f)))));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>) -> Struct_2 {
    global3 = array<vec2<u32>, 2>();
    let var_0 = func_3(-120f, Struct_1(vec4<bool>(false, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true)), !all(vec4<bool>(false, false, false, false)), true), -1757f, 4294967295u), max(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, global4.x, 0i, -1i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, global4.x))), firstTrailingBit(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(global4.x, global4.x, u_input.d.x, 2147483647i)), vec4<i32>(global4.x, 18983i, global4.x, u_input.d.x) >> (vec4<u32>(67899u, 34007u, 4294967295u, global1.x) % vec4<u32>(32u))))));
    var var_1 = ~firstLeadingBit(global4.x);
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.a))) - _wgslsmith_f_op_vec3_f32(func_1(vec3<f32>(arg_1.x, -1031f, _wgslsmith_f_op_f32(var_0.a.x + -2020f)), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(arg_0 + global0[_wgslsmith_index_u32(u_input.e, 20u)]), _wgslsmith_mult_u32(global1.x, global1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_0.a.x)))), vec2<bool>(true, true))).zy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(true, !(28147u > u_input.a));
    let var_1 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -955f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1259f, -1000f, 181f) + vec3<f32>(-1243f, global0[_wgslsmith_index_u32(46397u, 20u)], global0[_wgslsmith_index_u32(u_input.e, 20u)])) * vec3<f32>(1000f, 1000f, global0[_wgslsmith_index_u32(35297u, 20u)])), Struct_1(!vec4<bool>(var_0.x, var_0.x, true, var_0.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 20u)] - global2.a.x), 14590u ^ global1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-655f - global2.a.x))), var_0)), vec3<f32>(global0[_wgslsmith_index_u32(global1.x, 20u)], -1000f, global2.a.x)));
    var var_2 = Struct_2(var_1.a);
    let var_3 = abs(~u_input.b | _wgslsmith_add_u32(u_input.b, 0u));
    let var_4 = Struct_1(vec4<bool>(var_0.x, true, false, any(vec4<bool>(1u <= u_input.c.x, false, false, !var_0.x))), var_1.a.x, reverseBits(~63405u));
    let var_5 = Struct_1(var_4.a, 391f, ~_wgslsmith_sub_u32(0u, ~global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<u32>(4294967295u, ~reverseBits(86990u), _wgslsmith_sub_u32(global1.x, firstTrailingBit(0u)), var_5.c >> (_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(1u, 2u)], u_input.c.zz) % 32u)), _wgslsmith_clamp_vec4_u32(select(min(vec4<u32>(var_3, 22961u, var_4.c, var_4.c), vec4<u32>(1u, var_3, 81057u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_4.c, global1.x, 51609u, 1u), vec4<u32>(1u, var_3, 23293u, 0u)), !var_4.a), min(~vec4<u32>(u_input.b, 4294967295u, global1.x, var_4.c), ~vec4<u32>(16688u, 81485u, var_5.c, 12839u)), vec4<u32>(1u >> (0u % 32u), countOneBits(45629u), 42612u, select(var_5.c, 11006u, var_4.a.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(~4294967295u, 20u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4.b), 465f, true)), var_4.b, _wgslsmith_f_op_f32(f32(-1f) * -1420f)) - vec4<f32>(var_1.a.x, 443f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.a.x, -546f, var_0.x)), _wgslsmith_f_op_f32(max(var_5.b, var_4.b))), 1304f)));
}

