struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-409f, 309f);

var<private> global1: array<bool, 24>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    return global0.x;
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec3<i32>) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 1705f) - _wgslsmith_div_f32(global0.x, global0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(107f, arg_1.d.x))))), 16837i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a.c, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(global0.x * -1529f)))) * _wgslsmith_f_op_f32(step(127f, _wgslsmith_f_op_f32(arg_1.a.a - _wgslsmith_f_op_f32(arg_1.d.x - global0.x))))), select(select(arg_1.a.d, select(arg_1.a.d, select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 24u)], true), arg_1.a.d, global1[_wgslsmith_index_u32(1u, 24u)]), arg_1.a.d), select(vec4<bool>(false, true, true, arg_1.a.d.x), vec4<bool>(true, false, arg_0, false), true)), vec4<bool>(!global1[_wgslsmith_index_u32(u_input.d, 24u)], arg_0, global1[_wgslsmith_index_u32(~7780u, 24u)], arg_1.b.x), !(arg_2.x > _wgslsmith_clamp_i32(arg_1.a.b, arg_1.a.b, u_input.e))));
    var var_1 = arg_2.xz;
    let var_2 = arg_2.x;
    var_0 = arg_1.a;
    let var_3 = Struct_2(Struct_1(arg_1.a.a, countOneBits(var_1.x), -307f, !arg_1.a.d), vec2<bool>(false, arg_0 && all(!arg_1.a.d.zyw)), vec3<u32>(1u, arg_1.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.x, 36684u, 1538u) ^ arg_1.c, reverseBits(arg_1.c))) & arg_1.c, vec4<f32>(1107f, _wgslsmith_f_op_f32(trunc(-406f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_1.a.a)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-929f + arg_1.d.x)) * -115f)));
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = vec3<i32>(-51914i, 5094i, _wgslsmith_dot_vec3_i32(min(-(vec3<i32>(arg_0.a.b, u_input.e, arg_2.b) << (vec3<u32>(0u, arg_0.c.x, 4294967295u) % vec3<u32>(32u))), abs(vec3<i32>(arg_2.b, 1i, -1i))), ~abs(vec3<i32>(u_input.e, u_input.e, arg_0.a.b)) << (~(~vec3<u32>(0u, 46852u, 12232u)) % vec3<u32>(32u))));
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(1175f)), _wgslsmith_f_op_f32(f32(-1f) * -1381f))), _wgslsmith_f_op_vec2_f32(arg_0.d.wz * arg_0.d.xx)))));
    let var_1 = _wgslsmith_add_vec4_i32(~(vec4<i32>(arg_0.a.b, arg_2.b, arg_2.b, arg_2.b) | select(vec4<i32>(var_0.x, -1i, 1i, -2247i), vec4<i32>(u_input.e, var_0.x, -2016i, u_input.e), arg_0.a.d)), -(~firstLeadingBit(vec4<i32>(arg_0.a.b, -2147483647i, 2147483647i, 16048i)))) ^ abs(~(~vec4<i32>(-4173i, var_0.x, 2147483647i, arg_2.b)) << (u_input.b % vec4<u32>(32u)));
    var var_2 = arg_2.b;
    let var_3 = Struct_2(arg_0.a, select(arg_2.d.zz, arg_0.b, !all(!arg_0.a.d)), ~arg_0.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) + _wgslsmith_f_op_f32(func_1(u_input.c.x, var_1.zwy, Struct_1(arg_0.a.a, u_input.e, arg_1, arg_0.a.d)))), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1029f)), global0.x));
    return 48497i;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x))), func_4(Struct_2(Struct_1(-986f, u_input.e, 638f, vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(u_input.d, 24u)])), !vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 24u)]), firstTrailingBit(u_input.b.xwy), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x))), _wgslsmith_f_op_f32(func_1(~u_input.c.x, func_3(false, Struct_2(Struct_1(global0.x, u_input.e, global0.x, vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 24u)], true)), vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 24u)], true), vec3<u32>(4294967295u, 37418u, 49950u), vec4<f32>(187f, -273f, global0.x, global0.x)), vec3<i32>(u_input.e, u_input.e, 12563i)), Struct_1(global0.x, u_input.e, -1936f, vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 24u)])))), Struct_1(-409f, _wgslsmith_mult_i32(2147483647i, u_input.e), global0.x, vec4<bool>(false, global1[_wgslsmith_index_u32(16132u, 24u)], true, global1[_wgslsmith_index_u32(79321u, 24u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-559f)))) + _wgslsmith_f_op_f32(-global0.x)), vec4<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.wzy, ~u_input.b.wwz), 24u)], true, all(!vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 24u)], true)))), !(!select(select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], false), true), select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 24u)], false), global1[_wgslsmith_index_u32(u_input.d, 24u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 24u)], true), vec2<bool>(true, true), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 24u)])))), vec3<u32>(~select(select(u_input.a.x, u_input.d, true), _wgslsmith_mult_u32(u_input.a.x, 88435u), u_input.e != u_input.e), ~130705u, 4294967295u), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1359f - _wgslsmith_f_op_f32(trunc(global0.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-250f - _wgslsmith_f_op_f32(func_1(1u, vec3<i32>(-43655i, u_input.e, 36548i), Struct_1(global0.x, u_input.e, -1000f, vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 24u)]))))), 926f)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(round(-2399f))) * -1338f)));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, global0.x)) - vec2<f32>(-237f, 1761f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.yy)), var_0.a.d.wz));
    var var_1 = Struct_2(var_0.a, select(select(var_0.a.d.xw, !vec2<bool>(false, var_0.a.d.x), true), !var_0.b, !vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 40110u), 24u)], u_input.e <= -8056i)), var_0.c, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.x, global0.x, var_0.a.a) * vec4<f32>(global0.x, -952f, 402f, var_0.d.x)), _wgslsmith_div_vec4_f32(vec4<f32>(540f, var_0.a.a, global0.x, 985f), var_0.d))))))));
    var var_2 = Struct_2(var_1.a, select(var_1.b, var_1.a.d.wz, !(!vec2<bool>(var_0.a.d.x, true))), firstTrailingBit(u_input.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0.d, vec4<f32>(-1122f, var_1.d.x, var_1.a.a, global0.x))))) + _wgslsmith_f_op_vec4_f32(-var_1.d)));
    var var_3 = select(vec2<i32>(min(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, var_1.a.b), abs(vec2<i32>(-20431i, var_0.a.b))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_1.a.b, -2986i), -17311i)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_1.a.b, 2147483647i), vec2<i32>(0i, 1i)), ~var_2.a.b)), -((-vec2<i32>(var_1.a.b, 1i) ^ vec2<i32>(var_1.a.b, 0i)) << ((~u_input.a.zy ^ ~vec2<u32>(var_0.c.x, var_1.c.x)) % vec2<u32>(32u))), select(var_1.b, vec2<bool>(8009i < _wgslsmith_div_i32(16294i, var_2.a.b), any(!vec3<bool>(true, var_0.a.d.x, var_1.b.x))), true));
    return var_0;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    var var_0 = vec3<bool>(false, false, !global1[_wgslsmith_index_u32(~(~(~arg_2.c.x)), 24u)]);
    let var_1 = ~(~select(~(~67791u), ~_wgslsmith_mult_u32(0u, 4294967295u), arg_2.a.a < _wgslsmith_f_op_f32(ceil(arg_1.c))));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(f32(-1f) * -927f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_1.a, 656f)))) - _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-arg_2.a.c)))), _wgslsmith_f_op_f32(f32(-1f) * -551f), _wgslsmith_f_op_f32(func_1(~select(var_1, 4294967295u, false), -(vec3<i32>(arg_2.a.b, arg_1.b, -2147483647i) & vec3<i32>(u_input.e, arg_1.b, arg_1.b)), arg_2.a)))));
    return _wgslsmith_f_op_f32(select(-903f, _wgslsmith_f_op_f32(trunc(-693f)), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(428f, _wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_f_op_f32(func_5(~vec4<u32>(48304u, 74352u, u_input.b.x, u_input.d) | (u_input.b ^ u_input.b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(0u, vec3<i32>(u_input.e, u_input.e, u_input.e), Struct_1(global0.x, -2147483647i, 1682f, vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(u_input.c.x, 24u)], true, global1[_wgslsmith_index_u32(55182u, 24u)]))))), _wgslsmith_sub_i32(i32(-1i) * -21109i, u_input.e), global0.x, select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 24u)], true, true), vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(u_input.d, 24u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.c.x, 24u)], false)), select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(43684u, 24u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], false, global1[_wgslsmith_index_u32(32750u, 24u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], false, global1[_wgslsmith_index_u32(0u, 24u)], true)), vec4<bool>(true, true, true, true))), func_2())));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(global0.x + 670f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-310f, 1085f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -747f))), 1f, -533f), ~u_input.b, max(4294967295u, firstLeadingBit(~u_input.c.x)), _wgslsmith_mod_i32(reverseBits(~(-1i)), -u_input.e) | reverseBits(abs(u_input.e)), vec4<i32>(-1i) * -vec4<i32>(u_input.e << (4294967295u % 32u), i32(-1i) * -1i, -u_input.e, u_input.e));
}

