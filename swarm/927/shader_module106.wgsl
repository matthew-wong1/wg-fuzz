struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec3<u32>) -> u32 {
    var var_0 = min(vec2<u32>(1u, ~1u), arg_2.yx);
    var var_1 = _wgslsmith_add_u32(max(~arg_2.x, firstLeadingBit(_wgslsmith_mod_u32(1u, var_0.x) << (arg_2.x % 32u))), var_0.x);
    var var_2 = Struct_4(vec3<i32>(-1i) * -((vec3<i32>(u_input.a, -2147483647i, -20796i) >> (arg_2 % vec3<u32>(32u))) ^ countOneBits(vec3<i32>(-23130i, 2147483647i, -2147483647i))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(min(-1868f, 1348f)), -898f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1 - arg_1)))), vec4<f32>(_wgslsmith_f_op_f32(560f * 661f), _wgslsmith_f_op_f32(select(-584f, _wgslsmith_f_op_f32(min(arg_1, arg_1)), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -832f), -1176f), -2752f)), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(u_input.b, u_input.b), 38449i, ~u_input.b) >> (~_wgslsmith_div_vec3_u32(arg_2, vec3<u32>(1u, 4090u, 35596u)) % vec3<u32>(32u)), vec3<i32>(~u_input.b, firstTrailingBit(u_input.b), -1i) & ((vec3<i32>(2147483647i, u_input.b, -1i) ^ vec3<i32>(2147483647i, 1i, -1i)) | _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -35422i, 54093i), vec3<i32>(u_input.a, u_input.a, u_input.a)))));
    var var_3 = vec3<u32>(~1u, arg_2.x, ~max(arg_2.x, 1u));
    let var_4 = Struct_1(vec4<f32>(arg_1, -536f, arg_1, _wgslsmith_f_op_f32(-arg_1)), ~(vec4<u32>(countOneBits(arg_2.x), firstTrailingBit(u_input.c), arg_2.x, _wgslsmith_dot_vec2_u32(var_3.xy, vec2<u32>(u_input.c, 104557u))) | ~vec4<u32>(arg_2.x, 5274u, var_3.x, u_input.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, var_2.b.x)) + arg_1), _wgslsmith_f_op_f32(trunc(arg_1)))));
    return ~var_3.x;
}

fn func_2(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_sub_u32(~u_input.c, 1u);
    let var_1 = vec2<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true))));
    let var_2 = _wgslsmith_mult_vec4_u32(min(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, 1u, 61107u, 30357u)), abs(vec4<u32>(107514u, u_input.c, 4294967295u, 43112u))), vec4<u32>(~0u, 1u, 1u, countOneBits(0u))), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(50686u, u_input.c, 19750u, 76035u), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(1u, 18668u, u_input.c, 1u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 29154u, u_input.c, 0u), vec4<u32>(21704u, u_input.c, 0u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), ~(vec4<u32>(1u, 35430u, 4294967295u, 4294967295u) >> (vec4<u32>(u_input.c, u_input.c, u_input.c, 3514u) % vec4<u32>(32u))))) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c ^ 1u, u_input.c | 38102u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c), vec4<u32>(653u, u_input.c, u_input.c, 31863u)));
    var_0 = ~(~func_3(any(select(vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(false, true, true, var_1.x), var_1.x)), -580f, var_2.yyz));
    var_0 = u_input.c;
    return Struct_1(arg_0.b, firstLeadingBit(_wgslsmith_div_vec4_u32(var_2, ~var_2) << (vec4<u32>(_wgslsmith_add_u32(1u, 0u), 0u & var_2.x, _wgslsmith_dot_vec2_u32(var_2.wy, vec2<u32>(u_input.c, 50108u)), var_2.x) % vec4<u32>(32u))), -1188f);
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    let var_0 = true;
    let var_1 = vec2<u32>(firstTrailingBit(u_input.c), arg_0.b.b.x);
    let var_2 = arg_0.a;
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_2.a.a.x, _wgslsmith_f_op_f32(exp2(arg_0.b.c)), true)))), -227f, 1203f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1065f * var_2.a.c))), _wgslsmith_f_op_f32(max(-886f, func_2(Struct_4(vec3<i32>(arg_1, u_input.b, arg_1), arg_0.a.a.a, vec3<i32>(0i, u_input.a, -35800i)), var_2.c.a.wyy, arg_0.b.a.x).c))))), arg_0.a.a.b, arg_0.a.b);
    let var_4 = select(vec3<bool>(true, all(select(select(vec4<bool>(true, var_0, false, true), vec4<bool>(var_0, false, true, false), vec4<bool>(false, var_0, true, true)), !vec4<bool>(false, true, var_0, var_0), true)), false), vec3<bool>(any(select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), false || var_0)), !(arg_0.c.b.x != abs(var_2.c.b.x)), false), select(select(!select(vec3<bool>(true, true, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, false, true)), select(!vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, false), var_0), true), !select(vec3<bool>(var_0, true, false), vec3<bool>(var_0, true, true), !vec3<bool>(true, var_0, var_0)), vec3<bool>(var_0, any(vec2<bool>(var_0, var_0)), var_0 == all(vec2<bool>(var_0, var_0)))));
    return arg_0.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_4) -> Struct_1 {
    var var_0 = vec2<bool>(any(vec2<bool>(!any(vec4<bool>(false, false, true, false)), all(vec3<bool>(true, true, true)))), any(vec2<bool>(false, arg_0.a.b.x != func_3(false, arg_1.b.x, arg_0.c.b.yyw))));
    var var_1 = func_2(Struct_4(vec3<i32>(-1i) * -vec3<i32>(22679i, u_input.a, 9656i), vec4<f32>(arg_2.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1046f), _wgslsmith_f_op_f32(max(-1316f, arg_1.b.x)), true)), _wgslsmith_f_op_f32(f32(-1f) * -942f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))), arg_1.c), arg_1.b.xyx, _wgslsmith_f_op_f32(step(-374f, -1912f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-arg_2.b);
    var var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a.b.x >> (min(_wgslsmith_sub_u32(0u, u_input.c), ~1u) % 32u), ~(~53317u), u_input.c), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~var_1.b.zzy, var_1.b.yyy, vec3<u32>(func_4(Struct_3(Struct_2(Struct_1(arg_0.c.a, arg_0.c.b, arg_1.b.x), arg_2.b.x, Struct_1(vec4<f32>(arg_0.a.a.x, arg_1.b.x, 519f, -257f), vec4<u32>(arg_0.a.b.x, arg_0.c.b.x, 17018u, 26828u), -120f), arg_0.a.a.zxw, var_2.x), arg_0.a, arg_0.c), 56428i).c.b.x, var_1.b.x, arg_0.a.b.x)), vec3<u32>(41932u, _wgslsmith_clamp_u32(arg_0.c.b.x, func_2(arg_1, arg_2.b.zxw, arg_1.b.x).b.x, _wgslsmith_add_u32(55904u, 85123u)), min(arg_0.c.b.x << (1u % 32u), 0u))), abs(arg_0.a.b.zwz));
    var_0 = !vec2<bool>(arg_0.b != 1522f, var_0.x);
    return arg_0.c;
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-745f, 664f, -622f, 372f), vec4<f32>(595f, 927f, 1000f, -2373f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1458f, -676f, -1000f, -2637f)))))), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 19363u, 34685u, 50633u), vec4<u32>(1u, u_input.c, u_input.c, u_input.c))) & vec4<u32>(u_input.c & u_input.c, 4458u, 62185u, ~u_input.c), 1f), 1f, func_5(func_4(Struct_3(Struct_2(Struct_1(vec4<f32>(-346f, 572f, -1129f, 296f), vec4<u32>(u_input.c, 1u, u_input.c, u_input.c), -218f), -621f, Struct_1(vec4<f32>(353f, -319f, -1507f, 1486f), vec4<u32>(19083u, 20445u, u_input.c, u_input.c), 692f), vec3<f32>(1162f, 1047f, -1000f), 3117f), func_2(Struct_4(vec3<i32>(1i, u_input.b, u_input.a), vec4<f32>(2076f, 621f, 494f, -1083f), vec3<i32>(u_input.b, -39670i, 0i)), vec3<f32>(-412f, -596f, 687f), -1344f), Struct_1(vec4<f32>(-683f, 331f, -687f, 1331f), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c), 683f)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, -1i), vec3<i32>(-1i, u_input.a, 37024i)), -arg_0)), Struct_4(~vec3<i32>(u_input.b, 7436i, arg_0), func_4(Struct_3(Struct_2(Struct_1(vec4<f32>(1000f, -206f, -1149f, 973f), vec4<u32>(u_input.c, 1u, u_input.c, 0u), -416f), 734f, Struct_1(vec4<f32>(1831f, 905f, 1961f, 1169f), vec4<u32>(21885u, u_input.c, u_input.c, 1u), 1271f), vec3<f32>(921f, -715f, -1004f), 543f), Struct_1(vec4<f32>(2016f, 763f, -1121f, -1000f), vec4<u32>(u_input.c, 67503u, u_input.c, u_input.c), -388f), Struct_1(vec4<f32>(-397f, -410f, -1000f, -174f), vec4<u32>(22559u, u_input.c, 0u, u_input.c), 1406f)), u_input.a).c.a, vec3<i32>(u_input.a ^ arg_0, -58810i, -1i)), Struct_4(_wgslsmith_sub_vec3_i32(~vec3<i32>(-2147483647i, u_input.b, u_input.b), ~vec3<i32>(u_input.a, 26951i, arg_0)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1401f, 1773f, -1700f, -1720f))), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, arg_0, -2253i), vec3<i32>(arg_0, -14523i, arg_0)))), vec3<f32>(-1680f, -1175f, _wgslsmith_f_op_f32(-1f)), 1955f);
    return ~var_0.c.b.xwx;
}

fn func_6(arg_0: vec3<u32>, arg_1: u32, arg_2: f32, arg_3: vec3<bool>) -> StorageBuffer {
    var var_0 = !arg_3;
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1236f)), _wgslsmith_f_op_f32(-198f - arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2))), -1038f)), arg_2, true, _wgslsmith_f_op_vec2_f32(-func_5(func_4(Struct_3(Struct_2(Struct_1(vec4<f32>(-1894f, arg_2, arg_2, arg_2), vec4<u32>(arg_0.x, 18107u, 67987u, 4294967295u), arg_2), 1000f, Struct_1(vec4<f32>(-592f, -1000f, arg_2, arg_2), vec4<u32>(arg_0.x, arg_1, arg_0.x, 53534u), 265f), vec3<f32>(1000f, -149f, 1913f), arg_2), Struct_1(vec4<f32>(1000f, -606f, 684f, arg_2), vec4<u32>(4294967295u, arg_0.x, 55182u, arg_1), arg_2), Struct_1(vec4<f32>(arg_2, arg_2, arg_2, arg_2), vec4<u32>(1u, 1u, 31366u, 1u), -1000f)), ~(-46684i)), Struct_4(vec3<i32>(0i, u_input.b, 25847i) << (vec3<u32>(40741u, 4294967295u, 6099u) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(281f, arg_2, arg_2, 298f)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.b), vec3<i32>(u_input.a, u_input.a, -25202i))), Struct_4(vec3<i32>(u_input.a, u_input.b, 31966i) ^ vec3<i32>(u_input.b, u_input.b, -2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, 157f, -2054f)), vec3<i32>(2147483647i, -63271i, u_input.b))).a.xz), select(!vec4<bool>(var_0.x, true, !arg_3.x, true), select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, arg_3.x)), !vec4<bool>(true, arg_3.x, arg_3.x, false), !var_0.x), !arg_3.x));
    var_0 = select(arg_3, arg_3, var_0.x);
    let var_2 = Struct_4(~vec3<i32>(~select(0i, u_input.b, var_1.e.x), 43516i, 1i), func_2(Struct_4(-vec3<i32>(1i, u_input.b, u_input.b), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, var_1.b, var_1.a.x, var_1.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-469f, arg_2, var_1.d.x, -489f)), arg_3.x)), vec3<i32>(1i, 1i, 1i)), vec3<f32>(_wgslsmith_f_op_f32(step(func_5(Struct_2(Struct_1(vec4<f32>(arg_2, arg_2, 135f, 247f), vec4<u32>(1157u, 0u, 0u, 1u), -220f), arg_2, Struct_1(vec4<f32>(var_1.d.x, var_1.b, -854f, -1807f), vec4<u32>(arg_1, 1u, arg_1, 541u), arg_2), var_1.a, arg_2), Struct_4(vec3<i32>(-2147483647i, -9102i, u_input.b), vec4<f32>(var_1.a.x, -187f, 1164f, arg_2), vec3<i32>(u_input.b, u_input.b, -57861i)), Struct_4(vec3<i32>(-11132i, -9385i, u_input.b), vec4<f32>(240f, arg_2, var_1.a.x, var_1.b), vec3<i32>(-1i, u_input.b, 40419i))).c, _wgslsmith_f_op_f32(-var_1.a.x))), -1103f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_2))))), -1203f).a, vec3<i32>(u_input.b, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, 3937i, 2040i), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.b, u_input.b), vec3<i32>(18114i, 19354i, u_input.a))), 2147483647i) >> (~vec3<u32>(~arg_0.x, ~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 11340u, u_input.c), vec4<u32>(1u, arg_0.x, 33909u, arg_1))) % vec3<u32>(32u)));
    let var_3 = select(var_0.xz, !(!select(arg_3.zz, vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(!(_wgslsmith_sub_u32(68183u, arg_1) >= _wgslsmith_add_u32(32586u, arg_0.x)), all(vec4<bool>(true, true, arg_2 >= arg_2, false))));
    return StorageBuffer(func_5(func_4(Struct_3(Struct_2(Struct_1(vec4<f32>(var_1.a.x, 1327f, arg_2, var_1.b), vec4<u32>(arg_1, arg_0.x, 1u, 4294967295u), var_1.a.x), var_2.b.x, Struct_1(vec4<f32>(arg_2, var_2.b.x, var_2.b.x, var_2.b.x), vec4<u32>(arg_1, u_input.c, 4510u, u_input.c), var_2.b.x), vec3<f32>(-216f, 1265f, -852f), arg_2), func_2(var_2, vec3<f32>(var_2.b.x, var_2.b.x, var_2.b.x), arg_2), Struct_1(var_2.b, vec4<u32>(4294967295u, arg_1, 1u, 4294967295u), 1382f)), ~16373i), var_2, Struct_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a.x, var_2.a.x, 7842i) >> (vec3<u32>(arg_1, arg_1, arg_1) % vec3<u32>(32u)), vec3<i32>(-14094i, -28638i, u_input.a), vec3<i32>(u_input.b, -70168i, 1745i)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, var_2.b.x, var_2.b.x, -803f) * vec4<f32>(539f, -215f, arg_2, -320f)), _wgslsmith_f_op_vec4_f32(-var_2.b))), abs(vec3<i32>(u_input.b, u_input.a, var_2.c.x)))).a.ww, ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(~(~func_1(_wgslsmith_mult_i32(5359i, u_input.a), vec3<bool>(true, true, true))), firstTrailingBit(1u), _wgslsmith_f_op_f32(round(769f)), !vec3<bool>(false, all(vec4<bool>(false, true, false, false)) | all(vec3<bool>(false, false, false)), true));
}

