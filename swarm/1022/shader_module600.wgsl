struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<i32>(-52861i, -35352i, 1i, 27908i), 639f, Struct_1(0u, 513f), vec3<bool>(true, false, true), Struct_2(Struct_1(4294967295u, 1368f), -1000f, 38856i));

var<private> global1: vec2<f32> = vec2<f32>(2724f, -1145f);

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(8261u, -1000f), -1839f, -51830i), Struct_2(Struct_1(1u, 473f), 100f, -1i), Struct_2(Struct_1(4294967295u, -2359f), 582f, -1i), Struct_2(Struct_1(4294967295u, 1000f), 1330f, i32(-2147483648)), Struct_2(Struct_1(57517u, -1640f), -1174f, -47333i), Struct_2(Struct_1(78471u, -413f), 1420f, 2147483647i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = global0.c;
    let var_1 = !global0.d.x;
    let var_2 = global0.e;
    global2 = array<Struct_2, 6>();
    let var_3 = Struct_3(firstLeadingBit(global0.a), _wgslsmith_f_op_f32(step(global1.x, -152f)), global0.c, global0.d, global0.e);
    return var_0.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: u32) -> i32 {
    let var_0 = Struct_3(~min(global0.a, ~(-vec4<i32>(0i, 1i, arg_0.x, 0i))), _wgslsmith_div_f32(837f, global0.c.b), Struct_1(_wgslsmith_sub_u32(arg_1.x, _wgslsmith_mod_u32(~global0.c.a, ~1u)), _wgslsmith_f_op_f32(func_3(0i))), vec3<bool>(global1.x > _wgslsmith_f_op_f32(abs(global1.x)), any(global0.d.yx), global0.d.x), global2[_wgslsmith_index_u32(arg_1.x, 6u)]);
    global0 = var_0;
    let var_1 = Struct_5(Struct_3(firstTrailingBit(var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), var_0.c, select(select(vec3<bool>(true, true, var_0.d.x), select(vec3<bool>(global0.d.x, global0.d.x, global0.d.x), vec3<bool>(global0.d.x, true, var_0.d.x), global0.d), select(vec3<bool>(true, var_0.d.x, var_0.d.x), vec3<bool>(var_0.d.x, true, true), true)), select(!vec3<bool>(true, var_0.d.x, true), global0.d, select(vec3<bool>(var_0.d.x, global0.d.x, global0.d.x), var_0.d, global0.d)), global0.d), var_0.e));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), 613f, _wgslsmith_f_op_f32(457f - var_0.c.b), -132f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1258f, var_0.b, var_1.a.c.b, 1133f) - vec4<f32>(-527f, -1000f, 341f, -1000f)), vec4<f32>(-975f, -572f, var_1.a.b, global0.e.a.b)))))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), global0.b);
    return countOneBits(reverseBits(arg_0.x)) | -924i;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(max(global0.c.b, global0.c.b));
    var var_1 = 1832f > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.x, var_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(985f, 108f))));
    let var_2 = Struct_2(global0.e.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b, _wgslsmith_f_op_f32(ceil(-851f)), true))))), u_input.a.x);
    global1 = arg_0.yx;
    global0 = Struct_3(-(vec4<i32>(-1i) * -min(global0.a, vec4<i32>(var_2.c, 0i, var_2.c, -2147483647i))), arg_0.x, Struct_1(firstLeadingBit(1u), -383f), select(global0.d, select(global0.d, select(global0.d, select(vec3<bool>(global0.d.x, false, global0.d.x), vec3<bool>(false, false, false), false), false), any(select(vec2<bool>(false, false), vec2<bool>(false, global0.d.x), vec2<bool>(global0.d.x, false)))), !vec3<bool>(global0.c.a <= 1u, global0.d.x, any(global0.d.zy))), Struct_2(var_2.a, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -138f) * _wgslsmith_f_op_f32(-var_2.b))), global0.a.x));
    return Struct_3(vec4<i32>(-2147483647i, countOneBits(~(i32(-1i) * -1i)), u_input.a.x, 0i), 219f, Struct_1(reverseBits(_wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(var_2.a.a, var_2.a.a, var_2.a.a))), _wgslsmith_f_op_f32(floor(global1.x))), global0.d, global0.e);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = ~global0.a >> ((~_wgslsmith_clamp_vec4_u32(~vec4<u32>(8518u, 53747u, 2163u, 64581u), ~vec4<u32>(0u, 4294967295u, 0u, global0.c.a), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, arg_0.e.a.a, 86548u, arg_1.x), vec4<u32>(arg_1.x, 5147u, 6744u, arg_1.x))) << (min(~vec4<u32>(arg_1.x, 68591u, 60470u, 4294967295u), ~vec4<u32>(95100u, arg_0.e.a.a, arg_1.x, arg_0.c.a) << (reverseBits(vec4<u32>(arg_1.x, arg_0.c.a, arg_0.c.a, arg_1.x)) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_1 = abs(global0.a);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(func_3(-27251i)), _wgslsmith_f_op_f32(1586f + global0.e.a.b)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -157f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b - -970f) + _wgslsmith_f_op_f32(sign(arg_0.b)))))) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b))), _wgslsmith_f_op_f32(f32(-1f) * -1503f)))));
    global2 = array<Struct_2, 6>();
    global1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-arg_0.c.b)))));
    return Struct_1(arg_1.x, 1747f);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global2 = array<Struct_2, 6>();
    global2 = array<Struct_2, 6>();
    let var_0 = global0.d;
    var var_1 = _wgslsmith_div_vec2_i32(-(~(~(~vec2<i32>(-66951i, u_input.a.x)))), vec2<i32>(_wgslsmith_add_i32(global0.a.x, u_input.a.x) >> (1u % 32u), func_2(-_wgslsmith_mult_vec2_i32(vec2<i32>(5595i, 1i), vec2<i32>(1i, 2147483647i)), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(global0.c.a, 4294967295u, global0.c.a, 37491u), vec4<u32>(1u, 4294967295u, 4294967295u, global0.e.a.a))), 110254u)));
    var_1 = countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(func_2(~vec2<i32>(var_1.x, global0.e.c), vec4<u32>(global0.e.a.a, arg_0.a, 0u, arg_0.a), abs(global0.c.a)), global0.e.c), countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), reverseBits(vec2<i32>(0i, 25578i))))));
    return func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), -984f, _wgslsmith_f_op_f32(f32(-1f) * -1680f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1320f, 2051f, -267f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(141f, -472f, global0.b)))), global0.a).e.a;
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)));
    let var_1 = func_6(func_5(func_4(vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(f32(-1f) * -598f)), vec4<i32>(1i, 1i, _wgslsmith_clamp_i32(-101044i, global0.e.c, u_input.a.x), func_2(vec2<i32>(2147483647i, 18724i), vec4<u32>(arg_1, arg_0.a.a, global0.e.a.a, arg_1), 44764u))), min(max(firstLeadingBit(vec3<u32>(0u, 0u, 27638u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1, 4294967295u, arg_0.a.a), vec3<u32>(arg_1, global0.e.a.a, 0u))), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(4294967295u, global0.e.a.a, arg_1)), min(vec3<u32>(arg_1, global0.c.a, 33141u), vec3<u32>(42231u, arg_0.a.a, global0.c.a)))), any(vec4<bool>(false && global0.d.x, !global0.d.x, func_4(vec3<f32>(180f, -658f, 177f), global0.a).d.x, !global0.d.x))));
    let var_2 = arg_0.c;
    var var_3 = var_1.a;
    global1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(-343f * 982f)), 1680f)), arg_0.a.b)));
    return Struct_4(func_6(global0.c), _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(firstLeadingBit(global0.c.a), 106731u)), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, var_1.a, global0.c.a, global0.c.a), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.a, 21128u, var_1.a, arg_1) >> (vec4<u32>(65683u, 45739u, arg_1, arg_1) % vec4<u32>(32u)), ~vec4<u32>(var_1.a, 0u, var_1.a, 4294967295u)), firstLeadingBit(reverseBits(vec4<u32>(var_1.a, global0.c.a, global0.c.a, 1u)))), Struct_3(global0.a, global0.b, Struct_1(~global0.e.a.a, -457f), vec3<bool>(all(vec3<bool>(global0.d.x, global0.d.x, global0.d.x)), false, all(func_4(vec3<f32>(1940f, var_1.b, -481f), vec4<i32>(1i, arg_0.c, u_input.a.x, 0i)).d)), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -137f, 2176f)), global0.a).e), abs(~arg_0.a.a >> (17209u % 32u)));
}

fn func_7(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<bool>) -> StorageBuffer {
    global0 = Struct_3(global0.a, 1f, arg_1.a, arg_0.d.d, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, global1.x, 1000f) * vec3<f32>(-1000f, -696f, global0.e.a.b)) * vec3<f32>(arg_1.a.b, -425f, arg_0.d.b))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(global0.a, arg_0.d.a), ~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.c, 0i, 12146i, arg_0.d.a.x), arg_0.d.a))).e);
    var var_0 = 40610u;
    return StorageBuffer(~_wgslsmith_mod_vec4_u32(arg_0.c & arg_0.c, _wgslsmith_sub_vec4_u32(~arg_0.c, ~arg_0.c)), arg_1.a.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2553f, global1.x, -1290f, global0.c.b), vec4<f32>(global0.e.b, global0.b, 179f, global0.e.a.b), false))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(1408f - 1495f), -938f, _wgslsmith_f_op_f32(round(arg_0.d.e.b))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, global0.e.b, global1.x, -196f))))), func_1(arg_0.d.e, global0.e.a.a >> (4294967295u % 32u)).d.c.a != global0.c.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(func_1(global0.e, countOneBits(~min(global0.e.a.a, global0.c.a))), Struct_2(Struct_1(~(~8721u), -875f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(-global0.c.b)), 1650f), -firstLeadingBit(-6005i)), !func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(490f, global1.x, -1000f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 480f, -105f), vec3<f32>(global1.x, global1.x, global0.b))))), vec4<i32>(~10230i, ~36783i, u_input.a.x, u_input.a.x)).d.yy);
}

