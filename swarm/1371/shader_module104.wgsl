struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>) -> vec3<i32> {
    var var_0 = ~(~vec3<u32>(1u, 1u, 1u));
    var var_1 = _wgslsmith_f_op_f32(step(-1000f, 377f));
    var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(~(~var_0.x), abs(abs(87635u)), _wgslsmith_sub_u32(4474u, _wgslsmith_mult_u32(var_0.x, 1u))) << (select(vec3<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, 57519u, 17735u), vec4<u32>(var_0.x, var_0.x, 40413u, 13790u)), ~17652u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(93104u, 12969u, var_0.x), vec3<u32>(0u, 7756u, var_0.x)), vec3<bool>(true, any(vec4<bool>(false, true, false, false)), all(vec4<bool>(true, false, true, false)))) % vec3<u32>(32u)), select(~vec3<u32>(firstLeadingBit(4294967295u), firstTrailingBit(var_0.x), 0u), vec3<u32>(firstLeadingBit(var_0.x), ~var_0.x, 46547u) << (~(~vec3<u32>(var_0.x, var_0.x, var_0.x)) % vec3<u32>(32u)), true));
    var_0 = ~vec3<u32>(~_wgslsmith_sub_u32(firstTrailingBit(var_0.x), 1u << (var_0.x % 32u)), var_0.x, var_0.x);
    let var_2 = ~min(vec3<u32>(1u, var_0.x, 1u), _wgslsmith_sub_vec3_u32(select(~vec3<u32>(32052u, var_0.x, 1u), vec3<u32>(0u, 20610u, var_0.x), true), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, var_0.x), vec3<u32>(var_0.x, var_0.x, 1u)))));
    return arg_0;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> bool {
    let var_0 = Struct_1(_wgslsmith_mult_vec3_i32(abs(func_3(vec3<i32>(arg_1.c.a.x, -31856i, -2147483647i))), select(abs(max(vec3<i32>(-61676i, 2147483647i, 1i), vec3<i32>(u_input.a.x, u_input.a.x, -12090i))), vec3<i32>(~arg_1.c.a.x, u_input.a.x, 2147483647i), select(true, false, true))));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(arg_1.a, arg_1.a))), vec4<bool>(~0u <= _wgslsmith_clamp_u32(3327u, 4294967295u, 3088u), !(arg_1.a.x < arg_1.a.x), arg_2 | arg_1.b.x, false), arg_1.c), select(!all(select(vec4<bool>(arg_2, arg_1.b.x, false, true), arg_1.b, vec4<bool>(arg_1.b.x, true, arg_2, true))), !(arg_2 && true), arg_1.b.x && (_wgslsmith_div_f32(arg_1.a.x, arg_1.a.x) <= 1112f)), arg_1);
    var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(var_1.a.a * vec3<f32>(_wgslsmith_f_op_f32(select(var_1.c.a.x, arg_1.a.x, var_1.b)), _wgslsmith_f_op_f32(floor(1201f)), _wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x))), vec4<bool>(!any(arg_1.b.zxw), !arg_2, any(vec4<bool>(true, false, false, true)) | (var_0.a.x < -11407i), arg_2), arg_1.c), all(var_1.a.b.yyw), arg_1);
    var var_2 = arg_1.c;
    var_1 = Struct_3(var_1.a, arg_1.b.x, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c.a + var_1.c.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.a.x, arg_1.a.x, 779f) - var_1.c.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-135f, var_1.a.a.x, -1061f)))), vec4<bool>(select(true, -401f > var_1.a.a.x, arg_1.b.x), arg_0 <= 1i, true, true), Struct_1(~(~vec3<i32>(6012i, u_input.a.x, -1i)))));
    return !select(!arg_1.b.x, any(select(!vec2<bool>(arg_1.b.x, false), !vec2<bool>(true, arg_2), vec2<bool>(false, true))), var_1.a.b.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_4, arg_3: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) - -350f);
    var var_1 = arg_2;
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -668f, 1485f) - vec3<f32>(var_1.b, 249f, arg_2.b)), _wgslsmith_div_vec3_f32(vec3<f32>(604f, var_0, arg_2.b), vec3<f32>(var_1.b, var_0, 493f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.b, -1104f, -809f)))))), !select(vec4<bool>(var_1.a, true, arg_2.a, true), !vec4<bool>(false, arg_2.a, var_1.a, true), u_input.a.x < u_input.a.x), Struct_1(-arg_0 & _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, u_input.a.x, u_input.a.x), vec3<i32>(69143i, -1i, u_input.a.x)))), arg_3, Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(-var_1.b), 1f))), select(vec4<bool>(false, var_1.a, !arg_3, var_0 > 1538f), vec4<bool>(false, arg_3, func_2(arg_0.x, Struct_2(vec3<f32>(-466f, -797f, 990f), vec4<bool>(arg_3, var_1.a, true, arg_3), Struct_1(vec3<i32>(u_input.a.x, 0i, arg_0.x))), true), !arg_3), select(vec4<bool>(arg_3, true, true, true), vec4<bool>(arg_3, true, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, arg_3, true, true), vec4<bool>(var_1.a, false, arg_3, arg_2.a)))), Struct_1(vec3<i32>(arg_0.x, -30349i, max(arg_0.x, 1i)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_2.c.a), _wgslsmith_f_op_vec3_f32(-var_2.a.a))), _wgslsmith_f_op_vec3_f32(-var_2.c.a)) - var_2.c.a)));
    var var_4 = Struct_5(var_2.c, vec4<u32>(arg_1, _wgslsmith_mod_u32(min(arg_1, 18480u) >> (arg_1 % 32u), reverseBits(arg_1) & ~1u), arg_1, ~57131u));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(var_4.a.a, vec3<f32>(1000f, 1388f, arg_2.b), true)))))), var_4.a.b, Struct_1(arg_0));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_5, arg_3: f32) -> Struct_4 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-623f, arg_0.x) * _wgslsmith_f_op_f32(arg_3 - -508f))) - arg_0.x), 1416f, arg_2.a.a.x);
    let var_1 = Struct_3(arg_2.a, arg_1, func_4(_wgslsmith_sub_vec3_i32(arg_2.a.c.a, arg_2.a.c.a), _wgslsmith_dot_vec2_u32(max(arg_2.b.zw, arg_2.b.xy), vec2<u32>(~0u, 20113u)), Struct_4(_wgslsmith_f_op_f32(exp2(arg_0.x)) >= -1294f, arg_0.x), arg_2.a.b.x == (!arg_2.a.b.x | func_2(0i, Struct_2(vec3<f32>(arg_0.x, var_0.x, -480f), vec4<bool>(true, arg_2.a.b.x, arg_1, false), arg_2.a.c), arg_2.a.b.x))));
    let var_2 = Struct_4(!(arg_2.a.b.x == !(arg_2.b.x == 18065u)), _wgslsmith_f_op_f32(-190f + var_1.a.a.x));
    let var_3 = arg_2.a.b;
    let var_4 = _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_2.b.x, 9227u), arg_2.b.zx);
    return var_2;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_4, arg_3: Struct_5) -> Struct_5 {
    let var_0 = Struct_3(Struct_2(vec3<f32>(arg_2.b, arg_3.a.a.x, 1f), vec4<bool>(func_1(vec2<f32>(-217f, -1554f), !arg_3.a.b.x, arg_3, _wgslsmith_f_op_f32(trunc(-557f))).a, true, arg_3.a.b.x, any(func_4(arg_3.a.c.a, 15456u, arg_2, false).b.xxz)), func_4(_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_3.a.c.a.x, -2147483647i, u_input.a.x), vec3<i32>(2147483647i, 2147483647i, -1i)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(55404u, arg_3.b.x), 1u), arg_2, !func_4(arg_3.a.c.a, 17116u, arg_2, arg_3.a.b.x).b.x).c), arg_3.a.b.x, Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_3.a.a), arg_3.a.a)), vec4<bool>(func_4(func_4(arg_3.a.c.a, arg_3.b.x, Struct_4(false, -1000f), arg_3.a.b.x).c.a, 0u, arg_2, true).b.x, 1107u == (arg_3.b.x | 1u), arg_2.a, !all(vec3<bool>(arg_2.a, arg_3.a.b.x, arg_3.a.b.x))), func_4(arg_3.a.c.a, reverseBits(arg_3.b.x), Struct_4(!arg_2.a, _wgslsmith_f_op_f32(ceil(arg_2.b))), any(arg_3.a.b.wzz) && true).c));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-753f))), _wgslsmith_f_op_f32(sign(-392f)), -633f, 847f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a.a.x), 1861f, 392f, arg_3.a.a.x))));
    let var_2 = true;
    let var_3 = func_4(select(arg_3.a.c.a, var_0.a.c.a, true && arg_2.a), _wgslsmith_div_u32(arg_3.b.x, min(8713u, 54814u) ^ ~arg_3.b.x) | abs(~0u), func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a.x, arg_3.a.a.x) - vec2<f32>(var_1.x, 1908f))), vec2<f32>(1000f, var_1.x)), !arg_3.a.b.x, Struct_5(func_4(var_0.c.c.a, arg_3.b.x | 0u, Struct_4(false, -413f), true), ~vec4<u32>(arg_3.b.x, 0u, arg_3.b.x, arg_3.b.x) | ~arg_3.b), _wgslsmith_div_f32(var_1.x, 537f)), !any(!vec3<bool>(arg_2.a, var_2, arg_3.a.b.x))).c;
    var var_4 = arg_2;
    return Struct_5(func_4(var_3.a, select(~min(0u, arg_3.b.x), 4294967295u, true), func_1(_wgslsmith_f_op_vec2_f32(-func_4(vec3<i32>(var_0.a.c.a.x, arg_1, var_0.a.c.a.x), 0u, Struct_4(false, arg_3.a.a.x), var_2).a.yx), !var_0.c.b.x, Struct_5(Struct_2(var_0.c.a, vec4<bool>(var_4.a, true, arg_3.a.b.x, true), var_3), arg_3.b), _wgslsmith_f_op_f32(-arg_3.a.a.x)), !all(select(var_0.a.b.wy, arg_3.a.b.yz, vec2<bool>(true, false)))), ~min(arg_3.b, ~arg_3.b));
}

fn func_6(arg_0: bool, arg_1: f32, arg_2: Struct_5) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.a.x), _wgslsmith_f_op_f32(-1492f + 1841f), _wgslsmith_f_op_f32(arg_1 * arg_2.a.a.x), arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a.a.x, -189f, arg_2.a.a.x, arg_2.a.a.x), vec4<f32>(2008f, 1000f, 2067f, arg_1))), select(select(arg_2.a.b, arg_2.a.b, false), select(arg_2.a.b, arg_2.a.b, true), all(arg_2.a.b.wxx)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_2.a.a.x, arg_1, 690f) + vec4<f32>(-1393f, 711f, arg_1, 720f))) * vec4<f32>(arg_1, _wgslsmith_f_op_f32(round(arg_1)), -1658f, arg_2.a.a.x))))));
    let var_1 = select(~vec3<u32>(arg_2.b.x, arg_2.b.x, arg_2.b.x), arg_2.b.zzx, arg_0);
    var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(605f, _wgslsmith_f_op_f32(select(-1184f, -1000f, false || (var_1.x <= 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_5(3022i, arg_2.a.c.a.x, Struct_4(arg_2.a.b.x, -1069f), Struct_5(arg_2.a, vec4<u32>(0u, var_1.x, arg_2.b.x, arg_2.b.x))).a.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(301f, _wgslsmith_f_op_f32(select(-1120f, var_0.x, arg_2.a.b.x))) + -119f))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.a.x, var_0.x, _wgslsmith_f_op_f32(trunc(arg_1)), 1675f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(130f, var_0.x, var_0.x, -1279f) * vec4<f32>(arg_1, arg_2.a.a.x, arg_1, -280f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(255f, 1662f, -639f, -412f)))))));
    let var_2 = Struct_1(arg_2.a.c.a);
    return Struct_4(any(vec4<bool>(arg_2.a.b.x, true, (-6241i < arg_2.a.c.a.x) & !arg_2.a.b.x, arg_2.a.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1391f - _wgslsmith_f_op_f32(trunc(var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -499f))));
}

fn func_7(arg_0: f32, arg_1: Struct_4, arg_2: i32, arg_3: vec3<u32>) -> vec2<u32> {
    var var_0 = arg_3.yx;
    var var_1 = func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-309f - -158f) * arg_0), arg_1.b), func_5(~1i, firstLeadingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(6335i, 2147483647i, -31702i), vec3<i32>(-36314i, u_input.a.x, -2147483647i))), arg_1, Struct_5(func_5(u_input.a.x, u_input.a.x >> (22945u % 32u), Struct_4(false, arg_1.b), Struct_5(Struct_2(vec3<f32>(-954f, -1035f, -399f), vec4<bool>(false, false, true, false), Struct_1(vec3<i32>(arg_2, arg_2, 42691i))), vec4<u32>(arg_3.x, var_0.x, 57932u, var_0.x))).a, abs(select(vec4<u32>(44889u, 0u, 4294967295u, var_0.x), vec4<u32>(arg_3.x, 39584u, arg_3.x, 4294967295u), arg_1.a)))).a.b.x, Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, arg_1.b, arg_1.b) - vec3<f32>(arg_1.b, -1915f, arg_1.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, arg_1.b, 1000f)))), vec4<bool>(true, true, true, true), func_4(vec3<i32>(1i, arg_2, 25772i), arg_3.x, Struct_4(arg_1.a, 2493f), !arg_1.a).c), ~vec4<u32>(16138u, min(1u, 9107u), ~var_0.x, firstLeadingBit(4294967295u))), arg_1.b);
    var var_2 = Struct_2(vec3<f32>(arg_0, _wgslsmith_f_op_f32(round(1630f)), -850f), func_4(-(~vec3<i32>(arg_2, 2147483647i, -16375i)), ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, var_0.x, arg_3.x, var_0.x), vec4<u32>(4294967295u, 25985u, 1u, 0u))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.b, 1209f), vec2<f32>(612f, 659f)))), _wgslsmith_mod_u32(var_0.x, arg_3.x) < arg_3.x, func_5(arg_2, 10520i, func_6(false, arg_0, Struct_5(Struct_2(vec3<f32>(602f, arg_0, 732f), vec4<bool>(false, false, true, arg_1.a), Struct_1(vec3<i32>(1i, u_input.a.x, arg_2))), vec4<u32>(4294967295u, var_0.x, 15750u, 1u))), func_5(12163i, u_input.a.x, arg_1, Struct_5(Struct_2(vec3<f32>(arg_0, -275f, -734f), vec4<bool>(true, true, arg_1.a, var_1.a), Struct_1(vec3<i32>(u_input.a.x, arg_2, 0i))), vec4<u32>(14641u, arg_3.x, arg_3.x, arg_3.x)))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(2521f * -753f))), arg_1.a).b, Struct_1(vec3<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x)));
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(max(var_2.a, var_2.a)), vec4<bool>(any(var_2.b.yzx), func_1(vec2<f32>(434f, var_1.b), false, Struct_5(Struct_2(vec3<f32>(-177f, -466f, arg_0), var_2.b, Struct_1(var_2.c.a)), vec4<u32>(41587u, 73385u, 14999u, 67172u)), var_1.b).a & false, !any(vec2<bool>(false, var_2.b.x)), !var_2.b.x), var_2.c), all(vec2<bool>(true, var_2.b.x)), Struct_2(func_5(_wgslsmith_mod_i32(max(0i, -12613i), -var_2.c.a.x), -1758i, func_1(var_2.a.xy, arg_1.a & var_1.a, func_5(arg_2, var_2.c.a.x, arg_1, Struct_5(Struct_2(vec3<f32>(var_2.a.x, arg_1.b, var_1.b), vec4<bool>(false, var_2.b.x, var_2.b.x, var_2.b.x), var_2.c), vec4<u32>(arg_3.x, var_0.x, 0u, var_0.x))), _wgslsmith_f_op_f32(max(-103f, 1696f))), Struct_5(Struct_2(vec3<f32>(arg_0, arg_1.b, -200f), vec4<bool>(true, true, true, true), var_2.c), vec4<u32>(103392u, 39837u, 83827u, arg_3.x) >> (vec4<u32>(var_0.x, 0u, var_0.x, 4294967295u) % vec4<u32>(32u)))).a.a, func_5(-22412i, var_2.c.a.x, func_1(vec2<f32>(-1365f, arg_0), var_2.b.x, func_5(arg_2, 2147483647i, Struct_4(var_1.a, arg_1.b), Struct_5(Struct_2(vec3<f32>(-726f, -2435f, arg_0), var_2.b, var_2.c), vec4<u32>(1u, arg_3.x, 37034u, 4294967295u))), _wgslsmith_f_op_f32(-146f * var_1.b)), Struct_5(Struct_2(var_2.a, var_2.b, var_2.c), vec4<u32>(arg_3.x, var_0.x, 40671u, 13595u) & vec4<u32>(var_0.x, 4294967295u, 42342u, arg_3.x))).a.b, Struct_1(-var_2.c.a | _wgslsmith_clamp_vec3_i32(var_2.c.a, vec3<i32>(23538i, u_input.a.x, -20981i), vec3<i32>(-32591i, 1i, u_input.a.x)))));
    var_2 = Struct_2(var_3.a.a, !var_2.b, var_2.c);
    return abs(countOneBits(select(vec2<u32>(arg_3.x, ~var_0.x), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_0.x), countOneBits(vec2<u32>(33570u, var_0.x))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(true == all(vec3<bool>(false, false, true)), any(vec2<bool>(true, true)), !any(vec3<bool>(false, true, false)), all(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false))));
    var var_1 = _wgslsmith_clamp_vec2_u32(~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(40915u, 70660u), vec2<u32>(7743u, 1u)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 44562u)) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(2823u, 1u), abs(vec2<u32>(0u, 1u)), ~vec2<u32>(4294967295u, 15018u)))), func_7(-465f, func_6(var_0.x, -1213f, func_5(45258i, ~6605i, func_1(vec2<f32>(212f, 415f), false, Struct_5(Struct_2(vec3<f32>(-369f, -1000f, -608f), vec4<bool>(var_0.x, false, false, var_0.x), Struct_1(vec3<i32>(23582i, 2147483647i, 60651i))), vec4<u32>(0u, 66157u, 14845u, 27555u)), -1000f), Struct_5(Struct_2(vec3<f32>(-1219f, -1065f, -1257f), var_0, Struct_1(vec3<i32>(u_input.a.x, -1i, u_input.a.x))), vec4<u32>(0u, 35310u, 1u, 75206u)))), u_input.a.x, ~vec3<u32>(1u, 1u, 1u)));
    var_1 = (select(firstTrailingBit(vec2<u32>(var_1.x, 0u)), ~(~vec2<u32>(50406u, 4294967295u)), false) | max(select(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 54541u), vec2<u32>(15092u, 4294967295u)), abs(vec2<u32>(1u, var_1.x)), !var_0.zx), ~(vec2<u32>(var_1.x, 1u) ^ vec2<u32>(var_1.x, 37587u)))) ^ (~func_5(reverseBits(u_input.a.x), _wgslsmith_div_i32(u_input.a.x, 71i), func_6(true, 112f, Struct_5(Struct_2(vec3<f32>(640f, 1162f, 612f), vec4<bool>(var_0.x, true, false, true), Struct_1(vec3<i32>(u_input.a.x, -1i, -50730i))), vec4<u32>(58437u, 23774u, 12706u, var_1.x))), func_5(430i, 1i, Struct_4(var_0.x, 437f), Struct_5(Struct_2(vec3<f32>(-316f, -1000f, 812f), vec4<bool>(var_0.x, true, var_0.x, var_0.x), Struct_1(vec3<i32>(-15024i, u_input.a.x, -2147483647i))), vec4<u32>(0u, var_1.x, 46068u, 1u)))).b.yw ^ reverseBits(~abs(vec2<u32>(var_1.x, 4294967295u))));
    let var_2 = any(!(!(!func_5(u_input.a.x, 7264i, Struct_4(true, 1280f), Struct_5(Struct_2(vec3<f32>(-479f, 112f, 1050f), vec4<bool>(true, var_0.x, var_0.x, false), Struct_1(vec3<i32>(-11674i, u_input.a.x, 4066i))), vec4<u32>(56132u, var_1.x, 85696u, 126447u))).a.b.yz)));
    var var_3 = -1069f;
    var_3 = -355f;
    let var_4 = countOneBits(4294967295u);
    let var_5 = u_input.a.x ^ ~_wgslsmith_sub_i32(countOneBits(abs(45989i)), 1i);
    var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1062f);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(_wgslsmith_add_u32(~0u, max(var_4, var_4)), firstTrailingBit(var_4)));
}

