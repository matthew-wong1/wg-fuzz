struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-585f, vec3<i32>(-1i, 33772i, i32(-2147483648)), 0u, true, vec3<bool>(false, false, true));

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: vec4<f32>) -> i32 {
    global1 = Struct_1(_wgslsmith_f_op_f32(select(919f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -497f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), global0.e.x != !any(global1.e.xy))), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -arg_1, global0.b.x), -vec3<i32>(_wgslsmith_div_i32(global1.b.x, arg_1), 2147483647i, -13808i)), 34147u, global1.c <= ~max(_wgslsmith_add_u32(global0.c, u_input.c.x), countOneBits(64789u)), select(select(!select(vec3<bool>(true, global0.e.x, global1.d), global0.e, vec3<bool>(false, global1.e.x, global1.d)), vec3<bool>(arg_1 != u_input.a, !global1.e.x, all(vec4<bool>(false, global0.e.x, true, false))), false), global0.e, !global0.e.x));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(global1.a * -1168f))), -_wgslsmith_clamp_vec3_i32(u_input.b.xwx, -vec3<i32>(u_input.a, -1i, 9433i), abs(global0.b) | -vec3<i32>(u_input.b.x, 1i, 40094i)), _wgslsmith_clamp_u32(abs(~global1.c), 0u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(global0.c, 112011u, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 91925u, global1.c), vec3<u32>(0u, 1u, 0u), vec3<u32>(38366u, 0u, global1.c))), ~vec3<u32>(u_input.c.x, 1u, 6020u) >> (vec3<u32>(0u, global1.c, 0u) % vec3<u32>(32u)))), any(!select(global1.e.xy, !global1.e.yx, !vec2<bool>(global1.e.x, global0.d))), vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-369f, 694f)) > _wgslsmith_f_op_f32(1712f - global0.a), select(true, true, -1i > u_input.a) || !global0.e.x));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + 153f)) * -1374f), vec3<i32>(u_input.a, ~firstTrailingBit(1i), -_wgslsmith_mod_i32(-11678i, _wgslsmith_dot_vec2_i32(global0.b.xz, global0.b.yz))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.c, _wgslsmith_mod_u32(1u, 134206u), _wgslsmith_sub_u32(4294967295u, 39688u)), select(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(17204u, 4294967295u, 58542u, 39827u), vec4<u32>(1u, 4294967295u, global0.c, var_0.c), vec4<u32>(0u, 0u, 1u, 0u)), vec4<u32>(50839u, u_input.c.x, global1.c, 0u)), vec4<u32>(_wgslsmith_mod_u32(41693u, var_0.c), 0u, ~global1.c, select(u_input.c.x, 4294967295u, false)), false)), !(!global0.d), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a))) > -258f, all(select(vec4<bool>(false, global0.e.x, false, global0.e.x), !vec4<bool>(global0.d, false, global0.e.x, true), vec4<bool>(false, false, global0.d, false))), false));
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), var_1.a)) - global0.a), firstTrailingBit(abs(global0.b)), _wgslsmith_mod_u32(global1.c, 4294967295u & ~(~u_input.c.x)), true, vec3<bool>(true, all(global0.e), true));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1396f - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.a, arg_0))))), reverseBits(~global1.b | var_1.b), var_1.c, !var_0.d, select(!(!var_1.e), vec3<bool>(!(!global1.d), true, var_0.e.x), vec3<bool>(global0.e.x, false, false)));
    return ~abs(1i);
}

fn func_2() -> u32 {
    var var_0 = vec4<i32>(global0.b.x, select(func_3(_wgslsmith_f_op_f32(global0.a * 1309f), countOneBits(~u_input.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global1.a)))), vec4<f32>(_wgslsmith_f_op_f32(-global1.a), global1.a, -1108f, 1204f)), global1.b.x, global0.d), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.b, firstTrailingBit(u_input.b)), global1.b.x), _wgslsmith_dot_vec3_i32(global1.b, countOneBits(_wgslsmith_sub_vec3_i32(global1.b, u_input.b.xyw)) >> (vec3<u32>(_wgslsmith_mult_u32(global0.c, u_input.c.x), u_input.c.x, 1u) % vec3<u32>(32u))));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.a, global1.a))), 508f)), _wgslsmith_sub_vec3_i32(-global1.b, global1.b), ~abs(_wgslsmith_div_u32(21046u | global1.c, 0u)), select(all(select(global1.e, select(vec3<bool>(false, false, global1.d), vec3<bool>(global0.d, global0.d, true), false), !global0.e)), true, global1.d), vec3<bool>(global1.b.x >= -18150i, !(global0.d | global1.d) && false, all(!vec4<bool>(global1.d, false, false, false))));
    let var_1 = 138f;
    global1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a * global1.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.a, global0.a)) * _wgslsmith_f_op_f32(var_1 + 1200f))))), (vec3<i32>(global1.b.x, 0i, -57429i) ^ min(var_0.zyw | vec3<i32>(2147483647i, global1.b.x, u_input.b.x), u_input.b.zzx)) & ~global0.b, 2239u, true, global1.e);
    let var_2 = Struct_2(select(global1.b.zz, vec2<i32>(-(u_input.a | -6223i), var_0.x << (~23847u % 32u)), global1.e.yy), 0i, Struct_1(_wgslsmith_f_op_f32(select(-1070f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f + global0.a)), true)), _wgslsmith_clamp_vec3_i32(global1.b, (vec3<i32>(global0.b.x, 18555i, -35267i) | var_0.xww) ^ _wgslsmith_mod_vec3_i32(u_input.b.zxx, var_0.yxy), abs(_wgslsmith_sub_vec3_i32(var_0.wxy, vec3<i32>(-1i, global1.b.x, var_0.x)))), ~1u, all(select(global0.e, global1.e, global1.d)), !vec3<bool>(!global1.d, true, true)), 0u, Struct_1(var_1, u_input.b.wwy, 4294967295u, true, global1.e));
    return countOneBits(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.d, global0.c), reverseBits(vec2<u32>(88926u, u_input.c.x)))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_2(vec2<i32>(~global0.b.x, abs(u_input.b.x)), -25866i, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.a + arg_1.a))), countOneBits(~_wgslsmith_div_vec3_i32(u_input.b.wxz, vec3<i32>(10046i, 2147483647i, arg_1.b.x))), _wgslsmith_add_u32(~global0.c ^ global1.c, 1u), ((i32(-1i) * -8389i) >> ((arg_1.c >> (arg_1.c % 32u)) % 32u)) < ~global1.b.x, select(select(vec3<bool>(false, global0.e.x, arg_2), vec3<bool>(false, arg_3, global1.d), global0.e), select(!vec3<bool>(false, false, arg_3), select(global1.e, arg_1.e, arg_1.e.x), 1573f == arg_1.a), arg_1.e)), abs(1u ^ _wgslsmith_add_u32(global0.c, u_input.c.x)) >> (func_2() % 32u), arg_1);
    global1 = Struct_1(_wgslsmith_f_op_f32(797f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1786f + var_0.c.a), global1.a)), var_0.e.a, arg_1.e.x))), min(_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_0, global0.b.x, 45530i), abs(~u_input.b.xyw)), ~(~firstTrailingBit(global0.b))), _wgslsmith_sub_u32(global0.c ^ (~global0.c ^ (global0.c << (var_0.e.c % 32u))), select(1u, 48724u >> (1u % 32u), !(-809f != arg_1.a))), any(!arg_1.e.xy), global0.e);
    let var_1 = Struct_2(u_input.b.yx, (global0.b.x | (_wgslsmith_add_i32(68892i, -7202i) & select(var_0.a.x, -3351i, false))) | -1i, arg_1, ~0u, var_0.c);
    global0 = Struct_1(_wgslsmith_f_op_f32(-var_1.c.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.b.x, i32(-1i) * -15613i, -var_1.e.b.x), _wgslsmith_clamp_vec3_i32(countOneBits(arg_1.b), abs(u_input.b.xwx), _wgslsmith_mod_vec3_i32(var_1.e.b, _wgslsmith_mult_vec3_i32(var_1.c.b, var_1.c.b))), -reverseBits(global0.b)), _wgslsmith_sub_u32(countOneBits(global0.c), firstTrailingBit(~0u)), !all(vec3<bool>(true, true, true)), var_1.c.e);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.a, 919f, 397f) + vec3<f32>(var_0.c.a, 179f, var_0.c.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(284f, global1.a, var_1.c.a) + vec3<f32>(global0.a, -955f, 390f)), any(var_1.e.e.xz)))))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.c.a, -136f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1.e.a, 1397f))))))));
    return Struct_1(-1000f, abs(arg_1.b ^ _wgslsmith_clamp_vec3_i32(~vec3<i32>(-17805i, global1.b.x, var_0.c.b.x), select(u_input.b.zyz, vec3<i32>(var_0.e.b.x, var_1.e.b.x, 21535i), vec3<bool>(true, var_1.e.d, var_1.c.e.x)), var_0.e.b)), global0.c ^ ~_wgslsmith_mult_u32(arg_1.c, 36031u), arg_2, !vec3<bool>(false, !all(global0.e.xy), all(global1.e.xx)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = arg_3.c;
    let var_1 = ~1693u;
    let var_2 = true;
    var var_3 = all(select(!select(!vec4<bool>(global1.e.x, var_2, true, var_2), select(vec4<bool>(false, var_2, arg_3.e.e.x, false), vec4<bool>(false, arg_2.c.e.x, var_0.d, global1.d), true), !vec4<bool>(var_2, false, global0.e.x, global0.d)), vec4<bool>(true, (var_0.d && var_0.e.x) && var_0.d, !(-1446f <= var_0.a), _wgslsmith_f_op_f32(-arg_3.c.a) < 1836f), global0.e.x));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + var_0.a), ~((var_0.b << ((vec3<u32>(global1.c, 96355u, 141130u) >> (arg_0 % vec3<u32>(32u))) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_i32(var_0.b, select(vec3<i32>(arg_2.c.b.x, u_input.b.x, 2147483647i), vec3<i32>(1i, 8250i, global1.b.x), true))), abs(global0.c), !arg_2.c.e.x, global0.e);
    return vec2<bool>(all(select(vec3<bool>(true, arg_2.c.e.x, true), !vec3<bool>(true, var_0.d, false), arg_3.c.e)), global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(func_4(vec3<u32>(global0.c, ~global0.c, min(4294967295u, 4294967295u)), vec2<i32>(global1.b.x, abs(2147483647i)), Struct_2(global1.b.yy, _wgslsmith_div_i32(1i, 1i), func_1(2147483647i, Struct_1(-142f, u_input.b.xzy, 8811u, true, global0.e), global1.d, true), global1.c, Struct_1(-933f, u_input.b.xww, global1.c, global1.d, vec3<bool>(global0.d, global0.e.x, false))), Struct_2(vec2<i32>(global0.b.x, u_input.b.x), func_1(-8996i, Struct_1(global0.a, vec3<i32>(-10672i, global1.b.x, global0.b.x), 0u, global1.e.x, vec3<bool>(true, global1.e.x, global0.e.x)), true, global0.d).b.x, func_1(-13569i, Struct_1(885f, vec3<i32>(global1.b.x, global0.b.x, global0.b.x), u_input.c.x, global1.d, global0.e), true, true), u_input.c.x << (1u % 32u), Struct_1(796f, vec3<i32>(0i, -39273i, 32270i), 0u, global1.d, global1.e))), !global0.e.zz, any(!func_4(vec3<u32>(4294967295u, global1.c, global1.c), vec2<i32>(global0.b.x, -9353i), Struct_2(vec2<i32>(global0.b.x, 0i), u_input.b.x, Struct_1(-555f, global1.b, 14958u, false, global1.e), u_input.c.x, Struct_1(-1396f, vec3<i32>(-2147483647i, 14540i, global1.b.x), global1.c, false, global0.e)), Struct_2(global1.b.xy, 0i, Struct_1(-149f, vec3<i32>(global1.b.x, global0.b.x, u_input.b.x), global0.c, false, vec3<bool>(global0.d, global1.e.x, global1.e.x)), global0.c, Struct_1(447f, vec3<i32>(u_input.b.x, -2147483647i, global0.b.x), 4294967295u, global1.e.x, global1.e)))));
    let var_1 = select(u_input.c, ~(~_wgslsmith_mod_vec2_u32(abs(u_input.c), u_input.c)), var_0.x);
    var var_2 = Struct_1(-211f, vec3<i32>(_wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec3_i32(global0.b, global1.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, -1i) & global0.b, vec3<i32>(u_input.a, global0.b.x, 2147483647i)), reverseBits(i32(-1i) * -1i)), -8153i, global1.b.x ^ u_input.a), max(~(2460u & firstLeadingBit(u_input.c.x)), _wgslsmith_div_u32(global0.c, 25910u)), any(select(!vec3<bool>(var_0.x, true, var_0.x), global1.e, select(select(global1.e, global1.e, vec3<bool>(false, true, false)), !global0.e, global1.e))), global0.e);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - global0.a)), var_2.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(458f, _wgslsmith_f_op_f32(-var_2.a)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(416f, _wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1660f, 382f), vec2<f32>(809f, 1121f), var_2.e.x)))), false)));
    var var_4 = !global0.e;
    var var_5 = vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(global1.b.x, -(i32(-1i) * -1i)));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(874f * -1684f)))), global1.b, countOneBits(func_2()), func_1(_wgslsmith_add_i32(-u_input.a, ~global1.b.x), Struct_1(_wgslsmith_f_op_f32(var_2.a - global0.a), _wgslsmith_sub_vec3_i32(vec3<i32>(var_5.x, 1i, -101194i), global0.b), 4294967295u, var_0.x, global1.e), func_4(_wgslsmith_mult_vec3_u32(vec3<u32>(48182u, 0u, 18584u), vec3<u32>(var_2.c, 39534u, global0.c)), _wgslsmith_div_vec2_i32(vec2<i32>(global0.b.x, -2147483647i), vec2<i32>(45544i, global0.b.x)), Struct_2(global0.b.zx, 23276i, Struct_1(-618f, vec3<i32>(var_5.x, 0i, u_input.a), 23034u, false, global1.e), global1.c, Struct_1(-479f, vec3<i32>(var_5.x, 2147483647i, var_5.x), var_1.x, var_0.x, vec3<bool>(var_2.e.x, false, true))), Struct_2(vec2<i32>(global0.b.x, 2147483647i), var_2.b.x, Struct_1(1000f, u_input.b.wwy, 28945u, var_0.x, global0.e), 1u, Struct_1(var_2.a, vec3<i32>(2147483647i, global0.b.x, u_input.a), 15629u, false, global0.e))).x, true).e.x & (global0.e.x | true), var_2.e);
    let var_6 = Struct_1(global0.a, firstTrailingBit(-_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(global1.b, u_input.b.wzw), vec3<i32>(-4737i, -2147483647i, var_2.b.x))), global1.c, true, select(vec3<bool>(true, all(global1.e), !var_4.x), vec3<bool>(!(1461f == var_2.a), any(vec3<bool>(global1.d, false, true)), var_4.x), vec3<bool>(~2147483647i < _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), select(true, global0.e.x, true) & true, any(global1.e.yz))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstLeadingBit(max(1i, func_1(31387i, var_6, var_6.e.x, true).b.x))), _wgslsmith_clamp_vec3_i32(min(vec3<i32>(-2147483647i, global1.b.x, -2147483647i), vec3<i32>(var_5.x, 2147483647i, var_5.x)) ^ vec3<i32>(-1i, global1.b.x, -50871i), vec3<i32>(_wgslsmith_mult_i32(var_5.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_5.x, -1i, -1i), vec3<i32>(1i, var_2.b.x, var_5.x))), -1i, abs(func_1(var_6.b.x, Struct_1(1182f, global0.b, u_input.c.x, global0.d, vec3<bool>(global0.d, global1.d, false)), false, true).b.x)), ~_wgslsmith_div_vec3_i32(vec3<i32>(43340i, 1i, -18329i), -u_input.b.yzx)), -399f, ~(~(~u_input.c.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(~var_6.c, u_input.c.x, func_1(-24749i, var_6, true, var_2.e.x).c) & select(~vec3<u32>(global0.c, var_6.c, global0.c), _wgslsmith_mult_vec3_u32(vec3<u32>(var_6.c, 5963u, global1.c), vec3<u32>(global1.c, 4294967295u, global0.c)), all(global0.e.xz)), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, global1.c), vec3<u32>(var_6.c, var_2.c, global0.c)), _wgslsmith_add_u32(var_1.x, var_2.c), select(0u, 4294967295u, false)), firstLeadingBit(var_1.x), ~reverseBits(u_input.c.x))));
}

