struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16>;

var<private> global1: Struct_4 = Struct_4(26685i, -68380i, vec3<u32>(1u, 94779u, 0u), vec2<u32>(55762u, 4294967295u), 60722u);

var<private> global2: array<vec2<i32>, 16>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>) -> u32 {
    global1 = Struct_4(33037i, global1.b, _wgslsmith_div_vec3_u32(global1.c, vec3<u32>(firstTrailingBit(global1.e), 1u, abs(~13878u))), reverseBits(global1.d), global1.c.x >> (~(~74649u) % 32u));
    var var_0 = 2955f;
    var var_1 = ~abs(_wgslsmith_sub_u32(~global1.e, _wgslsmith_dot_vec3_u32(global1.c, min(vec3<u32>(u_input.b, u_input.b, global1.e), global1.c))));
    var var_2 = abs(firstTrailingBit(~arg_0));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1762f, 1778f, false))))));
    return 1u;
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = ~_wgslsmith_mult_u32(~1u, func_3(select(~vec4<u32>(0u, u_input.b, 4294967295u, arg_0), abs(vec4<u32>(arg_0, global1.e, global1.c.x, u_input.b)), true), vec4<bool>(true, true, true, true)));
    global2 = array<vec2<i32>, 16>();
    global2 = array<vec2<i32>, 16>();
    return _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b, -2147483647i, global1.a), vec3<i32>(37931i, u_input.a, 2147483647i)) & 1i, u_input.c), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, u_input.a, global1.a, u_input.c), -vec4<i32>(global1.a, global1.b, u_input.a, -1i))), global1.a);
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_sub_vec4_i32(~(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-4541i, global1.b, u_input.c, -16372i), vec4<i32>(arg_0.a.x, global1.b, -31334i, -2147483647i)), vec4<i32>(u_input.a, arg_0.a.x, arg_0.a.x, -45339i)) & vec4<i32>(_wgslsmith_div_i32(2147483647i, 33609i), -14119i ^ global1.a, ~(-1i), 23761i)), _wgslsmith_mult_vec4_i32(vec4<i32>(35843i, select(arg_0.a.x, 14461i, true), func_2(50942u), i32(-1i) * -2147483647i), vec4<i32>(select(u_input.a, global1.a, true), arg_0.a.x, global1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(10238i, arg_0.a.x, 2147483647i), vec3<i32>(arg_0.a.x, global1.b, 2147483647i)))) ^ min(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, global1.b, arg_0.a.x, 7719i), firstTrailingBit(vec4<i32>(global1.b, arg_0.a.x, arg_0.a.x, -2147483647i)), select(vec4<i32>(u_input.c, global1.a, u_input.c, 0i), vec4<i32>(global1.a, global1.a, -1i, -27667i), vec4<bool>(false, false, false, false))), vec4<i32>(arg_0.a.x, ~global1.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-45567i, -1i, global1.a), vec3<i32>(global1.b, -16514i, arg_0.a.x)), -22270i)));
    let var_1 = abs(~min(vec4<u32>(1u, global1.c.x >> (25379u % 32u), 0u, func_3(vec4<u32>(global1.d.x, global1.d.x, u_input.b, 0u), vec4<bool>(false, false, false, false))), firstTrailingBit(vec4<u32>(global1.d.x, 4294967295u, u_input.b, global1.d.x)) >> (reverseBits(vec4<u32>(34991u, 72727u, global1.c.x, 38109u)) % vec4<u32>(32u))));
    global1 = Struct_4(_wgslsmith_add_i32(~global1.a, func_2(~var_1.x ^ var_1.x)), global1.b, var_1.ywz >> (vec3<u32>(85284u, ~u_input.b, ~(~46626u)) % vec3<u32>(32u)), var_1.zw, global1.e);
    global1 = Struct_4(~u_input.a, ~(-5322i & countOneBits(firstTrailingBit(arg_0.a.x))), ~(~(~_wgslsmith_sub_vec3_u32(var_1.zzw, vec3<u32>(u_input.b, 1u, global1.c.x)))), select(global1.c.xy, ~abs(vec2<u32>(4294967295u, 4294967295u)), !(9535u == countOneBits(global1.c.x))), min(var_1.x, countOneBits(u_input.b) | var_1.x));
    global0 = array<Struct_3, 16>();
    return _wgslsmith_dot_vec3_i32(var_0.wwz, -abs(~vec3<i32>(u_input.c, 2147483647i, arg_0.a.x)) & _wgslsmith_div_vec3_i32(-min(vec3<i32>(0i, var_0.x, 1i), var_0.ywz), vec3<i32>(_wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(16989u, 16u)], vec2<i32>(30826i, var_0.x)), _wgslsmith_mod_i32(var_0.x, var_0.x), _wgslsmith_div_i32(-1i, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = max(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, global1.a), select(global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(u_input.b, 16u)], vec2<bool>(true, false))) << (_wgslsmith_div_u32(~u_input.b, global1.c.x << (global1.d.x % 32u)) % 32u), _wgslsmith_sub_i32(~global1.a, global1.a)), ~vec2<i32>(-(~global1.a), -(~(-24698i))));
    var var_2 = Struct_4(func_1(Struct_1(vec2<i32>(1i, select(-1i, global1.a, true)))), -1i << (u_input.b % 32u), global1.c, global1.d, ~(_wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, u_input.b), 0u) << (1314u % 32u)));
    global1 = Struct_4(-reverseBits(_wgslsmith_dot_vec2_i32(var_1, firstLeadingBit(var_1))), 1i, firstLeadingBit(global1.c), vec2<u32>(72352u, _wgslsmith_dot_vec4_u32(min(min(vec4<u32>(var_2.d.x, 4294967295u, u_input.b, 4294967295u), vec4<u32>(0u, u_input.b, u_input.b, var_2.d.x)), reverseBits(vec4<u32>(1u, var_2.e, global1.d.x, 0u))), abs(~vec4<u32>(u_input.b, 42626u, 26755u, 1u)))), reverseBits(4183u));
    let var_3 = -786f;
    let var_4 = Struct_1(vec2<i32>(-u_input.c, abs(1i)));
    global1 = Struct_4(-_wgslsmith_dot_vec3_i32(reverseBits(firstTrailingBit(vec3<i32>(var_2.a, var_4.a.x, var_4.a.x))), ~reverseBits(vec3<i32>(44469i, var_4.a.x, global1.b))), reverseBits(reverseBits(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a, 19334i), vec2<i32>(u_input.c, 2147483647i))))), vec3<u32>(4294967295u, firstLeadingBit(_wgslsmith_mult_u32(min(var_2.c.x, 50436u), global1.d.x)), 31963u), ~var_2.c.xy, 1u);
    var var_5 = any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), !any(vec4<bool>(false, true, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(654f, var_3, var_3))), vec3<f32>(273f, 789f, var_3)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1065f, -2394f, -1035f), _wgslsmith_div_vec3_f32(vec3<f32>(var_3, var_3, -1002f), vec3<f32>(-138f, var_3, -115f)), true))) - _wgslsmith_div_vec3_f32(vec3<f32>(-895f, var_3, _wgslsmith_f_op_f32(var_3 * var_3)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-546f, var_3, 1918f) + vec3<f32>(-462f, 493f, -1473f)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_3, -544f, 1191f), vec3<f32>(var_3, -114f, var_3))))), -vec2<i32>(~(~u_input.c), ~global1.a), ~firstTrailingBit(1i));
}

