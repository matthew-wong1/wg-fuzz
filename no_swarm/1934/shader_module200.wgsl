struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: u32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    global0 = array<Struct_2, 21>();
    var var_0 = Struct_1(~u_input.c, false, u_input.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-199f)), _wgslsmith_f_op_f32(602f + 1203f), _wgslsmith_f_op_f32(abs(-1223f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-122f, 411f, 1480f)))))), firstTrailingBit(abs(~vec3<i32>(u_input.c, -14845i, -2147483647i)) | vec3<i32>(u_input.c, u_input.c, ~u_input.c)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-954f, var_0.d.x, -1800f, var_0.d.x) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.d.x, -1025f, 684f, var_0.d.x), vec4<f32>(var_0.d.x, -1340f, var_0.d.x, var_0.d.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(600f, _wgslsmith_f_op_f32(var_0.d.x + 573f), 1929f, _wgslsmith_f_op_f32(-var_0.d.x))), ((arg_0 & 1u) < firstLeadingBit(1u)) && !var_0.b)));
    let var_2 = Struct_2(~arg_0, var_0.b, ~1u, !(!vec3<bool>(true, true, u_input.c == 50747i)), Struct_1(var_0.c, all(!select(vec2<bool>(true, var_0.b), vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, true))), -15033i, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.d.x)), var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1700f * var_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) * _wgslsmith_f_op_f32(-var_0.d.x))), var_0.e));
    let var_3 = firstLeadingBit(-vec4<i32>((-38844i << (u_input.a % 32u)) | u_input.c, var_0.c, var_0.e.x, ~u_input.c));
    return max(vec4<u32>(~arg_0, u_input.b.x, 1u, ~(~min(arg_0, 38698u))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(min(var_2.c, 25607u), 45554u, max(var_2.c, arg_0)), _wgslsmith_dot_vec3_u32(min(vec3<u32>(27036u, arg_0, var_2.a), vec3<u32>(var_2.c, 1u, arg_0)), u_input.b)), ~5743u, 42659u, abs(u_input.a)));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> bool {
    let var_0 = u_input.c;
    global0 = array<Struct_2, 21>();
    let var_1 = u_input.b;
    let var_2 = Struct_3(Struct_1(var_0, 0i == _wgslsmith_div_i32(~13968i, ~u_input.c), -84779i, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.e.d.x, 1775f, _wgslsmith_f_op_f32(-arg_0.c.e.d.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_0.c.e.d.x, -643f) - arg_0.c.e.d))), vec3<i32>(32488i, arg_0.a.a ^ 47766i, _wgslsmith_clamp_i32(u_input.c, firstLeadingBit(arg_0.a.a), arg_0.d))), arg_0.b, Struct_2(~arg_0.b.x, select(false, !(!arg_0.a.b), arg_0.c.b), ~31897u, vec3<bool>(all(select(arg_0.c.d.yy, arg_0.c.d.yx, arg_0.a.b)), !all(arg_0.c.d), !all(vec4<bool>(arg_0.c.e.b, false, false, arg_0.a.b))), arg_0.a), ~0i);
    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1336f)))) <= _wgslsmith_f_op_f32(sign(var_2.a.d.x)), true | !(!arg_0.c.e.b), !arg_0.a.b, any(select(select(!vec4<bool>(arg_0.a.b, arg_0.c.b, var_2.a.b, arg_0.c.b), select(vec4<bool>(false, var_2.c.e.b, false, arg_0.c.d.x), vec4<bool>(var_2.c.b, true, true, true), vec4<bool>(var_2.a.b, true, true, false)), vec4<bool>(arg_0.c.b, arg_0.a.b, var_2.a.b, arg_0.c.b)), !select(vec4<bool>(var_2.a.b, arg_0.c.d.x, false, true), vec4<bool>(true, true, false, arg_0.c.b), false), vec4<bool>(arg_0.a.b && true, any(vec2<bool>(true, var_2.a.b)), var_2.c.d.x, var_2.a.e.x <= u_input.c))));
    return arg_0.a.b;
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> Struct_1 {
    var var_0 = ~vec2<u32>(~(~(~53991u)), (1u | _wgslsmith_add_u32(arg_1, 36515u)) ^ ~44462u);
    var var_1 = func_4(Struct_3(Struct_1(20922i, !arg_0.x, abs(-u_input.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1849f, 849f, 254f) * vec3<f32>(2080f, -1175f, 865f)), vec3<i32>(_wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c), _wgslsmith_mod_i32(-1i, u_input.c), reverseBits(u_input.c))), min(func_3(u_input.a), countOneBits(~vec4<u32>(u_input.a, 61100u, 74980u, var_0.x))), Struct_2(abs(u_input.a), false, arg_1, select(select(vec3<bool>(false, false, arg_0.x), vec3<bool>(arg_0.x, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), arg_0.x)), Struct_1(u_input.c >> (var_0.x % 32u), any(vec3<bool>(true, arg_0.x, false)), -79593i, vec3<f32>(-1203f, 1357f, -1165f), -vec3<i32>(14955i, u_input.c, u_input.c))), _wgslsmith_dot_vec4_i32(max(~vec4<i32>(18855i, -1i, u_input.c, -43328i), vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i) >> (vec4<u32>(4294967295u, u_input.b.x, arg_1, 46073u) % vec4<u32>(32u))), abs(vec4<i32>(2147483647i, u_input.c, 414i, 2147483647i)))), -415f);
    let var_2 = Struct_3(Struct_1(-16624i << (~func_3(u_input.b.x).x % 32u), arg_0.x, u_input.c, vec3<f32>(422f, -499f, _wgslsmith_f_op_f32(f32(-1f) * -817f)), select(vec3<i32>(u_input.c, _wgslsmith_mod_i32(u_input.c, u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 1i, 29726i), vec4<i32>(u_input.c, u_input.c, -36764i, u_input.c))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 8269i, u_input.c), vec4<i32>(38731i, 2147483647i, u_input.c, 10411i)), u_input.c, firstTrailingBit(22697i)), select(!vec3<bool>(arg_0.x, arg_0.x, false), !vec3<bool>(arg_0.x, arg_0.x, false), select(vec3<bool>(arg_0.x, true, true), vec3<bool>(false, false, arg_0.x), vec3<bool>(true, true, true))))), vec4<u32>(countOneBits(47736u), ~var_0.x, abs(var_0.x), ~(~61222u) & _wgslsmith_add_u32(var_0.x, var_0.x)), global0[_wgslsmith_index_u32(var_0.x, 21u)], -7073i);
    let var_3 = var_2.c.e.d.xz;
    var var_4 = var_2.c.e;
    return Struct_1(max(var_4.c, _wgslsmith_mult_i32(var_4.a, ~(~(-70025i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_4.d.x * 1215f)))) == -1065f, abs(-1i), var_2.a.d, var_2.c.e.e);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>) -> u32 {
    global0 = array<Struct_2, 21>();
    let var_0 = Struct_2(~abs(arg_0.b.x), (!(arg_0.a.b && true) || true) || true, max(~arg_0.b.x, ~u_input.a), !select(arg_0.c.d, select(!arg_0.c.d, select(vec3<bool>(arg_0.c.b, true, false), arg_0.c.d, vec3<bool>(arg_0.c.e.b, arg_0.a.b, false)), select(arg_0.c.d, arg_0.c.d, vec3<bool>(true, true, arg_0.c.e.b))), arg_0.c.d), Struct_1(0i, func_4(arg_0, -2964f), (arg_1.x << (62086u % 32u)) >> (48013u % 32u), _wgslsmith_f_op_vec3_f32(arg_0.c.e.d - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1186f, 1125f, 1000f), vec3<f32>(-2707f, 355f, -1000f), arg_0.c.d.x)) + vec3<f32>(-1716f, arg_0.a.d.x, arg_0.a.d.x))), arg_0.c.e.e));
    var var_1 = Struct_2(_wgslsmith_div_u32(var_0.c >> (~var_0.c % 32u), var_0.a) << (max(u_input.a, 1u) % 32u), !var_0.e.b, 1u, !var_0.d, var_0.e);
    let var_2 = Struct_2(u_input.a, false, select(41087u, 4294967295u, func_2(select(vec2<bool>(false, var_1.d.x), select(vec2<bool>(var_1.d.x, var_0.d.x), vec2<bool>(var_0.b, var_1.e.b), var_0.d.x), !vec2<bool>(true, var_1.b)), ~0u << (_wgslsmith_mult_u32(arg_0.c.a, var_1.a) % 32u)).b), select(!vec3<bool>(true, true, !arg_0.c.d.x), select(!(!var_0.d), select(!arg_0.c.d, arg_0.c.d, vec3<bool>(true, var_0.b, arg_0.c.d.x)), arg_0.c.e.b), vec3<bool>(select(false, arg_0.c.e.d.x != -1000f, false), !arg_0.c.d.x, !any(vec2<bool>(false, var_1.d.x)))), func_2(!vec2<bool>(var_0.b == var_0.d.x, var_1.e.b || var_0.b), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.c, arg_0.b.x), arg_0.b.xx), 0u) & (4294967295u & u_input.a)));
    var var_3 = var_1.e.d;
    return min(~_wgslsmith_mult_u32(~var_0.c, abs(1u)), max(~(var_1.c ^ 32257u), var_2.a) & 1u);
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    global0 = array<Struct_2, 21>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(-2082f, _wgslsmith_f_op_f32(min(arg_2.d.x, arg_2.d.x)))), arg_0.e.d.x, arg_1);
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    return Struct_2(u_input.b.x, !(false == !(arg_0.e.b & arg_2.b)), abs(~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_0.a, 0u), u_input.b))), select(arg_0.d, select(arg_0.d, !select(vec3<bool>(false, arg_0.e.b, arg_2.b), arg_0.d, arg_0.d), select(!arg_0.d, select(arg_0.d, vec3<bool>(arg_2.b, false, true), arg_0.d), true & arg_0.b)), true), func_2(!select(arg_0.d.yx, !vec2<bool>(arg_0.d.x, arg_0.b), select(vec2<bool>(arg_0.d.x, false), vec2<bool>(false, true), false)), ~34308u));
}

fn func_1() -> Struct_1 {
    let var_0 = func_6(Struct_2(func_5(Struct_3(func_2(vec2<bool>(false, false), 3865u), ~vec4<u32>(u_input.a, u_input.b.x, 3673u, u_input.a), Struct_2(20763u, false, 41248u, vec3<bool>(false, true, true), Struct_1(u_input.c, true, u_input.c, vec3<f32>(622f, -193f, -245f), vec3<i32>(u_input.c, 20780i, -2147483647i))), u_input.c), -(vec4<i32>(u_input.c, 0i, -49018i, u_input.c) << (vec4<u32>(u_input.a, u_input.a, 1u, 43551u) % vec4<u32>(32u)))), true, firstLeadingBit(_wgslsmith_mod_u32(0u, countOneBits(u_input.b.x))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), Struct_1(_wgslsmith_clamp_i32(1i, u_input.c, u_input.c), any(vec2<bool>(true, true)), max(0i, u_input.c) >> (~u_input.b.x % 32u), vec3<f32>(_wgslsmith_div_f32(-1315f, 1000f), 1288f, _wgslsmith_f_op_f32(sign(506f))), -vec3<i32>(u_input.c, 1i, -27092i) & -vec3<i32>(u_input.c, u_input.c, u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -215f), _wgslsmith_f_op_f32(f32(-1f) * -1013f))))), func_2(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), true), _wgslsmith_dot_vec4_u32(vec4<u32>(36013u, u_input.b.x, u_input.b.x, u_input.a), vec4<u32>(0u, u_input.b.x, u_input.a, u_input.a)) < ~6707u), ~(~u_input.a)));
    global0 = array<Struct_2, 21>();
    let var_1 = Struct_2(var_0.c, func_6(Struct_2(85987u, any(vec2<bool>(false, var_0.e.b)), ~(~var_0.a), var_0.d, var_0.e), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-271f * var_0.e.d.x), _wgslsmith_f_op_f32(var_0.e.d.x * -613f)), var_0.e.d.x)), var_0.e).e.b, func_6(func_6(func_6(func_6(var_0, var_0.e.d.x, var_0.e), 171f, func_6(var_0, -1000f, Struct_1(1i, false, var_0.e.a, var_0.e.d, var_0.e.e)).e), _wgslsmith_f_op_f32(-1370f + func_2(vec2<bool>(var_0.b, true), 4294967295u).d.x), var_0.e), _wgslsmith_f_op_f32(trunc(var_0.e.d.x)), func_2(var_0.d.xy, ~firstLeadingBit(var_0.a))).a, !var_0.d, func_6(Struct_2(0u, false, ~1u, select(var_0.d, vec3<bool>(var_0.b, var_0.e.b, false), select(var_0.d, var_0.d, false)), Struct_1(firstTrailingBit(0i), any(var_0.d.yy), u_input.c & u_input.c, var_0.e.d, var_0.e.e)), _wgslsmith_f_op_f32(step(295f, _wgslsmith_f_op_f32(447f * var_0.e.d.x))), Struct_1(u_input.c, var_0.d.x, _wgslsmith_dot_vec4_i32(min(vec4<i32>(-59064i, -1i, var_0.e.a, var_0.e.c), vec4<i32>(-2147483647i, 2147483647i, u_input.c, var_0.e.e.x)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, var_0.e.a, 46011i, 41545i))), _wgslsmith_f_op_vec3_f32(var_0.e.d - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.e.d.x, -102f, -1269f), var_0.e.d))), ~var_0.e.e)).e);
    var var_2 = Struct_2(_wgslsmith_mod_u32(1u, var_1.a), func_2(!(!(!vec2<bool>(false, var_1.e.b))), var_0.c & ((var_1.a << (u_input.b.x % 32u)) | _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, 1u, 0u)))).b, _wgslsmith_mod_u32(var_0.c, ~u_input.a), vec3<bool>(!(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e.e.x, 1i, 7987i, u_input.c), vec4<i32>(var_1.e.a, 10824i, 19091i, 81293i)) < (i32(-1i) * -20791i)), !any(vec2<bool>(true, true)) && var_0.b, func_2(vec2<bool>(true, var_0.b), var_1.c).b & var_1.e.b), func_6(func_6(global0[_wgslsmith_index_u32(abs(u_input.b.x), 21u)], _wgslsmith_f_op_f32(var_1.e.d.x + var_0.e.d.x), func_2(var_1.d.xx, u_input.b.x & 1u)), _wgslsmith_f_op_f32(sign(1414f)), func_6(var_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_0.e.d.x)))), var_0.e).e).e);
    var var_3 = func_6(func_6(var_0, var_0.e.d.x, var_0.e), var_1.e.d.x, func_6(Struct_2(var_0.c, all(vec3<bool>(var_1.e.b, var_2.e.b, false)), 38966u, vec3<bool>(!var_1.d.x, 58135i != u_input.c, var_2.d.x), Struct_1(var_1.e.c << (52374u % 32u), true, -2147483647i, var_1.e.d, ~vec3<i32>(30858i, 12854i, -30390i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_1.e.d.x)), -882f)) - -631f), Struct_1(1i, var_2.b, ~13727i, var_0.e.d, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(26240i, 1i, 508i, 68957i), vec4<i32>(var_1.e.e.x, var_2.e.c, -1i, var_0.e.e.x)), var_2.e.e.x, var_1.e.e.x))).e);
    return func_2(!(!select(select(var_1.d.xx, vec2<bool>(false, true), true), func_6(var_1, -516f, Struct_1(61469i, true, -1i, var_2.e.d, vec3<i32>(-1i, u_input.c, -1i))).d.yy, var_3.b)), _wgslsmith_dot_vec2_u32(u_input.b.zx, _wgslsmith_mult_vec2_u32(vec2<u32>(39988u, select(15681u, 4294967295u, var_2.b)), vec2<u32>(_wgslsmith_div_u32(20462u, var_2.a), 1u | var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<Struct_2, 21>();
    var var_1 = Struct_3(func_1(), _wgslsmith_mult_vec4_u32(vec4<u32>(func_3(~u_input.b.x).x, u_input.a, func_3(1023u >> (1u % 32u)).x, _wgslsmith_mult_u32(u_input.a ^ u_input.b.x, u_input.b.x)), abs(abs(vec4<u32>(u_input.a, 56656u, u_input.b.x, 40321u) >> (vec4<u32>(2905u, 11535u, u_input.a, u_input.a) % vec4<u32>(32u))))), func_6(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.a), 21u)], _wgslsmith_f_op_f32(select(1000f, 694f, -355f <= _wgslsmith_f_op_f32(-var_0.d.x))), func_6(Struct_2(func_5(Struct_3(var_0, vec4<u32>(1919u, 44639u, 6593u, u_input.b.x), Struct_2(0u, var_0.b, 0u, vec3<bool>(true, false, var_0.b), Struct_1(u_input.c, var_0.b, 0i, var_0.d, var_0.e)), u_input.c), vec4<i32>(11895i, var_0.e.x, u_input.c, var_0.e.x)), u_input.c > -1i, u_input.a, select(vec3<bool>(true, true, var_0.b), vec3<bool>(var_0.b, var_0.b, var_0.b), false), Struct_1(var_0.e.x, var_0.b, var_0.e.x, vec3<f32>(-866f, var_0.d.x, var_0.d.x), vec3<i32>(1i, -7205i, -36484i))), -1078f, Struct_1(0i, var_0.b, var_0.e.x, _wgslsmith_f_op_vec3_f32(var_0.d - var_0.d), var_0.e)).e), -_wgslsmith_mult_i32(u_input.c, func_6(global0[_wgslsmith_index_u32(u_input.a, 21u)], 1614f, func_2(vec2<bool>(false, var_0.b), 67093u)).e.c));
    let var_2 = Struct_1(-2147483647i, any(!vec4<bool>(true, var_0.b, false, var_0.b)), 1i, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), var_0.d.x), var_1.a.d.x, -480f), select(var_1.c.e.e, _wgslsmith_sub_vec3_i32(~var_1.a.e, vec3<i32>(1i, var_1.a.a, 2147483647i)), all(!vec2<bool>(var_1.a.b, true))) << (min(var_1.b.zzy, max(~u_input.b, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, var_1.b.x, var_1.b.x), u_input.b))) % vec3<u32>(32u)));
    var var_3 = Struct_2(u_input.b.x, !var_2.b, u_input.b.x, select(func_6(func_6(func_6(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], var_2.d.x, Struct_1(-40522i, var_2.b, -1i, vec3<f32>(-246f, 1207f, var_2.d.x), vec3<i32>(15459i, 0i, var_0.c))), -1000f, func_6(var_1.c, 619f, Struct_1(2147483647i, false, -44186i, var_2.d, vec3<i32>(1i, 28556i, 3282i))).e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) * _wgslsmith_f_op_f32(var_0.d.x + -1141f)), func_1()).d, !var_1.c.d, var_1.c.d), Struct_1(~(~(-6385i)), true, func_1().e.x & _wgslsmith_sub_i32(0i, -19769i), vec3<f32>(var_2.d.x, var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.e.d.x))), vec3<i32>(~0i, _wgslsmith_mult_i32(firstLeadingBit(var_0.e.x), -1i), -2147483647i)));
    var var_4 = Struct_1(_wgslsmith_sub_i32(~var_0.e.x, max(func_2(select(var_3.d.yx, var_3.d.yz, var_1.c.d.xz), _wgslsmith_add_u32(var_1.b.x, 4294967295u)).e.x, var_2.e.x)), !any(vec2<bool>(any(var_1.c.d.zy), false)), 2676i, var_3.e.d, -vec3<i32>(max(var_3.e.e.x, var_0.c), ~(0i | var_2.e.x), ~(-8195i << (0u % 32u))));
    global0 = array<Struct_2, 21>();
    let var_5 = var_0.e.xy;
    let x = u_input.a;
    s_output = StorageBuffer(~(~func_6(func_6(Struct_2(1u, var_3.e.b, 56318u, var_1.c.d, Struct_1(2147483647i, true, 2147483647i, vec3<f32>(899f, 414f, -1476f), vec3<i32>(-1i, 49515i, var_2.e.x))), var_4.d.x, Struct_1(-1i, var_0.b, var_0.c, var_1.c.e.d, var_0.e)), _wgslsmith_f_op_f32(420f - var_4.d.x), func_2(vec2<bool>(var_0.b, true), 1u)).e.a), 1i, -var_2.e);
}

