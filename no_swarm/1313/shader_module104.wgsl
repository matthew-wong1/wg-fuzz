struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> vec4<bool> {
    var var_0 = -39897i;
    let var_1 = arg_0.b;
    var_0 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(min(reverseBits(var_1.b.a), ~2147483647i), -(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_1.b.a), vec2<i32>(65973i, var_1.c)) & -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(~1i, var_1.c), ~vec2<i32>(arg_0.d.x, -2147483647i))), _wgslsmith_clamp_i32(-10564i, reverseBits(firstLeadingBit(select(arg_0.d.x, arg_0.b.c, true))), -44745i));
    var var_2 = Struct_3(var_1.a, var_1.b, 809i);
    var_2 = arg_0.b;
    return !vec4<bool>(false, !all(global0.ywz), any(!vec4<bool>(global0.x, false, true, global0.x)) & true, ~(~arg_0.d.x) <= arg_0.d.x);
}

fn func_2() -> vec4<bool> {
    global0 = select(select(vec4<bool>((u_input.a.x <= u_input.c) == false, true, global0.x, u_input.c != u_input.b.x), select(!(!vec4<bool>(false, false, global0.x, false)), vec4<bool>(global0.x || global0.x, all(global0.zz), true, global0.x), select(select(vec4<bool>(false, false, false, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, false, global0.x)), select(vec4<bool>(true, true, global0.x, false), vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(global0.x, true, global0.x, global0.x)), vec4<bool>(true, global0.x, global0.x, false))), all(vec3<bool>(true, true, true))), vec4<bool>(any(vec4<bool>(global0.x, global0.x, global0.x, any(global0.zzz))), global0.x, true, true && (global0.x && true)), !select(select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(false, true, true, false), vec4<bool>(global0.x, false, true, true), vec4<bool>(global0.x, global0.x, global0.x, false)), func_3(Struct_4(u_input.b.zww, Struct_3(vec2<f32>(-1115f, 448f), Struct_2(1i, vec3<f32>(-1803f, -493f, 884f), Struct_1(vec2<f32>(930f, -1623f), u_input.b), Struct_1(vec2<f32>(-1253f, 2314f), vec4<u32>(19202u, u_input.b.x, 4294967295u, u_input.b.x))), -2512i), vec2<u32>(0u, u_input.a.x), vec2<i32>(-2147483647i, 4550i)), -1372f)), vec4<bool>(true, select(false, true, true), true, global0.x), !select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), global0.x)));
    var var_0 = global0.x | true;
    var_0 = !(true || global0.x);
    var var_1 = !(!vec4<bool>(true, all(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(true, true, false, false), global0.x)), true, true));
    var_0 = !global0.x;
    return !select(func_3(Struct_4(u_input.b.wyy, Struct_3(vec2<f32>(-714f, -170f), Struct_2(0i, vec3<f32>(253f, 1106f, -609f), Struct_1(vec2<f32>(-720f, 1153f), u_input.b), Struct_1(vec2<f32>(-605f, 521f), u_input.b)), 0i), vec2<u32>(75464u, u_input.c) & vec2<u32>(28533u, u_input.c), abs(vec2<i32>(0i, 947i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1193f)))), !func_3(Struct_4(vec3<u32>(92427u, 2783u, u_input.a.x), Struct_3(vec2<f32>(378f, -1508f), Struct_2(-12020i, vec3<f32>(1287f, -419f, 260f), Struct_1(vec2<f32>(-1869f, 1393f), vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, 4294967295u)), Struct_1(vec2<f32>(-757f, 808f), u_input.b)), 22776i), vec2<u32>(u_input.b.x, 4294967295u), vec2<i32>(2147483647i, -2147483647i)), _wgslsmith_f_op_f32(trunc(-422f))), true);
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> Struct_1 {
    global0 = vec4<bool>(true, ~(~(-1i)) > min(-(i32(-1i) * -1i), _wgslsmith_clamp_i32(-2324i, -7514i, 1867i)), true, select(!any(vec4<bool>(true, false, true, global0.x)), true, any(select(!vec3<bool>(true, arg_0.x, arg_0.x), arg_0, vec3<bool>(arg_0.x, true, global0.x)))));
    global0 = vec4<bool>(true && global0.x, false, !(!(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, 6355i, -12196i), vec4<i32>(0i, -5491i, -6724i, 2147483647i)) > (-49223i << (u_input.a.x % 32u)))), any(!(!(!arg_0))));
    global0 = select(select(!select(func_2(), func_2(), arg_0.x), vec4<bool>(false, func_2().x, global0.x, true), global0.x), select(vec4<bool>(false, (false | global0.x) & true, false, select(false, arg_0.x, false)), !vec4<bool>(false, false, arg_1 > 4294967295u, arg_0.x && arg_0.x), arg_0.x), !vec4<bool>(false, true, false, global0.x));
    global0 = !(!vec4<bool>(true, false, 0u > arg_1, true));
    let var_0 = _wgslsmith_mult_u32(79254u, _wgslsmith_add_u32(~1u, ~arg_1));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1365f, -648f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-562f, 378f), vec2<f32>(837f, -305f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 1300f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-362f, 840f)))), false))), u_input.b);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: Struct_4) -> bool {
    global0 = vec4<bool>(false != any(global0.wxz), true, !(!(true || (true || global0.x))), global0.x);
    global0 = !(!vec4<bool>(2147483647i <= (arg_3.d.x & -36265i), global0.x, all(vec2<bool>(false, false)), true));
    let var_0 = arg_0;
    let var_1 = firstTrailingBit(_wgslsmith_mod_u32(0u, ~_wgslsmith_add_u32(u_input.c, arg_0.c.b.x)) << (22212u % 32u));
    let var_2 = ~min(var_1, 23833u) > countOneBits(select(67036u, ~u_input.a.x, true) << (22048u % 32u));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(!global0.x, func_4(Struct_2(i32(-1i) * -18064i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1277f, -1000f, 1867f))), func_1(vec3<bool>(true, global0.x, true), 56346u), Struct_1(vec2<f32>(1f, 1f), vec4<u32>(0u, u_input.a.x, 32931u, u_input.c))), 49314i, Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(186f, 414f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(581f, -1009f)))), Struct_2(~(-1i), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1396f, 1116f, -936f))), func_1(global0.zzw, 51160u), Struct_1(vec2<f32>(470f, -909f), u_input.b)), max(-4398i, _wgslsmith_clamp_i32(-25934i, -2147483647i, 26394i))), Struct_4(u_input.b.www, Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1856f) * vec2<f32>(-236f, 105f)), Struct_2(40411i, vec3<f32>(-162f, 1000f, 1372f), Struct_1(vec2<f32>(1694f, -286f), vec4<u32>(1u, u_input.b.x, u_input.b.x, 14927u)), Struct_1(vec2<f32>(168f, 1062f), u_input.b)), 1i), reverseBits(u_input.b.wx), countOneBits(vec2<i32>(2147483647i, 0i)) & firstTrailingBit(vec2<i32>(2147483647i, 10072i)))), global0.x, select(all(select(func_2().yy, global0.yw, true)), !(!(u_input.a.x <= u_input.c)), true));
    var var_0 = select(1u >> (_wgslsmith_dot_vec2_u32(~(~u_input.b.xy), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.c, 25207u), u_input.a)) % 32u), 1u, (global0.x && false) & !global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, -1183f) + vec2<f32>(_wgslsmith_f_op_f32(1000f - 495f), _wgslsmith_f_op_f32(trunc(415f))))));
}

