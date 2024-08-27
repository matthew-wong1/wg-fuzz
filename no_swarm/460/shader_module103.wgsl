struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(-884f, -143f), vec2<f32>(583f, 667f), vec2<f32>(-1051f, 185f), vec2<f32>(-1857f, 223f), vec2<f32>(-915f, -597f), vec2<f32>(-571f, -630f), vec2<f32>(-1000f, -141f));

var<private> global1: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(true));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1789f))));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_3(Struct_1(select(~vec4<u32>(19161u, 5939u, u_input.a.x, 17570u) ^ vec4<u32>(u_input.d.x, u_input.a.x, 4294967295u, 20550u), ~u_input.d, select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)))), select(vec4<bool>(true, any(vec3<bool>(true, false, true)), all(vec2<bool>(true, false)), any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), false)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(1i, -2147483647i, -47379i, u_input.b), global1[_wgslsmith_index_u32(53637u, 4u)], Struct_1(vec4<u32>(45703u, 8564u, u_input.a.x, u_input.a.x), vec4<bool>(true, false, true, true), 874f, true)))))), true), Struct_2(Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 77880u, u_input.a.x, u_input.d.x)), select(vec4<u32>(u_input.a.x, 42141u, 4294967295u, 4294967295u), vec4<u32>(1u, 56610u, u_input.d.x, u_input.d.x), true)), vec4<bool>(false, false, true, true), _wgslsmith_f_op_f32(829f + _wgslsmith_f_op_f32(1000f - 1435f)), true), Struct_1(vec4<u32>(44860u, abs(1u), reverseBits(u_input.d.x), _wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x)), vec4<bool>(u_input.d.x <= u_input.d.x, true, select(false, true, true), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1203f)))), any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)))));
    let var_1 = var_0.b;
    global0 = array<vec2<f32>, 7>();
    return vec2<bool>(_wgslsmith_f_op_f32(520f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b.c * var_0.b.b.c)))) != _wgslsmith_f_op_f32(floor(1058f)), var_1.b.d);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = !select(select(vec2<bool>(all(vec2<bool>(arg_2.d, arg_2.d)), u_input.e.x >= u_input.b), select(select(vec2<bool>(arg_2.d, arg_3), arg_2.b.zx, arg_2.b.x), select(arg_2.b.zw, vec2<bool>(arg_2.b.x, arg_3), vec2<bool>(arg_2.d, true)), !arg_2.b.xy), arg_3), !(!func_2()), !(arg_2.b.x & false));
    var var_1 = ~(~vec3<i32>(countOneBits(-1i), -_wgslsmith_div_i32(-24707i, u_input.b), min(_wgslsmith_add_i32(47800i, -1i), firstLeadingBit(arg_0))));
    let var_2 = select(4294967295u, _wgslsmith_mod_u32(~278u, _wgslsmith_add_u32(4294967295u, arg_2.a.x)), true);
    global0 = array<vec2<f32>, 7>();
    var_1 = vec3<i32>(i32(-1i) * -13401i, u_input.e.x, var_1.x);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-743f)))), _wgslsmith_f_op_f32(-arg_2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    var var_1 = vec4<bool>(!any(vec3<bool>(true, any(vec2<bool>(true, true)), true)), true, false, false);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))) - 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c, 4294967295u, Struct_1(vec4<u32>(var_0, 1u, u_input.d.x, 1u), vec4<bool>(var_1.x, var_1.x, false, var_1.x), -124f, var_1.x), true)))), 453f));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -878f), _wgslsmith_f_op_f32(-var_2.x));
    var var_3 = ~countOneBits(vec4<i32>(-37127i >> ((u_input.d.x & 4294967295u) % 32u), u_input.c, -2147483647i, u_input.b));
    var var_4 = Struct_3(Struct_1(abs(~vec4<u32>(var_0, var_0, u_input.a.x, 4294967295u) >> (~u_input.a % vec4<u32>(32u))), select(!select(vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false), var_1.x), select(select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(var_1.x, var_1.x, false, true), var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), var_1.x), var_1.x), 1482f, !(!all(vec4<bool>(false, false, var_1.x, var_1.x)))), Struct_2(Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, var_0, 1u, 10823u), u_input.a) | _wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 16916u, u_input.d.x, var_0), vec4<u32>(1u, 10970u, 4294967295u, u_input.a.x)), vec4<bool>(!var_1.x, var_1.x, func_2().x, true), -795f, false), Struct_1(u_input.d, vec4<bool>(48574i < u_input.c, var_1.x, all(vec4<bool>(false, var_1.x, false, true)), true), var_2.x, all(vec4<bool>(var_1.x, var_1.x, true, false)) || !var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1307f, _wgslsmith_mod_vec2_u32(var_4.a.a.yw, u_input.a.yz), u_input.c);
}

