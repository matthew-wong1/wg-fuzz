struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = arg_3;
    var var_1 = Struct_1(~firstLeadingBit(~(~arg_3.c.x)), !select(select(!vec2<bool>(true, arg_1.x), vec2<bool>(true, var_0.a.x), all(vec3<bool>(false, true, true))), select(select(arg_3.a, var_0.a, false), var_0.a, arg_1.x), !arg_3.a), vec3<i32>(0i, ~firstLeadingBit(_wgslsmith_mult_i32(u_input.a.x, 0i)), 4352i >> ((arg_2.x << ((var_0.c.x ^ arg_2.x) % 32u)) % 32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 171f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-940f, arg_0)))));
    var_1 = Struct_1(_wgslsmith_dot_vec3_u32(arg_2, arg_3.c), select(var_0.a, !(!select(arg_3.a, arg_3.a, var_1.b)), !var_1.b), reverseBits(vec3<i32>(-var_1.c.x, _wgslsmith_dot_vec3_i32(var_1.c, vec3<i32>(2147483647i, 17384i, arg_3.b)), firstLeadingBit(var_0.b))) | var_1.c, var_1.d);
    let var_2 = !select(select(!vec4<bool>(var_1.b.x, true, arg_3.a.x, arg_1.x), select(!vec4<bool>(false, arg_1.x, arg_3.a.x, true), !vec4<bool>(true, var_0.a.x, false, var_1.b.x), vec4<bool>(false, arg_3.a.x, var_0.a.x, arg_3.a.x)), select(select(vec4<bool>(true, arg_3.a.x, var_0.a.x, false), vec4<bool>(true, arg_1.x, var_1.b.x, arg_1.x), arg_3.a.x), vec4<bool>(false, true, false, arg_1.x), vec4<bool>(arg_3.a.x, true, var_1.b.x, false))), select(select(select(vec4<bool>(var_1.b.x, var_0.a.x, true, true), vec4<bool>(true, var_1.b.x, false, arg_3.a.x), vec4<bool>(true, true, false, true)), !vec4<bool>(true, arg_1.x, true, arg_3.a.x), vec4<bool>(arg_3.a.x, true, true, true)), vec4<bool>(36281i >= arg_3.b, true, arg_3.a.x, false), true), vec4<bool>(arg_3.a.x, _wgslsmith_f_op_f32(-var_1.d.x) >= -174f, var_1.b.x, true));
    var var_3 = u_input.a.x;
    return var_2;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = select(select(!select(select(vec4<bool>(true, false, arg_1.b.x, true), vec4<bool>(arg_0.b.x, false, false, true), false), vec4<bool>(true, false, arg_1.b.x, false), arg_0.b.x), vec4<bool>(true, all(!arg_0.b), arg_0.b.x, all(vec3<bool>(false, true, arg_1.b.x)) || any(vec2<bool>(false, arg_1.b.x))), !(!select(vec4<bool>(false, arg_0.b.x, true, true), vec4<bool>(false, arg_0.b.x, arg_1.b.x, arg_0.b.x), vec4<bool>(arg_1.b.x, true, arg_0.b.x, true)))), !select(!func_3(589f, arg_1.b, vec3<u32>(42270u, arg_0.a, 5768u), Struct_2(vec2<bool>(arg_0.b.x, arg_1.b.x), 17196i, vec3<u32>(4294967295u, 4294967295u, 4294967295u))), !func_3(arg_1.d.x, arg_1.b, vec3<u32>(arg_0.a, arg_1.a, arg_0.a), Struct_2(vec2<bool>(false, arg_1.b.x), -18439i, vec3<u32>(20463u, 21997u, 1u))), func_3(1f, vec2<bool>(arg_1.b.x, arg_1.b.x), ~vec3<u32>(9350u, arg_0.a, arg_1.a), Struct_2(vec2<bool>(arg_0.b.x, arg_1.b.x), -18247i, vec3<u32>(arg_1.a, 3458u, arg_1.a)))), vec4<bool>(arg_1.b.x, true, arg_1.b.x, func_3(_wgslsmith_f_op_f32(select(222f, arg_1.d.x, true)), vec2<bool>(true, arg_1.b.x), vec3<u32>(18308u, arg_0.a, 0u), Struct_2(arg_1.b, -2147483647i, vec3<u32>(7523u, 26959u, arg_1.a))).x && arg_1.b.x));
    var var_1 = ~(-_wgslsmith_div_i32(-min(12071i, 0i), 1i));
    var var_2 = ~arg_0.a;
    let var_3 = _wgslsmith_clamp_u32(reverseBits(~arg_0.a), reverseBits(_wgslsmith_mod_u32(21292u, ~arg_1.a)), _wgslsmith_mult_u32(countOneBits(arg_0.a), reverseBits(3730u) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(78396u, 84645u, arg_0.a), _wgslsmith_mod_vec3_u32(vec3<u32>(22461u, 8675u, arg_1.a), vec3<u32>(arg_0.a, 4294967295u, arg_1.a))) % 32u)));
    var_1 = -37438i;
    return Struct_2(var_0.zx, 1i, ~(countOneBits(countOneBits(vec3<u32>(75253u, 1u, var_3))) ^ firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_3, 0u, 37645u), vec3<u32>(4294967295u, 4294967295u, 48u)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = func_2(Struct_1(arg_3.c.x, vec2<bool>(false, true), vec3<i32>(reverseBits(75657i), arg_3.b, 18698i), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(589f))))), Struct_1(25911u, arg_1.xx, select(_wgslsmith_sub_vec3_i32(select(vec3<i32>(arg_0.b, arg_0.b, arg_0.b), vec3<i32>(0i, 1i, arg_0.b), vec3<bool>(arg_1.x, true, arg_3.a.x)), firstLeadingBit(vec3<i32>(u_input.a.x, arg_3.b, 0i))), abs(vec3<i32>(-2147483647i, 61096i, arg_3.b)), arg_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-289f, 1508f), vec2<f32>(1150f, -347f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(444f, -1000f) * vec2<f32>(254f, 638f))))));
    var_0 = arg_0;
    var_0 = arg_3;
    let var_1 = arg_0.a.x & arg_1.x;
    var var_2 = vec2<u32>(38478u, arg_3.c.x) | vec2<u32>(71602u, firstTrailingBit(12208u & ~var_0.c.x));
    return _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(arg_3.b, u_input.a.x, -14106i, var_0.b)), -(~vec4<i32>(-1i, -1i, arg_0.b, -2147483647i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.a.x, -22352i, 1i), vec4<i32>(u_input.a.x, var_0.b, -1i, -22715i), vec4<i32>(0i, -26542i, -2147483647i, var_0.b))) & ~min(vec4<i32>(var_0.b, 12602i, u_input.a.x, u_input.a.x), reverseBits(vec4<i32>(16021i, var_0.b, var_0.b, 32307i))));
}

fn func_5(arg_0: vec4<i32>, arg_1: u32) -> vec3<i32> {
    var var_0 = ~func_2(Struct_1(func_2(Struct_1(arg_1, vec2<bool>(false, true), arg_0.zxy, vec2<f32>(352f, 214f)), Struct_1(arg_1, vec2<bool>(true, true), vec3<i32>(u_input.a.x, -60739i, arg_0.x), vec2<f32>(1169f, -1981f))).c.x ^ (4294967295u << (arg_1 % 32u)), vec2<bool>(true, true), abs(~arg_0.wyy), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1187f, 1248f)), _wgslsmith_div_vec2_f32(vec2<f32>(230f, 112f), vec2<f32>(202f, 154f)))), Struct_1(~_wgslsmith_div_u32(4294967295u, arg_1), vec2<bool>(true, true), -arg_0.zww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(735f, 1000f))))).b;
    var_0 = -(i32(-1i) * -firstTrailingBit(u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2022f, 1146f))) - vec2<f32>(_wgslsmith_f_op_f32(274f - -458f), 147f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 923f)))))))) + vec2<f32>(_wgslsmith_f_op_f32(772f - _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)))));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-319f * _wgslsmith_f_op_f32(f32(-1f) * -225f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, 187f)) + _wgslsmith_f_op_f32(ceil(724f))), var_1.x))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-269f, var_1.x), vec2<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) + _wgslsmith_f_op_f32(var_1.x * var_1.x))), select(vec2<bool>(false, false), vec2<bool>(all(vec4<bool>(false, false, true, false)), true), vec2<bool>(true, true)))));
    return select(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a.x, 0i), ~arg_0.x), arg_0.x, _wgslsmith_clamp_i32(1i ^ arg_0.x, arg_0.x, func_4(Struct_2(vec2<bool>(true, false), arg_0.x, vec3<u32>(arg_1, 81874u, arg_1)), vec3<bool>(false, false, true), vec4<u32>(34499u, 0u, 0u, 38466u), Struct_2(vec2<bool>(true, false), arg_0.x, vec3<u32>(4294967295u, 4294967295u, arg_1))).x)), -vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_add_i32(u_input.a.x, arg_0.x), -2147483647i), select(vec3<bool>(true, any(vec2<bool>(true, true)), true), func_3(_wgslsmith_f_op_f32(trunc(var_1.x)), vec2<bool>(true, false), vec3<u32>(arg_1, arg_1, arg_1), func_2(Struct_1(23697u, vec2<bool>(true, false), arg_0.yyz, vec2<f32>(334f, var_1.x)), Struct_1(arg_1, vec2<bool>(false, true), vec3<i32>(-6492i, -42610i, arg_0.x), vec2<f32>(-481f, var_1.x)))).yyw, all(vec3<bool>(true, true, true)))) << (vec3<u32>(arg_1, ~_wgslsmith_mod_u32(arg_1, 4294967295u), arg_1) % vec3<u32>(32u));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~_wgslsmith_mod_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, 4294967295u, arg_2.a, 4294967295u), vec4<u32>(66135u, arg_2.a, arg_2.a, 1u)), select(46373u, 4294967295u, arg_2.b.x), ~79697u, _wgslsmith_add_u32(arg_2.a, 0u)), min(vec4<u32>(arg_2.a, firstTrailingBit(80124u), 40371u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, 1u, 33975u, 49094u), vec4<u32>(arg_2.a, arg_2.a, arg_2.a, 11871u))), abs(~vec4<u32>(arg_2.a, arg_2.a, 0u, 4294967295u))));
    var var_1 = Struct_1(112198u, !arg_0.xz, func_5(_wgslsmith_div_vec4_i32(func_4(Struct_2(vec2<bool>(arg_2.b.x, false), 0i, var_0.wzx), arg_0.ywx, vec4<u32>(arg_2.a, arg_2.a, var_0.x, 23780u), func_2(Struct_1(arg_2.a, vec2<bool>(arg_2.b.x, true), arg_2.c, arg_2.d), Struct_1(0u, arg_2.b, arg_2.c, arg_2.d))), countOneBits(vec4<i32>(-2147483647i, 1i, 0i, u_input.a.x)) & -vec4<i32>(arg_1, -2147483647i, arg_1, arg_2.c.x)), ~((arg_2.a & 4294967295u) ^ (80415u >> (var_0.x % 32u)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(1869f)), _wgslsmith_f_op_f32(ceil(1237f))));
    let var_2 = func_2(Struct_1(_wgslsmith_add_u32(func_2(Struct_1(63909u, arg_0.wx, var_1.c, vec2<f32>(arg_2.d.x, -440f)), arg_2).c.x, var_0.x), func_2(Struct_1(func_2(arg_2, Struct_1(var_1.a, arg_0.xx, var_1.c, vec2<f32>(var_1.d.x, arg_2.d.x))).c.x, var_1.b, var_1.c, vec2<f32>(var_1.d.x, var_1.d.x)), Struct_1(0u, arg_2.b, -arg_2.c, arg_2.d)).a, firstTrailingBit(-arg_2.c), var_1.d), Struct_1(reverseBits(0u), select(!vec2<bool>(arg_2.b.x, var_1.b.x), vec2<bool>(any(vec3<bool>(false, false, true)), arg_0.x), vec2<bool>(!arg_2.b.x, false)), firstTrailingBit(arg_2.c), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.d.x, -839f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1723f)))))));
    let var_3 = arg_2;
    var_1 = Struct_1(4294967295u, !func_2(arg_2, arg_2).a, vec3<i32>(_wgslsmith_div_i32(abs(1i >> (var_1.a % 32u)), _wgslsmith_add_i32(-var_1.c.x, ~arg_2.c.x)), arg_2.c.x, -_wgslsmith_div_i32(1i ^ var_2.b, 2147483647i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d.x, -428f)) + vec2<f32>(_wgslsmith_f_op_f32(2104f + arg_2.d.x), _wgslsmith_f_op_f32(-arg_2.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.d, var_3.d) * vec2<f32>(arg_2.d.x, 437f)))));
    return var_3;
}

fn func_6(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = !vec3<bool>(!any(!vec3<bool>(arg_0.b.x, true, false)), any(arg_0.b), true | arg_0.b.x);
    var var_1 = Struct_1(arg_0.a, arg_0.b, ~(~_wgslsmith_mult_vec3_i32(vec3<i32>(18635i, -1i, -47407i), _wgslsmith_sub_vec3_i32(vec3<i32>(27929i, u_input.a.x, u_input.a.x), arg_0.c))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0.d)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.d.x, -313f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.d)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2648f, -1051f) + arg_0.d))), arg_0.d, vec2<bool>(select(func_1(vec4<bool>(false, true, arg_0.b.x, var_0.x), 26079i, Struct_1(0u, arg_0.b, vec3<i32>(u_input.a.x, 1i, u_input.a.x), arg_0.d)).b.x, any(vec4<bool>(var_0.x, arg_0.b.x, false, arg_0.b.x)), false), all(!vec3<bool>(false, arg_0.b.x, var_0.x))))));
    var var_2 = arg_0;
    let var_3 = vec2<i32>(arg_0.c.x, _wgslsmith_add_i32(var_2.c.x, -4693i));
    var var_4 = func_2(arg_0, Struct_1(~(~_wgslsmith_mod_u32(6620u, 4294967295u)), !vec2<bool>(!var_2.b.x, !arg_0.b.x), var_2.c, var_1.d));
    return firstLeadingBit(vec4<i32>(-arg_0.c.x, -2147483647i, 7686i, -var_4.b));
}

fn func_7(arg_0: vec2<u32>, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -406f));
    let var_1 = Struct_1(87682u, func_1(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(false, false, false, false), true), -_wgslsmith_add_i32(34493i, u_input.a.x), Struct_1(~countOneBits(14546u), vec2<bool>(true, true), abs(_wgslsmith_div_vec3_i32(vec3<i32>(2623i, arg_1.x, -27133i), arg_1.zwx)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -419f), 612f))).b, _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-2147483647i, -8164i), ~_wgslsmith_div_i32(u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(abs(11765i), _wgslsmith_mult_i32(u_input.a.x, -1i))), arg_1.wyy), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-154f, -615f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1379f, 1069f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(498f, -318f) * vec2<f32>(110f, -1307f)))), true)));
    var var_2 = ~(~firstTrailingBit(vec3<u32>(72893u, 0u, var_1.a) ^ vec3<u32>(arg_0.x, arg_0.x, 1u)) | ~vec3<u32>(abs(0u), 0u, ~arg_0.x));
    var var_3 = _wgslsmith_add_i32(-12204i, -1i);
    var var_4 = func_2(var_1, var_1);
    return func_2(Struct_1(~1u, func_2(Struct_1(arg_0.x, var_1.b, ~var_1.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-523f, var_1.d.x) * var_1.d)), Struct_1(firstLeadingBit(0u), select(vec2<bool>(false, var_4.a.x), vec2<bool>(false, true), vec2<bool>(var_1.b.x, true)), arg_1.yyz, _wgslsmith_f_op_vec2_f32(var_1.d + var_1.d))).a, vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, var_1.c.x), var_1.c.x, 10947i) >> (~_wgslsmith_add_vec3_u32(var_4.c, var_4.c) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.d) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1272f, var_1.d.x)))) + var_1.d)), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(vec2<u32>(59206u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(5255u, 70095u))), ~25124u)), ~firstTrailingBit(func_6(func_1(vec4<bool>(true, false, true, false), 34315i, Struct_1(56511u, vec2<bool>(false, true), vec3<i32>(37765i, 68203i, 16320i), vec2<f32>(969f, 194f))))));
    var_0 = Struct_2(!var_0.a, u_input.a.x, _wgslsmith_sub_vec3_u32(min(var_0.c << (_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c.x, var_0.c.x, var_0.c.x), var_0.c) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(var_0.c.x, var_0.c.x), ~4294967295u, ~var_0.c.x)), ~var_0.c));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(895f, _wgslsmith_f_op_f32(select(930f, _wgslsmith_f_op_f32(f32(-1f) * -825f), !(!var_0.a.x)))) + _wgslsmith_f_op_f32(abs(-1849f)));
    var_0 = Struct_2(func_2(Struct_1(4294967295u, select(!var_0.a, !vec2<bool>(var_0.a.x, var_0.a.x), func_1(vec4<bool>(false, false, var_0.a.x, var_0.a.x), u_input.a.x, Struct_1(var_0.c.x, vec2<bool>(var_0.a.x, var_0.a.x), vec3<i32>(u_input.a.x, var_0.b, -1i), vec2<f32>(1145f, var_1))).b), max(select(vec3<i32>(u_input.a.x, u_input.a.x, var_0.b), vec3<i32>(u_input.a.x, 2147483647i, var_0.b), vec3<bool>(var_0.a.x, var_0.a.x, true)), vec3<i32>(u_input.a.x, 1i, var_0.b) | vec3<i32>(u_input.a.x, -7423i, -30681i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, var_1))))), func_1(vec4<bool>(all(vec4<bool>(false, false, true, var_0.a.x)), var_0.a.x, var_0.a.x, var_0.a.x), _wgslsmith_add_i32(select(var_0.b, u_input.a.x, true), firstTrailingBit(2147483647i)), Struct_1(var_0.c.x, vec2<bool>(var_0.a.x, var_0.a.x), -vec3<i32>(var_0.b, -14716i, 2147483647i), vec2<f32>(var_1, 315f)))).a, (~(~var_0.b) & _wgslsmith_add_i32(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, var_0.b, u_input.a.x))) | var_0.b, func_2(Struct_1(var_0.c.x, vec2<bool>(true, !var_0.a.x), vec3<i32>(0i, -67898i, _wgslsmith_div_i32(20708i, 43146i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 1347f)))), func_1(vec4<bool>(var_0.a.x, -505f <= var_1, any(vec3<bool>(false, var_0.a.x, var_0.a.x)), var_0.a.x), -(~(-40890i)), func_1(vec4<bool>(var_0.a.x, false, false, var_0.a.x), 1i, func_1(vec4<bool>(false, true, var_0.a.x, true), 0i, Struct_1(var_0.c.x, vec2<bool>(true, true), vec3<i32>(11093i, var_0.b, 2147483647i), vec2<f32>(var_1, -363f)))))).c);
    var var_2 = u_input.a;
    let var_3 = Struct_2(vec2<bool>(true, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(ceil(507f))), vec2<bool>(func_3(-1202f, vec2<bool>(var_0.a.x, true), vec3<u32>(var_0.c.x, 4294967295u, var_0.c.x), Struct_2(vec2<bool>(var_0.a.x, false), -31931i, vec3<u32>(var_0.c.x, var_0.c.x, var_0.c.x))).x, func_7(var_0.c.zx, vec4<i32>(-44710i, 9278i, 2147483647i, 0i)).a.x), ~(~var_0.c), Struct_2(select(var_0.a, var_0.a, vec2<bool>(var_0.a.x, true)), var_2.x, _wgslsmith_add_vec3_u32(var_0.c, var_0.c))).x), (2147483647i | firstTrailingBit(1i | var_0.b)) ^ reverseBits(50307i), max(vec3<u32>(var_0.c.x, ~var_0.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, 100226u, var_0.c.x), ~var_0.c)), var_0.c ^ select(var_0.c, firstLeadingBit(vec3<u32>(19017u, var_0.c.x, var_0.c.x)), select(vec3<bool>(true, true, var_0.a.x), vec3<bool>(var_0.a.x, false, false), vec3<bool>(var_0.a.x, false, var_0.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-572f, var_1)), var_3.c.x, abs(~(-22181i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1557f))))));
}

