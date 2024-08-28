struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(true, vec2<i32>(-14740i, 0i), 30392i, -755f), Struct_1(true, vec2<i32>(2147483647i, 1i), i32(-2147483648), 626f), Struct_1(false, vec2<i32>(9486i, -46837i), -1i, 999f), Struct_1(false, vec2<i32>(i32(-2147483648), 25176i), -28184i, 1050f), Struct_1(false, vec2<i32>(-1i, -27734i), 1i, 148f), Struct_1(false, vec2<i32>(42559i, 2147483647i), -15342i, 273f), Struct_1(true, vec2<i32>(1i, i32(-2147483648)), -1i, -2782f), Struct_1(true, vec2<i32>(2147483647i, 6598i), -18678i, 678f), Struct_1(false, vec2<i32>(i32(-2147483648), -21142i), 3637i, -215f), Struct_1(true, vec2<i32>(-39645i, 45554i), -1i, -904f), Struct_1(false, vec2<i32>(0i, i32(-2147483648)), -14312i, 1158f), Struct_1(true, vec2<i32>(6975i, 1i), -31839i, -667f), Struct_1(false, vec2<i32>(-20411i, 2147483647i), 26523i, 276f), Struct_1(true, vec2<i32>(2147483647i, 6786i), 17889i, 1572f), Struct_1(true, vec2<i32>(i32(-2147483648), 55812i), i32(-2147483648), 543f), Struct_1(true, vec2<i32>(i32(-2147483648), 33871i), 0i, 303f), Struct_1(false, vec2<i32>(1i, 2147483647i), -1i, -130f), Struct_1(false, vec2<i32>(i32(-2147483648), 1i), -1i, 1366f), Struct_1(true, vec2<i32>(1i, 41727i), 2147483647i, -331f), Struct_1(false, vec2<i32>(0i, 2147483647i), -48036i, 290f), Struct_1(true, vec2<i32>(-5369i, 8760i), -49591i, -1588f), Struct_1(true, vec2<i32>(i32(-2147483648), 42036i), -4104i, 1741f), Struct_1(true, vec2<i32>(2147483647i, 14362i), i32(-2147483648), -348f), Struct_1(true, vec2<i32>(26838i, 32075i), 1i, 1034f), Struct_1(false, vec2<i32>(0i, 1i), 0i, 707f), Struct_1(false, vec2<i32>(2147483647i, -58798i), 32011i, 2590f), Struct_1(false, vec2<i32>(-36907i, 35491i), 40883i, -911f), Struct_1(false, vec2<i32>(0i, 0i), -36236i, 976f), Struct_1(false, vec2<i32>(2147483647i, i32(-2147483648)), 2147483647i, 1487f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -394f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + -1070f), -411f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-386f - 274f)), _wgslsmith_f_op_f32(f32(-1f) * -1751f), !any(vec4<bool>(false, true, true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -844f)))));
    var var_1 = abs(~vec2<u32>(~countOneBits(9787u), 1u));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(round(840f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -149f) + var_0.x), _wgslsmith_f_op_f32(-var_0.x))));
    var var_2 = Struct_1(true, select(u_input.a.ww, ~firstLeadingBit(-u_input.b.yy), true & !all(vec2<bool>(false, false))), firstTrailingBit(~(-71404i << (var_1.x % 32u)) & ((u_input.b.x | -32918i) | u_input.b.x)), -765f);
    var var_3 = var_0.x;
    return 4294967295u;
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    var var_0 = ~u_input.b.x;
    var_0 = arg_0 >> (arg_1.x % 32u);
    var var_1 = Struct_1(arg_1.x > _wgslsmith_dot_vec3_u32(select(vec3<u32>(8539u, arg_1.x, 43520u) ^ vec3<u32>(35038u, 1u, 0u), ~vec3<u32>(arg_1.x, 0u, arg_1.x), all(vec3<bool>(false, arg_2.a, arg_2.a))), firstTrailingBit(vec3<u32>(9245u, 20204u, 41764u))), ~u_input.a.xw, firstTrailingBit(~_wgslsmith_mult_i32(firstTrailingBit(56598i), ~arg_2.c)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f)))))));
    let var_2 = ~firstLeadingBit(vec3<u32>(~arg_1.x, _wgslsmith_mod_u32(arg_1.x, 28342u), _wgslsmith_add_u32(arg_1.x, 9286u))) << (vec3<u32>(~_wgslsmith_clamp_u32(~arg_1.x, arg_1.x, reverseBits(63921u)), ~arg_1.x, arg_1.x) % vec3<u32>(32u));
    let var_3 = Struct_2(vec2<u32>(arg_1.x, 1u), ~select(~u_input.b, -vec3<i32>(arg_2.b.x, arg_2.b.x, var_1.c), all(vec2<bool>(arg_2.a, false))) & u_input.b, vec2<f32>(-135f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-663f, arg_2.d), arg_3)))), vec4<bool>(var_1.a, !(!(!arg_2.a)), _wgslsmith_f_op_f32(exp2(arg_2.d)) <= arg_3, any(vec3<bool>(arg_2.a, var_1.a, true)) || true), ~var_2.x);
    return vec3<bool>(select(!arg_2.a | arg_2.a, (var_3.e < var_3.e) && arg_2.a, all(vec4<bool>(true, arg_2.a, arg_2.a, false))) && any(!(!vec2<bool>(var_1.a, var_3.d.x))), !arg_2.a, arg_2.a);
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: i32) -> vec3<bool> {
    global0 = array<Struct_1, 29>();
    let var_0 = func_4(~14531i, vec2<u32>(_wgslsmith_mod_u32(firstTrailingBit(98717u), ~4294967295u), ~(~28473u)), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(func_3(), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), ~vec2<u32>(10147u, 0u))), 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x))));
    global0 = array<Struct_1, 29>();
    var var_1 = _wgslsmith_div_u32(max(~56206u, _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(abs(0u), 0u))), 1u);
    var_1 = 4294967295u;
    return select(vec3<bool>(true, !all(vec2<bool>(true, true)), var_0.x), select(var_0, select(select(vec3<bool>(var_0.x, false, var_0.x), var_0, var_0.x), !(!var_0), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, true), vec3<bool>(false, var_0.x, true))), var_0.x), !vec3<bool>(true, (false & var_0.x) & true, !var_0.x | false));
}

fn func_1() -> f32 {
    global0 = array<Struct_1, 29>();
    let var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(25341u), 29u)];
    let var_1 = select(func_2(-2147483647i, u_input.a, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(1891f, 2010f), _wgslsmith_f_op_f32(-var_0.d), 1770f))), -2147483647i), func_2(u_input.b.x, -abs(vec4<i32>(-7039i, var_0.c, u_input.b.x, 4696i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-246f, var_0.d, 1337f) + vec3<f32>(var_0.d, var_0.d, -384f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, -115f, -506f) * vec3<f32>(var_0.d, var_0.d, 1209f)))), ~(-var_0.b.x) << (_wgslsmith_mod_u32(~0u, ~0u) % 32u)), true);
    let var_2 = !(!func_4(_wgslsmith_mult_i32(-19323i, var_0.b.x), ~vec2<u32>(0u, 39718u), Struct_1(func_4(2147483647i, vec2<u32>(50998u, 4294967295u), global0[_wgslsmith_index_u32(81675u, 29u)], 317f).x, vec2<i32>(2622i, u_input.b.x), ~43991i, var_0.d), _wgslsmith_f_op_f32(f32(-1f) * -495f)).x);
    global0 = array<Struct_1, 29>();
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1804f))))) - _wgslsmith_f_op_f32(-536f * -1495f));
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -(i32(-1i) * -38313i), _wgslsmith_dot_vec2_i32(abs(u_input.b.xy), abs(firstTrailingBit(vec2<i32>(42313i, u_input.b.x)))), abs(~48038i)), u_input.b);
    var_0 = _wgslsmith_f_op_f32(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-select(firstLeadingBit(vec3<i32>(1i, u_input.a.x, u_input.b.x)), ~u_input.a.zww, false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1565f, 1480f))), 591f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-608f - 145f) - _wgslsmith_f_op_f32(ceil(374f)))))));
}

