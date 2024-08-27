struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec3<f32> {
    let var_0 = reverseBits(~_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(19696i, 0i, arg_0, arg_1) & vec4<i32>(arg_0, arg_1, 2147483647i, arg_0), max(vec4<i32>(arg_0, -2147483647i, arg_1, 57075i), vec4<i32>(arg_1, arg_0, arg_0, 1i))), reverseBits(vec4<i32>(-1i, arg_0, -44731i, arg_1))));
    var var_1 = max(u_input.a.x, max(u_input.a.x, 41724u));
    var_1 = 1u;
    var var_2 = vec2<bool>(!all(vec2<bool>(true, true)), select(!select(true, true, true), true, false));
    var var_3 = Struct_1(u_input.a.x, var_0.xx);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -116f) - _wgslsmith_f_op_f32(-1910f + -100f)), _wgslsmith_f_op_f32(max(603f, -197f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-254f * -307f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1045f, -471f, 370f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-605f, 355f, 557f) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1051f, 894f, 424f))))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1057f + -1020f)), 1480f, 1000f))));
}

fn func_2() -> vec4<u32> {
    var var_0 = all(!vec4<bool>(true, _wgslsmith_f_op_f32(trunc(1000f)) < -1395f, all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true)), false));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_i32(1i, -_wgslsmith_mod_i32(~4024i, ~(-38703i))), _wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(-1i, -23784i)), ~vec2<i32>(64653i, -2147483647i)) & ~min(1i, _wgslsmith_div_i32(1i, 1i))));
    var_1 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-207f, var_1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(-285f * -151f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.x, var_1.x), var_1.x, all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1747f))))))));
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.a.x, u_input.a.x), u_input.a);
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), -154f, true))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(488f))) + _wgslsmith_f_op_f32(ceil(-1452f)))), _wgslsmith_f_op_f32(round(-467f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(1i, 1i)).x), _wgslsmith_f_op_f32(var_1.x - var_1.x), any(vec2<bool>(false, false))))));
    return ~select(firstLeadingBit(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, var_2.x, u_input.a.x, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, var_2.x, u_input.a.x, 11972u), vec4<u32>(var_2.x, 40176u, var_2.x, var_2.x)))), vec4<u32>(u_input.a.x, 65349u, ~_wgslsmith_clamp_u32(var_2.x, var_2.x, 1u), ~(~u_input.a.x)), _wgslsmith_f_op_f32(-var_1.x) == _wgslsmith_f_op_f32(abs(-245f)));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = select(~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u)), max(vec4<u32>(u_input.a.x, 4538u, 13239u, u_input.a.x), ~vec4<u32>(u_input.a.x, arg_1.a, u_input.a.x, 1u)), ~vec4<u32>(0u, 51966u, 22047u, 42733u)), _wgslsmith_sub_vec4_u32(~func_2(), vec4<u32>(4294967295u, 26625u, arg_1.a, ~4294967295u)) | _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(40944u, 4294967295u, 1u, u_input.a.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, 75724u, arg_1.a) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, arg_1.a, 23014u, arg_1.a)), abs(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 86381u)) & ~vec4<u32>(arg_1.a, 1u, 18639u, u_input.a.x)), !vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), !any(vec2<bool>(false, false)), true, !(u_input.a.x < 21109u)));
    var var_1 = arg_1.b.x;
    let var_2 = ~var_0.xyy << (~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, 62527u) & (var_0.xwy >> (vec3<u32>(u_input.a.x, var_0.x, 55414u) % vec3<u32>(32u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 9131u, 19903u), var_0.wxz, vec3<u32>(u_input.a.x, arg_1.a, 56781u))) % vec3<u32>(32u));
    var var_3 = select(_wgslsmith_add_vec4_i32(vec4<i32>(abs(_wgslsmith_sub_i32(0i, 0i)), -5486i, -21623i, 1i), -vec4<i32>(arg_1.b.x, max(arg_1.b.x, -90492i), 2147483647i & arg_1.b.x, 33057i)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.b, arg_1.b), reverseBits(vec2<i32>(arg_1.b.x, arg_1.b.x))), max(-1i, arg_1.b.x) | 2147483647i, ~arg_1.b.x), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(arg_1.b.x, 1i, arg_1.b.x, -60382i)), vec4<i32>(10934i, -18890i, max(arg_1.b.x, arg_1.b.x), ~arg_1.b.x))), select(vec4<bool>(_wgslsmith_f_op_f32(max(arg_0, -625f)) != _wgslsmith_f_op_f32(-312f + arg_0), (arg_0 >= arg_0) || any(vec4<bool>(false, true, false, false)), !any(vec3<bool>(false, false, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    var var_4 = u_input.a.x >> (0u % 32u);
    return !vec2<bool>(any(vec3<bool>(true, true, true)), !(!select(false, false, false)));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_2.a, firstLeadingBit(-max(firstTrailingBit(arg_2.b), abs(arg_2.b))));
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-(~vec3<i32>(arg_1, arg_2.b.x, -2147483647i)), select((vec3<i32>(2147483647i, var_0.b.x, var_0.b.x) ^ vec3<i32>(var_0.b.x, arg_2.b.x, 1i)) ^ min(vec3<i32>(-6357i, arg_1, var_0.b.x), vec3<i32>(var_0.b.x, 18202i, var_0.b.x)), countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_0.b.x, var_0.b.x), vec3<i32>(var_0.b.x, -12614i, arg_2.b.x))), select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, false), true))), (max(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 1i, arg_2.b.x), vec3<i32>(arg_2.b.x, 2147483647i, arg_1)), -vec3<i32>(1i, arg_2.b.x, arg_1)) << (min(~vec3<u32>(57028u, 1u, u_input.a.x), vec3<u32>(12760u, 65167u, 4616u)) % vec3<u32>(32u))) & -vec3<i32>(_wgslsmith_mod_i32(arg_2.b.x, -22229i), min(-1i, var_0.b.x), -54796i));
    return Struct_1(4294967295u, -(_wgslsmith_sub_vec2_i32(var_0.b, select(vec2<i32>(arg_2.b.x, 0i), arg_2.b, false)) << (~vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = func_4(select(!select(arg_1.zx, arg_1.xz, true), !select(vec2<bool>(true, true), select(arg_1.xz, vec2<bool>(false, arg_2), arg_2), vec2<bool>(true, true)), false), firstLeadingBit(arg_3.b.x), func_4(arg_1.ww, _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -48476i, arg_3.b.x, -44627i), select(vec4<i32>(arg_3.b.x, 17131i, arg_3.b.x, -36932i), vec4<i32>(-1i, arg_3.b.x, 0i, 29561i), vec4<bool>(true, arg_1.x, true, false)) | vec4<i32>(arg_3.b.x, -1i, -1i, -1i)), Struct_1(u_input.a.x, vec2<i32>(-arg_3.b.x, _wgslsmith_mult_i32(12734i, arg_3.b.x)))));
    var var_1 = func_4(arg_1.zw, _wgslsmith_add_i32(arg_3.b.x, ~(-1i)), Struct_1(arg_3.a, vec2<i32>(arg_3.b.x, -1i)));
    var_1 = Struct_1(1u, _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(max(vec2<i32>(var_1.b.x, 1i), vec2<i32>(27486i, -15052i)), ~vec2<i32>(arg_3.b.x, var_1.b.x), var_0.b), _wgslsmith_mod_vec2_i32(~firstTrailingBit(vec2<i32>(arg_3.b.x, -1i)), -vec2<i32>(-21460i, 2147483647i))));
    var var_2 = -1i;
    var var_3 = 771f;
    return StorageBuffer(firstLeadingBit(min(vec2<i32>(abs(var_1.b.x), _wgslsmith_clamp_i32(33696i, -3778i, 1i)), vec2<i32>(67739i, max(var_1.b.x, -2147483647i)))), max(func_2().yxx, vec3<u32>(_wgslsmith_add_u32(reverseBits(var_1.a), var_0.a >> (936u % 32u)), 23556u | firstLeadingBit(var_0.a), select(~arg_0.x, reverseBits(var_1.a), !arg_1.x))), ~(vec2<i32>(-1i) * -(~var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(vec2<u32>(~(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 57978u, 11456u), vec4<u32>(63017u, u_input.a.x, u_input.a.x, u_input.a.x)) % 32u)), firstLeadingBit(u_input.a.x)), !select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true), true), vec4<bool>(true, true, true, any(vec4<bool>(true, false, true, false))), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), all(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)))), func_4(func_1(1000f, Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 35879u), vec3<u32>(u_input.a.x, 0u, 4294967295u)), _wgslsmith_div_vec2_i32(vec2<i32>(41937i, 0i), vec2<i32>(-1i, -136032i)))), 1i, Struct_1(countOneBits(u_input.a.x), -max(vec2<i32>(25106i, -19984i), vec2<i32>(-22308i, 0i)))));
}

