struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    let var_0 = Struct_2(arg_0, vec2<u32>(reverseBits(u_input.b), firstTrailingBit(u_input.b)), Struct_1(-vec3<i32>(arg_1.a.a.x, 43911i, 0i) << (firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, u_input.b, u_input.b))) % vec3<u32>(32u))), Struct_1(vec3<i32>(-1i) * -vec3<i32>(0i, arg_1.a.a.x, -1i)), Struct_1(u_input.a));
    return u_input.b;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(~(~(arg_2 << (arg_2 % 32u))), abs(arg_2), countOneBits(_wgslsmith_clamp_u32(abs(32642u), arg_2, 25792u))), vec3<u32>(func_3(arg_3, Struct_3(Struct_1(vec3<i32>(-2147483647i, u_input.a.x, -1i)))), ~u_input.b, max(~4294967295u, _wgslsmith_add_u32(1u, 1u))));
    var_0 = (select(countOneBits(vec3<u32>(arg_2, 10436u, var_0.x)), vec3<u32>(0u, 78112u & arg_2, u_input.b), arg_0 && !arg_0) >> (_wgslsmith_div_vec3_u32(vec3<u32>(~21397u, _wgslsmith_mod_u32(70284u, 8075u), 4294967295u << (0u % 32u)), min(~vec3<u32>(14107u, var_0.x, 4294967295u), vec3<u32>(56101u, var_0.x, var_0.x))) % vec3<u32>(32u))) >> (vec3<u32>((~643u & ~u_input.b) ^ (reverseBits(43883u) | ~arg_2), 86543u, u_input.b) % vec3<u32>(32u));
    let var_1 = ~u_input.b;
    var_0 = ~vec3<u32>(abs(13445u ^ arg_2), u_input.b, (24371u ^ ~u_input.b) >> (min(_wgslsmith_mult_u32(var_1, 4294967295u), abs(arg_2)) % 32u));
    let var_2 = max(-u_input.a.xz, vec2<i32>(arg_1, -u_input.a.x));
    return -vec4<i32>(1i, u_input.a.x, ~(-abs(-1i)), abs(_wgslsmith_mult_i32(-u_input.a.x, max(15923i, -1i))));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = select(vec4<bool>(true, ~abs(u_input.b) >= 0u, arg_1, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 31268u, 43731u), vec4<u32>(57608u, u_input.b, u_input.b, u_input.b)) <= u_input.b), !select(vec4<bool>(arg_1 | arg_1, arg_1, true, all(vec2<bool>(false, arg_1))), !(!vec4<bool>(true, false, false, arg_1)), vec4<bool>(!arg_1, true, true, select(true, false, false))), !all(select(select(vec4<bool>(true, true, false, arg_1), vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), select(vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1)), !arg_1)));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1299f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1), 1f, 291f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(519f - var_1), _wgslsmith_f_op_f32(f32(-1f) * -250f))) + vec4<f32>(_wgslsmith_f_op_f32(-var_1), var_1, 636f, var_1)));
    return 1u;
}

fn func_5(arg_0: u32, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(~(-u_input.a));
    var_0 = Struct_1(select(firstLeadingBit(countOneBits(_wgslsmith_mod_vec3_i32(u_input.a, var_0.a))), vec3<i32>(var_0.a.x ^ _wgslsmith_div_i32(16769i, u_input.a.x), abs(var_0.a.x), -1i), ~arg_0 <= arg_0));
    var_0 = Struct_1(vec3<i32>(-30721i, -(1i << ((arg_0 >> (arg_0 % 32u)) % 32u)), ~0i));
    var_0 = Struct_1(vec3<i32>(-27463i << (~(arg_0 ^ 17551u) % 32u), _wgslsmith_mod_i32(func_2(any(vec2<bool>(false, false)), var_0.a.x >> (1u % 32u), u_input.b ^ 0u, Struct_1(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x))).x, ~(~(-2147483647i))), i32(-1i) * -13238i));
    var var_1 = vec4<u32>(1u, arg_0, arg_0, u_input.b) & ~vec4<u32>(4294967295u, _wgslsmith_mult_u32(1u, arg_0) >> (~1u % 32u), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, arg_0))), arg_0);
    return Struct_1(-u_input.a);
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = min(abs(1i), firstTrailingBit(~(-5324i)));
    var var_1 = func_5(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.b, 1u, 81688u)) & min(4294967295u, 56405u), firstLeadingBit(_wgslsmith_sub_u32(1u, 1u))) ^ _wgslsmith_add_u32(4294967295u, func_4(func_2(false, 26480i, 4294967295u, Struct_1(u_input.a)), true, Struct_1(u_input.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-208f + 1f) + -105f), -1988f));
    var var_2 = all(vec4<bool>(true, true, true, true));
    var_2 = all(vec3<bool>(true, true, true));
    var_2 = !select(any(!select(vec2<bool>(false, true), vec2<bool>(false, false), true)), false, !(any(vec3<bool>(true, true, true)) & any(vec4<bool>(false, false, true, false))));
    return Struct_1(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, true, !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)))), false && (~(~44282u) == ~max(u_input.b, 1u)));
    var var_1 = true;
    var_1 = all(var_0.zy);
    var var_2 = func_1(-1i, ~_wgslsmith_mult_i32(u_input.a.x, -1i));
    let var_3 = Struct_1(vec3<i32>(~func_1(65752i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, 0i), vec4<i32>(-35652i, 28918i, 1i, u_input.a.x))).a.x, abs(u_input.a.x), -reverseBits(~var_2.a.x)));
    let var_4 = u_input.a.xy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a.yy, -vec2<i32>(-1i, -2147483647i)), func_1(firstLeadingBit(-12391i), -var_4.x).a.x), var_2.a.x));
}

