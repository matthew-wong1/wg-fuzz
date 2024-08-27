struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: i32;

var<private> global2: array<bool, 20> = array<bool, 20>(false, true, false, false, true, false, true, false, false, true, false, true, true, false, false, false, false, false, false, true);

var<private> global3: array<Struct_1, 27>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: u32, arg_3: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_add_u32(1u, arg_3.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-297f, -806f)))))))));
    global0 = array<i32, 31>();
    var var_2 = !any(select(!vec2<bool>(true, global2[_wgslsmith_index_u32(arg_2, 20u)]), vec2<bool>(true, false), global2[_wgslsmith_index_u32(3307u, 20u)]));
    global3 = array<Struct_1, 27>();
    return global2[_wgslsmith_index_u32(arg_3.x, 20u)];
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: i32) -> u32 {
    let var_0 = !(!vec4<bool>(true, !func_3(vec4<i32>(global0[_wgslsmith_index_u32(arg_1, 31u)], arg_3, global0[_wgslsmith_index_u32(4294967295u, 31u)], 97950i), -19800i, arg_1, vec4<u32>(1u, arg_0.a.x, arg_1, 0u)), true, (global2[_wgslsmith_index_u32(35713u, 20u)] && false) & !arg_0.b.b));
    global1 = u_input.a;
    global0 = array<i32, 31>();
    global3 = array<Struct_1, 27>();
    var var_1 = _wgslsmith_div_vec3_i32(~_wgslsmith_add_vec3_i32(select(vec3<i32>(23210i, 1i, global0[_wgslsmith_index_u32(arg_0.a.x, 31u)]), _wgslsmith_clamp_vec3_i32(arg_0.d.xzy, arg_0.d.xwx, vec3<i32>(2147483647i, u_input.a, u_input.a)), vec3<bool>(false, var_0.x, true)), reverseBits(arg_0.d.xyx) ^ _wgslsmith_div_vec3_i32(vec3<i32>(0i, 29676i, 0i), vec3<i32>(u_input.a, 1i, arg_3))), -(~countOneBits(vec3<i32>(1i, 32723i, -1i))));
    return min(_wgslsmith_div_u32(~arg_1, 0u), ~(~abs(arg_0.a.x >> (45175u % 32u))));
}

fn func_1() -> vec2<u32> {
    var var_0 = 78241u;
    var var_1 = ~_wgslsmith_div_u32(~(func_2(Struct_2(vec4<u32>(1u, 0u, 39505u, 16418u), global3[_wgslsmith_index_u32(52498u, 27u)], global3[_wgslsmith_index_u32(45382u, 27u)], vec4<i32>(u_input.a, 36031i, -46494i, 1i), vec3<bool>(true, false, false)), 0u, 1000f, 43418i) << (~4294967295u % 32u)), 1u);
    global1 = global0[_wgslsmith_index_u32(min(_wgslsmith_add_u32(18328u >> (_wgslsmith_mult_u32(70877u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 22654u), vec2<u32>(4294967295u, 67931u))) % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u))), 1u), 31u)];
    return ~select(vec2<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(43490u, 32933u, 0u, 14492u), vec4<u32>(29557u, 2141u, 1u, 32945u))), ~1u), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    let var_1 = ~firstLeadingBit(func_1());
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -385f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-2287f, 1186f), 1f) - 1071f);
    global3 = array<Struct_1, 27>();
    let var_2 = vec3<u32>(var_1.x, var_1.x, _wgslsmith_add_u32(var_1.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.x, var_1.x, 4294967295u) | vec4<u32>(var_1.x, var_1.x, var_1.x, 26475u), ~vec4<u32>(var_1.x, var_1.x, 6640u, var_1.x)), 1u)));
    global2 = array<bool, 20>();
    global2 = array<bool, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -2147483647i, global0[_wgslsmith_index_u32(72412u, 31u)], global0[_wgslsmith_index_u32(43747u, 31u)]), _wgslsmith_div_vec4_i32(vec4<i32>(46212i, -60874i, u_input.a, global0[_wgslsmith_index_u32(27509u, 31u)]), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(var_2.x, 31u)], 52418i, 0i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1651f + 246f) + _wgslsmith_f_op_f32(638f - -196f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(604f, -539f, global2[_wgslsmith_index_u32(39403u, 20u)])))))));
}

