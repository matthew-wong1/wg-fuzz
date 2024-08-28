struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(76053u, 1u), vec2<u32>(0u, 25094u), vec2<u32>(1u, 55255u), vec2<u32>(7374u, 0u), vec2<u32>(1u, 7333u), vec2<u32>(1u, 116204u), vec2<u32>(1u, 1u));

var<private> global1: array<Struct_1, 23>;

var<private> global2: vec2<i32> = vec2<i32>(-1i, 0i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> u32 {
    global2 = arg_1.zz;
    global1 = array<Struct_1, 23>();
    var var_0 = ~arg_0.b;
    return _wgslsmith_sub_u32(max(~reverseBits(u_input.a.x) & ~(~u_input.e.x), ~_wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(109038u, u_input.c, arg_0.b, 1017u))), arg_0.b);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_add_u32(~func_3(Struct_2(arg_2.a, 0u), arg_2.a), 4294967295u), ~22455u);
    global2 = ~(~vec2<i32>(1i, -21448i));
    let var_1 = Struct_1(arg_0.a, arg_1, arg_3.a.yx, ~(~(~arg_0.d)), -252f);
    var var_2 = u_input.b.yzy | var_1.a;
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1853f))), -1019f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(arg_1 + arg_0.b)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(arg_1, arg_1)), _wgslsmith_f_op_f32(ceil(-907f)), var_1.e) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -453f, var_1.b) + vec3<f32>(-604f, -162f, 282f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.b, arg_0.b, var_1.b))))))));
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_2) -> i32 {
    var var_0 = func_2(Struct_1(abs(vec3<u32>(u_input.b.x | arg_1.x, 42226u ^ arg_0.b, arg_3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -493f)), ~vec2<i32>(-2147483647i, arg_3.a.x & arg_3.a.x), -arg_3.a.x, -1479f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -467f)), -646f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1330f * -1152f), 1578f) - 1021f)), Struct_2(~(firstLeadingBit(arg_0.a) >> (u_input.e.wxx % vec3<u32>(32u))), ~_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.e.yx) >> (abs(_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(0u, 58303u))) % 32u)), func_2(Struct_1(u_input.a, _wgslsmith_div_f32(435f, 1f), vec2<i32>(~6806i, _wgslsmith_add_i32(global2.x, u_input.d)), arg_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-679f * 843f))), _wgslsmith_f_op_f32(floor(-381f)), Struct_2(-arg_0.a & vec3<i32>(u_input.d, global2.x, 0i), arg_3.b), arg_3));
    var var_1 = ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, ~arg_0.a.x, 0i, u_input.d), -vec4<i32>(2147483647i, -28391i, -2147483647i, 0i)), var_0.a.x);
    let var_2 = Struct_1(abs(abs(firstLeadingBit(vec3<u32>(4294967295u, 0u, arg_1.x)) & ~u_input.e.zyw)), -1022f, vec2<i32>(1i, countOneBits(firstLeadingBit(2147483647i))), ~(1i << (_wgslsmith_mod_u32(1u, ~u_input.e.x) % 32u)), -186f);
    var var_3 = var_0.a;
    var var_4 = _wgslsmith_mod_i32(abs(firstLeadingBit(var_0.a.x)), select(0i, ~arg_3.a.x & ~arg_0.a.x, !(arg_2 && true))) << (1u % 32u);
    return 22343i;
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_2(Struct_1(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, arg_2.a.x, arg_2.a.x), countOneBits(vec3<u32>(1u, 0u, 7936u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_2.b * -2680f), true)) + _wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(arg_2.e - arg_1))), arg_0, 13227i, _wgslsmith_f_op_f32(arg_2.b + -2006f)), _wgslsmith_f_op_f32(517f * -356f), func_2(arg_2, _wgslsmith_f_op_f32(arg_2.e * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1491f * arg_2.b), _wgslsmith_f_op_f32(558f + arg_2.e)))), func_2(Struct_1(vec3<u32>(1451u, 1u, arg_2.a.x) >> (vec3<u32>(arg_2.a.x, 20189u, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_f_op_f32(trunc(226f)), vec2<i32>(2147483647i, -23735i), _wgslsmith_mult_i32(arg_0.x, u_input.d), 115f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-296f + 1121f)), func_2(Struct_1(u_input.b.yxx, 1186f, vec2<i32>(u_input.d, 1i), arg_2.c.x, arg_2.b), _wgslsmith_div_f32(-697f, 1954f), func_2(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], -890f, Struct_2(vec3<i32>(arg_2.d, 69971i, -2147483647i), 3632u), Struct_2(vec3<i32>(u_input.d, 0i, 1i), u_input.c)), func_2(arg_2, arg_1, Struct_2(vec3<i32>(28077i, u_input.d, 1i), arg_2.a.x), Struct_2(vec3<i32>(arg_0.x, arg_2.c.x, u_input.d), 28072u))), Struct_2(-vec3<i32>(global2.x, -30804i, -34746i), 141043u)), func_2(Struct_1(u_input.b.xxz << (u_input.a % vec3<u32>(32u)), _wgslsmith_f_op_f32(select(arg_2.b, 1000f, true)), select(vec2<i32>(0i, 0i), vec2<i32>(47512i, u_input.d), vec2<bool>(false, true)), arg_0.x, arg_2.b), 789f, Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(-46496i, arg_2.d, global2.x), vec3<i32>(-34496i, 34454i, global2.x)), ~4294967295u), Struct_2(vec3<i32>(1i, arg_2.d, 8896i), firstTrailingBit(u_input.e.x)))), func_2(arg_2, -229f, Struct_2(select(vec3<i32>(arg_2.c.x, -5223i, u_input.d), max(vec3<i32>(28187i, arg_0.x, -14542i), vec3<i32>(-2147483647i, arg_0.x, 0i)), true), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c, 0u), arg_2.a.x)), func_2(Struct_1(vec3<u32>(u_input.e.x, arg_2.a.x, arg_2.a.x), _wgslsmith_div_f32(802f, arg_1), func_2(arg_2, 493f, Struct_2(vec3<i32>(-1i, -10855i, 2147483647i), u_input.a.x), Struct_2(vec3<i32>(arg_0.x, u_input.d, arg_0.x), 30133u)).a.yz, global2.x, arg_2.e), -1700f, func_2(Struct_1(vec3<u32>(38901u, arg_2.a.x, 15638u), arg_1, arg_2.c, u_input.d, -486f), arg_2.b, Struct_2(vec3<i32>(global2.x, arg_2.d, arg_2.c.x), 69511u), Struct_2(vec3<i32>(arg_0.x, u_input.d, global2.x), 51716u)), Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, arg_2.d, -17073i), vec3<i32>(arg_0.x, global2.x, 37704i)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), arg_2.a.xy)))));
    let var_1 = func_3(func_2(Struct_1((vec3<u32>(var_0.b, var_0.b, var_0.b) & vec3<u32>(u_input.e.x, var_0.b, var_0.b)) >> (select(vec3<u32>(var_0.b, var_0.b, 19978u), arg_2.a, false) % vec3<u32>(32u)), _wgslsmith_f_op_f32(arg_1 * 1f), func_2(global1[_wgslsmith_index_u32(~23922u, 23u)], _wgslsmith_f_op_f32(arg_2.b - 316f), Struct_2(var_0.a, arg_2.a.x), var_0).a.xy, abs(arg_2.c.x >> (u_input.a.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) - 419f)), 172f, func_2(Struct_1(~vec3<u32>(var_0.b, 21974u, 0u), 344f, var_0.a.yx, 27794i, arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b - 1000f) + 1254f), func_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.b, 14360u), 23u)], arg_2.b, Struct_2(vec3<i32>(arg_0.x, -2147483647i, var_0.a.x), 48054u), func_2(Struct_1(arg_2.a, arg_1, vec2<i32>(-1i, 10226i), -1i, arg_1), 1000f, Struct_2(var_0.a, 1u), Struct_2(var_0.a, 0u))), Struct_2(var_0.a ^ var_0.a, 4294967295u ^ arg_2.a.x)), var_0), ~var_0.a);
    global0 = array<vec2<u32>, 7>();
    let var_2 = !select(select(select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false), any(vec4<bool>(true, false, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, 1i != global2.x, true));
    let var_3 = arg_2;
    return Struct_1(arg_2.a, arg_1, vec2<i32>(-13544i, -41059i), i32(-1i) * -10705i, -660f);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = u_input.b.wyw;
    global1 = array<Struct_1, 23>();
    let var_1 = ~_wgslsmith_add_u32(0u, _wgslsmith_add_u32(arg_2.b, u_input.b.x & u_input.a.x));
    var var_2 = _wgslsmith_sub_vec3_i32(arg_2.a, arg_2.a & (vec3<i32>(select(u_input.d, -678i, false), max(-1i, -7664i), i32(-1i) * -4903i) >> ((u_input.b.zyx >> (u_input.e.zww % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_3 = func_5(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, func_4(func_2(global1[_wgslsmith_index_u32(var_1, 23u)], arg_1.x, arg_2, arg_2), ~var_0.yz, false, Struct_2(arg_2.a, 49965u))), func_2(Struct_1(vec3<u32>(45389u, 0u, 45108u), arg_1.x, _wgslsmith_mult_vec2_i32(var_2.xy, vec2<i32>(-25154i, var_2.x)), 15932i, _wgslsmith_f_op_f32(trunc(-608f))), -493f, func_2(Struct_1(vec3<u32>(u_input.e.x, 24335u, 4294967295u), -622f, var_2.yy, -51875i, arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -936f), func_2(Struct_1(u_input.e.yyy, arg_1.x, vec2<i32>(u_input.d, arg_2.a.x), arg_2.a.x, arg_1.x), arg_1.x, arg_2, Struct_2(vec3<i32>(-48791i, u_input.d, arg_2.a.x), arg_2.b)), Struct_2(arg_2.a, var_1)), Struct_2(-arg_2.a, arg_0.x)).a.yx), arg_1.x, Struct_1(u_input.e.wwz, _wgslsmith_f_op_f32(round(arg_1.x)), firstLeadingBit(firstTrailingBit(var_2.yx) & var_2.xy), -2147483647i, _wgslsmith_f_op_f32(abs(-1337f))));
    return ~(-(~vec3<i32>(-arg_2.a.x, var_3.d, _wgslsmith_mult_i32(u_input.d, var_3.c.x))));
}

fn func_6(arg_0: vec3<i32>, arg_1: i32, arg_2: i32) -> Struct_1 {
    global0 = array<vec2<u32>, 7>();
    var var_0 = vec2<u32>(7004u, 15981u);
    let var_1 = -(~(~(-1i)));
    let var_2 = select(vec2<bool>(true, !(var_0.x == ~u_input.b.x)), vec2<bool>(any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, false, false, false), true)), false), !vec2<bool>(arg_0.x < (arg_1 << (1u % 32u)), true));
    var_0 = reverseBits(vec2<u32>(var_0.x, ~_wgslsmith_dot_vec4_u32(~u_input.e, ~vec4<u32>(var_0.x, 4294967295u, 4294967295u, var_0.x))));
    return Struct_1(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1040f - _wgslsmith_f_op_f32(min(2278f, -1122f)))), _wgslsmith_mult_vec2_i32(select(~(-arg_0.xx), vec2<i32>(func_2(global1[_wgslsmith_index_u32(120009u, 23u)], 260f, Struct_2(vec3<i32>(3184i, -37758i, 1i), 99801u), Struct_2(vec3<i32>(var_1, arg_1, arg_2), u_input.c)).a.x, -16913i), var_2), vec2<i32>(var_1, -_wgslsmith_mod_i32(u_input.d, -2147483647i))), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -select(arg_0, arg_0, var_2.x), arg_0), _wgslsmith_div_f32(-616f, _wgslsmith_f_op_f32(floor(168f))));
}

fn func_7(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: bool) -> f32 {
    global0 = array<vec2<u32>, 7>();
    global0 = array<vec2<u32>, 7>();
    let var_0 = Struct_2(arg_2.zyw, ~69u | ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, 4294967295u), vec3<u32>(u_input.e.x, u_input.a.x, 27892u)), ~arg_0.a));
    let var_1 = func_2(Struct_1(~(~arg_0.a) | _wgslsmith_mod_vec3_u32(vec3<u32>(42315u, u_input.b.x, 4294967295u), ~u_input.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.b, -343f))))), vec2<i32>(arg_1, _wgslsmith_mod_i32(func_1(vec2<u32>(1u, 4294967295u), vec3<f32>(1948f, arg_0.e, -278f), Struct_2(var_0.a, arg_0.a.x)).x, arg_0.c.x)), arg_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-947f - arg_0.b), _wgslsmith_f_op_f32(round(1f)), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-967f, arg_0.b) + 326f), arg_0.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.e)))))), func_2(func_6(arg_2.xzw, arg_2.x, -arg_0.d), _wgslsmith_f_op_f32(round(arg_0.e)), Struct_2(vec3<i32>(28320i, -24841i, -var_0.a.x), arg_0.a.x), func_2(Struct_1(vec3<u32>(0u, var_0.b, arg_0.a.x) | u_input.a, -166f, _wgslsmith_div_vec2_i32(vec2<i32>(-1i, var_0.a.x), arg_0.c), countOneBits(var_0.a.x), 1000f), _wgslsmith_f_op_f32(arg_0.e * _wgslsmith_f_op_f32(-arg_0.b)), var_0, func_2(Struct_1(vec3<u32>(arg_0.a.x, u_input.b.x, 4294967295u), arg_0.e, arg_0.c, u_input.d, arg_0.b), _wgslsmith_f_op_f32(round(274f)), func_2(Struct_1(vec3<u32>(u_input.e.x, u_input.a.x, u_input.b.x), arg_0.b, var_0.a.zz, 1i, 1787f), -1273f, Struct_2(vec3<i32>(global2.x, u_input.d, -10312i), var_0.b), var_0), var_0))), func_2(func_6(_wgslsmith_mult_vec3_i32(-vec3<i32>(-1i, global2.x, -8889i), arg_2.xxx), func_4(Struct_2(arg_2.xzx, 1u), _wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(4805u, 7u)], arg_0.a.yz), true, Struct_2(var_0.a, var_0.b)), min(32340i, countOneBits(u_input.d))), arg_0.b, func_2(Struct_1(func_6(vec3<i32>(-40711i, global2.x, 1i), 2147483647i, arg_0.d).a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_2.yz, ~(-2147483647i), _wgslsmith_f_op_f32(floor(arg_0.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(936f + arg_0.e)), Struct_2(var_0.a, 1u), var_0), var_0));
    global2 = vec2<i32>(_wgslsmith_clamp_i32(1i, ~_wgslsmith_sub_i32(func_4(var_0, arg_0.a.yx, arg_3, var_0), -1i), ~func_4(var_1, global0[_wgslsmith_index_u32(var_1.b, 7u)], true, Struct_2(vec3<i32>(arg_0.c.x, u_input.d, -45321i), var_0.b)) ^ 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(func_5(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.a.x, arg_1), vec2<i32>(-11587i, 24534i)), arg_0.b, arg_0).c.x, countOneBits(_wgslsmith_add_i32(arg_2.x, -2157i)), _wgslsmith_dot_vec3_i32(~arg_2.yzx, -var_0.a)), vec3<i32>(var_0.a.x, ~var_1.a.x, -64753i)));
    return arg_0.b;
}

fn func_8(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 * 1494f))))));
    var var_1 = !(!(arg_0 < var_0.x)) | any(!vec4<bool>(true, true, all(vec3<bool>(false, true, true)), true));
    global2 = ~(-(~(-arg_2.c)));
    var var_2 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(select(false, true, true), all(vec2<bool>(true, false)), false, -657f >= arg_0), !(907f > var_0.x)), select(vec4<bool>(false, all(vec3<bool>(true, false, true)), false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(false, false, false, false)), true, -36684i != u_input.d)), false), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, !select(false, false, true), true, false && (var_0.x < arg_0))));
    let var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(select(countOneBits(vec4<i32>(u_input.d, u_input.d, -14973i, -17976i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, -8589i, 14500i, arg_2.c.x), vec4<i32>(1i, global2.x, -9525i, -65311i)), var_2.x)), -reverseBits(-vec4<i32>(-1i, -2679i, arg_2.c.x, 2771i)), vec4<i32>(u_input.d, -firstLeadingBit(-1i), 11703i, func_4(func_2(Struct_1(u_input.b.yyw, var_0.x, vec2<i32>(arg_2.d, global2.x), global2.x, -1000f), arg_2.b, Struct_2(vec3<i32>(u_input.d, -1i, arg_2.c.x), 96359u), Struct_2(vec3<i32>(-24161i, 1i, global2.x), 1u)), vec2<u32>(37340u, arg_1), true, func_2(Struct_1(vec3<u32>(0u, arg_2.a.x, arg_1), arg_2.e, vec2<i32>(7032i, 2147483647i), arg_2.d, 619f), 682f, Struct_2(vec3<i32>(u_input.d, 0i, u_input.d), arg_2.a.x), Struct_2(vec3<i32>(arg_2.d, -1i, arg_2.d), u_input.b.x))))), ~vec4<i32>(abs(arg_2.c.x), arg_2.d, -2147483647i, -35761i));
    return global1[_wgslsmith_index_u32(arg_2.a.x, 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<i32>(~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.d, 870i, global2.x, u_input.d)), vec4<i32>(1i, u_input.d, global2.x, u_input.d) << (vec4<u32>(u_input.a.x, 5015u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), select(8095i, u_input.d << (u_input.c % 32u), true)), ~abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global2.x, -36525i), vec3<i32>(1i, 0i, global2.x)) | ~global2.x));
    var var_0 = _wgslsmith_f_op_f32(-678f * 1000f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1417f));
    let var_1 = func_8(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_7(func_6(func_1(vec2<u32>(u_input.b.x, 4294967295u), vec3<f32>(1000f, -247f, -2601f), Struct_2(vec3<i32>(11562i, global2.x, global2.x), u_input.b.x)), firstTrailingBit(u_input.d), -2147483647i | global2.x), func_2(func_6(vec3<i32>(2147483647i, u_input.d, -22261i), -3186i, 2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -1541f), func_2(global1[_wgslsmith_index_u32(0u, 23u)], -595f, Struct_2(vec3<i32>(u_input.d, 3900i, global2.x), 51384u), Struct_2(vec3<i32>(-3246i, global2.x, -29i), u_input.e.x)), func_2(Struct_1(u_input.e.xwy, 659f, vec2<i32>(u_input.d, 0i), u_input.d, -2017f), 1098f, Struct_2(vec3<i32>(u_input.d, u_input.d, 2147483647i), u_input.b.x), Struct_2(vec3<i32>(-6196i, u_input.d, u_input.d), 4294967295u))).a.x, -vec4<i32>(global2.x, -2147483647i, u_input.d, u_input.d), false || any(vec2<bool>(true, false)))), 770f), ~u_input.c, Struct_1(~(~(~u_input.e.xyx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1157f - _wgslsmith_f_op_f32(f32(-1f) * -2287f))), vec2<i32>(~(u_input.d ^ -10978i), u_input.d), countOneBits(~(-21952i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-142f, 1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-276f)), _wgslsmith_f_op_f32(-1526f * 466f)))));
    var var_2 = Struct_2(~(-select(abs(vec3<i32>(global2.x, var_1.d, 54780i)), select(vec3<i32>(u_input.d, -38123i, u_input.d), vec3<i32>(global2.x, var_1.c.x, u_input.d), true), vec3<bool>(true, false, true))), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, var_1.a.x, u_input.b.x, var_1.a.x), u_input.b), 56703u), var_1.a));
    let var_3 = vec4<bool>(!(_wgslsmith_dot_vec2_u32(countOneBits(var_1.a.xz), ~vec2<u32>(var_2.b, 1430u)) >= (u_input.b.x & func_3(Struct_2(var_2.a, u_input.c), vec3<i32>(global2.x, -56770i, var_2.a.x)))), true, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false))) & any(vec4<bool>(all(vec2<bool>(true, true)), true, var_1.a.x != 154414u, all(vec3<bool>(false, false, true)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(247f, 1100f, _wgslsmith_div_f32(var_1.e, -1782f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, 2544f, var_1.e)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.e, -145f, _wgslsmith_f_op_f32(f32(-1f) * -1448f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e, var_1.e, var_1.b))))), 1332f, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e, var_1.b, var_1.e)))));
}

