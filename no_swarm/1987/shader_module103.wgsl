struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
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

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, false, false, true)));

var<private> global1: vec3<u32> = vec3<u32>(24944u, 17510u, 0u);

var<private> global2: Struct_3 = Struct_3(-1i, vec4<f32>(1386f, 1000f, -1000f, 1106f));

var<private> global3: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(vec4<bool>(false, false, false, true))), Struct_2(Struct_1(vec4<bool>(true, false, true, true))), Struct_2(Struct_1(vec4<bool>(false, false, true, true))), Struct_2(Struct_1(vec4<bool>(false, false, true, true))), Struct_2(Struct_1(vec4<bool>(false, false, false, true))), Struct_2(Struct_1(vec4<bool>(false, false, false, true))), Struct_2(Struct_1(vec4<bool>(true, false, true, false))), Struct_2(Struct_1(vec4<bool>(true, false, false, false))), Struct_2(Struct_1(vec4<bool>(true, false, true, false))), Struct_2(Struct_1(vec4<bool>(false, true, true, false))), Struct_2(Struct_1(vec4<bool>(false, false, true, false))), Struct_2(Struct_1(vec4<bool>(false, true, true, false))), Struct_2(Struct_1(vec4<bool>(true, true, true, true))), Struct_2(Struct_1(vec4<bool>(false, true, false, true))), Struct_2(Struct_1(vec4<bool>(true, false, true, false))), Struct_2(Struct_1(vec4<bool>(true, true, true, true))), Struct_2(Struct_1(vec4<bool>(true, false, true, false))), Struct_2(Struct_1(vec4<bool>(true, false, true, false))), Struct_2(Struct_1(vec4<bool>(false, false, false, true))), Struct_2(Struct_1(vec4<bool>(true, false, false, false))), Struct_2(Struct_1(vec4<bool>(false, false, true, false))));

var<private> global4: array<i32, 24>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> i32 {
    global0 = array<Struct_1, 10>();
    global4 = array<i32, 24>();
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-599f, -405f, -937f, _wgslsmith_div_f32(773f, -353f))));
    var var_1 = abs(-2147483647i);
    global3 = array<Struct_2, 21>();
    return _wgslsmith_mod_i32(2147483647i, _wgslsmith_div_i32(u_input.a, 0i) ^ (~(-1i) << (~(~u_input.d) % 32u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4) -> bool {
    var var_0 = Struct_3(-42491i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1202f, -439f, arg_1.b)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.b.x, -1731f)) - _wgslsmith_f_op_f32(-global2.b.x))), 1525f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -860f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global2.b.x)), global2.b.x, all(vec2<bool>(true, arg_1.b))))), -1000f));
    global3 = array<Struct_2, 21>();
    global2 = Struct_3(abs(firstLeadingBit(u_input.a)) >> (25502u % 32u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, var_0.b.x)), 492f, -528f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(888f)))))));
    var var_1 = Struct_2(Struct_1(vec4<bool>(arg_1.b, true, u_input.c == 0u, true)));
    return any(vec3<bool>(any(var_1.a.a.wz), select(any(!vec2<bool>(arg_1.a, arg_1.a)), true, select(!arg_1.b, all(vec2<bool>(true, true)), all(vec3<bool>(var_1.a.a.x, var_1.a.a.x, arg_1.a)))), !(-2215f >= _wgslsmith_div_f32(var_0.b.x, global2.b.x))));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<f32>) -> vec3<bool> {
    var var_0 = vec2<f32>(1f, 1f);
    var var_1 = !vec3<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(true, false, true, false)), _wgslsmith_f_op_f32(exp2(var_0.x)) != -477f);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1364f, -315f, arg_2.x) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, var_0.x, -1000f))))))));
    global0 = array<Struct_1, 10>();
    var var_3 = u_input.b.xxx;
    return select(select(!select(!vec3<bool>(false, var_1.x, true), vec3<bool>(true, var_1.x, var_1.x), func_3(vec2<i32>(-1i, -23269i), Struct_4(var_1.x, var_1.x, var_3.x, global1.x, 0u))), vec3<bool>(select(false && var_1.x, !var_1.x, false), false, var_1.x), global2.a >= -(global4[_wgslsmith_index_u32(81634u, 24u)] << (var_3.x % 32u))), vec3<bool>(true, true, true), select(select(select(vec3<bool>(var_1.x, var_1.x, true), !vec3<bool>(true, var_1.x, var_1.x), true), select(vec3<bool>(false, true, false), vec3<bool>(var_1.x, true, var_1.x), !vec3<bool>(true, var_1.x, var_1.x)), vec3<bool>(var_1.x, false, func_3(vec2<i32>(-32199i, global2.a), Struct_4(true, var_1.x, arg_0, var_3.x, var_3.x)))), select(select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, var_1.x, false)), vec3<bool>(true, var_1.x, true), select(vec3<bool>(false, true, true), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, var_1.x, true))), !(!vec3<bool>(false, var_1.x, false)), 531f > _wgslsmith_f_op_f32(-var_2.x)), !var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(19064u, 40691u);
    let var_1 = Struct_1(vec4<bool>(true, _wgslsmith_f_op_f32(-global2.b.x) < global2.b.x, any(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)), 8355i < (max(47460i, 1i) ^ func_1())));
    global3 = array<Struct_2, 21>();
    var var_2 = Struct_1(vec4<bool>(true, !(!(!var_1.a.x)), false, true));
    var var_3 = select(select(select(!select(vec3<bool>(true, var_2.a.x, true), vec3<bool>(true, false, var_2.a.x), vec3<bool>(var_1.a.x, false, var_2.a.x)), !func_2(var_0, u_input.a, vec2<f32>(1000f, 545f)), true), !(!vec3<bool>(var_2.a.x, var_1.a.x, var_1.a.x)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(global2.b.x, 405f))) <= global2.b.x), vec3<bool>(func_3(vec2<i32>(_wgslsmith_mult_i32(-18810i, -45998i), -u_input.a), Struct_4(true, any(var_2.a), ~var_0, global1.x, ~u_input.d)), false, !any(!var_1.a)), var_2.a.x);
    global4 = array<i32, 24>();
    global4 = array<i32, 24>();
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(~(~(~vec4<i32>(global4[_wgslsmith_index_u32(var_0, 24u)], global4[_wgslsmith_index_u32(u_input.b.x, 24u)], global4[_wgslsmith_index_u32(global1.x, 24u)], -1i))), firstTrailingBit(min(vec4<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 24u)], global2.a, -27141i, u_input.a), vec4<i32>(25389i, -1i, global4[_wgslsmith_index_u32(40345u, 24u)], 1i))) >> ((~u_input.b << (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1781f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.b.x, 1355f, all(var_2.a.xwy))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + _wgslsmith_f_op_f32(-global2.b.x))))));
}

