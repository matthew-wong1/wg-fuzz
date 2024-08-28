struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = arg_0;
    var var_1 = ~_wgslsmith_mult_i32(u_input.b.x & u_input.b.x, ~_wgslsmith_sub_i32(u_input.b.x, 1i));
    var_1 = u_input.b.x;
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(-36989i, countOneBits(_wgslsmith_mult_i32(u_input.b.x, 0i)), abs(i32(-1i) * -28939i), -1i), countOneBits(vec4<i32>(0i, u_input.b.x, u_input.b.x, -u_input.b.x))) ^ vec4<i32>(~u_input.b.x, 1i, select(abs(1i), i32(-1i) * -15004i, true), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.xz) >> (u_input.a % 32u));
    let var_3 = Struct_2(arg_0.a, arg_0.b);
    return -(~select(vec4<i32>(firstTrailingBit(var_2.x), reverseBits(1i), 1i, 1i), select(vec4<i32>(-1i, -61957i, var_2.x, u_input.b.x), vec4<i32>(var_2.x, -2147483647i, -20893i, -2147483647i), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
}

fn func_2() -> f32 {
    let var_0 = reverseBits(_wgslsmith_div_vec4_i32(func_3(Struct_2(Struct_1(-308f), Struct_1(1091f))), ~(~vec4<i32>(0i, -1811i, u_input.b.x, -24738i))) | (vec4<i32>(~u_input.b.x, -u_input.b.x, min(u_input.b.x, 2147483647i), ~(-15498i)) ^ -(vec4<i32>(-2147483647i, 2147483647i, 0i, -1i) & vec4<i32>(-1i, u_input.b.x, -2147483647i, u_input.b.x))));
    var var_1 = 69300u;
    var var_2 = ~select(min(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 34579u, 4294967295u, 23375u), max(vec4<u32>(5720u, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a))), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, 39248u)))), abs(vec4<u32>(u_input.a, 0u, 0u, 255u)) << ((abs(vec4<u32>(30524u, u_input.a, u_input.a, u_input.a)) << ((vec4<u32>(u_input.a, u_input.a, u_input.a, 61543u) & vec4<u32>(u_input.a, 27389u, u_input.a, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<bool>(false, var_0.x != (0i << (u_input.a % 32u)), true, true));
    var var_3 = -18601i;
    var_1 = max(18809u, ~abs(u_input.a));
    return 569f;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = 1u <= u_input.a;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), 253f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f) - _wgslsmith_f_op_f32(f32(-1f) * -1051f)))) <= _wgslsmith_f_op_f32(func_2());
    var var_2 = !vec3<bool>(true, false, -5671i > countOneBits(u_input.b.x));
    var var_3 = -(u_input.b.yy | reverseBits(~u_input.b.xx));
    let var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(-firstLeadingBit(u_input.b), u_input.b), u_input.b.x, i32(-1i) * -1i), _wgslsmith_mult_vec4_i32(-firstLeadingBit(~vec4<i32>(var_3.x, -53854i, var_3.x, u_input.b.x)), -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1490i, u_input.b.x, u_input.b.x, -1i), vec4<i32>(u_input.b.x, -1i, -74627i, var_3.x)), u_input.b.x, var_3.x, _wgslsmith_add_i32(-3638i, var_3.x))));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(660f * -2092f))), -978f));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = -select(vec2<i32>(arg_0.x, 2147483647i), min(vec2<i32>(arg_0.x, u_input.b.x | u_input.b.x), vec2<i32>(-arg_0.x, abs(arg_0.x))), vec2<bool>(true, true));
    var_0 = -vec2<i32>(-13451i, -29319i);
    var var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-arg_2.b.a), -1061f)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -104f))));
    global0 = any(!select(vec2<bool>(false, any(vec3<bool>(false, true, false))), select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(false, true)), true));
    return vec3<f32>(arg_2.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.b.a, var_2.a), _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-155f)), _wgslsmith_f_op_f32(-300f + _wgslsmith_f_op_f32(f32(-1f) * -918f))))), _wgslsmith_f_op_f32(func_1(arg_1.zyy << (arg_1.wzy % vec3<u32>(32u))).a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1794f, _wgslsmith_f_op_f32(abs(-661f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(130f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1339f, 1044f, -852f) + vec3<f32>(-775f, 1192f, 353f))))) * _wgslsmith_f_op_vec3_f32(func_4(vec4<i32>(-16475i, _wgslsmith_dot_vec3_i32(vec3<i32>(-17525i, 1i, 12329i), vec3<i32>(-1i, u_input.b.x, u_input.b.x)), u_input.b.x | u_input.b.x, max(-67i, u_input.b.x)), vec4<u32>(17477u, abs(u_input.a), 1u, 54746u), Struct_2(Struct_1(-1000f), func_1(vec3<u32>(u_input.a, 1u, u_input.a)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(-1349f)), -358f, 1000f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(337f, -1143f, -127f) - vec3<f32>(423f, 193f, 1901f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(670f, -1086f, 1152f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true))), vec3<f32>(-450f, -113f, _wgslsmith_f_op_f32(func_2())), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false))))));
    global0 = false;
    var var_1 = i32(-1i) * -2147483647i;
    let var_2 = vec3<i32>(reverseBits(-1i) & _wgslsmith_clamp_i32(0i, -(i32(-1i) * -6204i), -_wgslsmith_clamp_i32(-9829i, u_input.b.x, u_input.b.x)), u_input.b.x, u_input.b.x);
    var var_3 = vec4<f32>(927f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-576f + -638f)))), var_0.x, _wgslsmith_div_f32(179f, _wgslsmith_f_op_vec3_f32(func_4(abs(countOneBits(vec4<i32>(u_input.b.x, -32036i, -1i, -14265i))), abs(vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), Struct_2(func_1(vec3<u32>(1u, 4294967295u, u_input.a)), func_1(vec3<u32>(u_input.a, 36876u, u_input.a))))).x));
    global0 = true;
    var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 2444f, var_3.x, var_0.x)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(638f, var_0.x, var_0.x, var_0.x)))))))));
    var var_4 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, -47667i), vec4<i32>(2147483647i, 0i, -1i, 33291i)), abs(vec4<u32>(87556u, 14789u, u_input.a, 5672u)), Struct_2(Struct_1(var_3.x), Struct_1(580f)))).x) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(506f, -687f) - _wgslsmith_div_f32(489f, _wgslsmith_f_op_f32(floor(-2689f))))), _wgslsmith_f_op_f32(func_1(~(~vec3<u32>(u_input.a, u_input.a, u_input.a))).a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1221f)) - var_3.x)));
    var_4 = _wgslsmith_f_op_vec3_f32(var_3.yxy - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.wzx)) - vec3<f32>(768f, _wgslsmith_f_op_f32(-777f - _wgslsmith_f_op_f32(f32(-1f) * -117f)), _wgslsmith_f_op_f32(ceil(-794f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(max(vec3<u32>(64435u, u_input.a, u_input.a) >> (~vec3<u32>(1u, 52388u, 25547u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, u_input.a, 1u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, 45043u))), vec3<u32>(u_input.a, 1u, select(0u, u_input.a, true) << (_wgslsmith_div_u32(10100u, 102764u) % 32u))), ~var_2, ~vec3<u32>(max(_wgslsmith_mult_u32(u_input.a, 4294967295u), u_input.a), 1u, u_input.a));
}

