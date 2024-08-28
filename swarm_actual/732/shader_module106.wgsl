struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: vec3<i32>,
    d: vec2<u32>,
    e: bool,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -925f), _wgslsmith_f_op_f32(step(-1000f, -982f)))), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(305f)), 1985f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-416f)))));
    let var_1 = Struct_1(-max(_wgslsmith_mult_i32(min(0i, 2147483647i), reverseBits(-17515i)), -7605i));
    var var_2 = 1174f;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(467f, var_0))))));
    let var_4 = !vec3<bool>(select(true, _wgslsmith_f_op_f32(ceil(-1319f)) >= _wgslsmith_f_op_f32(-var_0), false), arg_0 && all(select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, true, arg_1.x))), any(select(!arg_1.xy, arg_1.xw, all(vec4<bool>(false, false, false, arg_1.x)))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0)), var_3.x, _wgslsmith_f_op_f32(select(-1347f, _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(ceil(var_0))), any(!vec2<bool>(false, var_4.x))))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(844f)))), _wgslsmith_f_op_f32(max(-122f, 502f)), _wgslsmith_f_op_f32(252f * -165f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_0, var_0) - vec3<f32>(var_3.x, var_3.x, 1127f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(391f, var_0, -379f)))), !(true != any(vec2<bool>(arg_0, arg_1.x))))));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(arg_0.a.x, vec4<bool>(arg_2.e, true, !arg_2.e, all(vec3<bool>(arg_0.a.x, arg_2.b, arg_2.b)))))));
    var var_1 = var_0.yz;
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = !select(arg_0.a.yw, arg_0.a.yz, true);
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(619f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1000f, 1f))))) + _wgslsmith_f_op_vec2_f32(-arg_1.zz));
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(arg_2, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(true, select(arg_2, vec4<bool>(false, arg_0.x, arg_2.x, arg_0.x), vec4<bool>(arg_2.x, true, arg_2.x, false)))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1332f + 1000f) + -968f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -625f), _wgslsmith_f_op_f32(abs(494f))), all(arg_2))), _wgslsmith_div_vec2_i32(abs(arg_1.xy), ~(_wgslsmith_sub_vec2_i32(arg_1.xx, arg_1.xx) ^ vec2<i32>(arg_1.x, -9773i))), vec2<u32>(u_input.a.x, u_input.a.x) & u_input.a.xx);
    var var_1 = ~var_0.d.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(f32(-1f) * -138f)), var_0.b.x), vec2<f32>(-1397f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_0.b.x))))))));
    var var_3 = -_wgslsmith_div_vec4_i32(vec4<i32>(reverseBits(2937i), arg_3.a, arg_3.a, ~0i) >> (vec4<u32>(u_input.a.x, 37988u, var_0.d.x, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(countOneBits(5564i << (u_input.a.x % 32u)), 12408i, 1i, abs(~var_0.c.x)));
    var var_4 = arg_3;
    return Struct_1(-4433i);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: f32) -> vec4<bool> {
    var var_0 = u_input.a.yz;
    let var_1 = vec2<bool>(false, !(!(~110021u < var_0.x)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(arg_2 - arg_2), func_4(!(!vec2<bool>(var_1.x, var_1.x)), vec3<i32>(1i, firstTrailingBit(0i), select(countOneBits(-1i), ~20982i, true)), vec4<bool>(any(vec2<bool>(false, var_1.x)) == (arg_2 < -350f), false, !func_2(Struct_3(vec4<bool>(true, var_1.x, false, var_1.x), vec2<f32>(-324f, arg_2), vec2<i32>(-36537i, 0i), u_input.a.zy), vec3<f32>(arg_2, arg_2, arg_2), Struct_4(vec4<i32>(1i, -24131i, -1i, -54487i), var_1.x, vec3<i32>(-7685i, 16022i, 2147483647i), u_input.a.yy, var_1.x)), true), Struct_1(1i)), ~(~vec4<u32>(1u, 97911u, arg_1.x, _wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.zz))), Struct_1(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(0i, 0i, 1i, 1i)), vec4<i32>(max(-2147483647i, 1i), _wgslsmith_div_i32(-30484i, 1i), -12635i, abs(32177i)))), func_4(!vec2<bool>(var_1.x, true), min(vec3<i32>(-8025i, 2147483647i, -11568i), vec3<i32>(-11343i, -16665i, -2147483647i)) >> (select(vec3<u32>(40866u, arg_0, 5308u) << (u_input.a % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(arg_1, vec3<u32>(0u, 32757u, arg_1.x)), true) % vec3<u32>(32u)), !(!vec4<bool>(var_1.x, var_1.x, true, var_1.x)), func_4(select(vec2<bool>(true, true), !var_1, all(vec3<bool>(true, true, var_1.x))), vec3<i32>(firstLeadingBit(0i), firstTrailingBit(1i), _wgslsmith_mult_i32(1i, -60158i)), vec4<bool>(true, true, true, true), func_4(vec2<bool>(false, true), vec3<i32>(0i, 13465i, 2147483647i) << (arg_1 % vec3<u32>(32u)), vec4<bool>(var_1.x, var_1.x, var_1.x, true), Struct_1(-2147483647i)))));
    var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(_wgslsmith_sub_u32(var_0.x, 4294967295u)), u_input.a.x), u_input.a.zz);
    var_0 = vec2<u32>(var_2.c.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_1.x, 12999u), _wgslsmith_div_u32(0u, var_0.x)), u_input.a.x ^ arg_0, ~_wgslsmith_dot_vec2_u32(min(vec2<u32>(46399u, arg_1.x), vec2<u32>(u_input.a.x, 25531u)), arg_1.zz ^ vec2<u32>(arg_0, 0u))));
    return vec4<bool>(-360f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1372f) + _wgslsmith_f_op_f32(min(var_2.a, _wgslsmith_f_op_f32(415f + var_2.a)))), var_1.x, any(var_1), all(var_1));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: i32, arg_3: vec4<bool>) -> vec4<u32> {
    var var_0 = abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), ~abs(vec2<u32>(u_input.a.x, 41235u)))) | (max(0u, u_input.a.x) << (u_input.a.x % 32u));
    let var_1 = false;
    var_0 = ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a.x, u_input.a.x) ^ u_input.a.xx), abs(max(_wgslsmith_div_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.zy)));
    var_0 = u_input.a.x;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(max(-2020f, -2347f)), Struct_1(_wgslsmith_clamp_i32(arg_0.x, ~arg_2, 1i ^ min(arg_0.x, 13403i))), min(_wgslsmith_clamp_vec4_u32(reverseBits(reverseBits(vec4<u32>(u_input.a.x, 34062u, 10178u, u_input.a.x))), ~(~vec4<u32>(u_input.a.x, 4294967295u, 89912u, 52972u)), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), 1u, u_input.a.x, u_input.a.x)), ~(~vec4<u32>(1403u, 4294967295u, u_input.a.x, u_input.a.x))), Struct_1(func_4(vec2<bool>(true, true), arg_0.wwz, vec4<bool>(true, -1643f <= arg_1.x, all(vec3<bool>(true, var_1, true)), var_1 && false), func_4(!arg_3.zx, countOneBits(vec3<i32>(1i, arg_2, arg_0.x)), !vec4<bool>(var_1, var_1, var_1, true), func_4(arg_3.zw, vec3<i32>(36160i, -2147483647i, arg_0.x), vec4<bool>(false, true, true, arg_3.x), Struct_1(-2147483647i)))).a), func_4(!arg_3.yw, vec3<i32>(arg_0.x, arg_0.x, min(_wgslsmith_dot_vec3_i32(vec3<i32>(-3390i, 35621i, 2147483647i), vec3<i32>(2147483647i, arg_2, 0i)), arg_2)), func_1(~u_input.a.x, vec3<u32>(~u_input.a.x, 1u, _wgslsmith_clamp_u32(0u, u_input.a.x, 0u)), arg_1.x), Struct_1(-arg_0.x)));
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.x;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1384f) * -1416f) - 945f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1903f, 167f, false))))))), Struct_1(_wgslsmith_add_i32(-max(-29701i, 1i), -1i)), func_5(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(455f, 1000f)))), _wgslsmith_add_i32(-5098i, 1440i >> (u_input.a.x % 32u)) | _wgslsmith_mult_i32(~(-54403i), 1i), select(vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, false))), !func_1(u_input.a.x, u_input.a, 618f), all(vec4<bool>(true, false, false, false)))), Struct_1(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)))), func_4(vec2<bool>(any(vec2<bool>(true, true)), true), vec3<i32>(abs(-16607i), ~(-5795i), 1i), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), false), func_1(~1u, firstLeadingBit(vec3<u32>(1u, 1u, u_input.a.x)), _wgslsmith_f_op_f32(abs(-257f))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false))), func_4(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), vec3<i32>(14030i, -8886i, 2147483647i) ^ select(vec3<i32>(1i, -1i, 0i), vec3<i32>(38803i, 1i, 2147483647i), true), vec4<bool>(true, true, true, true), func_4(func_1(0u, vec3<u32>(u_input.a.x, 109972u, u_input.a.x), -558f).zy, ~vec3<i32>(-1i, -1i, 52673i), vec4<bool>(false, true, false, true), func_4(vec2<bool>(true, true), vec3<i32>(14717i, 13696i, 2147483647i), vec4<bool>(false, false, false, false), Struct_1(0i))))));
    let var_2 = Struct_1(i32(-1i) * -26389i);
    var var_3 = var_1.b;
    var var_4 = Struct_4(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(select(-vec4<i32>(var_2.a, 1i, -3414i, var_2.a), ~vec4<i32>(-2147483647i, 1i, 2147483647i, 26696i), true), abs(-vec4<i32>(var_2.a, 28948i, var_1.d.a, -2147483647i))), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(0i, 2147483647i, 40970i, var_3.a)), countOneBits(vec4<i32>(var_1.e.a, -22964i, var_1.b.a, 1i))) << (~(vec4<u32>(39398u, 18330u, 23293u, u_input.a.x) >> (var_1.c % vec4<u32>(32u))) % vec4<u32>(32u)), firstTrailingBit(max(vec4<i32>(60908i, 2147483647i, 2147483647i, var_2.a), vec4<i32>(var_1.e.a, var_3.a, var_1.b.a, 1i))) & -vec4<i32>(0i, var_2.a, var_2.a, var_3.a)), any(func_1(~min(4294967295u, var_1.c.x), vec3<u32>(50143u, u_input.a.x, ~u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, var_1.a))).xwx), min(vec3<i32>(var_2.a, var_2.a, -22330i << (var_1.c.x % 32u)), ~(~vec3<i32>(-1i, var_3.a, var_1.d.a) | _wgslsmith_sub_vec3_i32(vec3<i32>(var_3.a, var_2.a, var_1.e.a), vec3<i32>(var_2.a, var_3.a, var_2.a)))), firstLeadingBit(u_input.a.xz), func_1(var_1.c.x, ~var_1.c.yyx, var_1.a).x);
    var var_5 = abs(442u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(485f + 387f)), var_1.a, var_1.a));
}

