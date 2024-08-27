struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(42724u, 52798u);

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec2<i32>(2147483647i, 8319i)), Struct_1(vec2<i32>(-53157i, i32(-2147483648))), Struct_1(vec2<i32>(2147483647i, -44204i)), Struct_1(vec2<i32>(-1i, -12956i)), Struct_1(vec2<i32>(-8296i, 1i)), Struct_1(vec2<i32>(-9618i, 2147483647i)), Struct_1(vec2<i32>(1i, 61928i)), Struct_1(vec2<i32>(-39814i, 1i)), Struct_1(vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec2<i32>(-1i, -20607i)), Struct_1(vec2<i32>(2147483647i, 0i)), Struct_1(vec2<i32>(0i, 37491i)), Struct_1(vec2<i32>(-43891i, 0i)), Struct_1(vec2<i32>(1i, 0i)), Struct_1(vec2<i32>(-1i, 0i)), Struct_1(vec2<i32>(-45417i, 9133i)), Struct_1(vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec2<i32>(-15934i, 2147483647i)), Struct_1(vec2<i32>(8576i, 25476i)));

var<private> global2: array<bool, 18>;

var<private> global3: array<u32, 20> = array<u32, 20>(37756u, 76731u, 28756u, 4294967295u, 83909u, 1u, 29662u, 4294967295u, 21601u, 38615u, 1u, 61769u, 895u, 16762u, 4294967295u, 1u, 19583u, 0u, 4294967295u, 37664u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    global1 = array<Struct_1, 22>();
    global2 = array<bool, 18>();
    let var_0 = vec2<bool>(any(!vec4<bool>(global2[_wgslsmith_index_u32(global0.x, 18u)], true, true, true)), false);
    var var_1 = Struct_3(58362u, _wgslsmith_f_op_f32(2018f - _wgslsmith_f_op_f32(2438f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-808f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -495f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-208f, 3523f))))), true);
    var_1 = Struct_3(_wgslsmith_mod_u32(countOneBits(~_wgslsmith_sub_u32(3347u, global0.x)), 3179u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -622f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.c.x - var_1.b), _wgslsmith_div_f32(-1000f, var_1.c.x))))), var_1.c, true);
    return _wgslsmith_f_op_f32(ceil(var_1.c.x));
}

fn func_2(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(861f, arg_0.b.x, 972f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, -219f) * vec3<f32>(arg_0.b.x, 395f, -461f))))), global1[_wgslsmith_index_u32(797u, 22u)]);
    var var_1 = arg_0.b.x;
    global3 = array<u32, 20>();
    let var_2 = arg_0.b.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    return vec4<bool>(false && !(true != all(vec3<bool>(false, global2[_wgslsmith_index_u32(global0.x, 18u)], false))), !select(!arg_0.a || all(vec2<bool>(false, arg_0.a)), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 20u)], 20u)] < ~global0.x, true), false, !(-1i >= _wgslsmith_mod_i32(17198i, 997i << (global0.x % 32u))));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: vec4<bool>) -> f32 {
    global0 = ~(~u_input.d.zw);
    let var_0 = any(vec4<bool>(arg_3.x, !arg_3.x, !global2[_wgslsmith_index_u32(u_input.b >> (global0.x % 32u), 18u)], _wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(-arg_2.b.x)) <= 444f));
    var var_1 = abs(u_input.d) ^ u_input.d;
    let var_2 = abs(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d) & ~1u);
    global0 = ~var_1.zy;
    return 590f;
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = u_input.e.x | u_input.a.x;
    var_0 = u_input.a.x;
    var var_1 = Struct_3(u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(u_input.a.x, func_2(Struct_4(true, vec2<f32>(587f, 2178f))), Struct_4(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 20u)], 20u)], 18u)], vec2<f32>(arg_0, 1247f)), select(vec4<bool>(false, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 20u)], 18u)], false, global2[_wgslsmith_index_u32(37099u, 18u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)], false, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 20u)], 18u)], true), vec4<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 20u)], 18u)], global2[_wgslsmith_index_u32(u_input.b, 18u)], global2[_wgslsmith_index_u32(68242u, 18u)], global2[_wgslsmith_index_u32(u_input.c.x, 18u)])))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))))) * arg_0), vec2<f32>(arg_0, arg_0), select(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, u_input.b, 1u), ~u_input.d.zwy) > countOneBits(_wgslsmith_sub_u32(13162u, 0u)), true, func_2(Struct_4(!global2[_wgslsmith_index_u32(73692u, 18u)], _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-930f, 1388f))))).x));
    var var_2 = max(-43718i, -2147483647i);
    var_1 = Struct_3(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(53577u, u_input.b), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a, 56695u), u_input.d.zz) | vec2<u32>(0u, 31746u)), 20u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2054f * arg_0)))), _wgslsmith_f_op_vec2_f32(max(var_1.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, -537f), var_1.c), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 1000f))))), var_1.c))), true);
    return ~52279u;
}

fn func_5(arg_0: vec4<i32>, arg_1: bool) -> u32 {
    var var_0 = all(select(select(select(vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 18u)], global2[_wgslsmith_index_u32(77067u, 18u)], false), vec3<bool>(arg_1, arg_1, false), true), !select(vec3<bool>(arg_1, global2[_wgslsmith_index_u32(85550u, 18u)], true), vec3<bool>(arg_1, true, global2[_wgslsmith_index_u32(global0.x, 18u)]), true), !vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 18u)], true, arg_1)), vec3<bool>(false, false, true & !arg_1), func_2(Struct_4(!arg_1, vec2<f32>(-486f, 550f))).wyz));
    let var_1 = Struct_3(u_input.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-584f - -953f), true)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1017f - 206f), _wgslsmith_f_op_f32(func_4(u_input.e.x, vec4<bool>(false, global2[_wgslsmith_index_u32(global0.x, 18u)], false, false), Struct_4(true, vec2<f32>(-133f, 333f)), vec4<bool>(arg_1, true, arg_1, true))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(-1600f)), 816f), vec2<f32>(-953f, -160f), !(!global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 20u)], 18u)]))), select(vec2<bool>(true, true), select(vec2<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 20u)], 18u)], arg_1), vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 18u)]), vec2<bool>(true, false)), true))), arg_1 || false);
    var var_2 = u_input.e.x;
    var var_3 = abs(~(~(~u_input.d.wy)) << (vec2<u32>(~global3[_wgslsmith_index_u32(var_1.a, 20u)], 7512u) % vec2<u32>(32u)));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_1.c.x, var_1.b) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.c.x, var_1.b, -674f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1814f, var_1.c.x, var_1.b), vec3<f32>(var_1.b, 561f, 795f), vec3<bool>(true, var_1.d, true))), vec3<f32>(-424f, var_1.b, var_1.b), select(vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 18u)], arg_1), vec3<bool>(false, var_1.d, false), var_1.d))), !(u_input.e.x < u_input.e.x))) - vec3<f32>(_wgslsmith_f_op_f32(-724f * -153f), _wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -567f), arg_1)), var_1.c.x)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.c.x, 929f))), var_1.b, 421f))));
    return 2484u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-_wgslsmith_mult_i32(2147483647i, ~_wgslsmith_mult_i32(3425i, u_input.e.x)));
    let var_1 = !(!vec4<bool>(global2[_wgslsmith_index_u32(~abs(u_input.b), 18u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(103174u | global0.x, 20u)], 18u)] & all(vec3<bool>(false, false, global2[_wgslsmith_index_u32(global0.x, 18u)])), any(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(u_input.c.x, 18u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 20u)], 18u)])), true));
    let var_2 = func_5((vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, var_0, u_input.e.x, var_0), vec4<i32>(u_input.a.x, 2147483647i, u_input.e.x, u_input.a.x))) >> (vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(global3[_wgslsmith_index_u32(global0.x, 20u)]), max(0u, 0u)), 1u, ~func_1(1482f), 1u) % vec4<u32>(32u)), !any(select(vec3<bool>(true, true, true), vec3<bool>(var_1.x, true, true), u_input.d.x >= u_input.b)));
    var var_3 = firstLeadingBit(abs(~vec3<u32>(1u, ~0u, select(global0.x, global3[_wgslsmith_index_u32(4294967295u, 20u)], var_1.x))));
    global0 = var_3.xx;
    var var_4 = Struct_4(all(select(!(!var_1), vec4<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 18u)], global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(15324u, 18u)], false)), var_1.x & var_1.x, false, func_2(Struct_4(true, vec2<f32>(209f, 462f))).x), var_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -314f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2733f, -116f)))))));
    var var_5 = Struct_4(all(!func_2(Struct_4(var_4.a, vec2<f32>(879f, -1835f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_4.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.b.x, 135f))))));
    var var_6 = Struct_5(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_5.b.x, -523f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_4.b.x)) + 394f)))), Struct_1(-u_input.e.xx));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.a.x);
}

