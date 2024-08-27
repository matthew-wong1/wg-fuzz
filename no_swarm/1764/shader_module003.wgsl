struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, false, true), 0u, 1i);

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(vec4<bool>(false, true, true, true), 2812u, -1i)), Struct_2(Struct_1(vec4<bool>(true, true, false, true), 11339u, 2147483647i)), Struct_2(Struct_1(vec4<bool>(true, true, false, true), 19782u, -7569i)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), 16379u, 7471i)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), 0u, -1i)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), 102420u, -1i)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), 4294967295u, 1i)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), 1u, -15064i)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), 0u, 2147483647i)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), 4294967295u, 1i)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), 29946u, 48897i)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), 35419u, 1i)), Struct_2(Struct_1(vec4<bool>(true, true, false, true), 11639u, 2147483647i)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), 52868u, -5076i)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), 0u, -42129i)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), 27192u, i32(-2147483648))), Struct_2(Struct_1(vec4<bool>(false, false, false, false), 11930u, 2147483647i)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), 29347u, i32(-2147483648))), Struct_2(Struct_1(vec4<bool>(true, false, false, true), 11130u, 39843i)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), 12142u, 0i)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), 0u, 0i)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), 24483u, 1i)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), 1u, 2147483647i)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), 4294967295u, -20144i)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), 75023u, -1i)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), 55225u, 1i)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), 4294967295u, 2147483647i)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), 0u, 1i)));

var<private> global3: array<vec2<u32>, 10>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: f32) -> f32 {
    let var_0 = true;
    let var_1 = Struct_2(Struct_1(!select(select(vec4<bool>(global0.x, false, global1.a.x, true), vec4<bool>(false, true, false, global1.a.x), global1.a), select(global1.a, global1.a, vec4<bool>(global1.a.x, false, true, true)), global1.c > global1.c), u_input.a, _wgslsmith_div_i32(-_wgslsmith_add_i32(global1.c, -446i), global1.c)));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-596f + arg_1), arg_1)))), vec2<f32>(345f, arg_1)));
    var var_3 = Struct_2(Struct_1(var_1.a.a, u_input.a, _wgslsmith_add_i32(_wgslsmith_mod_i32(firstTrailingBit(8393i), ~u_input.e.x), _wgslsmith_mult_i32(global1.c, -global1.c))));
    let var_4 = (~(~global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(61457u, var_3.a.b, 0u), 10u)]) ^ firstTrailingBit(u_input.d)) ^ ~vec2<u32>(firstTrailingBit(reverseBits(36754u)), u_input.a);
    return -811f;
}

fn func_2() -> u32 {
    let var_0 = global1.c;
    var var_1 = select(vec4<i32>(_wgslsmith_div_i32(abs(31828i), 62347i & u_input.b.x), u_input.b.x, global1.c, 1i), ~firstLeadingBit(-vec4<i32>(2147483647i, u_input.b.x, -2649i, u_input.e.x)), ~3907u < global1.b) ^ ~select(max(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 17842i, u_input.b.x, 2147483647i), vec4<i32>(global1.c, 0i, u_input.b.x, global1.c)), u_input.c), u_input.b, global0.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(135f + 479f), _wgslsmith_f_op_f32(func_3(global1.b, -1940f)))), _wgslsmith_div_vec2_f32(vec2<f32>(-1283f, _wgslsmith_f_op_f32(max(-1381f, -805f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1129f, 245f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(504f, -512f)))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-583f * -660f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(424f, -1350f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1044f, 1697f) - vec2<f32>(219f, -1965f)))))));
    let var_3 = Struct_2(Struct_1(vec4<bool>(true, _wgslsmith_mult_i32(65774i, var_1.x) >= abs(u_input.e.x), ~global1.b == _wgslsmith_add_u32(u_input.d.x, global1.b), any(global1.a)), u_input.d.x, -countOneBits(var_1.x << (107397u % 32u))));
    global2 = array<Struct_2, 28>();
    return u_input.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<bool>) -> vec3<f32> {
    var var_0 = ~_wgslsmith_div_vec4_u32(select(vec4<u32>(1u, global1.b, global1.b, u_input.a), vec4<u32>(14145u, 1u, 73310u, 0u), global1.a) >> ((vec4<u32>(u_input.a, u_input.d.x, u_input.d.x, global1.b) | (vec4<u32>(u_input.a, 4294967295u, 0u, global1.b) << (vec4<u32>(u_input.d.x, global1.b, u_input.a, 0u) % vec4<u32>(32u)))) % vec4<u32>(32u)), min(vec4<u32>(68177u, global1.b, u_input.d.x, 4294967295u) ^ abs(vec4<u32>(global1.b, 44140u, global1.b, u_input.d.x)), ~select(vec4<u32>(17040u, global1.b, 1u, 121504u), vec4<u32>(35701u, 1u, global1.b, 90059u), true)));
    var var_1 = any(!select(global0.xzw, select(!global0.xwx, global0.yyz, true), global0.ywx));
    let var_2 = Struct_1(!(!global1.a), ~global1.b, u_input.b.x << (u_input.a % 32u));
    let var_3 = global2[_wgslsmith_index_u32(abs(func_2()), 28u)];
    var var_4 = Struct_2(Struct_1(vec4<bool>(!(!var_3.a.a.x), var_3.a.a.x, var_2.a.x, !(global1.a.x | global1.a.x)), 31474u, var_3.a.c));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-852f, _wgslsmith_div_f32(1000f, 378f), -178f)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>) -> vec4<f32> {
    global0 = global1.a;
    global3 = array<vec2<u32>, 10>();
    global2 = array<Struct_2, 28>();
    var var_0 = _wgslsmith_f_op_vec3_f32(func_1(u_input.c, global1.c, vec2<bool>(true, !global1.a.x))).zz;
    var var_1 = Struct_1(vec4<bool>(~(global1.c & -14133i) <= max(_wgslsmith_clamp_i32(global1.c, global1.c, -1i), global1.c), arg_0.x, global0.x, false), 19424u, abs(global1.c));
    return _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(arg_1.x, arg_1.x), -1077f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-205f + 334f))), 803f), arg_1.x)));
}

fn func_5(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = !vec2<bool>(!select(!global0.x, any(arg_3.a.a), true), any(vec3<bool>(true, true, true)));
    var var_1 = Struct_2(Struct_1(select(!global1.a, select(select(arg_3.a.a, global1.a, global1.a), select(global1.a, vec4<bool>(arg_3.a.a.x, false, global1.a.x, global1.a.x), true), vec4<bool>(arg_3.a.a.x, true, true, false)), var_0.x), func_2(), abs(0i) ^ global1.c));
    global1 = arg_3.a;
    var var_2 = var_1.a;
    var var_3 = global3[_wgslsmith_index_u32(reverseBits(~firstTrailingBit(arg_2.x)) | abs(44998u), 10u)];
    return Struct_2(var_1.a);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2) -> vec2<u32> {
    global1 = arg_2.a;
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(278f + 773f), _wgslsmith_f_op_f32(f32(-1f) * -1041f), -776f, _wgslsmith_f_op_f32(f32(-1f) * -1491f))))), arg_2.a.c, _wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(10065u, 23321u, 54892u), vec3<u32>(u_input.d.x, 0u, 84394u)), vec3<u32>(0u, u_input.a, 83757u) << (vec3<u32>(22461u, 33695u, 4294967295u) % vec3<u32>(32u))), abs(~(~vec3<u32>(54627u, arg_0.a.b, 61640u)))), global2[_wgslsmith_index_u32(reverseBits(arg_0.a.b), 28u)]).a;
    let var_1 = func_5(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(378f)))), 1000f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -253f)))), _wgslsmith_mult_i32(var_0.c, -1i), ~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, arg_0.a.b), vec3<u32>(0u, u_input.d.x, 1u)) << (firstLeadingBit(vec3<u32>(u_input.d.x, 4294967295u, 0u)) % vec3<u32>(32u))), func_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(228f, -562f, false))), _wgslsmith_div_f32(-181f, 1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(u_input.a, -491f)))), 415f), -(~0i), vec3<u32>(1u, firstTrailingBit(~global1.b), min(~arg_2.a.b, arg_0.a.b)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(10222u, 14716u), ~(~1u)), 28u)]));
    let var_2 = -(vec4<i32>(-1i) * -u_input.b);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(var_2, 13318i, vec2<bool>(false, true))).x)))) + 516f);
    return ~(~u_input.d);
}

fn func_7(arg_0: vec2<u32>, arg_1: u32, arg_2: vec2<i32>, arg_3: bool) -> Struct_1 {
    let var_0 = vec2<u32>(~(~u_input.a), ~global1.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-648f, -412f, _wgslsmith_f_op_f32(min(-1978f, 1057f)))))));
    global1 = Struct_1(select(global1.a, func_5(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(940f, -1904f, var_1.x, 1000f))), arg_2.x, ~vec3<u32>(arg_0.x, 12436u, 1u) | reverseBits(vec3<u32>(var_0.x, 4294967295u, 15018u)), func_5(vec4<f32>(var_1.x, 325f, -174f, -416f), 1i, ~vec3<u32>(global1.b, arg_1, 4294967295u), global2[_wgslsmith_index_u32(func_5(vec4<f32>(var_1.x, var_1.x, -2322f, -425f), u_input.e.x, vec3<u32>(arg_0.x, 1u, 31629u), global2[_wgslsmith_index_u32(var_0.x, 28u)]).a.b, 28u)])).a.a, select(any(vec4<bool>(global0.x, global1.a.x, true, global0.x)), global0.x, -125f > _wgslsmith_f_op_f32(var_1.x - var_1.x))), var_0.x, ~_wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), arg_2.x) | -1i);
    let var_2 = select(vec4<bool>(arg_3, any(global0.zw), true, arg_3), vec4<bool>(true, any(select(vec4<bool>(global0.x, arg_3, false, arg_3), vec4<bool>(arg_3, arg_3, false, true), !vec4<bool>(global0.x, global1.a.x, global1.a.x, global0.x))), true, func_5(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_1(u_input.b, arg_2.x, vec2<bool>(arg_3, false))).x, var_1.x, 732f, -791f), u_input.b.x, _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1, arg_1, 1u), vec3<u32>(var_0.x, 27549u, arg_1)), global2[_wgslsmith_index_u32(global1.b, 28u)]).a.a.x), !(!(global1.a.x | global1.a.x)));
    let var_3 = var_2.zzy;
    return func_5(vec4<f32>(-1011f, 2088f, -311f, var_1.x), 0i | global1.c, ~vec3<u32>(88065u, ~global1.b >> ((arg_0.x & 106881u) % 32u), 43702u), Struct_2(Struct_1(select(func_5(vec4<f32>(1000f, 1709f, var_1.x, var_1.x), arg_2.x, vec3<u32>(44559u, 1u, 6787u), global2[_wgslsmith_index_u32(var_0.x, 28u)]).a.a, func_5(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), 2046i, vec3<u32>(arg_1, var_0.x, 4294967295u), Struct_2(Struct_1(vec4<bool>(false, true, global1.a.x, global1.a.x), arg_0.x, u_input.c.x))).a.a, select(vec4<bool>(false, arg_3, var_2.x, false), global1.a, true)), ~1u, ~2147483647i))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(Struct_2(Struct_1(!global1.a, 69337u, -18282i)), -u_input.b.xwz, func_5(_wgslsmith_f_op_vec4_f32(func_4(select(global1.a.xxy, vec3<bool>(global1.a.x, true, global0.x), global1.a.wzy), _wgslsmith_f_op_vec3_f32(func_1(vec4<i32>(u_input.b.x, global1.c, global1.c, 0i), global1.c, global0.ww)))), _wgslsmith_div_i32(2147483647i, u_input.e.x) & abs(u_input.e.x), ~max(vec3<u32>(u_input.a, global1.b, 4294967295u), vec3<u32>(0u, 19723u, 4294967295u)), Struct_2(Struct_1(vec4<bool>(global1.a.x, false, global1.a.x, false), 45974u, u_input.e.x)))), abs(42992u), -u_input.e.yz, false);
    global0 = !var_0.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(471f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1060f) + _wgslsmith_div_f32(871f, 1887f))) - vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-764f + -720f))), _wgslsmith_f_op_f32(func_3(0u, 681f)), -1111f)));
    global0 = !vec4<bool>(global1.a.x, global1.a.x, true, true);
    let var_2 = true;
    let var_3 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1000f, 3232f, var_1.x)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1484f, var_1.x, var_1.x, var_1.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(633f, var_1.x, -843f, var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(2624f, var_1.x, 823f, var_1.x) + vec4<f32>(var_1.x, -1560f, 126f, 1061f)), !vec4<bool>(global1.a.x, global0.x, global1.a.x, false))))), u_input.e.x, _wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 29893u, var_0.b), vec3<u32>(54080u, var_0.b, 20204u)), ~vec3<u32>(global1.b, u_input.d.x, global1.b)), ~vec3<u32>(~global1.b, u_input.d.x, 35037u)), Struct_2(func_7(~_wgslsmith_div_vec2_u32(global3[_wgslsmith_index_u32(u_input.d.x, 10u)], u_input.d), _wgslsmith_clamp_u32(var_0.b, var_0.b, func_5(vec4<f32>(var_1.x, -1370f, var_1.x, var_1.x), -8075i, vec3<u32>(u_input.a, 4294967295u, u_input.d.x), Struct_2(Struct_1(var_0.a, u_input.a, u_input.c.x))).a.b), vec2<i32>(1i, -71349i), select(all(vec2<bool>(true, true)), func_5(vec4<f32>(var_1.x, var_1.x, -1000f, 812f), -64624i, vec3<u32>(28693u, 4294967295u, u_input.a), global2[_wgslsmith_index_u32(4294967295u, 28u)]).a.a.x, true)))).a;
    let var_4 = _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(global1.b, global1.b)), u_input.d);
    global1 = var_3;
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~var_4 >> (~(34913u >> (global1.b % 32u)) % 32u), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_1(vec4<i32>(0i >> (var_4 % 32u), i32(-1i) * -2147483647i, var_0.c, var_3.c), u_input.b.x, !select(vec2<bool>(false, false), vec2<bool>(global0.x, global1.a.x), true))).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1109f * -944f)), 508f), var_1.x), var_4, ~(~(vec4<u32>(global1.b, global1.b, var_3.b, 4294967295u) & _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 70298u, 111536u, 1u), vec4<u32>(19945u, global1.b, global1.b, global1.b), vec4<u32>(4294967295u, 0u, 0u, 51601u)))));
}

