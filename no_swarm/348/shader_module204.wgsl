struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: i32) -> bool {
    var var_0 = Struct_2(~vec3<u32>(max(_wgslsmith_sub_u32(u_input.c, 4294967295u), u_input.b.x ^ 54826u), ~(~0u), ~(~u_input.c)), 4294967295u);
    let var_1 = arg_1.xwy;
    let var_2 = Struct_2(~var_0.a, 84634u);
    let var_3 = Struct_3(Struct_1(u_input.a, vec4<bool>(true, !(-1i == u_input.a.x), true, true), reverseBits(u_input.a)), ~select(~var_0.a.yz, u_input.b, true));
    let var_4 = Struct_2(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(38821u, 1u, var_0.b) | ~vec3<u32>(62668u, u_input.c, 81410u), ~var_2.a, min(~vec3<u32>(0u, var_0.a.x, 20553u), var_0.a))), _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(abs(vec4<u32>(var_3.b.x, var_2.a.x, 1u, 1u)), ~vec4<u32>(var_0.b, 22557u, 1u, 4294967295u)), ~(~vec4<u32>(var_0.b, var_3.b.x, 3545u, u_input.c))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))))) != 232f;
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = Struct_1(u_input.e, select(!vec4<bool>(true, false, true, all(vec3<bool>(true, false, true))), vec4<bool>(!any(vec2<bool>(false, true)), all(vec3<bool>(true, false, false)), all(vec4<bool>(true, true, true, true)), false), vec4<bool>(false, func_3(282f, vec4<f32>(-456f, 438f, -674f, 1000f), -2147483647i) & true, true, true)), select(-vec3<i32>(_wgslsmith_mod_i32(arg_0, -25893i), 48228i, arg_0 >> (0u % 32u)), firstTrailingBit(select(reverseBits(vec3<i32>(0i, u_input.e.x, arg_0)), abs(u_input.a), u_input.b.x < u_input.b.x)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)))));
    var var_1 = 69009i | (~_wgslsmith_mult_i32(arg_0, _wgslsmith_add_i32(u_input.a.x, arg_0)) & 1i);
    var_1 = u_input.a.x;
    let var_2 = Struct_1(~(min(vec3<i32>(-1i, u_input.d, 0i), u_input.e) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 5571u), ~vec3<u32>(1u, u_input.b.x, 1u)) % vec3<u32>(32u))), !(!var_0.b), abs(-var_0.c));
    global0 = var_2.c.x;
    return arg_0;
}

fn func_1(arg_0: i32) -> i32 {
    global0 = ~_wgslsmith_div_i32(func_2(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(39570i, u_input.d, -37646i), u_input.a))), -2147483647i);
    let var_0 = _wgslsmith_sub_i32(i32(-1i) * -_wgslsmith_add_i32(firstLeadingBit(u_input.d), abs(arg_0)), _wgslsmith_dot_vec3_i32(u_input.a, reverseBits(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-26027i, arg_0, 2147483647i), vec3<i32>(-1i, 0i, 86236i), u_input.a))));
    global0 = var_0;
    let var_1 = -13474i;
    var var_2 = !(!vec4<bool>(true, any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(1494f + 533f) < _wgslsmith_f_op_f32(select(-925f, -1128f, true)), func_3(-1358f, vec4<f32>(-2049f, 1398f, 283f, -820f), -7961i) || all(vec3<bool>(false, false, false))));
    return 23290i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_i32(-49479i, ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.d, u_input.d, u_input.a.x, u_input.d), vec4<i32>(-34327i, u_input.d, 17852i, -1i), true), vec4<i32>(-2147483647i, 17867i, u_input.a.x, 2147483647i) << (vec4<u32>(u_input.c, 17102u, u_input.b.x, u_input.c) % vec4<u32>(32u)))) ^ min(u_input.d, _wgslsmith_mult_i32(func_1(47338i), reverseBits(-1i)));
    let var_0 = vec3<i32>(~(-69081i), u_input.d, 0i);
    var var_1 = !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), vec3<bool>(any(vec3<bool>(true, true, true)), true, any(vec2<bool>(true, false))), true || any(vec2<bool>(true, true)));
    var_1 = select(!(!(!vec3<bool>(false, var_1.x, var_1.x))), !(!select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, false, var_1.x), vec3<bool>(false, var_1.x, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), !vec3<bool>(var_1.x, var_1.x, var_1.x))), true);
    var var_2 = 2014f;
    var var_3 = vec2<u32>(firstLeadingBit(u_input.b.x), abs(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.b.x), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.b.x))), 1u)));
    var var_4 = Struct_2(_wgslsmith_mod_vec3_u32(abs(countOneBits(vec3<u32>(32259u, 1u, 16930u)) & firstTrailingBit(vec3<u32>(u_input.b.x, 4294967295u, 1u))), ~(~countOneBits(vec3<u32>(u_input.c, u_input.b.x, var_3.x)))), select(1u, u_input.c, (countOneBits(u_input.c) == 42966u) || !(var_0.x >= u_input.a.x)));
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -884f);
    let var_5 = 10837i;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<u32>((var_4.b & 0u) >> (41424u % 32u), (1u << (u_input.b.x % 32u)) & u_input.b.x), var_4.a.yy), _wgslsmith_div_u32(~(79452u >> (_wgslsmith_dot_vec3_u32(var_4.a, var_4.a) % 32u)), ~(~_wgslsmith_mult_u32(1u, 4294967295u))), 53012u, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-953f, -782f, 155f, 1240f)))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(312f, -1909f))));
}

