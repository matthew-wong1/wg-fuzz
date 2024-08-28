struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec3<u32>) -> bool {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1457f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(round(var_0.b.a))))), 779f, any(vec4<bool>(true, true, true, true))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-133f, _wgslsmith_div_f32(var_1, arg_0.b.a), any(vec3<bool>(true, true, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a))))), var_0.e.yyy & vec3<u32>(var_0.e.x, 1u, arg_2.x));
    var_2 = Struct_2(1239f, vec3<u32>(min(abs(~4294967295u), 1u), var_0.d, _wgslsmith_mult_u32(var_2.b.x, ~reverseBits(51582u))));
    var var_3 = ~arg_2.x;
    return any(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), var_2.a == 1183f)) && ((any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)) && all(vec4<bool>(true, true, true, true))) | !(~0u < _wgslsmith_dot_vec4_u32(vec4<u32>(46512u, 4294967295u, 0u, var_0.e.x), vec4<u32>(71364u, 1u, var_2.b.x, u_input.b.x))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3) -> i32 {
    let var_0 = min(vec3<i32>(arg_2.a.a, u_input.a.x, arg_0.c.x), u_input.a.zwz);
    let var_1 = ~_wgslsmith_dot_vec4_u32(reverseBits(~arg_0.e), arg_2.e) >> (arg_0.d % 32u);
    let var_2 = arg_1;
    var var_3 = vec3<u32>(16290u, ~(arg_2.d | _wgslsmith_mult_u32(~74781u, ~u_input.b.x)), 1u);
    var var_4 = _wgslsmith_dot_vec4_u32(arg_0.e, firstTrailingBit(arg_0.e) >> (vec4<u32>(126586u, ~(arg_2.e.x | 35776u), _wgslsmith_div_u32(~arg_0.d, 1u), ~_wgslsmith_dot_vec2_u32(arg_0.b.b.yx, vec2<u32>(var_3.x, 19843u))) % vec4<u32>(32u)));
    return _wgslsmith_div_i32(select(~1i, -30259i, (u_input.b.x >= arg_0.e.x) & (arg_1 | true)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(21176i, _wgslsmith_sub_i32(7709i, arg_0.c.x)), (-2147483647i ^ arg_2.c.x) ^ reverseBits(-2147483647i))) << (4294967295u % 32u);
}

fn func_2(arg_0: vec4<i32>) -> vec2<bool> {
    var var_0 = Struct_3(Struct_1(47219i & func_4(Struct_3(Struct_1(-9510i), Struct_2(-1232f, u_input.b), arg_0.www, u_input.b.x, vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)), func_3(Struct_3(Struct_1(u_input.a.x), Struct_2(-1000f, vec3<u32>(0u, 10020u, 49456u)), arg_0.wwz, u_input.b.x, vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x)), -158f, u_input.b), Struct_3(Struct_1(arg_0.x), Struct_2(-1000f, vec3<u32>(63278u, 0u, 4294967295u)), vec3<i32>(u_input.a.x, arg_0.x, -2147483647i), 14023u, vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)))), Struct_2(1745f, ~(~vec3<u32>(0u, 0u, 4294967295u))), _wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.c, arg_0.x), vec3<i32>(-(u_input.a.x & -92847i), 2147483647i, -596i)), 0u, ~_wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.b.x, 61135u, u_input.b.x, u_input.b.x) ^ vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(84465u, u_input.b.x, u_input.b.x, 1u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 66979u, 4294967295u), vec4<u32>(42157u, 13643u, 106388u, 20561u)) % vec4<u32>(32u))));
    let var_1 = 1821u;
    var_0 = Struct_3(Struct_1(-arg_0.x), var_0.b, vec3<i32>(0i, _wgslsmith_sub_i32(countOneBits(-1i), func_4(Struct_3(Struct_1(u_input.a.x), Struct_2(var_0.b.a, vec3<u32>(4294967295u, 5761u, var_1)), var_0.c, 3020u, var_0.e), true, Struct_3(Struct_1(2147483647i), var_0.b, u_input.a.yzz, var_1, var_0.e))), -(~(~2147483647i))), _wgslsmith_add_u32(~countOneBits(4294967295u), var_1) >> (_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_clamp_u32(var_0.d, u_input.b.x, var_1)), _wgslsmith_dot_vec3_u32(u_input.b & vec3<u32>(u_input.b.x, 1u, var_1), firstLeadingBit(vec3<u32>(1u, 1u, var_1)))) % 32u), var_0.e);
    var var_2 = var_0.a;
    let var_3 = 513f;
    return vec2<bool>(false, true);
}

fn func_1(arg_0: vec2<f32>) -> vec2<bool> {
    return vec2<bool>(all(!func_2(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(2147483647i, 6926i, 6971i, 0i)))), func_2(~vec4<i32>(_wgslsmith_sub_i32(u_input.c, u_input.a.x), 8143i, u_input.a.x ^ -68228i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a))).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-788f, -145f) - vec2<f32>(-391f, -1490f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(624f + _wgslsmith_f_op_f32(225f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(956f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1102f + var_1)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1, var_1)), var_1) - _wgslsmith_f_op_f32(sign(-1070f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -1419f)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1) * vec2<f32>(-1033f, var_1)))))));
}

