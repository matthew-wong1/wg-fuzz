struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(274f)), _wgslsmith_f_op_f32(f32(-1f) * -1090f));
    let var_1 = firstTrailingBit(~(~vec2<u32>(0u, 4294967295u) & max(vec2<u32>(5357u, 21812u), vec2<u32>(global1.a, 1u)))) | vec2<u32>(_wgslsmith_mult_u32(0u, ~17074u), 1u);
    global0 = array<f32, 17>();
    var var_2 = Struct_1(~1u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global1.b.x, -872f)), _wgslsmith_f_op_f32(round(var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1139f, -395f) - _wgslsmith_f_op_f32(step(arg_0, 705f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d - global0[_wgslsmith_index_u32(var_1.x, 17u)]) - _wgslsmith_f_op_f32(-global1.b.x))), arg_0, _wgslsmith_f_op_f32(185f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(2451u, 17u)]) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.x, 17u)])))), vec4<bool>(any(select(global1.c, global1.c, false)), true, true, true | !global1.e), -1120f, true);
    var var_3 = Struct_1(~u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.b - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, -367f, 1290f, var_0.x) + var_2.b))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.d, global0[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(1072f)))))), select(select(select(vec4<bool>(true, false, var_2.e, false), var_2.c, !vec4<bool>(var_2.e, true, true, global1.c.x)), vec4<bool>(!global1.c.x, true, all(vec4<bool>(global1.c.x, true, true, false)), var_2.e), all(!var_2.c.xzw)), vec4<bool>(global1.c.x, false, _wgslsmith_dot_vec4_u32(vec4<u32>(70445u, var_2.a, var_1.x, 20998u), vec4<u32>(1u, 18828u, var_1.x, u_input.a)) == 32644u, global1.c.x), vec4<bool>(var_2.e, false, global1.e, true && !global1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u << (var_2.a % 32u), 17u)]))), false);
    return _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_1.x, 17u)]));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global1.a, vec4<f32>(_wgslsmith_f_op_f32(func_3(2402f)), -2614f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(54254u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]))))), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~1332u, 17u)]))), global1.c, global0[_wgslsmith_index_u32(0u, 17u)], all(select(select(vec4<bool>(true, true, true, global1.c.x), vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, global1.e, true), vec4<bool>(true, false, true, global1.c.x), global1.c)), vec4<bool>(global1.c.x, !global1.e, true, true), vec4<bool>(global1.e, true, global0[_wgslsmith_index_u32(78621u, 17u)] <= global1.b.x, true))));
    var_0 = Struct_1(u_input.a, vec4<f32>(-1208f, -1034f, _wgslsmith_f_op_f32(f32(-1f) * -1281f), var_0.d), global1.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1629f * _wgslsmith_f_op_f32(sign(317f)))), _wgslsmith_f_op_f32(-1148f * 763f))), (global1.a >> (global1.a % 32u)) == _wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, global1.a), 1u)));
    let var_1 = Struct_1(1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, global1.d, _wgslsmith_f_op_f32(1161f + 606f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a, 17u)]) * _wgslsmith_f_op_f32(step(var_0.d, global1.d))))), vec4<bool>(~var_0.a >= 1u, var_0.c.x, var_0.c.x, select(all(vec2<bool>(global1.e, global1.e)), true, any(!var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1743f))))))), true);
    var var_2 = var_1;
    global0 = array<f32, 17>();
    return var_1;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> Struct_1 {
    global0 = array<f32, 17>();
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-628f, 558f))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -741f) - _wgslsmith_f_op_f32(max(arg_3, 790f))), -1119f, !arg_1.c.x)) * -1616f);
    global0 = array<f32, 17>();
    let var_2 = ~vec2<u32>(arg_1.a, arg_1.a);
    return Struct_1(~arg_1.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(7646u, 17u)], 1000f, -1000f, -2026f))), select(select(!global1.c, global1.c, vec4<bool>(true, all(vec3<bool>(var_1, global1.c.x, true)), true, any(vec3<bool>(false, true, true)))), func_2().c, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.b.x, arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-201f)) - -220f))), !(arg_1.e || select(global1.d <= var_0.d, global1.c.x, false)));
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    global0 = array<f32, 17>();
    let var_0 = ~(abs(global1.a) << (~min(global1.a, 8045u) % 32u)) & u_input.a;
    var var_1 = u_input.a;
    var_1 = ~(~(~68937u));
    var var_2 = func_4(vec3<u32>(reverseBits(_wgslsmith_clamp_u32(51948u, 4294967295u, var_0)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, 30319u), vec3<u32>(var_0, var_0, global1.a)), 1u), global1.a) & (vec3<u32>(~43822u, ~5764u, _wgslsmith_div_u32(var_0, var_0)) << (_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0, 1u) >> (vec3<u32>(4294967295u, var_0, global1.a) % vec3<u32>(32u)), vec3<u32>(62070u, 30587u, 1u) >> (vec3<u32>(u_input.a, 49480u, 20877u) % vec3<u32>(32u))) % vec3<u32>(32u))), func_2(), 12305u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-520f - -1289f) * func_2().d), global0[_wgslsmith_index_u32(var_0, 17u)])));
    return max(global1.a, ~abs(16330u));
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: f32) -> StorageBuffer {
    global0 = array<f32, 17>();
    var var_0 = Struct_1(((global1.a >> (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u)) << (24824u % 32u)) & _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(29121u, u_input.a)) | vec2<u32>(0u, 4294967295u), vec2<u32>(func_2().a, _wgslsmith_dot_vec4_u32(vec4<u32>(41718u, u_input.a, global1.a, global1.a), vec4<u32>(arg_1, global1.a, 1u, 25170u)))), global1.b, !(!global1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().d))), false);
    var var_1 = func_2();
    var var_2 = !(arg_0.x > arg_0.x) && func_4(abs(~(vec3<u32>(35802u, var_1.a, 29904u) << (vec3<u32>(var_1.a, 0u, 8448u) % vec3<u32>(32u)))), func_2(), _wgslsmith_div_u32(func_1(var_0.b.yz), global1.a | global1.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -588f), _wgslsmith_f_op_f32(func_3(-1335f))))).e;
    var_1 = Struct_1(76693u, _wgslsmith_div_vec4_f32(vec4<f32>(-457f, func_2().b.x, arg_2, _wgslsmith_f_op_f32(750f - _wgslsmith_f_op_f32(global1.d - 1172f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-129f, -430f, -1000f, arg_2)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, global0[_wgslsmith_index_u32(var_1.a, 17u)], arg_2, -944f) * var_0.b)))), vec4<bool>(_wgslsmith_f_op_f32(select(-734f, -103f, true)) <= _wgslsmith_f_op_f32(1f - 1205f), var_0.e, !var_0.c.x, false), _wgslsmith_f_op_f32(-364f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(0u, 17u)])) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 17u)])) - -1364f)), var_0.e);
    return StorageBuffer(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(-146f + -688f))))), _wgslsmith_f_op_vec3_f32(select(func_4(~_wgslsmith_sub_vec3_u32(vec3<u32>(95176u, var_1.a, arg_1), vec3<u32>(4294967295u, 0u, u_input.a)), Struct_1(_wgslsmith_sub_u32(global1.a, 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(279f, 1937f, global0[_wgslsmith_index_u32(arg_1, 17u)], global0[_wgslsmith_index_u32(1u, 17u)])), vec4<bool>(true, var_0.c.x, true, var_1.c.x), 571f, true), max(var_0.a, 0u), _wgslsmith_f_op_f32(-global1.b.x)).b.xyz, _wgslsmith_f_op_vec3_f32(select(var_0.b.yzx, var_1.b.xwy, true)), true)), 2147483647i, ~(20679u & ~countOneBits(u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(vec4<i32>(1i, 0i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -35179i), vec2<i32>(1i, 25256i)), -35833i << (u_input.a % 32u)) | -(~59209i), 2147483647i), max(48462u | func_1(_wgslsmith_div_vec2_f32(global1.b.zy, vec2<f32>(global0[_wgslsmith_index_u32(42378u, 17u)], global0[_wgslsmith_index_u32(112825u, 17u)]))), ~u_input.a), _wgslsmith_f_op_f32(1098f + _wgslsmith_f_op_f32(-func_4(vec3<u32>(global1.a, 67959u, 39872u), func_4(vec3<u32>(u_input.a, 5399u, 0u), Struct_1(global1.a, global1.b, vec4<bool>(false, global1.c.x, false, true), -577f, global1.c.x), u_input.a, global0[_wgslsmith_index_u32(global1.a, 17u)]), u_input.a, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.a, 17u)])).b.x)));
}

