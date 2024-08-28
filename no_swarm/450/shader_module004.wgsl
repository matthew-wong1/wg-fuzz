struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = max(vec3<i32>(abs(-(i32(-1i) * -2147483647i)), i32(-1i) * -max(1i, -2147483647i), -_wgslsmith_dot_vec3_i32(vec3<i32>(-30053i, -1i, 0i), ~vec3<i32>(2147483647i, -1i, -2147483647i))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(abs(-17205i), _wgslsmith_mod_i32(-19057i, -2147483647i)), 47857i, 34698i), vec3<i32>(-1i) * -(vec3<i32>(8654i, 11812i, 1i) << (vec3<u32>(4294967295u, 36599u, u_input.a.x) % vec3<u32>(32u)))));
    var_0 = _wgslsmith_add_vec3_i32(abs(_wgslsmith_mod_vec3_i32(~(~vec3<i32>(32814i, var_0.x, var_0.x)), -_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 35063i, 0i), vec3<i32>(-1361i, var_0.x, 31056i)))), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -var_0.x, 2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(-24846i, var_0.x, var_0.x, -8687i), vec4<i32>(39885i, 2147483647i, var_0.x, var_0.x))), select(_wgslsmith_mod_vec3_i32(-vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(var_0.x, 1i, var_0.x) >> (u_input.a.zww % vec3<u32>(32u))), vec3<i32>(3391i, ~(-2147483647i), var_0.x), true)));
    let var_1 = false;
    var_0 = firstLeadingBit(~vec3<i32>(46186i, _wgslsmith_mod_i32(0i, var_0.x), 1i | var_0.x) << (select(abs(u_input.a.yzy), max(u_input.a.zxz, vec3<u32>(u_input.a.x, 21557u, 1u)), !var_1) % vec3<u32>(32u)));
    let var_2 = Struct_1(min(u_input.a, max(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a)), _wgslsmith_add_vec4_u32(u_input.a, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1608f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1553f)), _wgslsmith_f_op_f32(-462f + 1226f))) - -186f), ~var_0.zz ^ vec2<i32>(var_0.x, ~0i));
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1925f)), var_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.b)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: Struct_4) -> i32 {
    var var_0 = -2147483647i;
    var var_1 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, ~u_input.a.x), abs(4294967295u), ~min(0u, 37412u), 10412u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-243f - _wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(arg_1.x - arg_2.c.x)))), -vec2<i32>(~(-24466i), firstLeadingBit(arg_0.x))));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-980f + arg_2.c.x), 2004f, -356f, _wgslsmith_f_op_f32(2054f + var_1.a.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-337f, arg_1.x, arg_2.c.x, 1294f) + vec4<f32>(980f, arg_2.c.x, -1112f, 1306f))), !arg_2.a.x))));
    var var_3 = Struct_3(Struct_2(var_1.a), Struct_2(var_1.a));
    var_0 = ~1i;
    return _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(arg_0, arg_0), -1i) >> (_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(var_1.a.a.yx, vec2<u32>(var_3.a.a.a.x, var_1.a.a.x))) % 32u), 1i | firstLeadingBit(var_3.a.a.c.x), abs(0i)) << (var_1.a.a.x % 32u);
}

fn func_2() -> f32 {
    let var_0 = func_4(abs(_wgslsmith_div_vec4_i32(abs(vec4<i32>(-1i, -1i, -24360i, -1i)), ~vec4<i32>(-12281i, 1i, 2147483647i, -5493i)) >> (vec4<u32>(~5523u, 1u, ~u_input.a.x, u_input.a.x) % vec4<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-296f)))), _wgslsmith_f_op_f32(-120f + _wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1685f * -808f), _wgslsmith_f_op_f32(floor(941f)))))), Struct_4(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(false, false)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1879f, 464f, -790f))) - vec3<f32>(_wgslsmith_f_op_f32(-126f * -1057f), _wgslsmith_f_op_f32(min(355f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1033f)))));
    let var_1 = firstLeadingBit(u_input.a.x) >= (24283u | u_input.a.x);
    var var_2 = u_input.a.x;
    var_2 = 16031u;
    var_2 = abs(20150u);
    return -754f;
}

fn func_5(arg_0: Struct_4, arg_1: f32) -> Struct_3 {
    var var_0 = arg_0.a.x | arg_0.a.x;
    let var_1 = Struct_3(Struct_2(Struct_1(u_input.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(384f * arg_1))), _wgslsmith_mult_vec2_i32(vec2<i32>(-22043i, 2147483647i), vec2<i32>(1i, 1i)))), Struct_2(Struct_1(u_input.a, _wgslsmith_f_op_f32(ceil(arg_0.c.x)), ~(-vec2<i32>(28329i, 1i)))));
    var_0 = any(vec2<bool>(arg_0.b, (arg_0.b && arg_0.a.x) | true)) || true;
    let var_2 = ~vec3<u32>(~firstTrailingBit(~u_input.a.x), ~(~0u), select(_wgslsmith_mod_u32(u_input.a.x << (u_input.a.x % 32u), _wgslsmith_sub_u32(var_1.a.a.a.x, 27764u)), countOneBits(var_1.b.a.a.x), 1734f > _wgslsmith_div_f32(arg_0.c.x, arg_1)));
    return var_1;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: vec2<i32>) -> Struct_3 {
    let var_0 = u_input.a.xyz;
    let var_1 = vec3<bool>(56341u <= arg_0.x, 47416i >= firstTrailingBit(i32(-1i) * -arg_2.x), !((true && (u_input.a.x <= var_0.x)) & false));
    let var_2 = func_5(Struct_4(select(!(!var_1.zz), var_1.yz, !vec2<bool>(false, var_1.x)), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-206f, 1076f, 874f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1173f, 187f, 1000f)), vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_f32(func_2()));
    var var_3 = func_5(Struct_4(vec2<bool>(true, true), true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-363f, var_2.b.a.b, -102f))), vec3<f32>(131f, _wgslsmith_f_op_f32(985f * var_2.a.a.b), var_2.a.a.b), true && all(vec2<bool>(var_1.x, false))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-135f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(154f * -489f))))))).b;
    let var_4 = vec2<bool>(true, false);
    return func_5(Struct_4(vec2<bool>(any(var_1), false), var_4.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(202f, var_3.a.b, 633f)), vec3<f32>(var_3.a.b, 174f, var_3.a.b), all(vec2<bool>(var_4.x, var_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.b, 1820f, -546f) - vec3<f32>(var_2.b.a.b, var_3.a.b, -1152f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.b.a.b)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-159f * 1810f) + var_2.a.a.b)));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec3<u32>) -> u32 {
    var var_0 = -(arg_1.b.a.c & -arg_1.b.a.c);
    return 20205u << (u_input.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a.x, func_6((vec3<u32>(u_input.a.x, 4294967295u, 49561u) ^ vec3<u32>(u_input.a.x, 0u, u_input.a.x)) | ~u_input.a.yyw, func_1(u_input.a.yw << (u_input.a.yy % vec2<u32>(32u)), 25922u, max(vec2<i32>(-1i, 13794i), vec2<i32>(-28205i, -2147483647i))), ~(~u_input.a.xxx))), reverseBits(~u_input.a));
    var_1 = ~(u_input.a ^ vec4<u32>(var_1.x, 19880u, 67156u, abs(~u_input.a.x)));
    var var_2 = 50483u;
    let var_3 = select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), !vec3<bool>(true, true, 4294967295u == u_input.a.x), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true))), vec3<bool>(any(vec3<bool>(all(vec3<bool>(false, true, false)), any(vec4<bool>(false, false, true, false)), true)), true, any(vec3<bool>(true, true, true))));
    var var_4 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(1f, ~(-3216i), u_input.a.x);
}

