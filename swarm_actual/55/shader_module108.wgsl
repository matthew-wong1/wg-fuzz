struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14>;

var<private> global1: array<Struct_1, 6>;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(select(~global3.b, ~_wgslsmith_add_u32(17180u, 9907u), all(select(vec3<bool>(global2.c, true, global2.c), vec3<bool>(global3.c, global2.c, global2.c), vec3<bool>(arg_1.c, arg_1.c, true)))), 14u)] - vec4<f32>(global2.d.x, 1441f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(trunc(global2.d.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global2.d.x)), _wgslsmith_f_op_f32(-global2.d.x), all(vec3<bool>(false, true, global3.c)))))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_div_u32(min(u_input.d, 4294967295u), global3.b)), 47447u >> (((arg_0.x | global2.b) & 4294967295u) % 32u)), 14u)]);
    var var_1 = vec3<bool>(false, true, !(!(!arg_1.c)));
    global3 = global1[_wgslsmith_index_u32(0u, 6u)];
    var var_2 = firstTrailingBit(0u);
    return ~1u;
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> u32 {
    let var_0 = max(_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -global3.a.x, -29214i, abs(1i), (arg_1 ^ global3.a.x) & -arg_1), abs(vec4<i32>(~global3.a.x, 1i << (global3.b % 32u), global3.a.x ^ global2.a.x, select(-1i, 43918i, false)))), abs(countOneBits(u_input.c.x)));
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    var var_1 = global3.d.x;
    global1 = array<Struct_1, 6>();
    return _wgslsmith_dot_vec2_u32(~(~vec2<u32>(49076u, 0u)) ^ select(firstTrailingBit(firstTrailingBit(vec2<u32>(0u, global3.b))), vec2<u32>(4294967295u, ~1u), any(vec3<bool>(false, true, false))), vec2<u32>(~min(7731u, 54792u), 7439u) ^ ~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 42584u), vec2<u32>(1840u, global2.b)), ~vec2<u32>(global2.b, 0u), ~vec2<u32>(1u, 2649u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<f32> {
    return vec3<f32>(_wgslsmith_f_op_f32(sign(-102f)), _wgslsmith_f_op_f32(exp2(arg_2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.x - _wgslsmith_f_op_f32(f32(-1f) * -930f)))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global3 = Struct_1(global3.a, 10341u, all(!(!vec3<bool>(true, global2.c, true))), vec2<f32>(_wgslsmith_f_op_f32(893f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(404f, -1000f, true)), _wgslsmith_f_op_f32(arg_0 - 1000f))), 2532f));
    var var_0 = ~(~(~func_2(vec4<u32>(u_input.b, 4294967295u, 1u, 23715u), Struct_1(vec2<i32>(-25288i, 0i), global3.b, false, global3.d)))) > (global2.b << ((~select(u_input.b, u_input.d, false) ^ ~(31462u & u_input.d)) % 32u));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1083f);
    global0 = array<vec4<f32>, 14>();
    let var_2 = _wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec2<i32>(0i, -global2.a.x), ~(~(global2.b | 63087u)), (_wgslsmith_clamp_u32(4294967295u, 17413u, 4294967295u) >> ((global2.b >> (global3.b % 32u)) % 32u)) == func_3(global0[_wgslsmith_index_u32(abs(u_input.d), 14u)], global2.a.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global3.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.d)))), Struct_1(vec2<i32>(_wgslsmith_div_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -9116i), vec2<i32>(33732i, 0i))), -33877i), ~func_2(select(vec4<u32>(u_input.b, 1u, global3.b, 4294967295u), vec4<u32>(u_input.d, u_input.b, 28527u, 0u), global3.c), Struct_1(vec2<i32>(global2.a.x, -3698i), global3.b, false, vec2<f32>(-278f, 542f))), false || all(!vec2<bool>(global3.c, global3.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.d.x, _wgslsmith_f_op_f32(1379f - global2.d.x)))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mult_u32(firstLeadingBit(4294967295u), global3.b), ~(~1u)), 6u)], Struct_1(firstTrailingBit(-(vec2<i32>(2147483647i, -1i) & vec2<i32>(0i, global3.a.x))), ~14797u, all(!(!vec3<bool>(global3.c, global2.c, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-915f, 754f) + vec2<f32>(var_1, var_1)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-2196f, arg_0) + global3.d))))));
    return Struct_1(reverseBits(u_input.c), ~(~(~select(24667u, global2.b, true))), -(-11201i >> (global2.b % 32u)) >= _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, global3.a.x, -2147483647i), ~vec3<i32>(u_input.a.x, 1i, global3.a.x)), _wgslsmith_mult_i32(firstLeadingBit(-2147483647i), 46258i)), _wgslsmith_f_op_vec2_f32(var_2.xz * _wgslsmith_f_op_vec2_f32(ceil(var_2.yx))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 6>();
    var var_0 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.x))), _wgslsmith_f_op_f32(max(-733f, global2.d.x))));
    let var_1 = ~(max(_wgslsmith_div_u32(select(41497u, 28533u, true), 1u), _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(78510u, 85261u, 70993u))) & var_0.b);
    var var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~countOneBits(vec2<u32>(u_input.d, global2.b)))) ^ global3.b, 6u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(global3.d.x + 1f), var_2.d.x, -459f))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<i32>(0i, global2.a.x)), countOneBits(min(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.e), u_input.a) & 0i, select(var_0.a.x, u_input.e, any(vec4<bool>(false, false, global2.c, var_2.c))))), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(global2.a.x, var_2.a.x)), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(33301i, u_input.e)), func_1(-1783f).a)), _wgslsmith_mod_vec2_i32(global3.a, -_wgslsmith_mod_vec2_i32(vec2<i32>(global2.a.x, -2147483647i), vec2<i32>(-2147483647i, global2.a.x)))));
}

