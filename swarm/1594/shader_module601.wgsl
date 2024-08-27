struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> bool {
    let var_0 = Struct_1(vec2<u32>(arg_0.a.x, 25404u), true, vec3<bool>(false, !all(select(arg_0.c, arg_0.c, vec3<bool>(arg_0.b, arg_1, true))), false), abs(1u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2) - _wgslsmith_f_op_vec4_f32(arg_2 + arg_2)) * _wgslsmith_f_op_vec4_f32(step(arg_2, _wgslsmith_f_op_vec4_f32(abs(arg_2))))))));
    var var_2 = Struct_1(vec2<u32>(70775u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, var_0.d, var_0.d, arg_0.d), ~vec4<u32>(var_0.d, arg_0.a.x, arg_0.a.x, arg_0.a.x))), any(vec4<bool>(any(!vec4<bool>(false, arg_1, arg_0.c.x, arg_0.b)), true, true, any(select(vec4<bool>(true, false, arg_0.b, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, arg_0.b, false))))), var_0.c, reverseBits(_wgslsmith_div_u32(~1u, 1u)));
    var var_3 = u_input.a;
    let var_4 = Struct_1(abs(~(~vec2<u32>(var_0.d, var_0.a.x))), false, select(select(var_2.c, !select(var_2.c, vec3<bool>(true, var_2.b, true), var_2.b), (true && arg_0.b) != false), var_2.c, any(select(vec2<bool>(arg_0.c.x, arg_1), vec2<bool>(arg_1, false), false)) || true), arg_0.d);
    return (!all(vec4<bool>(var_0.c.x, var_0.c.x, arg_1, true)) & any(!select(vec4<bool>(arg_0.b, true, var_2.c.x, var_0.b), vec4<bool>(arg_0.c.x, false, var_0.b, arg_0.c.x), false))) || !var_4.c.x;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: vec4<i32>) -> vec2<u32> {
    var var_0 = Struct_1(vec2<u32>(4294967295u, 38198u), !func_3(Struct_1(min(vec2<u32>(arg_2.x, arg_2.x), vec2<u32>(arg_2.x, 1u)), arg_1.x, select(vec3<bool>(true, false, arg_0), vec3<bool>(true, false, arg_0), vec3<bool>(arg_1.x, arg_1.x, arg_0)), arg_2.x << (4294967295u % 32u)), select(arg_0, true, false) & true, vec4<f32>(_wgslsmith_div_f32(1237f, 653f), -1215f, -133f, _wgslsmith_f_op_f32(-392f - -1126f))), vec3<bool>(any(vec2<bool>(arg_0, true)), !((arg_2.x >> (100644u % 32u)) > 0u), arg_0), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(arg_2.x, arg_2.x, 0u) & vec3<u32>(arg_2.x, arg_2.x, 4294967295u)), vec3<u32>(~arg_2.x, 0u >> (arg_2.x % 32u), arg_2.x << (95997u % 32u))), _wgslsmith_div_u32(~(~arg_2.x), 4294967295u)));
    let var_1 = _wgslsmith_sub_vec4_i32(arg_3, arg_3);
    let var_2 = -596f;
    let var_3 = var_0.c.x;
    let var_4 = Struct_1(firstTrailingBit(_wgslsmith_mult_vec2_u32(var_0.a, _wgslsmith_add_vec2_u32(var_0.a, arg_2.xy) << (max(vec2<u32>(arg_2.x, 0u), vec2<u32>(17185u, var_0.a.x)) % vec2<u32>(32u)))), all(!select(!var_0.c.yy, select(vec2<bool>(true, false), var_0.c.yx, var_0.b), select(arg_1, vec2<bool>(false, var_0.c.x), vec2<bool>(arg_1.x, arg_0)))), select(!(!select(vec3<bool>(true, true, arg_0), var_0.c, false)), !(!(!var_0.c)), !(!vec3<bool>(var_0.c.x, arg_0, true))), 4294967295u);
    return ~select(firstTrailingBit(var_4.a), ~vec2<u32>(0u, 22171u), var_0.c.x) | vec2<u32>(0u, max(4294967295u, arg_2.x));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2, 0u), vec2<u32>(44566u, 4294967295u)) << (func_2(arg_0 || false, select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), arg_0), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 0u, 1u, 0u), vec4<u32>(arg_1, 95809u, 17071u, 1u)), ~vec4<i32>(0i, -13075i, u_input.a, u_input.a)) % vec2<u32>(32u)), vec2<u32>(arg_2, ~(~arg_2))), false, select(select(!vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(arg_0, false, false), true), !select(select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, false, false), false), vec3<bool>(arg_0, false, arg_0), select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, arg_0, arg_0))), select(vec3<bool>(select(true, false, arg_0), arg_0, !arg_0), !(!vec3<bool>(arg_0, true, arg_0)), all(vec3<bool>(arg_0, arg_0, true)) | false)), ~(~arg_2));
    var var_1 = Struct_1(_wgslsmith_mod_vec2_u32(min(var_0.a, _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.a, var_0.a), vec2<u32>(0u, 28075u))), var_0.a), select(arg_0, false, true), vec3<bool>(var_0.c.x, true, arg_0), min(54824u, 0u));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(850f, 887f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2216f - -1451f), _wgslsmith_div_f32(-1055f, 637f)))))));
    let var_3 = Struct_1(~_wgslsmith_clamp_vec2_u32(min(var_1.a, var_0.a), select(vec2<u32>(arg_2, 23263u), var_1.a, vec2<bool>(arg_0, false)) >> (var_1.a % vec2<u32>(32u)), min(max(vec2<u32>(arg_2, 0u), var_0.a), _wgslsmith_sub_vec2_u32(var_1.a, vec2<u32>(arg_2, 22530u)))), var_0.c.x, select(select(!var_0.c, vec3<bool>(true == var_1.c.x, true, var_0.b), false), vec3<bool>(all(vec2<bool>(true, var_1.b)), arg_0, !all(vec4<bool>(arg_0, var_0.c.x, arg_0, false))), true), 1u | var_1.a.x);
    var var_4 = var_0.d;
    return 1u;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec3<bool> {
    let var_0 = Struct_1(vec2<u32>(1u << (~4294967295u % 32u), 4294967295u), arg_1 == u_input.a, select(arg_0.c, arg_0.c, arg_0.c), ~(~(~firstTrailingBit(arg_0.a.x))));
    let var_1 = !arg_0.c.yz;
    var var_2 = true;
    var var_3 = ~firstTrailingBit(select(select(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.d, var_0.a.x, 50525u), vec3<u32>(var_0.d, arg_0.d, arg_0.d)), ~vec3<u32>(1u, arg_0.d, 4294967295u), false), ~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(59924u, arg_0.d, 43239u)), var_1.x));
    let var_4 = vec4<bool>(var_1.x, var_1.x, arg_0.b, !arg_0.b);
    return vec3<bool>(!(abs(arg_0.d) == ~(~71036u)), var_1.x, all(arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<u32>(~(~4294967295u << (1u % 32u)), min(4294967295u, _wgslsmith_clamp_u32(1u, 17381u, _wgslsmith_sub_u32(64684u, 10466u)))), _wgslsmith_sub_i32(u_input.a, 5298i) != u_input.a, select(func_4(Struct_1(~vec2<u32>(1u, 8229u), true, select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), func_1(false, 8023u, 71291u)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a) & vec3<i32>(u_input.a, -19405i, -5140i), vec3<i32>(u_input.a, 45624i, 16544i))), vec3<bool>(true, true, true), true), abs(~abs(reverseBits(52837u))));
    let var_1 = vec4<i32>(-83247i, _wgslsmith_div_i32(66478i, ~u_input.a), -22283i | (_wgslsmith_mult_i32(max(22340i, u_input.a), u_input.a) & u_input.a), abs(u_input.a));
    var var_2 = min(~(~(vec4<u32>(var_0.a.x, 4294967295u, 23366u, var_0.a.x) & vec4<u32>(25869u, 1u, var_0.a.x, 1u))) ^ vec4<u32>(~(var_0.a.x >> (4294967295u % 32u)), firstLeadingBit(31742u), 1u, var_0.a.x), abs(~(~vec4<u32>(var_0.a.x, 4294967295u, 82545u, 0u))));
    var_2 = ~select(vec4<u32>(var_0.d, firstTrailingBit(~1u), 1u, _wgslsmith_sub_u32(~1u, 1u)), firstLeadingBit(abs(vec4<u32>(var_0.d, var_0.d, var_0.d, var_2.x))), true);
    let var_3 = abs(var_1.yxw);
    var_2 = abs(~vec4<u32>(61755u, var_0.a.x, 58602u, abs(var_2.x)) ^ ~(vec4<u32>(4294967295u, 41993u, 62849u, var_2.x) >> (~vec4<u32>(var_2.x, var_0.a.x, 37512u, var_0.d) % vec4<u32>(32u))));
    var var_4 = _wgslsmith_add_u32(89962u, _wgslsmith_mod_u32(~44483u, var_2.x << (1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-633f))))))));
}

