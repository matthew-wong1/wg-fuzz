struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_2 = Struct_2(4294967295u, Struct_1(vec2<i32>(-40651i, -16897i), vec2<i32>(-1i, -1i), vec2<bool>(false, false), vec2<bool>(false, false)), true);

var<private> global2: array<bool, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(3132f, 120f, -534f)) + vec3<f32>(-1723f, -846f, 731f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1462f, -1135f, -597f) * vec3<f32>(1139f, 2194f, 1116f))))))));
    var var_1 = Struct_3(global1.b.a.x, vec2<f32>(-1241f, _wgslsmith_f_op_f32(-var_0.x)), u_input.a);
    var var_2 = Struct_2(27767u, Struct_1(vec2<i32>(-29080i, -(arg_0.a.x << (global0.x % 32u))), ~(~vec2<i32>(-36886i, u_input.a)) ^ vec2<i32>(abs(-1i), global1.b.a.x), vec2<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(global1.a, 21u)], true, true)), !(global2[_wgslsmith_index_u32(global0.x, 21u)] | arg_0.c.x)), arg_0.c), true);
    let var_3 = Struct_4(var_0.xz, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) + var_1.b.x), -155f))), !select(select(vec2<bool>(false, global1.b.c.x), vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 21u)]), vec2<bool>(global1.b.c.x, var_2.b.c.x)), vec2<bool>(arg_0.d.x, arg_0.c.x | arg_0.d.x), vec2<bool>(global2[_wgslsmith_index_u32(1u, 21u)], true)));
    var var_4 = 546i;
    return var_0;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<i32>) -> vec2<bool> {
    var var_0 = Struct_2(~0u, Struct_1(firstTrailingBit(arg_1), -_wgslsmith_mod_vec2_i32(max(global1.b.a, arg_1), reverseBits(vec2<i32>(arg_1.x, u_input.a))), vec2<bool>(!(global1.c & global1.c), !(global1.a <= 16050u)), global1.b.d), global1.b.c.x | global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~global0.x, 47945u, ~(~global0.x)), 21u)]);
    let var_1 = arg_0.x;
    let var_2 = vec3<u32>(var_0.a, _wgslsmith_div_u32(firstLeadingBit(abs(4294967295u)), var_0.a), ~(var_0.a << (_wgslsmith_add_u32(global1.a, 4294967295u) % 32u))) << (select(~vec3<u32>(global1.a, min(0u, global1.a), 55186u), _wgslsmith_add_vec3_u32(~(vec3<u32>(7965u, global0.x, 33345u) << (vec3<u32>(global0.x, 93521u, 0u) % vec3<u32>(32u))), firstTrailingBit(~vec3<u32>(0u, 0u, 1u))), !(!vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 21u)], false, global2[_wgslsmith_index_u32(54786u, 21u)]))) % vec3<u32>(32u));
    var var_3 = vec3<bool>(!(abs(global0.x >> (4294967295u % 32u)) >= var_0.a), var_0.c, true);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-638f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))));
    return global1.b.d;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    global1 = Struct_2(40422u, global1.b, false || any(!(!vec3<bool>(global1.c, true, global2[_wgslsmith_index_u32(59486u, 21u)]))));
    let var_0 = global1.a;
    global1 = Struct_2(~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.x, 4294967295u, 13229u) << (vec4<u32>(global0.x, global0.x, global0.x, global0.x) % vec4<u32>(32u)), vec4<u32>(global0.x, 43141u, global0.x, 80010u)) & _wgslsmith_div_u32(global0.x, ~47570u)), Struct_1(global1.b.a, global1.b.b, global1.b.c, func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(global1.b)))), global1.b.a)), true & (false && global1.b.d.x));
    var var_1 = vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(279f - arg_0.x) * 1f))), arg_0.x, any(select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(global1.a, 21u)], false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, global1.b.d.x, false), global1.b.c.x)))), -664f);
    global1 = Struct_2(~global0.x, Struct_1(vec2<i32>(0i, _wgslsmith_mult_i32(-19361i, u_input.a)) ^ select(vec2<i32>(-25271i, global1.b.b.x) >> (vec2<u32>(29675u, 47576u) % vec2<u32>(32u)), -vec2<i32>(global1.b.a.x, -1i), any(vec3<bool>(global1.b.c.x, true, global2[_wgslsmith_index_u32(global0.x, 21u)]))), vec2<i32>(global1.b.b.x, u_input.a), select(select(vec2<bool>(true, global1.c), vec2<bool>(global2[_wgslsmith_index_u32(1u, 21u)], false), !global1.b.c), global1.b.d, all(vec4<bool>(true, false, global2[_wgslsmith_index_u32(global0.x, 21u)], true))), vec2<bool>(all(select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 21u)], false, true), vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 21u)], false), vec3<bool>(true, global2[_wgslsmith_index_u32(global1.a, 21u)], global1.c))), all(!vec4<bool>(global1.c, true, global2[_wgslsmith_index_u32(64168u, 21u)], false)))), true);
    return Struct_2(~firstTrailingBit(31498u), global1.b, _wgslsmith_f_op_f32(round(arg_0.x)) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(390f * 942f) - var_1.x))));
}

fn func_1() -> vec4<f32> {
    global1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1264f, 592f, 1087f) - vec3<f32>(-424f, 213f, 504f))))));
    var var_0 = ~reverseBits(~(vec3<u32>(1u, global0.x, global0.x) & vec3<u32>(0u, 91061u, 4294967295u))) << (_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 0u), select(vec4<u32>(109075u, 17233u, global0.x, global0.x), vec4<u32>(1u, 17084u, 1u, global1.a), vec4<bool>(global2[_wgslsmith_index_u32(51693u, 21u)], true, true, false))), global1.a), firstLeadingBit(vec3<u32>(select(global1.a, 4294967295u, global1.b.d.x), 1u, _wgslsmith_mult_u32(4294967295u, global1.a)))) % vec3<u32>(32u));
    global0 = ~firstLeadingBit(vec3<u32>(var_0.x << ((99970u | var_0.x) % 32u), var_0.x, var_0.x));
    let var_1 = global1.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(func_3(Struct_1(~countOneBits(global1.b.a), -var_1.b, vec2<bool>(global1.c & true, 57304i >= _wgslsmith_div_i32(u_input.a, -10206i)), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(574f, -353f, 2701f))), global1.b.a))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2885f, 522f, -890f, var_2.x), vec4<f32>(var_2.x, var_2.x, 333f, var_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1922f, -1165f, -863f, -1229f)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(583f, _wgslsmith_div_f32(911f, var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(653f, 221f)), 1458f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1216f, -178f, -932f, -231f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 1277f, -912f, -676f)))))))));
    global0 = _wgslsmith_mod_vec3_u32(firstLeadingBit(~vec3<u32>(0u, 20222u, global1.a) >> (vec3<u32>(1u, 27399u, global0.x) % vec3<u32>(32u))) << (firstTrailingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(global1.a, global0.x, 1u), countOneBits(vec3<u32>(1u, 59211u, global0.x)))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(global0.x), _wgslsmith_div_u32(0u, global0.x), max(global1.a, 4294967295u)), ~firstTrailingBit(vec3<u32>(4294967295u, global0.x, 84u))), _wgslsmith_add_vec3_u32(~vec3<u32>(47439u, 61521u, 1u) & _wgslsmith_div_vec3_u32(vec3<u32>(global1.a, global0.x, 47807u), vec3<u32>(global1.a, global0.x, 18202u)), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(43075u, global0.x, global1.a)), vec3<u32>(global1.a, 43915u, 6899u)))));
    var var_1 = global1.a;
    global0 = firstLeadingBit(min(select(~(~vec3<u32>(global0.x, global1.a, global1.a)), ~(~vec3<u32>(0u, global1.a, global0.x)), !(!vec3<bool>(global1.c, true, global2[_wgslsmith_index_u32(global1.a, 21u)]))), vec3<u32>(func_2(_wgslsmith_f_op_vec3_f32(select(var_0.yxx, vec3<f32>(502f, var_0.x, -234f), global2[_wgslsmith_index_u32(0u, 21u)]))).a, 1u << (global0.x % 32u), (global1.a ^ 78557u) | min(global1.a, global0.x))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-356f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-var_0.x))))), -371f);
    var var_3 = func_2(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -1292f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2509f, 984f))))));
    global0 = ~(~(~((vec3<u32>(17592u, 28034u, global0.x) >> (vec3<u32>(global0.x, 48223u, 1u) % vec3<u32>(32u))) | vec3<u32>(94478u, global0.x, 0u))));
    let var_4 = Struct_2(abs(1u), func_2(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), var_0.x)).b, !global2[_wgslsmith_index_u32(~firstTrailingBit(global0.x ^ 4294967295u), 21u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(_wgslsmith_clamp_i32(global1.b.a.x, 2147483647i, global1.b.a.x) << (_wgslsmith_sub_u32(1u, var_4.a) % 32u), 2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(global1.b.b.x, var_4.b.b.x, 1i, 20175i), vec4<i32>(global1.b.a.x, var_4.b.b.x, 2147483647i, -2147483647i) << (vec4<u32>(11209u, var_3.a, var_3.a, global1.a) % vec4<u32>(32u)))), var_3.b.a.x, -vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-33667i, 4423i, u_input.a), vec3<i32>(u_input.a, -57584i, var_4.b.a.x)), vec3<i32>(global1.b.b.x, -2147483647i, 1i)), global1.b.a.x, ~countOneBits(var_4.b.b.x)));
}

