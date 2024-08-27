struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1396f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> f32 {
    let var_0 = arg_0;
    var var_1 = Struct_1(-vec4<i32>(var_0.d.a.x, 1i, arg_1 | var_0.a.a.x, 0i), true);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, 2570f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1044f, -1000f)))))));
    var var_3 = ~2147483647i;
    let var_4 = Struct_2(Struct_1(var_0.d.a, select(!var_1.b, !any(vec3<bool>(true, false, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_1, arg_1), vec3<i32>(arg_1, -2147483647i, -2147483647i)) > _wgslsmith_mod_i32(34400i, 15606i))), _wgslsmith_f_op_f32(f32(-1f) * -1552f), arg_0.d, var_0.a, i32(-1i) * -1i);
    return -1299f;
}

fn func_2(arg_0: f32) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<i32>(1i, -65456i, -1i, -25815i), true), -501f, Struct_1(vec4<i32>(0i, 20728i, -32990i, -11181i), true), Struct_1(vec4<i32>(-54242i, -8694i, -11745i, 1i), true), -13106i), i32(-1i) * -15551i, _wgslsmith_mult_i32(8613i, 18787i))), 1174f)), arg_0));
    let var_0 = ~u_input.a;
    var var_1 = !vec3<bool>(true, true, false && (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 36504u, u_input.a), vec3<u32>(var_0, var_0, 0u)) < 0u));
    var var_2 = -(~0i);
    var var_3 = firstTrailingBit(reverseBits(~vec3<u32>(1u, 4294967295u, var_0) >> (vec3<u32>(21789u, u_input.a, var_0) % vec3<u32>(32u)))) ^ select(abs(~firstLeadingBit(vec3<u32>(4294967295u, u_input.a, 43723u))), reverseBits(~_wgslsmith_add_vec3_u32(vec3<u32>(53179u, var_0, 0u), vec3<u32>(19379u, var_0, u_input.a))), vec3<bool>(true, true, false));
    return Struct_2(Struct_1(-abs(vec4<i32>(-2147483647i, -2147483647i, -1i, -6976i)), any(!select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, false, var_1.x), false))), 1155f, Struct_1(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -1i, 50755i, -1i), vec4<i32>(2147483647i, 44483i, -18946i, -103543i), vec4<i32>(-1i, -2147483647i, 39470i, -2147483647i)) >> ((vec4<u32>(4294967295u, var_3.x, 1u, 1u) | vec4<u32>(var_0, var_3.x, var_3.x, 16378u)) % vec4<u32>(32u))), true), Struct_1(reverseBits(~vec4<i32>(0i, 25069i, 1i, 0i)), false), -1i);
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = 0u;
    global0 = _wgslsmith_f_op_f32(-813f * arg_0);
    var var_1 = func_2(459f);
    let var_2 = var_1.a.b;
    let var_3 = Struct_3(select(vec3<bool>(!all(vec4<bool>(true, false, var_1.c.b, var_1.c.b)), all(!vec2<bool>(false, var_1.d.b)), true), vec3<bool>(!var_1.a.b, false, 79967u >= _wgslsmith_sub_u32(22931u, u_input.a)), true), Struct_1(vec4<i32>(-var_1.e, -(~var_1.d.a.x), var_1.d.a.x, var_1.c.a.x), reverseBits(firstLeadingBit(var_1.c.a.x)) < (~var_1.c.a.x << (~0u % 32u))));
    return Struct_3(vec3<bool>(true, true, any(select(vec2<bool>(true, var_3.a.x), select(var_3.a.yz, var_3.a.yz, var_3.a.zz), all(vec4<bool>(var_3.b.b, var_1.c.b, var_3.b.b, false))))), func_2(176f).a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-940f * 181f), 464f) * _wgslsmith_div_f32(1408f, 1f));
    global0 = -1242f;
    var var_0 = func_1(_wgslsmith_f_op_f32(-2672f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1110f))))));
    let var_1 = u_input.a;
    let var_2 = Struct_1(vec4<i32>(func_1(1f).b.a.x, var_0.b.a.x, -2147483647i, ~(~(-9974i))), false && any(func_1(-390f).a.zx));
    let var_3 = func_2(1f);
    var var_4 = -9142i;
    var var_5 = ~vec4<u32>(~(u_input.a | u_input.a), 0u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a, 4294967295u, ~0u), abs(_wgslsmith_div_u32(var_1, 77974u))), 20792u);
    let var_6 = 50282u << (1u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b - 1145f) + var_3.b), _wgslsmith_div_f32(var_3.b, _wgslsmith_f_op_f32(1000f + var_3.b))))), _wgslsmith_mod_vec3_u32(~var_5.zzy, var_5.xyw), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(var_5.x & var_6, _wgslsmith_clamp_u32(var_5.x, var_6, 113521u), 33119u)), firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(u_input.a, var_6), countOneBits(u_input.a), 0u & var_6))));
}

