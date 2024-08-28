struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_i32(0i, arg_1.a);
    let var_1 = arg_1;
    let var_2 = vec2<bool>(!any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, false, false), any(vec4<bool>(true, true, true, true)))), true);
    let var_3 = var_1.b.x;
    var var_4 = -var_1.a;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1993f)), -546f) * var_3), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 287f, var_2.x));
}

fn func_2(arg_0: u32, arg_1: bool) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~vec3<u32>(arg_0, arg_0, 20511u), Struct_1(-28343i, vec3<f32>(564f, -2065f, 892f)))))));
    var var_1 = reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(firstTrailingBit(abs(vec2<i32>(-4277i, -2147483647i))), vec2<i32>(_wgslsmith_add_i32(-8978i, -44109i), max(0i, -7638i)), vec2<i32>(1i, 44023i << (arg_0 % 32u))), vec2<i32>(~(i32(-1i) * -1289i), 40949i)));
    var_1 = 2147483647i;
    var var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, ~(~0u), min(~13742u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, 1u), vec4<u32>(0u, arg_0, 1u, 0u)))), ~(~(~vec3<u32>(u_input.a, 23409u, arg_0)))), vec3<u32>(88577u, 1u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_0, arg_0, u_input.a), vec3<u32>(0u, arg_0, arg_0), false), _wgslsmith_sub_vec3_u32(vec3<u32>(19494u, arg_0, 6858u), vec3<u32>(105650u, u_input.a, arg_0))) << (19719u % 32u)));
    var var_3 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, 827f), vec2<f32>(var_0, var_0))))) * vec2<f32>(_wgslsmith_f_op_f32(step(var_0, 1431f)), _wgslsmith_f_op_f32(ceil(var_0)))), !(!(!vec2<bool>(false, arg_1))), ~reverseBits(var_2.zx), true, arg_0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(594f * var_0) - _wgslsmith_f_op_f32(-var_0)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_0))))), 321f, any(!vec4<bool>(arg_1, arg_1, arg_1, true)))));
    return vec2<u32>(abs(36922u), 37726u);
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<bool>) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(689f - 343f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(584f))))));
    let var_1 = firstLeadingBit(~_wgslsmith_mod_vec3_u32(max(~vec3<u32>(arg_1.x, 29143u, 1u), ~vec3<u32>(arg_1.x, u_input.a, 0u)), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, u_input.a), vec3<u32>(arg_1.x, 9076u, u_input.a)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2381f) + _wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(-1231f - _wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-332f, var_0.x, var_0.x) - vec3<f32>(var_0.x, 484f, 280f)))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2086f, var_0.x, -304f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(804f, var_0.x, 313f) - vec3<f32>(-1194f, var_0.x, var_0.x)))))));
    return _wgslsmith_dot_vec3_i32(countOneBits(-_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, arg_0, -2147483647i), vec3<i32>(2147483647i, arg_0, arg_0)) >> (~reverseBits(var_1) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(select(~vec3<i32>(arg_0, arg_0, -1498i), vec3<i32>(-1i) * -vec3<i32>(1i, arg_0, 2147483647i), vec3<bool>(false, true, var_2.x >= -833f)), ~abs(min(vec3<i32>(0i, -33639i, 0i), vec3<i32>(arg_0, arg_0, arg_0)))));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_3(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(46015i, -2545i), -2147483647i, ~1i), func_4(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -1342i), vec2<i32>(33810i, -156i)), _wgslsmith_clamp_vec2_u32(func_2(arg_1.x, true), firstLeadingBit(vec2<u32>(4294967295u, u_input.a)), vec2<u32>(u_input.a, u_input.a)), vec3<bool>(true, true, true))), Struct_1(0i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(677f, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-552f, 697f, 912f)), !any(vec3<bool>(false, true, false))))), _wgslsmith_clamp_vec2_u32(~arg_1.yy, reverseBits(~(arg_1.yw | vec2<u32>(arg_1.x, arg_1.x))), func_2(u_input.a, any(vec2<bool>(true, true)))));
    let var_1 = vec4<bool>(all(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), true)), !(!(~u_input.a >= ~var_0.c.x)), any(select(vec2<bool>(false, any(vec3<bool>(true, false, false))), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), false)))), (true && !all(vec2<bool>(false, true))) && false);
    var var_2 = var_0.b;
    let var_3 = vec2<i32>(_wgslsmith_add_i32(1i, var_0.a.x), -1i) | _wgslsmith_add_vec2_i32(var_0.a, _wgslsmith_mod_vec2_i32((var_0.a ^ vec2<i32>(2147483647i, -37421i)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(6027i, 39504i), vec2<i32>(var_0.b.a, -14999i)), _wgslsmith_add_vec2_i32(var_0.a, var_0.a)));
    let var_4 = _wgslsmith_mult_vec2_u32(abs(arg_1.wy), ~var_0.c) << (func_2(~29610u, !select(var_1.x && false, var_1.x, any(var_1.xw))) % vec2<u32>(32u));
    return Struct_2(var_0.b.b.yy, !vec2<bool>(!(23233u >= var_4.x), !any(vec2<bool>(var_1.x, var_1.x))), min(~select(var_4 ^ vec2<u32>(1u, 50900u), vec2<u32>(0u, 0u) << (vec2<u32>(var_4.x, var_4.x) % vec2<u32>(32u)), false), abs(arg_1.ww)), !(!(true & all(var_1))), var_0.c.x);
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> f32 {
    let var_0 = Struct_1(-reverseBits(30582i), _wgslsmith_f_op_vec3_f32(vec3<f32>(468f, _wgslsmith_f_op_f32(f32(-1f) * -268f), -1209f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-287f, _wgslsmith_f_op_f32(func_3(vec3<u32>(14543u, u_input.a, 4294967295u), Struct_1(-1818i, vec3<f32>(198f, arg_0.a.x, arg_1)))), _wgslsmith_f_op_f32(round(1026f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1459f), -818f) * _wgslsmith_f_op_f32(func_3(~vec3<u32>(arg_0.e, 54065u, arg_0.c.x), Struct_1(0i, vec3<f32>(-103f, var_0.b.x, -283f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(319f - _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(825f))))))));
    var var_2 = func_1(var_0.b.x, ~(~(max(vec4<u32>(44133u, 4294967295u, 55324u, 63543u), vec4<u32>(u_input.a, arg_0.c.x, 0u, arg_0.c.x)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(4107u, 94224u, arg_0.c.x, u_input.a), vec4<u32>(u_input.a, 15552u, 1u, 24740u), vec4<u32>(104212u, arg_0.e, 21207u, u_input.a)) % vec4<u32>(32u))))).d;
    var_2 = false;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-968f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a.x * -712f), var_1.x, false))), -874f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -310f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(404f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(458f, -384f) * _wgslsmith_f_op_f32(810f * 1750f)), _wgslsmith_f_op_f32(-355f - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-447f)) + -989f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -949f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(453f, 1224f, 662f, -233f)) + vec4<f32>(632f, -306f, 1677f, 728f)))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_5(func_1(_wgslsmith_f_op_f32(-var_0.x), countOneBits(abs(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))))));
    let var_2 = ~max(_wgslsmith_add_u32(abs(978u), ~10141u) | _wgslsmith_sub_u32(u_input.a, u_input.a), ~(~u_input.a | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(1u, u_input.a, u_input.a))));
    let var_3 = abs(vec4<i32>(abs(firstTrailingBit(countOneBits(-43300i))), ~1766i >> (_wgslsmith_mod_u32(4294967295u << (var_2 % 32u), 5700u) % 32u), -(_wgslsmith_add_i32(-1i, 2147483647i) >> (_wgslsmith_mult_u32(u_input.a, 1334u) % 32u)), ~abs(firstLeadingBit(2147483647i))));
    var var_4 = func_2(reverseBits(~reverseBits(~var_2)), (func_1(_wgslsmith_f_op_f32(var_0.x - var_0.x), vec4<u32>(var_2, u_input.a, 4294967295u, 0u)).c.x < ~4294967295u) && all(vec2<bool>(true, 1092f > var_0.x))).x;
    var_0 = vec4<f32>(505f, var_0.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) + _wgslsmith_div_f32(var_0.x, var_0.x)))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-645f)))) + -347f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(func_1(-596f, vec4<u32>(73147u, 31864u, var_2, var_2)), 369f)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(step(-607f, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, select(var_3.zwz, -firstLeadingBit(var_3.xyw), all(vec2<bool>(true, false))) ^ var_3.yzx, var_3.x, 1u);
}

