struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(33522u, 1u, 298u), vec3<u32>(4294967295u, 33977u, 55876u), vec3<u32>(1u, 34580u, 1u), vec3<u32>(0u, 11792u, 1u), vec3<u32>(4294967295u, 0u, 47725u), vec3<u32>(19094u, 1u, 1u), vec3<u32>(14000u, 1u, 14971u), vec3<u32>(31105u, 4166u, 57684u), vec3<u32>(39100u, 6367u, 0u), vec3<u32>(14379u, 1u, 0u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec4<u32>) -> vec4<u32> {
    var var_0 = vec3<i32>(~(_wgslsmith_add_i32(-u_input.b, -2147483647i) & _wgslsmith_dot_vec2_i32(u_input.a.xx << (arg_2.wz % vec2<u32>(32u)), select(u_input.a.yy, vec2<i32>(0i, 0i), true))), u_input.b, -2147483647i);
    let var_1 = arg_1;
    let var_2 = max(abs(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), vec2<u32>(arg_1.a.x, u_input.c)) & ~var_1.b.ww), abs(vec2<u32>(~1u ^ ~arg_0, 28168u)));
    var_0 = select(vec3<i32>(~1i | (var_0.x >> ((arg_0 | 0u) % 32u)), -_wgslsmith_div_i32(0i, 18094i) >> (~_wgslsmith_mult_u32(arg_0, 35114u) % 32u), u_input.b), u_input.a.wwz, select(!vec3<bool>(arg_1.e, select(var_1.e, false, arg_1.e), any(vec3<bool>(var_1.d.b, true, true))), select(vec3<bool>(var_1.d.b, true, all(vec2<bool>(true, false))), vec3<bool>(all(vec4<bool>(arg_1.e, true, false, false)), true, false), true), select(vec3<bool>(true, arg_1.c.c, true), vec3<bool>(arg_1.e, arg_0 != 394u, var_1.e & arg_1.d.c), !vec3<bool>(var_1.c.c, true, arg_1.e))));
    return select(~select(vec4<u32>(1u, arg_0, u_input.c, u_input.c) ^ min(vec4<u32>(0u, 30702u, 0u, arg_2.x), vec4<u32>(22680u, var_2.x, var_2.x, 68031u)), arg_2, !vec4<bool>(false, arg_1.e, false, var_1.d.c)), min(arg_1.b ^ ~(~var_1.b), vec4<u32>(13755u, ~arg_2.x, abs(4294967295u), min(69814u, u_input.c)) ^ (~var_1.b & arg_2)), all(select(vec4<bool>(var_1.e, all(vec2<bool>(false, arg_1.c.b)), var_1.d.b, false), vec4<bool>(!var_1.e, var_0.x < 1i, arg_1.d.c, arg_1.c.b), true)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<u32> {
    var var_0 = arg_0;
    let var_1 = arg_0.a.x;
    let var_2 = arg_0;
    let var_3 = vec4<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u | u_input.c, u_input.c), _wgslsmith_add_vec2_u32(~vec2<u32>(1u, u_input.c), vec2<u32>(36545u, 1u) & vec2<u32>(1u, u_input.c)))), min(u_input.c, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(77116u << (u_input.c % 32u), _wgslsmith_div_u32(u_input.c, u_input.c)), ~(vec2<u32>(u_input.c, 49117u) | vec2<u32>(u_input.c, u_input.c))) << (~reverseBits(u_input.c >> (u_input.c % 32u)) % 32u), u_input.c);
    var var_4 = var_3.wxy;
    return ~min(func_3(u_input.c, Struct_2(~vec2<u32>(50300u, var_4.x), var_3, Struct_1(vec3<f32>(var_0.a.x, 709f, arg_0.a.x), false, arg_0.c), arg_0, arg_0.b), vec4<u32>(var_3.x << (var_4.x % 32u), ~var_4.x, 4294967295u << (u_input.c % 32u), 15412u)), max(_wgslsmith_mult_vec4_u32(abs(var_3), _wgslsmith_div_vec4_u32(vec4<u32>(27541u, 5087u, 1u, u_input.c), vec4<u32>(u_input.c, var_3.x, var_4.x, 34216u))), _wgslsmith_div_vec4_u32(var_3, vec4<u32>(var_4.x, var_3.x, 4294967295u, var_4.x)) >> (var_3 % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> vec2<bool> {
    var var_0 = abs(_wgslsmith_add_vec4_u32(~(~firstLeadingBit(vec4<u32>(4294967295u, 0u, u_input.c, 82685u))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(arg_2, arg_2), ~0u, 2733u), ~firstTrailingBit(vec4<u32>(0u, 96936u, arg_2, 26186u)))));
    let var_1 = _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(230f, arg_1)))))));
    var_0 = max(~(~min(min(vec4<u32>(arg_2, 4294967295u, var_0.x, 4294967295u), vec4<u32>(var_0.x, 62539u, var_0.x, 107708u)), vec4<u32>(u_input.c, arg_2, 24968u, 39282u) & vec4<u32>(arg_2, arg_2, 1u, 87482u))), _wgslsmith_mult_vec4_u32(~func_2(Struct_1(vec3<f32>(-767f, arg_1, -197f), false, arg_0.c), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.a.x, var_1, 3105f, arg_1)))), vec4<u32>(40356u, 4294967295u, 1u, _wgslsmith_sub_u32(var_0.x, abs(13473u)))));
    let var_2 = -187f;
    let var_3 = arg_0;
    return vec2<bool>(var_3.c, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 10>();
    let var_0 = true;
    var var_1 = true;
    let var_2 = Struct_1(vec3<f32>(-1047f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1026f - -2081f) + -988f))), false, true);
    var var_3 = any(select(select(func_1(Struct_1(var_2.a, var_0, var_2.c), var_2.a.x, 12482u), select(vec2<bool>(var_0, false), vec2<bool>(var_2.b, true), var_2.c), select(vec2<bool>(var_2.c, var_0), vec2<bool>(false, var_2.c), false)), !vec2<bool>(true, var_2.b), true)) | all(vec4<bool>(true, var_2.b, true, true));
    global0 = array<vec3<u32>, 10>();
    global0 = array<vec3<u32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~max(0u, 1u), _wgslsmith_div_u32(firstTrailingBit(~u_input.c), 0u ^ ~u_input.c), ~u_input.c), 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * 231f)))), firstLeadingBit(1i), ~_wgslsmith_div_i32(-u_input.b, _wgslsmith_add_i32(u_input.b, 1i)) | u_input.b, var_2.a.x);
}

