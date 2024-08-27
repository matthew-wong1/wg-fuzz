struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec4<u32>;

var<private> global2: vec4<u32>;

var<private> global3: bool = false;

var<private> global4: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<f32> {
    var var_0 = vec3<u32>(~global2.x, global1.x, 34549u);
    global1 = u_input.c;
    global4 = abs(0u & ~_wgslsmith_mult_u32(firstLeadingBit(u_input.e), u_input.c.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(975f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1035f * 1122f), -588f), -2339f), _wgslsmith_f_op_f32(f32(-1f) * -1180f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, -1359f)), _wgslsmith_f_op_f32(-415f - -161f), _wgslsmith_f_op_f32(ceil(-2536f))))));
    var var_2 = u_input.b;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, -633f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) * vec3<f32>(1095f, var_1.x, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1045f, -279f, var_1.x) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(247f, -603f, var_1.x), vec3<f32>(var_1.x, var_1.x, var_1.x))))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-623f, _wgslsmith_div_f32(var_1.x, 372f), _wgslsmith_f_op_f32(step(356f, var_1.x))))))), false));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: vec2<bool>, arg_3: Struct_2) -> bool {
    global4 = arg_3.b.c;
    let var_0 = ~countOneBits((u_input.b ^ -2147483647i) << (0u % 32u));
    let var_1 = Struct_3(~arg_1.b.a.e.c);
    var var_2 = true;
    global0 = !(!(true | arg_3.b.e.x));
    return any(vec4<bool>(true, arg_3.e.e.x, arg_3.e.e.x, false));
}

fn func_2() -> u32 {
    var var_0 = firstLeadingBit(~_wgslsmith_add_i32(2147483647i, u_input.b) & -2147483647i) <= (u_input.b & u_input.b);
    var var_1 = vec2<bool>(false, func_4(Struct_3(~global1.x), Struct_5(vec3<i32>(u_input.b << (u_input.d % 32u), u_input.b & -1i, 1i), Struct_4(Struct_2(1133f, Struct_1(vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<f32>(4236f, 1249f, 2124f), global1.x, vec3<f32>(-531f, 222f, -160f), vec4<bool>(true, true, true, true)), Struct_1(vec3<i32>(0i, -24397i, u_input.b), vec3<f32>(-733f, -154f, 378f), 0u, vec3<f32>(-989f, -1320f, -835f), vec4<bool>(false, true, true, true)), Struct_1(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<f32>(283f, -928f, 394f), u_input.a, vec3<f32>(-201f, 443f, -1102f), vec4<bool>(true, false, true, true)), Struct_1(vec3<i32>(u_input.b, 0i, u_input.b), vec3<f32>(-164f, 1077f, -1523f), 0u, vec3<f32>(-1000f, -1248f, 540f), vec4<bool>(true, false, false, false))), all(vec2<bool>(true, true)))), vec2<bool>(true, true), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-210f, 709f, true))), Struct_1(max(vec3<i32>(9583i, -71574i, 1i), vec3<i32>(-33415i, u_input.b, u_input.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1147f, -470f, 694f)), ~0u, _wgslsmith_div_vec3_f32(vec3<f32>(-708f, 634f, 833f), vec3<f32>(375f, 189f, -594f)), vec4<bool>(false, true, false, true)), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -40865i, -5678i), vec3<i32>(u_input.b, -49407i, -2147483647i)), _wgslsmith_f_op_vec3_f32(func_3()), ~4294967295u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(595f, -470f, 1406f)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))), Struct_1(vec3<i32>(u_input.b, u_input.b, -2147483647i), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(217f, 140f, 285f))), firstTrailingBit(4294967295u), vec3<f32>(-589f, -845f, -521f), vec4<bool>(true, true, true, true)), Struct_1(reverseBits(vec3<i32>(u_input.b, u_input.b, 2147483647i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-293f, 326f, -1175f)), ~global2.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1208f, 793f, 656f)), vec4<bool>(false, false, false, true)))));
    return 87707u;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec3<bool>) -> Struct_4 {
    var var_0 = _wgslsmith_sub_i32(~u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~firstTrailingBit(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(-2147483647i, 2147483647i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(0i, -24450i, u_input.b)), max(u_input.b, u_input.b)) ^ ((vec2<i32>(u_input.b, 2147483647i) >> (vec2<u32>(83643u, arg_1.x) % vec2<u32>(32u))) >> (vec2<u32>(31204u, 0u) % vec2<u32>(32u)))));
    var var_1 = 50153i;
    let var_2 = Struct_3(abs((63638u ^ ~global1.x) << (~_wgslsmith_mod_u32(4294967295u, 89639u) % 32u)));
    var_1 = ~0i;
    let var_3 = var_2;
    return Struct_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(floor(-1291f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2450f, -2127f) * 1225f)), Struct_1(vec3<i32>(u_input.b, -u_input.b, _wgslsmith_mult_i32(0i, u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-502f, -879f, 226f) + vec3<f32>(582f, -126f, 775f))), arg_1.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1617f, 1000f, -801f), vec3<f32>(-1037f, -1417f, 1327f))), _wgslsmith_div_vec3_f32(vec3<f32>(-218f, 1170f, 775f), vec3<f32>(595f, -453f, -128f)))), !vec4<bool>(arg_0.x, arg_2.x, false, arg_0.x)), Struct_1(~abs(vec3<i32>(-25303i, u_input.b, u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-139f, 514f, -1000f))), ~select(106202u, global2.x, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-497f, -1066f, -631f) + vec3<f32>(-613f, -879f, 424f))), select(select(vec4<bool>(false, false, false, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), true), select(vec4<bool>(arg_2.x, arg_0.x, true, false), vec4<bool>(arg_0.x, arg_2.x, true, false), arg_0.x), !vec4<bool>(true, arg_2.x, arg_0.x, false))), Struct_1(-countOneBits(vec3<i32>(u_input.b, u_input.b, 11106i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(211f, 1083f, 797f))), ~_wgslsmith_mod_u32(arg_1.x, 0u), vec3<f32>(1f, 1f, 1f), !(!vec4<bool>(false, arg_0.x, false, arg_2.x))), Struct_1(-countOneBits(vec3<i32>(2147483647i, 2147483647i, u_input.b)), vec3<f32>(157f, _wgslsmith_div_f32(820f, 116f), -578f), firstTrailingBit(29077u) & var_3.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 753f, -658f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(649f, -560f, 459f)))), vec4<bool>(false, !arg_0.x, true, false))), arg_2.x);
}

fn func_1(arg_0: i32) -> vec3<f32> {
    let var_0 = func_5(!select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))), ~u_input.c, !vec3<bool>(true, true, func_2() >= 0u));
    var var_1 = global2.zwy;
    var var_2 = arg_0;
    let var_3 = -1746f;
    global0 = var_0.a.e.e.x;
    return vec3<f32>(var_0.a.c.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.e.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.a.a, var_3))))) + var_0.a.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3))))));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_4 {
    var var_0 = Struct_1(~_wgslsmith_clamp_vec3_i32(~(-vec3<i32>(-7952i, arg_2.e.a.x, -4014i)), firstLeadingBit(arg_2.b.a), vec3<i32>(_wgslsmith_add_i32(arg_0.a.x, -2147483647i), firstLeadingBit(29517i), max(u_input.b, -331i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0.b.x)), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-arg_2.d.b.x)))) * vec3<f32>(_wgslsmith_f_op_f32(round(-2264f)), arg_2.e.b.x, arg_0.b.x)), ~0u, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_2.a), -398f)))), func_5(arg_0.e.wx, u_input.c, !(!func_5(vec2<bool>(arg_0.e.x, false), vec4<u32>(arg_0.c, u_input.e, arg_0.c, 4294967295u), arg_2.d.e.zwy).a.e.e.yxz)).a.c.e);
    global4 = _wgslsmith_mod_u32(~(~(arg_2.b.c >> (6490u % 32u))), ~_wgslsmith_div_u32(u_input.e, _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0.c, global1.x), 1u, global1.x)));
    let var_1 = func_5(vec2<bool>(var_0.e.x, !arg_2.e.e.x), vec4<u32>(_wgslsmith_div_u32(u_input.e, arg_2.b.c), ~max(global1.x, ~29992u), ~(~1u) >> (~arg_0.c % 32u), arg_0.c), arg_2.e.e.zxz).a.d;
    var_0 = Struct_1(reverseBits(countOneBits(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.a, vec3<i32>(1i, 0i, -1i)), ~vec3<i32>(u_input.b, 11730i, 57405i)))), var_0.d, ~1u, _wgslsmith_f_op_vec3_f32(-var_0.b), func_5(select(func_5(arg_2.b.e.wz, firstLeadingBit(vec4<u32>(85073u, 66651u, 1u, 0u)), func_5(vec2<bool>(false, false), u_input.c, arg_0.e.wwy).a.b.e.yyx).a.c.e.yx, vec2<bool>(!arg_0.e.x, var_0.e.x), 0u != _wgslsmith_div_u32(var_1.c, 61845u)), u_input.c, !arg_0.e.xwz).a.c.e);
    var var_2 = firstLeadingBit(-select(~(-12416i), ~2147483647i, var_1.e.x)) ^ _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-arg_2.d.a.yz, vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.a, vec3<i32>(2147483647i, -6202i, -2147483647i)), 39882i)), countOneBits(var_1.a.xz));
    return Struct_4(Struct_2(arg_2.c.b.x, Struct_1(var_1.a ^ abs(vec3<i32>(var_0.a.x, -1i, var_0.a.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1509f, arg_1.x, arg_2.a), vec3<f32>(arg_2.e.d.x, -780f, -990f), true)), 0u, arg_0.d, arg_0.e), func_5(arg_2.e.e.zz, vec4<u32>(~var_0.c, _wgslsmith_add_u32(var_0.c, var_0.c), abs(67829u), 29406u), arg_0.e.xwx).a.d, func_5(!(!arg_0.e.xx), ~vec4<u32>(global1.x, var_0.c, 61600u, 0u), vec3<bool>(true, !arg_2.e.e.x, true)).a.e, arg_2.d), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(-(~(-min(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(u_input.b, -6163i, u_input.b)))), func_6(Struct_1(-vec3<i32>(u_input.b, 0i, u_input.b) ^ ~vec3<i32>(u_input.b, -27349i, -34411i), _wgslsmith_f_op_vec3_f32(func_1(u_input.b)), global1.x, vec3<f32>(-332f, -1090f, -499f), func_5(vec2<bool>(true, true), _wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(u_input.e, 0u, global2.x, global1.x)), vec3<bool>(false, false, true)).a.d.e), vec2<f32>(-788f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1414f, -358f)))), Struct_2(-388f, Struct_1(vec3<i32>(u_input.b, u_input.b, -47i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(209f, -706f, 1000f)), global1.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(379f, -349f, 410f) + vec3<f32>(1053f, -732f, 1142f)), vec4<bool>(false, true, false, false)), Struct_1(~vec3<i32>(2147483647i, 0i, 2147483647i), _wgslsmith_f_op_vec3_f32(vec3<f32>(309f, -296f, 1343f) * vec3<f32>(582f, -1874f, -427f)), _wgslsmith_mod_u32(16597u, 57417u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1072f, 508f, -1116f)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true))), func_5(func_5(vec2<bool>(false, true), vec4<u32>(1988u, u_input.e, global1.x, global2.x), vec3<bool>(true, true, true)).a.d.e.wz, u_input.c, vec3<bool>(true, true, true)).a.e, func_5(vec2<bool>(false, false), u_input.c, select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false)).a.e)));
    global0 = !all(func_6(Struct_1(~vec3<i32>(-1i, var_0.b.a.b.a.x, u_input.b), var_0.b.a.c.b, 78319u, vec3<f32>(var_0.b.a.d.b.x, 1000f, var_0.b.a.d.b.x), var_0.b.a.c.e), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.a.d.b.xy + var_0.b.a.b.b.xx) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(355f, var_0.b.a.a)))), func_5(var_0.b.a.b.e.yz, vec4<u32>(4294967295u, var_0.b.a.b.c, 11082u, global1.x) | u_input.c, func_5(var_0.b.a.c.e.xw, vec4<u32>(0u, u_input.e, 4294967295u, var_0.b.a.b.c), var_0.b.a.b.e.xyz).a.e.e.zzy).a).a.e.e.xx);
    global3 = true;
    let var_1 = vec2<bool>(var_0.b.a.e.e.x, true);
    let var_2 = var_0.b.a.c.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(reverseBits(min(vec4<i32>(u_input.b, u_input.b, var_0.a.x, -32098i), vec4<i32>(u_input.b, var_0.a.x, u_input.b, 2147483647i))) | (~vec4<i32>(u_input.b, -1i, -2147483647i, u_input.b) << (~u_input.c % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.x, 29661i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, 0i, 28981i), vec3<i32>(var_0.b.a.e.a.x, -1i, 0i))), firstTrailingBit(vec4<i32>(1i, -47603i, var_0.b.a.b.a.x, var_0.a.x) >> (u_input.c % vec4<u32>(32u))))), 141f, global1.x, var_0.b.a.e.a);
}

