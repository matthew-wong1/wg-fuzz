struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<u32>) -> vec3<bool> {
    global0 = array<Struct_3, 12>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-426f))) + _wgslsmith_f_op_f32(319f * -1526f)), arg_0.x, arg_0.x);
    global0 = array<Struct_3, 12>();
    let var_1 = vec2<bool>(false, !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), var_0.a) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-782f, 359f))))));
    let var_2 = Struct_1(arg_0.yy, -vec2<i32>(firstLeadingBit(_wgslsmith_clamp_i32(-2147483647i, u_input.a, -11362i)), ~(~u_input.a)), u_input.c, _wgslsmith_f_op_f32(-var_0.a));
    return !select(vec3<bool>(!var_1.x || var_1.x, var_1.x, var_2.b.x >= var_2.b.x), vec3<bool>(var_1.x, any(!vec3<bool>(true, true, var_1.x)), any(!vec4<bool>(false, true, var_1.x, true))), select(!all(vec3<bool>(var_1.x, true, false)), false, any(vec4<bool>(var_1.x, false, true, true))));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: i32, arg_3: i32) -> u32 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(404f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), -877f)))), 35287u, 1u);
    let var_2 = !func_3(vec3<u32>(_wgslsmith_dot_vec3_u32(~u_input.c, vec3<u32>(var_1.b, 20436u, var_1.b)), ~_wgslsmith_add_u32(var_1.c, var_1.c), var_1.c));
    var var_3 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(~0u, var_1.b, 1u << (var_1.b % 32u), var_1.c), abs(~_wgslsmith_div_vec4_u32(vec4<u32>(1396u, 1u, u_input.c.x, 16377u), _wgslsmith_clamp_vec4_u32(vec4<u32>(44025u, u_input.b, 73958u, 1u), vec4<u32>(u_input.c.x, 36497u, 88666u, var_1.c), vec4<u32>(var_1.c, u_input.b, u_input.c.x, 100094u)))), ~(~vec4<u32>(88345u, u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), u_input.c.x)));
    var var_4 = u_input.c;
    return _wgslsmith_mod_u32(~(~var_1.c), var_3.x >> (_wgslsmith_dot_vec2_u32(var_3.wx, _wgslsmith_sub_vec2_u32(var_3.zw, max(var_3.xx, vec2<u32>(var_3.x, 35319u)))) % 32u));
}

fn func_1(arg_0: vec3<i32>) -> Struct_4 {
    global0 = array<Struct_3, 12>();
    let var_0 = ~(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(414f, 969f, -685f, 1619f), vec4<f32>(-485f, -855f, -1064f, -1164f)), 1f, ~(-26925i), u_input.a) ^ u_input.c.x);
    let var_1 = vec3<i32>(~(min(arg_0.x, _wgslsmith_clamp_i32(u_input.a, 1i, 11347i)) & 1i), -16606i, -5444i);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1386f, -1003f)), 42212u, func_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1814f)), _wgslsmith_div_f32(-1158f, 116f), _wgslsmith_div_f32(-123f, 730f), _wgslsmith_f_op_f32(2166f + -567f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(437f, 401f, 364f, -168f)))), -292f, ~((-2147483647i ^ var_1.x) | ~2147483647i), _wgslsmith_sub_i32(-1i, 69909i)));
    let var_3 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(~u_input.b, 663u), 38095u), var_2.c), vec2<i32>(arg_0.x >> (var_2.c % 32u), arg_0.x), ~u_input.c ^ vec3<u32>(func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(462f, 1000f, var_2.a, -432f))), _wgslsmith_f_op_f32(-var_2.a), abs(-1i), u_input.a), _wgslsmith_mod_u32(~1u, 1u), ~reverseBits(4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * var_2.a) * var_2.a)))));
    return Struct_4(vec3<f32>(var_3.d, var_2.a, _wgslsmith_f_op_f32(trunc(1646f))), Struct_2(u_input.a, var_3, 7820u, ~firstTrailingBit(~var_3.c)));
}

fn func_4(arg_0: Struct_4, arg_1: i32) -> Struct_1 {
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    var var_0 = true;
    let var_1 = func_1(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(abs(-27390i), -39790i, abs(37932i)), _wgslsmith_div_i32(arg_1, 1i), _wgslsmith_dot_vec3_i32(min(vec3<i32>(-23467i, arg_1, u_input.a), vec3<i32>(arg_1, 50826i, arg_0.b.b.b.x)), vec3<i32>(arg_0.b.a, 2147483647i, u_input.a))), firstLeadingBit(_wgslsmith_div_i32(arg_0.b.b.b.x, arg_0.b.a)), -(func_1(vec3<i32>(-2147483647i, u_input.a, u_input.a)).b.a ^ _wgslsmith_dot_vec2_i32(arg_0.b.b.b, arg_0.b.b.b)))).b;
    let var_2 = Struct_3(-1000f, max(_wgslsmith_mult_u32(u_input.b, ~u_input.c.x), _wgslsmith_add_u32(arg_0.b.d.x >> (73678u % 32u), _wgslsmith_mult_u32(~arg_0.b.b.c.x, func_2(vec4<f32>(-300f, var_1.b.d, var_1.b.d, arg_0.b.b.d), -1000f, var_1.b.b.x, 16719i)))), _wgslsmith_add_u32(max(var_1.c & 16152u, ~abs(u_input.c.x)), arg_0.b.b.a.x));
    return Struct_1(u_input.c.zz, arg_0.b.b.b, vec3<u32>(_wgslsmith_sub_u32(select(1u, arg_0.b.c, var_2.c >= arg_0.b.d.x), var_2.b), 71457u, ~u_input.c.x), var_1.b.d);
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_3 {
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    return global0[_wgslsmith_index_u32(0u, 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(~_wgslsmith_add_i32(u_input.a, abs(u_input.a)), func_4(func_1(vec3<i32>(u_input.a, u_input.a, -2147483647i)), u_input.a), _wgslsmith_mod_u32(firstLeadingBit(~u_input.b), ~_wgslsmith_mult_u32(u_input.c.x, u_input.c.x)), u_input.c), all(vec3<bool>(true, all(vec3<bool>(false, false, false)), 4294967295u > u_input.c.x)) || all(vec2<bool>(true, true)));
    var var_1 = func_5(Struct_2(u_input.a, func_1(firstTrailingBit(abs(vec3<i32>(u_input.a, u_input.a, 1i)))).b.b, _wgslsmith_div_u32(~reverseBits(var_0.c), ~_wgslsmith_sub_u32(0u, u_input.b)), ~(~vec3<u32>(var_0.b, 11987u, u_input.c.x))), any(vec2<bool>(true, true)));
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zz, _wgslsmith_add_i32(firstLeadingBit(u_input.a), u_input.a & _wgslsmith_mod_i32(9252i, _wgslsmith_mod_i32(u_input.a, -3017i))));
}

