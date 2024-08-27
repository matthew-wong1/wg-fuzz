struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = true;
    var var_1 = max(u_input.a.wy | reverseBits(reverseBits(~vec2<u32>(14883u, 44420u))), ~vec2<u32>(~4397u, ~firstTrailingBit(u_input.a.x)));
    var_1 = u_input.a.xz;
    let var_2 = _wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(18802i, -52635i, 18354i), vec3<i32>(u_input.e, 73036i, arg_0.a)), (vec3<i32>(arg_0.a, arg_0.a, 1i) & vec3<i32>(-23559i, arg_0.a, u_input.b)) >> (_wgslsmith_mult_vec3_u32(u_input.a.xyx, u_input.a.yzz) % vec3<u32>(32u))), abs(vec3<i32>(~u_input.e, -2147483647i, 59298i)));
    var_1 = u_input.a.zy;
    return -(abs(abs(i32(-1i) * -2147483647i)) ^ reverseBits(min(-1i, var_2.x)));
}

fn func_2() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(-761f));
    let var_1 = Struct_1(_wgslsmith_div_i32(min(-25316i, func_3(Struct_1(-2147483647i, 10441u, false, true)) & u_input.e), u_input.e), _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c, u_input.a.x), u_input.a.x)), ~u_input.a.x), 52661u == select(_wgslsmith_dot_vec2_u32(u_input.a.xw | u_input.a.yy, vec2<u32>(92262u, u_input.c)), 4294967295u, all(vec4<bool>(true, true, false, false)) || select(true, false, true)), any(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), false), true)));
    let var_2 = ~(~select(~vec3<i32>(u_input.e, u_input.b, -4850i) | _wgslsmith_clamp_vec3_i32(vec3<i32>(20912i, var_1.a, u_input.e), vec3<i32>(2147483647i, -2147483647i, var_1.a), vec3<i32>(u_input.b, -1i, var_1.a)), -_wgslsmith_mult_vec3_i32(vec3<i32>(34627i, -2147483647i, var_1.a), vec3<i32>(-6474i, 2537i, -19539i)), vec3<bool>(false, select(false, var_1.c, true), false)));
    let var_3 = u_input.a.x;
    var var_4 = abs(~(-var_2));
    return _wgslsmith_sub_vec3_i32(var_2, select(~((vec3<i32>(u_input.e, -46489i, var_1.a) ^ var_2) ^ ~vec3<i32>(0i, var_4.x, 0i)), -min(_wgslsmith_mod_vec3_i32(var_2, var_2), ~var_2), !(-39893i == var_2.x)));
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: i32, arg_3: i32) -> bool {
    let var_0 = 1i;
    var var_1 = ~4294967295u;
    var var_2 = Struct_1(1i, _wgslsmith_dot_vec4_u32(abs(u_input.a), vec4<u32>(_wgslsmith_mult_u32(0u, 40546u), _wgslsmith_mult_u32(u_input.d, u_input.c), _wgslsmith_mod_u32(17224u, 56865u), u_input.c) | firstTrailingBit(_wgslsmith_mult_vec4_u32(u_input.a, u_input.a))), firstLeadingBit(_wgslsmith_add_u32(abs(u_input.c), firstLeadingBit(1u))) != _wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(1u, 1u)), !all(select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(false, arg_0, false, false), select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(false, arg_0, true, arg_0), true))));
    let var_3 = Struct_1(countOneBits(reverseBits(-113809i)), 12139u, var_2.c, all(vec3<bool>(!any(vec3<bool>(true, arg_0, false)), true, all(vec3<bool>(true, var_2.c, true)))));
    var var_4 = !(!vec4<bool>(!(!arg_0), false, var_2.c, true));
    return false;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(817f))), 621f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-387f)), _wgslsmith_f_op_f32(-598f + -428f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.yz)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))));
    var var_2 = Struct_1(select(firstLeadingBit(u_input.e), _wgslsmith_add_i32(reverseBits(16750i), u_input.e), func_4((u_input.b < u_input.e) & true, func_2(), func_2().x, ~(-11032i))), firstTrailingBit(~u_input.d), true, true);
    var var_3 = true;
    var_3 = all(select(select(select(select(vec4<bool>(false, var_2.c, false, true), vec4<bool>(var_2.c, var_2.d, var_2.c, false), vec4<bool>(var_2.d, var_2.c, var_2.c, false)), select(vec4<bool>(false, var_2.c, var_2.c, true), vec4<bool>(var_2.c, var_2.c, false, var_2.c), var_2.d), any(vec2<bool>(true, true))), !(!vec4<bool>(var_2.c, false, var_2.c, var_2.c)), !(!var_2.c)), vec4<bool>(var_2.c, var_2.d, select(var_2.c, false, var_2.d), var_2.c), any(vec4<bool>(!var_2.c, false, func_4(false, vec3<i32>(48731i, 24105i, -20184i), 0i, var_2.a), var_2.d))));
    return Struct_1(16469i, ~var_2.b, !func_4(all(vec2<bool>(var_2.d, false)), vec3<i32>(1i, 2147483647i, -21729i), var_2.a, abs(0i)) | var_2.c, false);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<u32>) -> bool {
    var var_0 = arg_0;
    var var_1 = firstTrailingBit(_wgslsmith_div_vec3_i32(-(~select(vec3<i32>(2147483647i, u_input.e, arg_1.a), vec3<i32>(-31538i, 2147483647i, var_0.a), arg_2.yzx)), vec3<i32>(arg_0.a | ~var_0.a, -2147483647i, _wgslsmith_add_i32(var_0.a, _wgslsmith_add_i32(arg_0.a, u_input.b)))));
    var_0 = func_1();
    var_0 = func_1();
    let var_2 = Struct_1(-_wgslsmith_add_i32(_wgslsmith_div_i32(~(-23858i), ~var_0.a), arg_0.a), arg_3.x, arg_0.c, false);
    return func_1().d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.b, 44725u, !func_5(func_1(), Struct_1(i32(-1i) * -36870i, 0u, true, select(true, true, false)), vec4<bool>(true, true, true, true), _wgslsmith_mult_vec3_u32(u_input.a.wzw, ~vec3<u32>(0u, u_input.d, u_input.d))), !(!(u_input.b <= u_input.e)));
    var var_1 = var_0.a;
    var_0 = Struct_1(-(~var_0.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_0.b, ~(45314u | u_input.c)), ~countOneBits(vec3<u32>(u_input.d, 0u, var_0.b))), var_0.c, var_0.d);
    let var_2 = ~vec3<u32>(~(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_0.b, 27851u, 38268u, 0u))), u_input.a.x, var_0.b);
    var_1 = (-(~(-26322i) >> ((u_input.d >> (var_2.x % 32u)) % 32u)) & u_input.b) | var_0.a;
    var var_3 = Struct_1(1i, ~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(30885u, 0u, 4294967295u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 0u, 46460u), vec3<u32>(1u, u_input.c, 4294967295u), var_2)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(var_0.d, true))) && false, !(_wgslsmith_sub_i32(var_0.a, abs(var_0.a)) >= var_0.a));
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1264f, -863f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1301f, -309f) * vec2<f32>(-708f, -284f)))))), var_2.xy);
}

