struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21>;

var<private> global1: vec4<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3) -> bool {
    global0 = array<vec4<i32>, 21>();
    global1 = vec4<u32>(8613u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 1u, global1.x), global1.xyz & global1.wzy), ~(~1u) ^ arg_0.e.b.x, ~(~abs(u_input.c.x))) << (reverseBits(select(vec4<u32>(4764u, global1.x ^ u_input.a, global1.x & 1u, 4294967295u), vec4<u32>(4294967295u, countOneBits(4294967295u), u_input.c.x, arg_0.c.b.x), select(select(arg_0.e.d, vec4<bool>(false, arg_0.e.c.x, arg_0.e.e, true), arg_0.c.c.x), vec4<bool>(true, arg_0.c.c.x, arg_0.e.d.x, false), !arg_0.c.e))) % vec4<u32>(32u));
    global1 = ~vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(global1.x, arg_0.c.b.x), _wgslsmith_div_u32(u_input.c.x, 1u)), 1u), arg_0.c.b.x << (_wgslsmith_sub_u32(u_input.a, _wgslsmith_div_u32(17370u, 1u)) % 32u), ~global1.x, ~(~arg_0.c.b.x >> (1u % 32u)));
    var var_0 = min(9163u, 4294967295u);
    var var_1 = arg_0;
    return var_1.b;
}

fn func_2() -> Struct_2 {
    return Struct_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(u_input.a, u_input.c.x)), vec2<u32>(u_input.a & 4294967295u, reverseBits(7471u))), ~(u_input.a | u_input.c.x)), Struct_1(2147483647i, u_input.c.yx, !select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec4<bool>(func_3(Struct_3(vec2<bool>(false, true), false, Struct_1(-14528i, vec2<u32>(58778u, u_input.a), vec2<bool>(true, true), vec4<bool>(false, true, false, true), true), vec4<f32>(-1108f, -794f, -452f, 192f), Struct_1(1i, global1.xw, vec2<bool>(false, true), vec4<bool>(true, false, true, true), false))), true, true, false), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true)), true), Struct_1(_wgslsmith_div_i32(u_input.b.x, select(u_input.b.x, 46371i, true)), abs(vec2<u32>(firstTrailingBit(1u), 75965u)), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, false)) != true), select(vec4<bool>(true, u_input.b.x >= u_input.b.x, true, true), vec4<bool>(true, 13760i == u_input.b.x, true, true), vec4<bool>(true, true, true, true)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(129f - _wgslsmith_f_op_f32(f32(-1f) * -155f)) * -2203f)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec3_u32(~u_input.c, ~countOneBits(~vec3<u32>(0u, 31145u, 16880u))) & vec3<u32>(u_input.c.x, ~global1.x, ~u_input.c.x);
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(677f, 136f)));
    let var_3 = vec4<bool>(!var_1.b.d.x, false, var_1.c.e, any(var_1.c.d));
    var var_4 = vec2<bool>(func_2().c.e, func_2().c.c.x);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(4294967295u, 0u, abs(u_input.c.x));
    var var_1 = Struct_3(vec2<bool>(true, true), false, func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-446f - -979f), _wgslsmith_f_op_f32(f32(-1f) * -322f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(549f, -1602f))))), true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-425f, 622f, -816f, -1462f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(569f, 254f, -1000f, -1227f) - vec4<f32>(-933f, -224f, 596f, 294f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-811f, 1401f, -2225f, 1153f), vec4<f32>(1085f, -213f, -608f, 1089f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-114f, 688f, -751f, 1101f) * vec4<f32>(-1000f, 2035f, -1000f, 295f))))), func_2().c);
    global1 = min(~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 66338u, 0u, 0u), vec4<u32>(89185u, u_input.a, u_input.a, var_0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(31705u, 15127u, var_1.c.b.x, var_1.e.b.x), vec4<u32>(var_0.x, 55746u, var_1.e.b.x, 71077u)), select(vec4<u32>(1u, var_1.e.b.x, 42946u, global1.x), vec4<u32>(1u, 24780u, 7358u, 31274u), var_1.a.x)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c.b.x, u_input.c.x, var_1.e.b.x, 69339u), vec4<u32>(79821u, global1.x, global1.x, var_1.c.b.x)))) << (vec4<u32>(_wgslsmith_clamp_u32(var_1.e.b.x, ~_wgslsmith_add_u32(global1.x, 8426u), _wgslsmith_add_u32(global1.x, ~0u)), var_0.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(29637u, 18345u, var_0.x), min(var_0, vec3<u32>(global1.x, var_0.x, 1u))), vec3<u32>(4294967295u, 30867u, 19404u) | vec3<u32>(4294967295u, 0u, u_input.c.x)), var_1.e.b.x) % vec4<u32>(32u));
    var var_2 = Struct_3(var_1.e.c, false, var_1.c, _wgslsmith_div_vec4_f32(var_1.d, vec4<f32>(-1000f, func_2().d, var_1.d.x, var_1.d.x)), func_1(_wgslsmith_f_op_vec2_f32(-var_1.d.wx)));
    var_1 = Struct_3(!var_1.a, var_1.a.x, var_2.c, vec4<f32>(_wgslsmith_f_op_f32(abs(-1506f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.x + -247f)), _wgslsmith_f_op_f32(func_2().d + _wgslsmith_f_op_f32(floor(var_2.d.x)))), 1000f, -2063f), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.d.x), -1621f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_add_u32(1u, abs(_wgslsmith_mult_u32(1u, ~var_0.x))), u_input.b.x, ~vec2<u32>(global1.x ^ 0u, 4294967295u), select(~(~vec4<u32>(var_0.x, 53u, u_input.a, 23980u)) | ~countOneBits(vec4<u32>(var_0.x, 1u, 8436u, var_1.e.b.x)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, var_0.x, var_0.x), ~vec4<u32>(0u, var_1.c.b.x, var_0.x, var_1.c.b.x))), vec4<bool>(select(var_1.e.e, var_1.d.x == 503f, all(var_2.c.d.wyz)), true, true, _wgslsmith_f_op_f32(select(368f, var_1.d.x, false)) < 3441f)));
}

