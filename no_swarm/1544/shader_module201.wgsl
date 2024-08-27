struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: u32) -> bool {
    let var_0 = arg_1;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x)))))), !(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(u_input.a.x, 70659u)) >= ~(~0u)), arg_1, !vec3<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), false)), any(vec4<bool>(true, true, true, true)), true), max(vec4<i32>(arg_1.x, var_0.x, var_0.x, ~(1i & arg_1.x)), _wgslsmith_mod_vec4_i32(reverseBits(arg_1), arg_1)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_div_f32(arg_0.x, 966f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(abs(var_1.a)))), select(min(2654i, 38137i) <= (21723i ^ var_1.e.x), !var_1.b, var_1.b), vec4<i32>(-var_0.x, var_1.c.x | arg_1.x, select(arg_1.x, 17568i, false), _wgslsmith_mult_i32(arg_1.x, arg_1.x)) | (firstLeadingBit(arg_1) & firstLeadingBit(vec4<i32>(var_0.x, arg_1.x, -7041i, var_0.x))), !select(select(var_1.d, var_1.d, vec3<bool>(var_1.d.x, true, var_1.d.x)), var_1.d, true || var_1.b), arg_1), false, any(!(!var_1.d.xz)));
    var_1 = var_2.a;
    let var_3 = var_2.a.e.xyw;
    return var_2.a.d.x;
}

fn func_2(arg_0: i32, arg_1: i32) -> bool {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1183f)) * 1000f), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1727f, -2593f, -2436f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1531f, 864f, -1158f))), firstLeadingBit(vec4<i32>(2147483647i, arg_1, arg_1, arg_0)), _wgslsmith_mult_u32(u_input.a.x, firstLeadingBit(1u))), vec4<i32>(arg_0 & _wgslsmith_mod_i32(arg_1, arg_1), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -14232i, arg_1), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, arg_1, arg_0), vec3<i32>(arg_1, 38258i, 0i))), -1i, arg_1), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), _wgslsmith_add_vec4_i32(-(vec4<i32>(-18249i, -576i, arg_0, -47614i) ^ vec4<i32>(-2147483647i, 1i, arg_1, 0i)), vec4<i32>(arg_0, -2147483647i, arg_0 >> (1u % 32u), reverseBits(43985i)))), select(true & func_3(vec3<f32>(1956f, 1746f, -308f), -vec4<i32>(-2147483647i, 0i, -13681i, arg_1), abs(u_input.a.x)), true, ~arg_1 < reverseBits(firstLeadingBit(arg_0))), all(vec4<bool>(u_input.a.x >= max(u_input.a.x, 73748u), true, any(vec3<bool>(true, false, true)) || true, !all(vec3<bool>(false, true, true)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1884f)), var_0.a.a)))), -801f, -209f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1517f)), 957f)))));
    var var_2 = var_0.a;
    let var_3 = var_2.b;
    let var_4 = reverseBits(-(~(vec2<i32>(arg_1, -76562i) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))))) & (vec2<i32>(~_wgslsmith_add_i32(0i, var_2.c.x), -1i) >> (_wgslsmith_mult_vec2_u32(u_input.a.yx, vec2<u32>(select(0u, 27194u, true), 65720u)) % vec2<u32>(32u)));
    return any(var_0.a.d);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> bool {
    return !func_2(24724i, -firstTrailingBit(80945i)) || any(select(vec2<bool>(arg_0 >= arg_0, all(vec2<bool>(true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), all(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-1331f + 3028f), !func_1(reverseBits(36514u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) == true, vec4<i32>(_wgslsmith_div_i32(-39584i, -2147483647i), 0i, -26750i, abs(-1i)), select(!vec3<bool>(false, false, var_0), select(select(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, var_0), false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, var_0), false), true), !vec3<bool>(var_0, var_0, true), vec3<bool>(true, any(vec3<bool>(var_0, var_0, var_0)), var_0 && false)), func_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-763f, 783f, -133f))))), ~vec4<i32>(-15064i, -1i, -1i, -1i) | (vec4<i32>(-2147483647i, -24612i, -1566i, 6044i) >> (vec4<u32>(45222u, u_input.a.x, 27205u, 0u) % vec4<u32>(32u))), u_input.a.x)), vec4<i32>(max(-1i, _wgslsmith_mult_i32(22632i, 4858i)) << (_wgslsmith_div_u32(u_input.a.x, ~u_input.a.x) % 32u), 1i, countOneBits(~abs(-6624i)), -34224i << (~_wgslsmith_div_u32(1u, u_input.a.x) % 32u)));
    let var_2 = !vec2<bool>(var_1.d.x, var_1.d.x);
    let var_3 = var_1.e.x;
    let var_4 = Struct_1(-1553f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, -176f)), 764f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * var_1.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), var_1.c, select(!var_1.d, vec3<bool>(true, func_2(~var_1.e.x, -1i), var_2.x), !var_1.d), ~(~var_1.c));
    var var_5 = min(~u_input.a.x, ~(~_wgslsmith_add_u32(u_input.a.x, 7799u))) ^ _wgslsmith_div_u32(~1u, ~_wgslsmith_mult_u32(18799u, u_input.a.x));
    let var_6 = _wgslsmith_f_op_f32(select(-119f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + var_1.a)) * 1455f))), any(vec4<bool>(true, func_3(vec3<f32>(var_1.a, 611f, -959f), select(vec4<i32>(var_1.e.x, -2147483647i, -12105i, var_4.c.x), vec4<i32>(var_4.e.x, var_4.e.x, var_4.e.x, var_4.e.x), vec4<bool>(var_1.d.x, var_0, false, var_2.x)), 0u), true || var_4.b, false))));
    var var_7 = Struct_1(-1041f, !var_1.b, vec4<i32>(var_4.e.x, min(var_4.e.x, _wgslsmith_div_i32(1i, var_4.e.x)) ^ _wgslsmith_dot_vec3_i32(var_4.c.ywz, vec3<i32>(var_1.e.x, -28933i, var_1.c.x)), 0i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -57977i), vec2<i32>(1i, var_4.e.x), vec2<i32>(0i, 2147483647i)) & ~vec2<i32>(var_4.c.x, 4242i), ~var_4.c.zx)), vec3<bool>(var_1.d.x, false, select(true, true, var_2.x) || !any(vec4<bool>(true, var_0, var_2.x, true))), select(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~var_1.e, _wgslsmith_mod_vec4_i32(var_1.e, var_1.e)), var_1.c), _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(0i, var_1.e.x, 0i, 29783i)), var_1.c, var_4.c), select(select(!vec4<bool>(false, var_2.x, var_1.d.x, var_4.d.x), select(vec4<bool>(var_2.x, var_2.x, var_1.b, var_0), vec4<bool>(var_1.d.x, true, var_2.x, var_1.b), true), true), select(select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(true, false, true, false), var_2.x), vec4<bool>(var_0, false, false, var_2.x), var_0), vec4<bool>(!var_0, func_2(var_1.c.x, var_1.e.x), true, !var_1.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -352f)))), _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_7.a * var_6)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_7.a), -509f))), -1307f));
}

