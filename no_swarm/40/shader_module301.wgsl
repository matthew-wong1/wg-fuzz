struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> vec4<bool> {
    var var_0 = ~(-2147483647i);
    let var_1 = arg_0;
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1025f * 927f), _wgslsmith_f_op_f32(step(1157f, -457f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(917f, 489f) - vec2<f32>(-1000f, 582f))))));
    let var_3 = Struct_1((1u >> (arg_0.a % 32u)) ^ u_input.a.x, select(select(vec4<bool>(false, !arg_0.b.x, arg_2, all(vec2<bool>(true, false))), select(!arg_0.b, vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(false, false, true, arg_1)), vec4<bool>(!var_1.d.x, arg_2, all(arg_0.b), false)), vec4<bool>(var_1.d.x, any(select(arg_0.b.yxy, vec3<bool>(arg_1, arg_1, var_1.c.x), var_1.d)), false, true), var_1.b), select(arg_0.d.zx, select(var_1.b.yz, vec2<bool>(var_1.d.x, true), arg_0.c), all(vec3<bool>(arg_0.d.x, true, any(vec3<bool>(false, arg_1, var_1.b.x))))), var_1.d);
    let var_4 = Struct_1(var_3.a << ((min(u_input.c, ~var_1.a) << (var_3.a % 32u)) % 32u), arg_0.b, !select(!(!vec2<bool>(true, var_1.b.x)), select(select(vec2<bool>(arg_0.c.x, arg_1), vec2<bool>(true, var_1.c.x), var_1.b.wz), arg_0.c, !vec2<bool>(arg_0.d.x, true)), !(var_1.a <= u_input.c)), var_3.d);
    return vec4<bool>(true, true, any(select(!(!var_1.d), arg_0.d, !(!var_1.b.yyy))), all(select(var_3.b, !select(var_3.b, var_3.b, vec4<bool>(var_4.d.x, false, var_4.d.x, false)), all(!var_3.b))));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_1(~1u, !func_3(Struct_1(34328u, select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), vec2<bool>(false, true), vec3<bool>(true, false, false)), any(vec3<bool>(true, true, true)), true), vec2<bool>(false, all(vec3<bool>(true, true, true))), !select(vec3<bool>(true, any(vec2<bool>(true, true)), true), vec3<bool>(true, true, true), true));
    let var_1 = ~(~min(_wgslsmith_clamp_u32(~u_input.c, _wgslsmith_clamp_u32(u_input.c, var_0.a, u_input.c), countOneBits(u_input.a.x)), u_input.c));
    return u_input.c | var_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    let var_0 = 27544u;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2291f)) + arg_1.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2101f)))), arg_0.a.x, arg_1.a.x);
    let var_2 = 11945u;
    var var_3 = !(false & !any(vec2<bool>(true, false))) | (func_3(Struct_1(arg_2 | 0u, select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec2<bool>(false, false), vec3<bool>(true, false, false)), any(vec3<bool>(true, false, false)), false).x & !(true != any(vec4<bool>(false, true, true, false))));
    var var_4 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(966f)) + _wgslsmith_f_op_f32(var_1.x - -322f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + 402f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a.x)) - 1f)), arg_1);
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(abs(-1294f)), -181f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-149f, 850f)), _wgslsmith_f_op_f32(round(728f))))), -715f));
    let var_1 = min(min(~(~u_input.a), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 14111u), u_input.a), u_input.a << (vec2<u32>(u_input.c, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(1u, u_input.a.x)))), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 0u) >> (vec3<u32>(u_input.a.x, 1u, 25522u) % vec3<u32>(32u)), abs(vec3<u32>(24466u, u_input.a.x, 29241u))), ~3780u), vec2<u32>(~4294967295u, 34309u) << (~(vec2<u32>(8540u, 8083u) << (vec2<u32>(26963u, u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u))));
    let var_2 = func_4(func_1(-922f, Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1173f, var_0.a.x))))), var_0, _wgslsmith_mult_u32(~(1u & _wgslsmith_mod_u32(u_input.c, 16046u)), firstTrailingBit(min(func_2(u_input.d.x, Struct_2(vec2<f32>(1163f, 408f))), u_input.c))));
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_div_u32(var_1.x, _wgslsmith_div_u32(~0u, u_input.a.x)) & u_input.a.x, ~_wgslsmith_div_u32(0u ^ var_1.x, 1u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x << (1u % 32u)), vec2<u32>(_wgslsmith_mod_u32(10443u, 4294967295u), ~1u)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, 859f, var_0.a.x), vec3<f32>(var_2.a.x, 545f, var_2.a.x)) + vec3<f32>(-1339f, var_2.a.x, var_2.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 1000f, -1763f)) * vec3<f32>(var_2.a.x, -291f, 736f)))));
    let var_5 = ~firstTrailingBit(~var_1) ^ vec2<u32>(~52844u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(15033u, 1u), ~1u), ~var_1));
    var var_6 = ~_wgslsmith_div_i32(-(min(u_input.b, -2147483647i) & ~u_input.e), select(-u_input.e, _wgslsmith_dot_vec2_i32(u_input.d.zz, u_input.d.wy), true) & ~_wgslsmith_mult_i32(2147483647i, u_input.e));
    let var_7 = firstTrailingBit(0u);
    let var_8 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x);
}

