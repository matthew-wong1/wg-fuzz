struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<i32>(1i, 1i, 26059i), -1706f, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(-47241i, -1i, -1i), 241f, vec3<bool>(false, true, false)), Struct_1(vec3<i32>(1i, 0i, 44705i), -522f, vec3<bool>(false, true, false)), Struct_1(vec3<i32>(i32(-2147483648), -67187i, -1i), 868f, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 43093i), 1000f, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(-5572i, -53186i, i32(-2147483648)), 220f, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(13563i, -13101i, 34933i), -929f, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(-1i, 1i, -14949i), -419f, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(2147483647i, -1i, 1i), 1343f, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(-1i, -1i, -1i), -841f, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(12020i, -22515i, -28341i), -609f, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(39110i, -28908i, 0i), 397f, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(9771i, 2147483647i, -1i), 689f, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(1i, 24855i, 2147483647i), -801f, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(2147483647i, -60738i, 2147483647i), 849f, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(35442i, 0i, 0i), 1000f, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(1i, 33201i, 7348i), 203f, vec3<bool>(true, false, true)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = ~(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, 1u, 4294967295u), vec3<u32>(arg_1.x, 38508u, arg_1.x)), ~(arg_1.ywx & vec3<u32>(arg_1.x, 1u, 0u))) ^ arg_0.zxy);
    global0 = array<Struct_1, 17>();
    var var_1 = vec4<bool>(!(-1801f >= _wgslsmith_div_f32(arg_2.c.b, _wgslsmith_f_op_f32(-arg_2.b.b))), !arg_2.e.x, true, any(vec3<bool>(true, select(arg_2.c.c.x, true, arg_2.b.c.x) || any(arg_2.c.c.zx), arg_2.e.x)));
    global0 = array<Struct_1, 17>();
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1275f, arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.b) * arg_2.c.b))), Struct_1((firstLeadingBit(vec3<i32>(u_input.a, -41151i, -2871i)) << (arg_1.wwy % vec3<u32>(32u))) | arg_2.c.a, arg_2.b.b, select(vec3<bool>(false, true, false), !arg_2.c.c, arg_2.c.c)), arg_2.c, -_wgslsmith_sub_i32(firstLeadingBit(-50534i), min(_wgslsmith_mod_i32(u_input.a, u_input.c), _wgslsmith_dot_vec3_i32(arg_2.c.a, arg_2.b.a))), select(vec4<bool>(var_1.x, true, !arg_2.b.c.x, all(select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(arg_2.e.x, false, false, arg_2.c.c.x), arg_2.e))), !(!arg_2.e), u_input.b.x < ~14696u));
    return select(vec3<bool>(true, all(select(var_2.e.wxz, vec3<bool>(true, true, true), arg_2.b.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_2.b.b, -1039f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1869f - var_2.a.x))), select(vec3<bool>(true, true, any(var_1.xzy)), !(!arg_2.e.yzw), vec3<bool>(true, false != all(vec3<bool>(true, var_1.x, arg_2.b.c.x)), true)), all(select(vec3<bool>(select(true, true, arg_2.e.x), false, select(var_1.x, var_1.x, arg_2.e.x)), var_2.c.c, arg_2.b.c.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> vec3<f32> {
    global0 = array<Struct_1, 17>();
    var var_0 = Struct_1(~(~arg_2.b.a), 1338f, vec3<bool>(func_3(min(min(u_input.b, vec4<u32>(u_input.d, 1u, arg_0, u_input.b.x)), ~vec4<u32>(u_input.b.x, 0u, arg_0, 4294967295u)), ~vec4<u32>(73303u, 0u, arg_0, 0u), Struct_2(_wgslsmith_f_op_vec3_f32(max(arg_1.a, vec3<f32>(arg_3.b, 128f, arg_2.a.x))), arg_2.c, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(47333u, 13073u, 1u), 17u)], _wgslsmith_add_i32(-1i, arg_3.a.x), vec4<bool>(true, arg_1.e.x, arg_3.c.x, false))).x, !arg_2.e.x, all(select(vec4<bool>(true, arg_2.c.c.x, false, true), arg_1.e, arg_1.e))));
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.b.a.x, -1i, _wgslsmith_dot_vec3_i32(arg_1.b.a >> (u_input.b.xzw % vec3<u32>(32u)), ~(~arg_2.c.a)), i32(-1i) * -35697i), reverseBits(max(vec4<i32>(1i, arg_1.c.a.x, _wgslsmith_clamp_i32(arg_2.b.a.x, arg_3.a.x, arg_3.a.x), ~arg_3.a.x), vec4<i32>(var_0.a.x, i32(-1i) * -8319i, 16740i, 18656i >> (arg_0 % 32u)))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, 2147483647i, arg_3.a.x, var_0.a.x), firstLeadingBit(vec4<i32>(-24548i, 25663i, 2147483647i, 0i))) | vec4<i32>(firstTrailingBit(-1i), 1i, -1i, ~var_0.a.x), vec4<i32>(-69403i, 0i, _wgslsmith_mult_i32(-10488i, -10192i), ~(arg_3.a.x ^ -1i))));
    var var_2 = Struct_1(firstLeadingBit(arg_1.c.a ^ -vec3<i32>(28998i, arg_3.a.x, arg_2.d)), arg_1.a.x, var_0.c);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.a.x, arg_3.b, _wgslsmith_f_op_f32(452f * var_0.b)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_3.b, 1000f, -1040f))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.b.b, arg_2.a.x, var_0.b), vec3<f32>(-543f, var_2.b, var_0.b))))), arg_2.a));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<f32>) -> vec4<bool> {
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.d, u_input.d), 17u)];
    let var_1 = Struct_1(var_0.a << (firstLeadingBit(~vec3<u32>(u_input.d, u_input.b.x, u_input.d)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1303f)), vec3<bool>(arg_0.x & true, !var_0.c.x, true));
    var var_2 = _wgslsmith_div_f32(164f, var_0.b);
    return select(vec4<bool>(all(vec3<bool>(any(vec4<bool>(arg_0.x, false, arg_0.x, false)), all(var_1.c.zy), var_0.b > 265f)), false, var_0.c.x, max(var_1.a.x, u_input.c ^ 2147483647i) != -59137i), select(!vec4<bool>(false | var_0.c.x, -2018i >= u_input.c, 16740i <= var_1.a.x, var_0.c.x | arg_0.x), select(select(!vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x), !vec4<bool>(arg_0.x, var_0.c.x, true, var_1.c.x), any(vec2<bool>(false, arg_0.x))), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, arg_0.x), vec4<bool>(arg_0.x, false, var_0.c.x, true), var_0.c.x)), true), true);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.a * _wgslsmith_f_op_vec3_f32(-arg_2.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-232f, arg_2.b.b, 1436f)))))), Struct_1(_wgslsmith_div_vec3_i32(reverseBits(reverseBits(vec3<i32>(-1i, -15307i, arg_2.d))), vec3<i32>(1i, 0i, arg_2.b.a.x) << (~vec3<u32>(79892u, 4294967295u, arg_1.x) % vec3<u32>(32u))), 368f, vec3<bool>(true, true, true)), Struct_1(min(arg_3.a, vec3<i32>(-1i) * -arg_3.a), arg_2.c.b, arg_2.e.wzw), arg_2.c.a.x, func_5(arg_2.c.c.zz, _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_div_u32(arg_0.x, 1u), arg_2, arg_2, Struct_1(vec3<i32>(2147483647i, arg_3.a.x, -1i), _wgslsmith_f_op_f32(f32(-1f) * -378f), func_3(u_input.b, vec4<u32>(1u, arg_0.x, arg_0.x, u_input.b.x), arg_2))))));
    var var_1 = ~(~u_input.b.xww);
    global0 = array<Struct_1, 17>();
    return var_0.b.b;
}

fn func_1() -> vec4<f32> {
    var var_0 = global0[_wgslsmith_index_u32(u_input.d, 17u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2441f * 1349f), var_0.b, _wgslsmith_f_op_f32(func_2(vec2<u32>(55273u, 73996u), vec2<u32>(u_input.b.x, u_input.d), Struct_2(vec3<f32>(var_0.b, 1242f, -1000f), Struct_1(var_0.a, var_0.b, vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x)), Struct_1(var_0.a, -680f, var_0.c), 41605i, vec4<bool>(false, true, var_0.c.x, var_0.c.x)), global0[_wgslsmith_index_u32(0u, 17u)])), _wgslsmith_f_op_f32(-531f * var_0.b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -174f, -173f, -1432f)))), vec4<f32>(-528f, var_0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b - -393f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_f_op_f32(f32(-1f) * -896f)))));
    var_0 = Struct_1(vec3<i32>(-39941i, var_0.a.x, abs(i32(-1i) * -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b, -771f)) * _wgslsmith_f_op_f32(max(var_1.x, -1461f))))), !(!func_5(select(var_0.c.xy, var_0.c.yx, var_0.c.xz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -882f, var_0.b))).xyw));
    return var_1;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = !vec4<bool>(true, true || func_5(arg_3.e.xw, _wgslsmith_f_op_vec3_f32(exp2(arg_3.a))).x, false, false);
    var var_1 = any(arg_1.c);
    var var_2 = arg_1.c.yz;
    var var_3 = ~vec2<u32>(u_input.b.x, min(1u, 71900u));
    var var_4 = !select(var_0.yw, var_0.zy, func_3(firstTrailingBit(~u_input.b), min(vec4<u32>(0u, u_input.d, 1u, 0u), vec4<u32>(1u, 0u, u_input.d, 10154u)), Struct_2(vec3<f32>(arg_0.x, -684f, arg_2.x), arg_3.b, arg_3.b, 0i, var_0)).x);
    return Struct_1(arg_1.a, arg_0.x, arg_1.c);
}

fn func_7(arg_0: Struct_1) -> Struct_2 {
    global0 = array<Struct_1, 17>();
    let var_0 = ~(~(-6564i));
    return Struct_2(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_1()).x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))), arg_0.b), Struct_1(arg_0.a >> (u_input.b.zzx % vec3<u32>(32u)), arg_0.b, vec3<bool>(arg_0.c.x, any(vec3<bool>(arg_0.c.x, arg_0.c.x, true)), arg_0.b > -476f)), Struct_1(select(vec3<i32>(var_0, 27825i, u_input.a), vec3<i32>(var_0, 0i, 1i) << (vec3<u32>(4294967295u, 98129u, u_input.d) % vec3<u32>(32u)), func_5(vec2<bool>(true, arg_0.c.x), vec3<f32>(621f, arg_0.b, 1405f)).x) >> (abs(_wgslsmith_mult_vec3_u32(u_input.b.xzw, u_input.b.zxw)) % vec3<u32>(32u)), 425f, arg_0.c), arg_0.a.x, !(!(!(!vec4<bool>(arg_0.c.x, arg_0.c.x, false, arg_0.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = func_7(func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())), Struct_1(~(~vec3<i32>(u_input.c, u_input.a, u_input.a)), 652f, func_5(vec2<bool>(true, true), vec3<f32>(413f, 453f, 156f)).yzx), vec4<f32>(-806f, -608f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(194f))), _wgslsmith_f_op_f32(1050f + _wgslsmith_f_op_f32(round(-540f)))), Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1015f, -1952f, 802f)))), global0[_wgslsmith_index_u32(u_input.d, 17u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(6035u, u_input.b.x) << (_wgslsmith_mult_u32(0u, u_input.b.x) % 32u), 17u)], 12513i, func_5(vec2<bool>(true, true), vec3<f32>(-880f, -1000f, -1190f)))));
    let var_2 = _wgslsmith_clamp_i32(38571i, u_input.a, 2147483647i);
    var_0 = var_1.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.d, ~0u), var_1.c.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.b, -241f, var_1.c.b)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, 1022f)), var_1.c.b, var_1.a.x)));
}

