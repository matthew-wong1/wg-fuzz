struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: bool,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<u32>,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    var var_0 = vec3<i32>(~25228i, ~1i, i32(-1i) * -1i);
    var var_1 = 0u;
    var_0 = vec3<i32>(~_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(1i, 41779i, global0[_wgslsmith_index_u32(4294967295u, 21u)], -1i) << (vec4<u32>(u_input.b.x, 1u, 17624u, u_input.d.x) % vec4<u32>(32u))), vec4<i32>(-23112i, ~(-53096i), _wgslsmith_mult_i32(-28042i, arg_0.a), abs(global0[_wgslsmith_index_u32(4294967295u, 21u)]))), abs(-countOneBits(var_0.x)), var_0.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.a.x, arg_1.b, 947f, arg_0.e.a.x)))))), arg_1.d.x, !(!all(select(vec3<bool>(false, false, arg_1.c), vec3<bool>(false, true, arg_1.c), vec3<bool>(true, false, false)))));
    var var_3 = !(!(!any(vec3<bool>(arg_0.e.c, false, arg_1.e.c))));
    return any(vec4<bool>(!arg_1.c, arg_1.c, true, all(!select(vec4<bool>(arg_1.c, var_2.c, var_2.c, false), vec4<bool>(var_2.c, true, false, true), vec4<bool>(var_2.c, true, false, false)))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-720f * -1143f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -2894f, false))), _wgslsmith_f_op_f32(315f * -568f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1066f) - _wgslsmith_f_op_f32(max(-105f, -1674f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), !all(vec4<bool>(false, true, true, func_3(Struct_2(global0[_wgslsmith_index_u32(u_input.d.x, 21u)], -1436f, true, vec2<f32>(939f, 2274f), Struct_1(vec4<f32>(178f, -443f, -513f, 1481f), -246f, true)), Struct_2(-73796i, 668f, true, vec2<f32>(-1068f, 232f), Struct_1(vec4<f32>(-452f, 980f, -622f, 1000f), 249f, true))))));
    let var_1 = select(select(select(vec2<bool>(any(vec3<bool>(true, var_0.c, false)), func_3(Struct_2(-2147483647i, var_0.b, var_0.c, var_0.a.xy, Struct_1(vec4<f32>(var_0.b, var_0.b, var_0.a.x, var_0.a.x), var_0.a.x, true)), Struct_2(-15836i, var_0.a.x, false, var_0.a.wz, Struct_1(var_0.a, -1000f, false)))), select(select(vec2<bool>(true, var_0.c), vec2<bool>(true, var_0.c), vec2<bool>(true, false)), !vec2<bool>(var_0.c, true), !vec2<bool>(true, var_0.c)), select(select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, true), vec2<bool>(var_0.c, var_0.c)), !vec2<bool>(var_0.c, true), select(vec2<bool>(var_0.c, false), vec2<bool>(var_0.c, var_0.c), false))), select(vec2<bool>(func_3(Struct_2(u_input.a, -1521f, true, var_0.a.yy, Struct_1(var_0.a, 983f, false)), Struct_2(u_input.a, 2043f, false, vec2<f32>(var_0.a.x, var_0.b), Struct_1(vec4<f32>(-1224f, 258f, var_0.a.x, var_0.a.x), -554f, var_0.c))), var_0.c), vec2<bool>(var_0.a.x > var_0.b, var_0.c), select(vec2<bool>(var_0.c, false), vec2<bool>(true, true), !var_0.c)), select(!vec2<bool>(true, var_0.c), select(vec2<bool>(true, var_0.c), select(vec2<bool>(var_0.c, true), vec2<bool>(true, true), var_0.c), select(vec2<bool>(var_0.c, true), vec2<bool>(var_0.c, false), var_0.c)), func_3(Struct_2(global0[_wgslsmith_index_u32(42964u, 21u)], 1307f, var_0.c, var_0.a.yw, Struct_1(vec4<f32>(285f, -714f, var_0.b, var_0.b), var_0.b, false)), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 21u)], 1328f, true, var_0.a.xz, Struct_1(var_0.a, 777f, var_0.c))))), !(!select(vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, false), !vec2<bool>(var_0.c, false))), !vec2<bool>(var_0.c, any(vec2<bool>(true, true))));
    var var_2 = var_1.x || var_1.x;
    global0 = array<i32, 21>();
    return Struct_2(select(u_input.c, 25771i, var_1.x) | (u_input.c ^ global0[_wgslsmith_index_u32(32475u, 21u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(-var_0.b)), var_0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 754f) * var_0.a.wy), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1284f)) + _wgslsmith_f_op_f32(-var_0.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + -428f))), all(!select(vec4<bool>(var_1.x, false, var_0.c, var_0.c), vec4<bool>(false, var_0.c, true, var_1.x), true))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(min(-400f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * var_0.b)));
    global0 = array<i32, 21>();
    global0 = array<i32, 21>();
    var_1 = _wgslsmith_f_op_f32(-func_2().e.a.x);
    return Struct_2(2147483647i, var_0.b, select(select(true, var_0.c, true), var_0.e.c, select(var_0.e.c, all(select(vec4<bool>(false, true, var_0.c, true), vec4<bool>(var_0.e.c, var_0.e.c, var_0.e.c, true), var_0.e.c)), !var_0.e.c)), _wgslsmith_div_vec2_f32(vec2<f32>(206f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.e.b)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(arg_0.wz, _wgslsmith_f_op_vec2_f32(-var_0.d), !vec2<bool>(false, var_0.e.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.wz + arg_0.zy) - _wgslsmith_f_op_vec2_f32(arg_0.yz - var_0.e.a.yw))))), Struct_1(var_0.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_div_f32(-969f, -1643f))), !(!var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1674f, -953f, -1893f, 952f), vec4<f32>(-118f, -1000f, -409f, 644f))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-845f, -1760f)), 903f, true)), -145f, 995f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1099f))))));
    global0 = array<i32, 21>();
    let var_1 = 0u;
    var_0 = Struct_2(2147483647i, var_0.b, _wgslsmith_div_i32(_wgslsmith_mult_i32(-6519i, var_0.a), ~(-global0[_wgslsmith_index_u32(4294967295u, 21u)])) > -(global0[_wgslsmith_index_u32(~55122u, 21u)] | countOneBits(global0[_wgslsmith_index_u32(42592u, 21u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-745f, var_0.b, var_0.c == false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(-453f * -211f)))), func_1(_wgslsmith_div_vec4_f32(var_0.e.a, func_1(_wgslsmith_f_op_vec4_f32(floor(var_0.e.a))).e.a)).e);
    let var_2 = Struct_4(vec3<bool>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, var_1), 0u) >= max(var_1, ~1u), true, var_0.d.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f) + -384f)));
    var_0 = func_2();
    let var_3 = var_0.e;
    var_0 = Struct_2(2346i, -1000f, true, var_0.e.a.wx, var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(firstLeadingBit(vec3<u32>(67484u, 0u, var_1))), u_input.d), var_1), var_1, reverseBits(-(~(-vec3<i32>(51870i, 2147483647i, var_0.a)))), _wgslsmith_mod_vec4_i32(firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(1u, 21u)], 0i, -2966i))), _wgslsmith_mult_vec4_i32(-vec4<i32>(2281i, -2147483647i, 1i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], u_input.a, 0i, 1i), vec4<i32>(-2147483647i, 17016i, -1i, 1i)))) >> (vec4<u32>(~abs(u_input.b.x), 4294967295u, 10556u, select(1u, u_input.b.x, var_0.a >= global0[_wgslsmith_index_u32(u_input.b.x, 21u)])) % vec4<u32>(32u)), var_3.a.zy);
}

