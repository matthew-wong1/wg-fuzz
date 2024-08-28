struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(1i, -488f, false, vec3<u32>(23762u, 4294967295u, 20361u), false), Struct_2(Struct_1(-40906i, -294f, true, vec3<u32>(41787u, 4294967295u, 4294967295u), true), vec2<bool>(false, true), Struct_1(i32(-2147483648), -1286f, true, vec3<u32>(4294967295u, 7066u, 15330u), true), false, vec2<bool>(true, true)), Struct_1(9843i, -1212f, false, vec3<u32>(72564u, 0u, 4294967295u), true), false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> bool {
    let var_0 = all(!(!select(vec3<bool>(true, arg_0.e.x, global0.a.c), !vec3<bool>(arg_0.e.x, true, false), any(global0.b.b))));
    var var_1 = 1u;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.a.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global0.c.b))))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.b, arg_2) - vec2<f32>(-424f, global0.a.b)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1222f, global0.c.b), vec2<f32>(-1328f, -1818f), arg_0.b))) * vec2<f32>(arg_2, 1177f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * -895f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, arg_2), vec2<f32>(arg_0.c.b, arg_2)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(643f, arg_0.a.b))), !global0.a.e))));
    var var_3 = _wgslsmith_mod_i32(24693i, global0.b.c.a ^ u_input.a.x);
    return _wgslsmith_f_op_f32(-arg_2) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -923f))));
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = Struct_3(Struct_1(firstTrailingBit(_wgslsmith_sub_i32(1i, -45419i)), arg_0.a.b, !(!all(vec2<bool>(global0.b.e.x, true))), u_input.d, global0.a.e), Struct_2(Struct_1(~(-u_input.c.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.b.c.b + arg_0.a.b))), (arg_0.a.b < -1000f) || global0.d, arg_0.a.d, arg_0.d), global0.b.b, Struct_1(i32(-1i) * -59284i, global0.b.a.b, arg_0.e.x, ~(arg_0.a.d ^ u_input.d), all(vec2<bool>(global0.d, arg_0.a.c))), true, vec2<bool>(true, arg_0.d)), Struct_1(arg_0.a.a & firstTrailingBit(-28473i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.b), _wgslsmith_f_op_f32(global0.c.b - arg_0.a.b)), true, _wgslsmith_mult_vec3_u32(~min(vec3<u32>(global0.c.d.x, arg_0.a.d.x, 1u), u_input.d), _wgslsmith_div_vec3_u32(min(vec3<u32>(1u, u_input.b, 0u), arg_0.a.d), reverseBits(arg_0.a.d))), arg_0.a.c), (u_input.a.x >= global0.c.a) || true);
    let var_0 = ~(vec2<i32>(0i & select(-2147483647i, arg_0.c.a, global0.c.e), _wgslsmith_div_i32(-arg_0.c.a, _wgslsmith_add_i32(37806i, arg_0.c.a))) >> ((vec2<u32>(u_input.d.x, 16930u ^ arg_0.c.d.x) >> (global0.a.d.zx % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = arg_0.e;
    global0 = Struct_3(Struct_1(_wgslsmith_sub_i32(1i, -_wgslsmith_sub_i32(40996i, arg_0.a.a)), global0.b.a.b, arg_0.b.x, min(vec3<u32>(0u, arg_0.a.d.x, global0.b.a.d.x) | (vec3<u32>(8761u, 52841u, arg_0.a.d.x) | global0.c.d), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.b.a.d.x, u_input.d.x, 1u), vec3<u32>(arg_0.c.d.x, 0u, arg_0.a.d.x), global0.c.d)), arg_0.e.x), Struct_2(Struct_1(~16790i, global0.b.c.b, global0.b.b.x, ~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.b.c.d.x, 1895u, arg_0.c.d.x), u_input.d), !arg_0.c.c), select(vec2<bool>(true, !arg_0.a.c), arg_0.e, select(arg_0.b, vec2<bool>(global0.b.c.e, true), true)), Struct_1(reverseBits(~var_0.x), _wgslsmith_f_op_f32(select(627f, _wgslsmith_f_op_f32(global0.c.b * 358f), !var_1.x)), var_1.x, ~firstLeadingBit(vec3<u32>(arg_0.c.d.x, arg_0.c.d.x, 4949u)), _wgslsmith_f_op_f32(arg_0.a.b * -1105f) > _wgslsmith_f_op_f32(floor(global0.b.c.b))), any(vec2<bool>(true, arg_0.a.e)), !global0.b.b), Struct_1(~_wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_0.c.a, global0.a.a), -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2106f + 168f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1002f))), !global0.a.e, arg_0.a.d, !any(vec4<bool>(false, true, true, global0.a.c))), arg_0.d);
    var var_2 = Struct_2(Struct_1(1i, _wgslsmith_f_op_f32(global0.b.a.b * -1000f), var_1.x, vec3<u32>(0u, arg_0.a.d.x, ~14998u), true), !global0.b.b, Struct_1(~_wgslsmith_sub_i32(arg_0.a.a, _wgslsmith_mult_i32(var_0.x, -12256i)), -630f, min(~global0.b.a.a, arg_0.a.a) >= (i32(-1i) * -2147483647i), (arg_0.c.d << (global0.c.d % vec3<u32>(32u))) | abs(vec3<u32>(66289u, arg_0.c.d.x, 0u)), arg_0.c.d.x != ~_wgslsmith_mod_u32(24276u, arg_0.a.d.x)), true, select(!(!vec2<bool>(false, global0.a.e)), !global0.b.b, !any(select(vec4<bool>(global0.a.c, false, arg_0.b.x, global0.a.e), vec4<bool>(arg_0.b.x, true, true, true), var_1.x))));
    return !(!(1u >= (arg_0.c.d.x | arg_0.c.d.x))) != var_1.x;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = 1f;
    var var_1 = u_input.c;
    var var_2 = u_input.a.x;
    var var_3 = -1000f;
    var_3 = -277f;
    return Struct_2(arg_1.a, select(vec2<bool>(any(global0.b.b), global0.b.e.x), select(select(select(global0.b.e, arg_0.b.e, global0.c.c), select(arg_1.e, vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, arg_1.b.x)), !arg_0.b.e, select(arg_1.d, arg_1.d, false)), vec2<bool>(arg_1.d, all(vec3<bool>(arg_0.a.e, arg_0.b.a.e, true)) || (arg_1.a.a >= u_input.a.x))), arg_1.c, func_2(arg_1, ~arg_1.c.d.x, _wgslsmith_f_op_f32(trunc(global0.a.b))), arg_1.e);
}

fn func_1() -> Struct_3 {
    let var_0 = global0.b;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-global0.b.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b) + global0.b.c.b));
    let var_2 = _wgslsmith_mod_u32(u_input.b, ~var_0.c.d.x);
    var var_3 = func_4(Struct_3(global0.c, global0.b, Struct_1(2128i | _wgslsmith_mult_i32(u_input.c.x, u_input.c.x), -789f, !(!var_0.a.e), _wgslsmith_mult_vec3_u32(vec3<u32>(27124u, var_2, var_2), ~global0.c.d), true), select(!func_2(global0.b, 71341u, var_1.x), global0.b.c.e, (u_input.a.x << (1u % 32u)) < global0.c.a)), global0.b, select(~vec2<u32>(_wgslsmith_div_u32(47777u, 1u), 0u), ~firstLeadingBit(var_0.c.d.xz ^ u_input.d.xx), func_3(Struct_2(global0.a, vec2<bool>(var_0.c.c, global0.c.e), var_0.c, u_input.c.x != u_input.c.x, var_0.e))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-118f, -212f)), 1563f));
    var var_4 = all(vec3<bool>(true, var_0.d, var_0.d));
    return Struct_3(var_0.c, global0.b, func_4(Struct_3(func_4(Struct_3(global0.b.c, Struct_2(var_0.a, var_0.e, var_0.a, true, vec2<bool>(false, true)), global0.b.c, false), Struct_2(var_3.c, vec2<bool>(true, global0.c.c), Struct_1(-1i, 171f, var_0.b.x, vec3<u32>(14551u, 23212u, 0u), var_3.d), var_3.d, vec2<bool>(global0.a.e, var_3.a.c)), ~vec2<u32>(1u, global0.c.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c.b, 1542f, 2044f))).c, Struct_2(var_3.a, func_4(Struct_3(Struct_1(global0.c.a, var_1.x, global0.a.e, var_3.c.d, global0.b.b.x), Struct_2(var_3.c, vec2<bool>(global0.c.c, true), var_0.a, var_3.b.x, vec2<bool>(true, global0.c.e)), Struct_1(-30688i, var_1.x, global0.c.c, vec3<u32>(111678u, 26935u, 1u), global0.a.c), false), global0.b, var_3.a.d.xx, vec3<f32>(var_3.a.b, -396f, var_0.c.b)).b, global0.a, true, var_3.b), Struct_1(var_3.c.a, _wgslsmith_f_op_f32(max(-690f, -1861f)), all(vec4<bool>(global0.c.c, true, true, true)), vec3<u32>(27461u, 0u, u_input.d.x) | vec3<u32>(4294967295u, global0.a.d.x, var_0.c.d.x), var_3.b.x), func_4(Struct_3(var_0.c, global0.b, var_0.a, false), func_4(Struct_3(Struct_1(global0.b.c.a, var_3.a.b, var_0.b.x, vec3<u32>(0u, var_3.c.d.x, 0u), false), global0.b, var_0.a, true), global0.b, vec2<u32>(23852u, 0u), vec3<f32>(var_0.c.b, var_0.c.b, var_0.a.b)), ~var_3.a.d.yx, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1428f, -161f, var_3.a.b)))).a.e), Struct_2(func_4(Struct_3(global0.c, Struct_2(var_0.c, var_0.b, Struct_1(14537i, var_1.x, true, vec3<u32>(u_input.d.x, 0u, var_2), global0.d), global0.c.e, global0.b.e), Struct_1(30553i, var_3.a.b, true, vec3<u32>(var_2, 1u, 14648u), true), var_0.d), func_4(Struct_3(global0.a, global0.b, Struct_1(var_3.a.a, 463f, true, vec3<u32>(49447u, var_3.a.d.x, global0.b.c.d.x), true), true), global0.b, vec2<u32>(1u, var_2), vec3<f32>(-1000f, 1497f, var_0.c.b)), ~var_0.a.d.xx, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.a.b, global0.c.b, global0.b.a.b)))).a, select(!global0.b.e, vec2<bool>(var_0.a.e, var_0.d), false), Struct_1(firstTrailingBit(0i), _wgslsmith_f_op_f32(min(-1000f, var_1.x)), true, ~global0.a.d, !var_3.d), false && var_0.c.c, var_0.e), _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.c.d.x, var_3.a.d.x), vec2<u32>(270u, 0u) & max(global0.a.d.xx, global0.a.d.xy), vec2<u32>(global0.b.c.d.x, 1u) & ~vec2<u32>(4294967295u, var_2)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(192f - 539f), _wgslsmith_f_op_f32(max(var_1.x, global0.b.c.b)), _wgslsmith_f_op_f32(-1197f - 2341f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.b, global0.a.b, var_3.c.b)))).a, var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = true;
    var_0 = func_1();
    let var_2 = func_1().b.a;
    var var_3 = Struct_2(Struct_1(max(~(~global0.a.a), firstTrailingBit(~u_input.a.x)), -1308f, var_0.d, ~vec3<u32>(max(16606u, var_0.a.d.x), global0.c.d.x & var_0.c.d.x, ~var_0.c.d.x), !var_2.e), func_4(func_1(), Struct_2(global0.a, !func_4(Struct_3(var_0.b.c, var_0.b, var_2, global0.d), Struct_2(global0.a, global0.b.e, Struct_1(var_0.b.a.a, var_2.b, var_2.c, vec3<u32>(5047u, global0.b.c.d.x, 19558u), var_2.c), var_2.c, vec2<bool>(false, global0.b.b.x)), var_2.d.yx, vec3<f32>(var_0.b.a.b, var_2.b, var_0.a.b)).b, Struct_1(global0.c.a, _wgslsmith_f_op_f32(-global0.b.a.b), global0.b.c.e, ~var_0.b.c.d, global0.a.c), all(vec3<bool>(true, global0.c.e, global0.b.d)) & any(vec3<bool>(global0.b.b.x, false, var_0.c.c)), vec2<bool>(func_1().b.d, global0.b.e.x)), max((vec2<u32>(var_0.b.c.d.x, 4294967295u) >> (vec2<u32>(global0.b.a.d.x, var_0.b.a.d.x) % vec2<u32>(32u))) & vec2<u32>(1u, u_input.d.x), ~u_input.d.zy), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(221f, var_2.b, global0.a.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.b, global0.c.b, 1007f) - vec3<f32>(-420f, -1162f, global0.a.b)))))).e, func_1().b.c, !((func_2(global0.b, var_2.d.x, global0.c.b) | var_2.e) || false), vec2<bool>(func_4(func_1(), func_4(Struct_3(global0.b.c, var_0.b, var_0.a, var_0.b.d), Struct_2(Struct_1(1i, var_2.b, false, var_0.a.d, true), var_0.b.b, Struct_1(var_0.a.a, global0.a.b, false, u_input.d, global0.a.c), false, vec2<bool>(global0.a.c, var_0.c.c)), vec2<u32>(var_0.a.d.x, var_0.a.d.x), vec3<f32>(global0.b.c.b, var_0.b.c.b, 137f)), ~var_0.c.d.zy, vec3<f32>(460f, -540f, var_2.b)).a.c & var_0.b.b.x, !var_2.c));
    var var_4 = _wgslsmith_div_f32(func_4(Struct_3(Struct_1(_wgslsmith_mult_i32(var_2.a, var_3.a.a), _wgslsmith_f_op_f32(var_2.b * 983f), !var_0.d, ~var_2.d, var_3.b.x), global0.b, var_3.a, global0.b.e.x), func_1().b, (global0.b.c.d.yy & vec2<u32>(var_0.c.d.x, u_input.d.x)) & _wgslsmith_sub_vec2_u32(min(var_0.c.d.xy, u_input.d.yy), global0.a.d.zx & global0.a.d.xx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1058f, var_0.b.a.b, 571f)))).a.b, _wgslsmith_f_op_f32(-var_0.c.b));
    let var_5 = func_1();
    let var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, u_input.c.x, var_6.c.a, 32399i), 52689u ^ (~0u | abs(~global0.a.d.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(select(var_6.b.a.a, select(u_input.a.x, 0i, true), true), -24933i), ~vec2<i32>(-28493i, _wgslsmith_div_i32(var_3.a.a, var_5.a.a))));
}

