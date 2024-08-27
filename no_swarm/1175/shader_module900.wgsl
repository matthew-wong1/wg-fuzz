struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: bool) -> vec2<i32> {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(arg_0.x - arg_2.a) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_0.x))))), vec2<bool>(arg_2.c.c.x, arg_2.c.c.x));
    var var_1 = vec4<bool>(arg_3, (arg_3 & (reverseBits(-25042i) >= ~u_input.a.x)) && arg_3, u_input.a.x <= (33347i ^ arg_2.c.a.a.x), ((true & !var_0.a) && select(false, arg_2.b.x < arg_2.a, !arg_2.c.c.x)) & any(select(arg_2.c.c, vec3<bool>(arg_2.c.c.x, arg_2.c.c.x, var_0.a), vec3<bool>(true, false, arg_2.c.c.x))));
    var_1 = vec4<bool>(all(select(!(!vec4<bool>(arg_2.c.c.x, true, false, var_1.x)), select(!vec4<bool>(arg_3, arg_3, false, arg_3), vec4<bool>(false, arg_3, arg_2.c.c.x, var_0.b.x), any(vec4<bool>(false, arg_3, false, false))), var_0.b.x)), ((arg_2.c.a.c.x | _wgslsmith_clamp_i32(arg_2.c.b.a.x, u_input.a.x, -3911i)) | (_wgslsmith_add_i32(0i, u_input.a.x) >> (0u % 32u))) < abs(~u_input.a.x), all(select(arg_2.c.c, vec3<bool>(true, true, var_0.a == false), true || any(arg_2.c.c))), any(select(!(!arg_2.c.c.yz), vec2<bool>(arg_2.c.c.x & var_1.x, u_input.a.x >= 4764i), any(arg_2.c.c))));
    var_1 = vec4<bool>(-1333f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.b.x)))), ((!arg_2.c.c.x | !var_1.x) & true) == (_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), _wgslsmith_add_i32(u_input.a.x, arg_2.c.a.c.x)) <= _wgslsmith_sub_i32(_wgslsmith_add_i32(-4642i, arg_2.c.b.c.x), u_input.a.x | u_input.a.x)), true, arg_2.c.c.x);
    return _wgslsmith_mod_vec2_i32(~(abs(_wgslsmith_sub_vec2_i32(u_input.a, arg_2.c.a.a.xz)) >> (countOneBits(arg_2.c.b.b) % vec2<u32>(32u))), -select(_wgslsmith_mult_vec2_i32(~u_input.a, vec2<i32>(0i, -39365i)), u_input.a, all(var_1.yy) && (var_0.b.x || true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = arg_1.b;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), vec2<f32>(523f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1682f * 552f) * _wgslsmith_f_op_f32(step(-219f, 580f))))), arg_1);
    var var_2 = vec2<i32>(var_0.c.x, firstTrailingBit(1i));
    var_2 = countOneBits(~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.c.x, arg_0.a.x) << (vec2<u32>(81738u, 31400u) % vec2<u32>(32u)), arg_0.a.xx >> (var_0.b % vec2<u32>(32u)), vec2<i32>(-2147483647i, arg_0.c.x))));
    let var_3 = Struct_4(arg_1, _wgslsmith_f_op_f32(-var_1.b.x), all(select(select(!vec4<bool>(var_1.c.c.x, arg_1.c.x, false, arg_1.c.x), select(vec4<bool>(false, arg_1.c.x, true, true), vec4<bool>(arg_1.c.x, arg_1.c.x, true, true), vec4<bool>(true, true, arg_1.c.x, arg_1.c.x)), select(vec4<bool>(var_1.c.c.x, arg_1.c.x, var_1.c.c.x, true), vec4<bool>(var_1.c.c.x, arg_1.c.x, var_1.c.c.x, var_1.c.c.x), arg_1.c.x)), vec4<bool>(true, true, true | arg_1.c.x, any(vec4<bool>(false, arg_1.c.x, arg_1.c.x, var_1.c.c.x))), vec4<bool>(all(vec4<bool>(false, arg_1.c.x, var_1.c.c.x, false)), arg_1.c.x, !var_1.c.c.x, !var_1.c.c.x))));
    return !(!vec3<bool>(all(var_3.a.c.zx), true, all(var_1.c.c.zz)));
}

fn func_2() -> Struct_5 {
    let var_0 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(any(vec2<bool>(true, false)), true, false), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)), func_4(Struct_1(-vec3<i32>(-2147483647i, -2147483647i, u_input.a.x), firstTrailingBit(vec2<u32>(u_input.b.x, 35602u)), func_3(vec2<f32>(1363f, 648f), u_input.b.zx, Struct_3(-1678f, vec2<f32>(-157f, 299f), Struct_2(Struct_1(vec3<i32>(0i, u_input.a.x, -5752i), u_input.b.xx, vec2<i32>(u_input.a.x, u_input.a.x), u_input.b.x), Struct_1(vec3<i32>(18533i, -1i, u_input.a.x), u_input.b.xz, u_input.a, u_input.b.x), vec3<bool>(true, true, false))), true), u_input.b.x | u_input.b.x), Struct_2(Struct_1(vec3<i32>(12491i, -4100i, 46798i), vec2<u32>(u_input.b.x, u_input.b.x), u_input.a, 11880u), Struct_1(vec3<i32>(u_input.a.x, 25348i, u_input.a.x), u_input.b.xx, u_input.a, 4294967295u), vec3<bool>(true, true, true)))), vec3<bool>(all(vec4<bool>(true, false, true, true)), true, false), vec3<bool>(any(vec2<bool>(true, true)) | any(vec3<bool>(true, true, true)), true, !(!all(vec3<bool>(true, false, false)))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-264f, 503f, 709f, 1345f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1109f, -1097f, 774f, -361f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-1070f, -556f, 495f, 1161f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-903f, -127f, -844f, 341f), vec4<f32>(-187f, -1562f, -146f, 1139f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1985f, 307f, -646f, 853f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1605f, -213f, -1452f, 674f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-926f, -1512f, -1284f, -788f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-950f, 547f, -1153f, 1356f) * vec4<f32>(142f, -1491f, -732f, 1076f))), select(!vec4<bool>(false, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false), false), true))))));
    let var_2 = select(select(u_input.b.x, u_input.b.x & _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 44518u, 27591u), u_input.b), u_input.b.x), false), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 0u, 1u) << (vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, 58720u, u_input.b.x, 4294967295u)) ^ ~_wgslsmith_add_u32(2799u, 0u)), true);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) * _wgslsmith_f_op_f32(var_1.x * var_1.x)) * _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) - _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-443f - var_1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-758f, var_1.x)))) * _wgslsmith_div_f32(var_1.x, var_1.x)));
    let var_4 = Struct_2(Struct_1(vec3<i32>(u_input.a.x, 6597i, func_3(vec2<f32>(var_3.x, 2629f), abs(u_input.b.yx), Struct_3(-2090f, var_1.yw, Struct_2(Struct_1(vec3<i32>(-1i, u_input.a.x, 44323i), u_input.b.yx, u_input.a, u_input.b.x), Struct_1(vec3<i32>(u_input.a.x, 0i, -71945i), u_input.b.xx, vec2<i32>(2147483647i, u_input.a.x), u_input.b.x), vec3<bool>(true, var_0.x, var_0.x))), !var_0.x).x), countOneBits(vec2<u32>(43048u, 51987u & var_2)), reverseBits(min(u_input.a, u_input.a)) << (vec2<u32>(~var_2, reverseBits(u_input.b.x)) % vec2<u32>(32u)), 55057u), Struct_1(vec3<i32>(u_input.a.x, 2147483647i, 2147483647i), firstTrailingBit(vec2<u32>(1u, _wgslsmith_clamp_u32(var_2, 24126u, u_input.b.x))), _wgslsmith_clamp_vec2_i32(vec2<i32>(min(u_input.a.x, u_input.a.x), reverseBits(-15031i)), vec2<i32>(min(-47682i, u_input.a.x), u_input.a.x), u_input.a), 996u), !var_0);
    return Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-635f * -355f) + var_3.x), var_1.x)) == var_3.x, var_0.xx);
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_5, arg_3: i32) -> f32 {
    var var_0 = func_2();
    let var_1 = Struct_4(Struct_2(Struct_1(~firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec2<u32>(10969u, 4294967295u) >> ((u_input.b.zy & u_input.b.zz) % vec2<u32>(32u)), -vec2<i32>(-2147483647i, -60860i) >> (_wgslsmith_mod_vec2_u32(u_input.b.yx, u_input.b.zy) % vec2<u32>(32u)), abs(521u)), Struct_1(vec3<i32>(-15273i, u_input.a.x, -1i), ~_wgslsmith_add_vec2_u32(vec2<u32>(27184u, u_input.b.x), vec2<u32>(4294967295u, u_input.b.x)), u_input.a, 67818u), select(vec3<bool>(true, true, true), !vec3<bool>(arg_2.b.x, true, arg_2.b.x), arg_2.a)), -501f, select(!all(!vec3<bool>(true, var_0.b.x, true)), var_0.a, arg_2.a));
    let var_2 = var_1.a.a.c.x;
    var_0 = func_2();
    var var_3 = !select(!vec4<bool>(!arg_2.a, true, any(arg_2.b), true), vec4<bool>(!(var_2 >= -11290i), var_0.b.x, !var_0.a & arg_2.b.x, any(!var_1.a.c.xy)), select(!select(vec4<bool>(true, false, true, var_1.a.c.x), vec4<bool>(arg_2.a, false, var_0.a, arg_2.a), vec4<bool>(var_0.a, var_1.c, arg_2.b.x, var_0.a)), vec4<bool>(arg_2.b.x, false, all(var_0.b), !var_1.c), any(!vec4<bool>(arg_2.a, var_1.a.c.x, var_1.a.c.x, var_0.a))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(620f)), _wgslsmith_f_op_f32(round(-905f)))))), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(0u, ~(~u_input.b.x));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -666f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<f32>(-1190f, -1834f, -329f, -1000f), 570f, Struct_5(false, vec2<bool>(false, true)), 1i))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1507f, 750f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-214f, -977f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(180f, -664f) + vec2<f32>(840f, -1770f))), vec2<bool>(true, true))))), Struct_2(Struct_1(vec3<i32>(-1i) * -vec3<i32>(-9568i, u_input.a.x, u_input.a.x), ~(u_input.b.zz >> (vec2<u32>(11236u, u_input.b.x) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(u_input.a, u_input.a), 1u), Struct_1(select(vec3<i32>(-6710i, 14108i, 2147483647i), ~vec3<i32>(2147483647i, 40591i, u_input.a.x), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), u_input.b.zx, u_input.a, countOneBits(0u)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true))));
    var_0 = u_input.b.yz >> ((_wgslsmith_sub_vec2_u32(reverseBits(~vec2<u32>(var_0.x, 4294967295u)), _wgslsmith_clamp_vec2_u32(~u_input.b.yx, ~u_input.b.xy, reverseBits(u_input.b.yy))) ^ var_1.c.b.b) % vec2<u32>(32u));
    var var_2 = false;
    var_0 = vec2<u32>(~(~(_wgslsmith_add_u32(var_0.x, 1u) & 0u)), 1u);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1815f), _wgslsmith_f_op_vec2_f32(min(var_1.b, var_1.b)), Struct_2(Struct_1(var_1.c.b.a, u_input.b.zz, u_input.a, u_input.b.x), Struct_1(vec3<i32>(1i, _wgslsmith_sub_i32(u_input.a.x, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.c.a.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-32264i, 1i, u_input.a.x, 73445i))), u_input.b.xz, max(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), _wgslsmith_div_u32(~u_input.b.x, 9607u << (0u % 32u))), vec3<bool>(false, var_1.c.c.x, var_1.c.c.x)));
    var_0 = var_1.c.b.b;
    let var_4 = vec4<u32>(var_0.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(31381u, var_0.x), abs(_wgslsmith_add_u32(~1u, var_3.c.a.b.x))), u_input.b.x, ~var_3.c.b.d);
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(408f, var_3.a, 500f, var_1.b.x))) * vec4<f32>(-458f, var_3.a, 1000f, var_3.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 368f, var_3.a, -530f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a, 165f, 382f, 2026f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, var_3.b.x, 324f, -1044f) * vec4<f32>(var_1.a, 1720f, -1192f, 876f)))), func_4(Struct_1(var_3.c.b.a, vec2<u32>(var_3.c.b.b.x, var_1.c.a.d), vec2<i32>(var_1.c.a.a.x, -19888i), var_3.c.b.b.x), var_3.c).x)), var_3.c.c.x)), _wgslsmith_f_op_f32(-var_1.a), vec2<i32>(13688i, -39127i), countOneBits(12927u), ~firstLeadingBit(15141u ^ var_3.c.a.d) | _wgslsmith_sub_u32(~1u, ~_wgslsmith_div_u32(var_3.c.b.d, var_0.x)));
}

