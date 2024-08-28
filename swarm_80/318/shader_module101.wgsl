struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_4(-15761i, vec2<u32>(1u, 1u), 1208f), Struct_2(-633f, -256f), vec4<u32>(972u, 2885u, 4294967295u, 37629u), -1i, vec2<u32>(0u, 63114u));

var<private> global1: vec4<u32> = vec4<u32>(26068u, 4294967295u, 1u, 1u);

var<private> global2: array<bool, 11> = array<bool, 11>(true, true, false, false, true, false, false, false, false, false, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> bool {
    let var_0 = vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, 4294967295u, 0u, arg_1.c.x), vec4<u32>(global0.a.b.x, 1u, 0u, arg_1.c.x)), _wgslsmith_add_vec4_u32(vec4<u32>(24335u, global1.x, 5471u, global1.x), arg_1.c)), ~global0.c.x), 11u)], arg_1.d, !(259f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(940f, 1031f)), 918f)), any(select(vec2<bool>(true, false), !(!vec2<bool>(global2[_wgslsmith_index_u32(496u, 11u)], false)), select(vec2<bool>(true, false), !vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 11u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(arg_1.c.x, 11u)])))));
    let var_1 = global0.b.b < -1120f;
    var var_2 = Struct_3(reverseBits(arg_0), !vec3<bool>(var_0.x, var_0.x, global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(arg_1.c.yzy, vec3<u32>(global0.e.x, arg_1.c.x, global1.x))), 11u)]), _wgslsmith_dot_vec2_i32(arg_0, arg_0));
    var var_3 = Struct_5(Struct_4(countOneBits(-u_input.a ^ -arg_1.a), global1.yy, -1722f), Struct_2(-1109f, global0.b.b), vec4<u32>(_wgslsmith_mod_u32(4294967295u, select(_wgslsmith_clamp_u32(0u, 1u, global1.x), abs(global1.x), true)), ~(~global1.x & reverseBits(83565u)), _wgslsmith_add_u32(arg_1.c.x, global1.x), global0.a.b.x), -31986i, global1.zz);
    global1 = _wgslsmith_sub_vec4_u32(global0.c, ~_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(0u, arg_1.c.x, global0.c.x, global1.x)), var_3.c));
    return !var_2.b.x;
}

fn func_2() -> Struct_4 {
    var var_0 = !vec2<bool>(!(!func_3(vec2<i32>(u_input.a, global0.a.a), Struct_1(global0.d, 1000f, global0.c, false))), all(select(!vec2<bool>(true, global2[_wgslsmith_index_u32(global0.e.x, 11u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 11u)], global2[_wgslsmith_index_u32(1u, 11u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(global1.x, 11u)]), vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 11u)], global2[_wgslsmith_index_u32(global0.e.x, 11u)])), vec2<bool>(false, global2[_wgslsmith_index_u32(global1.x, 11u)]))));
    let var_1 = global0.a.c;
    let var_2 = select(_wgslsmith_div_vec4_u32(firstLeadingBit(abs(global0.c) << (vec4<u32>(global0.a.b.x, 6459u, global1.x, 102432u) % vec4<u32>(32u))), ~global0.c), min(~(~vec4<u32>(global1.x, 4294967295u, global0.a.b.x, global1.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global0.e.x), global0.c.wz), abs(global1.x), 1u, ~global1.x)) >> (global0.c % vec4<u32>(32u)), global2[_wgslsmith_index_u32(1u, 11u)] | true);
    let var_3 = global0.b;
    var var_4 = _wgslsmith_div_f32(-762f, _wgslsmith_f_op_f32(abs(var_3.a)));
    return global0.a;
}

fn func_1(arg_0: u32, arg_1: bool) -> f32 {
    let var_0 = !vec2<bool>(!global2[_wgslsmith_index_u32(global0.e.x >> (4294967295u % 32u), 11u)], !(!(global1.x == arg_0)));
    global0 = Struct_5(global0.a, global0.b, _wgslsmith_add_vec4_u32(~vec4<u32>(~arg_0, global1.x, ~30359u, ~global0.a.b.x), countOneBits(global0.c)), reverseBits(u_input.a), vec2<u32>(1u, ~global0.e.x) | global1.xy);
    var var_1 = func_2();
    var var_2 = Struct_3(vec2<i32>(var_1.a, 889i), !vec3<bool>(all(!var_0), select(false, var_1.a >= -6379i, false), all(vec4<bool>(var_0.x, arg_1, arg_1, true)) == (arg_1 || global2[_wgslsmith_index_u32(3519u, 11u)])), 36065i);
    var_1 = func_2();
    return _wgslsmith_f_op_f32(1437f - _wgslsmith_f_op_f32(trunc(var_1.c)));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = select(-(~(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 21090i, 1i), vec3<i32>(-2147483647i, 1i, -2147483647i)) ^ vec3<i32>(u_input.a, 11166i, global0.a.a))), vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(93840i, u_input.a) & vec2<i32>(0i, global0.d), -(~vec2<i32>(global0.a.a, u_input.a))), -countOneBits(global0.d), min(-1i, -(~u_input.a))), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0.c, ~global0.c), 11u)], !(!global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.c.x, global0.a.b.x), 11u)]), global2[_wgslsmith_index_u32(~arg_0, 11u)]));
    global0 = Struct_5(func_2(), Struct_2(920f, -855f), global0.c, -_wgslsmith_mult_i32(~var_0.x, _wgslsmith_dot_vec3_i32(var_0, vec3<i32>(47077i, u_input.a, u_input.a))), vec2<u32>(firstLeadingBit(_wgslsmith_clamp_u32(global1.x, 4294967295u, arg_0) << (global1.x % 32u)), global1.x));
    global2 = array<bool, 11>();
    global0 = Struct_5(Struct_4(global0.d, ~global0.e, _wgslsmith_f_op_f32(max(-880f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -112f))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1000f, global0.b.a)))), 1090f))), select(~select(abs(global0.c), firstTrailingBit(global0.c), false), global0.c, true), _wgslsmith_sub_i32(~0i, -47671i), vec2<u32>(~65430u, 29785u));
    var var_1 = _wgslsmith_f_op_f32(trunc(arg_1.x));
    return Struct_2(global0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_1.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mult_vec4_u32(min(_wgslsmith_div_vec4_u32(global0.c, global0.c), global0.c), ~_wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(3982u), 0u ^ global1.x, abs(global1.x), global1.x), vec4<u32>(~11026u, ~global0.c.x, 9243u, global0.a.b.x)));
    var var_0 = func_4(~57046u, _wgslsmith_div_vec4_f32(vec4<f32>(-761f, _wgslsmith_f_op_f32(-global0.b.a), -612f, _wgslsmith_f_op_f32(f32(-1f) * -537f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(global1.x, global2[_wgslsmith_index_u32(global0.c.x, 11u)])), 1134f, _wgslsmith_f_op_f32(1689f - -1001f), 362f))));
    global2 = array<bool, 11>();
    var var_1 = select(vec4<u32>(~(~33321u), global0.e.x, global1.x, ~(~max(20829u, global1.x))), ~global0.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.b.a * global0.b.b))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.b) * func_4(global1.x, vec4<f32>(global0.a.c, var_0.a, 932f, 272f)).a), global0.b.a)));
    let var_2 = Struct_3(-(~(-select(vec2<i32>(u_input.a, -20827i), vec2<i32>(0i, 2147483647i), false))), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.yx, ~vec2<u32>(var_1.x, 88103u)) << (func_2().b.x % 32u), 11u)], func_3(max(abs(vec2<i32>(global0.d, u_input.a)), min(vec2<i32>(-1i, global0.a.a), vec2<i32>(2147483647i, global0.a.a))), Struct_1(global0.d, global0.b.b, global0.c, false)), false), -abs(reverseBits(_wgslsmith_add_i32(global0.d, -26213i))));
    var_1 = global0.c >> ((_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(74541u, global0.c.x)), global0.e.x, reverseBits(16355u), global0.a.b.x), vec4<u32>(_wgslsmith_sub_u32(51767u, 8173u), global0.c.x >> (global1.x % 32u), global0.a.b.x, ~global0.a.b.x)) >> (global0.c % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_3 = Struct_3(var_2.a, vec3<bool>(true, false, var_2.b.x), -_wgslsmith_add_i32(~u_input.a, ~_wgslsmith_clamp_i32(var_2.a.x, 4319i, -37175i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global1.x, firstTrailingBit(_wgslsmith_clamp_u32(~4294967295u, ~global1.x, global1.x)), reverseBits(var_1.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-131f, 503f, 1418f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-974f, 714f, 1139f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1016f, -320f, 922f) - vec3<f32>(var_0.b, 654f, global0.b.a))), !var_2.b)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global0.a.c, _wgslsmith_f_op_f32(-global0.b.b))))));
}

