struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> i32 {
    var var_0 = Struct_1(select(_wgslsmith_sub_vec2_u32(vec2<u32>(33797u, 0u), arg_1.a), ~abs(reverseBits(vec2<u32>(u_input.a, 0u))), select(select(vec2<bool>(true, false), select(vec2<bool>(false, arg_3), vec2<bool>(arg_3, true), vec2<bool>(arg_3, false)), select(vec2<bool>(false, arg_3), vec2<bool>(arg_3, true), vec2<bool>(true, arg_3))), select(select(vec2<bool>(true, arg_3), vec2<bool>(arg_3, arg_3), false), select(vec2<bool>(arg_3, true), vec2<bool>(arg_3, arg_3), false), select(vec2<bool>(arg_3, true), vec2<bool>(arg_3, true), vec2<bool>(true, arg_3))), !arg_3)), ~(~select(1u, arg_2.b, select(false, arg_3, arg_3))), arg_2.c, vec2<i32>(i32(-1i) * -74444i, -2147483647i));
    var_0 = Struct_1(var_0.a, _wgslsmith_add_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_1.a.x, arg_1.b))), ~_wgslsmith_mult_u32(arg_2.b, ~4294967295u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-721f, arg_2.c.x))))), _wgslsmith_f_op_vec2_f32(max(arg_1.c, arg_2.c))), arg_1.d);
    let var_1 = ~select(vec3<u32>(~1057u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.a), vec3<u32>(var_0.b, 0u, 1u)), ~0u, ~(~1u)), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, 72288u, 1u), vec3<u32>(var_0.a.x, 4294967295u, var_0.b))), arg_3);
    var var_2 = -463f;
    var_0 = arg_1;
    return _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -var_0.d, vec2<i32>(1i | arg_1.d.x, ~(i32(-1i) * -4146i))), -5078i);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: vec3<bool>, arg_3: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_sub_vec4_i32(select(vec4<i32>(-48979i, func_3(arg_3, Struct_1(vec2<u32>(u_input.a, 4294967295u), 98980u, vec2<f32>(arg_1, -405f), vec2<i32>(-6630i, 2147483647i)), Struct_1(vec2<u32>(0u, 1u), 4294967295u, vec2<f32>(-1049f, -1600f), arg_0.yx), arg_2.x), 1i << (u_input.a % 32u), countOneBits(arg_0.x)), _wgslsmith_sub_vec4_i32(-vec4<i32>(-1118i, arg_0.x, 1i, arg_0.x), firstLeadingBit(vec4<i32>(arg_0.x, arg_3.x, arg_0.x, arg_0.x))), !any(vec3<bool>(true, arg_2.x, arg_2.x))), countOneBits(vec4<i32>(arg_0.x, arg_3.x, arg_0.x, 1i))) ^ _wgslsmith_mult_vec4_i32(arg_0 << (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(21199u, 38386u, 24196u, 35640u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_div_i32(1i, _wgslsmith_add_i32(-5226i, arg_0.x)), min(29794i, 7257i), 1i, _wgslsmith_mod_i32(6795i >> (0u % 32u), ~0i)));
    var var_1 = vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -524f) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-463f, arg_1)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
    var var_3 = Struct_1(vec2<u32>(reverseBits(u_input.a), 99280u), 85259u, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 1170f)), _wgslsmith_f_op_f32(-1716f - _wgslsmith_f_op_f32(ceil(-1250f)))), _wgslsmith_f_op_vec2_f32(select(var_1.zx, _wgslsmith_f_op_vec2_f32(vec2<f32>(1772f, var_1.x) + vec2<f32>(var_1.x, arg_1)), arg_2.xz)))), _wgslsmith_mod_vec2_i32(~(~(arg_0.yw | var_0.zz)), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(arg_3, vec3<i32>(-1i, 33433i, arg_3.x)), -4201i), vec2<i32>(_wgslsmith_mod_i32(28194i, var_0.x), arg_3.x))));
    let var_4 = Struct_1(vec2<u32>(22891u, ~(~firstLeadingBit(90412u))), 26228u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.zy)) - _wgslsmith_f_op_vec2_f32(var_1.xy * _wgslsmith_f_op_vec2_f32(-var_1.xz)))), vec2<i32>(var_3.d.x, var_0.x));
    return _wgslsmith_f_op_f32(ceil(-196f));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec2<f32> {
    var var_0 = arg_0;
    let var_1 = vec3<i32>(-1i) * -((-vec3<i32>(-5128i, var_0.d.x, -2147483647i) >> (~vec3<u32>(u_input.a, arg_1.b, 133258u) % vec3<u32>(32u))) & vec3<i32>(var_0.d.x, 2147483647i, _wgslsmith_mod_i32(24770i, arg_1.d.x)));
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(countOneBits(_wgslsmith_div_u32(0u >> (u_input.a % 32u), _wgslsmith_div_u32(arg_1.b, 103126u))), arg_0.b, 1003u, ~4294967295u), ~_wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 1u, 50520u), vec4<u32>(52468u, 20103u, arg_1.b, 4294967295u), vec4<u32>(0u, 44910u, 1u, u_input.a)), ~vec4<u32>(0u, arg_2, 83848u, arg_0.a.x)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(_wgslsmith_sub_vec4_i32(~vec4<i32>(1i, -2147483647i, var_0.d.x, -48447i), vec4<i32>(arg_1.d.x, var_0.d.x, -66995i, 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x)), vec3<bool>(any(vec2<bool>(false, true)), true, true), -var_1)))));
    var var_4 = vec4<bool>(!all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false)) | any(vec2<bool>(true, true)), select(all(vec2<bool>(true, false)), ~_wgslsmith_dot_vec2_u32(var_0.a, vec2<u32>(35439u, arg_1.a.x)) >= 71953u, var_0.d.x < (-56709i << (_wgslsmith_div_u32(33127u, arg_0.a.x) % 32u))), true, true);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_0.c)) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-600f, -1357f))), vec2<f32>(arg_0.c.x, 622f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.c - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-665f, -1725f)))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_sub_vec2_u32(~vec2<u32>(17970u << (u_input.a % 32u), 2522u), firstTrailingBit(reverseBits(vec2<u32>(83945u, 11308u)) & _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 49850u), vec2<u32>(u_input.a, 28423u)))), u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<u32>(31445u, 4294967295u), u_input.a, vec2<f32>(-1000f, 580f), vec2<i32>(-2147483647i, -2147483647i)), Struct_1(vec2<u32>(u_input.a, u_input.a), 15687u, vec2<f32>(-1295f, 634f), vec2<i32>(-16210i, 17185i)), u_input.a)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1615f, -286f))))) * vec2<f32>(-124f, -745f)), vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(~vec2<i32>(-9166i, 0i), -vec2<i32>(24398i, -4074i)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-627f * 721f) * _wgslsmith_f_op_f32(func_2(~(~_wgslsmith_div_vec4_i32(vec4<i32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x), vec4<i32>(var_0.d.x, var_0.d.x, -2147483647i, var_0.d.x))), var_0.c.x, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true)))), -(~max(vec3<i32>(var_0.d.x, -26946i, var_0.d.x), vec3<i32>(var_0.d.x, -40190i, -20187i))))));
    let var_2 = Struct_1(var_0.a, _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(u_input.a, var_0.b, 31925u, 63989u))), vec4<u32>(firstLeadingBit(~0u), 23241u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b, u_input.a, var_0.b), vec3<u32>(69761u, 0u, var_0.b), vec3<u32>(1u, 0u, u_input.a)), ~vec3<u32>(u_input.a, var_0.a.x, 0u)), _wgslsmith_mod_u32(~u_input.a, u_input.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c) + _wgslsmith_f_op_vec2_f32(vec2<f32>(907f, 981f) + var_0.c))), vec2<f32>(var_1, var_1)), var_0.d);
    var var_3 = select(vec3<bool>(true, true, any(vec3<bool>(true, true, false))), vec3<bool>(true, (-2147483647i != _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.x, 1i, -1i, 0i), vec4<i32>(-68186i, var_2.d.x, var_0.d.x, 24095i))) || !(var_2.c.x > var_1), all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)))), true);
    var var_4 = _wgslsmith_f_op_f32(func_2(vec4<i32>(~(abs(var_2.d.x) ^ ~1i), _wgslsmith_div_i32(-1i, 1i), select(37648i, ~min(19076i, 30599i), true), min(var_2.d.x ^ var_0.d.x, _wgslsmith_div_i32(~var_0.d.x, var_0.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(min(-419f, -320f))), select(select(vec3<bool>(true, any(vec2<bool>(true, true)), false), vec3<bool>(var_3.x, var_3.x, var_3.x), true), !vec3<bool>(all(vec4<bool>(true, var_3.x, var_3.x, var_3.x)), var_3.x, any(vec4<bool>(true, false, var_3.x, true))), select(vec3<bool>(var_3.x, var_3.x, select(var_3.x, true, var_3.x)), select(vec3<bool>(var_3.x, true, true), !vec3<bool>(false, var_3.x, false), false), _wgslsmith_sub_u32(33076u, var_0.a.x) != _wgslsmith_mod_u32(var_0.b, 30167u))), firstTrailingBit(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-2147483647i, var_0.d.x, -2390i)), _wgslsmith_sub_vec3_i32(-vec3<i32>(var_0.d.x, var_0.d.x, var_2.d.x), _wgslsmith_div_vec3_i32(vec3<i32>(6086i, -17014i, var_0.d.x), vec3<i32>(1i, var_2.d.x, -38680i))), vec3<i32>(min(var_2.d.x, var_2.d.x), var_2.d.x, firstTrailingBit(-3201i))))));
    var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - var_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(var_2.a, 4048u, var_0.c, var_0.d), var_0, ~var_0.b)).x)));
    var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.c.x)) * var_1);
    var_3 = vec3<bool>(any(!(!select(vec4<bool>(false, var_3.x, false, false), vec4<bool>(var_3.x, var_3.x, false, false), vec4<bool>(true, true, true, false)))), false, _wgslsmith_add_i32(1i, var_0.d.x) >= 0i);
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-abs(~(-vec4<i32>(-2147483647i, var_2.d.x, -27269i, -40873i))), vec4<u32>(select(1u, 0u, any(vec2<bool>(var_3.x, true))), ~var_5.a.x, ~4294967295u, 24302u << (var_2.a.x % 32u)) ^ ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.b, 0u, 48121u, 33521u), vec4<u32>(4294967295u, 84272u, var_2.a.x, var_5.b), ~vec4<u32>(var_0.b, u_input.a, var_0.a.x, 1u)), -1623f, ~min(var_5.d.x >> (_wgslsmith_clamp_u32(4294967295u, 32950u, 8800u) % 32u), var_0.d.x | 0i));
}

