struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d.xz, vec2<u32>(_wgslsmith_div_u32(17879u, 33499u) >> (1u % 32u), _wgslsmith_clamp_u32(0u, u_input.c, 0u) ^ ~1u)), vec2<u32>(~select(_wgslsmith_clamp_u32(1u, 1u, u_input.d.x), u_input.d.x, true), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(13013u, u_input.c, u_input.d.x, 4294967295u)), vec4<u32>(u_input.c, 1u, _wgslsmith_mult_u32(982u, 19635u), 1u))));
    var var_1 = Struct_2(vec3<bool>(true, !all(vec2<bool>(true, true)), true));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1025f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * -938f))))), 373f, var_1.a.x));
    let var_3 = Struct_4(countOneBits(-firstLeadingBit(u_input.a)));
    var var_4 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.d.x, _wgslsmith_add_u32(1u, u_input.b)), firstLeadingBit(u_input.d.wyz)) >> (u_input.c % 32u);
    return _wgslsmith_f_op_f32(322f - _wgslsmith_f_op_f32(f32(-1f) * -1120f));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: Struct_1) -> bool {
    let var_0 = arg_0;
    var var_1 = vec2<bool>(true, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1157f - 210f) + 2073f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    let var_2 = vec4<bool>(any(select(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, !var_1.x, var_1.x), vec4<bool>(all(vec4<bool>(true, var_1.x, var_1.x, false)), !var_1.x, all(vec4<bool>(var_1.x, var_1.x, var_1.x, false)), arg_0.a.x <= 10121i))), select(true, true, !(!var_1.x) & all(select(vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(true, true, false, true), false))), var_1.x, !(!(-273f < _wgslsmith_f_op_f32(sign(231f)))));
    let var_3 = _wgslsmith_add_vec3_u32(arg_1, u_input.d.wwy);
    let var_4 = !(!select(!select(vec3<bool>(var_2.x, true, var_1.x), vec3<bool>(var_1.x, true, var_2.x), vec3<bool>(var_2.x, true, true)), vec3<bool>(var_2.x, var_2.x, true), all(select(vec2<bool>(var_2.x, var_2.x), var_2.yx, var_2.x))));
    return false;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = vec3<f32>(965f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(239f - _wgslsmith_f_op_f32(floor(-800f))))), _wgslsmith_f_op_f32(select(-520f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -884f))), all(!vec4<bool>(false, true, arg_0, arg_0)))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(187f, 1000f, var_0.x), vec3<f32>(var_0.x, var_0.x, -120f))), vec3<f32>(var_0.x, var_0.x, 625f), vec3<bool>(arg_0, false, arg_0)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1487f, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1793f, var_0.x, 156f) + vec3<f32>(-219f, var_0.x, var_0.x)))), vec3<bool>(true, true, true)))), vec3<f32>(_wgslsmith_f_op_f32(1338f * _wgslsmith_f_op_f32(func_3())), -1000f, var_0.x));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_0.x)), -208f))), var_0.x) - vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 1349f, -226f));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    let var_2 = Struct_3(Struct_2(!vec3<bool>(arg_0, arg_0, all(vec4<bool>(true, true, arg_0, arg_0)))), Struct_1(vec3<i32>(max(_wgslsmith_div_i32(u_input.e.x, u_input.e.x), _wgslsmith_sub_i32(2147483647i, u_input.a.x)), u_input.a.x & u_input.a.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.e.yyy), u_input.a.ywx))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), -987f, _wgslsmith_f_op_f32(exp2(var_0.x)))), Struct_2(select(vec3<bool>(arg_0 & true, !arg_0, true), vec3<bool>(true, !arg_0, all(vec2<bool>(arg_0, true))), !(!vec3<bool>(arg_0, true, false)))), u_input.a.x);
    return Struct_2(!vec3<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(var_2.d.a.x, false, false, false))), var_2.d.a.x, var_2.d.a.x));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_3(func_4(all(func_4(!arg_0.a.x, u_input.d.yx << (u_input.d.yw % vec2<u32>(32u))).a), _wgslsmith_add_vec2_u32(~(u_input.d.xx >> (u_input.d.yw % vec2<u32>(32u))), ~u_input.d.yx)), Struct_1(-u_input.a.xxy), vec4<f32>(-426f, arg_1, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1 - arg_1))))), arg_0, select(arg_2.a.x, i32(-1i) * -2147483647i, true));
    var var_1 = Struct_1(select(var_0.b.a, ~firstLeadingBit(~u_input.a.yyx), any(select(select(vec3<bool>(false, false, var_0.a.a.x), vec3<bool>(false, var_0.d.a.x, arg_0.a.x), false), vec3<bool>(false, arg_0.a.x, arg_0.a.x), false))));
    var_1 = arg_2;
    return firstTrailingBit(_wgslsmith_clamp_i32(var_1.a.x | -select(arg_2.a.x, var_0.b.a.x, arg_0.a.x), countOneBits(abs(~0i)), 15462i));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_4 {
    let var_0 = -233f;
    let var_1 = Struct_1(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(firstTrailingBit(u_input.a.yyw), arg_0.a << (vec3<u32>(u_input.c, 0u, u_input.d.x) % vec3<u32>(32u))));
    let var_2 = abs(vec4<i32>(-2147483647i, -73173i, func_5(func_4(func_2(Struct_4(vec4<i32>(-32171i, 13199i, 1i, 2147483647i)), u_input.d.wyx, Struct_4(vec4<i32>(-2147483647i, u_input.e.x, var_1.a.x, u_input.e.x)), arg_0), max(u_input.d.yx, vec2<u32>(u_input.d.x, 66722u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-266f)), _wgslsmith_f_op_f32(-1453f * var_0)), arg_0), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.a, u_input.e.wxy), vec3<i32>(-1i, arg_2.a.x, u_input.e.x)), ~1i)));
    var var_3 = !(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true)));
    var var_4 = Struct_3(Struct_2(var_3.wwz), Struct_1(u_input.e.zxw), vec4<f32>(var_0, _wgslsmith_f_op_f32(round(2501f)), -124f, var_0), Struct_2(vec3<bool>(var_3.x, any(select(var_3.wy, vec2<bool>(var_3.x, true), var_3.xx)), true & (9856u != u_input.c))), -30870i);
    return Struct_4((vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(var_2, u_input.a)) | reverseBits(u_input.a << (~vec4<u32>(u_input.c, u_input.b, u_input.b, 0u) % vec4<u32>(32u))));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_1) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -1000f, -220f, 204f))))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1504f)) * -991f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(483f)) * _wgslsmith_f_op_f32(f32(-1f) * -658f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2313f, 1475f))))), 1f));
    let var_1 = u_input.b < ~countOneBits(abs(~0u));
    var var_2 = i32(-1i) * -534i;
    var_2 = arg_0.a.x;
    var_2 = arg_2.a.x;
    return func_1(Struct_1(_wgslsmith_div_vec3_i32(countOneBits(u_input.e.xzz) << (_wgslsmith_clamp_vec3_u32(u_input.d.yxw, u_input.d.yyz, u_input.d.wxy) % vec3<u32>(32u)), vec3<i32>(arg_0.a.x, arg_1.a.x, _wgslsmith_add_i32(-1i, arg_0.a.x)))), (func_1(Struct_1(vec3<i32>(arg_0.a.x, 1i, -2147483647i)), -38395i & arg_1.a.x, Struct_1(arg_0.a.zwx)).a.x & arg_1.a.x) << (countOneBits(u_input.b) % 32u), arg_2);
}

fn func_7(arg_0: Struct_4, arg_1: u32, arg_2: vec4<u32>, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = 1f;
    let var_1 = func_6(arg_0, Struct_4(arg_0.a), Struct_1(_wgslsmith_mod_vec3_i32(select(firstLeadingBit(arg_0.a.zxx), vec3<i32>(-1i, arg_0.a.x, u_input.a.x), vec3<bool>(true, true, true)), _wgslsmith_clamp_vec3_i32(arg_0.a.xyx, vec3<i32>(u_input.a.x, arg_0.a.x, u_input.a.x) | arg_0.a.xzz, firstLeadingBit(vec3<i32>(arg_0.a.x, -37160i, u_input.e.x))))));
    var var_2 = select(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-4566i, -2147483647i, var_1.a.x, arg_0.a.x), min(var_1.a, arg_0.a)), var_1.a.x), abs(0i & arg_0.a.x)), arg_0.a.x, !(true | (any(vec3<bool>(false, true, true)) && all(vec3<bool>(true, true, false)))));
    var_2 = ~_wgslsmith_mult_i32(arg_0.a.x, ~u_input.a.x);
    var var_3 = _wgslsmith_f_op_f32(-var_0);
    return Struct_2(!vec3<bool>(_wgslsmith_f_op_f32(ceil(var_0)) <= var_0, select(var_1.a.x, -87i, true) < _wgslsmith_mod_i32(arg_0.a.x, -1i), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_7(func_6(func_1(Struct_1(u_input.e.wyz), _wgslsmith_dot_vec3_i32(u_input.e.wyy, u_input.e.wwy), Struct_1(vec3<i32>(u_input.e.x, 0i, u_input.e.x))), func_1(Struct_1(u_input.a.xxx), -2147483647i, Struct_1(vec3<i32>(1i, -18494i, 0i))), Struct_1(u_input.e.yyy)), 0u | ~u_input.b, u_input.d, ~((vec3<u32>(17017u, 24966u, u_input.b) | u_input.d.xzw) << (countOneBits(u_input.d.yzw) % vec3<u32>(32u)))), Struct_1(u_input.a.wzz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), Struct_2(func_7(Struct_4(select(vec4<i32>(u_input.a.x, u_input.a.x, 35285i, u_input.e.x), vec4<i32>(u_input.e.x, u_input.e.x, 25362i, u_input.e.x), vec4<bool>(false, true, true, false))), u_input.d.x, countOneBits(~u_input.d), ~(~vec3<u32>(u_input.c, u_input.d.x, u_input.b))).a), func_6(Struct_4(u_input.e), Struct_4(~u_input.e), Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-7148i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -4091i, -2147483647i)), _wgslsmith_div_vec3_i32(u_input.a.xwy, vec3<i32>(u_input.e.x, -24704i, u_input.e.x))))).a.x);
    var var_1 = var_0.e << (36762u % 32u);
    let var_2 = u_input.b == _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.d.xw, max(vec2<u32>(32614u, u_input.c), u_input.d.yw) ^ vec2<u32>(0u, u_input.c)), 26154u << (u_input.b % 32u));
    var var_3 = func_7(func_1(var_0.b, 0i, Struct_1(var_0.b.a)), u_input.b, ~u_input.d, u_input.d.zyz).a;
    let var_4 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~var_4, 0u, abs(0u) ^ var_4));
}

