struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(32105u, false, 1038f, true, vec2<bool>(false, true));

var<private> global1: array<vec2<bool>, 16>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.c, -711f), _wgslsmith_f_op_f32(trunc(-123f)))))), arg_0.c);
    var var_1 = Struct_3(arg_2.a, -_wgslsmith_dot_vec4_i32(~arg_1, select(vec4<i32>(u_input.d.x, u_input.d.x, -1i, arg_1.x), vec4<i32>(-1i, 10246i, -1i, -12588i), vec4<bool>(arg_0.e.x, arg_0.e.x, true, false))) ^ -2147483647i, 134f);
    var var_2 = abs(arg_1) << (abs(~_wgslsmith_mod_vec4_u32(u_input.b, max(vec4<u32>(90943u, var_1.a, 6868u, 63752u), u_input.b))) % vec4<u32>(32u));
    let var_3 = arg_0;
    let var_4 = arg_0;
    return select(select(!(!select(vec3<bool>(true, false, arg_2.b), vec3<bool>(true, false, true), arg_0.d)), !(!select(vec3<bool>(arg_2.b, true, false), vec3<bool>(false, var_4.d, true), vec3<bool>(false, var_4.e.x, var_3.d))), true), vec3<bool>(arg_2.d, arg_0.e.x, !(!arg_2.d) || arg_2.d), select(vec3<bool>(true, true, true), vec3<bool>(true, !(!arg_2.e.x), arg_2.b), select(vec3<bool>(false, global0.b && false, var_2.x != -40208i), !select(vec3<bool>(true, true, true), vec3<bool>(arg_2.b, var_3.b, true), vec3<bool>(true, var_3.e.x, var_3.b)), select(select(vec3<bool>(arg_2.b, true, var_3.e.x), vec3<bool>(arg_2.b, false, arg_0.e.x), false), vec3<bool>(true, false, global0.b), vec3<bool>(var_3.b, var_3.d, false)))));
}

fn func_2(arg_0: i32) -> Struct_3 {
    global0 = Struct_1(~1u, true || all(func_3(Struct_1(0u, global0.d, 125f, true, vec2<bool>(global0.e.x, true)), ~vec4<i32>(u_input.d.x, -1i, 2147483647i, u_input.d.x), Struct_1(0u, global0.e.x, 408f, true, global0.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.c))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c - -541f), 619f))), _wgslsmith_sub_i32(u_input.d.x, arg_0) <= -19004i, !vec2<bool>(all(select(vec2<bool>(true, false), global0.e, global0.e)), func_3(Struct_1(4294967295u, global0.e.x, global0.c, global0.d, vec2<bool>(global0.e.x, false)), vec4<i32>(2147483647i, 3359i, -1i, -2147483647i), Struct_1(global0.a, global0.b, 773f, global0.b, global1[_wgslsmith_index_u32(1u, 16u)])).x));
    var var_0 = u_input.d;
    let var_1 = vec3<bool>(all(!vec4<bool>(all(vec3<bool>(global0.b, false, global0.e.x)), true, func_3(Struct_1(4294967295u, global0.b, global0.c, true, global1[_wgslsmith_index_u32(global0.a, 16u)]), vec4<i32>(u_input.d.x, u_input.d.x, var_0.x, u_input.d.x), Struct_1(3932u, global0.d, -961f, global0.e.x, global1[_wgslsmith_index_u32(17296u, 16u)])).x, true)), true, any(select(!select(vec4<bool>(global0.b, false, global0.b, false), vec4<bool>(global0.d, global0.d, true, false), vec4<bool>(global0.e.x, false, false, global0.d)), !select(vec4<bool>(global0.e.x, false, global0.e.x, global0.b), vec4<bool>(global0.d, true, global0.e.x, true), vec4<bool>(global0.e.x, global0.d, global0.d, false)), global0.d)));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(max(-36130i, max(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(3212i, 3958i, 0i, -12983i), vec4<i32>(-2147483647i, u_input.d.x, -10511i, 8987i)))), 19072i, -56197i, _wgslsmith_sub_i32(-1i, i32(-1i) * -arg_0)), vec4<i32>(var_0.x, -_wgslsmith_dot_vec2_i32(u_input.d.xz, _wgslsmith_sub_vec2_i32(var_0.yy, u_input.d.yz)), _wgslsmith_mod_i32(16109i, ~select(0i, u_input.d.x, false)), _wgslsmith_mult_i32(arg_0, var_0.x)));
    let var_3 = _wgslsmith_dot_vec3_u32(u_input.b.zyy, abs(u_input.b.wzy));
    return Struct_3(_wgslsmith_mod_u32(0u ^ (u_input.c | 1u), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.wy, u_input.b.zy), _wgslsmith_mod_vec2_u32(u_input.b.zw, u_input.b.xy))), _wgslsmith_dot_vec2_i32(var_0.xz, _wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, var_0.x), ~(-u_input.d.xy))), _wgslsmith_f_op_f32(step(global0.c, _wgslsmith_div_f32(-825f, _wgslsmith_f_op_f32(global0.c - global0.c)))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>) -> Struct_2 {
    global0 = Struct_1(countOneBits(_wgslsmith_div_u32(~select(15361u, global0.a, global0.b), global0.a)), false, arg_0.c, global0.b, !global1[_wgslsmith_index_u32(global0.a, 16u)]);
    let var_0 = arg_0;
    let var_1 = func_2(u_input.d.x);
    var var_2 = Struct_1(~global0.a, true, var_1.c, all(global1[_wgslsmith_index_u32(0u | var_1.a, 16u)]), select(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(countOneBits(arg_0.a), 16u)], func_3(Struct_1(~arg_1.x, true, _wgslsmith_f_op_f32(select(var_0.c, var_1.c, true)), global0.b, !global0.e), vec4<i32>(var_0.b, u_input.d.x, var_1.b, 0i) & (vec4<i32>(-2147483647i, -10554i, 1i, 24984i) | vec4<i32>(3836i, 46432i, var_0.b, 2147483647i)), Struct_1(var_1.a ^ var_0.a, !global0.b, -1165f, global0.e.x, global0.e)).zx));
    global1 = array<vec2<bool>, 16>();
    return Struct_2(Struct_1(~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.a, var_2.a, arg_0.a), vec3<u32>(0u, 50168u, var_1.a) ^ u_input.b.ywy), (~1u & _wgslsmith_sub_u32(arg_1.x, arg_1.x)) >= 0u, 718f, var_2.d, !(!vec2<bool>(false, var_2.b))), vec2<i32>(_wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.b, 1i, var_1.b), vec4<i32>(var_1.b, var_0.b, 31618i, -21592i)), -(var_1.b | 2147483647i)), 2147483647i), 4294967295u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> f32 {
    let var_0 = func_2(arg_0.b.x).c;
    let var_1 = vec2<i32>(-2147483647i, 2147483647i);
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0)), arg_1.c), _wgslsmith_f_op_f32(func_1(Struct_3(4294967295u, -36322i, arg_1.c), u_input.b).a.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.c * var_0) * var_0))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, -1168f, 1000f, -781f) * vec4<f32>(arg_0.a.c, 1003f, arg_1.c, var_0))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a.c, -1199f, 877f, 486f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-300f, 747f, -680f, global0.c))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(arg_1.c * 401f), _wgslsmith_f_op_f32(f32(-1f) * -267f), 402f, func_2(var_1.x).c)))))));
    var var_3 = Struct_1(~_wgslsmith_dot_vec3_u32(u_input.b.xxx, ~vec3<u32>(arg_0.c, 45016u, arg_0.c)), false, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_3(u_input.a, 35701i, var_0), u_input.b).a.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(237f)))) + var_0))), arg_0.a.d, vec2<bool>(true, !all(vec2<bool>(arg_0.a.d, arg_0.a.b)) != (select(true, false, true) && global0.e.x)));
    let var_4 = _wgslsmith_mod_u32(func_2(-2147483647i).a, global0.a);
    return 1295f;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    global1 = array<vec2<bool>, 16>();
    var var_0 = select(!func_3(Struct_1(_wgslsmith_add_u32(0u, 43109u), global0.b, 747f, !global0.d, !global1[_wgslsmith_index_u32(15067u, 16u)]), -reverseBits(vec4<i32>(80547i, arg_0, arg_2.b, arg_0)), Struct_1(arg_2.a, false, _wgslsmith_f_op_f32(max(317f, 390f)), false, func_1(Struct_3(arg_2.a, -1i, 504f), u_input.b).a.e)).xz, vec2<bool>(global0.e.x, all(func_1(Struct_3(arg_2.a, -25279i, arg_2.c), vec4<u32>(1u, 0u, global0.a, arg_2.a)).a.e) & select(false, func_3(Struct_1(global0.a, true, 1319f, true, vec2<bool>(false, true)), vec4<i32>(arg_2.b, u_input.d.x, 0i, 0i), Struct_1(arg_2.a, false, 676f, global0.e.x, global1[_wgslsmith_index_u32(arg_2.a, 16u)])).x, 0u > global0.a)), func_1(arg_2, ~vec4<u32>(~arg_2.a, u_input.b.x, global0.a, select(u_input.b.x, 4294967295u, true))).a.e);
    let var_1 = ~_wgslsmith_mod_u32(~(~(~arg_2.a)), ~(35541u & (global0.a & global0.a)));
    var var_2 = Struct_2(Struct_1(abs(select(66578u, ~0u, arg_0 == 1201i)), var_0.x, _wgslsmith_f_op_f32(exp2(arg_2.c)), false, func_1(arg_2, min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, var_1, 65273u), vec4<u32>(global0.a, arg_2.a, u_input.a, 1u)), vec4<u32>(0u, 81389u, var_1, u_input.a))).a.e), ~vec2<i32>(arg_0 << (func_1(arg_2, u_input.b).a.a % 32u), -2414i), ~13335u);
    var var_3 = _wgslsmith_f_op_f32(func_2(arg_2.b).c * 1455f);
    return Struct_2(func_1(func_2(-1i), vec4<u32>(~(arg_2.a | var_1), _wgslsmith_mod_u32(u_input.a, arg_2.a), u_input.b.x, ~u_input.a)).a, vec2<i32>(arg_2.b, -(~arg_2.b)), ~global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global0.a, u_input.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)) - _wgslsmith_f_op_f32(-1f)) - global0.c));
    let var_1 = Struct_3(~global0.a, 2292i, _wgslsmith_f_op_f32(2088f - _wgslsmith_f_op_f32(-global0.c)));
    var var_2 = Struct_3(_wgslsmith_div_u32(~(global0.a >> (_wgslsmith_mult_u32(38713u, 0u) % 32u)), u_input.a), -2147483647i, -446f);
    var_2 = var_1;
    let var_3 = func_5(-20790i, _wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(Struct_3(global0.a, -15784i, var_1.c), vec4<u32>(var_1.a, u_input.e, 1u, global0.a)), Struct_3(var_2.a, var_2.b, var_2.c), !global0.b, 2147483647i)) - _wgslsmith_f_op_f32(f32(-1f) * -147f))), func_2(reverseBits(-1i)));
    global1 = array<vec2<bool>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(var_1.b), _wgslsmith_mod_i32(u_input.d.x, -var_3.b.x), min(var_2.b, reverseBits(-10913i)), -(-var_1.b & _wgslsmith_add_i32(var_2.b, -42238i))), _wgslsmith_f_op_f32(-421f * func_1(Struct_3(global0.a, _wgslsmith_add_i32(var_2.b, 1065i), _wgslsmith_f_op_f32(-2480f * 390f)), ~(~vec4<u32>(u_input.b.x, var_0.a, var_3.a.a, u_input.e))).a.c));
}

