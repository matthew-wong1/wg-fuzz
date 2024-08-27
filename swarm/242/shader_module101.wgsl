struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_5) -> vec3<u32> {
    global0 = array<f32, 20>();
    global0 = array<f32, 20>();
    global0 = array<f32, 20>();
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(arg_0.c.wx, vec2<f32>(-1679f, _wgslsmith_f_op_f32(min(-632f, _wgslsmith_f_op_f32(-arg_0.a.b))))), arg_0.c.yz));
    let var_1 = arg_0.a.d.x;
    return max(vec3<u32>(~(firstTrailingBit(4294967295u) | u_input.a), 9615u, max(_wgslsmith_clamp_u32(0u, u_input.a, u_input.a) << (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 5926u) | vec4<u32>(94271u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 51178u, u_input.a, 0u)))), min(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), min(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, 7222u)), ~vec3<u32>(4294967295u, 4294967295u, u_input.a))), ~select(firstTrailingBit(vec3<u32>(15808u, 69094u, 7425u)), ~vec3<u32>(1u, 4294967295u, u_input.a), select(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x), vec3<bool>(true, true, false), arg_0.d.x))));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_mod_vec3_u32(~max(~vec3<u32>(31022u, u_input.a, 4294967295u) >> (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u)), ~vec3<u32>(93685u, 10755u, 37567u)), func_3(Struct_5(Struct_3(-u_input.b.x, -160f, 1105i, u_input.b.zw), u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(300f, arg_0.c.x, 1897f, arg_0.c.x) - vec4<f32>(493f, -144f, -768f, 223f))), vec2<bool>(arg_0.b.x, all(arg_0.b.yyx)))));
    let var_1 = Struct_4(Struct_2(Struct_1(vec2<bool>(true, true), select(vec4<bool>(arg_0.b.x, arg_0.b.x, false, false), !vec4<bool>(arg_0.a.x, false, arg_0.b.x, true), select(vec4<bool>(arg_0.a.x, true, false, false), arg_0.b, vec4<bool>(false, arg_0.b.x, arg_0.b.x, true))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(arg_0.c, vec2<f32>(global0[_wgslsmith_index_u32(56935u, 20u)], arg_0.c.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-1673f, -1224f), arg_0.c)))), Struct_1(select(vec2<bool>(false, arg_0.a.x), select(arg_0.b.zx, vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.b.wz), arg_0.b.yz), vec4<bool>(u_input.a == u_input.a, false, true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, global0[_wgslsmith_index_u32(4294967295u, 20u)]) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], -642f)))), arg_0, 13877i | countOneBits(u_input.b.x | u_input.b.x), Struct_1(vec2<bool>(true, arg_0.a.x), select(arg_0.b, !arg_0.b, arg_0.b), arg_0.c)), ~(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, var_0.x, u_input.a, 18453u), ~vec4<u32>(var_0.x, 13451u, 1u, 23589u)) << (~(~vec4<u32>(8282u, 26006u, 5050u, 1u)) % vec4<u32>(32u))), arg_0.a.x);
    return u_input.b.x;
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(select(u_input.b, vec4<i32>(func_2(Struct_1(vec2<bool>(false, false), vec4<bool>(true, true, false, false), vec2<f32>(-257f, 186f))), -1i, ~u_input.b.x, -8747i), all(vec4<bool>(true, true, true, true))), ~firstLeadingBit(u_input.b)), _wgslsmith_sub_vec4_i32(u_input.b, u_input.b ^ ~(-vec4<i32>(-2147483647i, u_input.b.x, -18587i, u_input.b.x))));
    let var_1 = !any(vec2<bool>(true, true));
    var var_2 = Struct_4(Struct_2(Struct_1(!select(vec2<bool>(var_1, false), vec2<bool>(var_1, var_1), vec2<bool>(true, true)), !vec4<bool>(var_1, var_1, var_1, var_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], 2175f) * vec2<f32>(-1392f, 208f)) - _wgslsmith_div_vec2_f32(vec2<f32>(165f, -821f), vec2<f32>(-734f, arg_0)))), Struct_1(vec2<bool>(var_1 | false, all(vec3<bool>(true, true, var_1))), select(select(vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(true, false, false, var_1), vec4<bool>(true, true, false, var_1)), select(vec4<bool>(true, true, var_1, var_1), vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(true, var_1, false, true)), vec4<bool>(true, var_1, false, true)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], -484f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], 1355f)))))), Struct_1(vec2<bool>(var_1, arg_0 <= global0[_wgslsmith_index_u32(u_input.a, 20u)]), select(select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(false, false, true, true), var_1), vec4<bool>(var_1, false, true, var_1), !vec4<bool>(var_1, var_1, false, false)), vec2<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.a, 20u)])), arg_0)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), min(vec2<i32>(15956i, 82i), vec2<i32>(-2147483647i, var_0))), u_input.b.zx), Struct_1(!select(vec2<bool>(false, false), vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1)), !select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, false, false, true), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(13067u, 20u)], -232f) + vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)])) + vec2<f32>(arg_0, arg_0)))), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 56445u, 68111u, u_input.a), _wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a, 11208u, u_input.a, 0u), vec4<u32>(1u, u_input.a, u_input.a, u_input.a), var_1), ~vec4<u32>(4294967295u, u_input.a, 48537u, u_input.a))) >> (firstLeadingBit(~abs(vec4<u32>(25391u, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u)), -var_0 != 11343i);
    global0 = array<f32, 20>();
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(vec2<bool>(!all(vec4<bool>(true, true, false, true)), (u_input.b.x > 53209i) | any(vec3<bool>(true, false, true))));
    global0 = array<f32, 20>();
    let var_1 = Struct_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 20u)])) + -1697f))), vec4<u32>(u_input.a, 72242u, u_input.a, countOneBits(u_input.a)), var_0);
    global0 = array<f32, 20>();
    var var_2 = _wgslsmith_f_op_f32(trunc(128f));
    global0 = array<f32, 20>();
    var_2 = 533f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-func_1(global0[_wgslsmith_index_u32(24522u, 20u)]).e.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1276f, 1469f)), _wgslsmith_f_op_f32(trunc(var_1.a.b.c.x))), _wgslsmith_f_op_f32(select(-798f, _wgslsmith_div_f32(-638f, 1000f), var_0 && var_1.c))) + vec3<f32>(-188f, global0[_wgslsmith_index_u32(var_1.b.x, 20u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.a.c.x))))), _wgslsmith_f_op_f32(exp2(var_1.a.c.c.x)), _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 22713u) ^ var_1.b.yzw, var_1.b.yzy), 20u)], 598f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2550f, 655f) - vec2<f32>(838f, var_1.a.c.c.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_1.b.x, 20u)], 613f) - var_1.a.a.c)) + var_1.a.a.c)), min(firstTrailingBit(_wgslsmith_div_vec4_u32(var_1.b, vec4<u32>(u_input.a, u_input.a, 6954u, var_1.b.x))) << (reverseBits(vec4<u32>(0u, var_1.b.x, u_input.a, var_1.b.x)) % vec4<u32>(32u)), select(countOneBits(vec4<u32>(10335u, u_input.a, 19024u, u_input.a)) ^ vec4<u32>(18627u, 1u, var_1.b.x, 4294967295u), ~max(var_1.b, vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), !(!vec4<bool>(true, var_0, false, true)))));
}

