struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-2900i, 2147483647i, -9146i);

var<private> global1: Struct_1 = Struct_1(vec4<f32>(979f, -1801f, -1608f, -1254f), -1025f, 7663i);

var<private> global2: vec2<i32>;

var<private> global3: Struct_1;

var<private> global4: array<bool, 5> = array<bool, 5>(true, true, true, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<u32> {
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.b * global1.a.x), _wgslsmith_f_op_f32(max(global3.b, 1644f)), _wgslsmith_f_op_f32(round(-200f)), _wgslsmith_f_op_f32(min(global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -853f)))) + _wgslsmith_f_op_vec4_f32(-global3.a)), _wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_div_i32(global2.x, 0i));
    global2 = _wgslsmith_mult_vec2_i32(global0.xz, global0.zy);
    global4 = array<bool, 5>();
    global2 = global0.zy;
    global1 = Struct_1(global3.a, -105f, firstTrailingBit(-2147483647i));
    return vec4<u32>(14832u, u_input.c, u_input.b, firstTrailingBit(u_input.e.x));
}

fn func_2() -> i32 {
    global3 = Struct_1(global3.a, global1.a.x, 9413i);
    let var_0 = _wgslsmith_add_vec4_u32(func_3(), func_3() & vec4<u32>(abs(u_input.b), u_input.e.x, u_input.e.x, ~(~u_input.c)));
    var var_1 = _wgslsmith_mult_u32(~(_wgslsmith_mod_u32(var_0.x >> (46129u % 32u), var_0.x) | 43182u), _wgslsmith_div_u32(u_input.c, ~(~(~var_0.x))));
    global4 = array<bool, 5>();
    var var_2 = Struct_1(vec4<f32>(global1.b, _wgslsmith_f_op_f32(trunc(global3.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, -633f)), 1312f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -690f), 1000f)), 1524f, ~_wgslsmith_add_i32(-_wgslsmith_sub_i32(global2.x, -11516i), global1.c));
    return _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a, global2.x), -(-max(global3.c, -73762i) | -10720i));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<f32>) -> Struct_1 {
    global0 = ~vec3<i32>(~(~global0.x), ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, arg_0), ~2147483647i), arg_0);
    global2 = reverseBits(vec2<i32>(~_wgslsmith_dot_vec2_i32(global0.zz, global0.yz), ~(-func_2())));
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2), _wgslsmith_div_f32(global1.b, -1000f), -firstLeadingBit(global3.c));
    global0 = countOneBits(select(abs(vec3<i32>(arg_0, global2.x, 1i)), reverseBits(vec3<i32>(global1.c, 35622i, 17846i) | select(vec3<i32>(global0.x, 11545i, 2147483647i), vec3<i32>(1i, 1i, global3.c), global4[_wgslsmith_index_u32(arg_1.x, 5u)])), select(vec3<bool>(true, true, true), vec3<bool>(true & global4[_wgslsmith_index_u32(u_input.e.x, 5u)], true, select(false, false, global4[_wgslsmith_index_u32(arg_1.x, 5u)])), !(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.b, 5u)], global4[_wgslsmith_index_u32(1u, 5u)], false)))));
    global0 = -(~abs(firstTrailingBit(vec3<i32>(-2147483647i, global3.c, global3.c) << (vec3<u32>(u_input.e.x, 67261u, 1u) % vec3<u32>(32u)))));
    return Struct_1(global1.a, _wgslsmith_div_f32(1506f, global3.a.x), global2.x);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(3190u, abs(1u) << (~u_input.c % 32u), u_input.c), func_3().wyx, firstLeadingBit(vec3<u32>(u_input.c, ~4294967295u, u_input.b))) >> (~countOneBits(~(~vec3<u32>(14010u, u_input.c, 18833u))) % vec3<u32>(32u));
    var var_1 = all(vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 13989u, u_input.c, u_input.d), abs(vec4<u32>(var_0.x, var_0.x, u_input.e.x, 91968u))), _wgslsmith_dot_vec2_u32(var_0.zz, u_input.e)), 5u)], true, false));
    let var_2 = func_1(~(-2147483647i), select(countOneBits(vec2<u32>(~23762u, firstLeadingBit(0u))), ~(countOneBits(u_input.e) & abs(u_input.e)), !(global4[_wgslsmith_index_u32(0u, 5u)] | all(vec3<bool>(global4[_wgslsmith_index_u32(u_input.c, 5u)], global4[_wgslsmith_index_u32(u_input.b, 5u)], global4[_wgslsmith_index_u32(var_0.x, 5u)])))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(arg_1.a)))) + func_1(0i, u_input.e, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.b, 658f, arg_1.b, -2157f)))).a))));
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1523f) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.b, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b - _wgslsmith_f_op_f32(min(-2052f, -2110f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1f, global1.a.x))), _wgslsmith_f_op_f32(step(global1.a.x, var_2.a.x))), vec4<f32>(-1390f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.b, _wgslsmith_f_op_f32(min(global1.b, 891f)), global4[_wgslsmith_index_u32(var_0.x, 5u)] || global4[_wgslsmith_index_u32(0u, 5u)])) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.b), global1.b))), global1.b, -202f));
    let var_4 = abs(abs(~(~(~vec3<u32>(u_input.d, var_0.x, 81144u)))));
    return vec3<bool>(_wgslsmith_f_op_f32(arg_1.a.x - -289f) <= _wgslsmith_f_op_f32(exp2(var_2.a.x)), false, true);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global2 = global0.xy;
    global0 = -vec3<i32>(1i, 0i, firstTrailingBit(~global2.x));
    global3 = func_1(2147483647i, ~(~(~u_input.e & vec2<u32>(1u, u_input.d))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(295f, _wgslsmith_f_op_f32(1f * global3.a.x), 732f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, 805f, global3.a.x, global3.a.x)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(global1.a, arg_1.a, vec4<bool>(global4[_wgslsmith_index_u32(43682u, 5u)], global4[_wgslsmith_index_u32(u_input.d, 5u)], global4[_wgslsmith_index_u32(u_input.b, 5u)], arg_0.x)))))), (~u_input.e.x >= _wgslsmith_sub_u32(u_input.d, u_input.c)) & func_4(25304i, func_1(u_input.a, u_input.e, arg_2.a)).x)));
    global4 = array<bool, 5>();
    global0 = max(reverseBits(~firstLeadingBit(select(vec3<i32>(-1i, 0i, -2147483647i), vec3<i32>(u_input.a, -29091i, arg_1.c), vec3<bool>(false, true, arg_0.x)))), select(firstTrailingBit(-vec3<i32>(0i, 35505i, -2147483647i)) & _wgslsmith_mod_vec3_i32(vec3<i32>(36227i, global1.c, 10251i) ^ vec3<i32>(global3.c, global2.x, arg_2.c), firstTrailingBit(vec3<i32>(-11126i, -2147483647i, arg_1.c))), firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global2.x, -2147483647i), vec3<i32>(-53681i, arg_1.c, 27762i))) << (~vec3<u32>(38276u, u_input.e.x, u_input.b) % vec3<u32>(32u)), vec3<bool>(true, true, true)));
    return -(~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b, -986f, global3.b) - vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), global3.b, global3.a.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, global1.a.x, -584f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1175f, global3.b, global3.b)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a.www + global3.a.zwx) - _wgslsmith_div_vec3_f32(global3.a.yxx, vec3<f32>(global3.a.x, -2384f, global1.a.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a.wyy + global3.a.zwx) * vec3<f32>(196f, global3.b, global1.b))) + global1.a.yzz));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-233f, var_0.x, _wgslsmith_f_op_f32(trunc(-154f)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1000f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, 321f))), global3.a, true)), global1.a.x, func_5(select(!select(vec3<bool>(false, false, true), vec3<bool>(global4[_wgslsmith_index_u32(u_input.c, 5u)], global4[_wgslsmith_index_u32(66601u, 5u)], true), vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.d, 5u)], global4[_wgslsmith_index_u32(u_input.e.x, 5u)])), func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global3.c, global3.c), vec3<i32>(global0.x, 3852i, global0.x)), func_1(-2147483647i, vec2<u32>(1u, 1u), global1.a)), func_4(10475i, Struct_1(global1.a, global1.b, -19083i))), func_1(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_clamp_i32(u_input.a, global0.x, -1i), u_input.a), firstTrailingBit(abs(u_input.e)), _wgslsmith_f_op_vec4_f32(min(func_1(-2147483647i, vec2<u32>(u_input.c, u_input.b), global1.a).a, global1.a))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global3.a.x), global3.b, global1.a.x, global1.b), global3.b, global2.x)));
    var var_2 = 594f;
    let var_3 = !(!global4[_wgslsmith_index_u32(62503u, 5u)]);
    var var_4 = _wgslsmith_f_op_f32(712f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), 318f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -411f))))));
    let var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, global3.b, global3.a.x, global3.a.x) + global3.a) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_1.a, global1.a)) - var_1.a)), func_1(-44932i << (u_input.d % 32u), u_input.e, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global3.a - global1.a)))).a, var_3)), var_0.x, ~_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(0i, global2.x, -2147483647i), vec3<i32>(global0.x, u_input.a, var_1.c)), _wgslsmith_add_vec3_i32(vec3<i32>(0i, -2147483647i, global3.c) | vec3<i32>(u_input.a, 2147483647i, u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(-43437i, -24315i, 75674i), vec3<i32>(global1.c, global3.c, global1.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yz + var_0.yz)))), firstLeadingBit(_wgslsmith_sub_vec2_u32(u_input.e, _wgslsmith_sub_vec2_u32(~u_input.e, select(u_input.e, u_input.e, global4[_wgslsmith_index_u32(u_input.c, 5u)])))), firstLeadingBit(u_input.a | _wgslsmith_dot_vec2_i32(global0.xx, vec2<i32>(u_input.a, u_input.a) & vec2<i32>(-1i, -21172i))));
}

