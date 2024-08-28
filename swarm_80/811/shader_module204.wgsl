struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10>;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<i32>(1i, 13805i, -41948i, 0i), vec2<bool>(true, false), vec2<bool>(false, false)), Struct_1(vec4<i32>(2147483647i, -34625i, 3529i, 1i), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_1(vec4<i32>(-1i, -13128i, 2147483647i, 4803i), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_1(vec4<i32>(29407i, -20054i, 1i, i32(-2147483648)), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_1(vec4<i32>(0i, -2127i, -63486i, 0i), vec2<bool>(false, true), vec2<bool>(true, false)), Struct_1(vec4<i32>(5120i, 1i, -26151i, i32(-2147483648)), vec2<bool>(true, false), vec2<bool>(false, false)), Struct_1(vec4<i32>(-58063i, -4674i, 0i, -1i), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(vec4<i32>(21400i, -48107i, -24667i, -7020i), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_1(vec4<i32>(i32(-2147483648), 47781i, i32(-2147483648), -1i), vec2<bool>(false, true), vec2<bool>(true, true)), Struct_1(vec4<i32>(0i, i32(-2147483648), -28274i, -19832i), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(vec4<i32>(-1651i, 1i, 1i, -8936i), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_1(vec4<i32>(-2340i, 6714i, 21602i, 1i), vec2<bool>(false, true), vec2<bool>(true, true)), Struct_1(vec4<i32>(54802i, 2147483647i, -323i, 1i), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_1(vec4<i32>(1i, -87589i, -1i, 2147483647i), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(vec4<i32>(-1i, -18480i, i32(-2147483648), -14974i), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_1(vec4<i32>(-1i, i32(-2147483648), -31019i, 21382i), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_1(vec4<i32>(0i, 1i, 2147483647i, 17131i), vec2<bool>(false, true), vec2<bool>(true, false)), Struct_1(vec4<i32>(-1i, 6735i, i32(-2147483648), 1i), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_1(vec4<i32>(-27579i, -463i, -1i, -1i), vec2<bool>(true, false), vec2<bool>(true, false)), Struct_1(vec4<i32>(-1i, i32(-2147483648), 60070i, 49375i), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_1(vec4<i32>(0i, -13002i, 25527i, -1i), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(vec4<i32>(-2113i, 3465i, 2147483647i, i32(-2147483648)), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_1(vec4<i32>(0i, -4908i, 88i, -38692i), vec2<bool>(false, false), vec2<bool>(true, false)), Struct_1(vec4<i32>(i32(-2147483648), -14241i, 0i, 1i), vec2<bool>(true, true), vec2<bool>(false, false)), Struct_1(vec4<i32>(26011i, 29416i, 12964i, 1371i), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(vec4<i32>(-6029i, -21061i, -28635i, -1107i), vec2<bool>(true, true), vec2<bool>(true, false)), Struct_1(vec4<i32>(-17888i, 9267i, 2147483647i, 1i), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(vec4<i32>(11332i, -29712i, -9390i, 0i), vec2<bool>(true, false), vec2<bool>(false, false)), Struct_1(vec4<i32>(-1i, 37357i, 2147483647i, 1i), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(vec4<i32>(-1i, -8315i, 49206i, i32(-2147483648)), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(vec4<i32>(1i, i32(-2147483648), 1i, -1i), vec2<bool>(true, false), vec2<bool>(true, false)), Struct_1(vec4<i32>(2147483647i, 1i, 2147483647i, -6601i), vec2<bool>(false, true), vec2<bool>(false, true)));

var<private> global2: u32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, ~u_input.a, u_input.a, max(u_input.a, u_input.a)), ~vec4<i32>(2147483647i, -4616i, 1i & arg_0.a.x, 1i)), !select(arg_0.c, !arg_0.c, select(!arg_0.c, !arg_0.c, any(arg_0.c))), select(!arg_0.c, arg_0.c, !arg_0.b.x));
    let var_1 = select(vec2<bool>(any(var_0.c), true), arg_0.c, var_0.c);
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1105f, 113f, _wgslsmith_f_op_f32(f32(-1f) * -1172f), _wgslsmith_f_op_f32(f32(-1f) * -311f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -127f, 959f, -656f), vec4<f32>(1945f, 789f, 285f, -540f))))), vec4<f32>(_wgslsmith_f_op_f32(-862f * 799f), _wgslsmith_f_op_f32(max(-714f, -735f)), 1069f, _wgslsmith_f_op_f32(164f * 1040f))))));
    var var_3 = 1492f;
    var var_4 = arg_0.c;
    return (vec4<i32>(u_input.a, _wgslsmith_add_i32(42643i & var_0.a.x, -2147483647i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0.a.x, arg_0.a.x), -2147483647i, -2147483647i), 29080i) ^ vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-47001i, u_input.a), var_0.a.x), 29257i, firstLeadingBit(arg_0.a.x), ~u_input.a)) & -(~arg_0.a);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    var var_0 = !select(vec2<bool>(false, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, arg_0.b.x), arg_0.c.x))), !arg_0.c, arg_0.b);
    global0 = array<vec3<f32>, 10>();
    global1 = array<Struct_1, 32>();
    var var_1 = Struct_1(func_3(Struct_1(vec4<i32>(-2147483647i, 14404i, u_input.a, -1i), vec2<bool>(true, arg_0.b.x), vec2<bool>(false, true))) & vec4<i32>(u_input.a, _wgslsmith_add_i32(i32(-1i) * -21627i, -1i), arg_0.a.x, _wgslsmith_add_i32(arg_0.a.x, abs(-4231i))), !(!vec2<bool>(var_0.x, -1i != u_input.a)), !(!select(!arg_0.b, arg_0.b, select(vec2<bool>(var_0.x, arg_0.c.x), vec2<bool>(false, var_0.x), true))));
    global2 = 1u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - -852f);
}

fn func_1(arg_0: i32) -> u32 {
    global1 = array<Struct_1, 32>();
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-684f, -1000f, -1727f, _wgslsmith_f_op_f32(f32(-1f) * -1905f)), vec4<f32>(_wgslsmith_f_op_f32(1724f * 365f), 1652f, _wgslsmith_f_op_f32(select(-468f, -165f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1222f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-117f, -300f, -1285f, -713f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-584f, -230f, -338f, -1036f))), vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, -786f)), _wgslsmith_div_f32(-154f, -359f), _wgslsmith_f_op_f32(round(-1371f)), _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(1u, 32u)], vec3<f32>(-1846f, -663f, 399f)))))))));
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(69971u, 32u)]);
    let var_2 = Struct_2(Struct_1(select(-vec4<i32>(u_input.a, arg_0, 29358i, -6156i), -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, arg_0), vec4<i32>(var_1.a.a.x, u_input.a, -12802i, 0i)), vec4<bool>(!var_1.a.c.x, true, var_1.a.c.x, true)), var_1.a.b, select(!var_1.a.c, var_1.a.c, var_1.a.b.x | true)));
    let var_3 = vec3<i32>(15715i, u_input.a, -_wgslsmith_clamp_i32(arg_0, -1i, arg_0 | -1i));
    return _wgslsmith_div_u32(_wgslsmith_add_u32(10153u, ~(~max(0u, 57616u))), ~(~(~(~4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.a, -1i, 2147483647i, u_input.a) & vec4<i32>(u_input.a, u_input.a, u_input.a, -2540i))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true)));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(func_1(u_input.a) & ~1u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 36949u, 0u), var_0.a.b.x))), select(~vec3<u32>(2307u, 1u, 14371u), vec3<u32>(1u, 1u, 1u), true)), _wgslsmith_mod_u32(~reverseBits(~1u), 64776u), _wgslsmith_mult_u32(1u >> (~max(4294967295u, 21161u) % 32u), 1u), _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(~51028u, _wgslsmith_clamp_u32(9848u, 38800u, 4294967295u)))));
    var var_2 = 46288i;
    var var_3 = Struct_2(Struct_1(-_wgslsmith_mod_vec4_i32(var_0.a.a, reverseBits(var_0.a.a)), var_0.a.b, vec2<bool>(var_0.a.c.x, true)));
    var var_4 = vec4<i32>(-(i32(-1i) * -2147483647i), -24671i, -func_3(Struct_1(var_0.a.a, vec2<bool>(var_0.a.b.x, var_3.a.c.x), vec2<bool>(true, false))).x & var_0.a.a.x, firstTrailingBit(-103777i));
    var var_5 = ~max(select(15114u, min(_wgslsmith_mod_u32(var_1.x, var_1.x), 59527u), var_0.a.c.x), 1u);
    var var_6 = 28515u;
    var var_7 = var_1.x;
    var_6 = _wgslsmith_add_u32(22767u, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-353f, 591f), _wgslsmith_mod_vec2_u32(countOneBits(~var_1.ww), var_1.wx) >> ((min(reverseBits(var_1.xz), vec2<u32>(var_1.x, var_1.x) | var_1.wz) << (select(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, 40786u), var_1.wz, vec2<u32>(var_1.x, 48816u)), vec2<u32>(1u, var_1.x), !vec2<bool>(true, var_3.a.c.x)) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(13688u, var_1.x, 4294967295u, 0u) >> (~vec4<u32>(var_1.x, 1u, var_1.x, 46564u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_add_u32(var_1.x, var_1.x), countOneBits(var_1.x), var_1.x, _wgslsmith_mod_u32(firstTrailingBit(var_1.x), var_1.x))));
}

