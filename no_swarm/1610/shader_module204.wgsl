struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> u32 {
    let var_0 = vec2<i32>(~arg_2, 3718i);
    return 29834u;
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_sub_vec3_i32(~select(vec3<i32>(u_input.a, reverseBits(u_input.a), -26205i), -_wgslsmith_clamp_vec3_i32(vec3<i32>(23205i, -30857i, -27871i), vec3<i32>(-1i, 13246i, u_input.a), vec3<i32>(u_input.c.x, u_input.c.x, -62522i)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), -(vec3<i32>(abs(-1i), _wgslsmith_mod_i32(-58232i, u_input.c.x), 27770i) >> (vec3<u32>(func_1(vec4<i32>(0i, 2147483647i, -7600i, -1i), Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, false), vec2<f32>(1000f, 1000f)), 55473i), select(1u, 52367u, false), countOneBits(1u)) % vec3<u32>(32u))));
    var var_1 = !all(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)));
    var var_2 = Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1631f, -965f)), vec2<f32>(883f, 1000f), true)))), Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(true, true, false)), true), vec3<bool>(true, true, true), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -218f))), 2272f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-702f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(533f))))) * _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(vec2<f32>(-589f, 1840f), vec2<f32>(-564f, 891f)))), 1i);
    var_2 = Struct_2(Struct_1(select(select(var_2.a.a, var_2.b.a, !var_2.b.b.xx), var_2.b.b.xy, select(!var_2.a.b.yx, vec2<bool>(var_2.a.b.x, true), var_2.b.b.xz)), var_2.a.b, vec2<f32>(var_2.b.c.x, -526f)), Struct_1(!select(select(vec2<bool>(true, var_2.b.a.x), var_2.a.b.zy, var_2.a.a), select(vec2<bool>(var_2.b.a.x, var_2.a.b.x), var_2.a.b.yz, vec2<bool>(var_2.b.b.x, var_2.b.b.x)), var_2.b.b.x), !vec3<bool>(var_2.b.b.x, true, false | var_2.a.a.x), vec2<f32>(-2183f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.c.x) * _wgslsmith_f_op_f32(-868f + -164f)))), vec2<f32>(812f, -682f), var_0.x);
    var var_3 = var_2.a.b.xz;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.c.x * var_2.b.c.x));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(arg_0.b.c.x * arg_0.a.c.x)) + _wgslsmith_f_op_f32(ceil(arg_0.a.c.x)))));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), var_1.a.c.x));
    let var_3 = vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(ceil(var_1.b.c.x)));
    let var_4 = _wgslsmith_sub_vec4_i32((-_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 56424i, 0i, arg_0.d), vec4<i32>(2147483647i, 7330i, 2147483647i, 1i)) & (_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.d, -26059i, 2147483647i, var_1.d), vec4<i32>(-32953i, 43667i, 2147483647i, -2147483647i), vec4<i32>(1i, -40653i, var_1.d, 1i)) >> ((vec4<u32>(u_input.d.x, u_input.d.x, 1u, 0u) << (vec4<u32>(19706u, 0u, 33u, 1838u) % vec4<u32>(32u))) % vec4<u32>(32u)))) | vec4<i32>(i32(-1i) * -26198i, _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.d, u_input.c.x, 18384i, u_input.c.x), vec4<i32>(-2147483647i, 2147483647i, 0i, 56841i) | vec4<i32>(u_input.a, arg_0.d, 2147483647i, -22611i)), _wgslsmith_mult_i32(2147483647i, arg_0.d) & 2147483647i, 0i), _wgslsmith_div_vec4_i32(select(~vec4<i32>(var_1.d, 0i, 12695i, u_input.c.x), vec4<i32>(max(2147483647i, u_input.c.x), var_1.d, -arg_0.d, _wgslsmith_clamp_i32(61544i, var_1.d, -69257i)), vec4<bool>(var_2 < var_1.b.c.x, arg_0.a.a.x, true, true)), ~vec4<i32>(-1i, var_1.d >> (63092u % 32u), -15744i, -u_input.c.x)));
    return Struct_1(select(vec2<bool>(false, (u_input.d.x >> (u_input.d.x % 32u)) != 4294967295u), select(vec2<bool>(true, arg_0.b.c.x <= var_0), var_1.b.b.zz, false), select(vec2<bool>(true, false), vec2<bool>(false, all(vec2<bool>(false, false))), !arg_0.a.a.x)), vec3<bool>(_wgslsmith_div_u32(0u, max(u_input.b.x, u_input.d.x)) == firstTrailingBit(abs(1u)), var_1.b.b.x, var_1.b.b.x), vec2<f32>(_wgslsmith_div_f32(1887f, 542f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-364f)) * 1619f)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    let var_0 = !(!(!(!select(vec3<bool>(true, false, arg_0.a.b.x), vec3<bool>(arg_1.b.a.x, arg_0.a.b.x, false), vec3<bool>(arg_0.a.a.x, true, true)))));
    var var_1 = !(!(!vec4<bool>(arg_0.a.b.x, true, var_0.x, false)));
    var var_2 = arg_1.a;
    var var_3 = Struct_1(select(vec2<bool>(true, true), !vec2<bool>(true, !arg_0.a.b.x), var_2.a), var_2.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_2.c, arg_0.a.c)))), func_2(Struct_2(func_2(Struct_2(arg_1.a, arg_0.b, vec2<f32>(-264f, -218f), arg_0.d)), Struct_1(arg_0.a.b.zy, vec3<bool>(true, var_2.a.x, true), arg_0.c), _wgslsmith_f_op_vec2_f32(round(arg_1.b.c)), _wgslsmith_sub_i32(0i, u_input.a))).c));
    var_1 = !vec4<bool>(true && func_2(Struct_2(arg_1.a, Struct_1(var_1.zz, var_1.zyy, arg_0.b.c), arg_0.a.c, u_input.a)).a.x, true, arg_1.b.a.x, !var_0.x);
    return func_2(Struct_2(arg_0.a, func_2(arg_0), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1480f, arg_1.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.c - vec2<f32>(1165f, arg_0.b.c.x))))), -arg_0.d >> (u_input.d.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec3<u32>(~u_input.b.x, func_1(~min(vec4<i32>(-2147483647i, u_input.c.x, 1i, 0i), vec4<i32>(-1i, -2147483647i, -21870i, 1i)), Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(-554f, 961f) - vec2<f32>(251f, -462f))), u_input.a), _wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d.x, 1u), vec3<u32>(13518u, 71377u, 10048u))) << (~6071u % 32u)), Struct_2(func_4(Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, true), vec2<f32>(-1438f, -1564f)), func_2(Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, true), vec2<f32>(2075f, 1350f)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, false), vec2<f32>(2663f, 953f)), vec2<f32>(-394f, 180f), u_input.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1814f, 1245f)), 2147483647i), Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, true), vec2<f32>(-611f, -770f)), Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, true), vec2<f32>(906f, -527f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-604f, -1287f) - vec2<f32>(-1595f, 225f)), ~1i)), Struct_1(vec2<bool>(any(vec3<bool>(false, false, false)), false), !func_4(Struct_2(Struct_1(vec2<bool>(false, true), vec3<bool>(false, true, false), vec2<f32>(-1236f, -680f)), Struct_1(vec2<bool>(false, true), vec3<bool>(false, true, false), vec2<f32>(-402f, -2077f)), vec2<f32>(-1954f, 1000f), 1i), Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, true), vec2<f32>(188f, -1000f)), Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, false), vec2<f32>(164f, -1545f)), vec2<f32>(446f, 565f), u_input.c.x)).b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(610f, -118f) - vec2<f32>(1278f, -531f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-1224f, -966f), vec2<f32>(1111f, -1176f)), func_2(Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, false), vec2<f32>(916f, -751f)), Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, true), vec2<f32>(-1314f, -660f)), vec2<f32>(-524f, -1529f), -1i)).c)), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(u_input.a, u_input.c.x, 0i, u_input.a)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(46776i, u_input.a, u_input.a, 1i), vec4<i32>(u_input.a, 1i, 0i, 70454i)), vec4<i32>(u_input.c.x, -56211i, u_input.a, u_input.c.x)))));
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = Struct_1(vec2<bool>(true, true), var_1.b.b.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-595f, var_1.b.c.x), -393f, var_1.b.a.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-506f, var_1.b.b.c.x))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1322f, 367f) - vec2<f32>(752f, var_1.b.a.c.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.b.c)))));
    var var_3 = Struct_2(var_1.b.b, func_4(Struct_2(func_2(Struct_2(var_2, var_1.b.b, var_1.b.b.c, u_input.a)), var_2, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(684f, var_1.b.b.c.x), vec2<f32>(-446f, var_1.b.b.c.x)), _wgslsmith_f_op_vec2_f32(sign(var_0.b.b.c)))), ~abs(var_0.b.d)), Struct_2(Struct_1(var_1.b.b.a, !var_2.b, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-894f, var_0.b.c.x)))), var_0.b.a, var_1.b.c, 9751i)), vec2<f32>(_wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_f_op_f32(var_1.b.b.c.x - -1408f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.c.x))), 411f)), -2147483647i);
    var_1 = Struct_3(select(firstLeadingBit(firstTrailingBit(var_1.a)) >> (var_0.a % vec3<u32>(32u)), ~var_0.a << (vec3<u32>(u_input.d.x, ~1u, 0u >> (var_1.a.x % 32u)) % vec3<u32>(32u)), var_1.b.a.b.x), Struct_2(Struct_1(vec2<bool>(true, any(vec4<bool>(var_3.a.b.x, var_2.a.x, false, var_0.b.a.b.x))), select(!vec3<bool>(false, true, var_3.a.b.x), select(vec3<bool>(var_2.a.x, var_3.a.a.x, var_3.a.b.x), var_0.b.b.b, var_1.b.a.b.x), false), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.c.x, var_0.b.c.x) * vec2<f32>(var_3.b.c.x, var_3.b.c.x))))), Struct_1(select(select(var_0.b.b.a, vec2<bool>(var_3.a.b.x, var_3.b.a.x), var_1.b.b.b.zx), !var_3.a.b.zz, var_1.b.a.a), !vec3<bool>(false, var_2.b.x, var_0.b.a.a.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, 1564f))))), var_2.c, reverseBits(-(u_input.c.x | -17851i))));
    var var_4 = !(var_3.a.a.x != !var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-727f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1464f * var_0.b.a.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.b.c.x, _wgslsmith_f_op_f32(-var_1.b.c.x)))));
}

