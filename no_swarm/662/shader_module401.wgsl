struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: array<Struct_3, 4>;

var<private> global2: Struct_4 = Struct_4(Struct_3(vec4<f32>(-2154f, 1000f, -1493f, -472f)));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> i32 {
    global2 = Struct_4(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25984u, 18u)], 18u)], 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], 0u), vec3<u32>(28084u, u_input.a, u_input.a)), 1u), 18u)], 18u)], 18u)], 4u)]);
    var var_0 = Struct_4(Struct_3(global2.a.a));
    var var_1 = true;
    let var_2 = Struct_4(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(-global2.a.a.x), var_0.a.a.x, 1076f)));
    global0 = array<u32, 18>();
    return u_input.c;
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4) -> bool {
    global2 = arg_2;
    let var_0 = Struct_2(Struct_1(vec2<u32>(_wgslsmith_div_u32(13694u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 18u)], u_input.a, global0[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<u32>(global0[_wgslsmith_index_u32(0u, 18u)], 4294967295u, 8473u, global0[_wgslsmith_index_u32(u_input.a, 18u)])), 18u)]), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, u_input.a, 13425u), 18u)], 56656u)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.b.x != u_input.c)), vec2<bool>(true, true)), -2147483647i, -1i, Struct_1(select((vec2<u32>(66563u, u_input.a) ^ vec2<u32>(0u, 99987u)) << (vec2<u32>(69783u, u_input.a) % vec2<u32>(32u)), reverseBits(~vec2<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 18u)])), false), vec3<bool>(true, true, true), vec2<bool>(_wgslsmith_f_op_f32(-arg_2.a.a.x) < _wgslsmith_f_op_f32(sign(arg_1)), select(true, true, true))), Struct_1(~(_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 18u)], 18u)], 18u)])) ^ min(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(5202u, 18u)]), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 18u)], 40168u))), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    global2 = Struct_4(Struct_3(_wgslsmith_div_vec4_f32(arg_2.a.a, global2.a.a)));
    var var_1 = Struct_2(var_0.e, 5231i, _wgslsmith_mult_i32(-2147483647i, var_0.c), var_0.e, var_0.d);
    let var_2 = Struct_1(~vec2<u32>(firstLeadingBit(abs(0u)), 29663u), !select(!select(var_0.d.b, vec3<bool>(var_0.e.b.x, true, var_0.a.c.x), true), !vec3<bool>(var_0.d.b.x, false, var_1.d.c.x), any(vec4<bool>(var_0.e.c.x, true, false, var_1.d.b.x))), !select(!select(vec2<bool>(var_0.d.b.x, true), var_1.a.b.yx, vec2<bool>(var_0.a.c.x, var_1.e.c.x)), var_0.a.c, true));
    return !all(vec3<bool>(true, any(select(vec4<bool>(false, false, true, var_1.a.c.x), vec4<bool>(var_0.e.c.x, true, var_0.d.b.x, var_2.b.x), vec4<bool>(false, true, var_0.e.c.x, var_2.b.x))), all(var_0.e.b)));
}

fn func_1(arg_0: vec3<f32>) -> vec3<f32> {
    var var_0 = Struct_1(select(~vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], _wgslsmith_mult_u32(4557u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)])), _wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(37264u, 0u), vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4831u, 0u)), select(~vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 0u), true)), 1f < _wgslsmith_f_op_f32(-global2.a.a.x)), vec3<bool>(true | (_wgslsmith_f_op_f32(-612f * global2.a.a.x) >= _wgslsmith_f_op_f32(abs(-991f))), all(vec3<bool>(true, all(vec2<bool>(false, true)), true)), 1i >= abs(func_2())), select(vec2<bool>(!(global2.a.a.x == arg_0.x), ~global0[_wgslsmith_index_u32(52179u, 18u)] > 36813u), vec2<bool>(true, func_3(Struct_4(global2.a), 532f, Struct_4(global1[_wgslsmith_index_u32(1u, 4u)]))), vec2<bool>(!(global0[_wgslsmith_index_u32(49098u, 18u)] < global0[_wgslsmith_index_u32(6717u, 18u)]), true)));
    let var_1 = Struct_2(Struct_1(vec2<u32>(var_0.a.x, 51353u), vec3<bool>(!var_0.c.x, any(!vec4<bool>(false, true, var_0.b.x, var_0.c.x)), all(var_0.c)), var_0.c), u_input.b.x, firstLeadingBit(min(-35158i, -u_input.b.x)), Struct_1(var_0.a, select(!var_0.b, select(vec3<bool>(true, var_0.b.x, var_0.c.x), !vec3<bool>(var_0.c.x, false, var_0.b.x), true), !(-2147483647i >= u_input.c)), vec2<bool>(!var_0.c.x | true, arg_0.x > _wgslsmith_f_op_f32(-arg_0.x))), Struct_1(var_0.a, !select(var_0.b, select(var_0.b, var_0.b, var_0.b), var_0.b), vec2<bool>(true, true)));
    let var_2 = u_input.b;
    global1 = array<Struct_3, 4>();
    let var_3 = !select(vec4<bool>(false, !var_1.e.c.x || true, true, true), vec4<bool>(var_0.c.x, true, false, any(select(vec4<bool>(false, var_0.b.x, var_0.c.x, var_0.b.x), vec4<bool>(var_1.d.b.x, true, true, var_0.b.x), vec4<bool>(var_0.b.x, true, var_0.c.x, var_0.b.x)))), !(firstTrailingBit(-1i) != u_input.c));
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.a.a.x, global2.a.a.x, arg_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-583f, _wgslsmith_f_op_f32(step(global2.a.a.x, -1772f)), _wgslsmith_f_op_f32(-global2.a.a.x)), _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1235f, global2.a.a.x, -891f), vec3<f32>(global2.a.a.x, global2.a.a.x, global2.a.a.x)))), true)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global2.a.a.wwx, vec3<f32>(global2.a.a.x, -1192f, global2.a.a.x))))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global2.a.a.x * global2.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.a.x - global2.a.a.x) * global2.a.a.x), _wgslsmith_f_op_f32(round(global2.a.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.a.x, global2.a.a.x, global2.a.a.x)) + vec3<f32>(global2.a.a.x, 648f, global2.a.a.x))), vec3<bool>(true, true, true))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.a.a.xxx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-470f - global2.a.a.x), _wgslsmith_f_op_f32(-global2.a.a.x)))) - vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.a.a.x), var_0.x)), var_0.x, _wgslsmith_f_op_f32(select(global2.a.a.x, var_0.x, !(u_input.a >= 1u)))));
    var var_1 = any(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, all(vec2<bool>(true, false))), any(vec2<bool>(true, true))));
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.zz), global2.a.a.wx, vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), !all(vec2<bool>(false, true)) || true)));
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_add_u32(u_input.a, u_input.a) ^ ((0u | u_input.a) >> (max(u_input.a, u_input.a) % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, global0[_wgslsmith_index_u32(0u, 18u)], 0u, u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(1308u, 18u)], 85u, u_input.a, 25854u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24310u, 18u)], 18u)], u_input.a, u_input.a, 4294967295u)), ~vec4<u32>(u_input.a, 27041u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)], 1u) << ((vec4<u32>(0u, 4294967295u, u_input.a, global0[_wgslsmith_index_u32(32109u, 18u)]) << (vec4<u32>(1u, 6603u, u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1000f, -1285f), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + var_3.x))), _wgslsmith_f_op_vec3_f32(max(global2.a.a.wwz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, global2.a.a.x)))))), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.b.x) | vec3<i32>(u_input.c, 2147483647i, -39328i), -vec3<i32>(u_input.c, 2147483647i, -44122i)) & vec3<i32>(u_input.b.x, -2147483647i, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec3_f32(-global2.a.a.xxz))).x, _wgslsmith_f_op_f32(f32(-1f) * -957f)))), _wgslsmith_f_op_vec3_f32(func_1(global2.a.a.yyw)).x);
}

