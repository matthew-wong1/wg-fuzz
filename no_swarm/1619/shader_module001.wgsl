struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5>;

var<private> global1: array<Struct_1, 13>;

var<private> global2: array<f32, 28> = array<f32, 28>(914f, -178f, 1442f, -1060f, -285f, 1214f, -1594f, 432f, -444f, 1650f, -2973f, -632f, -1000f, 733f, -874f, 381f, 1062f, -353f, -835f, 159f, 318f, 260f, 1216f, 465f, -563f, 1416f, 347f, 477f);

var<private> global3: vec2<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>, arg_3: u32) -> i32 {
    global0 = array<vec3<u32>, 5>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_3, _wgslsmith_dot_vec4_u32(max(min(vec4<u32>(arg_3, arg_2.x, arg_2.x, arg_3), select(vec4<u32>(1u, u_input.a.x, 4294967295u, 4294967295u), vec4<u32>(arg_3, 24570u, 76370u, arg_3), vec4<bool>(true, true, true, global3.x))), vec4<u32>(4294967295u, 111388u, _wgslsmith_clamp_u32(arg_2.x, 4294967295u, 80906u), 1u)), ~(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_2.x) << (vec4<u32>(4864u, 83916u, u_input.a.x, 0u) % vec4<u32>(32u))) & min(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.x, u_input.a.x, arg_2.x, arg_3), vec4<u32>(4294967295u, 50648u, 14548u, arg_2.x)), ~vec4<u32>(8888u, 37142u, u_input.b, arg_2.x)))), 13u)];
    global3 = select(var_0.a.yy, !select(!select(vec2<bool>(true, var_0.a.x), var_0.a.yy, true), arg_0.a.yy, var_0.a.zz), vec2<bool>(false, !var_0.a.x));
    var var_1 = arg_0.a.x;
    var var_2 = 1u;
    return 20335i;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: f32, arg_3: vec2<bool>) -> Struct_1 {
    global3 = arg_3;
    var var_0 = vec2<i32>(func_3(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], -_wgslsmith_dot_vec4_i32(vec4<i32>(-21262i, -1i, 2147483647i, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, -866i, 41402i, -1i), vec4<i32>(-2147483647i, 0i, 0i, -635i))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(0u, arg_1.x, arg_1.x)), ~(global0[_wgslsmith_index_u32(arg_1.x, 5u)] | vec3<u32>(arg_0.x, arg_0.x, 5404u))), u_input.b), _wgslsmith_div_i32(-26895i, 1i));
    var var_1 = vec4<bool>(!(!(global3.x || false) || any(vec4<bool>(false, false, true, global3.x))), global3.x, all(vec2<bool>(false, !select(arg_3.x, false, false))), any(select(vec2<bool>(true, true), arg_3, all(!vec4<bool>(false, false, global3.x, arg_3.x)))));
    let var_2 = Struct_1(select(select(vec3<bool>(any(vec4<bool>(false, arg_3.x, true, global3.x)), all(vec4<bool>(false, false, var_1.x, arg_3.x)), !arg_3.x), select(vec3<bool>(true, true, true), !vec3<bool>(true, false, arg_3.x), !var_1.ywz), false), select(var_1.yzx, var_1.yzx, true), vec3<bool>(true, -var_0.x <= ~var_0.x, global3.x)));
    var var_3 = ~vec3<u32>(u_input.a.x, arg_1.x, _wgslsmith_clamp_u32(arg_0.x, arg_1.x & (21735u | u_input.a.x), 33523u));
    return global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(~16875u << (_wgslsmith_sub_u32(29772u, arg_1.x ^ arg_1.x) % 32u)), u_input.b), 13u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(91686u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, 25940u, u_input.a.x)), ~vec4<u32>(31323u & u_input.a.x, u_input.b, u_input.a.x | 80546u, 4294967295u)), 28u)];
    let var_1 = !(!arg_0.a.x);
    global0 = array<vec3<u32>, 5>();
    return func_2(min(_wgslsmith_mult_vec4_u32(reverseBits(countOneBits(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 23179u))), vec4<u32>(15638u, 4294967295u, u_input.b, u_input.a.x) | (vec4<u32>(1u, u_input.b, 4294967295u, 34523u) | vec4<u32>(46035u, 4294967295u, u_input.a.x, 7862u))), ~countOneBits(max(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 19439u), vec4<u32>(20389u, u_input.b, 4294967295u, u_input.a.x)))), vec2<u32>(_wgslsmith_add_u32(48479u >> (min(u_input.a.x, 58080u) % 32u), _wgslsmith_add_u32(u_input.a.x, ~u_input.a.x)), min(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 4294967295u, u_input.b, u_input.a.x)), vec4<u32>(1u, 1u, 64890u, u_input.b)), 0u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(~u_input.a.x, 28u)], global2[_wgslsmith_index_u32(15482u, 28u)], func_2(vec4<u32>(4294967295u, 0u, 0u, u_input.b), u_input.a, -242f, arg_0.a.zy).a.x))))), vec2<bool>(!(all(vec4<bool>(false, false, false, true)) | any(vec4<bool>(arg_1.a.x, false, true, arg_1.a.x))), !(!var_1)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(!vec3<bool>(all(vec4<bool>(true, global3.x, global3.x, global3.x)), !any(vec4<bool>(false, true, true, false)), global3.x));
    global2 = array<f32, 28>();
    global2 = array<f32, 28>();
    let var_1 = global2[_wgslsmith_index_u32(~u_input.b, 28u)];
    var var_2 = 29475u ^ ~u_input.b;
    return func_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~max(select(vec2<u32>(u_input.b, u_input.a.x), u_input.a, global3.x), u_input.a), u_input.a), 13u)], func_2(vec4<u32>(firstLeadingBit(abs(16323u)), 1u, _wgslsmith_mult_u32(124672u, ~u_input.a.x), ~u_input.a.x), u_input.a, global2[_wgslsmith_index_u32(~819u, 28u)], var_0.a.xy));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec2<bool>(_wgslsmith_clamp_i32(-1i, -2515i, 20793i) == -firstTrailingBit(countOneBits(-66114i)), global3.x);
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(30439u, u_input.b, 4294967295u)), vec3<u32>(u_input.b, 2110u, u_input.a.x)) << (_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(33733u, 5u)], vec3<u32>(~51562u, _wgslsmith_mod_u32(0u, u_input.b), u_input.a.x)) % 32u));
}

