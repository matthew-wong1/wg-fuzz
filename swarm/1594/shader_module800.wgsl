struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = 1u;
    let var_1 = reverseBits(vec2<u32>(7445u, ~firstTrailingBit(1u)));
    var_0 = 1u;
    var var_2 = Struct_2(false, Struct_1(any(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true))), -u_input.a, false), Struct_1((false && any(vec2<bool>(false, true))) & false, min(_wgslsmith_mult_i32(abs(2147483647i), ~u_input.b), _wgslsmith_clamp_i32(u_input.a, min(78162i, u_input.b), _wgslsmith_div_i32(-9810i, u_input.a))), any(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)))), min(0u, ~_wgslsmith_div_u32(countOneBits(var_1.x), _wgslsmith_mod_u32(var_1.x, 4294967295u))), true);
    var var_3 = i32(-1i) * -32364i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(175f, 872f)), -1225f)) + _wgslsmith_f_op_f32(min(1165f, -1470f))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1((564f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(768f * 2120f), _wgslsmith_f_op_f32(func_3()))) & true, 12159i, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1134f)) <= _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(900f, 1050f)))));
    let var_1 = Struct_2(var_0.a, var_0, Struct_1(false, -2147483647i, true), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(52176u, 0u, 4294967295u, 62120u)), _wgslsmith_mult_vec4_u32(vec4<u32>(abs(15519u), ~102837u, ~4294967295u, ~56055u), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(4294967295u, 1964u, 1u, 2907u), vec4<u32>(4294967295u, 30392u, 4294967295u, 4294967295u), vec4<bool>(var_0.a, true, true, var_0.c)), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(88931u, 1u, 4294967295u, 4294967295u)))), all(select(select(vec4<bool>(var_0.a, false, var_0.c, var_0.a), vec4<bool>(var_0.a, var_0.c, false, var_0.a), !vec4<bool>(var_0.a, var_0.a, true, true)), !(!vec4<bool>(var_0.c, var_0.a, var_0.c, var_0.c)), !vec4<bool>(true, false, var_0.c, false))));
    var var_2 = var_1.c;
    var_2 = var_0;
    var_2 = var_1.c;
    return Struct_1(true, _wgslsmith_dot_vec3_i32(vec3<i32>(24279i, firstLeadingBit(u_input.a), ~(-62896i)), ~(vec3<i32>(var_2.b, 16280i, 35920i) | vec3<i32>(-17896i, u_input.b, var_1.c.b)) >> ((~vec3<u32>(var_1.d, var_1.d, 1u) ^ ~vec3<u32>(1u, var_1.d, var_1.d)) % vec3<u32>(32u))), any(vec2<bool>(true, true)));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: vec2<bool>) -> i32 {
    let var_0 = Struct_2(true, Struct_1(arg_1.x, u_input.b, false), func_2(), 17617u, true);
    var var_1 = ~(~select(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, arg_0, 16663u), vec3<u32>(68930u, 0u, arg_0)), abs(vec3<u32>(arg_0, 4294967295u, arg_0)), ~arg_0 >= 44979u));
    var var_2 = !select(select(!(!arg_1), arg_1, arg_1), arg_1, !(!var_0.a));
    var_2 = !select(select(arg_1, arg_1, arg_2.x), vec4<bool>(!(var_0.b.b > 2147483647i), var_2.x, false, var_2.x), arg_2.x);
    var var_3 = var_0.c;
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -767f;
    let var_1 = Struct_1(_wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), -vec2<i32>(0i, 2147483647i))) != u_input.a, _wgslsmith_dot_vec2_i32(-(~vec2<i32>(-265i, 1i)) | _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, 18449i)), ~vec2<i32>(-1i, u_input.a)), ~(~vec2<i32>(u_input.b, -1i))), _wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, func_1(0u, vec4<bool>(true, true, true, true), vec2<bool>(false, true))), u_input.b) < u_input.b);
    let var_2 = _wgslsmith_mod_i32(-14902i, -1i);
    var var_3 = 19836i;
    var_3 = 2147483647i;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -245f));
    var_3 = u_input.a;
    let var_5 = func_2().b;
    let x = u_input.a;
    s_output = StorageBuffer(48085u, 47643u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(108193u, 4294967295u), ~vec2<u32>(1u, 1u)), vec2<i32>(-_wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.b, u_input.b, u_input.a), vec3<i32>(0i, var_5, 1i)), 10153i));
}

