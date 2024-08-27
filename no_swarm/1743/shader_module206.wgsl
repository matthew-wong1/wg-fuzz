struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(1u, 0u, 4294967295u, 3656u, 6464u, 1u, 1u, 3733u, 18845u, 1u, 0u, 97036u, 28854u, 4294967295u, 0u, 33857u, 51320u, 1u, 38619u, 65365u, 1u, 1u, 4294967295u, 49284u, 39657u, 4294967295u, 6370u, 11955u);

var<private> global1: vec2<f32>;

var<private> global2: u32 = 83184u;

var<private> global3: vec3<u32>;

var<private> global4: array<vec4<f32>, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> bool {
    let var_0 = Struct_2(!select(vec3<bool>(true, all(vec4<bool>(true, true, false, false)), all(vec2<bool>(false, false))), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(all(vec4<bool>(false, true, true, false)), true, any(vec3<bool>(false, false, true)))), Struct_1(global1.x, true && (global1.x == _wgslsmith_f_op_f32(abs(global1.x))), abs(_wgslsmith_dot_vec2_u32(global3.zz & vec2<u32>(1u, 0u), ~vec2<u32>(u_input.c.x, 0u))), vec2<u32>(_wgslsmith_mult_u32(~u_input.c.x, u_input.c.x << (0u % 32u)), firstLeadingBit(16009u))), select(!vec4<bool>(true, true, 1u == global0[_wgslsmith_index_u32(u_input.c.x, 28u)], true), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true, true, true)), ~(~(~global3.x | 56230u)));
    var var_1 = var_0.b;
    global0 = array<u32, 28>();
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2259f, global1.x)));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global4[_wgslsmith_index_u32(reverseBits(global3.x), 21u)]))), vec4<f32>(var_1.a, _wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(sign(var_0.b.a)))), 591f, -846f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global4[_wgslsmith_index_u32(global3.x, 21u)], vec4<f32>(-171f, 125f, -1258f, global1.x))))), global4[_wgslsmith_index_u32(2425u, 21u)])));
    return var_1.b;
}

fn func_2() -> Struct_2 {
    return Struct_2(!vec3<bool>(-11965i >= u_input.d.x, true, !func_3()), Struct_1(-408f, all(vec3<bool>(true, global3.x > global3.x, true)), 34484u, abs(vec2<u32>(8086u, 7931u) >> (global3.xz % vec2<u32>(32u))) & vec2<u32>(4294967295u, 32219u)), !vec4<bool>(true, false, !all(vec2<bool>(false, true)), false), _wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(global3.x, 85894u, global3.x, 1u), vec4<u32>(global0[_wgslsmith_index_u32(global3.x, 28u)], 4294967295u, u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 28u)])), vec4<u32>(0u, global0[_wgslsmith_index_u32(global3.x, 28u)], 4294967295u, u_input.c.x))), u_input.c.x));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: f32, arg_3: f32) -> Struct_2 {
    global1 = vec2<f32>(1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f) - 312f)))));
    global4 = array<vec4<f32>, 21>();
    global2 = _wgslsmith_mod_u32(~1u, 25018u);
    let var_0 = vec4<i32>(10519i, 18370i, ~arg_0, arg_0);
    global0 = array<u32, 28>();
    return func_2();
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0.b;
    let var_1 = func_2();
    global3 = vec3<u32>(~(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.e, u_input.e), var_1.b.d.x)), 16437u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u >> (_wgslsmith_sub_u32(arg_0.b.d.x, u_input.c.x) % 32u), global3.x), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.d, var_1.b.c), vec2<u32>(1u, ~u_input.b.x))));
    global4 = array<vec4<f32>, 21>();
    global2 = _wgslsmith_add_u32(var_1.b.d.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(3059u ^ var_0.c, u_input.e.x << (arg_0.d % 32u)) ^ global0[_wgslsmith_index_u32(1084u, 28u)], arg_0.d));
    return arg_0;
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_2) -> vec3<bool> {
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    var var_0 = func_4(func_1(_wgslsmith_add_i32(u_input.d.x, ~(i32(-1i) * -1i)), arg_2, 1936f, global1.x)).b;
    let var_1 = ~(~_wgslsmith_mult_vec3_u32(~abs(u_input.e), ~u_input.e));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1148f), -1000f, 454f);
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_1(-1216f, !arg_0.b.b != arg_0.a.x, u_input.e.x, func_1(_wgslsmith_div_i32(-2147483647i, abs(-22527i)), arg_0, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(512f - -1460f))), 224f).b.d);
    var var_1 = func_4(func_2()).b.a;
    var_0 = func_4(func_2()).b;
    let var_2 = vec4<bool>(true, arg_2, true, func_5(!(!(!vec3<bool>(false, true, arg_0.b.b))), var_0.b, Struct_2(!vec3<bool>(arg_2, false, false), Struct_1(_wgslsmith_div_f32(-1636f, 240f), !arg_2, 0u, global3.yx), !(!vec4<bool>(false, var_0.b, arg_0.a.x, false)), global0[_wgslsmith_index_u32(1u, 28u)])).x);
    let var_3 = func_1(u_input.d.x, arg_0, 1367f, arg_0.b.a).d;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-546f + _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_div_f32(global1.x, 1624f)))) + -320f), arg_0.b.a < _wgslsmith_f_op_f32(f32(-1f) * -817f), reverseBits(34979u), ~firstTrailingBit(select(~vec2<u32>(35482u, 92860u), vec2<u32>(0u, var_3) >> (vec2<u32>(u_input.b.x, 13396u) % vec2<u32>(32u)), !var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 1u;
    global1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1000f, -1032f), _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(825f, -683f) - vec2<f32>(536f, global1.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-1043f)), global1.x)))));
    var var_0 = func_6(Struct_2(func_5(vec3<bool>(true, true, any(vec3<bool>(false, true, false))), false, func_4(func_1(u_input.d.x, Struct_2(vec3<bool>(false, false, false), Struct_1(1000f, false, 1u, vec2<u32>(76789u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 28u)], 28u)])), vec4<bool>(false, false, false, true), 5644u), global1.x, global1.x))), func_2().b, !vec4<bool>(func_2().c.x, true, true, true), global0[_wgslsmith_index_u32(~(u_input.e.x | _wgslsmith_add_u32(global3.x, 4378u)), 28u)]), ~select(u_input.a, -2147483647i, true) << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 57795u), global3.yz) | (4294967295u & global0[_wgslsmith_index_u32(1u, 28u)]), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], u_input.e.x), ~u_input.e.x, global0[_wgslsmith_index_u32(51317u, 28u)] | global3.x), 28u)]) % 32u), any(func_1(~1i, func_1(~u_input.d.x, func_2(), 1000f, -961f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), -802f, true)), _wgslsmith_f_op_f32(abs(global1.x))).c));
    var var_1 = var_0.b;
    var var_2 = vec2<bool>(all(func_2().a.zy), var_0.b);
    var_1 = var_0.b;
    let var_3 = func_6(Struct_2(!(!func_1(0i, Struct_2(vec3<bool>(var_0.b, true, var_2.x), Struct_1(var_0.a, var_0.b, global3.x, var_0.d), vec4<bool>(false, var_0.b, var_2.x, var_2.x), global3.x), -327f, -1016f).a), Struct_1(global1.x, func_4(func_1(u_input.d.x, Struct_2(vec3<bool>(var_2.x, var_0.b, false), Struct_1(1000f, var_2.x, 4294967295u, global3.yx), vec4<bool>(var_0.b, true, var_0.b, true), global0[_wgslsmith_index_u32(global3.x, 28u)]), 1233f, global1.x)).c.x, firstTrailingBit(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 28u)], 28u)]), select(func_4(Struct_2(vec3<bool>(var_2.x, var_2.x, true), Struct_1(-954f, true, global3.x, u_input.b), vec4<bool>(false, var_2.x, true, true), 1u)).b.d, ~vec2<u32>(67743u, global3.x), select(vec2<bool>(true, false), vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, var_2.x)))), select(vec4<bool>(true, true, true, func_2().b.b), select(select(vec4<bool>(var_0.b, true, true, false), vec4<bool>(var_0.b, true, true, false), vec4<bool>(var_2.x, true, false, false)), func_2().c, func_4(Struct_2(vec3<bool>(true, false, var_2.x), Struct_1(850f, var_2.x, var_0.d.x, u_input.c), vec4<bool>(var_0.b, true, true, false), 1u)).c.x), func_2().a.x), _wgslsmith_dot_vec2_u32(u_input.c, ~vec2<u32>(16872u, global0[_wgslsmith_index_u32(global3.x, 28u)]))), _wgslsmith_dot_vec4_i32(reverseBits(u_input.d), ~_wgslsmith_div_vec4_i32(u_input.d, u_input.d)), !all(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a * global1.x)), (u_input.d.wwz ^ (u_input.d.yyy & countOneBits(vec3<i32>(u_input.a, 33344i, u_input.d.x)))) >> (vec3<u32>(firstLeadingBit(9898u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.d.x, 0u), vec2<u32>(30001u, global0[_wgslsmith_index_u32(var_3.d.x, 28u)])), 25626u) % vec3<u32>(32u)), ~var_0.d.x, -777f);
}

