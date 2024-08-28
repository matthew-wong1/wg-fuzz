struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = Struct_1(false, -1138f, _wgslsmith_div_vec3_f32(arg_3.c, arg_3.c), select(arg_3.d, vec3<bool>(true, (arg_2.a & true) | true, all(select(vec3<bool>(true, arg_3.a, arg_3.d.x), arg_3.d, arg_2.d))), true));
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(abs(1i), 29033i, ~(~(0i >> (u_input.c % 32u)))), -select(-firstTrailingBit(vec3<i32>(-37063i, -12687i, 1i)), (vec3<i32>(55916i, 1i, -1i) << (vec3<u32>(32112u, arg_0.x, u_input.c) % vec3<u32>(32u))) >> (vec3<u32>(4294967295u, arg_0.x, 69014u) % vec3<u32>(32u)), !vec3<bool>(arg_2.d.x, arg_3.a, arg_3.d.x)));
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(max(-918f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(543f - arg_3.b)))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_3.b, -712f)), _wgslsmith_f_op_f32(min(arg_3.b, var_0.c.x)))) * 566f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(arg_3.c.x + -1797f)) * var_0.b)) + var_0.c.x);
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_3.c + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1316f), _wgslsmith_f_op_f32(var_0.b * 344f), _wgslsmith_f_op_f32(591f * 733f))))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(!(!(1i < (2147483647i >> (u_input.a.x % 32u)))), -1533f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1042f, -522f, 1000f))) - _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(arg_0, 15487u, 4294967295u, arg_0), 1000f, Struct_1(true, -620f, vec3<f32>(1024f, -126f, -740f), vec3<bool>(false, true, true)), Struct_1(true, 366f, vec3<f32>(-122f, 1000f, 480f), vec3<bool>(false, true, false)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1123f, -173f, -1040f)))))))), vec3<bool>(false, !select(1u == u_input.a.x, any(vec3<bool>(true, true, false)), true), all(vec4<bool>(true, true, true, true))));
    let var_1 = Struct_1(var_0.d.x, var_0.b, _wgslsmith_f_op_vec3_f32(var_0.c * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c))), !select(!(!var_0.d), vec3<bool>(false, true, !var_0.d.x), true));
    var var_2 = Struct_1(var_0.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -695f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c.x, var_1.c.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1112f, var_1.b, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(994f - 477f))), var_0.d);
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(~(-36241i), _wgslsmith_clamp_i32(1078i, -2147483647i, -2147483647i), _wgslsmith_add_i32(0i, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(61686i, -1982i, 0i), vec3<i32>(1i, 19808i, 1i))), firstTrailingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(41431i, 2147483647i, -1i, -24073i), vec4<i32>(1i, 1i, 1i, 1i)))), _wgslsmith_dot_vec4_i32(firstLeadingBit(min(vec4<i32>(-2147483647i, 2147483647i, -2147483647i, 0i), vec4<i32>(0i, -22657i, -2147483647i, -29148i))), -min(vec4<i32>(19704i, -15543i, 1i, -21148i), vec4<i32>(-1i, 2147483647i, 47811i, -952i))) << (arg_0 % 32u));
    let var_4 = Struct_1(var_2.d.x, var_0.c.x, _wgslsmith_f_op_vec3_f32(var_2.c - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1056f, _wgslsmith_f_op_f32(var_2.b - 1000f), _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(71819u, 0u, u_input.c, u_input.a.x), var_0.b, var_0, Struct_1(true, var_2.c.x, var_0.c, vec3<bool>(true, var_0.d.x, true)))).x))), vec3<bool>(var_0.a, select((var_3 >= 285i) == select(true, var_2.d.x, false), true, true), all(select(!vec4<bool>(var_2.d.x, true, true, var_1.d.x), select(vec4<bool>(var_0.a, true, var_0.a, true), vec4<bool>(false, true, false, false), vec4<bool>(var_0.a, var_2.a, var_1.d.x, false)), true))));
    return var_0;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = ~(-1i);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(373f, 1000f, arg_1.c.x, arg_1.b), vec4<f32>(-497f, -601f, -1157f, -503f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(338f, -606f, arg_1.c.x, arg_1.b) + vec4<f32>(arg_1.b, arg_1.b, arg_1.c.x, -209f))), vec4<f32>(arg_1.b, arg_1.b, -608f, -703f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.c.x)) + arg_1.c.x), _wgslsmith_div_f32(arg_1.c.x, arg_1.c.x), arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)))));
    let var_2 = select(arg_0, vec4<bool>(false, select(_wgslsmith_f_op_f32(round(542f)) > -888f, func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.c), vec2<u32>(u_input.a.x, u_input.b.x))).a, !(!arg_0.x)), ~1u > u_input.c, true), !(!select(arg_0, select(arg_0, vec4<bool>(arg_1.d.x, true, false, arg_1.a), false), !arg_0)));
    let var_3 = var_0 ^ max(-(~var_0), -21919i);
    let var_4 = var_0;
    return arg_1.b;
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: bool, arg_3: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec2_i32(arg_0.xx, vec2<i32>(-1123i, arg_0.x)), -(arg_0.x >> (u_input.b.x % 32u)) ^ abs(countOneBits(3290i)), -40137i, arg_0.x), vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0.xz, arg_0.xy), arg_0.x, reverseBits(14745i) & firstLeadingBit(abs(arg_0.x)), _wgslsmith_clamp_i32(~_wgslsmith_clamp_i32(arg_0.x, arg_0.x, arg_0.x), ~abs(arg_0.x), -2147483647i)));
    let var_1 = Struct_1(!arg_2, arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.wyy)), vec3<bool>(!select(arg_2, true, arg_2), arg_2, false));
    var_0 = vec4<i32>(~firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_0.x, arg_0.x), _wgslsmith_clamp_i32(arg_0.x, -1i, var_0.x))), 808i, _wgslsmith_mod_i32(max(min(0i, -2147483647i), _wgslsmith_mult_i32(11948i, var_0.x)), -15824i) ^ arg_0.x, _wgslsmith_dot_vec2_i32(arg_0.zz >> (select(u_input.a.xz, ~vec2<u32>(u_input.a.x, 4294967295u), vec2<bool>(true, true)) % vec2<u32>(32u)), countOneBits(~(~vec2<i32>(var_0.x, arg_0.x)))));
    let var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), ~vec2<u32>(u_input.c, ~u_input.c));
    var var_3 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -305f), 700f, _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(arg_1 - 138f))))));
    return var_2;
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = countOneBits(-vec2<i32>(1i, 1i));
    var var_1 = arg_1.d;
    var var_2 = arg_1;
    return arg_1;
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.b.xw), arg_0.x, u_input.b.x, _wgslsmith_sub_u32(var_0, 47747u)), vec4<u32>(~arg_0.x, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 0u), arg_0)), _wgslsmith_add_u32(74069u, 0u), ~var_0)), ~(~u_input.a));
    var var_2 = func_6(1u > func_5(~(~vec4<i32>(-2147483647i, 37475i, -1i, -2147483647i)), _wgslsmith_f_op_f32(func_4(vec4<bool>(false, false, true, false), func_2(arg_0.x))), false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(126f, 2321f, 804f, -1452f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(941f, 1000f, -597f, 1951f)))), Struct_1(all(select(vec2<bool>(false, true), func_2(4294967295u).d.zz, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1386f + -1787f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<bool>(false, false, false, true), Struct_1(true, 353f, vec3<f32>(1115f, 1216f, -1125f), vec3<bool>(false, false, false)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(419f, -198f, -1524f) - vec3<f32>(-1194f, -1000f, -1564f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1460f, 310f, 927f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1151f, 2017f, 173f), vec3<f32>(-446f, -109f, 2143f), vec3<bool>(true, false, true))))), select(vec3<bool>(select(false, false, false), false, all(vec4<bool>(false, false, false, true))), !func_2(u_input.b.x).d, vec3<bool>(false, false, false))), reverseBits(4294967295u));
    var_2 = func_2(countOneBits(firstTrailingBit(60929u)));
    let var_3 = abs(2147483647i) >> (var_1.x % 32u);
    return _wgslsmith_f_op_f32(-var_2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec4<bool>(true, true || !all(vec2<bool>(false, true)), false, _wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.b.x, 66487u))) >= _wgslsmith_f_op_f32(func_2(4294967295u).b + _wgslsmith_f_op_f32(f32(-1f) * -256f))));
    var var_1 = _wgslsmith_dot_vec2_u32(u_input.a.yw, u_input.a.xw);
    var_1 = _wgslsmith_dot_vec2_u32(select(select(abs(u_input.a.yy), u_input.b.yx, select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), func_6(true, Struct_1(true, 224f, vec3<f32>(-387f, -1000f, -516f), vec3<bool>(true, false, true)), 4294967295u).d.xy, true)), u_input.a.wx, true), min(u_input.b.xz, vec2<u32>(u_input.b.x, 37372u) ^ vec2<u32>(17516u, ~180200u)));
    var var_2 = func_6(any(vec3<bool>(true, true, false)), Struct_1(false, 1000f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-525f, 991f, 421f), vec3<f32>(127f, 214f, -2025f)))) + vec3<f32>(-1000f, _wgslsmith_f_op_f32(max(-1000f, -522f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<bool>(true, true, true)), ~u_input.b.x);
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(-62056i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_2.c.xy - vec2<f32>(408f, -165f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(906f, 1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.c.xy * vec2<f32>(var_2.c.x, 148f)) + _wgslsmith_f_op_vec2_f32(trunc(var_2.c.zx)))), any(select(!var_2.d, var_2.d, var_2.d)))));
}

