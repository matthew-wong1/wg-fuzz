struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
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

var<private> global0: Struct_3 = Struct_3(Struct_1(vec3<f32>(504f, -222f, 811f), 27701i, -1113f), -46263i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec4<i32>) -> vec4<u32> {
    var var_0 = u_input.e;
    var var_1 = select(!vec3<bool>(false, true, arg_1.x), !select(vec3<bool>(true, true, true), vec3<bool>(!arg_1.x, all(vec4<bool>(false, true, true, arg_1.x)), true), false), !vec3<bool>(arg_1.x && !arg_1.x, arg_1.x, all(vec3<bool>(arg_1.x, true, false))));
    let var_2 = firstTrailingBit(_wgslsmith_div_vec2_u32(countOneBits(abs(vec2<u32>(42090u, 16442u))), abs(reverseBits(vec2<u32>(u_input.a, u_input.e))))) ^ vec2<u32>(u_input.e, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(26276u, u_input.a, 1u) | vec3<u32>(u_input.a, 6554u, 76588u), vec3<u32>(1u, 0u, u_input.a) | vec3<u32>(u_input.e, u_input.a, u_input.a)), u_input.e));
    let var_3 = _wgslsmith_f_op_f32(-global0.a.a.x);
    var_0 = var_2.x;
    return max(vec4<u32>(~_wgslsmith_mod_u32(u_input.e, reverseBits(0u)), u_input.e ^ _wgslsmith_mod_u32(40685u, _wgslsmith_div_u32(var_2.x, var_2.x)), u_input.a, ~_wgslsmith_mult_u32(u_input.a, 3615u) << (_wgslsmith_mult_u32(_wgslsmith_div_u32(12886u, var_2.x), ~23943u) % 32u)), select(~reverseBits(vec4<u32>(1u, u_input.e, 57896u, 128u)) | vec4<u32>(u_input.e, 6893u, 0u, ~u_input.e), ~reverseBits(~vec4<u32>(32120u, 10992u, u_input.e, 4294967295u)), !(!arg_1.x)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a.a)) + global0.a.a), global0.b, global0.a.a.x), false, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_2.c + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1235f, 2022f, -419f, -457f), arg_2.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1289f, -430f, 967f, 1153f) - vec4<f32>(-1076f, -884f, -648f, global0.a.c)))))), u_input.b.x | ~countOneBits(abs(3568i)));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a.c)));
    let var_2 = arg_2.d;
    var var_3 = Struct_3(var_0.a, var_0.a.b);
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_3.a.a.x, 267f, var_0.b)), _wgslsmith_f_op_f32(sign(global0.a.a.x)), any(vec3<bool>(true, false, arg_2.b)))), -924f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.c) - global0.a.a.x)))), -var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c.x, global0.a.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return u_input.e;
}

fn func_2(arg_0: i32) -> vec4<u32> {
    global0 = Struct_3(Struct_1(vec3<f32>(global0.a.c, global0.a.c, 1143f), u_input.d, global0.a.a.x), ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-23411i, 2147483647i, global0.a.b), vec3<i32>(-2147483647i, -2147483647i, 1i)), countOneBits(45258i)) >> (u_input.a % 32u));
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(261f, -1000f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.c, global0.a.c)))))));
    let var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u << (func_3(34569i, 0u, Struct_2(Struct_1(global0.a.a, 0i, -2110f), false, vec4<f32>(1138f, var_1.x, var_1.x, 267f), 9274i)) % 32u), ~abs(u_input.e), _wgslsmith_sub_u32(u_input.a, ~4694u)), ~vec3<u32>(1u, max(u_input.a, 10889u), 28545u)), abs(~func_3(countOneBits(arg_0), ~u_input.e, Struct_2(Struct_1(global0.a.a, global0.a.b, 747f), true, vec4<f32>(global0.a.c, -971f, var_1.x, var_1.x), u_input.d))), ~(~firstLeadingBit(_wgslsmith_clamp_u32(0u, 1u, u_input.a))));
    var var_3 = global0.a.c;
    return firstTrailingBit(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(0u, 4294967295u, var_2.x, var_2.x) | vec4<u32>(0u, 0u, 2947u, 33233u)) & _wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, 4294967295u, 23763u, u_input.a) << (vec4<u32>(var_2.x, 1u, 1u, 4294967295u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(4294967295u, 1u, var_2.x, 4294967295u))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, 46371u, 128717u, var_2.x), vec4<u32>(u_input.a, 0u, u_input.a, var_2.x) << (vec4<u32>(var_2.x, var_2.x, 4294967295u, u_input.e) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~vec3<u32>(~1u, select(firstLeadingBit(1u), ~u_input.e, true), u_input.a | ~u_input.e));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(min(global0.a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1567f, 269f, global0.a.a.x))) + vec3<f32>(-1000f, global0.a.c, -386f)))), 1i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1000f, -657f, true))))), global0.a.b);
    let var_2 = vec3<f32>(var_1.a.c, -539f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(181f)) - global0.a.a.x), _wgslsmith_f_op_f32(-var_1.a.c))));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(var_2 + vec3<f32>(-171f, var_1.a.a.x, _wgslsmith_f_op_f32(-1271f * -1404f))), var_1.a.b, 630f), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-u_input.d, -var_1.a.b), 29855i << (~_wgslsmith_add_u32(u_input.a, 4294967295u) % 32u)));
    var var_4 = ~select(min(vec4<u32>(~u_input.e, u_input.a, 0u, abs(15712u)), func_1(Struct_3(Struct_1(var_3.a.a, var_3.a.b, -828f), -1i), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), var_3, ~vec4<i32>(-14833i, var_1.b, global0.b, u_input.d))), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.e, var_0.x, var_0.x, 0u), vec4<u32>(u_input.e, 4294967295u, var_0.x, var_0.x), func_2(var_3.b)), true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_i32(4746i, -25326i)));
}

