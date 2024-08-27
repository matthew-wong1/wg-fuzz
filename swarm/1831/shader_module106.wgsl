struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(27805i, -1i, i32(-2147483648), 1i, -18959i, 1i, 1i, -4173i, -1i, 1i, -7445i, 3159i, -1i, 0i, -22228i, 1i, -5514i, 23232i, 2147483647i, 1i, -12309i, 1367i, 54991i, 1i, -1i, -1i, 1i, -6170i, -8677i, -6136i, 18531i, i32(-2147483648));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: u32) -> f32 {
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1033f)) + _wgslsmith_f_op_f32(2038f - 1063f)) * _wgslsmith_f_op_f32(ceil(-1499f)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_2(~(-global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1332f, -281f, 177f, _wgslsmith_f_op_f32(func_3(u_input.a.x, vec3<i32>(-5361i, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], -705i), 1u)))), 1u, vec3<bool>(true, arg_0.x, !select(arg_0.x, arg_0.x, true))), vec3<i32>(-2147483647i, u_input.e, reverseBits(_wgslsmith_div_i32(19452i, arg_1.x)) << (1u % 32u)), ~_wgslsmith_div_i32(u_input.d.x, u_input.d.x) << (max(_wgslsmith_dot_vec3_u32(u_input.b, u_input.a.zyy), u_input.a.x) % 32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-525f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.x))) - var_0.b.a.xx);
    global0 = array<i32, 32>();
    var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x)))), _wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.a.yy), var_0.b.a.yx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b.a.x, var_0.b.a.x))))), !arg_0.zx)));
    var_1 = var_0.b.a.wy;
    return Struct_2(-arg_1.x, var_0.b, arg_1.yzz, ~_wgslsmith_dot_vec3_i32(var_0.c, vec3<i32>(abs(u_input.c.x), countOneBits(u_input.d.x), -u_input.d.x)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = Struct_3(Struct_2(-44886i, func_2(!select(vec4<bool>(arg_0.b.c.x, arg_0.b.c.x, arg_0.b.c.x, true), vec4<bool>(true, false, arg_0.b.c.x, arg_0.b.c.x), true), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-7480i, arg_3.x, 1i, 13948i)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.d, 35967i, global0[_wgslsmith_index_u32(4294967295u, 32u)], 0i), vec4<i32>(arg_3.x, u_input.e, 79589i, -12940i)))).b, reverseBits(arg_3 | (vec3<i32>(arg_3.x, -1i, 0i) << (u_input.a.yww % vec3<u32>(32u)))), -arg_3.x), arg_0, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-538f + 1440f))) + arg_1), -330f), func_2(vec4<bool>(any(vec4<bool>(false, arg_0.b.c.x, arg_0.b.c.x, arg_0.b.c.x)), _wgslsmith_add_i32(-1i, 1i) == _wgslsmith_mod_i32(36768i, arg_0.d), ~arg_0.a >= _wgslsmith_add_i32(24286i, -2147483647i), false), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, 18288i, 29461i, arg_0.c.x), vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, arg_0.d) ^ vec4<i32>(-1i, -61399i, 1i, arg_0.d))).b);
    let var_1 = u_input.d.x;
    let var_2 = firstTrailingBit(u_input.b.xy);
    var var_3 = select(_wgslsmith_mult_vec4_u32(min(u_input.a, u_input.a << (vec4<u32>(4174u, arg_0.b.b, var_0.d.b, var_0.a.b.b) % vec4<u32>(32u))), u_input.a), vec4<u32>(1u, ~(~(33452u | var_2.x)), var_0.b.b.b, 53965u), arg_0.b.c.x);
    let var_4 = vec4<f32>(arg_1, 1546f, var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(198f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1530f - -1000f))) - _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.b.b.b, 0u, u_input.a.x, 0u), u_input.a), vec3<i32>(_wgslsmith_clamp_i32(arg_3.x, 1i, u_input.e), -var_0.a.d, -31375i), ~_wgslsmith_add_u32(arg_0.b.b, var_3.x)))));
    return Struct_3(Struct_2(reverseBits(1i), func_2(vec4<bool>(all(vec3<bool>(var_0.d.c.x, arg_0.b.c.x, false)), false, all(vec2<bool>(true, arg_0.b.c.x)), true), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(var_1, global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(var_3.x, 32u)], 2147483647i)), -vec4<i32>(-1i, var_0.a.c.x, var_1, arg_0.c.x))).b, min(vec3<i32>(u_input.e, 20344i, 2147483647i) & vec3<i32>(1i, var_1, -2147483647i), var_0.a.c) | -arg_3, 45788i), Struct_2(-max(~39863i, 0i), Struct_1(arg_0.b.a, ~arg_0.b.b, var_0.b.b.c), vec3<i32>(-var_1, var_1, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, var_0.b.a, -18479i), vec4<i32>(2147483647i, u_input.d.x, 32475i, 1i))) ^ vec3<i32>(arg_0.a | 33710i, u_input.d.x, 1i), 2147483647i), var_0.b.b.a.yz, func_2(vec4<bool>(var_0.a.b.c.x, func_2(vec4<bool>(true, var_0.a.b.c.x, arg_0.b.c.x, arg_0.b.c.x), -vec4<i32>(1711i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 0i, var_1)).b.c.x, false != (false && var_0.d.c.x), any(select(vec4<bool>(arg_0.b.c.x, false, true, true), vec4<bool>(false, arg_0.b.c.x, true, var_0.a.b.c.x), var_0.b.b.c.x))), vec4<i32>(-64333i, ~arg_3.x, min(0i, -var_0.b.c.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, arg_3.x, var_1, arg_0.d), countOneBits(vec4<i32>(2147483647i, arg_3.x, -2147483647i, 30720i))))).b);
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-601f * 248f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.d.a.x, 1106f) * 2145f), -785f)), u_input.b.x, arg_3.a.b.c);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_3.b.b.a - _wgslsmith_f_op_vec4_f32(-arg_3.d.a))), 0u, !vec3<bool>(arg_2.x == _wgslsmith_div_f32(-310f, arg_2.x), true, true));
    var var_2 = func_2(select(!(!vec4<bool>(var_1.c.x, var_0.c.x, false, arg_1)), vec4<bool>(true, func_4(func_2(vec4<bool>(true, false, false, true), vec4<i32>(global0[_wgslsmith_index_u32(var_1.b, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 14894i, 27629i)), _wgslsmith_f_op_f32(func_3(1u, arg_3.a.c, u_input.b.x)), _wgslsmith_f_op_f32(-330f - arg_3.b.b.a.x), _wgslsmith_mod_vec3_i32(arg_3.b.c, arg_3.a.c)).a.b.c.x, true != !var_1.c.x, true), vec4<bool>(true, true | !var_1.c.x, false, !all(var_1.c))), abs(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.b.d, -2730i, arg_3.a.c.x, -16988i), vec4<i32>(29048i, -25716i, global0[_wgslsmith_index_u32(15704u, 32u)], -1i)), 28337i, -1i, u_input.c.x)));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.b.a)) * var_0.a), var_1.b, var_0.c);
    let var_3 = select(select(func_4(func_2(!vec4<bool>(var_1.c.x, false, var_1.c.x, false), vec4<i32>(1i, arg_3.a.d, -19229i, -5650i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b.x, vec3<i32>(-2147483647i, var_2.c.x, arg_3.b.d), 1u)) * -1192f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.b.a.x) + arg_3.c.x), vec3<i32>(firstLeadingBit(48263i), arg_3.a.a, 31516i)).d.c, !vec3<bool>(true, false, var_0.c.x), func_4(func_2(!vec4<bool>(var_1.c.x, true, var_1.c.x, arg_3.d.c.x), vec4<i32>(u_input.e, 2147483647i, -29415i, var_2.a)), _wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(-arg_3.b.b.a.x))), _wgslsmith_f_op_f32(max(-310f, _wgslsmith_f_op_f32(f32(-1f) * -1517f))), -_wgslsmith_clamp_vec3_i32(var_2.c, vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(42821u, 32u)], -37353i), var_2.c)).d.c.x), vec3<bool>(true, _wgslsmith_div_u32(43415u, var_1.b ^ 1u) > 57286u, false), vec3<bool>(func_2(vec4<bool>(false, -23791i != arg_3.a.a, arg_3.a.c.x == global0[_wgslsmith_index_u32(0u, 32u)], true), max(vec4<i32>(global0[_wgslsmith_index_u32(arg_0, 32u)], global0[_wgslsmith_index_u32(var_2.b.b, 32u)], 2147483647i, var_2.a), ~vec4<i32>(1i, 71378i, global0[_wgslsmith_index_u32(var_0.b, 32u)], var_2.a))).b.c.x, all(!(!vec4<bool>(arg_3.a.b.c.x, false, true, var_2.b.c.x))), true));
    return Struct_1(var_1.a, reverseBits(~var_2.b.b), var_1.c);
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = -949f;
    let var_1 = abs(4294967295u);
    var var_2 = arg_2;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x));
    let var_3 = _wgslsmith_add_u32(~0u, u_input.b.x);
    return Struct_3(var_2.b, func_4(Struct_2(2147483647i, func_2(!vec4<bool>(arg_1, var_2.d.c.x, arg_1, arg_1), reverseBits(vec4<i32>(var_2.a.c.x, arg_3.x, -68094i, 2147483647i))).b, vec3<i32>(1i >> (arg_2.d.b % 32u), ~global0[_wgslsmith_index_u32(1u, 32u)], i32(-1i) * -58550i), _wgslsmith_div_i32(~(-46963i), -21468i)), _wgslsmith_f_op_f32(func_3(~1u, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, 67790i, u_input.e, u_input.e), vec4<i32>(u_input.e, u_input.d.x, var_2.a.a, u_input.d.x)), firstLeadingBit(-598i), ~var_2.b.d), ~arg_2.d.b)), 325f, func_2(select(vec4<bool>(arg_0.c.x, arg_0.c.x, false, true), vec4<bool>(true, arg_2.d.c.x, var_2.d.c.x, var_2.d.c.x), vec4<bool>(true, true, var_2.b.b.c.x, arg_1)), vec4<i32>(arg_3.x, arg_3.x, -2947i, u_input.d.x)).c & var_2.b.c).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.d.a.yw)), Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-1589f + 148f), -964f, -961f), vec4<f32>(arg_0.a.x, func_5(u_input.b.x, arg_2.a.b.c.x, vec3<f32>(arg_2.d.a.x, var_2.a.b.a.x, 515f), Struct_3(Struct_2(27127i, Struct_1(arg_0.a, var_3, vec3<bool>(arg_2.a.b.c.x, false, arg_0.c.x)), arg_3, -1i), var_2.b, vec2<f32>(arg_2.b.b.a.x, arg_2.a.b.a.x), Struct_1(vec4<f32>(-283f, arg_2.a.b.a.x, -166f, -447f), 4294967295u, vec3<bool>(false, true, false)))).a.x, _wgslsmith_f_op_f32(688f + var_2.c.x), -616f))), _wgslsmith_mod_u32(firstTrailingBit(~var_1), var_1), arg_2.b.b.c));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_3 {
    let var_0 = Struct_1(arg_1.a, ~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(u_input.a.yyx, vec3<u32>(0u, arg_1.b, 84385u))), arg_1.c);
    global0 = array<i32, 32>();
    return func_6(func_5((arg_1.b ^ firstLeadingBit(arg_1.b)) >> (47022u % 32u), true, arg_1.a.yzx, func_4(func_2(select(vec4<bool>(true, arg_1.c.x, false, arg_1.c.x), vec4<bool>(arg_1.c.x, var_0.c.x, var_0.c.x, var_0.c.x), var_0.c.x), -vec4<i32>(-1i, -1i, u_input.e, global0[_wgslsmith_index_u32(31044u, 32u)])), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.a.x, arg_0.x), _wgslsmith_f_op_f32(arg_1.a.x - 1094f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1469f), ~(-vec3<i32>(18562i, global0[_wgslsmith_index_u32(var_0.b, 32u)], 29509i)))), arg_1.c.x, Struct_3(Struct_2(u_input.d.x, Struct_1(var_0.a, 5557u, vec3<bool>(false, var_0.c.x, true)), vec3<i32>(firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 32u)]), u_input.d.x, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], -2147483647i)), -1i), Struct_2(~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, arg_1.b, var_0.b), 32u)], var_0, func_4(Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], var_0, vec3<i32>(-2147483647i, -27218i, u_input.e), -2008i), 418f, var_0.a.x, vec3<i32>(-40312i, 0i, 27003i)).a.c ^ firstLeadingBit(vec3<i32>(u_input.e, -1i, u_input.c.x)), _wgslsmith_mult_i32(0i, u_input.d.x) >> (_wgslsmith_div_u32(1u, u_input.a.x) % 32u)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.x, func_5(arg_1.b, false, vec3<f32>(arg_1.a.x, arg_1.a.x, 992f), Struct_3(Struct_2(u_input.c.x, Struct_1(vec4<f32>(818f, -1000f, 1000f, arg_1.a.x), 82764u, arg_1.c), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], -17535i, 23789i), global0[_wgslsmith_index_u32(0u, 32u)]), Struct_2(global0[_wgslsmith_index_u32(arg_1.b, 32u)], Struct_1(vec4<f32>(-860f, arg_1.a.x, arg_0.x, var_0.a.x), 82528u, var_0.c), vec3<i32>(9849i, -24626i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), 1i), vec2<f32>(-1167f, arg_0.x), var_0)).a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 289f) - arg_1.a.zz)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.a, vec4<f32>(arg_0.x, arg_1.a.x, 220f, arg_0.x))), arg_1.b, vec3<bool>(!arg_1.c.x, select(true, false, arg_1.c.x), arg_1.c.x))), (max(vec3<i32>(u_input.e, 54484i, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), abs(vec3<i32>(60068i, global0[_wgslsmith_index_u32(0u, 32u)], 0i))) & _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.d.x, global0[_wgslsmith_index_u32(var_0.b, 32u)]), vec3<i32>(40225i, -26682i, global0[_wgslsmith_index_u32(arg_1.b, 32u)])), ~vec3<i32>(u_input.c.x, -22797i, global0[_wgslsmith_index_u32(11942u, 32u)]))) & select(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(32938u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], u_input.c.x), vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(arg_1.b, 32u)], -10335i)), global0[_wgslsmith_index_u32(0u, 32u)]), vec3<i32>(global0[_wgslsmith_index_u32(var_0.b, 32u)], u_input.c.x, 8592i) | vec3<i32>(1594i, global0[_wgslsmith_index_u32(91868u, 32u)], u_input.d.x), var_0.c));
}

fn func_7(arg_0: bool, arg_1: Struct_4, arg_2: f32, arg_3: bool) -> bool {
    var var_0 = arg_1.a.a;
    global0 = array<i32, 32>();
    let var_1 = arg_1.b.c.x;
    let var_2 = var_0.b.c.zz;
    return !(!var_0.b.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2391f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(201f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -851f), true))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2465f, 1086f)), vec3<f32>(-246f, _wgslsmith_f_op_f32(ceil(-657f)), _wgslsmith_f_op_f32(sign(-452f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1369f, 125f, -285f))))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1097f + 688f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(204f * _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(var_0.x + -1410f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), true));
    var var_2 = u_input.b;
    var_2 = ~_wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, ~19147u, 16451u | u_input.a.x) | ~(u_input.a.xyz ^ u_input.b), ~(~vec3<u32>(0u, 0u, u_input.b.x)));
    var var_3 = select(vec4<bool>(all(vec4<bool>(true, true, true, true)), func_7(~var_2.x >= _wgslsmith_mult_u32(var_2.x, u_input.a.x), Struct_4(Struct_3(Struct_2(17459i, Struct_1(vec4<f32>(var_0.x, var_0.x, -981f, -1000f), u_input.a.x, vec3<bool>(false, false, false)), vec3<i32>(62772i, global0[_wgslsmith_index_u32(var_2.x, 32u)], 6759i), 2147483647i), Struct_2(u_input.e, Struct_1(vec4<f32>(-410f, var_0.x, var_0.x, -1526f), u_input.a.x, vec3<bool>(true, false, false)), vec3<i32>(u_input.e, global0[_wgslsmith_index_u32(14562u, 32u)], -1i), 62905i), var_0.xy, Struct_1(vec4<f32>(var_1, 552f, var_0.x, var_1), 30446u, vec3<bool>(false, true, true))), func_1(vec3<f32>(var_0.x, -145f, -605f), Struct_1(vec4<f32>(var_1, 1334f, 631f, var_0.x), 0u, vec3<bool>(true, false, false))), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), func_4(Struct_2(2147483647i, Struct_1(vec4<f32>(var_0.x, var_0.x, 1018f, -645f), 86597u, vec3<bool>(false, false, false)), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], u_input.c.x, -2147483647i), global0[_wgslsmith_index_u32(36534u, 32u)]), 660f, var_1, vec3<i32>(u_input.d.x, u_input.c.x, -45985i)).b, Struct_3(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 32u)], Struct_1(vec4<f32>(-2174f, -1000f, 1000f, 123f), 6280u, vec3<bool>(true, false, false)), vec3<i32>(global0[_wgslsmith_index_u32(6275u, 32u)], global0[_wgslsmith_index_u32(90220u, 32u)], 2147483647i), -1i), Struct_2(u_input.c.x, Struct_1(vec4<f32>(var_0.x, var_1, -1314f, -915f), var_2.x, vec3<bool>(false, true, true)), vec3<i32>(-13953i, -1i, -2147483647i), u_input.e), var_0.zz, Struct_1(vec4<f32>(-291f, -857f, 327f, -1000f), var_2.x, vec3<bool>(false, false, false)))), var_1, !(4294967295u < u_input.b.x)), all(!func_6(Struct_1(vec4<f32>(889f, 608f, var_1, -1313f), var_2.x, vec3<bool>(false, false, true)), true, Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], Struct_1(vec4<f32>(944f, 1082f, -669f, 308f), u_input.a.x, vec3<bool>(true, true, true)), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), 27446i), Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], Struct_1(vec4<f32>(var_0.x, var_0.x, 522f, var_1), 40466u, vec3<bool>(true, false, true)), vec3<i32>(1i, 1i, 11919i), u_input.e), vec2<f32>(234f, 734f), Struct_1(vec4<f32>(var_0.x, var_0.x, -891f, var_1), 0u, vec3<bool>(false, false, true))), vec3<i32>(-5182i, 20183i, 24078i)).a.b.c), all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true))), vec4<bool>(func_1(vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(floor(1000f)), var_0.x), func_5(_wgslsmith_sub_u32(1u, var_2.x), true, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_1, 973f))), func_1(vec3<f32>(-1199f, 259f, var_1), Struct_1(vec4<f32>(-433f, -639f, 253f, -1122f), u_input.a.x, vec3<bool>(true, true, true))))).b.b.c.x, false, ((u_input.d.x > global0[_wgslsmith_index_u32(var_2.x, 32u)]) || true) & true, !(1333f != _wgslsmith_f_op_f32(var_0.x + -1821f))), !(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true))));
    var_0 = _wgslsmith_f_op_vec3_f32(func_2(!vec4<bool>(any(vec4<bool>(true, var_3.x, var_3.x, var_3.x)), var_3.x, var_3.x, var_3.x | var_3.x), ~(-vec4<i32>(u_input.e, u_input.e, 0i, 12039i) | vec4<i32>(-26821i, u_input.d.x, -1i, 0i))).b.a.zxy * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1390f))), -116f, _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1136f, 752f) + -1055f), !(!var_3.x)))));
    var_3 = !vec4<bool>(!var_3.x, true, all(select(select(vec4<bool>(true, false, true, var_3.x), vec4<bool>(true, var_3.x, var_3.x, false), false), select(vec4<bool>(false, var_3.x, true, var_3.x), vec4<bool>(true, true, true, false), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x)), all(var_3.zyx))), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-546f, var_0.x, 122f))), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, -906f) * vec3<f32>(-1099f, 535f, 2006f)), func_2(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<i32>(-20902i, global0[_wgslsmith_index_u32(3788u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(16802u, 32u)])).b).d).b.b.c.x);
    let var_4 = -718f;
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)), 859f, -186f)), vec3<f32>(-1206f, var_0.x, _wgslsmith_f_op_f32(-func_5(u_input.a.x, true, vec3<f32>(414f, var_1, var_1), func_6(Struct_1(vec4<f32>(var_0.x, var_4, -820f, 1045f), u_input.b.x, var_3.xxx), true, Struct_3(Struct_2(u_input.c.x, Struct_1(vec4<f32>(-821f, var_4, var_4, 120f), 69492u, vec3<bool>(false, var_3.x, var_3.x)), vec3<i32>(-15629i, -229i, 24312i), global0[_wgslsmith_index_u32(0u, 32u)]), Struct_2(global0[_wgslsmith_index_u32(var_2.x, 32u)], Struct_1(vec4<f32>(-285f, var_1, var_4, 1013f), 22956u, var_3.wyw), vec3<i32>(global0[_wgslsmith_index_u32(0u, 32u)], -2147483647i, u_input.c.x), -27966i), var_0.yz, Struct_1(vec4<f32>(var_4, 681f, 1113f, var_0.x), var_2.x, var_3.zxw)), vec3<i32>(-1i, global0[_wgslsmith_index_u32(var_2.x, 32u)], -2147483647i))).a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

