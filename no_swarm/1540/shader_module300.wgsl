struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_4,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-321f + arg_0.a.d)) + arg_1.a);
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1964f, _wgslsmith_f_op_f32(-arg_0.d))))), arg_0.a.d, true));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(430f, -542f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-336f, _wgslsmith_f_op_f32(f32(-1f) * -1635f))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1190f, _wgslsmith_f_op_f32(-arg_1.a))), -463f)) - 1000f);
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(var_1)), _wgslsmith_f_op_vec2_f32(exp2(var_1)))), -(~(~(vec4<i32>(arg_0.e.x, -69130i, 0i, arg_0.b.x) >> (arg_0.c % vec4<u32>(32u))))), _wgslsmith_f_op_f32(f32(-1f) * -471f));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.d, 126f, false))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.d)))));
}

fn func_2() -> Struct_4 {
    var var_0 = 1380f;
    var var_1 = Struct_5(Struct_3(vec2<f32>(-289f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(179f)), 218f))), -firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.d.x, 2147483647i, -1i, 1i))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(114f, -1000f, 462f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-529f, -592f, 2301f, 1406f)), true)) * vec4<f32>(-1048f, 837f, _wgslsmith_f_op_f32(f32(-1f) * -1012f), -451f))), Struct_4(Struct_1(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_1(795f, u_input.b.x, vec3<bool>(true, true, true), 1383f), vec4<i32>(u_input.d.x, 30544i, u_input.d.x, u_input.d.x), vec4<u32>(0u, 0u, 4294967295u, u_input.a), 1497f, u_input.d), Struct_1(1000f, u_input.a, vec3<bool>(true, true, false), 799f), vec2<bool>(true, true))), ~65872u, vec3<bool>(true, any(vec4<bool>(false, true, true, true)), true), 1000f), ~(-vec4<i32>(u_input.d.x, 1i, 35061i, u_input.d.x)) & _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 1942i, u_input.d.x) ^ vec4<i32>(u_input.d.x, 0i, u_input.d.x, 2947i), ~vec4<i32>(u_input.d.x, 2489i, u_input.d.x, -42603i)), vec4<u32>(1u, ~u_input.b.x, _wgslsmith_clamp_u32(u_input.a, abs(u_input.b.x), 0u), ~u_input.b.x), -899f, reverseBits(_wgslsmith_mult_vec2_i32(abs(u_input.d), vec2<i32>(-9410i, u_input.d.x)))), -480f, false);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(328f - -176f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(var_1.c, Struct_1(-364f, 41393u, vec3<bool>(var_1.e, true, false), var_1.c.a.a), vec2<bool>(false, false))))))), _wgslsmith_sub_vec2_u32(var_1.c.c.wx, select(vec2<u32>(95869u, 4294967295u), vec2<u32>(9628u, 68305u), false)) & var_1.c.c.yx, _wgslsmith_mod_vec2_u32(firstLeadingBit(u_input.b.zy), abs(select(~vec2<u32>(0u, 42396u), _wgslsmith_sub_vec2_u32(var_1.c.c.yy, vec2<u32>(u_input.a, var_1.c.a.b)), !var_1.e))));
    let var_3 = Struct_5(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.b.xz, vec2<f32>(var_1.c.d, var_2.a))) + vec2<f32>(1719f, _wgslsmith_f_op_f32(sign(var_2.a)))), firstTrailingBit(select(-vec4<i32>(-2147483647i, var_1.a.b.x, u_input.d.x, var_1.c.b.x), ~vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, var_1.c.b.x), any(vec2<bool>(false, false)))), var_2.a), vec4<f32>(317f, var_1.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_2.a)))), var_1.c.d), var_1.c, var_2.a, true);
    var_0 = var_2.a;
    return var_3.c;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> vec2<bool> {
    var var_0 = func_2();
    let var_1 = ~var_0.c.x;
    var var_2 = countOneBits(_wgslsmith_mod_vec4_i32(var_0.b, vec4<i32>(reverseBits(-2147483647i), -19098i, func_2().e.x, select(_wgslsmith_dot_vec3_i32(var_0.b.ywy, vec3<i32>(u_input.d.x, -28194i, -70563i)), var_0.b.x, true))));
    var_0 = Struct_4(func_2().a, var_0.b, (~vec4<u32>(arg_1.x, u_input.a, u_input.c.x, 4294967295u) << (~(~var_0.c) % vec4<u32>(32u))) << (vec4<u32>(var_1, u_input.a, 1u, var_0.a.b) % vec4<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(553f, -106f)))), 131f, func_2().a.c.x)), abs(-vec2<i32>(0i, -var_0.e.x)));
    var_0 = func_2();
    return var_0.a.c.zz;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_3) -> i32 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(arg_3.a.x, _wgslsmith_f_op_f32(round(arg_3.c))), arg_3.a);
    let var_1 = vec2<i32>(-18282i, 65065i);
    let var_2 = abs(u_input.d.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(floor(2017f)), 4294967295u, !(!vec3<bool>(arg_1, true, arg_0.x)), _wgslsmith_f_op_f32(-var_0.x));
    var var_4 = func_2();
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(u_input.c.yx);
    var var_1 = func_4(select(select(func_1(Struct_2(-2186f, u_input.b.zw, u_input.c.zz), vec4<u32>(u_input.a, 1u, 1u, 10206u)), !select(vec2<bool>(true, false), vec2<bool>(false, true), true), true), !vec2<bool>(func_2().a.c.x, true), false), true || (all(func_2().a.c) | func_2().a.c.x), vec3<u32>(~(~14618u), 0u, 1716u), Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(727f, -990f))))), -abs(reverseBits(vec4<i32>(-57621i, -1i, -2147483647i, u_input.d.x))), 1417f));
    var_1 = -4017i;
    var var_2 = all(vec4<bool>(any(vec4<bool>(true, select(true, false, true), 1u < var_0.x, true)), true, true, func_1(Struct_2(func_2().a.a, vec2<u32>(664u, var_0.x), ~vec2<u32>(var_0.x, 48737u)), vec4<u32>(_wgslsmith_div_u32(4294967295u, 18428u), ~u_input.a, var_0.x | u_input.c.x, 0u)).x));
    var_2 = false;
    var var_3 = -1000f;
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-112i, u_input.d.x));
}

