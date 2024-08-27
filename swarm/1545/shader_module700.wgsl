struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22>;

var<private> global1: bool;

var<private> global2: i32;

var<private> global3: array<vec3<i32>, 8>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = Struct_5(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -525f)), -917f), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(503f, 929f)), Struct_1(min(39991i, 9370i), true, -9434i, 145f), Struct_1(firstTrailingBit(100870i), true, abs(-26026i), _wgslsmith_f_op_f32(f32(-1f) * -1101f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -770f)), Struct_1(-1i, true, 18422i, _wgslsmith_f_op_f32(f32(-1f) * -1539f)))));
    let var_1 = select(vec3<bool>(var_0.a.b.b.b, var_0.a.b.b.b, all(!select(vec3<bool>(var_0.a.b.b.b, false, var_0.a.b.b.b), vec3<bool>(false, var_0.a.b.e.b, var_0.a.b.c.b), true))), select(vec3<bool>(true, any(!vec4<bool>(var_0.a.b.c.b, true, var_0.a.b.b.b, var_0.a.b.c.b)), !var_0.a.b.b.b), vec3<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 4294967295u), u_input.a.xxx) <= 4294967295u, !all(vec3<bool>(var_0.a.b.b.b, var_0.a.b.c.b, var_0.a.b.e.b)), _wgslsmith_mod_u32(0u, u_input.a.x) >= u_input.a.x), vec3<bool>(var_0.a.b.c.b, false, !var_0.a.b.c.b || true)), true);
    var var_2 = var_0;
    let var_3 = _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(~countOneBits(0u), u_input.a.x, 0u, countOneBits(~31727u))), abs(vec4<u32>(0u, 61208u, _wgslsmith_mod_u32(firstLeadingBit(58883u), 44117u), ~(~1u))), u_input.a & vec4<u32>(abs(1u), u_input.a.x, _wgslsmith_sub_u32(min(13739u, 6563u), 0u << (u_input.a.x % 32u)), u_input.a.x << (0u % 32u)));
    var var_4 = global3[_wgslsmith_index_u32(8668u, 8u)];
    return abs(max(-35743i, ~1i));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = firstLeadingBit(-reverseBits(func_3()));
    global1 = arg_0.b;
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1945f, arg_0.d)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, arg_0.d))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.d, arg_0.d, arg_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -354f)), _wgslsmith_f_op_f32(trunc(-401f)))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d), 1931f), arg_0, Struct_1(arg_0.a, any(vec3<bool>(false, arg_0.b, arg_0.b)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d - -1142f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.d))))), Struct_1(-30079i, true, -arg_0.c, 582f)));
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.yz, u_input.a.wz), ~u_input.a.wz);
    var var_3 = 32656i;
    return Struct_2(var_1.a, Struct_1(countOneBits(0i), false, var_1.b.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-123f)) - arg_0.d)), Struct_1(~arg_0.c, !(_wgslsmith_f_op_f32(-arg_0.d) > 1424f), _wgslsmith_sub_i32(firstTrailingBit(func_3()), ~1i), _wgslsmith_f_op_f32(-arg_0.d)), 1257f, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, 2147483647i, arg_0.c), vec3<i32>(var_0, arg_0.a, var_0)), var_1.b.c.a, min(41512i, arg_0.c)), abs(vec4<i32>(arg_0.a, -2147483647i, -1i, arg_0.a))), arg_0.b, -(~var_1.b.b.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1000f))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = arg_0.b.b.d;
    return arg_0.b.b;
}

fn func_1() -> vec3<u32> {
    let var_0 = func_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-954f, -598f)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(171f, 2333f)))))), func_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-2602i, -1i, -14364i, 2147483647i), vec4<i32>(2147483647i, -1i, 20403i, 1i)), true, i32(-1i) * -1705i, _wgslsmith_f_op_f32(-524f - 1000f)))), select(!vec4<bool>(true, true, true, select(false, true, true)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, any(vec2<bool>(false, true)), true, true), vec4<bool>(true, func_2(Struct_1(2147483647i, false, 37442i, 873f)).e.b, any(vec2<bool>(true, true)), true))));
    global3 = array<vec3<i32>, 8>();
    return u_input.a.yzx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x | ~_wgslsmith_add_u32(u_input.a.x, 4294967295u);
    var var_1 = _wgslsmith_mod_vec3_u32(u_input.a.xwy, _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(abs(~u_input.a.xzw), firstTrailingBit(func_1())), u_input.a.xww));
    global1 = !(!(!(!any(vec3<bool>(true, false, true)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(651f)) - -486f)) * 735f));
    let var_3 = -891f;
    let var_4 = Struct_5(Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-792f, -689f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(353f, var_3) * vec2<f32>(var_3, -489f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-476f, var_3)), vec2<bool>(false, false)))), func_2(func_4(Struct_3(vec2<f32>(var_3, var_3), Struct_2(vec2<f32>(var_3, 1170f), Struct_1(2147483647i, false, -48080i, var_3), Struct_1(3275i, false, 0i, 151f), -1616f, Struct_1(5079i, true, -34999i, var_3))), vec4<bool>(true, false, false, true)))));
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xyz);
}

