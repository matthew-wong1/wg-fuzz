struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(35196u, 4294967295u), true, 0i, vec3<bool>(true, false, false));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    global0 = arg_2;
    global0 = Struct_1(vec2<u32>(~reverseBits(47493u), ~1u), true, ~(-(~1i)), global0.d);
    let var_0 = max(arg_2.c, _wgslsmith_clamp_i32(i32(-1i) * -(arg_0.x | 0i), max(arg_2.c ^ -arg_2.c, ~max(arg_0.x, arg_2.c)), arg_0.x));
    global0 = arg_2;
    var var_1 = arg_1;
    return all(!(!vec4<bool>(arg_2.b, true, false, arg_2.d.x)));
}

fn func_4(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = _wgslsmith_mult_vec4_i32(abs(vec4<i32>(~global0.c, u_input.c.x, u_input.a.x, _wgslsmith_mod_i32(23072i, -2147483647i)) ^ u_input.a), ~vec4<i32>(global0.c, 2147483647i << ((global0.a.x & 1u) % 32u), global0.c, ~_wgslsmith_add_i32(0i, 16313i)));
    let var_1 = ~(~firstLeadingBit(reverseBits(_wgslsmith_add_u32(u_input.d, global0.a.x))));
    global0 = Struct_1(vec2<u32>(u_input.d, global0.a.x) & global0.a, !arg_0.a.x, ~(~(_wgslsmith_dot_vec2_i32(u_input.a.wx, vec2<i32>(var_0.x, 60655i)) ^ (u_input.e.x | -35382i))), vec3<bool>(arg_0.a.x, !(_wgslsmith_add_u32(u_input.d, 0u) == _wgslsmith_mult_u32(global0.a.x, var_1)), arg_0.a.x));
    let var_2 = Struct_1(vec2<u32>(~(~_wgslsmith_mod_u32(var_1, global0.a.x)), reverseBits(2680u)), any(!vec4<bool>(select(true, false, global0.b), true, global0.b, false)), var_0.x, global0.d);
    global0 = Struct_1(vec2<u32>(var_2.a.x, 0u ^ _wgslsmith_mult_u32(global0.a.x, countOneBits(global0.a.x))), true, _wgslsmith_sub_i32(0i, 40528i) | -select(~var_2.c, _wgslsmith_mult_i32(var_0.x, var_0.x), arg_0.a.x), !vec3<bool>(arg_0.a.x, arg_0.a.x, true));
    return select(arg_0.a, vec4<bool>(true, 4294967295u < var_2.a.x, any(select(arg_0.a, vec4<bool>(global0.d.x, true, arg_0.a.x, global0.b), arg_0.a)), !(true | var_2.b)), !all(vec3<bool>(global0.b, true, global0.b)));
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_3(func_4(Struct_3(vec4<bool>(func_3(vec3<i32>(global0.c, -5721i, global0.c), vec4<f32>(-884f, -1000f, 664f, -301f), Struct_1(global0.a, global0.b, -7210i, vec3<bool>(global0.d.x, false, global0.d.x)), vec3<f32>(433f, 399f, -1408f)), all(global0.d), global0.b, global0.b | false))));
    global0 = Struct_1(global0.a, true, -28812i, vec3<bool>(func_4(Struct_3(var_0.a)).x, false, !(!global0.d.x)));
    var var_1 = -1026f;
    var var_2 = var_0;
    let var_3 = vec2<u32>(~_wgslsmith_clamp_u32(1u, countOneBits(u_input.d & 4294967295u), global0.a.x), u_input.d);
    return _wgslsmith_mult_vec2_u32(vec2<u32>(global0.a.x, _wgslsmith_mult_u32(var_3.x, global0.a.x)), global0.a);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>) -> Struct_2 {
    global0 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(~(~arg_2.x), ~(19751u >> (global0.a.x % 32u))), ~global0.a), true, -8954i | ~(-abs(arg_0.c)), vec3<bool>(false, select(!arg_0.d.x, global0.d.x, true), all(select(vec4<bool>(global0.d.x, global0.d.x, true, arg_0.d.x), !vec4<bool>(global0.b, arg_0.d.x, arg_0.b, true), false))));
    var var_0 = u_input.d;
    let var_1 = all(!select(!select(vec4<bool>(global0.b, true, global0.b, arg_0.d.x), vec4<bool>(global0.d.x, arg_0.b, arg_0.b, global0.b), vec4<bool>(true, false, global0.b, false)), vec4<bool>(any(vec2<bool>(arg_0.d.x, global0.d.x)), arg_0.c >= u_input.a.x, true & arg_0.d.x, func_4(Struct_3(vec4<bool>(arg_0.b, arg_0.b, false, arg_0.d.x))).x), select(vec4<bool>(arg_0.b, false, true, true), !vec4<bool>(global0.d.x, false, true, arg_0.d.x), global0.b)));
    let var_2 = arg_0;
    global0 = var_2;
    return Struct_2(global0.d, 2147483647i);
}

fn func_6(arg_0: Struct_2, arg_1: f32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(select(-1765f, _wgslsmith_f_op_f32(floor(-975f)), func_5(Struct_1(_wgslsmith_div_vec2_u32(~vec2<u32>(global0.a.x, u_input.d), vec2<u32>(70797u, global0.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(18200u, u_input.d, global0.a.x, global0.a.x), vec4<u32>(53884u, global0.a.x, 14996u, global0.a.x)) > (u_input.d ^ 31917u), ~(-2147483647i), select(vec3<bool>(false, arg_0.a.x, arg_0.a.x), global0.d, arg_0.a.x)), 27669u, reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(1u, global0.a.x) & global0.a, vec2<u32>(u_input.d, 0u)))).a.x));
    var var_1 = Struct_1(global0.a, !(!(!all(vec4<bool>(global0.d.x, false, false, true)))), 439i, vec3<bool>(all(select(vec4<bool>(false, true, true, arg_0.a.x), !vec4<bool>(global0.b, false, arg_0.a.x, arg_0.a.x), select(vec4<bool>(global0.b, global0.b, true, false), vec4<bool>(arg_0.a.x, global0.b, arg_0.a.x, arg_0.a.x), arg_0.a.x))), func_4(Struct_3(vec4<bool>(arg_0.a.x, false, false, true))).x, func_4(Struct_3(!vec4<bool>(global0.b, true, false, true))).x));
    var var_2 = arg_0;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_1)))))) - _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-802f + 699f))));
    let var_3 = Struct_1(vec2<u32>(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4061u, 1u), vec3<u32>(42847u, 4294967295u, 31721u)), 17258u), _wgslsmith_mod_u32(0u, 1u | _wgslsmith_sub_u32(4294967295u, global0.a.x))), all(func_4(Struct_3(vec4<bool>(arg_0.a.x, var_2.a.x, arg_0.a.x, false)))), u_input.e.x, !select(var_2.a, vec3<bool>(true, true, true), true));
    return !vec2<bool>(global0.d.x, -var_1.c != var_1.c);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: f32) -> bool {
    var var_0 = func_6(func_5(Struct_1(~(vec2<u32>(global0.a.x, u_input.d) << (vec2<u32>(0u, global0.a.x) % vec2<u32>(32u))), global0.d.x, -19179i, global0.d), ~(~global0.a.x), _wgslsmith_div_vec2_u32(func_2(), ~global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1023f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(438f)), -1039f))) * 1000f));
    var var_1 = Struct_3(!(!vec4<bool>(true, all(vec4<bool>(var_0.x, false, true, var_0.x)), true, select(var_0.x, false, var_0.x))));
    global0 = Struct_1(vec2<u32>(global0.a.x, ~min(global0.a.x, u_input.d >> (4294967295u % 32u))), func_6(func_5(Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(55613u, 1643u), vec2<u32>(u_input.d, u_input.d)), func_6(Struct_2(vec3<bool>(false, var_1.a.x, false), -1i), arg_2).x, _wgslsmith_mod_i32(-1i, u_input.a.x), select(var_1.a.xwx, var_1.a.xxy, var_1.a.x)), _wgslsmith_clamp_u32(~global0.a.x, 31463u, _wgslsmith_mult_u32(u_input.d, 0u)), global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(215f + arg_0), _wgslsmith_div_f32(arg_1, -690f))))).x, global0.c, !var_1.a.ywy);
    var_0 = vec2<bool>(!var_0.x, var_1.a.x);
    var_1 = Struct_3(func_4(Struct_3(vec4<bool>(var_1.a.x, 0u == global0.a.x, true, var_0.x))));
    return !all(func_5(Struct_1(countOneBits(global0.a), true, -2147483647i, select(vec3<bool>(var_1.a.x, global0.d.x, false), vec3<bool>(true, true, true), false)), 20593u, vec2<u32>(67583u, u_input.d) | countOneBits(vec2<u32>(24273u, global0.a.x))).a.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(global0.d.zz, !select(vec2<bool>(all(vec3<bool>(global0.d.x, true, true)), select(true, global0.b, global0.b)), !(!global0.d.yy), global0.d.yy), global0.b);
    global0 = Struct_1(~abs(vec2<u32>(u_input.d, _wgslsmith_mult_u32(1716u, global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-590f - _wgslsmith_f_op_f32(f32(-1f) * -831f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(685f - -1025f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-128f))))), -2147483647i | u_input.e.x, global0.d);
    var var_1 = global0.a;
    var var_2 = global0.d.yy;
    var_0 = select(!select(select(!global0.d.xz, vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true)), global0.d.xz, any(vec3<bool>(false, true, global0.b))), !vec2<bool>(global0.b, true), vec2<bool>(var_0.x, !(!var_0.x)));
    let var_3 = select(min(select(reverseBits(global0.a.x), 1u, func_1(216f, -117f, -1430f)), ~(global0.a.x | var_1.x)), var_1.x, abs(select(u_input.d, global0.a.x, global0.b)) > (~var_1.x >> (_wgslsmith_add_u32(4118u, 55171u) % 32u))) >> (16611u % 32u);
    var_0 = !(!func_4(Struct_3(vec4<bool>(global0.d.x, var_2.x, var_0.x, false))).zy);
    let var_4 = reverseBits(u_input.d);
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -765f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.x) + var_5.x));
}

