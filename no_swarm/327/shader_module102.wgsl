struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 4> = array<f32, 4>(474f, 1068f, 1102f, -1068f);

var<private> global2: f32 = -640f;

var<private> global3: array<bool, 17> = array<bool, 17>(false, false, false, true, true, false, false, false, false, false, false, false, true, true, false, false, false);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: bool) -> vec3<u32> {
    let var_0 = arg_1;
    let var_1 = !all(select(!(!vec3<bool>(true, var_0.b, true)), !select(vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(arg_1.b, true, true), arg_3), vec3<bool>(false, false, select(arg_3, true, arg_1.b))));
    let var_2 = Struct_1(arg_3, arg_2.a.x, 0u);
    var var_3 = var_2;
    var_3 = Struct_1(all(vec3<bool>(true, var_1, var_2.b != _wgslsmith_dot_vec3_i32(arg_2.a, vec3<i32>(1i, -80713i, arg_1.a.x)))), -8329i, ~var_2.c);
    return vec3<u32>(var_3.c & u_input.a.x, _wgslsmith_mod_u32(5479u, 4294967295u), var_3.c);
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec3<bool>) -> i32 {
    global3 = array<bool, 17>();
    var var_0 = Struct_3(-(~vec3<i32>(-1i, arg_1.a.x, arg_1.a.x)) << (_wgslsmith_clamp_vec3_u32(select(func_3(vec3<f32>(-1042f, global1[_wgslsmith_index_u32(1u, 4u)], arg_0), Struct_2(vec2<i32>(arg_1.a.x, arg_1.a.x), false), Struct_3(vec3<i32>(arg_1.a.x, arg_1.a.x, -37719i), u_input.a.x), false), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 25206u), vec3<u32>(1u, 36716u, u_input.a.x), u_input.b), any(vec4<bool>(false, false, false, arg_3.x))), u_input.b, ~u_input.b) % vec3<u32>(32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(u_input.b.x), ~u_input.a.x), ~countOneBits(u_input.b.x), abs(u_input.b.x)), ~_wgslsmith_div_vec3_u32(func_3(vec3<f32>(arg_0, arg_0, -1434f), arg_1, Struct_3(vec3<i32>(2147483647i, -5564i, arg_1.a.x), 20268u), arg_3.x), ~u_input.b)));
    global0 = ~(~u_input.a.x);
    var var_1 = true;
    var var_2 = false;
    return -firstTrailingBit(abs(1i));
}

fn func_4(arg_0: vec4<i32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.a.x, 4u)]))) + _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(~u_input.b.x, 4u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1535f + 2326f)))))));
    var var_1 = vec3<u32>(~u_input.b.x, u_input.a.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u | (1u | u_input.b.x), 4294967295u), u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_sub_u32(0u, u_input.b.x >> (u_input.a.x % 32u)))));
    let var_2 = Struct_1(true, select(2147483647i, 1i, select(true, all(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 17u)], true, global3[_wgslsmith_index_u32(var_1.x, 17u)], true)), all(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 17u)], global3[_wgslsmith_index_u32(98u, 17u)])))), var_1.x);
    let var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(1u) >> (var_2.c % 32u), 23694u, firstLeadingBit(~(~var_1.x)), u_input.a.x), select(firstTrailingBit(vec4<u32>(0u, 0u, u_input.a.x, var_2.c) >> (vec4<u32>(var_2.c, var_1.x, var_2.c, 0u) % vec4<u32>(32u))), ~select(vec4<u32>(13528u, var_1.x, var_2.c, 4294967295u), vec4<u32>(var_2.c, u_input.b.x, u_input.b.x, 1u), vec4<bool>(var_2.a, true, var_2.a, false)), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.x ^ 1u, 0u), 17u)]) & ~select(select(vec4<u32>(var_2.c, 0u, var_1.x, u_input.b.x), vec4<u32>(var_2.c, u_input.a.x, 46222u, 13487u), global3[_wgslsmith_index_u32(0u, 17u)]), vec4<u32>(u_input.a.x, u_input.b.x, var_2.c, u_input.b.x), vec4<bool>(false, true, global3[_wgslsmith_index_u32(var_2.c, 17u)], true)));
    var var_4 = -_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, ~(-80798i), arg_0.x), _wgslsmith_mod_vec3_i32(~arg_0.ywx, vec3<i32>(~var_2.b, 8967i, 1i)), -vec3<i32>(-27198i, func_2(global1[_wgslsmith_index_u32(33553u, 4u)], Struct_2(arg_0.wy, false), vec3<bool>(false, false, false), vec3<bool>(var_2.a, true, var_2.a)), -2147483647i));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(557f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.x, 4u)])))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(countOneBits(23932u), 4u)] * 432f), global1[_wgslsmith_index_u32(var_3.x & reverseBits(~1u), 4u)]);
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> StorageBuffer {
    let var_0 = ~(~1u);
    let var_1 = _wgslsmith_f_op_vec3_f32(func_4(vec4<i32>(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), Struct_2(vec2<i32>(-58838i, 2147483647i) & vec2<i32>(61328i, arg_1), !global3[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec3<bool>(true, arg_0.x > -1126f, global3[_wgslsmith_index_u32(var_0, 17u)]), vec3<bool>(false, true, all(vec3<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 17u)], global3[_wgslsmith_index_u32(u_input.a.x, 17u)])))), 19073i, -firstLeadingBit(arg_1) >> (~(~u_input.b.x) % 32u), arg_1)));
    global0 = func_3(arg_0.wyx, Struct_2(~(-vec2<i32>(2147483647i, arg_1)), false), Struct_3(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-42103i, arg_1, arg_1)), vec3<i32>(arg_1, -45997i, -5027i) ^ vec3<i32>(-34042i, 1i, arg_1)), ~(~33009u)), global3[_wgslsmith_index_u32(u_input.b.x, 17u)]).x | ~(var_0 << (0u % 32u));
    let var_2 = !select(select(select(select(vec4<bool>(global3[_wgslsmith_index_u32(var_0, 17u)], global3[_wgslsmith_index_u32(4294967295u, 17u)], true, false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 17u)], global3[_wgslsmith_index_u32(9575u, 17u)], global3[_wgslsmith_index_u32(1u, 17u)], global3[_wgslsmith_index_u32(u_input.a.x, 17u)]), global3[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(9983u, 17u)]), vec4<bool>(global3[_wgslsmith_index_u32(20791u, 17u)], false, global3[_wgslsmith_index_u32(34158u, 17u)], global3[_wgslsmith_index_u32(var_0, 17u)])), vec4<bool>(var_0 <= 96377u, true, global3[_wgslsmith_index_u32(u_input.b.x, 17u)] | false, global3[_wgslsmith_index_u32(abs(u_input.b.x), 17u)]), select(!vec4<bool>(false, false, global3[_wgslsmith_index_u32(var_0, 17u)], true), select(vec4<bool>(global3[_wgslsmith_index_u32(37297u, 17u)], true, false, global3[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 17u)], true, false, true), true), vec4<bool>(global3[_wgslsmith_index_u32(var_0, 17u)], true, global3[_wgslsmith_index_u32(37744u, 17u)], true))), vec4<bool>(!(!global3[_wgslsmith_index_u32(var_0, 17u)]), any(select(vec3<bool>(false, true, true), vec3<bool>(global3[_wgslsmith_index_u32(1u, 17u)], true, false), vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 17u)], global3[_wgslsmith_index_u32(4294967295u, 17u)]))), arg_1 == arg_1, true), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 17u)], select(all(vec4<bool>(false, global3[_wgslsmith_index_u32(67005u, 17u)], global3[_wgslsmith_index_u32(u_input.a.x, 17u)], false)), false, true), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, var_0), 17u)], !global3[_wgslsmith_index_u32(10343u, 17u)] | true));
    var var_3 = vec2<f32>(-226f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1987f))))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.xzx) - var_1));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 4>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], -2845f), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(7665u, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]))), global1[_wgslsmith_index_u32(0u, 4u)], 423f, -1000f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.b.x, 4u)])), -449f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 4u)] + -1318f), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(608u, u_input.a.x), 4u)])))), -(-18811i >> (max(1u, ~u_input.a.x) % 32u)));
}

