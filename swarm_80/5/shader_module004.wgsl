struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, 1i), vec4<i32>(u_input.a, u_input.b.x, u_input.a, -2147483647i))) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, 1u, 4294967295u, u_input.e.x), ~vec4<u32>(0u, u_input.d, u_input.c, u_input.c)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, -41305i), -46017i, -34861i, _wgslsmith_div_i32(u_input.b.x, -34903i)), ~vec4<i32>(0i, 1i, u_input.b.x, 2147483647i) >> (countOneBits(vec4<u32>(50182u, 1u, 8599u, 1849u)) % vec4<u32>(32u)))), countOneBits(-(-vec4<i32>(2147483647i, u_input.b.x, -1i, u_input.b.x) ^ ~vec4<i32>(u_input.b.x, 1i, 62319i, 0i))));
    let var_1 = Struct_1(select(u_input.b.x, -_wgslsmith_mod_i32(-34659i, -u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 1u, 1u, 141246u), ~vec4<u32>(u_input.e.x, u_input.d, 24012u, u_input.e.x)) > firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.e, u_input.e))));
    global0 = 2147483647i;
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-222f, -1085f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(317f, -1000f)))))));
    var var_3 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec3_i32(firstLeadingBit(var_0.zyw), vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, 54134i), var_0.x, -1i))));
    return 7233u;
}

fn func_2() -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1783f, -1247f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 1000f))))) - -903f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 435f)) - _wgslsmith_f_op_f32(min(729f, 245f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -187f))) - -1267f));
    let var_1 = Struct_1(17493i);
    var var_2 = Struct_1(_wgslsmith_dot_vec2_i32(~(-countOneBits(vec2<i32>(var_1.a, var_1.a))), ~(-u_input.b)));
    let var_3 = select(vec3<u32>(func_3(), 45037u, u_input.c), ~(~vec3<u32>(u_input.e.x, 11538u, u_input.e.x ^ 0u)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, false, true))), true));
    var var_4 = var_1;
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<bool>(true, any(vec3<bool>(!func_2(), _wgslsmith_f_op_f32(floor(695f)) != _wgslsmith_f_op_f32(floor(522f)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))))));
    global0 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(max(-2147483647i, 0i), countOneBits(-1i)) << (~_wgslsmith_clamp_u32(24205u, 1977u, u_input.c) % 32u), u_input.b.x << (select(~u_input.e.x, 1u, true & var_0.x) % 32u)), firstTrailingBit(-(~_wgslsmith_add_i32(u_input.a, 17844i))));
    let var_1 = Struct_1(abs(~firstTrailingBit(-16946i)));
    let var_2 = Struct_1(35976i);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1974f);
    return Struct_1(2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(select(~vec3<u32>(28529u, u_input.d, 3813u), vec3<u32>(8616u, 19224u, 0u) ^ vec3<u32>(35074u, u_input.d, 4294967295u), true) | max(~vec3<u32>(u_input.c, 13622u, 29487u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 39262u, 1u), vec3<u32>(u_input.d, u_input.c, 1u))), _wgslsmith_mult_vec3_u32(~(vec3<u32>(u_input.c, u_input.c, 1u) << (vec3<u32>(u_input.d, 14709u, u_input.e.x) % vec3<u32>(32u))), select(vec3<u32>(89531u, 10096u, u_input.d), countOneBits(vec3<u32>(u_input.e.x, u_input.d, u_input.e.x)), vec3<bool>(true, true, true)))), vec3<u32>(~_wgslsmith_mod_u32(abs(u_input.e.x), ~u_input.d), _wgslsmith_div_u32(u_input.d, u_input.d), u_input.d | u_input.c));
    let var_1 = Struct_1(u_input.b.x);
    var var_2 = var_1;
    var var_3 = func_1();
    var_3 = func_1();
    var_3 = func_1();
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(vec4<i32>(var_1.a, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b), _wgslsmith_dot_vec2_i32(u_input.b, u_input.b), u_input.a)), firstLeadingBit(-vec4<i32>(79387i, var_4.a, 0i, var_3.a))));
}

