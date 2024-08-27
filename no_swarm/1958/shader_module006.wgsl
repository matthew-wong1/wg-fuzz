struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(35647u ^ _wgslsmith_dot_vec4_u32(arg_1, arg_1)), min(44680u, firstLeadingBit(arg_1.x)), arg_1.x, arg_1.x), vec4<u32>(~arg_1.x, _wgslsmith_add_u32(arg_1.x, 97767u), 0u, ~_wgslsmith_sub_u32(1u, _wgslsmith_add_u32(1u, arg_1.x))));
    var var_1 = Struct_3(Struct_2(Struct_1(0u, vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), arg_1, vec3<bool>(false, u_input.a == _wgslsmith_mult_i32(2147483647i, u_input.a), !select(true, true, false))), Struct_1(1u, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec2<bool>(false, true)), false, arg_1.x <= var_0.x, true), select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), true)))), Struct_2(Struct_1(~arg_1.x, vec4<bool>(true, any(vec3<bool>(true, false, false)), true, true)), arg_0, arg_1 << (var_0 % vec4<u32>(32u)), vec3<bool>(true, true, all(vec3<bool>(true, true, true)))));
    var var_2 = !(!(!var_1.c.d.zz));
    let var_3 = ~var_1.a.c.x;
    global0 = var_1.a.b;
    return select(var_1.c.a.b, vec4<bool>(any(select(vec4<bool>(var_1.a.a.b.x, false, var_1.b.b.x, true), var_1.b.b, vec4<bool>(var_2.x, var_1.c.a.b.x, var_2.x, var_1.b.b.x))), false, all(!vec4<bool>(var_1.c.d.x, false, false, true)), var_1.a.d.x), select(var_1.b.b, vec4<bool>(var_1.a.a.b.x, var_2.x, var_1.a.a.b.x, any(select(var_1.b.b.xy, vec2<bool>(false, false), false))), !var_1.a.a.b));
}

fn func_2() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(414f + 465f) + _wgslsmith_f_op_f32(max(235f, 361f)))))));
    let var_1 = Struct_3(Struct_2(Struct_1(14247u, !func_3(-643f, vec4<u32>(1730u, 10332u, 1u, 514u))), 298f, select(~vec4<u32>(23826u, 28322u, 1u, 41116u), abs(firstLeadingBit(vec4<u32>(115632u, 0u, 3277u, 85118u))), vec4<bool>(true, true, true, true)), vec3<bool>(true, true, true)), Struct_1(82613u, select(select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true)), vec4<bool>(any(vec3<bool>(true, false, true)), true, false, true), false)), Struct_2(Struct_1(~(~15443u), vec4<bool>(false, select(false, true, false), false, any(vec4<bool>(true, true, true, false)))), 1f, firstTrailingBit(vec4<u32>(27121u, 1u, 30033u, 1u)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), func_3(-894f, vec4<u32>(0u, 63968u, 7407u, 9966u)).zwx)));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(628f)))));
    let var_3 = u_input.a;
    var_0 = var_1.a.b;
    return vec2<i32>(firstLeadingBit(~(-var_3)), 1i);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    global0 = -294f;
    let var_0 = !select(select(func_3(-410f, ~vec4<u32>(arg_2.a.a, arg_2.c.x, arg_2.c.x, 3430u)).xwz, !vec3<bool>(arg_2.a.b.x, true, true), arg_1.c.a.b.x), arg_1.a.a.b.xxz, func_3(arg_1.a.b, vec4<u32>(arg_2.c.x, _wgslsmith_sub_u32(4294967295u, 1u), 64808u, firstLeadingBit(24621u))).xzz);
    let var_1 = arg_1.a.b;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-829f * arg_1.c.b))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(659f + -1113f), _wgslsmith_f_op_f32(floor(-1357f)))))));
    global0 = -1314f;
    return arg_2.b;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(func_4(countOneBits(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(func_2(), _wgslsmith_mult_vec2_i32(vec2<i32>(-14433i, 1i), vec2<i32>(49686i, u_input.a))), vec2<i32>(-u_input.a, ~(-30777i)))), Struct_3(Struct_2(Struct_1(arg_1.x, vec4<bool>(true, true, arg_0, false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(341f, 253f)), _wgslsmith_f_op_f32(-829f * 1000f))), countOneBits(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), func_3(_wgslsmith_div_f32(977f, -367f), ~vec4<u32>(4294967295u, arg_1.x, arg_1.x, 4294967295u)).zxx), Struct_1(select(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(75089u, arg_1.x), vec2<u32>(52480u, 4294967295u)), all(vec4<bool>(arg_0, true, arg_0, arg_0))), select(vec4<bool>(false, false, arg_0, arg_0), select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(true, arg_0, true, false), vec4<bool>(arg_0, false, false, false)), !vec4<bool>(arg_0, arg_0, arg_0, true))), Struct_2(Struct_1(49922u, select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(false, true, arg_0, arg_0))), -1065f, ~vec4<u32>(46577u, 4294967295u, 13816u, arg_1.x), vec3<bool>(all(vec2<bool>(false, false)), arg_0, arg_0))), Struct_2(Struct_1(31514u, !(!vec4<bool>(false, arg_0, false, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-483f + 1304f)) + _wgslsmith_f_op_f32(f32(-1f) * -1493f)), _wgslsmith_clamp_vec4_u32(countOneBits(~vec4<u32>(83994u, 21715u, arg_1.x, arg_1.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, 4294967295u, 18368u, 84887u)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 1u, 1u), vec4<u32>(arg_1.x, 30426u, 0u, 4294967295u), vec4<u32>(arg_1.x, 38255u, 4294967295u, arg_1.x)))), vec3<bool>(arg_0, (arg_1.x <= arg_1.x) && any(vec3<bool>(false, arg_0, arg_0)), func_3(_wgslsmith_div_f32(-129f, -1259f), ~vec4<u32>(arg_1.x, 0u, arg_1.x, 1u)).x))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1033f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-595f, _wgslsmith_f_op_f32(min(-973f, _wgslsmith_f_op_f32(-1519f * -1381f))))) - -1064f));
    let var_2 = vec2<u32>(_wgslsmith_clamp_u32(69236u, 4294967295u, 4185u), ~1u);
    global0 = 463f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-303f, 1f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + 644f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-720f, var_1)) + var_1)))));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = _wgslsmith_f_op_f32(func_1(all(vec2<bool>(false, any(vec3<bool>(true, false, true)))), vec2<u32>(8186u, 1u)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-192f)))))));
    global0 = 2449f;
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -733f)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_vec3_i32(firstTrailingBit(reverseBits(vec3<i32>(u_input.a, var_0, 12777i))), abs(-vec3<i32>(3040i, u_input.a, -6669i)))));
}

