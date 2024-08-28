struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec4<f32>) -> u32 {
    let var_0 = Struct_1(arg_2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-305f * -553f))))), 100585u, u_input.c.zy);
    var var_1 = 0i;
    let var_2 = var_0;
    global0 = var_0.c;
    var var_3 = var_0.c;
    return var_0.c;
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = ~_wgslsmith_clamp_u32(abs(~0u), (arg_0.c | 1u) & ~0u, _wgslsmith_sub_u32(func_2(true, true, vec4<f32>(1272f, 400f, arg_0.b.x, -1222f)), firstTrailingBit(arg_0.c))) | arg_0.c;
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.c, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, ~arg_0.c, arg_0.c) ^ countOneBits(vec3<u32>(42599u, 1u, 4294967295u) & vec3<u32>(112697u, arg_0.c, arg_0.c)), ~(~vec3<u32>(1u, 1u, 1u))));
    global0 = 4294967295u & arg_0.c;
    global0 = _wgslsmith_mod_u32(~abs(arg_0.c & 34977u), arg_0.c);
    var var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.yx, vec2<i32>(arg_0.d.x, -2147483647i)), u_input.c.ww)), -select(-vec2<i32>(23885i, arg_0.d.x), u_input.c.yx, false)), arg_0.d.x);
    return -2258f;
}

fn func_1(arg_0: vec3<i32>) -> StorageBuffer {
    global0 = ~(~(~(~_wgslsmith_div_u32(83298u, 2371u))));
    var var_0 = false;
    let var_1 = 1i;
    var_0 = func_2(true, !all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2069f, 719f, 253f, -882f) + vec4<f32>(200f, -724f, 568f, -376f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-364f, -219f, -2275f, 403f) * vec4<f32>(-719f, -146f, -755f, -242f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2416f, 342f, 694f, -1000f) + vec4<f32>(2765f, 1059f, 401f, 348f)))))) > ~(~countOneBits(63817u) << (_wgslsmith_mult_u32(_wgslsmith_div_u32(29250u, 4294967295u), _wgslsmith_sub_u32(40023u, 28604u)) % 32u));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(-1589f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(352f, -949f), vec2<f32>(-746f, -861f))), 0u, -vec2<i32>(8893i, var_1)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-900f, -1172f) + _wgslsmith_f_op_f32(f32(-1f) * -774f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -295f))), _wgslsmith_f_op_f32(f32(-1f) * -725f)), firstLeadingBit(min(~29251u, 0u << (1u % 32u))), vec2<i32>(_wgslsmith_sub_i32(arg_0.x, ~arg_0.x | arg_0.x), _wgslsmith_clamp_i32(u_input.d, 29897i, u_input.b.x)));
    return StorageBuffer(2066u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, -702f, var_2.a, 385f))) - vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(max(var_2.a, 612f)), _wgslsmith_f_op_f32(var_2.a + var_2.a), _wgslsmith_f_op_f32(select(var_2.b.x, -160f, true)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(sign(var_2.a)), 203f, _wgslsmith_f_op_f32(exp2(var_2.b.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_2.a, 1128f, var_2.b.x)))))))), ~(-(~(vec4<i32>(-1i, var_2.d.x, 2147483647i, 30924i) << (vec4<u32>(20866u, 0u, var_2.c, var_2.c) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(ceil(1900f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a, var_2.a), var_2.b, vec2<bool>(true, false))))), vec2<bool>(false, true))) + _wgslsmith_f_op_vec2_f32(abs(var_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~1u;
    global0 = ~(~_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(71657u, 4294967295u, 1u, 4339u)), vec4<u32>(~1u, 44147u, _wgslsmith_add_u32(11989u, 19967u), 48701u)));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -882f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2274f, 536f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(121f, -1687f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-319f, -976f) * vec2<f32>(372f, 193f))))), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 2367u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))) & countOneBits(~1u), ~vec2<i32>(_wgslsmith_dot_vec2_i32(abs(u_input.a.zz), min(vec2<i32>(16269i, u_input.b.x), u_input.a.zz)), -u_input.d));
    global0 = var_0.c;
    var var_1 = var_0.d;
    global0 = 5968u;
    let var_2 = vec2<f32>(-272f, 1510f);
    global0 = ~countOneBits(var_0.c);
    let x = u_input.a;
    s_output = func_1(reverseBits(vec3<i32>(var_1.x, var_0.d.x, ~u_input.a.x)));
}

