struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(select(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), all(vec4<bool>(false, true, true, false))), vec2<bool>(all(vec4<bool>(true, true, true, true)), select(true, true, true)), select(true, true, true)), 2147483647i, u_input.c <= ((0i | (0i >> (global0[_wgslsmith_index_u32(4294967295u, 15u)] % 32u))) ^ -firstLeadingBit(-1i)), u_input.c, select(max(vec3<u32>(min(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(u_input.b, 15u)]), u_input.a.x, ~global0[_wgslsmith_index_u32(25052u, 15u)]), ~(~u_input.a.yxx)), ~_wgslsmith_mult_vec3_u32(~u_input.a.zyy, vec3<u32>(20599u, global0[_wgslsmith_index_u32(25006u, 15u)], u_input.b) >> (vec3<u32>(44802u, global0[_wgslsmith_index_u32(24923u, 15u)], u_input.a.x) % vec3<u32>(32u))), vec3<bool>(true, true, true)));
    return vec4<i32>(27244i, 0i, 8982i >> ((u_input.a.x >> (1u % 32u)) % 32u), u_input.c);
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>) -> u32 {
    global0 = array<u32, 15>();
    let var_0 = firstTrailingBit(select(func_3() ^ _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 0i, u_input.c, 1i), vec4<i32>(u_input.c, 32072i, 4953i, -22603i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 339i, u_input.c, 1i), vec4<i32>(u_input.c, u_input.c, u_input.c, 12811i)), _wgslsmith_add_i32(u_input.c, 16665i), ~2147483647i, u_input.c), arg_1)) & min(-vec4<i32>(-13006i, u_input.c, -u_input.c, u_input.c), select(vec4<i32>(_wgslsmith_clamp_i32(0i, u_input.c, 2147483647i), -u_input.c, u_input.c, -u_input.c), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, 2147483647i, u_input.c, u_input.c)), !vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)));
    var var_1 = arg_1.x;
    var var_2 = _wgslsmith_div_f32(-230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1398f + -929f) - _wgslsmith_f_op_f32(714f * 422f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(747f, 595f))))))));
    let var_3 = !arg_1.x;
    return _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(~35544u, ~u_input.b, 60874u, 1u)), 1u);
}

fn func_1() -> f32 {
    var var_0 = min(~_wgslsmith_mod_u32(u_input.b, global0[_wgslsmith_index_u32(21620u, 15u)]), ~select(global0[_wgslsmith_index_u32(0u, 15u)], ~(~global0[_wgslsmith_index_u32(u_input.b, 15u)]), false));
    var_0 = _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(23978u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], 15u)], 0u, global0[_wgslsmith_index_u32(80068u, 15u)]))) ^ ~23340u, select(1u, u_input.b, func_2(Struct_3(u_input.a.x), vec4<bool>(false, true, true, true)) == global0[_wgslsmith_index_u32(u_input.b | global0[_wgslsmith_index_u32(19667u, 15u)], 15u)])) >> (u_input.b % 32u);
    let var_1 = Struct_3(u_input.b);
    var var_2 = u_input.a.zxz;
    var var_3 = Struct_2(_wgslsmith_sub_vec4_i32(~vec4<i32>(55988i, i32(-1i) * -1003i, 998i, u_input.c), _wgslsmith_mod_vec4_i32(func_3(), countOneBits(vec4<i32>(-5310i, u_input.c, -1i, -2147483647i)))), (~u_input.a.xzz >> (vec3<u32>(func_2(var_1, vec4<bool>(false, false, false, true)), 20878u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.b, var_2.x, u_input.b, var_1.a))) % vec3<u32>(32u))) ^ ~abs(~u_input.a.xwz));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1075f - -501f), _wgslsmith_f_op_f32(f32(-1f) * -334f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    var var_0 = vec2<i32>(-(~(-56655i)), ~(-8431i));
    let var_1 = 40345i;
    let var_2 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_dot_vec2_i32(vec2<i32>(-12058i, var_0.x), vec2<i32>(var_1, u_input.c)) != -var_1)) || true;
    var var_3 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-249f, -458f)), _wgslsmith_div_f32(190f, 675f), true))), _wgslsmith_f_op_f32(-869f - _wgslsmith_f_op_f32(func_1())))));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(f32(-1f) * -1342f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1215f + var_3.x)))), u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(1f, var_3.x, var_3.x > var_3.x)), 1646f)));
}

