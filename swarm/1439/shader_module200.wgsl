struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 12>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = u_input.b.yx;
    let var_1 = Struct_2(13462u, arg_0, _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 32463u), var_0) | u_input.b.yz, u_input.b.yx), vec3<u32>(min(firstTrailingBit(var_0.x), 0u), var_0.x, 30880u) << (_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_0.x, 3547u) & u_input.b, ~vec3<u32>(arg_0.a, 1u, arg_0.a)), ~u_input.b) % vec3<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-980f - _wgslsmith_f_op_f32(sign(703f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2220f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -141f) - _wgslsmith_f_op_f32(583f + -1830f)))));
    global0 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.b, countOneBits(vec3<u32>(u_input.b.x, select(0u, 4294967295u, var_1.b.e), var_1.b.a))), var_1.d);
    var var_2 = arg_0;
    var var_3 = vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xz, _wgslsmith_sub_vec2_i32(vec2<i32>(544i, _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(4294967295u, 12u)], vec4<i32>(var_1.b.c, 1i, var_1.b.c, 0i))), vec2<i32>(-17867i, _wgslsmith_dot_vec4_i32(vec4<i32>(29202i, u_input.a.x, 1321i, var_2.c), vec4<i32>(0i, 2147483647i, -2147483647i, 20260i))))), u_input.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e * var_1.e) - _wgslsmith_f_op_f32(-554f - -1907f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_1.e, var_1.e, false))))), _wgslsmith_f_op_f32(-var_1.e)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1228f));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(854f * -589f) - 1473f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1043f * 1300f) + -706f) + 579f) + _wgslsmith_f_op_f32(func_3(Struct_1(~u_input.b.x, select(u_input.a.x, 15553i, false), arg_0.c | -19734i, vec2<bool>(true, true), var_1.d.x & arg_1.x)))));
    let var_3 = Struct_2(~min(_wgslsmith_mod_u32(0u, 49273u), ~arg_0.a), var_1, ~15666u, vec3<u32>(4294967295u, min(u_input.b.x, ~u_input.b.x), arg_0.a), var_2);
    let var_4 = -590f;
    return arg_0;
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = func_2(Struct_1(u_input.b.x, _wgslsmith_mult_i32(2147483647i, u_input.a.x), 1i, select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), countOneBits(u_input.b.x) == min(u_input.b.x, 0u)), true), vec3<bool>(all(vec2<bool>(true, true)), true, _wgslsmith_f_op_f32(f32(-1f) * -571f) == _wgslsmith_f_op_f32(round(-156f))));
    global1 = array<vec4<i32>, 12>();
    var var_1 = Struct_2(arg_0.x, func_2(Struct_1(abs(reverseBits(arg_0.x)), var_0.b, -reverseBits(var_0.c), !(!var_0.d), false), vec3<bool>(!var_0.d.x, any(select(vec3<bool>(var_0.e, false, true), vec3<bool>(false, true, true), true)), var_0.e)), ~59825u, ~u_input.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1521f, _wgslsmith_f_op_f32(2626f - _wgslsmith_f_op_f32(floor(170f))))))));
    global0 = 4294967295u;
    let var_2 = 142f;
    return Struct_2(~_wgslsmith_add_u32(44866u, 21363u), Struct_1(var_0.a, 2147483647i, u_input.a.x, var_1.b.d, !all(!vec2<bool>(false, var_1.b.d.x))), ~arg_0.x, ~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 4025u, 7452u), vec3<u32>(var_0.a, 11712u, arg_0.x)), var_1.d), -1613f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~abs(vec2<u32>(1u, ~0u)));
    let var_1 = _wgslsmith_sub_i32(1i, -abs(~var_0.b.c));
    var var_2 = Struct_2(u_input.b.x, Struct_1(101905u, 1i, u_input.a.x, !var_0.b.d, !(var_1 < _wgslsmith_sub_i32(1472i, var_1))), var_0.d.x, _wgslsmith_div_vec3_u32(countOneBits(~_wgslsmith_mod_vec3_u32(var_0.d, u_input.b)), vec3<u32>(37963u, ~(~u_input.b.x), var_0.b.a)), var_0.e);
    var var_3 = _wgslsmith_f_op_f32(ceil(var_0.e));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_2.e)))) + -181f);
    var var_5 = Struct_2(var_2.d.x, func_2(var_0.b, !vec3<bool>(true, true && var_2.b.e, !var_2.b.e)), abs(firstTrailingBit(~func_2(var_0.b, vec3<bool>(false, true, true)).a)), firstTrailingBit(vec3<u32>(var_2.a, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(-1627f + _wgslsmith_f_op_f32(f32(-1f) * -180f)));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(exp2(var_4)), -408f));
}

