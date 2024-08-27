struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(min(vec3<i32>(u_input.b.x, u_input.d, u_input.d), vec3<i32>(12430i, u_input.b.x, u_input.d))), u_input.a), u_input.a);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -536f);
    var var_2 = -countOneBits(-1i);
    var_1 = 2102f;
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2457f)) + _wgslsmith_f_op_f32(f32(-1f) * -400f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-849f, -1506f, false))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -401f), -380f)) + -1355f)), -1871f));
    return _wgslsmith_add_i32(u_input.a.x, u_input.a.x);
}

fn func_2(arg_0: Struct_5) -> i32 {
    let var_0 = -605f;
    var var_1 = arg_0.d;
    var var_2 = vec4<f32>(875f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.b, -254f) - var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1487f)), _wgslsmith_div_f32(1325f, var_0)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0))))) + 698f), var_1.a.b);
    let var_3 = 1u;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(max(-413f, arg_0.d.a.b))) * -645f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(-var_2.x))));
    return _wgslsmith_mult_i32(-9620i, (select(var_1.b.x | var_1.c, u_input.d, false) & -1151i) & ~func_3());
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_5(-(u_input.b.x ^ -u_input.b.x) >> (0u % 32u), u_input.c.x, _wgslsmith_f_op_f32(-1590f + -942f), Struct_2(Struct_1(countOneBits(arg_1), arg_2.x), vec3<i32>(-13407i, abs(u_input.d) ^ u_input.b.x, _wgslsmith_sub_i32(func_2(Struct_5(1467i, u_input.c.x, -142f, Struct_2(Struct_1(0i, -372f), vec3<i32>(u_input.a.x, 18596i, -8398i), arg_1))), -50799i)), -17336i));
    let var_1 = -1i;
    let var_2 = vec2<f32>(var_0.d.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_div_f32(arg_2.x, arg_2.x))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, -1692f) + _wgslsmith_f_op_f32(step(arg_2.x, var_0.d.a.b))))));
    var var_3 = Struct_4(1u, ~vec2<u32>(max(var_0.b, 0u), ~u_input.c.x), Struct_1(func_3(), -337f), Struct_3(Struct_1(~(var_0.d.b.x | 9048i), 1f)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-417f, arg_2.x, _wgslsmith_f_op_f32(-var_2.x), 419f));
    return Struct_1(-13648i | ~_wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.d.a.a, var_0.d.a.a), 5971i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1905f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1078f))))));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: Struct_5) -> bool {
    return any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, true)) | false));
}

fn func_1() -> Struct_3 {
    var var_0 = vec3<bool>(true, true, true);
    var_0 = vec3<bool>(var_0.x, func_5(Struct_4(u_input.c.x, vec2<u32>(u_input.c.x, u_input.c.x) | abs(vec2<u32>(u_input.c.x, u_input.c.x)), func_4(u_input.a << (vec3<u32>(u_input.c.x, 48516u, u_input.c.x) % vec3<u32>(32u)), func_2(Struct_5(u_input.a.x, 62624u, 162f, Struct_2(Struct_1(u_input.a.x, -1239f), u_input.a, u_input.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(763f, 352f, -606f) - vec3<f32>(-196f, -556f, 587f))), Struct_3(func_4(u_input.a, 16659i, vec3<f32>(-222f, -1505f, 277f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-616f, -679f, 1517f, -519f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-754f, 947f, 169f, 596f)))), Struct_4(~_wgslsmith_mod_u32(29169u, 19447u), ~vec2<u32>(u_input.c.x, u_input.c.x), Struct_1(~u_input.a.x, _wgslsmith_f_op_f32(trunc(446f))), Struct_3(Struct_1(31593i, 773f))), Struct_5(-u_input.a.x, 4294967295u, _wgslsmith_f_op_f32(-1f), Struct_2(Struct_1(1i, 369f), vec3<i32>(u_input.a.x, -35853i, 2147483647i) ^ u_input.a, u_input.b.x))), any(!var_0.yx));
    let var_1 = Struct_2(Struct_1(min(_wgslsmith_mod_i32(u_input.d, abs(u_input.d)), 6193i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -528f)) + _wgslsmith_f_op_f32(-253f * _wgslsmith_f_op_f32(1326f + -496f)))), -(~(-(vec3<i32>(1i, -1i, u_input.d) << (vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u) % vec3<u32>(32u))))), ~firstTrailingBit(0i));
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 57716u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c.x, 1u, 0u, 69004u)), ~vec4<u32>(0u, 0u, 4294967295u, 33914u)) >> (min(~u_input.c.x, ~u_input.c.x) % 32u), ~1u), ~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 28032u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1482u))));
    return Struct_3(func_4(abs(select(var_1.b, u_input.a, vec3<bool>(true, true, var_0.x))) | vec3<i32>(reverseBits(u_input.b.x), i32(-1i) * -18500i, -1i), var_1.a.a, vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.a.b)))), _wgslsmith_f_op_f32(-709f + _wgslsmith_f_op_f32(round(var_1.a.b))), _wgslsmith_f_op_f32(ceil(func_4(vec3<i32>(var_1.b.x, 0i, var_1.a.a), u_input.b.x, vec3<f32>(-234f, var_1.a.b, var_1.a.b)).b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1722i;
    var_0 = u_input.a.x;
    let var_1 = Struct_4(u_input.c.x, vec2<u32>(4294967295u, abs(u_input.c.x)), Struct_1(~(firstTrailingBit(-2147483647i) >> (4294967295u % 32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-730f + -136f))))), func_1());
    var_0 = ~(-u_input.b.x);
    var_0 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-vec4<i32>(var_1.c.a, var_1.d.a.a, u_input.d, -1i) & -vec4<i32>(47939i, u_input.b.x, var_1.d.a.a, u_input.b.x))), _wgslsmith_mod_vec3_u32(vec3<u32>(~var_1.b.x, 1u, ~14390u) << ((vec3<u32>(u_input.c.x, 0u, 19715u) ^ select(vec3<u32>(var_1.a, 16180u, 53458u), vec3<u32>(var_1.b.x, var_1.a, var_1.b.x), vec3<bool>(false, true, false))) % vec3<u32>(32u)), ~select(vec3<u32>(u_input.c.x, 1u, 35662u), vec3<u32>(29536u, u_input.c.x, 4294967295u), false) << (vec3<u32>(u_input.c.x, u_input.c.x & 91373u, 0u) % vec3<u32>(32u))), func_4(vec3<i32>(~u_input.b.x, firstTrailingBit(u_input.a.x ^ var_1.d.a.a), _wgslsmith_add_i32(2147483647i, u_input.a.x)), ~abs(func_4(u_input.a, -2147483647i, vec3<f32>(var_1.c.b, var_1.d.a.b, var_1.d.a.b)).a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b, 1275f, _wgslsmith_f_op_f32(-var_1.d.a.b)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-600f, var_1.d.a.b, -1444f), vec3<f32>(964f, var_1.c.b, 856f), true)))))).b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1299f, var_1.d.a.b) - vec2<f32>(-423f, var_1.d.a.b))))))), _wgslsmith_div_f32(var_1.c.b, func_1().a.b));
}

