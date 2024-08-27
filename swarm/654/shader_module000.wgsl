struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(-33014i, -37105i, 2147483647i, -16681i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(0i, -1i, 2147483647i, 81929i), vec4<i32>(1i, 0i, 1i, 0i), vec4<i32>(i32(-2147483648), -58724i, 25639i, 39841i), vec4<i32>(i32(-2147483648), 1i, 2147483647i, -1i), vec4<i32>(i32(-2147483648), 13957i, 0i, 0i), vec4<i32>(24352i, -1i, 2147483647i, 2501i), vec4<i32>(2147483647i, 2147483647i, 12826i, 13770i), vec4<i32>(-67961i, 1i, -33616i, i32(-2147483648)), vec4<i32>(9900i, -50697i, -28574i, 0i), vec4<i32>(-30725i, 0i, -1i, 0i), vec4<i32>(0i, i32(-2147483648), 39321i, 1i), vec4<i32>(-30345i, i32(-2147483648), i32(-2147483648), -10659i), vec4<i32>(2147483647i, 0i, 0i, -17929i), vec4<i32>(2147483647i, 55943i, 17215i, -54548i), vec4<i32>(-8961i, -40744i, 2147483647i, 2147483647i), vec4<i32>(41715i, i32(-2147483648), i32(-2147483648), -1i), vec4<i32>(-20880i, 0i, -25719i, -23524i), vec4<i32>(97452i, 1i, -7402i, -34352i), vec4<i32>(i32(-2147483648), 2147483647i, 10141i, 2147483647i), vec4<i32>(-49786i, -18807i, -16530i, 63545i), vec4<i32>(-45237i, 30191i, 1i, 2298i), vec4<i32>(19671i, 36178i, 2147483647i, 10499i), vec4<i32>(i32(-2147483648), i32(-2147483648), -12283i, i32(-2147483648)), vec4<i32>(-33293i, 0i, 1i, -1i), vec4<i32>(28173i, 0i, 3571i, 1i), vec4<i32>(-70732i, 2205i, i32(-2147483648), 0i), vec4<i32>(-1i, 2147483647i, -1i, 0i), vec4<i32>(32589i, i32(-2147483648), i32(-2147483648), -36919i), vec4<i32>(-377i, -18235i, -1i, i32(-2147483648)), vec4<i32>(-8101i, 1i, 25406i, 25553i));

var<private> global2: array<Struct_1, 24>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    global0 = array<Struct_1, 21>();
    let var_0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -778f) - -1386f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -837f)), 1239f)));
    var var_1 = vec2<f32>(128f, -646f);
    let var_2 = vec2<bool>(any(select(vec3<bool>(arg_0.x, true, true || arg_0.x), vec3<bool>(true, false, true), arg_0.x)), arg_0.x);
    global1 = array<vec4<i32>, 32>();
    return global2[_wgslsmith_index_u32(0u, 24u)];
}

fn func_3() -> vec2<bool> {
    var var_0 = true;
    let var_1 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, false, false, true)), true, true, true), true)) || false;
    var var_2 = firstTrailingBit(_wgslsmith_div_u32(~(~min(u_input.b.x, u_input.a)), _wgslsmith_mult_u32(u_input.a, ~13723u)));
    var_2 = u_input.b.x;
    let var_3 = !vec3<bool>(!all(!vec3<bool>(var_1, false, var_1)), var_1, all(!select(vec2<bool>(var_1, false), vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1))));
    return vec2<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-663f, 638f))) * -495f) <= -2005f);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1201f, -271f, arg_3.a.x, 652f))) + vec4<f32>(-365f, 319f, -1130f, 354f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.a.x, 360f, arg_3.a.x, arg_2.a.x), vec4<f32>(arg_2.a.x, arg_3.a.x, arg_3.a.x, -1347f)))))));
    let var_1 = ~(~(~(~vec4<u32>(arg_1, 1u, u_input.b.x, 1u)) << (vec4<u32>(4294967295u, 1u, ~35334u, 123326u) % vec4<u32>(32u))));
    global0 = array<Struct_1, 21>();
    global2 = array<Struct_1, 24>();
    var var_2 = select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(-26995i <= u_input.c, true, true, all(vec4<bool>(false, true, false, false))), vec4<bool>(true, true, func_3().x, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)))), !select(vec4<bool>(true, true, select(true, false, false), select(false, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true), true), false);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.a)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> Struct_1 {
    let var_0 = func_4(-57666i, ~u_input.b.x | firstTrailingBit(countOneBits(u_input.b.x) & _wgslsmith_mult_u32(4294967295u, u_input.b.x)), func_2(!(!(!vec2<bool>(arg_3, false)))), func_2(!func_3()));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    var_1 = _wgslsmith_f_op_f32(-1319f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2 + 1621f))));
    var var_2 = Struct_2(func_4(25746i, u_input.b.x, func_4(-u_input.c, u_input.a, Struct_1(arg_1.a), Struct_1(var_0.a.a)).a, var_0.a).a);
    let var_3 = ~_wgslsmith_mod_u32(96602u, u_input.a);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(1727f + -838f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1808f - 1690f) + _wgslsmith_f_op_f32(f32(-1f) * -2893f))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-827f, -415f, -418f, 967f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-918f, -115f, -1000f, -745f) - vec4<f32>(-1756f, 217f, -733f, 2090f)))), _wgslsmith_f_op_f32(f32(-1f) * -669f), true));
    let var_1 = any(!select(vec2<bool>(any(vec2<bool>(true, false)), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true)));
    global2 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(-(vec4<i32>(-18616i, 1i, -1i, u_input.c) ^ ((global1[_wgslsmith_index_u32(1u, 32u)] ^ vec4<i32>(u_input.c, 5215i, 0i, -1i)) >> ((vec4<u32>(u_input.b.x, u_input.a, 1u, 0u) & vec4<u32>(u_input.b.x, u_input.a, u_input.a, u_input.b.x)) % vec4<u32>(32u)))), min(0i, _wgslsmith_mod_i32(-1i, 2147483647i)));
}

