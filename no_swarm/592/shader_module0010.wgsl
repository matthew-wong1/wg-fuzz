struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(18732u, 30564u, 1u), vec3<u32>(4294967295u, 1u, 56634u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec3<bool> {
    global0 = array<vec3<u32>, 3>();
    global0 = array<vec3<u32>, 3>();
    var var_0 = _wgslsmith_mult_i32(-14794i >> (u_input.a % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(-1i, -1i), vec2<i32>(5664i, 20559i)), reverseBits(vec2<i32>(30568i, 29935i))), -1i, 1i, -(~28640i)), vec4<i32>(1i, 1i, 1i, 1i)));
    global0 = array<vec3<u32>, 3>();
    global0 = array<vec3<u32>, 3>();
    return vec3<bool>(true, true, true);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_5) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.c.b, 2158f)), _wgslsmith_f_op_f32(ceil(-1598f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.b.b.a.b, arg_1.b.d.b)))), vec2<f32>(_wgslsmith_f_op_f32(select(arg_1.b.d.b, 329f, false)), 894f))));
    global0 = array<vec3<u32>, 3>();
    var var_1 = vec2<u32>(~u_input.a << (firstTrailingBit(_wgslsmith_sub_u32(4294967295u, countOneBits(0u))) % 32u), _wgslsmith_div_u32(countOneBits(0u), _wgslsmith_dot_vec4_u32(~arg_1.b.b.c, vec4<u32>(countOneBits(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 1u, 4983u), vec4<u32>(u_input.a, 34759u, u_input.a, 0u)), 4294967295u, _wgslsmith_clamp_u32(arg_1.a.b.c.x, 6011u, 17093u)))));
    global0 = array<vec3<u32>, 3>();
    var_1 = ~vec2<u32>(min(55358u, ~27145u & var_1.x), u_input.a);
    return arg_1.a.d.a.x;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec4<bool>, arg_3: vec3<i32>) -> bool {
    global0 = array<vec3<u32>, 3>();
    var var_0 = 29794u;
    global0 = array<vec3<u32>, 3>();
    global0 = array<vec3<u32>, 3>();
    let var_1 = Struct_4(select(select(func_1().zy, arg_2.zz, !arg_1), arg_2.zz, select(!(!arg_2.zz), !select(arg_2.zy, arg_2.yy, arg_0), true)), Struct_3(Struct_1(vec4<bool>(any(vec4<bool>(true, false, arg_1, false)), !arg_2.x, true, any(vec2<bool>(arg_0, arg_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -103f)), Struct_2(arg_3), vec4<u32>(75393u, 65744u, 134802u, ~41680u)), Struct_1(select(vec4<bool>(arg_1, true, true, all(arg_2.yx)), select(arg_2, !vec4<bool>(false, arg_1, false, arg_1), arg_2), !vec4<bool>(false, false, arg_2.x, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1584f + -290f) - _wgslsmith_f_op_f32(trunc(-994f)))), Struct_1(arg_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(767f - -202f) + -2136f)))), vec4<i32>(-2147483647i, arg_3.x, arg_3.x, arg_3.x));
    return arg_1 && arg_0;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_2(~(-firstLeadingBit(-vec3<i32>(-39385i, 0i, 15587i))));
    var var_1 = u_input.a >= _wgslsmith_mod_u32(u_input.a, ~4294967295u);
    var var_2 = vec3<f32>(866f, -1283f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1803f + -242f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(437f + -1524f) * _wgslsmith_div_f32(-2064f, 1208f)))));
    global0 = array<vec3<u32>, 3>();
    global0 = array<vec3<u32>, 3>();
    return Struct_1(vec4<bool>(select(arg_0.x, !arg_0.x && false, !arg_0.x), true, func_4(arg_0.x, (arg_0.x | arg_0.x) || !arg_0.x, vec4<bool>(true, !arg_0.x, true, func_3(vec4<bool>(arg_0.x, true, true, arg_0.x), Struct_5(Struct_4(arg_0.zx, Struct_3(Struct_1(vec4<bool>(arg_0.x, false, true, arg_0.x), 939f), Struct_2(vec3<i32>(var_0.a.x, -99868i, var_0.a.x)), vec4<u32>(4294967295u, 86693u, 33192u, 2845u)), Struct_1(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), var_2.x), Struct_1(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), var_2.x), vec4<i32>(-25851i, -14721i, 1i, var_0.a.x)), Struct_4(arg_0.xx, Struct_3(Struct_1(vec4<bool>(true, arg_0.x, true, true), var_2.x), Struct_2(vec3<i32>(var_0.a.x, 72895i, 0i)), vec4<u32>(0u, u_input.a, u_input.a, 4294967295u)), Struct_1(vec4<bool>(true, arg_0.x, arg_0.x, false), var_2.x), Struct_1(vec4<bool>(false, true, arg_0.x, false), -1000f), vec4<i32>(var_0.a.x, -19716i, -1i, 2147483647i))))), vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x) ^ -var_0.a), !arg_0.x), -975f);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> Struct_3 {
    var var_0 = !arg_1.a.zx;
    global0 = array<vec3<u32>, 3>();
    var var_1 = Struct_1(select(vec4<bool>(false, true, true, true), select(vec4<bool>(all(vec2<bool>(var_0.x, false)), all(vec2<bool>(arg_1.a.x, arg_1.a.x)), false, arg_0.a.a.x), !select(arg_0.a.a, arg_0.a.a, true), (arg_0.c.x >= u_input.a) == true), true), arg_1.b);
    var var_2 = ~vec2<u32>(~arg_0.c.x, 1u);
    var var_3 = vec3<bool>(!((~arg_0.b.a.x < arg_0.b.a.x) || false), !(!select(arg_1.a.x, false, all(arg_1.a.xw))), func_1().x);
    return Struct_3(func_2(func_1()), Struct_2(~arg_0.b.a & -vec3<i32>(0i, arg_0.b.a.x, -30356i)), min(vec4<u32>(~abs(var_2.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, u_input.a), arg_0.c.zy), 4294967295u >> (_wgslsmith_div_u32(0u, 119299u) % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(arg_0.c, vec4<u32>(0u, 0u, u_input.a, 36837u)), _wgslsmith_sub_u32(21942u, arg_0.c.x))), abs(max(vec4<u32>(4294967295u, var_2.x, arg_0.c.x, 40450u) >> (vec4<u32>(0u, u_input.a, arg_0.c.x, 21080u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(var_2.x, 11082u, var_2.x, 4294967295u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_3(func_2(func_1()), Struct_2(min(firstTrailingBit(vec3<i32>(6009i, 1i, -1i)), vec3<i32>(13276i, -1i, 27651i))), vec4<u32>(8486u, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(~u_input.a, 3u)], global0[_wgslsmith_index_u32(~42780u, 3u)]), _wgslsmith_div_u32(61738u, _wgslsmith_add_u32(1u, 1u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 17866u, u_input.a), global0[_wgslsmith_index_u32(27092u, 3u)], vec3<u32>(u_input.a, 1505u, u_input.a)), ~global0[_wgslsmith_index_u32(52181u, 3u)]))), func_2(!func_1()));
    var_0 = Struct_3(func_5(func_5(func_5(func_5(Struct_3(Struct_1(vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, true), -1428f), var_0.b, vec4<u32>(u_input.a, 32519u, var_0.c.x, var_0.c.x)), var_0.a), func_5(Struct_3(Struct_1(var_0.a.a, var_0.a.b), Struct_2(vec3<i32>(var_0.b.a.x, -37373i, -859i)), vec4<u32>(9530u, 6501u, u_input.a, var_0.c.x)), Struct_1(vec4<bool>(false, true, false, var_0.a.a.x), var_0.a.b)).a), var_0.a), func_2(var_0.a.a.ywy)).a, Struct_2(-(-vec3<i32>(-55489i, -2147483647i, -31613i) >> (_wgslsmith_mod_vec3_u32(global0[_wgslsmith_index_u32(var_0.c.x, 3u)], vec3<u32>(4294967295u, 19106u, var_0.c.x)) % vec3<u32>(32u)))), min(~(~vec4<u32>(u_input.a, 8134u, 0u, var_0.c.x)), var_0.c));
    let var_1 = ~u_input.a;
    var var_2 = (_wgslsmith_f_op_f32(round(1687f)) >= 372f) & false;
    var_2 = func_3(!func_5(func_5(func_5(Struct_3(Struct_1(var_0.a.a, -389f), Struct_2(var_0.b.a), vec4<u32>(0u, u_input.a, 48115u, u_input.a)), var_0.a), var_0.a), Struct_1(vec4<bool>(true, false, true, var_0.a.a.x), var_0.a.b)).a.a, Struct_5(Struct_4(var_0.a.a.xx, Struct_3(Struct_1(vec4<bool>(false, false, var_0.a.a.x, var_0.a.a.x), var_0.a.b), var_0.b, vec4<u32>(u_input.a, var_0.c.x, 8142u, 10634u) ^ var_0.c), Struct_1(select(vec4<bool>(true, false, true, true), vec4<bool>(var_0.a.a.x, false, true, true), var_0.a.a.x), var_0.a.b), var_0.a, vec4<i32>(-var_0.b.a.x, abs(var_0.b.a.x), var_0.b.a.x, var_0.b.a.x)), Struct_4(!(!var_0.a.a.yy), func_5(func_5(Struct_3(var_0.a, Struct_2(var_0.b.a), vec4<u32>(17400u, u_input.a, 52474u, 1939u)), Struct_1(vec4<bool>(var_0.a.a.x, false, true, false), 147f)), var_0.a), Struct_1(select(vec4<bool>(true, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), var_0.a.a, vec4<bool>(false, var_0.a.a.x, false, false)), _wgslsmith_f_op_f32(1205f * var_0.a.b)), func_5(func_5(Struct_3(var_0.a, var_0.b, var_0.c), Struct_1(vec4<bool>(false, var_0.a.a.x, true, true), -452f)), var_0.a).a, firstTrailingBit(vec4<i32>(43439i, 1i, -48909i, -24003i)))));
    let var_3 = var_0.b;
    let var_4 = func_5(func_5(func_5(Struct_3(var_0.a, var_0.b, var_0.c), func_5(func_5(Struct_3(var_0.a, Struct_2(vec3<i32>(var_3.a.x, var_0.b.a.x, 24064i)), var_0.c), var_0.a), func_5(Struct_3(Struct_1(var_0.a.a, var_0.a.b), var_0.b, var_0.c), var_0.a).a).a), func_5(func_5(func_5(Struct_3(var_0.a, Struct_2(var_3.a), vec4<u32>(u_input.a, u_input.a, var_0.c.x, u_input.a)), Struct_1(var_0.a.a, -361f)), Struct_1(var_0.a.a, var_0.a.b)), Struct_1(var_0.a.a, _wgslsmith_f_op_f32(-var_0.a.b))).a), Struct_1(vec4<bool>(false, !func_5(Struct_3(Struct_1(var_0.a.a, -159f), Struct_2(var_0.b.a), vec4<u32>(4294967295u, var_1, 4294967295u, u_input.a)), Struct_1(vec4<bool>(var_0.a.a.x, var_0.a.a.x, true, var_0.a.a.x), var_0.a.b)).a.a.x, !any(var_0.a.a.xxx), true || (43718i < var_3.a.x)), _wgslsmith_f_op_f32(ceil(513f)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.c.x, 26152u, 0u) | ~var_0.c.zwx, ~vec3<u32>(var_0.c.x, 75747u, 0u))), abs(abs(global0[_wgslsmith_index_u32(1u, 3u)])), var_3.a.x, select(~_wgslsmith_add_vec3_u32(~var_0.c.xwx, select(vec3<u32>(u_input.a, var_1, 51804u), vec3<u32>(0u, 4294967295u, u_input.a), true)), abs(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(6276u, 1u, 4294967295u), global0[_wgslsmith_index_u32(43716u, 3u)]))), select(vec3<bool>(var_0.a.a.x, var_4.a.x, false), var_4.a.yyw, var_0.a.a.x)), ~firstTrailingBit(max(firstLeadingBit(global0[_wgslsmith_index_u32(var_0.c.x, 3u)]), var_0.c.wzx)));
}

