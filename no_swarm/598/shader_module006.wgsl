struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1;

var<private> global2: vec4<f32>;

var<private> global3: array<f32, 7> = array<f32, 7>(678f, -1530f, -1802f, -547f, -1420f, -102f, 698f);

var<private> global4: vec4<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> u32 {
    global0 = select(select(vec4<bool>(global0.x & true, !(u_input.e > u_input.b.x), true, false), !select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(true, true, true, true), any(global0.wzw)), vec4<bool>(all(vec3<bool>(true, global1.a, false)), false, true, any(global0.wx))), !vec4<bool>(false, global0.x, (2147483647i ^ arg_1.x) == 1i, false), !(!select(select(vec4<bool>(global0.x, global1.a, global0.x, false), vec4<bool>(global1.a, global0.x, false, global1.a), vec4<bool>(true, global1.a, false, true)), !vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, false, true, true))));
    let var_0 = (~(-1i) ^ (~arg_1.x & ~(~u_input.c.x))) & u_input.c.x;
    global4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1228f, global4.x, -826f, global3[_wgslsmith_index_u32(1u, 7u)]))), vec4<f32>(-358f, _wgslsmith_f_op_f32(ceil(global4.x)), -825f, global4.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(395f, -314f, global4.x, global2.x) * vec4<f32>(1568f, global3[_wgslsmith_index_u32(u_input.e, 7u)], -1704f, 1000f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.x, 452f, global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(8805u, 7u)]), vec4<f32>(180f, 734f, -1000f, 185f), vec4<bool>(global1.a, global1.a, global1.a, false))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, -220f, -379f, -952f)) * vec4<f32>(global2.x, global2.x, global2.x, -355f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, 128f, 187f, -537f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1130f, global2.x, -1495f, global4.x)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, -452f, -1387f) * vec4<f32>(global2.x, global4.x, global2.x, global3[_wgslsmith_index_u32(u_input.b.x, 7u)]))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(arg_0.a, 7u)], -531f, global3[_wgslsmith_index_u32(u_input.b.x, 7u)], global2.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, global2.x, 1419f, global4.x))), !vec4<bool>(true, global1.a, global1.a, false)))))));
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(840f, global2.x, 1847f, 255f))))));
    let var_1 = _wgslsmith_add_vec2_i32(reverseBits(abs(-u_input.c)), abs(arg_1));
    return 1u;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_add_u32(u_input.e, ~u_input.e);
    global4 = vec4<f32>(-205f, 938f, _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(~func_3(Struct_2(30875u), vec2<i32>(u_input.a, 57142i)), 7u)])), _wgslsmith_f_op_f32(602f * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~(~var_0), 7u)] * global4.x)));
    var var_1 = Struct_2(~(~1u));
    let var_2 = select(!global0.yz, global0.yw, vec2<bool>(false || global0.x, global1.a));
    var var_3 = 2147483647i;
    return Struct_2(max(_wgslsmith_sub_u32(max(var_1.a, var_0), _wgslsmith_add_u32(min(u_input.b.x, 7055u), ~1u)), var_0));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> bool {
    global1 = Struct_1(true);
    var var_0 = Struct_1(((_wgslsmith_mod_u32(u_input.b.x, 4294967295u) << (_wgslsmith_mult_u32(1u, 21827u) % 32u)) >= arg_1.a) && true);
    var_0 = Struct_1(((_wgslsmith_sub_u32(arg_1.a, 1u) << (~2879u % 32u)) > (0u & ~u_input.e)) | global1.a);
    let var_1 = u_input.e;
    var var_2 = min(_wgslsmith_sub_u32(108785u, _wgslsmith_mod_u32(_wgslsmith_div_u32(106269u, var_1) | func_2().a, abs(var_1 >> (1u % 32u)))), ~arg_1.a);
    return global0.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(all(vec2<bool>(true, arg_1.a)));
    global3 = array<f32, 7>();
    let var_1 = Struct_1(func_4(1000f, func_2()));
    global3 = array<f32, 7>();
    global0 = !vec4<bool>(any(select(!vec4<bool>(global1.a, arg_1.a, true, var_0.a), !vec4<bool>(var_1.a, false, true, true), false)), global1.a, true || !global1.a, global2.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.e, 7u)])));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(!(!vec4<bool>(global1.a, global1.a, global0.x, false)), select(vec4<bool>(global0.x, true, false, func_1(vec4<i32>(u_input.a, -1i, u_input.a, u_input.d), Struct_1(global0.x))), !select(vec4<bool>(true, false, false, true), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global1.a, global0.x, false, true)), countOneBits(u_input.c.x) == ~u_input.d), select(select(!vec4<bool>(true, true, global0.x, global0.x), !vec4<bool>(false, global1.a, global1.a, global0.x), !vec4<bool>(false, global0.x, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(global1.a, false, false, false), !vec4<bool>(global1.a, global0.x, global0.x, false), u_input.b.x > 25372u)));
    global1 = Struct_1(all(global0.yyw));
    global2 = vec4<f32>(global4.x, -251f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f) - -194f) - _wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-223f, -1399f))))), _wgslsmith_f_op_f32(-142f - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(47736u, 1u), 7u)] - _wgslsmith_f_op_f32(step(1815f, _wgslsmith_f_op_f32(abs(856f)))))));
    global2 = vec4<f32>(721f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~2834u | u_input.e, 7u)])), 1990f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2653f, global2.x)) * 1255f))));
    let var_0 = Struct_1(u_input.a >= ((-1393i ^ u_input.a) & -abs(-42068i)));
    var var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 1000f, -180f, -1484f)), vec4<f32>(global3[_wgslsmith_index_u32(41346u, 7u)], global3[_wgslsmith_index_u32(u_input.b.x, 7u)], 1854f, 437f), select(vec4<bool>(false, true, false, true), vec4<bool>(false, global0.x, var_1.a, true), true))))))), global4.yxx);
}

