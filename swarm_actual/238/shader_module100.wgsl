struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>) -> vec4<i32> {
    var var_0 = vec2<f32>(515f, _wgslsmith_f_op_f32(1256f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-993f * _wgslsmith_f_op_f32(max(1194f, 773f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, var_0.x)))))));
    var var_2 = !(0u > ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(121349u, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), vec4<u32>(arg_1.x, arg_1.x, 0u, arg_1.x)));
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1786f), Struct_1(vec2<f32>(1f, var_1.x), arg_1.zx << (~arg_1.yz % vec2<u32>(32u)), ~(~vec3<u32>(arg_1.x, 1u, 7811u)), _wgslsmith_div_f32(283f, 655f), abs(~u_input.a.x)), -904f), _wgslsmith_f_op_f32(-var_1.x), ~(~u_input.a.x));
    var_0 = _wgslsmith_f_op_vec2_f32(select(var_1, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(525f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1036f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -174f), 1284f), arg_0))), true));
    return u_input.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec3<bool>) -> Struct_5 {
    var var_0 = Struct_5(4046u, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i >> (1u % 32u), u_input.a.x, -u_input.b, u_input.b ^ -1i), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(u_input.c, u_input.b, u_input.a.x, u_input.b)), func_3(arg_3.x, vec3<u32>(0u, 37021u, 31227u)))), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, u_input.c, 2147483647i) & vec4<i32>(45517i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.c, u_input.c, u_input.a.x, u_input.c) << (vec4<u32>(4294967295u, 1u, 33304u, 40000u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(u_input.b, u_input.b, 880i, u_input.a.x)), u_input.a))), Struct_1(vec2<f32>(262f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(636f, arg_2.x) + _wgslsmith_div_f32(arg_2.x, 607f))), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(743u, 1u)), ~abs(vec2<u32>(1u, 38630u))), vec3<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(14852u, 13753u)), vec2<u32>(4294967295u, 4294967295u)), 1u, 1u), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, u_input.b), ~u_input.a.zz) >> (4294967295u % 32u)));
    var_0 = Struct_5(var_0.a, firstLeadingBit(reverseBits(2147483647i)), var_0.c);
    var_0 = Struct_5(_wgslsmith_dot_vec2_u32(var_0.c.b | ~min(vec2<u32>(var_0.c.c.x, var_0.c.b.x), var_0.c.b), var_0.c.b), var_0.b, var_0.c);
    let var_1 = _wgslsmith_sub_vec4_i32(u_input.a, max(_wgslsmith_clamp_vec4_i32((vec4<i32>(0i, -1i, u_input.b, -2147483647i) & vec4<i32>(0i, var_0.c.e, -88463i, -1i)) | (vec4<i32>(1i, -2147483647i, u_input.b, var_0.b) >> (vec4<u32>(4294967295u, 4294967295u, 0u, 1u) % vec4<u32>(32u))), vec4<i32>(-19508i, var_0.b, i32(-1i) * -91732i, ~(-3115i)), vec4<i32>(_wgslsmith_sub_i32(1i, -1i), 26123i, 1i, 0i)), u_input.a));
    var_0 = Struct_5(max(~52196u, 110483u), _wgslsmith_mod_i32(u_input.c, _wgslsmith_mult_i32(~abs(var_1.x), firstTrailingBit(-var_0.c.e))), Struct_1(vec2<f32>(1397f, 1f), ~vec2<u32>(var_0.c.b.x & var_0.a, ~var_0.c.c.x), ~(~var_0.c.c), -1377f, -1i));
    return Struct_5(max(abs(~2477u | _wgslsmith_add_u32(54114u, var_0.a)), 0u), -17801i ^ ~countOneBits(var_1.x ^ var_1.x), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.c.a))))), var_0.c.c.zy, max(vec3<u32>(0u, 73122u, reverseBits(var_0.c.b.x)), ~(~var_0.c.c)), -708f, _wgslsmith_sub_i32(~(i32(-1i) * -2147483647i), _wgslsmith_mult_i32(_wgslsmith_div_i32(16478i, 2147483647i), -1i))));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_5) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(634f + arg_1.x), arg_2.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.x)) + _wgslsmith_f_op_f32(-1f)) + -621f));
    var var_1 = true;
    let var_2 = 0i;
    var_1 = !(all(vec3<bool>(true, true, true)) && true) && false;
    let var_3 = ~min(var_0.b.c.x, arg_2.a.b.c.x);
    return countOneBits(arg_3.b) != var_2;
}

fn func_5(arg_0: i32, arg_1: bool) -> u32 {
    var var_0 = Struct_5(select(select(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 30558u), vec2<u32>(17845u, 4294967295u)) << (~0u % 32u), 0u, true), _wgslsmith_clamp_u32(75798u, abs(~4294967295u), ~select(0u, 29501u, arg_1)), all(vec4<bool>(!arg_1, true, true, true))), 1i, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1630f, 165f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-155f, -1679f) - vec2<f32>(497f, -1000f)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(904f, 598f))), abs(~min(vec2<u32>(92526u, 4294967295u), vec2<u32>(1u, 4294967295u))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(1u, 4788u, 8676u), vec3<u32>(0u, 4294967295u, 40041u)) | vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_clamp_u32(0u, 43310u, 1u), 32187u, ~49691u)), 218f, max(1i, abs(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a)))));
    let var_1 = Struct_4(func_2(select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), false), !(!vec2<bool>(arg_1, arg_1)), select(vec2<bool>(true, true), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), vec2<bool>(true, true)), vec2<bool>(true, false))), vec4<bool>(any(vec3<bool>(false, true, false)), arg_1 & all(vec2<bool>(arg_1, false)), any(vec4<bool>(arg_1, true, arg_1, false)), true), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.c.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.a.x + var_0.c.d), -681f), var_0.c.a.x), select(select(!vec3<bool>(true, arg_1, false), !vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, false, arg_1)), !(!vec3<bool>(arg_1, arg_1, false)), arg_1)).c.a.x, false & all(!(!vec3<bool>(arg_1, arg_1, true))), var_0.c.a.x, var_0.a);
    var var_2 = Struct_3(Struct_2(495f, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * 808f) * _wgslsmith_f_op_f32(var_0.c.d - -660f))), 1f, _wgslsmith_sub_i32(u_input.a.x, 0i));
    var_0 = func_2(!vec2<bool>(true, all(vec3<bool>(var_1.b, false, true)) || any(vec3<bool>(true, arg_1, false))), !vec4<bool>(var_1.b, true, any(vec2<bool>(true, arg_1)), arg_1), vec3<f32>(_wgslsmith_f_op_f32(165f - _wgslsmith_f_op_f32(min(318f, -1487f))), -434f, func_2(select(vec2<bool>(true, true), vec2<bool>(arg_1, var_1.b), -158f <= var_2.a.b.d), vec4<bool>(var_1.b, arg_1, true && var_1.b, arg_0 == arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(737f, var_2.b, var_2.b), vec3<f32>(var_2.b, var_0.c.d, 1000f)))), !select(vec3<bool>(var_1.b, arg_1, var_1.b), vec3<bool>(arg_1, true, arg_1), false)).c.d), vec3<bool>(any(vec3<bool>(true, true, true)), !func_4(func_2(vec2<bool>(var_1.b, false), vec4<bool>(true, arg_1, arg_1, var_1.b), vec3<f32>(var_0.c.a.x, -1337f, var_0.c.a.x), vec3<bool>(true, false, var_1.b)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.a.c, 571f, var_1.a))), Struct_3(Struct_2(-744f, Struct_1(vec2<f32>(var_0.c.a.x, var_2.b), var_0.c.b, var_2.a.b.c, var_1.c, 0i), var_2.b), var_1.a, arg_0), func_2(vec2<bool>(true, false), vec4<bool>(false, arg_1, true, var_1.b), vec3<f32>(-1000f, var_1.c, var_1.a), vec3<bool>(false, true, arg_1))), false));
    var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.b))))), var_2.a.b, 2255f), -868f, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.zy), 1i));
    return firstTrailingBit(1u);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec2<u32>) -> vec3<f32> {
    let var_0 = arg_3.x;
    let var_1 = vec3<u32>(~func_5(~(-5483i) & (u_input.c & -2147483647i), func_4(func_2(vec2<bool>(arg_0, arg_0), vec4<bool>(arg_0, false, true, arg_0), vec3<f32>(-117f, 231f, 666f), vec3<bool>(true, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(-arg_1), Struct_3(Struct_2(arg_2.b.a.x, Struct_1(arg_1.yz, arg_2.b.b, arg_2.b.c, arg_2.c, -1456i), -137f), 303f, u_input.b), Struct_5(2997u, 51869i, arg_2.b))), arg_3.x, firstTrailingBit(11052u));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(arg_2.b.d - _wgslsmith_f_op_f32(-arg_1.x)), arg_2.b, _wgslsmith_f_op_f32(-864f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-166f, _wgslsmith_f_op_f32(floor(arg_2.a)))))));
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1435f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -962f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_2.a, var_2.b.a.x)))))) * arg_2.c), 1476f);
}

fn func_6(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: Struct_4) -> i32 {
    let var_0 = ~vec3<i32>(reverseBits(62276i), -58316i, _wgslsmith_add_i32(firstLeadingBit(max(-3228i, u_input.b)), arg_1.x));
    return func_2(select(select(vec2<bool>(true, true), !(!vec2<bool>(false, arg_3.b)), true), vec2<bool>(!func_4(Struct_5(32105u, var_0.x, Struct_1(arg_2.xy, vec2<u32>(84376u, 83473u), arg_0.yxz, arg_3.c, arg_1.x)), vec3<f32>(-816f, 1471f, arg_2.x), Struct_3(Struct_2(566f, Struct_1(vec2<f32>(-663f, arg_3.a), vec2<u32>(arg_3.d, 21687u), arg_0.yyw, 981f, 124930i), arg_2.x), arg_3.c, arg_1.x), Struct_5(arg_3.d, u_input.b, Struct_1(arg_2.yz, vec2<u32>(arg_3.d, arg_3.d), vec3<u32>(4294967295u, arg_0.x, arg_3.d), 505f, u_input.c))), arg_3.b), !((1i & u_input.b) < -1i)), !(!vec4<bool>(true, true, !arg_3.b, arg_3.d > arg_3.d)), _wgslsmith_f_op_vec3_f32(-arg_2), !(!select(select(vec3<bool>(arg_3.b, arg_3.b, arg_3.b), vec3<bool>(true, arg_3.b, arg_3.b), vec3<bool>(true, false, true)), select(vec3<bool>(arg_3.b, arg_3.b, arg_3.b), vec3<bool>(false, arg_3.b, true), vec3<bool>(arg_3.b, false, true)), false))).b;
}

fn func_7(arg_0: vec2<i32>) -> Struct_4 {
    var var_0 = 1u;
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1018f))))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1195f)), 2555f)))), select(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(411f)) + -407f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -358f) - _wgslsmith_f_op_f32(-1000f * -234f)))) + _wgslsmith_f_op_f32(1938f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1250f)), _wgslsmith_div_f32(1720f, 267f)))), ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -975f;
    let var_1 = true;
    let var_2 = func_7(select(vec2<i32>(func_6(vec4<u32>(1u, 51176u, 43550u, 58855u), reverseBits(u_input.a), _wgslsmith_f_op_vec3_f32(func_1(true, vec3<f32>(492f, 528f, -882f), Struct_2(-1396f, Struct_1(vec2<f32>(633f, 1000f), vec2<u32>(71071u, 4294967295u), vec3<u32>(4294967295u, 25239u, 25292u), 270f, 2686i), -386f), vec2<u32>(4294967295u, 59593u))), Struct_4(-1169f, true, 1393f, 0u)), abs(u_input.c) ^ -2710i), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, -22536i), ~vec2<i32>(-20775i, 0i), _wgslsmith_div_vec2_i32(vec2<i32>(-25186i, u_input.c), u_input.a.wy)), _wgslsmith_add_vec2_i32(u_input.a.zw ^ vec2<i32>(u_input.b, 63780i), reverseBits(u_input.a.zx)), var_1), any(!select(vec3<bool>(true, true, var_1), vec3<bool>(false, false, var_1), true))));
    var_0 = _wgslsmith_f_op_f32(-var_2.a);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.c)), _wgslsmith_f_op_f32(min(var_2.c, 655f)));
    var_0 = 247f;
    var_0 = func_2(vec2<bool>(var_2.c >= func_7(vec2<i32>(u_input.c, u_input.a.x) & u_input.a.ww).c, var_1 | false), vec4<bool>(false, !any(!vec2<bool>(var_1, var_1)), false && func_4(Struct_5(var_2.d, u_input.c, Struct_1(vec2<f32>(-1217f, var_2.c), vec2<u32>(4294967295u, var_2.d), vec3<u32>(var_2.d, 4294967295u, var_2.d), var_2.a, u_input.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, 1948f, var_2.a)), Struct_3(Struct_2(-175f, Struct_1(vec2<f32>(-793f, -236f), vec2<u32>(var_2.d, 4294967295u), vec3<u32>(79937u, var_2.d, 35149u), var_2.c, 0i), var_2.a), 2251f, 17583i), Struct_5(29185u, u_input.c, Struct_1(vec2<f32>(1106f, var_2.a), vec2<u32>(var_2.d, 1u), vec3<u32>(var_2.d, 43954u, var_2.d), var_2.c, u_input.b))), var_2.b), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, 726f, var_2.a)) + _wgslsmith_f_op_vec3_f32(func_1(var_1, vec3<f32>(-1229f, var_2.c, var_2.a), Struct_2(-607f, Struct_1(vec2<f32>(var_2.a, 1000f), vec2<u32>(25450u, var_2.d), vec3<u32>(22655u, 0u, 19458u), var_2.a, u_input.c), var_2.a), vec2<u32>(0u, var_2.d)))))))), !vec3<bool>(var_1, all(!vec2<bool>(var_1, var_2.b)), true)).c.a.x;
    var var_3 = _wgslsmith_clamp_u32(~abs(_wgslsmith_add_u32(48131u, 45041u)), var_2.d, var_2.d ^ var_2.d);
    let var_4 = 22799u;
    let x = u_input.a;
    s_output = StorageBuffer(func_3(any(select(vec3<bool>(false, false, true), vec3<bool>(var_1, var_1, var_2.b), false)) | (-8152i < u_input.c), vec3<u32>(4294967295u & ~var_2.d, 39634u, 50318u)), u_input.c | -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(308f))))), _wgslsmith_mult_i32(1i, i32(-1i) * -u_input.b), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1283f, var_2.a, var_2.c, -824f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(715f, var_2.a, var_2.a, 1150f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-764f, 2342f, 503f, 1079f) * vec4<f32>(1184f, -1206f, 885f, var_2.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.c, var_2.a, 1449f, var_2.a))) + vec4<f32>(var_2.a, -668f, 1559f, _wgslsmith_f_op_vec3_f32(func_1(false, vec3<f32>(-758f, 1158f, 1586f), Struct_2(771f, Struct_1(vec2<f32>(var_2.c, var_2.a), vec2<u32>(var_2.d, 0u), vec3<u32>(var_2.d, var_4, 51506u), var_2.c, -1i), 869f), vec2<u32>(4294967295u, 4294967295u))).x)))));
}

