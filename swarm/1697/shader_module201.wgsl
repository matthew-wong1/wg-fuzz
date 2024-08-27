struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1197f + _wgslsmith_f_op_f32(ceil(-121f))))), !select(vec3<bool>(true, true, true), vec3<bool>(-1i <= u_input.a.x, false, u_input.c != u_input.d.x), vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a))), _wgslsmith_div_f32(-1311f, var_0.a))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(686f, -178f, var_0.a, -559f), vec4<f32>(var_0.a, 1308f, var_0.a, -550f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2263f, -1450f, -154f, 463f) * vec4<f32>(373f, -1040f, 650f, -325f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1182f, var_0.a, -364f, var_0.a)) - vec4<f32>(937f, -497f, var_0.a, var_0.a)))));
    let var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~2066u, ~7937u), vec2<u32>(u_input.e.x, 1u ^ _wgslsmith_sub_u32(u_input.c, 62709u)), ~u_input.e.yx);
    var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-479f, -1961f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-170f + -660f)), 636f)))));
    var var_3 = var_0;
    return vec4<bool>(var_0.b.x, false, u_input.e.x < var_2.x, any(var_3.b.xz));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(reverseBits(vec2<i32>(-firstLeadingBit(u_input.b), -(~(-8992i)))), min(1u, u_input.e.x), Struct_1(949f, vec3<bool>((u_input.a.x & 1i) > ~1i, true, true)), select(func_3(), vec4<bool>(true, abs(u_input.a.x) != -2136i, func_3().x || (u_input.b <= 32748i), true), any(select(func_3().wxy, vec3<bool>(true, true, true), true))));
    let var_1 = countOneBits(var_0.b);
    var var_2 = !vec4<bool>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.x, u_input.b, 9754i), vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x)), vec3<i32>(u_input.b, u_input.b, 1i)) == _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, u_input.b, var_0.a.x, 25089i) ^ vec4<i32>(-24373i, -5876i, -11261i, u_input.a.x), vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, 44340i)), all(vec2<bool>(!var_0.c.b.x, var_0.d.x)), var_0.d.x, false);
    let var_3 = abs(select(max(-vec3<i32>(-14698i, 0i, -69215i), -vec3<i32>(var_0.a.x, var_0.a.x, 38882i)), _wgslsmith_add_vec3_i32(abs(vec3<i32>(var_0.a.x, -51660i, var_0.a.x)), ~vec3<i32>(-33297i, var_0.a.x, 1i)), !var_0.d.yxx) ^ vec3<i32>(u_input.a.x, _wgslsmith_add_i32(33460i, u_input.a.x ^ 2147483647i), 23650i));
    let var_4 = Struct_1(485f, !var_0.c.b);
    return Struct_2(vec2<i32>(_wgslsmith_mod_i32(-var_3.x, -1i), firstTrailingBit(-var_3.x)), u_input.d.x, var_4, vec4<bool>(~1u == u_input.e.x, var_2.x, var_2.x, var_4.a < var_4.a));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_4 {
    var var_0 = ~(~(-vec2<i32>(13936i, -34178i)));
    let var_1 = abs(~(~var_0.x));
    var_0 = -arg_1.xx;
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(802f)), -1934f) - arg_0.c.a) < _wgslsmith_f_op_f32(-1f));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: i32, arg_3: Struct_4) -> Struct_4 {
    var var_0 = func_4(func_2(), vec3<i32>(~(-1i), 1i, 29309i));
    var var_1 = func_2();
    var_1 = func_2();
    var var_2 = func_2().c;
    var_2 = func_2().c;
    return func_4(Struct_2(func_2().a, ~1u, var_1.c, var_1.d), vec3<i32>(_wgslsmith_mod_i32(~30022i, firstLeadingBit(var_1.a.x) | ~var_1.a.x), 0i, ~(-10679i >> (~arg_0.x % 32u))));
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_sub_vec3_i32(max(-_wgslsmith_clamp_vec3_i32(arg_2.yyx, arg_2.wyx, arg_2.ywy), arg_2.wwz), vec3<i32>(~select(2147483647i, arg_2.x, true), _wgslsmith_sub_i32(i32(-1i) * -1i, 0i), min(arg_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(4396i, arg_2.x), u_input.a)))) >> (u_input.e.zwz % vec3<u32>(32u));
    let var_1 = vec3<f32>(-525f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1)))), arg_1);
    var var_2 = reverseBits(_wgslsmith_mult_u32(24218u, _wgslsmith_div_u32(max(select(13030u, u_input.e.x, arg_0.a), 19350u), reverseBits(u_input.d.x))));
    var_2 = _wgslsmith_div_u32(func_2().b, 0u);
    var var_3 = abs(_wgslsmith_mult_u32(~(~(~u_input.c)), u_input.c));
    return Struct_3(vec4<i32>(-arg_2.x, var_0.x, -1205i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -6981i, u_input.a.x), vec3<i32>(u_input.a.x, arg_2.x, 19755i), vec3<i32>(-15153i, u_input.a.x, 2147483647i)), var_0), var_0.x >> (~1u % 32u))), Struct_2((_wgslsmith_mod_vec2_i32(vec2<i32>(1i, arg_2.x), arg_2.zy) & func_2().a) >> ((vec2<u32>(4294967295u, 21136u) | u_input.e.xw) % vec2<u32>(32u)), _wgslsmith_sub_u32(~_wgslsmith_sub_u32(39090u, u_input.e.x), u_input.c), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x - -1501f), -1377f)), !(!vec3<bool>(arg_0.a, true, arg_0.a))), vec4<bool>(!select(arg_0.a, arg_0.a, arg_0.a), any(!vec3<bool>(true, arg_0.a, arg_0.a)), arg_0.a, !arg_0.a)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -212f)), var_1.x)), vec3<bool>(arg_0.a, select(true, u_input.c == 52194u, any(vec2<bool>(false, arg_0.a))), !arg_0.a)));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_4) -> vec2<i32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-421f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-126f)), arg_1.c.a))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.c.a)), -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.b.c.a)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = arg_0.xz;
    var var_2 = arg_1.b;
    let var_3 = u_input.d.yxx & u_input.e.xyw;
    let var_4 = vec4<bool>(func_3().x, arg_1.b.d.x, true, any(var_2.d.xyz));
    return vec2<i32>(arg_1.a.x, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.a.x, _wgslsmith_mult_i32(i32(-1i) * -u_input.b, abs(-_wgslsmith_add_i32(-4675i, u_input.b))));
    var var_1 = ~(u_input.a & func_6(~(~vec4<i32>(u_input.a.x, var_0.x, var_0.x, -23464i)), func_5(func_1(u_input.e.zw, false, 55067i, Struct_4(false)), _wgslsmith_f_op_f32(f32(-1f) * -193f), ~vec4<i32>(var_0.x, 2333i, 0i, u_input.a.x)), func_1(vec2<u32>(u_input.e.x, u_input.c), func_5(Struct_4(false), 1590f, vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.b)).b.d.x, _wgslsmith_add_i32(1i, var_0.x), func_1(vec2<u32>(1u, 77192u), false, 1i, Struct_4(true)))));
    var_1 = select(vec2<i32>(~u_input.a.x, -1i) & ~_wgslsmith_add_vec2_i32(max(vec2<i32>(1i, 1i), vec2<i32>(var_1.x, var_0.x)), u_input.a), -vec2<i32>(48822i, ~7636i), select(!(!func_5(Struct_4(true), 129f, vec4<i32>(-9750i, var_0.x, u_input.b, 2147483647i)).c.b.xz), !func_2().c.b.zx, false));
    var_1 = u_input.a;
    let var_2 = Struct_3(-_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-55639i, u_input.b), 1156i, -4026i, firstTrailingBit(var_1.x)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, var_1.x, u_input.a.x, var_1.x), vec4<i32>(var_0.x, u_input.b, 10065i, var_0.x)) | ~vec4<i32>(-1202i, 28213i, 11700i, var_1.x)), func_5(func_1(u_input.e.yw, !all(vec2<bool>(false, false)), u_input.b, Struct_4(true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_div_f32(-1265f, 362f)))), vec4<i32>(u_input.b, _wgslsmith_clamp_i32(var_0.x | var_0.x, -2147483647i, -31875i & u_input.b), -3428i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, u_input.a.x, var_1.x, var_1.x), vec4<i32>(0i, 2147483647i, u_input.b, 43487i), vec4<bool>(true, false, true, true)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -2147483647i, var_0.x, var_1.x), vec4<i32>(32740i, -1i, -2866i, 47306i))))).b, func_5(func_1(firstLeadingBit(u_input.e.zw), (var_1.x < var_0.x) && all(vec2<bool>(true, true)), func_2().a.x, Struct_4(func_5(Struct_4(false), -313f, vec4<i32>(var_1.x, var_0.x, 1i, var_1.x)).b.c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1296f, func_2().c.a)), vec4<i32>(~countOneBits(var_1.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, -2902i), reverseBits(u_input.b)), _wgslsmith_clamp_i32(~var_1.x, u_input.a.x, ~u_input.a.x), _wgslsmith_mod_i32(u_input.a.x & var_0.x, -1i))).c);
    var_1 = vec2<i32>(2147483647i, 0i);
    var_1 = ~vec2<i32>(u_input.b, -49671i);
    let var_3 = _wgslsmith_sub_i32(-28051i, 64467i);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_2.a.zxw), _wgslsmith_clamp_i32(abs(36206i), reverseBits(~1i), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(14926i, var_3), var_2.a.yz), 44702i)));
}

