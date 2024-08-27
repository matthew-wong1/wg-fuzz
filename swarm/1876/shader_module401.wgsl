struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = vec3<i32>(-_wgslsmith_div_i32(u_input.b.x, ~(-39281i)) & u_input.b.x, select(select(countOneBits(u_input.b.x << (1u % 32u)), min(u_input.b.x, u_input.a.x), true), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(arg_1.c, u_input.b.x, 25200i) & ~vec3<i32>(arg_1.c, -2147483647i, u_input.a.x)), -287f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(144f)) + _wgslsmith_f_op_f32(-271f + -903f))), _wgslsmith_dot_vec2_i32(~reverseBits(~vec2<i32>(-23540i, arg_1.c)), vec2<i32>(arg_1.c, _wgslsmith_clamp_i32(~51044i, countOneBits(-23143i), -2147483647i))));
    global0 = array<bool, 24>();
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.e.x, 1450f, arg_1.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-321f, arg_1.d, arg_1.e.x) + vec3<f32>(arg_1.d, arg_1.d, 379f))))), arg_1, arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -594f, arg_1.d, arg_1.e.x)) - vec4<f32>(arg_1.a.x, -764f, -1000f, arg_1.d)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1149f, arg_1.a.x, arg_1.e.x, 1120f)))))), -2147483647i, Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.d, 599f))), 30901u, _wgslsmith_sub_i32(2147483647i, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.x, arg_1.c, -2147483647i), vec4<i32>(6155i, var_0.x, arg_1.c, arg_1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(546f * -639f) - _wgslsmith_f_op_f32(-arg_1.d))), arg_1.e), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, arg_1.a.x, 106f) * vec3<f32>(arg_1.e.x, arg_1.e.x, arg_1.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.e.x, arg_1.d, 430f)), arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_1.d, -448f)))), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_1.a))), ~101651u, -firstTrailingBit(u_input.b.x), -1736f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(arg_1.e, vec2<f32>(1899f, 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(2093f, arg_1.e.x) - arg_1.e), all(arg_0)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_div_f32(arg_1.e.x, 1000f)), 1u, var_0.x, arg_1.a.x, vec2<f32>(_wgslsmith_f_op_f32(max(-1006f, -165f)), -594f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))) - var_1.d.a.x);
}

fn func_2() -> Struct_2 {
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    var var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, _wgslsmith_mult_u32(2748u, 1u), 97196u, 30135u), vec4<u32>(1u, 1u, 1u, 1u)) << (~max(~1u, ~1u) % 32u);
    let var_1 = _wgslsmith_f_op_f32(func_3(!(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(6961u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-930f, -1978f) + vec2<f32>(486f, 2494f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-685f, 1286f))))), 1u, ~u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1073f, _wgslsmith_f_op_f32(529f - -442f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -740f), 1000f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(903f, -261f)) + vec2<f32>(-942f, -309f)))))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1, 947f, var_1)))) * _wgslsmith_div_vec3_f32(vec3<f32>(509f, var_1, 1000f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-232f, var_1, 466f), vec3<f32>(var_1, -1000f, var_1))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 331f, var_1)))), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))))), 76100u, u_input.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))) - vec2<f32>(_wgslsmith_f_op_f32(step(-2810f, var_1)), var_1))), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-968f, 1000f)))))), 1u, firstTrailingBit(u_input.a.x | 1i), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-752f - var_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -817f))) - vec2<f32>(1020f, _wgslsmith_f_op_f32(f32(-1f) * -1474f)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: i32) -> Struct_4 {
    let var_0 = _wgslsmith_mod_i32(0i, i32(-1i) * -53165i);
    global0 = array<bool, 24>();
    var var_1 = Struct_4(func_2());
    var var_2 = Struct_4(arg_0);
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.a.a, _wgslsmith_f_op_vec3_f32(-var_2.a.a))), var_1.a.b, func_2().b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.b.e.x, var_1.a.b.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.a.x, var_1.a.a.x)), 721f)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(-1i, u_input.b.x, 0i), vec3<i32>(arg_1.x, -9588i, 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-17621i, u_input.b.x, var_2.a.b.c), u_input.b)), 2147483647i) ^ firstLeadingBit(_wgslsmith_sub_i32(var_2.a.b.c, -16362i)), Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.b.a), arg_0.c.b, _wgslsmith_sub_i32(4822i, -1i), arg_0.c.d, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-func_2().a.yy)))), Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(arg_0.a, arg_0.a)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.zx) - _wgslsmith_div_vec2_f32(vec2<f32>(1115f, 759f), vec2<f32>(arg_0.b.d, 2985f))), var_2.a.b.b, _wgslsmith_mult_i32(countOneBits(arg_1.x), reverseBits(0i)), _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(var_2.a.a.x * var_2.a.b.e.x)), var_1.a.b.e), func_2().c));
    return Struct_4(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-593f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -263f) * _wgslsmith_f_op_f32(-var_3.e.a.x)), _wgslsmith_f_op_f32(sign(func_2().c.d))), func_2().c, func_2().c));
}

fn func_5(arg_0: Struct_4, arg_1: u32) -> f32 {
    global0 = array<bool, 24>();
    var var_0 = func_4(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.c.a.x, 313f, -658f) * vec3<f32>(arg_0.a.a.x, arg_0.a.b.e.x, -287f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1806f, -337f, arg_0.a.b.d), arg_0.a.a)))), func_2().b, func_2().c), _wgslsmith_mult_vec2_i32(-(~(~u_input.b.zz)), ~vec2<i32>(-2147483647i, arg_0.a.c.c)), reverseBits(arg_0.a.b.c)).a.c.c;
    var var_1 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0.a.a), vec3<f32>(arg_0.a.a.x, -572f, 773f))), _wgslsmith_div_vec3_f32(vec3<f32>(-779f, arg_0.a.c.e.x, -718f), vec3<f32>(_wgslsmith_f_op_f32(func_3(vec3<bool>(global0[_wgslsmith_index_u32(1u, 24u)], false, true), Struct_1(vec2<f32>(arg_0.a.c.a.x, 634f), 0u, -38435i, 1446f, arg_0.a.b.e))), _wgslsmith_f_op_f32(-391f + arg_0.a.c.e.x), -1000f))), arg_0.a.c, arg_0.a.b);
    global0 = array<bool, 24>();
    var_1 = func_2();
    return -1000f;
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(func_2(), ~reverseBits(u_input.a), u_input.a.x & -u_input.b.x), 0u)));
    let var_1 = ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(firstTrailingBit(4294967295u), arg_0.x, (arg_0.x << (0u % 32u)) & (0u >> (arg_0.x % 32u))), min(59910u, func_2().c.b));
    global0 = array<bool, 24>();
    var var_2 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), abs(u_input.a.x)), u_input.b, ~vec3<i32>(countOneBits(u_input.b.x), u_input.a.x, -53951i));
    var_2 = ~(-vec3<i32>(u_input.b.x, func_2().b.c, u_input.b.x));
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1355f, 777f, -183f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1681f, 1220f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 1075f)), _wgslsmith_f_op_f32(func_3(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 24u)], arg_1), Struct_1(vec2<f32>(var_0, var_0), var_1, var_2.x, var_0, vec2<f32>(var_0, 591f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, true, false), Struct_1(vec2<f32>(1025f, -146f), arg_0.x, var_2.x, var_0, vec2<f32>(var_0, var_0)))), _wgslsmith_f_op_f32(abs(var_0))))), func_2().b, func_4(func_4(func_4(Struct_2(vec3<f32>(var_0, 978f, var_0), Struct_1(vec2<f32>(208f, -509f), 32170u, var_2.x, -1159f, vec2<f32>(var_0, 931f)), Struct_1(vec2<f32>(var_0, var_0), 1u, 0i, var_0, vec2<f32>(var_0, -354f))), vec2<i32>(u_input.a.x, 1267i), _wgslsmith_div_i32(var_2.x, 0i)).a, _wgslsmith_div_vec2_i32(u_input.a << (arg_0.wz % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(var_2.xy, u_input.a)), -1i).a, vec2<i32>(u_input.a.x, i32(-1i) * -92231i), var_2.x).a.c);
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_2) -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_3.c.e * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1165f), 1092f))), ~_wgslsmith_div_u32(~(~29925u), arg_3.c.b >> (arg_3.c.b % 32u)), arg_3.b.c, _wgslsmith_f_op_f32(sign(func_1(max(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, arg_2.x, 4294967295u), vec4<u32>(arg_3.b.b, 23897u, 3823u, arg_3.b.b)), abs(vec4<u32>(2182u, arg_2.x, 58188u, 1u))), (arg_0.c.b & 49610u) <= _wgslsmith_mod_u32(35307u, 4294967295u)).a.x)), _wgslsmith_f_op_vec2_f32(-arg_3.c.a));
    global0 = array<bool, 24>();
    let var_1 = vec3<bool>(!(_wgslsmith_f_op_f32(step(720f, func_2().c.e.x)) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.c.e.x - 640f), 665f)), any(select(vec4<bool>(!global0[_wgslsmith_index_u32(22251u, 24u)], false, arg_0.c.c < -36569i, false == global0[_wgslsmith_index_u32(arg_3.c.b, 24u)]), !(!vec4<bool>(arg_1, global0[_wgslsmith_index_u32(arg_3.c.b, 24u)], true, arg_1)), global0[_wgslsmith_index_u32(9778u, 24u)])), !(arg_0.c.c != -18758i));
    var var_2 = any(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 24u)], arg_0.c.c >= _wgslsmith_sub_i32(_wgslsmith_div_i32(arg_3.b.c, -61780i), ~(-32918i)), arg_1));
    let var_3 = vec4<u32>(8093u, var_0.b, 55702u, ~_wgslsmith_div_u32(1u, 36149u));
    return StorageBuffer(reverseBits(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.c.c, arg_3.b.c, arg_0.b.c), u_input.b >> (vec3<u32>(14982u, arg_2.x, arg_0.c.b) % vec3<u32>(32u)))), ~firstLeadingBit(_wgslsmith_mod_vec3_i32(min(vec3<i32>(arg_0.c.c, 28320i, u_input.a.x), vec3<i32>(-49267i, arg_3.b.c, -14876i)), u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 24>();
    var var_0 = 0u;
    var_0 = ~2790u;
    let x = u_input.a;
    s_output = func_6(func_1(reverseBits(~vec4<u32>(73896u, 16278u, 1u, 0u)), global0[_wgslsmith_index_u32(reverseBits(4294967295u), 24u)]), ((any(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 24u)], false, global0[_wgslsmith_index_u32(1u, 24u)])) && true) && true) & all(vec3<bool>(u_input.b.x < -9855i, true, !global0[_wgslsmith_index_u32(20417u, 24u)])), ~(~(~vec2<u32>(1u, 1u))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1520f), _wgslsmith_f_op_f32(-1550f - -591f), _wgslsmith_f_op_f32(f32(-1f) * -851f))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(148f, -642f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(249f, -1103f))), _wgslsmith_div_u32(~17987u, 1u), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(79832i, -1i, u_input.a.x)), countOneBits(u_input.b)), _wgslsmith_f_op_f32(1223f * 762f), vec2<f32>(-883f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2118f, 1679f))), _wgslsmith_sub_u32(18893u, _wgslsmith_mod_u32(58317u, 1u)), _wgslsmith_mod_i32(~2147483647i, u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -993f)), vec2<f32>(_wgslsmith_f_op_f32(676f - 1101f), 1f))));
}

