struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec2<i32>) -> vec2<bool> {
    let var_0 = vec4<u32>(firstTrailingBit(max(~_wgslsmith_clamp_u32(21187u, 0u, arg_0.d.x), _wgslsmith_clamp_u32(arg_2, 0u, u_input.b.x) ^ reverseBits(4294967295u))), _wgslsmith_mod_u32(1u, firstLeadingBit(u_input.b.x)), u_input.b.x, select(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 81515u, 1u), ~(~arg_0.d.zwz)), u_input.b.x, arg_0.c.a.x));
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = arg_0;
    var var_3 = var_2.a;
    return select(select(vec2<bool>(!(!arg_0.a.a.x), any(vec2<bool>(true, true))), vec2<bool>(all(vec4<bool>(arg_1.a.x, var_3.a.x, var_1.a.x, arg_0.c.a.x)), arg_0.a.a.x), all(!select(arg_0.a.a, arg_0.c.a, true))), select(!select(arg_1.a, var_1.a, !vec2<bool>(var_1.a.x, false)), select(select(select(vec2<bool>(var_2.a.a.x, false), vec2<bool>(true, arg_0.a.a.x), true), !vec2<bool>(var_3.a.x, var_2.a.a.x), true), select(vec2<bool>(false, false), var_2.a.a, vec2<bool>(false, arg_0.a.a.x)), var_1.a), !vec2<bool>(false & arg_0.c.a.x, false)), vec2<bool>(false, all(vec3<bool>(true, true, true))));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> vec4<i32> {
    let var_0 = Struct_2(Struct_1(select(func_3(Struct_2(Struct_1(arg_0.wx), vec4<i32>(2147483647i, u_input.a, 51037i, u_input.d), Struct_1(arg_0.yw), u_input.b), Struct_1(arg_0.wx), firstTrailingBit(u_input.b.x), ~vec2<i32>(1i, u_input.a)), arg_0.yw, arg_0.x)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.d, -2147483647i, u_input.c, u_input.c)) | ~vec4<i32>(u_input.c, 0i, -37156i, -59985i), ~vec4<i32>(u_input.c, u_input.a, u_input.d, u_input.c), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-32235i, u_input.c, 2147483647i, u_input.c), vec4<i32>(u_input.a, u_input.d, u_input.d, 1i)))), Struct_1(!arg_0.yx), ~u_input.b);
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1948f, 1366f, 814f, 258f) + vec4<f32>(1000f, 553f, 511f, 687f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-102f, -1231f, -1388f, -834f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(547f, 1000f, 1000f, 990f))))))));
    let var_3 = select(_wgslsmith_div_vec3_u32(var_0.d.xzx, max(vec3<u32>(var_0.d.x, ~0u, 51025u), reverseBits(vec3<u32>(0u, u_input.b.x, 0u) | vec3<u32>(u_input.b.x, u_input.b.x, 38034u)))), vec3<u32>(u_input.b.x, 0u, countOneBits(select(u_input.b.x, 15112u, false)) & u_input.b.x), select(select(select(!vec3<bool>(arg_1, false, false), !vec3<bool>(arg_0.x, false, false), select(arg_0.xwy, arg_0.zyw, arg_0.x)), !vec3<bool>(var_0.a.a.x, false, arg_0.x), any(vec2<bool>(var_1.c.a.x, var_0.c.a.x)) || select(arg_1, false, true)), select(arg_0.zwx, vec3<bool>(u_input.c < var_1.b.x, true, arg_1), arg_0.wxw), true));
    var var_4 = -872f;
    return _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -(~var_0.b), ~(var_1.b ^ _wgslsmith_mod_vec4_i32(var_0.b, var_0.b >> (var_0.d % vec4<u32>(32u)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> vec4<f32> {
    let var_0 = select((vec4<i32>(-1i) * -arg_0.b) << (~vec4<u32>(0u, arg_1.x, 0u, u_input.b.x) % vec4<u32>(32u)), (vec4<i32>(arg_0.b.x, arg_0.b.x, -1i, arg_0.b.x) >> (~vec4<u32>(arg_0.d.x, u_input.b.x, arg_1.x, arg_1.x) % vec4<u32>(32u))) | func_2(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, arg_0.a.a.x, arg_0.c.a.x), true), arg_0.a.a.x), arg_0.c.a.x) >> (arg_0.d % vec4<u32>(32u));
    let var_1 = Struct_1(arg_0.a.a);
    let var_2 = Struct_1(select(!func_3(arg_0, Struct_1(var_1.a), arg_0.d.x, arg_0.b.xx), select(arg_0.a.a, !vec2<bool>(false, arg_0.c.a.x), vec2<bool>(all(vec3<bool>(arg_0.c.a.x, true, false)), 3535u > arg_1.x)), arg_0.c.a.x && !(u_input.b.x < 1u)));
    var var_3 = arg_1.x;
    var var_4 = arg_0;
    return vec4<f32>(-478f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 2254f)) + _wgslsmith_f_op_f32(1000f + 528f)))))), 1f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-169f, 882f) * _wgslsmith_f_op_f32(1003f + 414f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -500f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(106f - 1640f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(915f)) * 1f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(-248f + -1000f), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, arg_1.a.x)), _wgslsmith_div_f32(-1000f, arg_0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.zy) - _wgslsmith_f_op_vec2_f32(round(arg_0.xx))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(168f, arg_0.x) - _wgslsmith_f_op_vec2_f32(sign(arg_0.xz)))), vec2<f32>(494f, 453f))));
    let var_1 = u_input.a >= -19682i;
    var var_2 = vec3<f32>(934f, 629f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-1f))) * arg_0.x));
    var var_3 = (firstTrailingBit(select(vec2<i32>(u_input.c, u_input.a), vec2<i32>(2147483647i, 0i), !vec2<bool>(arg_2.a.x, true))) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(-27679i, u_input.c) << (max(u_input.b.wy, vec2<u32>(u_input.b.x, arg_3.x)) % vec2<u32>(32u)), vec2<i32>(u_input.a, u_input.a) >> ((arg_3.zw | vec2<u32>(0u, arg_3.x)) % vec2<u32>(32u)))) ^ -(~reverseBits(vec2<i32>(1i, u_input.a) >> (u_input.b.ww % vec2<u32>(32u))));
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(545f, var_0.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x + var_0.x)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * -346f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -264f))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 9455i, u_input.d), vec3<i32>(1i, u_input.a, u_input.d))), -vec3<i32>(38803i, 1i | u_input.c, u_input.d)), u_input.a, 2147483647i | _wgslsmith_sub_i32(-6121i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.c, u_input.d, u_input.c), vec3<i32>(u_input.a, u_input.a, u_input.c)), vec3<i32>(u_input.c, 7256i, 2147483647i))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -508f);
    var_0 = -_wgslsmith_add_vec3_i32(~vec3<i32>(var_0.x, var_0.x, countOneBits(u_input.d)), vec3<i32>(u_input.a, reverseBits(var_0.x), 0i));
    let var_2 = _wgslsmith_div_u32(u_input.b.x, 20749u) ^ _wgslsmith_div_u32(4294967295u, u_input.b.x);
    var_0 = ~vec3<i32>(var_0.x, u_input.a, -46201i);
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1179f, -2025f, 127f, 916f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1265f, -736f, -956f) + vec4<f32>(643f, 651f, 346f, -643f)), _wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(vec2<bool>(false, false)), vec4<i32>(18728i, -1329i, u_input.a, 1i), Struct_1(vec2<bool>(true, false)), vec4<u32>(59411u, u_input.b.x, 0u, 89176u)), vec3<u32>(var_2, var_2, u_input.b.x))), vec4<bool>(true, true, true, true)))), Struct_1(!select(vec2<bool>(false, false), vec2<bool>(true, false), true)), Struct_1(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), u_input.b << ((u_input.b << ((vec4<u32>(var_2, var_2, var_2, u_input.b.x) | vec4<u32>(0u, 6355u, 4294967295u, u_input.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u)))), 554f);
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1014f, 1352f, -292f), vec3<f32>(-286f, -1000f, -377f), vec3<bool>(false, true, true)))))))));
    let var_4 = Struct_1(select(vec2<bool>(true, true), !func_3(Struct_2(Struct_1(vec2<bool>(true, false)), vec4<i32>(var_0.x, 13560i, -19173i, u_input.a), Struct_1(vec2<bool>(true, true)), u_input.b), Struct_1(vec2<bool>(false, true)), abs(u_input.b.x), var_0.yy), !select(func_3(Struct_2(Struct_1(vec2<bool>(false, true)), vec4<i32>(var_0.x, var_0.x, u_input.c, 3967i), Struct_1(vec2<bool>(false, false)), u_input.b), Struct_1(vec2<bool>(true, true)), u_input.b.x, var_0.yy), vec2<bool>(true, true), func_3(Struct_2(Struct_1(vec2<bool>(true, false)), vec4<i32>(-52647i, 66422i, u_input.d, u_input.a), Struct_1(vec2<bool>(false, true)), vec4<u32>(49224u, 99584u, 1u, var_2)), Struct_1(vec2<bool>(false, false)), u_input.b.x, vec2<i32>(var_0.x, 17667i)))));
    var_1 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(_wgslsmith_div_u32(4294967295u, firstTrailingBit(u_input.b.x)), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, var_2, var_2, 11591u)) >> (abs(46872u) % 32u), ~0u, max(1u, u_input.b.x | 4294967295u))), ~(~vec4<u32>(~var_2, u_input.b.x, ~0u, 1u)), u_input.b.x, abs(u_input.c));
}

