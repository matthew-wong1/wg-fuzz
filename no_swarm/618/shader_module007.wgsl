struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32 = 4294967295u;

var<private> global2: bool = false;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> i32 {
    let var_0 = vec4<bool>(any(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_1.x)), -298f)))) >= arg_0, any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, all(vec3<bool>(true, true, true))))), !(0i <= select(1i, -26909i << (1u % 32u), false)));
    let var_1 = 1u;
    var var_2 = abs(~(_wgslsmith_clamp_u32(abs(4294967295u), _wgslsmith_mult_u32(var_1, 0u), 1u) & 0u));
    let var_3 = ~_wgslsmith_mod_u32(var_1, var_1);
    var var_4 = !vec3<bool>(var_0.x, any(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.zxw, var_0.x)), var_0.x);
    return u_input.c.x;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: f32) -> Struct_1 {
    var var_0 = arg_2;
    global0 = _wgslsmith_add_i32(func_3(-919f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_2 * arg_2), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(f32(-1f) * -1086f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -1031f, arg_2) - vec3<f32>(arg_2, arg_2, arg_2)))), vec3<bool>(false, true, -1283f < arg_2)))), firstTrailingBit(_wgslsmith_dot_vec2_i32(~u_input.a, ~arg_1.wy)));
    let var_1 = vec3<bool>(!all(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true), true)), false, all(vec3<bool>(!any(vec4<bool>(true, false, true, false)), all(vec3<bool>(false, false, true)), true)));
    let var_2 = any(select(vec2<bool>(arg_1.x != arg_1.x, arg_1.x != arg_1.x), select(vec2<bool>(-2147483647i <= u_input.a.x, !var_1.x), vec2<bool>(var_1.x, var_1.x), !(!vec2<bool>(var_1.x, var_1.x))), false));
    let var_3 = Struct_1(_wgslsmith_div_f32(arg_2, arg_2), ~max(_wgslsmith_div_vec3_u32(vec3<u32>(27631u, 42102u, arg_0) >> (vec3<u32>(arg_0, 12446u, arg_0) % vec3<u32>(32u)), vec3<u32>(arg_0, arg_0, arg_0)), _wgslsmith_mult_vec3_u32(~vec3<u32>(62116u, 1u, 0u), ~vec3<u32>(arg_0, 130891u, 19497u))), var_1, vec2<bool>(select(false, ~u_input.c.x <= arg_1.x, !all(vec2<bool>(var_2, var_1.x))), any(select(vec3<bool>(false, true, false), var_1, vec3<bool>(var_1.x, false, false)))), var_1.zz);
    return Struct_1(-897f, var_3.b, !var_3.c, select(vec2<bool>(false, false), !var_3.c.yy, var_1.x & false), !(!var_3.e));
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = 82893u;
    var var_1 = false;
    let var_2 = firstLeadingBit(vec3<u32>(var_0, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(50624u, 0u, var_0, 1u)), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, var_0), arg_0.b.xx), abs(var_0), ~4294967295u)), firstTrailingBit(~4294967295u << ((arg_0.b.x & var_0) % 32u))));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, -1248f, 1592f), vec3<f32>(arg_0.a, arg_0.a, arg_0.a)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2325f, arg_0.a, 631f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(272f, 914f, arg_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(880f, 636f, arg_0.a)))), any(func_2(1u, vec4<i32>(0i, u_input.c.x, 0i, u_input.b.x), arg_0.a).c))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1505f, arg_0.a, arg_0.a)))))))));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.x + var_3.x), -1437f))), var_3.x, arg_0.c.x)), -1135f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)));
    return any(!(!(!vec4<bool>(arg_0.e.x, false, arg_0.d.x, arg_0.c.x))));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> vec2<bool> {
    global2 = select(all(select(!(!vec3<bool>(arg_1, arg_1, true)), !(!vec3<bool>(arg_1, true, true)), vec3<bool>(true, true, true))), any(vec4<bool>(false, true, 445f <= _wgslsmith_f_op_f32(trunc(735f)), false)), true);
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-490f, -424f, 744f, 332f), vec4<f32>(2136f, -782f, 1000f, 573f)), vec4<f32>(-120f, -2003f, 1240f, -977f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(345f, -1698f, -644f, -675f), vec4<f32>(531f, 844f, -151f, 1791f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1134f, 278f, -1503f, -109f) + vec4<f32>(622f, 232f, 1000f, 935f)), false)), !arg_1 || select(arg_1, true, arg_1))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1187f, -964f, -2004f, -230f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1147f, -1251f, 1000f, 510f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-512f, -850f, -2084f, 339f))), vec4<bool>(arg_1, true, arg_1, arg_1)))))));
    var var_1 = vec3<bool>(!arg_1, !(!func_4(func_2(27769u, u_input.c, -3241f))), !((any(vec3<bool>(arg_1, arg_1, false)) & !arg_1) | (_wgslsmith_clamp_u32(0u, 1u, 52239u) != 1u)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), ~_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(1u, 1u, 36786u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 12025u, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 5469u, 4294967295u), vec3<u32>(18721u, 1u, 4294967295u)), max(vec3<u32>(5264u, 0u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u))), reverseBits(vec3<u32>(1u, 1u, 1u))), !vec3<bool>(var_1.x, false, true), !vec2<bool>(arg_1, true), !(!var_1.yy));
    let var_3 = select(~_wgslsmith_sub_vec2_i32(u_input.c.zz, _wgslsmith_sub_vec2_i32(-u_input.b.xy, u_input.b.yz)), select(select(arg_0.yy, _wgslsmith_mult_vec2_i32(arg_0.zy, vec2<i32>(arg_0.x, arg_0.x) ^ vec2<i32>(-48236i, 41455i)), vec2<bool>(0u < var_2.b.x, var_1.x)), -select(firstLeadingBit(vec2<i32>(arg_0.x, u_input.b.x)), u_input.a ^ arg_0.xz, vec2<bool>(var_1.x, var_1.x)), false), vec2<bool>(func_2(var_2.b.x, ~select(vec4<i32>(2147483647i, -71548i, u_input.c.x, 1918i), vec4<i32>(-2147483647i, 6468i, u_input.a.x, arg_0.x), var_2.d.x), -735f).c.x, false));
    return !vec2<bool>(!var_1.x, var_1.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    var var_0 = ~reverseBits(abs(vec4<u32>(1u, _wgslsmith_mult_u32(arg_2.x, arg_1.b.x), 1u, abs(13577u))));
    var var_1 = ~_wgslsmith_mult_i32(u_input.c.x, u_input.c.x);
    global2 = !(!arg_0.e.x);
    let var_2 = _wgslsmith_sub_vec4_i32(select(_wgslsmith_clamp_vec4_i32(~min(u_input.c, vec4<i32>(u_input.b.x, u_input.a.x, 0i, u_input.b.x)), select(abs(u_input.c), vec4<i32>(-40536i, 10126i, u_input.a.x, 1i) & vec4<i32>(-2147483647i, 0i, u_input.c.x, u_input.a.x), arg_1.d.x), _wgslsmith_add_vec4_i32(~u_input.c, vec4<i32>(u_input.b.x, u_input.a.x, 2227i, u_input.b.x))), ~countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(16691i, -35185i, -2147483647i, -41574i), vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.a.x))), select(!vec4<bool>(arg_1.e.x, arg_0.d.x, true, true), vec4<bool>(true, func_4(arg_0), select(arg_0.e.x, arg_1.e.x, true), true), vec4<bool>(u_input.b.x >= 6112i, arg_1.c.x == arg_0.c.x, true, arg_1.c.x))), u_input.c);
    let var_3 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c.zyw, -vec3<i32>(28923i, firstTrailingBit(-7970i), _wgslsmith_dot_vec3_i32(u_input.b, var_2.xyw))), abs(abs(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.c.x, var_2.x), vec3<i32>(var_2.x, u_input.a.x, 0i)))));
    return _wgslsmith_add_u32(arg_0.b.x, min(56672u, 69500u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mod_u32(~(~1u), 1u);
    global1 = func_5(Struct_1(-1064f, ~(~vec3<u32>(37952u, 25210u, 0u)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true)), vec2<bool>(false, true), func_1(_wgslsmith_mult_vec3_i32(~u_input.b, ~u_input.b), true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(420f)))), ~countOneBits(firstTrailingBit(vec3<u32>(51624u, 692u, 8910u))), func_2(~_wgslsmith_add_u32(71495u, 4331u), countOneBits(u_input.c) >> (firstTrailingBit(vec4<u32>(102360u, 1u, 4294967295u, 0u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1316f)).c, !vec2<bool>(true, u_input.c.x < -45949i), select(vec2<bool>(true, true), !func_1(u_input.c.zyz, false), vec2<bool>(true, false))), vec3<u32>(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(82227u, 1275u, 1u), vec3<u32>(1u, 1u, 1u))), 0u, (_wgslsmith_clamp_u32(0u, 49696u, 1u) | 12586u) ^ 1u));
    var var_0 = -(~(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b.x, 6031i), u_input.b.x) >> ((~4294967295u << (0u % 32u)) % 32u)));
    global0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-abs(-1i << (1u % 32u)), 45059i), _wgslsmith_div_vec2_u32(~(~vec2<u32>(2648u, 17830u)), vec2<u32>(_wgslsmith_clamp_u32(101869u, 1u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(58480u, 3331u, 37239u), vec3<u32>(29805u, 1u, 0u)))) ^ ~_wgslsmith_clamp_vec2_u32(vec2<u32>(22128u, 98000u), vec2<u32>(1u, 1u), ~vec2<u32>(52474u, 0u)), 30185u);
}

