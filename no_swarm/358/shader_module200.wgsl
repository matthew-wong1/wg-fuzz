struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 5>;

var<private> global1: array<vec4<f32>, 12>;

var<private> global2: bool = false;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 508f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1167f + _wgslsmith_f_op_f32(f32(-1f) * -840f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1890f + -272f)) * 870f))));
    let var_1 = _wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(0u, 12u)]);
    var var_2 = Struct_3(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 1i, u_input.b, u_input.c.x), vec4<i32>(17781i, 31869i, 24543i, 0i)), 22079i), firstTrailingBit(_wgslsmith_sub_i32(u_input.c.x, u_input.a.x))), _wgslsmith_mult_i32(u_input.a.x, firstLeadingBit(u_input.c.x) >> (1u % 32u)), 1i), Struct_1(_wgslsmith_f_op_vec4_f32(var_1 - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(339f, var_1.x, 806f, -3779f))) + vec4<f32>(var_1.x, 1000f, var_1.x, var_0.x))), -1i, 1708u, !all(vec2<bool>(true, true))), 734f);
    return true;
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(sign(183f)) != arg_0, func_3(), true, false), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, true, !(-177f > arg_0)), vec4<bool>(!(u_input.c.x >= u_input.b), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false)), _wgslsmith_f_op_f32(arg_0 + -438f) > _wgslsmith_f_op_f32(trunc(arg_0)), func_3())), true || (any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))) && true));
    global1 = array<vec4<f32>, 12>();
    var var_1 = Struct_3(vec3<i32>(-abs(u_input.a.x), 36788i, min(-u_input.d, _wgslsmith_add_i32(27696i, 1i))) | vec3<i32>(countOneBits(~u_input.b), u_input.c.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b, -25984i), -u_input.d)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(356f + arg_0), _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(floor(arg_0))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(global1[_wgslsmith_index_u32(1u, 12u)]))))), 2147483647i, abs(1u), var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, -1676f)))));
    return Struct_2(_wgslsmith_div_i32(countOneBits(u_input.b), select(u_input.b, 1i, !(var_0.x | false))), var_1.b, arg_0, var_1.b, all(select(select(vec2<bool>(var_1.b.d, false), !var_0.xz, !var_0.xz), var_0.yw, select(!var_0.xz, !var_0.yz, false))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(~vec3<i32>(-(arg_1.b.b << (1u % 32u)), arg_1.b.b, 21815i), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1.d.a), arg_1.b.b, arg_1.d.c, arg_1.d.d), _wgslsmith_f_op_f32(f32(-1f) * -509f));
    var var_1 = arg_1.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.b.a.zx)), func_2(447f).b.a.yw), _wgslsmith_f_op_vec2_f32(-var_1.a.yy)))));
    var var_3 = func_2(_wgslsmith_f_op_f32(-var_0.b.a.x));
    global0 = array<vec4<f32>, 5>();
    return func_2(var_1.a.x).d;
}

fn func_1(arg_0: i32) -> u32 {
    global2 = false;
    let var_0 = Struct_2(arg_0, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1071f, -498f, -882f), vec3<f32>(371f, 576f, -880f), true)))), func_2(-908f)), _wgslsmith_div_f32(-915f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(592f * _wgslsmith_f_op_f32(trunc(811f)))))), func_2(1051f).b, true);
    let var_1 = var_0.b;
    let var_2 = select(select(select(vec4<bool>(true, false, var_0.b.d, var_0.e | true), !vec4<bool>(var_1.d, var_1.d, var_0.d.d, true), vec4<bool>(func_4(vec3<f32>(var_1.a.x, -428f, var_1.a.x), var_0).d, false, var_1.d, func_3())), select(!(!vec4<bool>(true, var_1.d, var_0.b.d, true)), vec4<bool>(var_0.d.d && true, var_1.d, all(vec3<bool>(false, var_1.d, var_0.e)), var_1.d != false), select(select(vec4<bool>(var_1.d, var_1.d, var_0.d.d, true), vec4<bool>(false, var_0.b.d, var_0.e, false), vec4<bool>(var_0.b.d, var_0.b.d, var_0.e, true)), !vec4<bool>(false, false, var_1.d, var_1.d), !var_0.e)), vec4<bool>(var_0.b.d || !var_1.d, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1016f, -664f, var_1.a.x)), func_2(350f)).d, all(select(vec4<bool>(var_1.d, true, false, var_0.d.d), vec4<bool>(var_0.b.d, var_0.b.d, var_0.d.d, var_0.e), vec4<bool>(false, false, true, false))), var_0.e)), select(!(!select(vec4<bool>(true, var_1.d, var_1.d, var_1.d), vec4<bool>(var_0.b.d, var_0.e, false, true), true)), !vec4<bool>(true & var_0.d.d, var_1.d, any(vec3<bool>(true, var_0.e, var_1.d)), var_1.d), select(vec4<bool>(var_1.d, func_3(), true, func_4(vec3<f32>(var_0.d.a.x, var_1.a.x, 1237f), var_0).d), select(select(vec4<bool>(true, true, true, false), vec4<bool>(var_0.b.d, false, var_0.e, var_1.d), var_1.d), !vec4<bool>(var_1.d, var_1.d, var_0.e, true), !vec4<bool>(true, var_0.e, var_0.b.d, false)), vec4<bool>(var_0.e & var_0.b.d, false, var_1.d, var_1.d))), !select(select(select(vec4<bool>(var_0.d.d, true, var_0.d.d, true), vec4<bool>(var_0.e, false, false, var_0.d.d), vec4<bool>(true, var_0.d.d, var_0.d.d, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(var_0.d.d, false, var_1.d, var_1.d), true), var_0.b.d), vec4<bool>(!var_0.d.d, true, true == var_1.d, var_0.e), true));
    global1 = array<vec4<f32>, 12>();
    return ~max(var_1.c, var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 5>();
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(19043u, 0u, 24455u)), abs(_wgslsmith_add_u32(1u, 1u)), 4294967295u), vec3<u32>(abs(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(16189u, 23875u)), firstLeadingBit(4294967295u)) & min(vec3<u32>(48974u, 68521u, 1u), abs(vec3<u32>(18123u, 4294967295u, 47724u)))) ^ (vec3<u32>(25967u, func_1(_wgslsmith_mod_i32(42142i, 86310i)), abs(~18300u)) & vec3<u32>(~(~26316u), 1u, 40258u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, ~(~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x) << ((~vec4<u32>(var_0.x, var_0.x, 4294967295u, 8085u) & ~vec4<u32>(35604u, var_0.x, 0u, 1u)) % vec4<u32>(32u))), vec2<i32>(1i, firstTrailingBit(func_2(-1039f).a)) >> (vec2<u32>(_wgslsmith_div_u32(1u, abs(var_0.x)), _wgslsmith_mult_u32(23750u, var_0.x)) % vec2<u32>(32u)));
}

