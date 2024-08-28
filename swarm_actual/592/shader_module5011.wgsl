struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<f32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: array<u32, 4>;

var<private> global2: array<f32, 9> = array<f32, 9>(-2392f, -283f, -743f, 692f, -263f, -1426f, 330f, -1004f, -3202f);

var<private> global3: array<vec2<bool>, 20>;

var<private> global4: i32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: u32) -> vec3<u32> {
    var var_0 = 1i;
    var var_1 = 0u;
    var_1 = ~_wgslsmith_mod_u32(6310u, ~(~(~arg_3)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(max(~vec3<i32>(-2147483647i, arg_1.a.x, arg_1.a.x), arg_1.a.wxx), vec3<i32>(-arg_2.d.c, firstLeadingBit(-19798i), ~(-1i))), vec2<bool>(false, firstLeadingBit(40545i) == arg_2.a.c), countOneBits(arg_1.a.x)), !select(!arg_2.b, select(vec3<bool>(false, arg_2.d.b.x, arg_2.a.b.x), arg_2.b, true), !arg_2.a.b.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a, 9u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 9u)]))), arg_2.c.x), Struct_1(arg_1.a.xyy, !global3[_wgslsmith_index_u32(75142u, 20u)], _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.a.x, 28676i, arg_1.a.x, arg_1.a.x), arg_1.a), 0i), _wgslsmith_mod_vec2_i32(arg_2.a.a.xy, ~arg_2.d.a.xx))), _wgslsmith_f_op_vec4_f32(trunc(arg_2.e)));
    var var_3 = Struct_2(arg_2.d, !(!select(!vec3<bool>(arg_2.b.x, arg_2.d.b.x, arg_2.b.x), vec3<bool>(var_2.d.b.x, false, arg_2.b.x), u_input.a < 4294967295u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-502f, _wgslsmith_f_op_f32(floor(-790f)))), arg_2.a, _wgslsmith_f_op_vec4_f32(sign(var_2.e)));
    return ~(select(abs(vec3<u32>(961u, arg_3, u_input.a) & vec3<u32>(53354u, arg_3, arg_3)), arg_0.yxx, vec3<bool>(true, true, false)) ^ min(min(vec3<u32>(12259u, 4294967295u, 32068u), arg_0.xzy), arg_0.yyx));
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_1(~_wgslsmith_add_vec3_i32(~vec3<i32>(-38554i, 1i, -1i), vec3<i32>(0i, 42486i, 2147483647i)) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 1u, 4294967295u) & func_3(vec4<u32>(0u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 4u)], u_input.a), Struct_3(vec4<i32>(25949i, -2147483647i, -9123i, 57532i)), global0[_wgslsmith_index_u32(4294967295u, 9u)], u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, 4294967295u) ^ vec3<u32>(global1[_wgslsmith_index_u32(58510u, 4u)], u_input.a, global1[_wgslsmith_index_u32(1u, 4u)]), select(vec3<u32>(31730u, global1[_wgslsmith_index_u32(u_input.a, 4u)], 0u), vec3<u32>(u_input.a, 1u, 34200u), false))) % vec3<u32>(32u)), select(vec2<bool>(true != (global2[_wgslsmith_index_u32(10635u, 9u)] == 412f), _wgslsmith_add_u32(34353u, global1[_wgslsmith_index_u32(6522u, 4u)]) > global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7337u, 4u)], 4u)]), !select(select(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52378u, 4u)], 4u)], 20u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 20u)], true), global3[_wgslsmith_index_u32(65041u, 20u)], true), true), -(~max(~(-10718i), abs(0i))));
    var var_1 = countOneBits(abs(var_0.a.yx));
    let var_2 = var_0;
    global3 = array<vec2<bool>, 20>();
    var var_3 = max(-5746i, 0i);
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 9u)], -1515f, global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)])))), vec4<f32>(730f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 9u)] - 1000f), _wgslsmith_f_op_f32(-1179f * global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 9u)]), global2[_wgslsmith_index_u32(~0u, 9u)]))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = vec3<i32>(arg_2.a.x << ((global1[_wgslsmith_index_u32(abs(u_input.a), 4u)] >> (abs(abs(60619u)) % 32u)) % 32u), arg_2.a.x, _wgslsmith_dot_vec2_i32(abs(reverseBits(abs(arg_2.a.xz))), arg_2.a.xw));
    global2 = array<f32, 9>();
    var var_1 = ~(~(~firstTrailingBit(global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(83488u, 4u)]), 4u)])));
    var var_2 = select(select(!select(select(vec4<bool>(true, arg_1.x, arg_1.x, false), vec4<bool>(true, arg_1.x, arg_1.x, true), arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, true, false), !vec4<bool>(false, arg_1.x, arg_1.x, false)), select(!select(vec4<bool>(true, true, false, arg_1.x), vec4<bool>(false, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, true)), vec4<bool>(all(vec4<bool>(arg_1.x, false, arg_1.x, false)), true, arg_1.x, !arg_1.x), false), false), vec4<bool>(false, arg_1.x, all(select(select(vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, false, true), arg_1.x), vec4<bool>(false, arg_1.x, true, true), arg_1.x)), arg_1.x | !(false != arg_1.x)), !vec4<bool>(true, arg_1.x, any(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, false, arg_1.x))), (false || arg_1.x) && true));
    var var_3 = Struct_3(abs(select(firstTrailingBit(vec4<i32>(-2147483647i, arg_2.a.x, var_0.x, var_0.x) | vec4<i32>(-1i, var_0.x, -45547i, -32068i)), arg_2.a, vec4<bool>(var_2.x, false, all(vec2<bool>(true, true)), arg_1.x))));
    return Struct_2(Struct_1(~vec3<i32>(arg_2.a.x, _wgslsmith_clamp_i32(2147483647i, 1i, -71635i), arg_2.a.x | -1i), var_2.ww, ~(-arg_2.a.x)), select(select(vec3<bool>(arg_1.x, all(vec3<bool>(false, arg_1.x, arg_1.x)), !arg_1.x), !(!var_2.ywz), !select(var_2.zwy, var_2.xyz, var_2.ywz)), select(select(select(var_2.wxy, var_2.zyy, var_2.yzx), select(var_2.xzy, vec3<bool>(true, var_2.x, false), vec3<bool>(var_2.x, var_2.x, var_2.x)), select(var_2.xyy, vec3<bool>(true, arg_1.x, false), true)), vec3<bool>(true, arg_1.x, all(vec4<bool>(false, var_2.x, false, true))), false), select(vec3<bool>(true, true, true), vec3<bool>(var_2.x, global2[_wgslsmith_index_u32(u_input.a, 9u)] != global2[_wgslsmith_index_u32(4294967295u, 9u)], false), !var_2.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2()).wz), _wgslsmith_f_op_vec2_f32(sign(arg_0.yw))))), Struct_1(countOneBits((var_0 & var_3.a.zww) << (min(vec3<u32>(global1[_wgslsmith_index_u32(21231u, 4u)], u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 4u)], 4u)]), vec3<u32>(u_input.a, u_input.a, 47389u)) % vec3<u32>(32u))), arg_1, _wgslsmith_dot_vec3_i32(-var_0, arg_2.a.wxx)), arg_0);
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> Struct_2 {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(arg_1, 9u)], arg_0.x, 1426f, global2[_wgslsmith_index_u32(9731u, 9u)]), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(113805u, 4u)], 9u)], -1541f, -1201f), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec4_f32(func_2()), true)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(126579u, 9u)], arg_0.x, 674f, arg_0.x) - vec4<f32>(global2[_wgslsmith_index_u32(55757u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], arg_0.x, arg_0.x)))))), select(vec2<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false)), any(vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), global3[_wgslsmith_index_u32(40047u, 20u)], true), false)), Struct_3(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(-15560i, -17265i, 0i, 29893i), vec4<i32>(-1i, -51501i, -12148i, -11390i))));
    var var_1 = var_0.d;
    let var_2 = Struct_3(vec4<i32>(var_1.a.x, ~var_1.c, -_wgslsmith_sub_i32(-10407i, firstLeadingBit(var_0.d.c)), -var_1.c & max(83628i, countOneBits(-78419i))));
    var var_3 = -395f;
    var var_4 = -2147483647i;
    return global0[_wgslsmith_index_u32(min(u_input.a, _wgslsmith_clamp_u32(max(~1u, 4294967295u), 17899u, _wgslsmith_add_u32(0u & arg_1, ~arg_1))), 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(abs(vec4<i32>(1i, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(32990i, 0i), vec2<i32>(-23211i, -47129i))), 1i, -48255i)));
    var var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-3151f, -204f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 9u)]) - vec3<f32>(1055f, 1107f, 1143f)) + vec3<f32>(-1550f, global2[_wgslsmith_index_u32(u_input.a, 9u)], -143f)) + vec3<f32>(-383f, _wgslsmith_div_f32(1000f, global2[_wgslsmith_index_u32(0u, 9u)]), global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 4u)], 4u)], 4u)], 9u)]))), ~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.a, ~select(global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(15626u, 4u)], true)), 4u)]);
    let var_2 = var_1.d;
    let var_3 = func_1(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~select(global1[_wgslsmith_index_u32(4294967295u, 4u)], u_input.a, true), 4u)], 9u)]), -1471f, var_1.e.x), ~_wgslsmith_add_u32(u_input.a, 1u));
    global3 = array<vec2<bool>, 20>();
    var var_4 = Struct_3(_wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(var_0.a, var_0.a), firstLeadingBit(~vec4<i32>(var_3.a.a.x, 2147483647i, -1i, var_3.a.c))));
    global4 = 5894i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(393f))) * global2[_wgslsmith_index_u32(0u, 9u)]), var_2.a.yz, _wgslsmith_f_op_vec3_f32(-func_4(var_3.e, select(var_1.d.b, select(var_3.a.b, vec2<bool>(true, var_3.a.b.x), var_2.b), func_1(var_1.e.yzw, global1[_wgslsmith_index_u32(u_input.a, 4u)]).b.x), Struct_3(var_4.a)).e.zzy), -(~(-var_2.a)) & var_2.a, i32(-1i) * -35674i);
}

