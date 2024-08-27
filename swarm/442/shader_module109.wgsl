struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(15788i, i32(-2147483648), true, vec4<i32>(2147483647i, -10654i, 23937i, 0i)), Struct_1(-44189i, -39373i, true, vec4<i32>(-11672i, 29573i, -1i, 3665i)), Struct_1(22953i, 2147483647i, true, vec4<i32>(18475i, 24948i, 2147483647i, -21297i)), Struct_1(0i, -1i, false, vec4<i32>(-1i, 2147483647i, 1i, -1i)));

var<private> global1: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec4<i32>, arg_3: vec2<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(min(abs(vec4<i32>(arg_2.x, u_input.a, u_input.a, -15688i)), vec4<i32>(arg_2.x, 32709i, u_input.a, arg_2.x)), arg_2), 55265i), arg_2.zy);
    var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(firstTrailingBit(-1i), var_0.x), vec2<i32>(_wgslsmith_dot_vec3_i32(arg_2.xwy, vec3<i32>(26664i, u_input.a, 2147483647i)), arg_2.x)), arg_2.zz);
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(935f, arg_1, arg_3.x, arg_1) * vec4<f32>(arg_1, 265f, arg_1, -1034f)), vec4<f32>(arg_1, -1648f, 328f, 513f), !vec4<bool>(arg_0.a.x, arg_0.a.x, false, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(804f, 1488f, arg_1, 1251f), vec4<f32>(arg_1, -990f, arg_3.x, arg_3.x))))))));
    var_0 = max(countOneBits(vec2<i32>(~(u_input.a << (arg_0.b % 32u)), abs(_wgslsmith_sub_i32(var_0.x, -102819i)))), vec2<i32>(36466i | (arg_2.x | _wgslsmith_div_i32(-17552i, arg_2.x)), firstTrailingBit(firstTrailingBit(-1i))));
    var var_2 = _wgslsmith_sub_i32(~_wgslsmith_sub_i32(u_input.a, i32(-1i) * -2147483647i), -1i);
    return vec4<bool>(arg_0.a.x, true, !arg_0.a.x, abs(2147483647i) == arg_2.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -943f);
    global0 = array<Struct_1, 4>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0))))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0, var_0), var_0), all(!(!vec4<bool>(false, arg_1.x, arg_0.c, true))))), _wgslsmith_mult_vec3_i32(arg_0.d.www, vec3<i32>(_wgslsmith_clamp_i32(~arg_0.b, firstTrailingBit(u_input.a), abs(arg_0.d.x)), 1i, countOneBits(2147483647i))));
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0.d.zw, var_1.b.yz, reverseBits(~(var_1.b.yy >> (vec2<u32>(24977u, 39765u) % vec2<u32>(32u))))), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(firstTrailingBit(vec2<i32>(14292i, var_1.b.x))), abs(-vec2<i32>(-4454i, arg_0.a))), vec2<i32>(abs(u_input.a), -1i) | ~firstLeadingBit(var_1.b.yx)));
    var var_2 = Struct_2(-426f, _wgslsmith_mult_vec3_i32(-vec3<i32>(firstTrailingBit(-1i), _wgslsmith_sub_i32(0i, -2147483647i), u_input.a), var_1.b));
    return 33104i;
}

fn func_2() -> vec3<bool> {
    let var_0 = -func_4(Struct_1(u_input.a, _wgslsmith_div_i32(~2147483647i, 77149i), !select(false, false, false), ~(vec4<i32>(-3966i, u_input.a, u_input.a, -22886i) >> (vec4<u32>(4294967295u, 37411u, 1u, 4294967295u) % vec4<u32>(32u)))), !func_3(Struct_3(vec3<bool>(false, true, true), 71091u), _wgslsmith_f_op_f32(f32(-1f) * -910f), ~vec4<i32>(-44764i, -3090i, u_input.a, 36288i), _wgslsmith_f_op_vec2_f32(vec2<f32>(156f, -1316f) - vec2<f32>(1072f, 453f))), 22540u);
    global1 = ~(~_wgslsmith_add_i32(abs(-96i), reverseBits(u_input.a)) << (~1u % 32u));
    var var_1 = min(vec2<u32>(0u, 1u), _wgslsmith_add_vec2_u32(countOneBits(select(vec2<u32>(22075u, 1u), vec2<u32>(4294967295u, 1u), true)), ~vec2<u32>(7307u, 4294967295u))) << (_wgslsmith_sub_vec2_u32(vec2<u32>(min(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 4079u))), 1u), ~select(~vec2<u32>(41136u, 17403u), abs(vec2<u32>(18867u, 108062u)), select(vec2<bool>(false, true), vec2<bool>(false, false), true))) % vec2<u32>(32u));
    global1 = _wgslsmith_sub_i32(select(abs(_wgslsmith_sub_i32(var_0, -42404i)), var_0, true), var_0);
    var var_2 = vec3<u32>(~15587u, 1u, 21032u);
    return select(!select(vec3<bool>(select(false, false, true), true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), vec3<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true)), false, var_2.x >= min(min(1u, 4294967295u), 16423u)), true);
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_0, arg_2, -557f))))));
    global0 = array<Struct_1, 4>();
    var var_1 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(min(2187f, arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(953f, _wgslsmith_f_op_f32(trunc(942f)))) * _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1746f))));
    var var_2 = arg_3.a;
    let var_3 = Struct_1(0i, 2147483647i, all(func_3(Struct_3(arg_3.a, abs(arg_1)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(625f, -1657f)), _wgslsmith_f_op_f32(964f - var_0.x))), ~(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(arg_3.b, 26675u, arg_3.b, arg_1) % vec4<u32>(32u))), var_0.ww).xzw), countOneBits(vec4<i32>(~_wgslsmith_mod_i32(u_input.a, u_input.a), -(i32(-1i) * -74525i), u_input.a, 0i)));
    return !vec3<bool>(true, var_2.x, true);
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1200f, -312f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -648f), _wgslsmith_f_op_f32(f32(-1f) * -1088f))))), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 2308f), -1385f))), Struct_3(select(vec3<bool>(any(vec4<bool>(true, true, false, true)), true, false), func_2(), any(func_3(Struct_3(vec3<bool>(true, true, false), 4294967295u), 478f, vec4<i32>(-2147483647i, u_input.a, u_input.a, 1i), vec2<f32>(327f, 407f)))), 1u));
    var var_1 = vec2<i32>(_wgslsmith_clamp_i32(u_input.a, 6025i, firstLeadingBit(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -15765i, 1i), vec3<i32>(u_input.a, u_input.a, u_input.a))))), u_input.a);
    let var_2 = 164f;
    return Struct_1(u_input.a, 35438i, all(vec4<bool>(true, func_5(1100f, ~1u, _wgslsmith_div_f32(-1686f, var_2), Struct_3(var_0, 0u)).x, any(vec3<bool>(true, var_0.x, var_0.x)), false)), ~(~firstLeadingBit(~vec4<i32>(u_input.a, -25645i, -1i, -1i))));
}

fn func_6(arg_0: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.a.a, 183f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -707f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.a, 367f, arg_0.a.a) + vec3<f32>(arg_0.d, arg_0.d, 809f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a, arg_0.d, arg_0.a.a)))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.a)), -1911f, arg_0.a.a)))));
    global1 = func_4(func_1(), !select(vec4<bool>(true, true, all(vec2<bool>(true, arg_0.b.c)), arg_0.c.c), select(!vec4<bool>(true, true, arg_0.b.c, arg_0.c.c), select(vec4<bool>(true, false, false, arg_0.b.c), vec4<bool>(arg_0.b.c, false, true, true), true), vec4<bool>(arg_0.b.c, arg_0.c.c, false, arg_0.b.c)), -521f == _wgslsmith_div_f32(arg_0.a.a, 532f)), ~4294967295u);
    let var_1 = arg_0.b.d;
    var var_2 = vec2<u32>(41983u, 1u);
    global0 = array<Struct_1, 4>();
    return Struct_2(_wgslsmith_f_op_f32(-1632f + 183f), vec3<i32>(reverseBits(-2147483647i), -1772i, _wgslsmith_sub_i32(-var_1.x, _wgslsmith_dot_vec4_i32(arg_0.b.d, arg_0.c.d & vec4<i32>(0i, var_1.x, arg_0.c.b, u_input.a)))));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(~(((arg_0.b.x ^ arg_2.b.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(arg_1.b, 22397i))) & u_input.a), -_wgslsmith_dot_vec4_i32(~arg_1.d, _wgslsmith_div_vec4_i32(arg_1.d >> (vec4<u32>(1u, 17332u, 10645u, 4150u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, arg_0.b.x, -20521i, -2147483647i))), arg_1.c, -(~(~arg_1.d)));
    global1 = abs(0i);
    global1 = (-1i ^ arg_2.b.x) & u_input.a;
    global1 = abs(arg_1.d.x >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(33741u, 0u), firstLeadingBit(vec2<u32>(7522u, 24337u))), firstTrailingBit(1u)) % 32u));
    return func_6(Struct_4(arg_0, func_1(), Struct_1(arg_0.b.x, -min(-50012i, var_0.d.x), all(vec2<bool>(arg_1.c, arg_1.c)), vec4<i32>(48020i, _wgslsmith_div_i32(var_0.d.x, arg_1.d.x), u_input.a, 1i)), arg_2.a));
}

fn func_8(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec4_i32(countOneBits(select(_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, arg_0.b.x, 3986i, 17152i), select(vec4<i32>(arg_0.b.x, arg_0.b.x, u_input.a, u_input.a), vec4<i32>(arg_0.b.x, 45627i, -42635i, u_input.a), vec4<bool>(true, true, true, false))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(2937i, 2147483647i, u_input.a, 45445i), vec4<i32>(u_input.a, -2147483647i, 1i, -7742i), vec4<i32>(-1i, 56551i, 5123i, arg_0.b.x)), any(vec2<bool>(true, true)))), vec4<i32>(68209i, 13057i, ~_wgslsmith_mod_i32(func_6(Struct_4(arg_0, Struct_1(2147483647i, u_input.a, false, vec4<i32>(arg_0.b.x, -1734i, arg_0.b.x, u_input.a)), global0[_wgslsmith_index_u32(30825u, 4u)], arg_1.x)).b.x, -2147483647i), u_input.a));
    var var_1 = vec4<u32>(11286u, _wgslsmith_mod_u32(abs(_wgslsmith_mod_u32(abs(1u), ~94780u)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(countOneBits(32481u), ~11908u), _wgslsmith_add_u32(firstTrailingBit(47102u), ~0u), 4294967295u)), ~_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), ~(43718u ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(15912u, 44622u, 1u), vec3<u32>(0u, 1u, 1u))));
    var var_2 = select(min(countOneBits(_wgslsmith_add_vec2_i32(var_0.yw, vec2<i32>(2147483647i, var_0.x))), vec2<i32>(u_input.a, 30284i)) << (~var_1.ww % vec2<u32>(32u)), -vec2<i32>(-2147483647i, ~(-87698i ^ arg_0.b.x)), vec2<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x + -425f))) < _wgslsmith_f_op_f32(step(-976f, _wgslsmith_f_op_f32(max(arg_0.a, arg_0.a)))), any(vec3<bool>(false, true, false)) || false));
    var var_3 = _wgslsmith_f_op_f32(515f + arg_1.x);
    var var_4 = countOneBits(vec2<i32>(var_0.x, 2147483647i) ^ -var_0.zz);
    return Struct_3(vec3<bool>(-1000f <= arg_1.x, var_1.x <= ~_wgslsmith_add_u32(var_1.x, 1u), func_5(1204f, 0u, _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(arg_0.a - 646f)), Struct_3(vec3<bool>(false, false, true), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.x, var_1.x, var_1.x), vec4<u32>(0u, 15326u, 4294967295u, var_1.x)))).x), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a | ~(-u_input.a);
    let var_1 = func_8(func_7(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(151f)), _wgslsmith_f_op_f32(f32(-1f) * -404f))), vec3<i32>(var_0 ^ u_input.a, 84316i, -2147483647i)), Struct_1((i32(-1i) * -50466i) | var_0, _wgslsmith_sub_i32(_wgslsmith_add_i32(-21873i, var_0), _wgslsmith_add_i32(9395i, -2147483647i)), false, vec4<i32>(_wgslsmith_mod_i32(-29480i, 1i), -1i, ~var_0, 1i)), func_6(Struct_4(Struct_2(549f, vec3<i32>(var_0, 0i, 2147483647i)), global0[_wgslsmith_index_u32(1u, 4u)], func_1(), 882f))), vec4<f32>(1000f, _wgslsmith_f_op_f32(-936f * _wgslsmith_f_op_f32(select(730f, _wgslsmith_f_op_f32(round(389f)), false))), _wgslsmith_f_op_f32(max(func_7(func_7(Struct_2(-613f, vec3<i32>(-13470i, 2147483647i, u_input.a)), Struct_1(1i, u_input.a, true, vec4<i32>(41138i, 1i, var_0, var_0)), Struct_2(1660f, vec3<i32>(var_0, var_0, 10263i))), global0[_wgslsmith_index_u32(firstLeadingBit(70552u), 4u)], Struct_2(-191f, vec3<i32>(u_input.a, var_0, u_input.a))).a, -450f)), _wgslsmith_f_op_f32(846f * 909f)));
    global1 = 0i;
    let var_2 = -(~(-min(vec3<i32>(u_input.a, u_input.a, 8027i) >> (vec3<u32>(21500u, 4294967295u, var_1.b) % vec3<u32>(32u)), func_6(Struct_4(Struct_2(-815f, vec3<i32>(7187i, var_0, -9017i)), Struct_1(-2147483647i, u_input.a, true, vec4<i32>(u_input.a, u_input.a, -31834i, var_0)), Struct_1(30803i, -15976i, var_1.a.x, vec4<i32>(var_0, var_0, -2147483647i, u_input.a)), 1184f)).b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-20560i, var_2.x, ~(-27998i)), 0i, 1i, vec4<f32>(_wgslsmith_f_op_f32(sign(-257f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2011f, 753f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1353f)) * 1002f)), _wgslsmith_f_op_f32(round(-385f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(1152f + -625f), _wgslsmith_div_f32(-1109f, 1192f), 296f, -725f))))));
}

