struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(select(vec4<bool>(false, true, true, !any(vec2<bool>(true, true))), select(vec4<bool>(select(true, true, false), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false))), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), true)), select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, false, true)) || true, true, true), !select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), true)));
    var var_1 = Struct_4(firstLeadingBit(~1024u), Struct_1(-(vec2<i32>(-1i) * -vec2<i32>(-1i, 2147483647i)), 1u, _wgslsmith_div_u32(u_input.a.x, reverseBits(countOneBits(82204u))), true), vec2<i32>(min(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-57536i, 19571i, 1i, 1i), vec4<i32>(1i, 2147483647i, 21653i, 13735i))) >> (((u_input.c >> (1u % 32u)) | (4294967295u | u_input.b.x)) % 32u), min(-31032i, 1i)), select(!var_0.a, var_0.a, !any(select(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.b.x, false, false, var_0.b.x), var_0.b.x))), var_0.a);
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_mult_i32(~(-var_1.b.a.x), var_1.b.a.x), -(~_wgslsmith_add_i32(35551i, 22167i)), firstTrailingBit(firstLeadingBit(-8208i))), vec4<i32>(_wgslsmith_clamp_i32(1i | _wgslsmith_div_i32(var_1.c.x, -21365i), var_1.b.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.b.a.x, 60476i, -28098i), vec3<i32>(-37514i, 73653i, var_1.b.a.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.b.a.x, var_1.c.x, var_1.c.x), vec3<i32>(0i, var_1.b.a.x, 1i), vec3<i32>(var_1.b.a.x, -2147483647i, var_1.c.x)))), var_1.b.a.x, -(~(var_1.c.x & -2147483647i)), _wgslsmith_sub_i32(0i, _wgslsmith_div_i32(var_1.b.a.x, ~(-1i)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(286f, -737f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2074f * 396f))) <= 298f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-255f, 956f), _wgslsmith_f_op_f32(round(-168f)))))));
    var var_4 = max(1u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(reverseBits(~u_input.a.yz), vec2<u32>(9518u, var_1.a)), ~_wgslsmith_mult_u32(var_1.a | 4294967295u, ~u_input.c)));
    return 8832u;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: u32, arg_3: u32) -> vec2<bool> {
    let var_0 = 24625u;
    global0 = true;
    var var_1 = Struct_2(vec4<bool>(u_input.b.x <= (countOneBits(45020u) >> (~var_0 % 32u)), true, any(vec3<bool>(false, true, true)), true), !select(select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), arg_2 > 22022u), vec3<bool>(true, false, all(vec4<bool>(false, true, false, true))), true));
    let var_2 = true;
    let var_3 = !select(vec2<bool>(true, true), var_1.b.xx, all(select(vec3<bool>(false, var_1.b.x, var_2), !var_1.a.zxy, select(var_1.a.zwx, var_1.b, vec3<bool>(var_1.a.x, false, var_1.a.x)))));
    return var_3;
}

fn func_5(arg_0: f32, arg_1: vec3<u32>, arg_2: u32, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(447f));
    var var_1 = Struct_3(_wgslsmith_mult_u32(max(arg_1.x, func_3()), ~(~0u)), Struct_2(vec4<bool>(true, true, true, true), !(!(!vec3<bool>(arg_3, true, arg_3)))), Struct_1(select(_wgslsmith_clamp_vec2_i32(min(vec2<i32>(1i, -67462i), vec2<i32>(7662i, -1i)), vec2<i32>(-3825i, 73227i), vec2<i32>(-1i, -8458i)), ~vec2<i32>(1i, 1i), !(!vec2<bool>(arg_3, true))), ~u_input.b.x, arg_2, _wgslsmith_dot_vec4_u32(vec4<u32>(24236u, arg_1.x, u_input.b.x, 47082u) & u_input.b, max(vec4<u32>(u_input.b.x, arg_2, arg_1.x, arg_2), u_input.b)) < ~88438u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, arg_0, -2049f, -1026f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-483f, -140f, 334f, arg_0)))))), max(vec4<i32>(-1i, 0i, ~(-8372i) << (countOneBits(96749u) % 32u), abs(~1i)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 30645i), ~vec2<i32>(-11566i, -81413i)), _wgslsmith_add_i32(select(-17689i, 0i, false), 1i), ~(-2147483647i), select(_wgslsmith_div_i32(0i, -8126i), 1i, arg_3 || arg_3))));
    let var_2 = Struct_3(u_input.a.x, Struct_2(var_1.b.a, select(var_1.b.b, !(!var_1.b.b), select(var_1.c.d, true, true))), Struct_1(select(vec2<i32>(~0i, var_1.c.a.x), countOneBits(vec2<i32>(-1i, -277i) << (arg_1.zy % vec2<u32>(32u))), true), ~(~0u) & _wgslsmith_dot_vec3_u32(u_input.b.xzy, vec3<u32>(arg_2, 35825u, arg_1.x)), var_1.a, !(true && arg_3)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_0, -777f)), arg_0, var_0 < -164f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-946f, 1434f)))) + _wgslsmith_div_f32(2286f, _wgslsmith_f_op_f32(ceil(var_0)))), _wgslsmith_f_op_f32(104f * -111f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-839f))))), -(~firstTrailingBit(var_1.e)) >> (vec4<u32>(~_wgslsmith_mult_u32(arg_2, var_1.a), u_input.c, 35843u, ~21352u ^ var_1.a) % vec4<u32>(32u)));
    let var_3 = Struct_3(_wgslsmith_dot_vec4_u32(u_input.b, ~reverseBits(vec4<u32>(0u, 2344u, 4294967295u, 1u) | vec4<u32>(var_2.c.c, var_2.c.c, 25984u, 4294967295u))), var_2.b, Struct_1(-(~vec2<i32>(var_1.c.a.x, var_2.c.a.x)), min(~(1u & var_1.a), arg_1.x), 38305u, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.d * vec4<f32>(var_1.d.x, 462f, 439f, _wgslsmith_f_op_f32(exp2(arg_0))))), vec4<i32>(24773i, ~(var_1.c.a.x << (func_3() % 32u)), var_1.e.x, var_2.e.x));
    var var_4 = Struct_4(~(~_wgslsmith_add_u32(var_3.c.c, _wgslsmith_div_u32(arg_1.x, 40583u))), var_2.c, -var_1.e.zx, select(var_1.b.a, !select(var_1.b.a, var_3.b.a, !arg_3), all(var_1.b.b.zy) && arg_3), !(!(!(!vec4<bool>(false, true, var_3.b.b.x, false)))));
    return 0i;
}

fn func_2(arg_0: vec3<f32>) -> bool {
    var var_0 = vec4<i32>(-1i, i32(-1i) * -1i, 1i, func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_0.x)))) * _wgslsmith_f_op_f32(501f + _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)))), vec3<u32>(~1u, u_input.c, u_input.a.x), 27118u, any(func_4(~vec3<u32>(u_input.c, u_input.b.x, 46211u), vec3<i32>(-40074i, -102231i, -39611i), func_3(), 0u))));
    global0 = all(vec3<bool>(all(func_4(vec3<u32>(1u, 14078u, 4294967295u), vec3<i32>(-57246i, var_0.x, var_0.x) << (u_input.b.yyx % vec3<u32>(32u)), _wgslsmith_add_u32(u_input.c, u_input.a.x), 1u)), all(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true))));
    let var_1 = true & any(vec4<bool>(true, true, u_input.c <= ~u_input.c, true));
    let var_2 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-23559i, ~11525i), -vec2<i32>(var_0.x, i32(-1i) * -9941i)), 37105u, ~1385u, all(func_4(abs(abs(u_input.a.xxx)), var_0.yyx, ~0u, 0u)));
    var var_3 = !vec2<bool>(func_4(_wgslsmith_mod_vec3_u32(u_input.a.xzy, vec3<u32>(var_2.c, var_2.b, 0u)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, -1i, -1i), vec3<i32>(0i, 0i, var_0.x)), ~0u, var_2.c).x && var_2.d, !var_2.d);
    return true;
}

fn func_1(arg_0: vec4<u32>) -> vec2<bool> {
    var var_0 = false;
    let var_1 = 146f;
    global0 = ~_wgslsmith_dot_vec3_u32(arg_0.zxy, vec3<u32>(~7236u, 0u, 0u)) <= 80859u;
    let var_2 = -455f;
    return select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), func_2(vec3<f32>(var_1, 606f, var_1))), !(661f < var_1)), vec2<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-918f, 778f, true)), _wgslsmith_f_op_f32(var_2 * var_1))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_1)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(any(func_4(vec3<u32>(u_input.a.x, arg_0.x, 29919u), vec3<i32>(-54063i, 16002i, -81749i), 0u, 40927u)), !func_2(vec3<f32>(var_1, 403f, var_2))), true));
}

fn func_6(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<f32>) -> Struct_2 {
    global0 = !(!any(!select(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(false, false, true, arg_1.x), vec4<bool>(arg_1.x, false, false, true))));
    global0 = true;
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.x, arg_2.x)) - _wgslsmith_f_op_f32(arg_2.x + arg_2.x)), -777f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(158f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))))));
    var var_1 = !(!select(vec4<bool>(true, !arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x || true, true, true, arg_1.x), func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 0u, 14962u), u_input.a)).x));
    var var_2 = all(vec2<bool>(arg_1.x, false));
    return Struct_2(!vec4<bool>(any(arg_1), var_1.x, select(false, true, var_1.x || var_1.x), false), var_1.xzy);
}

fn func_7(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_2 {
    global0 = (max(-1i, -arg_3.a.x) >= -94986i) && arg_0.b.x;
    let var_0 = Struct_2(select(select(!(!vec4<bool>(false, true, arg_2.x, false)), vec4<bool>(arg_3.d, true, arg_3.d == arg_0.a.x, any(vec3<bool>(arg_3.d, arg_2.x, arg_2.x))), select(arg_0.a, !vec4<bool>(arg_2.x, arg_2.x, true, true), arg_0.b.x & arg_2.x)), arg_0.a, vec4<bool>(arg_0.b.x, any(arg_0.b) | true, true, _wgslsmith_sub_u32(u_input.b.x, 0u) == ~57907u)), vec3<bool>(!(arg_3.d && true), !all(!vec3<bool>(false, arg_0.b.x, arg_2.x)), func_4(u_input.b.wzy, _wgslsmith_clamp_vec3_i32(reverseBits(arg_1), vec3<i32>(arg_1.x, arg_1.x, 1i), vec3<i32>(arg_3.a.x, 14607i, arg_3.a.x)), u_input.b.x, func_3()).x));
    var var_1 = Struct_4(_wgslsmith_add_u32(0u, 4294967295u), arg_3, ~vec2<i32>(~(~arg_1.x), -1i), select(arg_0.a, var_0.a, vec4<bool>(false, all(!vec3<bool>(true, true, arg_2.x)), arg_2.x, true)), select(select(vec4<bool>(arg_3.d, var_0.b.x | arg_3.d, !arg_3.d, !arg_2.x), !(!var_0.a), !vec4<bool>(var_0.a.x, false, true, arg_2.x)), !(!select(vec4<bool>(true, arg_0.a.x, false, false), arg_0.a, vec4<bool>(false, arg_3.d, var_0.a.x, true))), u_input.b.x < reverseBits(5809u)));
    let var_2 = Struct_4(abs(arg_3.c), Struct_1(min(~arg_1.yy, var_1.c) << (u_input.a.yx % vec2<u32>(32u)), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(_wgslsmith_div_u32(arg_3.b, var_1.a), _wgslsmith_dot_vec3_u32(u_input.b.yyy, u_input.a.xxx), ~arg_3.c, countOneBits(57927u))), arg_3.b, false), _wgslsmith_mod_vec2_i32(max(firstLeadingBit(vec2<i32>(-1i, var_1.c.x)), -(~arg_3.a)), var_1.b.a), vec4<bool>(any(select(!vec4<bool>(true, arg_2.x, true, false), var_1.d, vec4<bool>(false, true, false, arg_3.d))), !arg_2.x, ((var_1.b.a.x | var_1.b.a.x) >> (~0u % 32u)) >= arg_1.x, true), select(vec4<bool>(false, all(vec4<bool>(arg_3.d, var_1.d.x, arg_0.a.x, arg_0.a.x)), arg_3.d, true), !select(func_6(1u, vec2<bool>(true, arg_0.a.x), vec3<f32>(629f, -662f, 1369f)).a, vec4<bool>(true, var_0.b.x, arg_0.a.x, false), func_6(var_1.b.b, arg_2, vec3<f32>(1918f, 308f, 195f)).a), var_0.a.x));
    var var_3 = firstTrailingBit(vec2<u32>(var_1.a, _wgslsmith_mult_u32(53314u, 4661u)));
    return func_6(var_3.x ^ (~var_2.a << (countOneBits(var_2.b.b) % 32u)), !select(!(!var_1.e.ww), !vec2<bool>(true, var_0.b.x), var_2.e.x || arg_0.b.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-144f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1929f + 208f), _wgslsmith_f_op_f32(ceil(-1442f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1465f, _wgslsmith_f_op_f32(-1501f * 464f), true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2724f * -284f))), _wgslsmith_f_op_f32(sign(305f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    let var_0 = 0u;
    var var_1 = _wgslsmith_dot_vec4_i32((vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(1i, 5277i, 1i, 58574i))) & _wgslsmith_add_vec4_i32(-max(vec4<i32>(2147483647i, 4318i, -49705i, -3791i), vec4<i32>(-1i, 25496i, -15743i, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(-7491i, 2147483647i, -2147483647i, -2147483647i), vec4<i32>(2147483647i, 20687i, -45590i, 2147483647i))), _wgslsmith_add_vec4_i32(-vec4<i32>(firstTrailingBit(-11585i), _wgslsmith_clamp_i32(-1i, 4397i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(3320i, 4474i, -17909i, 829i), vec4<i32>(2147483647i, 1998i, 9090i, 1066i)), 1i), ~vec4<i32>(-2147483647i, 81774i, -16723i, -35598i)));
    global0 = true;
    var var_2 = Struct_3(select(0u, var_0 >> (u_input.c % 32u), true), func_7(func_6(9778u, !func_1(vec4<u32>(4294967295u, u_input.a.x, var_0, u_input.c)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-163f, 697f, 125f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(943f, 826f, 1668f))))), select(~vec3<i32>(701i, 20706i, 2147483647i) >> (u_input.a.xyx % vec3<u32>(32u)), vec3<i32>(i32(-1i) * -7412i, abs(12667i), 27910i), !func_4(vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x), vec3<i32>(0i, 25842i, -2147483647i), 65969u, 23998u).x), vec2<bool>(true, !all(vec4<bool>(false, false, false, false))), Struct_1(vec2<i32>(_wgslsmith_div_i32(2147483647i, 9294i), select(29047i, -38535i, false)), u_input.b.x, 2199u, any(vec4<bool>(false, true, true, true)))), Struct_1(vec2<i32>(1i, ~1i), reverseBits(~var_0), func_3(), _wgslsmith_f_op_f32(ceil(-1555f)) == _wgslsmith_f_op_f32(max(-910f, -214f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -526f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(405f)), _wgslsmith_div_f32(-2875f, -869f), true)), _wgslsmith_f_op_f32(ceil(591f)), -466f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-228f, -105f, 875f, 580f), vec4<f32>(2770f, -267f, -1159f, 1357f)))), vec4<f32>(_wgslsmith_f_op_f32(-474f - -1755f), _wgslsmith_f_op_f32(trunc(-3580f)), -2408f, _wgslsmith_f_op_f32(f32(-1f) * -426f)))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 18652i, -51526i, 16251i), firstTrailingBit(vec4<i32>(-62575i, 0i, 1i, -32923i))) ^ vec4<i32>(~8813i, 1i, _wgslsmith_clamp_i32(-2147483647i, 0i, 40672i), -4202i >> (u_input.b.x % 32u)), -(~vec4<i32>(1i, 56604i, -1i, 0i)) << (~vec4<u32>(u_input.b.x, 1u, 4294967295u, 874u) % vec4<u32>(32u))));
    let var_3 = var_2.b;
    let var_4 = var_2.c;
    let var_5 = abs(5574u);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec4_i32(var_2.e, _wgslsmith_clamp_vec4_i32(-vec4<i32>(55424i, var_2.e.x, var_2.c.a.x, -32249i), var_2.e, select(vec4<i32>(0i, 0i, var_4.a.x, 0i), var_2.e, true))), vec4<i32>(_wgslsmith_mod_i32(-29215i, -37927i), firstLeadingBit(~(-1i)), ~_wgslsmith_mod_i32(var_4.a.x, 15648i), firstLeadingBit(~var_2.c.a.x)), false));
}

