struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    let var_0 = select(19056i, u_input.c, true);
    let var_1 = Struct_3(100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1f)), u_input.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -1409f, var_1.a)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-275f, -709f, var_1.a), vec3<f32>(var_1.a, var_1.b, -200f))))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1327f), _wgslsmith_f_op_f32(var_1.a + var_1.a), _wgslsmith_f_op_f32(-var_1.a)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.b, -594f) - vec3<f32>(var_1.a, 1000f, 279f))), vec3<f32>(-1000f, 652f, var_1.b), vec3<bool>(true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * var_1.b), -521f), true & any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)))));
    let var_3 = firstTrailingBit(~firstLeadingBit(vec3<u32>(82982u >> (0u % 32u), u_input.a, var_1.c)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a * 471f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-936f - _wgslsmith_f_op_f32(select(-471f, _wgslsmith_f_op_f32(var_2.x - -296f), true))), _wgslsmith_f_op_f32(floor(222f))));
    return _wgslsmith_clamp_u32(firstTrailingBit(arg_1), countOneBits(~_wgslsmith_sub_u32(max(1u, arg_1), var_3.x)), ~var_1.c);
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_1(u_input.d, vec4<u32>(func_3(abs(u_input.c), 67551u) | u_input.a, u_input.a >> (select(~1u, 38759u, true) % 32u), u_input.a, ~_wgslsmith_div_u32(u_input.a, _wgslsmith_mod_u32(34622u, u_input.b.x))), arg_0.x, select(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true)), vec4<bool>(false, all(vec2<bool>(false, false)), select(true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-494f, var_0.c, var_0.c) - vec3<f32>(1179f, arg_1, -291f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-128f, 1638f)))));
    var var_2 = false;
    var var_3 = min(~firstLeadingBit(~select(vec4<i32>(-33330i, -2147483647i, -9089i, -2147483647i), vec4<i32>(u_input.c, 2147483647i, var_0.a, -1i), var_0.d.x)), vec4<i32>(-(~var_0.a), ~(~40701i), -27515i, u_input.c) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b, _wgslsmith_div_vec4_u32(vec4<u32>(5943u, u_input.a, 1u, u_input.b.x), vec4<u32>(1u, var_0.b.x, 1u, u_input.a))), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.x, u_input.a, 57943u, 0u), u_input.b, var_0.b) | _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 32877u, 4294967295u), vec4<u32>(u_input.b.x, var_0.b.x, 4294967295u, var_0.b.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.b.x, 4294967295u, 4294967295u), var_0.b)) % vec4<u32>(32u)));
    var var_4 = _wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(countOneBits(var_0.b.wz << (u_input.b.yy % vec2<u32>(32u))), vec2<u32>(max(u_input.a, u_input.b.x), 45052u)), abs(~(~vec2<u32>(var_0.b.x, 6260u))));
    return var_1;
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = Struct_3(-1343f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2124f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-400f))))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-850f))), 1269f))), u_input.a);
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(var_0.a, -1765f)), vec2<f32>(_wgslsmith_f_op_f32(162f + var_0.a), _wgslsmith_f_op_f32(abs(var_0.a))))))), var_0.a);
    var_1 = func_2(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -361f), var_1.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(step(var_0.b, var_0.b)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) - 768f)));
    return true;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec2<u32>, arg_3: u32) -> f32 {
    var var_0 = false;
    var_0 = !all(select(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0))), !(!vec2<bool>(true, arg_0)), false));
    var_0 = arg_0;
    var_0 = !(!(!(u_input.d != 41207i) | arg_0));
    let var_1 = ~46054i < max(1i, abs(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.c, u_input.c), u_input.c)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(824f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(func_1(false), -1646f, vec2<u32>(51808u, 4294967295u) << (u_input.b.zx % vec2<u32>(32u)), ~u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -223f)))), _wgslsmith_f_op_f32(ceil(-211f)), 1337f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1949f, _wgslsmith_div_f32(1042f, -326f), _wgslsmith_f_op_f32(f32(-1f) * -1757f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1109f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -148f)), 28570u);
    var var_2 = Struct_1(-11457i, abs(~firstTrailingBit(vec4<u32>(31929u, 4294967295u, u_input.b.x, u_input.b.x) & vec4<u32>(1u, var_1.c, u_input.a, var_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(770f, -242f)))), vec4<bool>(false, true, true, u_input.d > 0i));
    var var_3 = var_0.x;
    var_2 = Struct_1(firstLeadingBit(7616i), ~u_input.b, _wgslsmith_f_op_f32(func_4(true, var_2.c, ~(var_2.b.wx << (~vec2<u32>(4294967295u, 115619u) % vec2<u32>(32u))), _wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.zw))), vec4<bool>(all(!var_2.d), false, true, false));
    var_3 = 878f;
    var var_4 = abs(~(_wgslsmith_mult_u32(~1u, ~var_2.b.x) ^ max(u_input.b.x, ~var_1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, var_0, _wgslsmith_f_op_vec2_f32(-var_0.ww), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(13120u, ~3026u, _wgslsmith_dot_vec3_u32(u_input.b.yzx, vec3<u32>(var_1.c, 0u, u_input.a)), 1u)), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(var_2.b.ww >> (vec2<u32>(var_2.b.x, 0u) % vec2<u32>(32u)), vec2<u32>(u_input.b.x, 16066u)), 4294967295u | ~var_2.b.x, _wgslsmith_mod_u32(u_input.a, ~var_1.c))));
}

