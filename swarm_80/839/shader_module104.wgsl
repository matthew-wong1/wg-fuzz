struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false));

var<private> global2: Struct_3 = Struct_3(Struct_2(vec4<bool>(true, false, true, false)), true, Struct_1(vec2<bool>(false, true), false, vec4<i32>(2388i, -1i, -1i, -15711i)), Struct_1(vec2<bool>(true, false), false, vec4<i32>(-48993i, 2147483647i, i32(-2147483648), 52549i)), false);

var<private> global3: Struct_3 = Struct_3(Struct_2(vec4<bool>(false, true, true, false)), true, Struct_1(vec2<bool>(false, true), true, vec4<i32>(-40539i, -1i, 80257i, 1i)), Struct_1(vec2<bool>(true, false), true, vec4<i32>(2147483647i, 2147483647i, -1i, 5720i)), false);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    var var_0 = u_input.b;
    var_0 = -4543i;
    global1 = array<vec4<bool>, 3>();
    var var_1 = 21588i;
    let var_2 = Struct_3(global2.a, !global2.e, Struct_1(global3.a.a.yw, true, _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(16903i, global3.d.c.x), global3.d.c.x, 34684i, -1i), vec4<i32>(_wgslsmith_mult_i32(32658i, global3.c.c.x), global2.d.c.x, u_input.b & global3.c.c.x, u_input.b ^ 31709i), -global2.d.c)), global3.d, !(global3.c.a.x || (true && global3.b)));
    return false;
}

fn func_2(arg_0: i32, arg_1: Struct_5) -> Struct_2 {
    global1 = array<vec4<bool>, 3>();
    let var_0 = !select(global3.a.a.wyx, global2.a.a.wyw, vec3<bool>(false, false, true));
    var var_1 = _wgslsmith_div_vec2_u32(~(~(~(vec2<u32>(arg_1.a, 6416u) & vec2<u32>(u_input.a, u_input.a)))), vec2<u32>(~1u << (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a, 39206u, 26481u, 17905u), vec4<u32>(61972u, u_input.a, 40385u, arg_1.a)), vec4<u32>(0u, 8307u, u_input.a, arg_1.a)) % 32u), ~(arg_1.a >> (~arg_1.a % 32u))));
    let var_2 = global3.d;
    global3 = Struct_3(Struct_2(select(select(global2.a.a, global1[_wgslsmith_index_u32(4294967295u, 3u)], all(global3.a.a)), select(global3.a.a, global1[_wgslsmith_index_u32(abs(0u), 3u)], u_input.a >= u_input.a), vec4<bool>(false, global2.a.a.x || false, func_3(), var_2.b))), !(false != (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 22781u, 27435u, var_1.x), vec4<u32>(4294967295u, 1u, 0u, arg_1.a)) >= u_input.a)), Struct_1(var_2.a, !(!var_2.b || true), global3.d.c), Struct_1(var_2.a, false, ~vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -14875i, global2.c.c.x, 1i), global3.d.c), ~global2.c.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.d.c.x, 1i, 1i), var_2.c.xzy))), var_0.x);
    return global3.a;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>) -> vec2<bool> {
    var var_0 = func_2(global2.d.c.x, Struct_5(u_input.a, vec2<f32>(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 * -1167f)))))).a;
    var var_1 = ~(~max(vec2<u32>(42401u, u_input.a) >> (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), vec2<u32>(19495u, _wgslsmith_mod_u32(21183u, 9215u))));
    let var_2 = Struct_3(global2.a, true | !any(arg_1.a.yzx), Struct_1(vec2<bool>(any(global1[_wgslsmith_index_u32(4294967295u, 3u)]), global2.b), _wgslsmith_f_op_f32(-arg_2.x) != _wgslsmith_f_op_f32(f32(-1f) * -609f), abs(vec4<i32>(-global2.c.c.x, 0i, global3.d.c.x, i32(-1i) * -2147483647i))), Struct_1(!(!(!vec2<bool>(global3.d.a.x, var_0.x))), all(select(select(global3.d.a, vec2<bool>(global3.a.a.x, true), global2.b), vec2<bool>(global3.a.a.x, false), var_0.x)), max(~select(vec4<i32>(global3.d.c.x, 17591i, global2.d.c.x, u_input.b), vec4<i32>(global3.c.c.x, 1i, global2.c.c.x, -17658i), vec4<bool>(false, false, true, arg_1.a.x)), firstLeadingBit(vec4<i32>(0i, 9514i, -2147483647i, 32377i)))), false);
    let var_3 = select(abs(_wgslsmith_mod_u32(u_input.a, 12429u)), _wgslsmith_mult_u32(abs(_wgslsmith_div_u32(10087u, abs(17393u))), var_1.x), select(_wgslsmith_mod_u32(0u, u_input.a) == abs(44652u), global3.b, var_2.a.a.x) | false);
    var var_4 = Struct_3(Struct_2(select(var_2.a.a, select(!vec4<bool>(global3.e, global2.d.b, true, false), vec4<bool>(var_0.x, false, var_0.x, global2.a.a.x), select(global3.a.a, global3.a.a, vec4<bool>(true, var_2.d.a.x, var_0.x, arg_1.a.x))), false)), !var_2.b, global2.c, global2.d, arg_1.a.x);
    return select(select(var_2.d.a, vec2<bool>(true & any(vec2<bool>(true, var_2.c.a.x)), true || all(vec3<bool>(global2.b, true, var_4.d.a.x))), select(func_3(), any(!arg_1.a), true || func_3())), global2.d.a, select(vec2<bool>(any(select(var_2.a.a.zw, var_0.xz, var_2.e)), false), select(vec2<bool>(var_2.a.a.x, arg_1.a.x), func_2(_wgslsmith_clamp_i32(var_4.c.c.x, 0i, 2147483647i), Struct_5(var_3, vec2<f32>(-678f, -2323f))).a.wy, vec2<bool>(arg_1.a.x, !var_4.d.b)), var_2.d.a));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> vec3<bool> {
    global0 = array<f32, 16>();
    let var_0 = !select(true, true, true);
    let var_1 = ~(-(~global3.d.c.x));
    var var_2 = Struct_1(func_4(global0[_wgslsmith_index_u32(u_input.a, 16u)], func_2(arg_2.d.c.x, Struct_5(max(4294967295u, 5214u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(76007u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)])))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(859f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 16u)])), 800f)), !(!select(all(arg_2.a.a), global3.e && global3.a.a.x, true)), arg_3.d.c | -global2.c.c);
    let var_3 = _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~u_input.a, 16u)]));
    return select(!select(select(vec3<bool>(false, true, true), vec3<bool>(var_2.a.x, var_0, var_0), arg_0.a.x), arg_0.a.wzx, global2.c.b), vec3<bool>(arg_3.e, var_0, global0[_wgslsmith_index_u32(0u, 16u)] == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 + global0[_wgslsmith_index_u32(u_input.a, 16u)]) - -1018f)), !arg_0.a.zyy);
}

fn func_5(arg_0: vec4<bool>, arg_1: u32) -> Struct_2 {
    let var_0 = !arg_0.zy;
    global3 = Struct_3(global3.a, !global3.a.a.x, global2.d, global2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(17089u, 16u)] * 2108f), global0[_wgslsmith_index_u32(20476u, 16u)])) + -666f) != global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(u_input.a), firstTrailingBit(u_input.a & 911u)), 16u)]);
    var var_1 = firstTrailingBit(~max(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1, 4294967295u), vec2<u32>(4294967295u, arg_1))), vec2<u32>(abs(arg_1), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(47957u, 11122u)))));
    global0 = array<f32, 16>();
    let var_2 = arg_0.x;
    return Struct_2(vec4<bool>(select(true, true, arg_0.x), true, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_5(vec4<bool>(true, !(global2.c.c.x >= global3.d.c.x), any(func_1(global3.a, 65788u, Struct_3(Struct_2(vec4<bool>(global2.c.b, global3.d.b, global2.d.a.x, global2.a.a.x)), global3.e, Struct_1(global3.d.a, false, vec4<i32>(-35693i, u_input.b, u_input.b, -7371i)), Struct_1(global2.c.a, true, global2.c.c), global3.a.a.x), Struct_3(Struct_2(vec4<bool>(global3.e, global3.e, global3.a.a.x, global3.d.b)), true, Struct_1(vec2<bool>(false, global2.e), true, global3.d.c), global3.c, true))), false), u_input.a), false, global2.d, global2.c, all(global2.a.a.zxx));
    let var_1 = Struct_5(45648u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(983f, -162f), vec2<f32>(-578f, global0[_wgslsmith_index_u32(u_input.a, 16u)]))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 16u)], -276f)))));
    global1 = array<vec4<bool>, 3>();
    var var_2 = global3.d.c.zw;
    var var_3 = vec3<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_1.a, 1u, 1u, 52337u) & select(vec4<u32>(var_1.a, u_input.a, 62034u, u_input.a), vec4<u32>(4294967295u, 41336u, 1u, u_input.a), var_0.b)), vec4<u32>(_wgslsmith_mult_u32(1u, u_input.a) & u_input.a, 1u, min(_wgslsmith_clamp_u32(u_input.a, u_input.a, 5827u), _wgslsmith_mult_u32(u_input.a, 0u)), ~(~u_input.a))), var_1.a, ~0u);
    let var_4 = -1188f;
    let x = u_input.a;
    s_output = StorageBuffer(19584i);
}

