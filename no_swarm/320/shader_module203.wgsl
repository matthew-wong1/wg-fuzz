struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>) -> vec3<i32> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(511f * global0.c)), Struct_1(20652u, ~countOneBits(vec3<i32>(global0.e.x, -21732i, -4121i)), global0.c, !global0.d, -vec3<i32>(-706i, -16526i, -2147483647i)), vec4<bool>(!(!global0.d.x), false, true, select(global0.d.x, true, true) || true), u_input.a), Struct_2(_wgslsmith_f_op_f32(global0.c - -883f), Struct_1(~1u, abs(select(global0.e, global0.e, global0.d)), global0.c, arg_0, -vec3<i32>(global0.b.x, -5912i, 6864i)), vec4<bool>(true, any(vec4<bool>(global0.d.x, arg_0.x, global0.d.x, global0.d.x)), !any(arg_0.yx), true), u_input.a));
    var var_1 = select(global0.d, var_0.a.b.d, false);
    let var_2 = vec3<bool>(all(select(select(select(global0.d, vec3<bool>(var_0.b.c.x, true, true), false), !vec3<bool>(arg_0.x, arg_0.x, false), true | arg_0.x), !arg_0, !(!vec3<bool>(false, global0.d.x, global0.d.x)))), all(vec4<bool>(all(select(var_0.b.b.d, arg_0, var_1.x)), var_1.x, !all(var_0.b.c.yx), any(select(vec3<bool>(var_0.a.b.d.x, true, false), arg_0, global0.d)))), !(_wgslsmith_dot_vec3_u32(u_input.b.wwx, u_input.b.xzz ^ vec3<u32>(var_0.a.d, var_0.b.b.a, var_0.b.b.a)) <= 1u));
    var var_3 = countOneBits(_wgslsmith_mod_u32(abs(_wgslsmith_sub_u32(global0.a, var_0.a.d)), global0.a << (global0.a % 32u)));
    global0 = Struct_1(4294967295u, reverseBits(abs(global0.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.a.b.c)), _wgslsmith_f_op_f32(trunc(-1744f))), !global0.d, vec3<i32>(_wgslsmith_mult_i32((global0.e.x >> (global0.a % 32u)) << (countOneBits(4294967295u) % 32u), 45914i), global0.e.x, global0.e.x));
    return vec3<i32>(5497i, firstTrailingBit(_wgslsmith_mod_i32(global0.b.x, firstTrailingBit(-3681i))) << (firstLeadingBit(abs(0u)) % 32u), _wgslsmith_dot_vec3_i32(global0.e, vec3<i32>(-2147483647i, 13464i & global0.b.x, 30962i)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_2) -> u32 {
    global0 = arg_3.b;
    let var_0 = arg_3;
    var var_1 = _wgslsmith_mod_u32(arg_1.b.b.a, _wgslsmith_div_u32(arg_1.b.b.a, abs(_wgslsmith_mod_u32(~arg_1.b.d, _wgslsmith_clamp_u32(24066u, global0.a, arg_1.b.d)))));
    let var_2 = _wgslsmith_f_op_f32(max(985f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-947f, arg_3.b.c)))));
    return _wgslsmith_mod_u32(~(~_wgslsmith_add_u32(104287u, 55204u)), arg_3.b.a);
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(func_4(global0.d, Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(1u, global0.e, 1020f, vec3<bool>(global0.d.x, global0.d.x, true), vec3<i32>(-1i, global0.b.x, 0i)), vec4<bool>(global0.d.x, global0.d.x, global0.d.x, global0.d.x), select(42868u, 51965u, false)), Struct_2(_wgslsmith_f_op_f32(global0.c * global0.c), Struct_1(1u, vec3<i32>(global0.b.x, -29838i, 2147483647i), -365f, vec3<bool>(true, global0.d.x, global0.d.x), vec3<i32>(global0.e.x, -2147483647i, global0.b.x)), select(vec4<bool>(true, false, true, false), vec4<bool>(global0.d.x, global0.d.x, false, false), vec4<bool>(global0.d.x, false, global0.d.x, global0.d.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(39151u, u_input.a), u_input.b.yw))), vec2<bool>(global0.d.x, ~1u != u_input.a), Struct_2(global0.c, Struct_1(u_input.b.x, func_3(global0.d), _wgslsmith_f_op_f32(-388f - -840f), !vec3<bool>(global0.d.x, global0.d.x, global0.d.x), vec3<i32>(global0.e.x, global0.b.x, global0.b.x)), vec4<bool>(global0.c >= -849f, true, u_input.b.x < u_input.a, all(vec4<bool>(global0.d.x, global0.d.x, global0.d.x, global0.d.x))), global0.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(17291i, countOneBits(global0.b.x) | global0.b.x, i32(-1i) * -1i), ~global0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(705f))), global0.d, vec3<i32>(select(global0.e.x, abs(_wgslsmith_sub_i32(0i, -2147483647i)), true), min((-8155i << (u_input.a % 32u)) << ((4294967295u & u_input.a) % 32u), countOneBits(1i)), 0i));
    global0 = Struct_1(77869u, vec3<i32>(-global0.b.x, global0.e.x, 2147483647i), _wgslsmith_f_op_f32(ceil(global0.c)), select(!select(select(global0.d, global0.d, false), global0.d, !vec3<bool>(global0.d.x, true, global0.d.x)), vec3<bool>(!(u_input.a > 829u), !all(vec3<bool>(false, global0.d.x, global0.d.x)), false), any(!vec4<bool>(global0.d.x, false, false, global0.d.x))), vec3<i32>(firstLeadingBit(-global0.b.x), _wgslsmith_sub_i32(countOneBits(1i), -(~(-25152i))), ~global0.b.x));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -538f), Struct_1(max(~61551u, firstTrailingBit(countOneBits(4294967295u))), abs(vec3<i32>(firstTrailingBit(global0.b.x), global0.e.x & 1i, _wgslsmith_add_i32(global0.e.x, global0.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + global0.c))), global0.d, ~_wgslsmith_mod_vec3_i32(-global0.e, vec3<i32>(1i, 2147483647i, 33505i) & vec3<i32>(global0.b.x, global0.e.x, -2147483647i))), !vec4<bool>(!global0.d.x, global0.d.x & false, select(any(vec4<bool>(global0.d.x, false, global0.d.x, false)), global0.d.x && global0.d.x, true), false), 4294967295u);
    let var_1 = _wgslsmith_f_op_f32(trunc(var_0.b.c));
    global0 = var_0.b;
    return var_0.b;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_2 {
    global0 = func_2();
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(476f + _wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1573f, 1772f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * 400f) * var_0.c)), _wgslsmith_f_op_f32(-1f), global0.c)));
    global0 = func_2();
    let var_2 = vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 85183i), vec2<i32>(global0.e.x, global0.e.x)), -vec2<i32>(-8435i, arg_0.e.x)), vec2<i32>(arg_0.b.x, arg_0.e.x))), _wgslsmith_mult_i32(global0.e.x, 1i), arg_1.x, ~(-72745i));
    return Struct_2(-754f, func_2(), select(vec4<bool>(var_0.d.x, !global0.d.x == global0.d.x, !any(vec4<bool>(false, false, false, false)), arg_0.d.x), !(!(!vec4<bool>(global0.d.x, var_0.d.x, global0.d.x, true))), vec4<bool>(false, all(select(global0.d, vec3<bool>(true, var_0.d.x, var_0.d.x), global0.d)), var_0.d.x, var_0.d.x)), global0.a);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    return _wgslsmith_add_u32(abs(_wgslsmith_mod_u32(~global0.a, firstTrailingBit(arg_2.d))), max(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 1u, global0.a), vec4<u32>(global0.a, 4294967295u, 71449u, 4294967295u)), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_mult_u32(23044u, func_5(vec2<f32>(-378f, global0.c), !vec4<bool>(global0.d.x, false, false, false), func_1(Struct_1(u_input.a, vec3<i32>(global0.b.x, global0.e.x, -15239i), global0.c, vec3<bool>(global0.d.x, true, global0.d.x), vec3<i32>(-2147483647i, global0.e.x, global0.e.x)), vec4<i32>(0i, 2147483647i, global0.b.x, global0.b.x)), Struct_3(Struct_2(327f, Struct_1(0u, global0.e, global0.c, vec3<bool>(global0.d.x, global0.d.x, false), global0.b), vec4<bool>(global0.d.x, global0.d.x, global0.d.x, global0.d.x), u_input.b.x), Struct_2(-281f, Struct_1(global0.a, global0.b, -144f, vec3<bool>(global0.d.x, true, global0.d.x), vec3<i32>(-67070i, -1512i, -36454i)), vec4<bool>(global0.d.x, false, false, global0.d.x), global0.a)))), 10477u), vec3<i32>(select(global0.e.x >> (4294967295u % 32u), global0.b.x, global0.d.x) & 23325i, -_wgslsmith_sub_i32(_wgslsmith_clamp_i32(global0.b.x, 18198i, -10144i), -7190i), -28416i), _wgslsmith_f_op_f32(global0.c - _wgslsmith_div_f32(global0.c, 634f)), vec3<bool>(false, global0.d.x | !global0.d.x, true), vec3<i32>(_wgslsmith_add_i32(global0.b.x, 1i), ~(-firstTrailingBit(global0.e.x)), abs(firstLeadingBit(global0.b.x) & func_2().b.x)));
    global0 = Struct_1(abs(~u_input.b.x) | 4294967295u, vec3<i32>(~_wgslsmith_dot_vec3_i32(select(global0.b, global0.b, true), ~global0.b), 39651i, _wgslsmith_mod_i32(-func_3(global0.d).x, ~global0.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1354f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.c * global0.c)))), vec3<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(global0.d.x, global0.d.x), global0.d.yy)), true, global0.d.x), select(countOneBits(global0.e << (vec3<u32>(u_input.a, 0u, global0.a) % vec3<u32>(32u))), vec3<i32>(max(_wgslsmith_clamp_i32(global0.e.x, global0.e.x, global0.b.x), global0.b.x), func_2().e.x, global0.e.x), vec3<bool>(global0.d.x, global0.d.x && (global0.d.x | global0.d.x), all(global0.d.xy) | true)));
    global0 = func_2();
    let var_0 = func_1(func_2(), vec4<i32>(-36641i ^ global0.b.x, ~(-(~23436i)), 1i, _wgslsmith_mult_i32(-3199i, ~min(7939i, global0.b.x))));
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<u32>(1u, ~4294967295u, 19839u, 43660u), -1851f, min(var_0.b.a, var_0.b.a));
}

