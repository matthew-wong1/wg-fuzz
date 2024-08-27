struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 7> = array<u32, 7>(0u, 69653u, 36603u, 1u, 23219u, 4294967295u, 844u);

var<private> global2: i32 = -1i;

var<private> global3: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(0u, vec2<i32>(-2981i, 2147483647i), Struct_1(vec2<i32>(-5398i, -1i), vec2<bool>(false, false), vec4<bool>(true, false, true, true)), 98286u, Struct_1(vec2<i32>(-50032i, -35153i), vec2<bool>(false, false), vec4<bool>(false, false, true, true))), Struct_3(67122u, vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec2<i32>(-1i, 0i), vec2<bool>(false, false), vec4<bool>(true, false, true, false)), 4294967295u, Struct_1(vec2<i32>(22138i, i32(-2147483648)), vec2<bool>(true, true), vec4<bool>(false, true, false, true))), Struct_3(4294967295u, vec2<i32>(i32(-2147483648), -18176i), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec2<bool>(false, false), vec4<bool>(true, true, false, true)), 26545u, Struct_1(vec2<i32>(24258i, i32(-2147483648)), vec2<bool>(true, false), vec4<bool>(true, true, true, true))));

var<private> global4: array<i32, 12>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(300f + 1533f));
    global1 = array<u32, 7>();
    global3 = array<Struct_3, 3>();
    global4 = array<i32, 12>();
    global1 = array<u32, 7>();
    return 572f;
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: u32) -> vec3<f32> {
    var var_0 = any(vec3<bool>(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(min(-416f, arg_1.x)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) + _wgslsmith_f_op_f32(round(-1300f))), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 54289u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26601u, 7u)], 7u)], 24084u), max(vec4<u32>(12198u, 4294967295u, 3614u, 15242u), vec4<u32>(arg_2, arg_2, 0u, global1[_wgslsmith_index_u32(arg_2, 7u)]))) <= arg_2));
    var var_1 = vec3<bool>((350f < arg_0.a) | true, all(vec3<bool>(true, true, true)), true);
    let var_2 = _wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 3567u, 429u), vec3<u32>(4294967295u, arg_2, 4294967295u)), ~vec3<u32>(47389u, global1[_wgslsmith_index_u32(1u, 7u)], arg_2) ^ firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(72703u, 7u)], global1[_wgslsmith_index_u32(arg_2, 7u)], global1[_wgslsmith_index_u32(0u, 7u)]))), ~(select(select(vec3<u32>(arg_2, global1[_wgslsmith_index_u32(arg_2, 7u)], 1u), vec3<u32>(arg_2, 14721u, arg_2), vec3<bool>(false, false, var_1.x)), abs(vec3<u32>(global1[_wgslsmith_index_u32(0u, 7u)], 27894u, 1u)), select(vec3<bool>(false, false, var_1.x), vec3<bool>(var_1.x, var_1.x, false), true)) >> (vec3<u32>(~arg_2, firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)]), select(72292u, 1107u, true)) % vec3<u32>(32u))));
    var_1 = select(!(!select(!vec3<bool>(var_1.x, true, var_1.x), select(vec3<bool>(var_1.x, true, true), vec3<bool>(var_1.x, false, false), var_1.x), var_1.x == true)), select(select(vec3<bool>(var_1.x & true, !var_1.x, all(vec3<bool>(false, var_1.x, false))), !(!vec3<bool>(var_1.x, var_1.x, var_1.x)), (i32(-1i) * -33721i) == (global4[_wgslsmith_index_u32(4294967295u, 12u)] | u_input.a.x)), select(select(!vec3<bool>(false, var_1.x, false), !vec3<bool>(true, false, var_1.x), !vec3<bool>(true, var_1.x, false)), select(!vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, true, var_1.x), true), all(select(vec4<bool>(false, var_1.x, false, true), vec4<bool>(var_1.x, false, true, true), vec4<bool>(var_1.x, var_1.x, false, var_1.x)))), false), !vec3<bool>(var_1.x || true, !all(vec3<bool>(var_1.x, var_1.x, true)), any(vec3<bool>(var_1.x, false, false))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -339f);
    return vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x, 1000f);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: f32) -> u32 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1253f, 613f, 782f, arg_3)))))))), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(min(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20604u, 7u)], 12u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 12u)]), -1i), 2147483647i), 0i, ~_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 2147483647i, u_input.a.x, -1i), u_input.a << (vec4<u32>(9997u, 94004u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(72310u, 7u)], 7u)], 7u)], 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)]) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.yz)))), arg_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -856f)))));
    global3 = array<Struct_3, 3>();
    return global1[_wgslsmith_index_u32(~(~abs(~global1[_wgslsmith_index_u32(~1u, 7u)])), 7u)];
}

fn func_2(arg_0: i32, arg_1: f32) -> u32 {
    let var_0 = firstTrailingBit(firstTrailingBit(~(~(~global1[_wgslsmith_index_u32(4294967295u, 7u)]))));
    var var_1 = global3[_wgslsmith_index_u32(var_0, 3u)];
    var var_2 = global3[_wgslsmith_index_u32(0u, 3u)];
    global1 = array<u32, 7>();
    global1 = array<u32, 7>();
    return ~_wgslsmith_div_u32(func_4(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(702f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-327f, -1450f, -779f) * vec3<f32>(-641f, arg_1, arg_1)), 1u)), select(select(vec3<bool>(var_2.c.b.x, false, var_2.c.c.x), vec3<bool>(var_2.e.b.x, var_2.c.c.x, true), true), !vec3<bool>(false, var_1.c.c.x, false), select(vec3<bool>(true, var_2.c.b.x, var_2.e.c.x), vec3<bool>(var_2.e.b.x, false, var_1.e.b.x), var_2.e.c.zwy)), Struct_5(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, arg_1, 653f, arg_1))), vec3<i32>(u_input.a.x, var_2.e.a.x, 0i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 1000f)), Struct_1(var_2.c.a, var_1.e.b, vec4<bool>(var_1.c.c.x, var_2.e.b.x, true, false)), arg_1), _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 4294967295u), ~vec2<u32>(0u, var_2.d), vec2<u32>(38838u, var_2.d)), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a, var_0), vec2<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 7u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<i32, 12>();
    let var_0 = global1[_wgslsmith_index_u32(func_2(firstTrailingBit(~(~u_input.a.x) & 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_f32(-447f + _wgslsmith_f_op_f32(-1563f + 354f))))), 7u)];
    let var_1 = _wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(-62048i, i32(-1i) * -global4[_wgslsmith_index_u32(1u, 12u)]));
    let var_2 = vec4<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), all(vec4<bool>(true, true, true, true)))), true, true & all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), true)), (~_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], global1[_wgslsmith_index_u32(1u, 7u)], 10963u), vec3<u32>(9862u, 4633u, 35623u)) << (0u % 32u)) < ~(global1[_wgslsmith_index_u32(1u, 7u)] << (global1[_wgslsmith_index_u32(abs(4294967295u), 7u)] % 32u)));
    let var_3 = Struct_2(Struct_1(vec2<i32>(-var_1, min(var_1, abs(-4279i))), vec2<bool>(var_2.x, var_2.x), vec4<bool>(all(var_2.wxy), true, select(5463u >= global1[_wgslsmith_index_u32(2658u, 7u)], true, select(false, false, true)), !(true & var_2.x))));
    global4 = array<i32, 12>();
    let var_4 = vec4<u32>(_wgslsmith_div_u32((~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25346u, 7u)], 7u)], 7u)] | ~0u) | select(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33012u, 7u)], 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(36521u, 7u)]), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27488u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)])), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21349u, 7u)], 7u)] ^ 1u, true), _wgslsmith_div_u32(_wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42080u, 7u)], 7u)], _wgslsmith_sub_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)])), global1[_wgslsmith_index_u32(abs(~global1[_wgslsmith_index_u32(73839u, 7u)]), 7u)])), ~(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -374f, -1000f)), var_2.xzx, Struct_5(vec4<f32>(-487f, 1295f, -305f, 1202f), u_input.a.ywy, vec2<f32>(1000f, -870f), var_3.a, 860f), -372f) & ~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)] >> (4294967295u % 32u))), global1[_wgslsmith_index_u32(select(firstLeadingBit(global1[_wgslsmith_index_u32(~(~4294967295u), 7u)]), firstLeadingBit(~(~4294967295u)), 48083u > ~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)]), 7u)]), 7u)], 43535u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-836f + 1f) * 804f), -u_input.a.xxz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(143f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1143f, 1126f, var_2.x)), _wgslsmith_f_op_f32(-1775f + -2552f)))), ~_wgslsmith_add_vec4_i32(abs(u_input.a), vec4<i32>(_wgslsmith_mod_i32(global4[_wgslsmith_index_u32(var_4.x, 12u)], u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 12u)], var_1), vec3<i32>(1i, 1i, 83029i)), firstTrailingBit(var_1), var_3.a.a.x)));
}

