struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(4294967295u, 1u, 1011u, 1u, 0u, 1u, 1u, 5929u, 4294967295u, 1u, 0u, 33705u, 74324u, 7946u, 17053u, 13481u, 29974u, 1u, 0u);

var<private> global1: i32 = 258i;

var<private> global2: array<i32, 24>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: u32) -> i32 {
    global0 = array<u32, 19>();
    let var_0 = 744f;
    let var_1 = 2263f;
    return arg_1.x;
}

fn func_2() -> Struct_2 {
    let var_0 = -9352i;
    let var_1 = Struct_1(func_3(Struct_3(3250f), ~(vec3<i32>(-1i) * -vec3<i32>(2147483647i, 2147483647i, u_input.b)), _wgslsmith_clamp_u32(58143u, reverseBits(u_input.c.x ^ u_input.c.x), 1u)), vec3<f32>(-987f, -406f, -1541f));
    var var_2 = ~0u;
    let var_3 = Struct_2(!(true | (true || any(vec3<bool>(false, false, true)))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(any(vec2<bool>(false, false)), all(vec2<bool>(false, false))), false), vec2<bool>(true, true)), (_wgslsmith_div_vec4_u32(~u_input.c, vec4<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26281u, 19u)], 19u)], global0[_wgslsmith_index_u32(0u, 19u)])) | ~u_input.c) << (u_input.c % vec4<u32>(32u)));
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(step(1186f, _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-959f, -191f) * var_1.b.yy))));
    return var_3;
}

fn func_1() -> u32 {
    let var_0 = ~u_input.a;
    let var_1 = func_2();
    let var_2 = !vec4<bool>(true, global0[_wgslsmith_index_u32(abs(max(global0[_wgslsmith_index_u32(4384u, 19u)], var_1.c.x)), 19u)] <= min(~var_1.c.x, u_input.c.x), ~_wgslsmith_add_u32(1u, 85216u) != abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(var_1.c.x, 19u)], u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20264u, 19u)], 19u)]), u_input.c.www)), !all(!vec3<bool>(false, var_1.a, true)));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2242f - 1000f))));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-515f + 1581f))))), _wgslsmith_f_op_f32(exp2(1f)))), var_3.a);
    return (firstTrailingBit(38047u) | (~(~global0[_wgslsmith_index_u32(var_1.c.x, 19u)]) >> (u_input.c.x % 32u))) | ~(~reverseBits(_wgslsmith_dot_vec4_u32(var_1.c, var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-236f, _wgslsmith_f_op_f32(floor(1443f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * 1875f), _wgslsmith_f_op_f32(780f + 1374f))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1142f + _wgslsmith_f_op_f32(step(941f, -627f)))))));
    var var_1 = !vec2<bool>(true | ((global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 24u)] | global2[_wgslsmith_index_u32(24793u, 24u)]) >= u_input.a), (true == all(vec4<bool>(false, true, true, true))) & select(select(true, false, false), true, false));
    global2 = array<i32, 24>();
    var var_2 = 0u;
    global1 = ~(firstLeadingBit(34209i) >> (~(~u_input.c.x) % 32u));
    let var_3 = ~u_input.c.xy << (vec2<u32>(69751u << (((4294967295u >> (1u % 32u)) | func_1()) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(70305u, 1u, 73416u), u_input.c.yxz), u_input.c.yzx ^ vec3<u32>(9488u, 0u, u_input.c.x)) ^ _wgslsmith_add_u32(global0[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)]), 19u)], 37728u)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(17441i, 0i, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(2677u ^ global0[_wgslsmith_index_u32(37666u, 19u)], 24u)], _wgslsmith_div_i32(u_input.a, u_input.b)), _wgslsmith_mult_vec2_i32(-u_input.d.xx, u_input.d.yx))), _wgslsmith_mod_vec3_i32(max(u_input.d.xww, u_input.d.zwx), vec3<i32>(-_wgslsmith_dot_vec2_i32(u_input.d.xx, vec2<i32>(-842i, -2147483647i)), 2147483647i, i32(-1i) * -2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -210f), -1616f) + -773f), var_0), firstLeadingBit(vec2<u32>(~_wgslsmith_sub_u32(var_3.x, 59216u), min(abs(1u), u_input.c.x))), ~vec4<i32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 24u)], 62086i, countOneBits(u_input.a), firstTrailingBit(global2[_wgslsmith_index_u32(var_3.x << (54648u % 32u), 24u)])));
}

