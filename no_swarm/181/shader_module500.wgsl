struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_3(vec4<f32>(-280f, -1000f, 316f, -2059f)), Struct_2(24198i, false, vec3<f32>(-677f, -1400f, -574f), vec3<i32>(-1i, 2147483647i, 0i), -1i), Struct_4(Struct_2(i32(-2147483648), true, vec3<f32>(888f, -319f, -781f), vec3<i32>(22799i, -1i, -2996i), 56594i), vec3<bool>(true, true, true)));

var<private> global1: vec4<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.a.x - global1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.a.c.x - -933f) - -239f))), (!(!global0.b.b) | any(vec3<bool>(global0.b.b, false, global0.b.b))) | (global0.b.b & false));
    global0 = Struct_5(global0.a, Struct_2(global0.b.e, global0.c.b.x, _wgslsmith_f_op_vec3_f32(-global0.c.a.c), vec3<i32>(~u_input.c.x, global0.b.a, 1i), abs(-1544i)), global0.c);
    global0 = Struct_5(global0.a, global0.b, Struct_4(Struct_2(0i, global0.c.b.x & all(vec3<bool>(global0.b.b, false, global0.b.b)), _wgslsmith_f_op_vec3_f32(-global1.zyw), vec3<i32>(-14020i, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 2147483647i), vec2<i32>(u_input.c.x, global0.c.a.d.x))), -global0.c.a.e & _wgslsmith_div_i32(2147483647i, global0.c.a.d.x)), !select(vec3<bool>(true, false, true), global0.c.b, true)));
    let var_1 = Struct_4(Struct_2(reverseBits(global0.b.a), !var_0.b | !(global0.c.a.b && true), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -499f), -1706f, false)), -708f, -290f), vec3<i32>(-min(2147483647i, 59020i), global0.b.e, 2147483647i), 48663i), !(!(!vec3<bool>(var_0.b, false, true))));
    let var_2 = max(vec2<i32>(var_1.a.e, var_1.a.a), vec2<i32>(abs(-10063i), -4726i & (global0.b.e | 64431i)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1521f, -1086f, false)))) * 1041f))));
}

fn func_2() -> bool {
    let var_0 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.b.c.x)))), -327f);
    var var_1 = _wgslsmith_f_op_vec2_f32(step(global1.xw, global1.zw));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(func_3()), global0.b.b);
    let var_3 = global0.c.a.e;
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-660f + var_2.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a), 1566f)), var_2.a), true || !(!var_2.b))), _wgslsmith_f_op_f32(-134f - -1227f));
    return !(!var_2.b);
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_3 {
    global0 = arg_0;
    let var_0 = Struct_5(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a.a)))), Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global0.c.a.d.yx, global0.b.d.xx), _wgslsmith_sub_vec2_i32(vec2<i32>(2038i, 1i), vec2<i32>(3751i, 1i))) | (abs(1579i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 27387u, 53635u, 1u), vec4<u32>(arg_1, 65173u, 86607u, 0u)) % 32u)), !arg_0.c.a.b, _wgslsmith_f_op_vec3_f32(min(arg_0.a.a.zyx, global1.yzw)), ~vec3<i32>(arg_0.b.e, global0.b.e, firstLeadingBit(global0.c.a.d.x)), i32(-1i) * -2147483647i), Struct_4(global0.b, global0.c.b));
    var var_1 = Struct_4(global0.b, var_0.c.b);
    var var_2 = Struct_3(vec4<f32>(346f, 161f, _wgslsmith_f_op_f32(func_3()), arg_3.a.x));
    var_1 = Struct_4(Struct_2(~abs(-42496i), any(select(vec2<bool>(var_1.a.b, global0.c.b.x), var_1.b.xy, var_1.a.b)) || true, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.c.x, -1875f, 885f))))), select(vec3<i32>(_wgslsmith_mod_i32(-30074i, global0.b.d.x), _wgslsmith_sub_i32(global0.c.a.a, 44045i), abs(global0.b.e)), vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.a.d.yy, global0.c.a.d.yy), arg_0.c.a.e, _wgslsmith_clamp_i32(arg_0.c.a.a, var_1.a.a, arg_0.b.a)), true), 2147483647i), vec3<bool>(false | !var_1.b.x, false, true));
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -745f), _wgslsmith_f_op_f32(ceil(var_2.a.x))));
}

fn func_1() -> vec4<i32> {
    global0 = Struct_5(func_4(Struct_5(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(318f, global1.x, -115f, global1.x))), Struct_2(reverseBits(2147483647i), true, _wgslsmith_f_op_vec3_f32(step(global1.wwy, global1.wxx)), ~global0.c.a.d, u_input.c.x >> (7708u % 32u)), Struct_4(global0.b, !global0.c.b)), _wgslsmith_sub_u32(u_input.a.x, ~675u), !vec4<bool>(global0.c.a.b, func_2(), false, false), global0.a), global0.b, Struct_4(global0.c.a, select(!vec3<bool>(global0.c.b.x, global0.c.a.b, false), vec3<bool>(global0.c.b.x & global0.c.b.x, global0.c.a.b == false, false), vec3<bool>(global1.x == 509f, !global0.b.b, !global0.c.a.b))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a.a.x))), -999f, global1.x) - global0.a.a));
    var var_0 = global1.yx;
    let var_1 = reverseBits(54128u);
    global1 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(-global0.b.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), -203f, global0.b.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -648f) - var_0.x)))), 434f);
    return firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_mult_i32(global0.b.e, 61795i)), _wgslsmith_div_i32(u_input.c.x, -24587i) & ~u_input.c.x, 39763i, _wgslsmith_mult_i32(-u_input.c.x, ~u_input.c.x)), vec4<i32>(-1i, abs(firstTrailingBit(2147483647i)), firstLeadingBit(u_input.c.x), u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c.a.c));
    let var_1 = func_1();
    var var_2 = global0.c.b.yz;
    let var_3 = vec4<bool>(true, any(vec4<bool>(false || global0.c.b.x, u_input.b == 7135u, true, true)) || any(select(select(global0.c.b, global0.c.b, var_2.x), !vec3<bool>(var_2.x, false, global0.c.a.b), global0.c.b)), global0.c.b.x != any(select(!vec4<bool>(false, false, global0.b.b, global0.c.b.x), vec4<bool>(global0.b.b, var_2.x, global0.b.b, var_2.x), all(vec2<bool>(true, global0.c.b.x)))), true);
    let var_4 = min(var_1.x, _wgslsmith_sub_i32(var_1.x, u_input.c.x));
    let var_5 = ~_wgslsmith_clamp_u32(u_input.a.x, ~_wgslsmith_mod_u32(u_input.b, u_input.b << (29526u % 32u)), select(firstLeadingBit(~u_input.a.x), ~4294967295u << (u_input.b % 32u), !(true | var_2.x)));
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(global1.x + global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_5(Struct_3(vec4<f32>(-1686f, -1811f, -368f, var_0.x)), global0.c.a, global0.c), u_input.a.x, vec4<bool>(var_3.x, var_2.x, global0.b.b, global0.c.a.b), global0.a).a.x - -1000f))));
    var var_7 = ~_wgslsmith_clamp_vec3_u32(select(~firstTrailingBit(vec3<u32>(var_5, 107608u, 0u)), ~(vec3<u32>(var_5, u_input.a.x, 27286u) & vec3<u32>(0u, var_5, var_5)), var_3.wxy), ~(vec3<u32>(u_input.b, u_input.b, var_5) & min(vec3<u32>(0u, var_5, 5600u), vec3<u32>(u_input.b, 4294967295u, var_5))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_5, 904u), var_5, var_5 | var_5), vec3<u32>(var_5, 1u, 29722u)));
    global0 = Struct_5(global0.a, Struct_2(abs(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-28134i, u_input.c.x), 21861i, global0.b.e)), all(global0.c.b.xz), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, global1.x, _wgslsmith_f_op_f32(floor(973f))) + _wgslsmith_f_op_vec3_f32(-global0.a.a.ywz)), _wgslsmith_sub_vec3_i32(-(~var_1.zyz), func_1().wyx), 16110i), Struct_4(global0.c.a, vec3<bool>(!var_2.x, var_3.x, false || !global0.c.a.b)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.a.e, select(vec4<u32>(firstTrailingBit(0u), var_7.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_7.x), vec2<u32>(93910u, var_5)), 4294967295u), vec4<u32>(0u & var_7.x, ~12275u, 1u, var_7.x), select(select(vec4<bool>(false, false, global0.b.b, false), var_3, false), select(var_3, vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(true, true, false, var_2.x)), global0.b.b)) >> (((firstLeadingBit(vec4<u32>(0u, 4885u, 2912u, u_input.a.x)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(var_5, u_input.b, 21958u, 49181u), vec4<u32>(var_7.x, 1u, 1u, 11219u))) | _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 74580u, var_5, var_5), vec4<u32>(u_input.b, 6243u, 1u, 35412u) >> (vec4<u32>(0u, var_5, 111754u, 3507u) % vec4<u32>(32u)))) % vec4<u32>(32u)), vec2<u32>(_wgslsmith_mult_u32(~abs(1u), ~_wgslsmith_dot_vec2_u32(var_7.yy, vec2<u32>(u_input.b, 1u))), 40041u), 1606f);
}

