struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    var var_0 = 0u << ((_wgslsmith_mod_u32(u_input.a.x, 4294967295u) & reverseBits(~(u_input.a.x << (120167u % 32u)))) % 32u);
    var_0 = u_input.a.x;
    var_0 = u_input.a.x;
    let var_1 = Struct_1(all(vec3<bool>(true & select(false, false, true), true, false)), select(vec3<bool>(true, !(u_input.a.x != 4294967295u), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false))), vec3<bool>(true, !all(vec2<bool>(false, true)), true)));
    let var_2 = ~(-2147483647i) << (_wgslsmith_add_u32(max(u_input.a.x, u_input.a.x), abs(min(~46968u, u_input.a.x))) % 32u);
    return true;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3) -> f32 {
    var var_0 = vec2<u32>(u_input.a.x, 70295u);
    var var_1 = !select(select(!arg_1.c.d, vec2<bool>(false, arg_1.a.a || arg_1.c.a.x), func_3()), !select(select(arg_1.a.b.xz, vec2<bool>(true, arg_1.a.a), arg_1.a.a), !arg_1.c.d, vec2<bool>(arg_1.c.d.x, false)), true);
    var var_2 = vec3<bool>(true, !(firstTrailingBit(_wgslsmith_mod_u32(1u, 41557u)) < ~var_0.x), true);
    var_2 = arg_1.a.b;
    var var_3 = arg_1.c;
    return arg_0.x;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(false, !select(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x), !vec3<bool>(arg_1.x, arg_1.x, true), !vec3<bool>(false, arg_1.x, arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0)))) + _wgslsmith_f_op_f32(arg_0 + arg_0)), Struct_2(!(!vec4<bool>(arg_1.x, true, true, true)), _wgslsmith_div_i32(~29569i, -2147483647i), -_wgslsmith_dot_vec3_i32(abs(vec3<i32>(14471i, -18698i, 29076i)), vec3<i32>(59376i, 1i, 0i)), vec2<bool>(arg_1.x, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, -328f, arg_0, 361f))))), vec4<f32>(-1602f, 252f, arg_0, _wgslsmith_f_op_f32(floor(arg_0))), all(select(vec2<bool>(true, true), vec2<bool>(false, false), !arg_1.x)))), vec4<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(2147483647i, -71601i, -4922i, 0i)), vec4<i32>(-18352i, 2147483647i, -15367i, 75612i)), -56453i << (countOneBits(17389u) % 32u), 0i, -2147483647i) >> ((~select(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 7349u), vec4<bool>(false, false, arg_1.x, false)) ^ select(vec4<u32>(1u, 1u, 0u, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u), false)) % vec4<u32>(32u)));
    let var_1 = Struct_2(var_0.c.a, -var_0.e.x, var_0.c.b, select(!(!select(vec2<bool>(arg_1.x, var_0.a.b.x), vec2<bool>(arg_1.x, true), true)), var_0.a.b.xz, vec2<bool>(var_0.a.a, true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d.wwy) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(arg_0, var_0.b), _wgslsmith_f_op_f32(var_0.b * -583f), _wgslsmith_f_op_f32(f32(-1f) * -1307f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0.d.wxx, var_0.d.yxy))), select(!vec3<bool>(arg_1.x, false, var_1.d.x), select(vec3<bool>(var_1.d.x, var_1.d.x, var_1.d.x), var_1.a.yyx, var_1.a.zxx), vec3<bool>(var_0.a.b.x, true, arg_1.x))))), var_0.d.yxy));
    var var_3 = var_0.c;
    return Struct_1(var_1.a.x, !vec3<bool>(false, -1333f == _wgslsmith_f_op_f32(func_2(var_0.d, Struct_3(var_0.a, var_2.x, Struct_2(var_1.a, var_0.c.c, 0i, var_0.c.d), vec4<f32>(var_0.d.x, -369f, arg_0, var_0.d.x), vec4<i32>(-12903i, var_3.b, var_0.c.c, 1i)))), var_1.d.x));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1004f);
    let var_1 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1141f * -608f)) - _wgslsmith_div_f32(_wgslsmith_div_f32(-728f, 608f), _wgslsmith_f_op_f32(func_2(vec4<f32>(633f, 2026f, -266f, 658f), Struct_3(Struct_1(false, vec3<bool>(true, arg_0, arg_0)), 276f, Struct_2(vec4<bool>(false, arg_2.x, true, arg_0), 0i, 2147483647i, arg_2.wy), vec4<f32>(884f, 1156f, 1560f, -639f), vec4<i32>(-2147483647i, 1i, 0i, arg_1)))))), _wgslsmith_f_op_f32(299f * _wgslsmith_f_op_f32(f32(-1f) * -1239f))), select(vec2<bool>(arg_2.x, false), select(select(arg_2.yw, !vec2<bool>(true, arg_2.x), true), vec2<bool>(false, false | arg_0), arg_2.yz), true));
    let var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(select(~firstLeadingBit(vec3<u32>(1u, u_input.a.x, u_input.a.x)), (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(4294967295u, u_input.a.x, 4294967295u) % vec3<u32>(32u))) >> (vec3<u32>(u_input.a.x, u_input.a.x, 74041u) % vec3<u32>(32u)), arg_2.xzz), ~(~countOneBits(vec3<u32>(u_input.a.x, 0u, 27924u)))), u_input.a.x);
    let var_3 = Struct_2(select(arg_2, vec4<bool>(arg_0, true, true, !(arg_0 & false)), all(!vec2<bool>(true, var_1.b.x)) != (firstTrailingBit(var_2.x) == (var_2.x >> (var_2.x % 32u)))), _wgslsmith_mod_i32(~firstTrailingBit(~arg_1), _wgslsmith_dot_vec2_i32(-firstTrailingBit(vec2<i32>(arg_1, arg_1)), countOneBits(vec2<i32>(arg_1, arg_1)))), arg_1, !vec2<bool>(~arg_1 < _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(arg_1, arg_1, arg_1)), firstLeadingBit(arg_1) == arg_1));
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1990f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1604f, -252f, -179f, 1645f)), Struct_3(func_4(-1820f, vec2<bool>(arg_2.x, true)), _wgslsmith_f_op_f32(-333f + 755f), Struct_2(vec4<bool>(true, arg_0, false, false), arg_1, var_3.c, arg_2.yx), _wgslsmith_div_vec4_f32(vec4<f32>(-1023f, -1890f, 679f, 1000f), vec4<f32>(-713f, -1343f, -1344f, -612f)), vec4<i32>(2147483647i, -23182i, arg_1, 2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(898f + 444f)))), 641f));
    return func_4(var_4.x, var_3.a.xz);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    var var_0 = arg_2.c.a.x;
    var var_1 = arg_2.c;
    var_1 = arg_2.c;
    var var_2 = ~(~(u_input.a.x | u_input.a.x));
    var_2 = u_input.a.x;
    return Struct_3(Struct_1(true, vec3<bool>(_wgslsmith_f_op_f32(-arg_2.d.x) >= _wgslsmith_f_op_f32(func_2(arg_2.d, Struct_3(Struct_1(arg_2.a.b.x, var_1.a.zzz), 2095f, Struct_2(var_1.a, 0i, 1i, vec2<bool>(var_1.d.x, var_1.a.x)), arg_2.d, vec4<i32>(-2147483647i, -2147483647i, arg_2.e.x, var_1.b)))), true, arg_1)), -795f, arg_2.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-453f + arg_2.b)), _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.b * arg_2.b))), arg_2.d.x)), _wgslsmith_clamp_vec4_i32(max(~min(vec4<i32>(10492i, var_1.b, var_1.c, var_1.b), vec4<i32>(var_1.b, var_1.c, -2147483647i, 2147483647i)), ~vec4<i32>(arg_2.c.b, arg_2.e.x, -2147483647i, 0i)), vec4<i32>(-_wgslsmith_clamp_i32(var_1.b, 18016i, 43838i), 0i, ~_wgslsmith_div_i32(var_1.b, var_1.b), arg_2.c.b), -select(arg_2.e, ~arg_2.e, var_1.a)));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> StorageBuffer {
    let var_0 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 1u, 0u, 1u) >> (~(~vec4<u32>(75424u, 0u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(abs(min(vec4<u32>(u_input.a.x, 1353u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 4294967295u))), ~vec4<u32>(u_input.a.x, 5391u, u_input.a.x, 1u) & ~vec4<u32>(u_input.a.x, 8204u, 99687u, 29521u)));
    var var_1 = _wgslsmith_mod_vec4_u32(~((vec4<u32>(76138u, u_input.a.x, 39251u, 0u) & reverseBits(vec4<u32>(4294967295u, 85825u, 1u, 27970u))) << (~select(vec4<u32>(u_input.a.x, var_0, 1u, u_input.a.x), vec4<u32>(var_0, 0u, u_input.a.x, u_input.a.x), arg_0.c.a.x) % vec4<u32>(32u))), select(~(~abs(vec4<u32>(81034u, 13817u, var_0, var_0))), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(12003u, var_0, u_input.a.x, u_input.a.x), vec4<u32>(var_0, u_input.a.x, var_0, u_input.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(71747u, 8525u, u_input.a.x, 22964u), vec4<u32>(21032u, 4294967295u, var_0, var_0)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, var_0, 4294967295u, 15377u), vec4<u32>(37614u, 70586u, u_input.a.x, var_0), vec4<u32>(0u, 56215u, u_input.a.x, var_0))) | vec4<u32>(0u, ~var_0, var_0, 47992u), arg_0.c.a));
    let var_2 = arg_0.e.yww;
    var var_3 = arg_2;
    var var_4 = func_5(Struct_1(false, vec3<bool>(true, arg_0.a.a, var_3.a.x)), arg_1.a, Struct_3(arg_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1221f, arg_0.b))))), func_5(func_4(arg_0.d.x, func_4(-110f, var_3.d).b.xz), !(true & arg_2.a.x), Struct_3(Struct_1(arg_0.a.b.x, vec3<bool>(var_3.a.x, var_3.a.x, arg_0.c.d.x)), _wgslsmith_f_op_f32(-arg_0.b), arg_2, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(751f, arg_0.d.x, 383f, arg_0.d.x))), ~arg_0.e)).c, vec4<f32>(719f, _wgslsmith_div_f32(-171f, _wgslsmith_f_op_f32(min(arg_0.d.x, arg_0.d.x))), -1031f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.d.x)))), ~arg_0.e)).c;
    return StorageBuffer(462f, arg_0.e.zxx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<bool>(!(!select(true, true, true)), any(vec4<bool>(true, 88077u < u_input.a.x, true, true)), true, false), -(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -23321i, 0i, -24280i), vec4<i32>(1i, 1i, 1i, 1i)) << (reverseBits(_wgslsmith_mult_u32(123097u, u_input.a.x)) % 32u)), 246i, select(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), select(any(vec2<bool>(true, false)), true, u_input.a.x <= u_input.a.x)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(all(vec2<bool>(false, true)), false), true), vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = func_6(func_5(func_1(select(true, false, false), _wgslsmith_sub_i32(~(-3511i), 0i), var_0.a), var_0.d.x, Struct_3(func_4(_wgslsmith_f_op_f32(trunc(-501f)), vec2<bool>(true, true)), -556f, Struct_2(!var_0.a, min(var_0.c, 0i), abs(-2147483647i), var_0.d), vec4<f32>(_wgslsmith_f_op_f32(ceil(-1155f)), _wgslsmith_f_op_f32(f32(-1f) * -1735f), 1862f, _wgslsmith_f_op_f32(floor(463f))), _wgslsmith_add_vec4_i32(select(vec4<i32>(var_0.c, -12675i, var_0.b, -1i), vec4<i32>(var_0.c, var_0.b, 22578i, var_0.b), vec4<bool>(var_0.a.x, var_0.d.x, var_0.d.x, false)), vec4<i32>(27319i, var_0.b, var_0.b, var_0.c)))), func_5(func_1(false, countOneBits(~1i), var_0.a), all(vec3<bool>(var_0.a.x & true, func_1(var_0.a.x, var_0.c, var_0.a).b.x, var_0.a.x)), Struct_3(func_4(1023f, func_1(var_0.a.x, -2147483647i, vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.d.x)).b.xx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_5(func_4(-1057f, var_0.a.yz), var_0.a.x, func_5(Struct_1(var_0.a.x, vec3<bool>(var_0.a.x, false, true)), var_0.d.x, Struct_3(Struct_1(var_0.a.x, var_0.a.yzx), -131f, Struct_2(vec4<bool>(false, var_0.d.x, false, true), 0i, -2147483647i, var_0.d), vec4<f32>(-1226f, 2314f, -178f, -369f), vec4<i32>(var_0.b, 5674i, var_0.b, 32721i)))).c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(649f, -532f, -850f, -137f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(289f, 1891f, -400f, -528f), vec4<f32>(132f, 635f, 394f, 685f)))), (vec4<i32>(-2147483647i, -2147483647i, var_0.b, 2147483647i) << (vec4<u32>(38958u, 113696u, 0u, 0u) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_i32(vec4<i32>(var_0.b, -11627i, var_0.c, -2147483647i), vec4<i32>(80903i, var_0.c, var_0.b, 0i)))).a, func_5(Struct_1(false, vec3<bool>(all(var_0.a.wzz), func_5(Struct_1(var_0.d.x, var_0.a.wwz), var_0.a.x, Struct_3(Struct_1(true, vec3<bool>(var_0.d.x, true, var_0.a.x)), -3046f, Struct_2(var_0.a, var_0.c, var_0.c, vec2<bool>(true, var_0.a.x)), vec4<f32>(-976f, -113f, 243f, 1000f), vec4<i32>(var_0.b, var_0.b, -14560i, var_0.c))).c.a.x, var_0.a.x)), all(var_0.d), Struct_3(Struct_1(var_0.d.x && var_0.d.x, select(var_0.a.xyx, vec3<bool>(var_0.d.x, false, true), var_0.a.zxx)), -1000f, func_5(func_5(Struct_1(false, var_0.a.ywy), var_0.a.x, Struct_3(Struct_1(true, var_0.a.wzw), 621f, Struct_2(vec4<bool>(var_0.a.x, false, var_0.a.x, true), var_0.b, -2147483647i, vec2<bool>(true, var_0.d.x)), vec4<f32>(665f, -683f, -1800f, -274f), vec4<i32>(var_0.b, 17811i, 26243i, -52287i))).a, true, func_5(Struct_1(var_0.a.x, vec3<bool>(false, var_0.d.x, var_0.d.x)), false, Struct_3(Struct_1(false, vec3<bool>(true, true, var_0.a.x)), -103f, Struct_2(vec4<bool>(var_0.a.x, var_0.d.x, var_0.d.x, var_0.a.x), var_0.b, var_0.c, var_0.d), vec4<f32>(-650f, 1036f, 911f, -211f), vec4<i32>(-2147483647i, var_0.b, var_0.c, 20746i)))).c, vec4<f32>(-643f, _wgslsmith_f_op_f32(-1737f + 317f), _wgslsmith_f_op_f32(-1000f * -653f), func_5(Struct_1(var_0.a.x, var_0.a.xxx), var_0.d.x, Struct_3(Struct_1(true, vec3<bool>(var_0.d.x, var_0.a.x, false)), -405f, Struct_2(var_0.a, var_0.c, 29489i, vec2<bool>(false, var_0.d.x)), vec4<f32>(-275f, -1341f, -362f, 495f), vec4<i32>(var_0.c, 0i, 2147483647i, var_0.b))).b), vec4<i32>(var_0.b, var_0.b, 1i, -1i))).c);
}

