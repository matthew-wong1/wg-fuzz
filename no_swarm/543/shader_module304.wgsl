struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_4, 18>;

var<private> global2: Struct_1 = Struct_1(true);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> vec4<f32> {
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_2.x))), -239f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), arg_0.a.x), arg_0.a.x), arg_0.c, Struct_1(false), true, Struct_1(true));
    let var_1 = arg_0.a.wzw;
    let var_2 = Struct_3(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(countOneBits(vec2<i32>(1i, 1i))), arg_3.yx, vec2<i32>(abs(7758i), _wgslsmith_add_i32(u_input.c, arg_1.x))), arg_1.zy ^ ~vec2<i32>(26196i, arg_1.x)), -_wgslsmith_clamp_i32(arg_1.x, ~arg_3.x, 28062i), arg_0);
    let var_3 = false;
    var var_4 = arg_1.xy;
    return _wgslsmith_f_op_vec4_f32(var_2.c.a * arg_0.a);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_4) -> vec4<f32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_2.a.c.a.x * _wgslsmith_f_op_f32(-arg_2.a.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.c.a.x) + -173f), -1000f, _wgslsmith_f_op_f32(427f - arg_2.a.c.a.x));
    var var_1 = -146f;
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.a.c.a.x, _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -452f))))));
    var var_2 = Struct_1(true);
    let var_3 = Struct_3(arg_2.a.a, arg_1, arg_2.a.c);
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_0)));
}

fn func_2() -> vec4<f32> {
    global0 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1529f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-605f, -612f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1371f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -644f))), global2.a)));
    var var_0 = -vec2<i32>(-1i, i32(-1i) * -2147483647i);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -132f)))))))));
    var_1 = -468f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1520f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1148f)) - 116f))));
    return _wgslsmith_f_op_vec4_f32(func_4(true, u_input.c, Struct_4(Struct_3(vec2<i32>(3114i, var_0.x) << (~vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)), -11424i, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-717f, var_2, 958f, var_2) - vec4<f32>(var_2, var_2, var_2, -748f)), Struct_1(global2.a), Struct_1(global2.a), !global2.a, Struct_1(true))), ~min(u_input.d.x, 5874u), vec3<bool>(select(global2.a || true, true, true), global2.a, !(!global2.a)), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -211f, -582f, 1000f)) * _wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec4<f32>(var_2, -885f, var_2, var_2), Struct_1(global2.a), Struct_1(global2.a), global2.a, Struct_1(true)), vec3<i32>(var_0.x, 76679i, -1i), vec3<f32>(var_2, var_2, 754f), vec3<i32>(81214i, var_0.x, var_0.x)))), Struct_1(global2.a), Struct_1(true), true, Struct_1(true)))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(func_2()), Struct_1(!((global2.a && true) | (global2.a & global2.a))), Struct_1(true), all(!vec4<bool>(false, true, true, global2.a)), Struct_1(!global2.a));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 145f, _wgslsmith_f_op_f32(1097f + 589f), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1384f))))), Struct_1(global2.a), var_0.e, 10935i >= max(~_wgslsmith_sub_i32(arg_0.x, -1i), -6241i), Struct_1(global2.a));
    return Struct_3(_wgslsmith_sub_vec2_i32(arg_0, ~(-_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(2147483647i, u_input.c)))), arg_0.x, var_1);
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = 0u;
    let var_1 = !select(select(vec4<bool>(any(vec3<bool>(false, false, true)), !arg_1.c.x, all(vec3<bool>(arg_1.d.e.a, arg_0, arg_0)), 976f != arg_1.a.c.a.x), !select(vec4<bool>(false, true, true, false), vec4<bool>(arg_1.d.d, global2.a, global2.a, global2.a), vec4<bool>(false, arg_1.c.x, arg_0, false)), !vec4<bool>(arg_1.c.x, global2.a, false, arg_0)), !select(vec4<bool>(true, false, arg_1.c.x, false), !vec4<bool>(false, false, global2.a, true), true), select(!(!vec4<bool>(arg_0, false, arg_1.a.c.b.a, true)), vec4<bool>(!arg_1.a.c.d, true, !arg_0, true | arg_0), any(!arg_1.c)));
    var var_2 = arg_1.b;
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1754f + _wgslsmith_f_op_f32(-arg_1.a.c.a.x))));
    var var_3 = arg_1.a.c.b.a;
    return arg_1.d;
}

fn func_6(arg_0: u32, arg_1: Struct_2) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(arg_0, 18u)];
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2()).x * arg_1.a.x))));
    global2 = arg_1.c;
    var var_1 = min(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(max(select(vec4<i32>(u_input.c, 10087i, 33787i, var_0.a.b), vec4<i32>(-2147483647i, 2147483647i, 1i, var_0.a.b), vec4<bool>(true, arg_1.b.a, false, arg_1.c.a)), vec4<i32>(u_input.c, -28413i, 13466i, u_input.c)), -(vec4<i32>(var_0.a.b, var_0.a.a.x, var_0.a.b, -33263i) | vec4<i32>(38672i, var_0.a.b, u_input.c, u_input.c)), ~vec4<i32>(-2147483647i, u_input.c, 43565i, u_input.c)), _wgslsmith_sub_vec4_i32(select(~vec4<i32>(var_0.a.b, -944i, 41754i, u_input.c), vec4<i32>(-1i, 3680i, 70129i, u_input.c), arg_1.c.a), -(~vec4<i32>(var_0.a.a.x, 13588i, var_0.a.b, var_0.a.a.x)))), _wgslsmith_sub_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-17401i, 0i, 12041i, u_input.c), vec4<i32>(var_0.a.b, -33979i, -2147483647i, 0i)), vec4<i32>(-2147483647i, max(u_input.c, var_0.a.a.x), -25972i, u_input.c | -2147483647i)) | vec4<i32>(2147483647i, 0i, _wgslsmith_clamp_i32(firstLeadingBit(var_0.a.a.x), -96339i, countOneBits(u_input.c)), -1i));
    let var_2 = u_input.a.yy;
    return firstLeadingBit(2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(112260u, func_5(true, Struct_4(func_1(vec2<i32>(u_input.c, u_input.c)), 1u, !vec3<bool>(global2.a, true, global2.a), func_1(vec2<i32>(-26927i, u_input.c) << (vec2<u32>(41618u, 28643u) % vec2<u32>(32u))).c), -firstTrailingBit(vec4<i32>(u_input.c, 17747i, u_input.c, u_input.c) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.d.x) % vec4<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.c, u_input.c), vec2<i32>(min(-2147483647i, u_input.c), u_input.c))));
    global1 = array<Struct_4, 18>();
    let var_1 = -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, ~_wgslsmith_add_i32(u_input.c, u_input.c), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, -4362i, u_input.c, u_input.c), vec4<i32>(0i, -3071i, u_input.c, -38353i))), select(vec3<i32>(abs(u_input.c), -22680i, -u_input.c), ~vec3<i32>(2147483647i, -2147483647i, u_input.c), true));
    global0 = 255f;
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1334f, 2199f, global2.a)) - 814f)), func_5(all(vec2<bool>(global2.a, global2.a)), global1[_wgslsmith_index_u32(u_input.a.x, 18u)], abs(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, u_input.c, var_1.x, -17920i), vec4<i32>(2147483647i, -4528i, u_input.c, 24868i))), var_1.xz).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1528f + -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(694f + _wgslsmith_f_op_f32(round(410f))) + _wgslsmith_f_op_f32(-161f * -659f))), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_4(select(false, !global2.a, false), 0i, Struct_4(Struct_3(vec2<i32>(u_input.c, var_1.x), var_1.x, Struct_2(vec4<f32>(-435f, 2049f, -1183f, 809f), Struct_1(true), Struct_1(true), global2.a, Struct_1(global2.a))), 0u, vec3<bool>(global2.a, global2.a, false), func_5(global2.a, Struct_4(Struct_3(vec2<i32>(47382i, 1i), var_1.x, Struct_2(vec4<f32>(-1000f, -1000f, 1288f, 1348f), Struct_1(false), Struct_1(false), global2.a, Struct_1(global2.a))), u_input.a.x, vec3<bool>(global2.a, false, false), Struct_2(vec4<f32>(600f, 520f, -469f, -563f), Struct_1(global2.a), Struct_1(false), global2.a, Struct_1(true))), vec4<i32>(26462i, u_input.c, -11532i, u_input.c), var_1.yy)))).x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1025f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-409f * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1783f - _wgslsmith_f_op_f32(max(325f, -600f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32(~min(vec4<u32>(16468u, u_input.d.x, 53522u, 50941u), vec4<u32>(26993u, u_input.a.x, u_input.a.x, u_input.a.x)), reverseBits(vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.b))));
}

