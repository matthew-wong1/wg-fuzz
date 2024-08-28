struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec4<f32>) -> i32 {
    let var_0 = arg_2.a.x & true;
    var var_1 = Struct_3(Struct_2(Struct_1(select(vec2<bool>(arg_1.a.a.a.x, var_0), vec2<bool>(false, false), !vec2<bool>(arg_2.a.x, false)), arg_2.b, reverseBits(~vec3<u32>(u_input.c.x, 4294967295u, u_input.a.x))), vec2<f32>(_wgslsmith_f_op_f32(sign(-912f)), 641f), Struct_1(arg_1.a.c.a, arg_1.a.a.b, u_input.a)), arg_1.b);
    var var_2 = Struct_3(arg_1.a, ~(~vec2<i32>(u_input.b, u_input.b & -10925i)));
    let var_3 = firstLeadingBit(-firstTrailingBit(~(vec3<i32>(var_1.b.x, 35805i, u_input.b) & vec3<i32>(-16530i, -2147483647i, var_1.b.x))));
    let var_4 = Struct_2(Struct_1(!(!vec2<bool>(false, var_1.a.a.a.x)), var_2.a.c.b, u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(arg_1.a.a.b, arg_3.wz), arg_1.a.c.b)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-779f, arg_2.b.x))), firstLeadingBit(u_input.b) == -1i)) * arg_2.b), Struct_1(vec2<bool>(true, true), var_2.a.c.b, max(_wgslsmith_sub_vec3_u32(var_1.a.a.c, vec3<u32>(9672u, 0u, var_2.a.a.c.x)) << (~vec3<u32>(42908u, 28700u, var_2.a.a.c.x) % vec3<u32>(32u)), ~var_1.a.a.c)));
    return (arg_1.b.x ^ (i32(-1i) * -24405i)) & _wgslsmith_div_i32(-13424i, max(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_3.x, arg_1.b.x, -16531i), vec4<i32>(var_2.b.x, var_1.b.x, 27762i, -2147483647i)), firstLeadingBit(-1i)), 0i));
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-286f + -1223f)))))));
    var var_1 = func_3(23139u, Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(1084f, 656f) + vec2<f32>(-1000f, -1015f)), ~vec3<u32>(u_input.a.x, 4294967295u, arg_0.x)), vec2<f32>(-592f, 1000f), Struct_1(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<f32>(var_0, 219f), arg_0)), ~(-vec2<i32>(0i, u_input.b) & _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b), vec2<i32>(27617i, u_input.b)))), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))), _wgslsmith_add_vec3_u32(arg_0, vec3<u32>(u_input.a.x, arg_0.x, u_input.a.x) << ((vec3<u32>(1u, 0u, 4294967295u) & vec3<u32>(u_input.a.x, u_input.a.x, arg_0.x)) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -791f, var_0) - vec4<f32>(var_0, -744f, -1000f, var_0))))));
    var_1 = u_input.b;
    var_1 = -(u_input.b << (~u_input.c.x % 32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(152f, var_0, var_0) - vec3<f32>(var_0, -428f, var_0)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_0, 525f))))))));
    return Struct_3(Struct_2(Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1577f), _wgslsmith_f_op_f32(sign(var_2.x))), vec3<u32>(firstLeadingBit(arg_0.x), 45732u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(23427u, 43924u, 52750u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-896f, var_2.x) + vec2<f32>(var_2.x, var_2.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.yx + vec2<f32>(var_2.x, var_2.x)))), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, false), 32561u >= arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(-244f + var_2.x), _wgslsmith_f_op_f32(-392f + -2080f)), ~(~vec3<u32>(0u, 37415u, 1u)))), ~vec2<i32>(~10700i, u_input.b) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b & u_input.b, -u_input.b), select(vec2<i32>(1i, u_input.b), vec2<i32>(-2147483647i, u_input.b), true) | -vec2<i32>(-8255i, u_input.b)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = u_input.b;
    var var_1 = func_2(u_input.a);
    var var_2 = u_input.a;
    let var_3 = var_1.a.c;
    var_1 = Struct_3(Struct_2(Struct_1(vec2<bool>(any(var_3.a), !var_1.a.c.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_3.b.x) * var_1.a.a.b) + _wgslsmith_f_op_vec2_f32(floor(var_1.a.a.b))), u_input.a), _wgslsmith_div_vec2_f32(var_3.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.x, var_1.a.b.x) - var_3.b))), Struct_1(!vec2<bool>(var_3.a.x, var_1.a.a.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-810f, 582f)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(28545u, 48u, var_3.c.x), u_input.a))), var_1.b);
    return func_2(vec3<u32>(var_3.c.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 39614u), var_3.c.x) | ~4294967295u, var_1.a.c.c.x)).a.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = var_1;
    return arg_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, -2052f) - func_2(vec3<u32>(33771u, u_input.a.x, arg_0.c.x)).a.b.x)), -384f, func_2(~vec3<u32>(42721u, u_input.a.x, 6188u)).a.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(394f)), _wgslsmith_div_f32(arg_0.b.x, 151f), 2818f, _wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x)) - vec4<f32>(_wgslsmith_f_op_f32(trunc(2646f)), -133f, arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-181f, -2948f, 521f, arg_0.b.x))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(814f, arg_0.b.x, -1526f, arg_0.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(540f, -1042f, 632f, arg_0.b.x)))))), select(arg_3, !select(vec4<bool>(arg_3.x, false, true, arg_3.x), vec4<bool>(arg_3.x, arg_3.x, false, true), arg_3), !(true && (arg_3.x && arg_2.x)))));
    var var_1 = Struct_1(!vec2<bool>(false, any(!vec2<bool>(arg_2.x, arg_2.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1416f, var_0.x) - var_0.wy) - _wgslsmith_f_op_vec2_f32(arg_0.b * vec2<f32>(-998f, 1423f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1484f, arg_0.b.x)), var_0.yy)))), arg_0.c);
    var_1 = Struct_1(vec2<bool>(all(vec2<bool>(41432i != arg_1.x, true)), var_1.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -559f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.b.x)), _wgslsmith_f_op_f32(-var_1.b.x))) - var_0.yz), u_input.a);
    var_1 = func_2(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.c.x | var_1.c.x, arg_0.c.x << (var_1.c.x % 32u), ~var_1.c.x), u_input.a)).a.c;
    var_1 = func_4(_wgslsmith_clamp_vec3_i32(arg_1.yyx, _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(-arg_1.wyy, vec3<i32>(u_input.b, -1i, -1i)), countOneBits(reverseBits(arg_1.wxz))), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(0i, arg_1.x, arg_1.x)), arg_1.yxw)), Struct_2(func_2(max(func_2(arg_0.c).a.c.c, vec3<u32>(u_input.c.x, 50656u, arg_0.c.x))).a.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, 236f) + arg_0.b) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b) - var_0.xy)), func_2(var_1.c ^ var_1.c).a.a), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(723f)) + _wgslsmith_f_op_f32(select(var_1.b.x, var_0.x, true))), -1878f, _wgslsmith_f_op_f32(round(-270f)), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_div_f32(-405f, var_0.x)))));
    return func_2(vec3<u32>(min(~u_input.a.x, ~1828u), select(11271u, u_input.a.x, true), ~(_wgslsmith_clamp_u32(u_input.c.x, var_1.c.x, 32611u) | _wgslsmith_dot_vec2_u32(vec2<u32>(12752u, u_input.a.x), vec2<u32>(var_1.c.x, arg_0.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(-vec3<i32>(-1i, u_input.b << (9150u % 32u), 0i), Struct_2(func_1(-1i), vec2<f32>(-1191f, _wgslsmith_f_op_f32(2430f - -1000f)), Struct_1(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<f32>(-1290f, 1138f), u_input.a)), vec4<f32>(776f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-676f)), _wgslsmith_f_op_f32(step(-1048f, -414f)))), -1759f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1123f - 789f))), 613f), vec4<i32>(-16060i, u_input.b, -1i, u_input.b & (2147483647i >> (~u_input.c.x % 32u))), vec2<bool>(true, true), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), func_1(2147483647i).a.x), vec4<bool>(true, false, u_input.b > u_input.b, func_2(u_input.a).a.c.a.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)))));
    let var_1 = vec3<f32>(_wgslsmith_div_f32(var_0.a.b.x, var_0.a.b.x), -804f, var_0.a.c.b.x);
    let var_2 = Struct_2(Struct_1(select(vec2<bool>(var_0.a.c.a.x, var_0.a.a.a.x | true), var_0.a.a.a, !func_4(vec3<i32>(var_0.b.x, 0i, 916i), var_0.a, vec4<f32>(1318f, -458f, -955f, 1000f), var_0.a.a.b.x).a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(240f, -1939f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.x, -1090f), var_0.a.a.b))) - var_1.yz), vec3<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_0.a.c.c.x), ~vec2<u32>(var_0.a.a.c.x, 65722u)), reverseBits(u_input.c.x << (14381u % 32u)))), var_1.yz, func_4(countOneBits(vec3<i32>(~var_0.b.x, reverseBits(u_input.b), _wgslsmith_mult_i32(u_input.b, 1i))), func_5(func_1(var_0.b.x), select(vec4<i32>(-7331i, 0i, 1i, var_0.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, 14435i), vec4<i32>(-2147483647i, u_input.b, -68446i, 2147483647i)), func_4(vec3<i32>(-24360i, 0i, 58330i), Struct_2(Struct_1(vec2<bool>(true, var_0.a.c.a.x), vec2<f32>(752f, -1220f), vec3<u32>(4294967295u, 34748u, 70384u)), vec2<f32>(425f, var_0.a.c.b.x), Struct_1(vec2<bool>(var_0.a.c.a.x, var_0.a.c.a.x), var_0.a.c.b, var_0.a.a.c)), vec4<f32>(var_0.a.a.b.x, -675f, 1354f, var_0.a.c.b.x), 285f).a.x), !select(vec2<bool>(var_0.a.c.a.x, var_0.a.a.a.x), var_0.a.c.a, false), vec4<bool>(var_0.a.c.a.x, u_input.b == 2147483647i, func_1(-9162i).a.x, true)).a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.b.x, -111f, var_0.a.a.b.x, var_0.a.b.x))))), -771f));
    let var_3 = var_0.a.c.a.x;
    var_0 = func_5(var_0.a.a, _wgslsmith_div_vec4_i32(min(vec4<i32>(~u_input.b, _wgslsmith_div_i32(var_0.b.x, var_0.b.x), var_0.b.x, ~var_0.b.x), vec4<i32>(-1i) * -vec4<i32>(6921i, var_0.b.x, u_input.b, -1i)), -abs(~vec4<i32>(2147483647i, -1i, u_input.b, 13168i))), var_0.a.c.a, !(!(!(!vec4<bool>(false, var_0.a.a.a.x, var_2.c.a.x, var_0.a.a.a.x)))));
    var var_4 = func_5(func_2(vec3<u32>(59457u, ~(~u_input.a.x), ~_wgslsmith_clamp_u32(23992u, 26223u, 0u))).a.a, vec4<i32>(18504i, u_input.b, u_input.b, 1i), vec2<bool>(u_input.b != 7036i, var_0.a.c.a.x), vec4<bool>(all(vec3<bool>(false && var_2.a.a.x, var_0.a.c.a.x, var_1.x <= var_0.a.a.b.x)), func_5(Struct_1(vec2<bool>(var_0.a.a.a.x, var_2.a.a.x), vec2<f32>(1555f, var_2.a.b.x), u_input.a), ~abs(vec4<i32>(var_0.b.x, 2147483647i, var_0.b.x, u_input.b)), vec2<bool>(var_0.a.a.a.x, false), !select(vec4<bool>(var_2.a.a.x, var_2.c.a.x, true, var_2.c.a.x), vec4<bool>(false, var_0.a.c.a.x, var_0.a.c.a.x, true), var_0.a.a.a.x)).a.c.a.x, !(var_2.c.c.x >= u_input.a.x), (func_2(var_0.a.c.c).a.a.b.x == 1000f) && (any(var_0.a.c.a) && var_0.a.c.a.x))).a;
    var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.c.x);
}

