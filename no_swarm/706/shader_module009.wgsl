struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_4) -> vec4<u32> {
    let var_0 = _wgslsmith_mult_vec2_i32(-reverseBits(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.xx, arg_0.c.xx), ~u_input.b.zy)), _wgslsmith_sub_vec2_i32(-arg_0.c.xx, _wgslsmith_mod_vec2_i32(vec2<i32>(abs(1382i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0.e.x, arg_0.c.x), arg_0.e.zzy)), -(~u_input.a.zz))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, arg_0.b, _wgslsmith_f_op_f32(628f - var_1), _wgslsmith_f_op_f32(-var_1)));
    var_2 = vec4<f32>(var_2.x, _wgslsmith_f_op_f32(round(var_2.x)), arg_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1008f + var_1) * arg_0.b))));
    let var_3 = Struct_4(true, var_2.x, _wgslsmith_add_vec3_i32(arg_0.c & firstLeadingBit(min(u_input.a, arg_0.c)), _wgslsmith_mod_vec3_i32(vec3<i32>(~var_0.x, var_0.x, -1i | u_input.a.x), ~u_input.a)), arg_0.d, u_input.b);
    return firstLeadingBit((_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_3.d, arg_0.d, var_3.d), vec4<u32>(0u, arg_0.d, 1u, 72365u), ~vec4<u32>(24249u, arg_0.d, 61509u, 1u)) >> (min(firstLeadingBit(vec4<u32>(var_3.d, 0u, arg_0.d, var_3.d)), max(vec4<u32>(arg_0.d, var_3.d, arg_0.d, 22616u), vec4<u32>(4294967295u, 1u, 4294967295u, 38210u))) % vec4<u32>(32u))) >> (reverseBits(min(countOneBits(vec4<u32>(78476u, var_3.d, 1u, 77197u)), vec4<u32>(arg_0.d, arg_0.d, 1u, var_3.d) << (vec4<u32>(var_3.d, 1u, var_3.d, arg_0.d) % vec4<u32>(32u)))) % vec4<u32>(32u)));
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_2(u_input.b.xw, 36832i, func_3(Struct_4(false, -267f, vec3<i32>(u_input.b.x, 1i, _wgslsmith_mult_i32(2147483647i, 1i)), ~(4294967295u ^ arg_0), ~reverseBits(vec4<i32>(u_input.b.x, -2147483647i, 2147483647i, u_input.a.x)))));
    let var_1 = var_0.a;
    var var_2 = var_0.c.x;
    var_2 = arg_0;
    let var_3 = arg_0;
    return Struct_1(true && select(true, var_0.c.x == var_0.c.x, _wgslsmith_f_op_f32(select(arg_1, arg_1, true)) == _wgslsmith_f_op_f32(min(-572f, arg_1))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> f32 {
    var var_0 = func_2(0u, -1234f);
    var var_1 = select(!vec2<bool>(all(vec2<bool>(true, false)), true), !select(select(!vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, var_0.a), true), select(vec2<bool>(false, true), !vec2<bool>(arg_1.a, var_0.a), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, true), vec2<bool>(true, false))), select(vec2<bool>(false, true), vec2<bool>(arg_1.a, false), true)), true);
    var_0 = Struct_1(true);
    var_1 = vec2<bool>(!any(vec3<bool>(select(var_1.x, false, false), 0u > arg_1.d, !var_1.x)), arg_1.b < -267f);
    var var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.d, 61912u), vec2<u32>(arg_1.d, arg_1.d))), ~vec2<u32>(arg_1.d, 1u) << (vec2<u32>(arg_1.d, arg_1.d) % vec2<u32>(32u)), select(abs(vec2<u32>(arg_1.d, arg_1.d)), ~vec2<u32>(arg_1.d, 1u), func_2(4294967295u, -1501f).a) ^ ~vec2<u32>(arg_1.d, arg_1.d)), ~(~vec2<u32>(min(arg_1.d, 4294967295u), arg_1.d)), vec2<u32>(arg_1.d, arg_1.d));
    return arg_1.b;
}

fn func_1(arg_0: Struct_4) -> vec3<bool> {
    let var_0 = Struct_2(vec2<i32>(-2147483647i, arg_0.e.x), u_input.b.x, abs(~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 8949u, arg_0.d, arg_0.d), abs(vec4<u32>(arg_0.d, arg_0.d, arg_0.d, 43819u)))));
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(func_4(func_2(arg_0.d, arg_0.b), Struct_4(true, 128f, _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.c.x, arg_0.e.x, arg_0.c.x), vec3<i32>(arg_0.e.x, 4212i, arg_0.e.x)), 4294967295u, arg_0.e << (var_0.c % vec4<u32>(32u))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - _wgslsmith_f_op_f32(sign(arg_0.b))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b * 192f))), arg_0.a, -1379f > _wgslsmith_f_op_f32(1689f + arg_0.b));
    return var_1;
}

fn func_5(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = Struct_4(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-355f, _wgslsmith_f_op_f32(1000f - 183f)), _wgslsmith_f_op_f32(select(-1025f, _wgslsmith_f_op_f32(-808f - -1000f), true)))), 1827f)), select(u_input.a, vec3<i32>(-1i, -u_input.a.x, u_input.b.x), vec3<bool>(any(vec3<bool>(true, true, arg_0.x)), true, arg_0.x || true)), _wgslsmith_mult_u32(reverseBits(0u), firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_mult_u32(39353u, 1u), 77409u << (0u % 32u)))), vec4<i32>(-1i, 1i, -u_input.b.x, u_input.b.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b, var_0.b), vec2<f32>(var_0.b, 1000f), false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b, var_0.b), vec2<f32>(var_0.b, 608f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b))))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1206f, var_0.b))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_0.b + var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -2122f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(946f, var_0.b) * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, var_0.b), vec2<f32>(-863f, var_0.b))), vec2<bool>(func_2(var_0.d, var_0.b).a, true)))));
    let var_2 = vec2<i32>(4972i, u_input.a.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-512f, var_1.x, -951f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -1229f, var_0.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(242f, 1587f, 1186f) - vec3<f32>(var_1.x, 1246f, var_1.x)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -2377f), _wgslsmith_f_op_f32(exp2(var_1.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(631f, var_0.b, 2001f) * vec3<f32>(var_1.x, -103f, var_1.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1375f, var_0.b) + vec3<f32>(var_0.b, -579f, var_0.b)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2061f, var_0.b, -154f))))));
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-262f * 406f) * _wgslsmith_f_op_f32(var_0.b - var_1.x)), ~(-abs(reverseBits(vec3<i32>(var_2.x, var_2.x, 1i)))), reverseBits(2653u), _wgslsmith_mult_vec4_i32(vec4<i32>(~(-4736i), i32(-1i) * -55825i, -(~var_2.x), -_wgslsmith_mod_i32(u_input.a.x, -1i)), firstTrailingBit(-vec4<i32>(u_input.a.x, -1i, -1i, -2147483647i))));
    return Struct_3(Struct_2(-_wgslsmith_add_vec2_i32(var_2, vec2<i32>(-22470i, var_2.x)), _wgslsmith_clamp_i32(var_2.x, var_0.c.x, var_2.x), vec4<u32>(_wgslsmith_clamp_u32(var_0.d, var_0.d, ~0u), reverseBits(10595u), var_0.d, countOneBits(~45633u))), -vec4<i32>(1i, i32(-1i) * -19342i, -1i, abs(i32(-1i) * -2147483647i)), ~_wgslsmith_mod_i32(var_2.x, -var_0.c.x << (_wgslsmith_div_u32(var_0.d, var_0.d) % 32u)), Struct_1(all(vec2<bool>(!var_0.a, true))), var_0.d);
}

fn func_6(arg_0: Struct_3) -> bool {
    let var_0 = arg_0;
    let var_1 = ~(~func_5(vec3<bool>(true, true, var_0.d.a)).a.c.wz);
    let var_2 = Struct_4(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-2538f, _wgslsmith_f_op_f32(ceil(-890f)), any(vec2<bool>(arg_0.d.a, var_0.d.a)))))) * 671f), -var_0.b.ywx, _wgslsmith_mod_u32(func_3(Struct_4(arg_0.d.a, 1f, vec3<i32>(arg_0.a.b, var_0.b.x, arg_0.b.x), 1868u & arg_0.e, vec4<i32>(1i, u_input.a.x, 0i, -737i) ^ arg_0.b)).x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(arg_0.a.c, vec4<u32>(18919u, var_1.x, var_0.e, 22583u) | vec4<u32>(var_1.x, 39120u, var_1.x, arg_0.a.c.x)), reverseBits(func_3(Struct_4(var_0.d.a, 205f, vec3<i32>(0i, arg_0.c, -38592i), 4294967295u, var_0.b)).x), ~(~74497u))), ~arg_0.b);
    var var_3 = vec4<bool>(true, true, !(!var_0.d.a), arg_0.d.a);
    var_3 = vec4<bool>(-(-86137i >> (var_0.e % 32u)) < abs(-20923i), arg_0.d.a, any(vec4<bool>(false, true, !(var_0.b.x > -22489i), !(true || arg_0.d.a))), all(!select(vec4<bool>(var_0.d.a, true, false, false), !vec4<bool>(var_2.a, false, var_0.d.a, true), vec4<bool>(false, true, var_0.d.a, var_0.d.a))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec3<bool>(true, true, any(vec4<bool>(false, false, true, true))), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), true), any(vec4<bool>(true, true, true, true))), vec3<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)), true, any(vec3<bool>(true, false, false)) | true), false);
    var_0 = vec3<bool>(any(select(!var_0.xy, select(var_0.yy, vec2<bool>(false, var_0.x), u_input.b.x > u_input.b.x), var_0.x)), all(!var_0.zy), any(!select(var_0.zz, vec2<bool>(true, true), var_0.zx)));
    var var_1 = vec4<bool>(true, func_6(func_5(!func_1(Struct_4(false, -448f, u_input.a, 1u, u_input.b)))), _wgslsmith_f_op_f32(min(-813f, -1000f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1173f - -1000f))) * -866f), !(!(!var_0.x)) == !all(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), false)));
    var var_2 = true;
    var var_3 = _wgslsmith_mult_u32(~39712u, 1u);
    var var_4 = !(!var_1.zxw);
    var var_5 = ~42504u;
    var_3 = (firstTrailingBit(1u) | 4294967295u) | ~40117u;
    let x = u_input.a;
    s_output = StorageBuffer(-337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1552f + 477f), 1245f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1426f - _wgslsmith_f_op_f32(-278f * -973f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(788f + _wgslsmith_f_op_f32(-908f * -178f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-716f * -2290f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(-1043f)), 1346f, _wgslsmith_f_op_f32(sign(-1532f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1946f, 464f, -817f)))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-854f, -1175f, -209f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(361f, 224f, -765f), vec3<f32>(680f, -167f, 877f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(453f, 2032f, 3199f))))), ~max(_wgslsmith_mod_u32(2989u, 1u), 15510u));
}

