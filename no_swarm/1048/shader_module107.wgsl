struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<Struct_5, 26>;

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_2(-22675i, -794f), true, -41254i), Struct_3(Struct_2(0i, 251f), true, i32(-2147483648)), Struct_3(Struct_2(-30078i, 1000f), false, -20993i), Struct_3(Struct_2(1i, 592f), true, 25454i), Struct_3(Struct_2(5342i, -1864f), false, 2147483647i), Struct_3(Struct_2(-1i, 663f), false, -77386i), Struct_3(Struct_2(i32(-2147483648), -519f), false, -5567i), Struct_3(Struct_2(-25652i, -489f), true, 0i), Struct_3(Struct_2(1i, -231f), true, 0i), Struct_3(Struct_2(13015i, 596f), false, -18706i), Struct_3(Struct_2(0i, -492f), false, 28030i), Struct_3(Struct_2(i32(-2147483648), -214f), false, 3665i), Struct_3(Struct_2(2147483647i, 1117f), false, i32(-2147483648)), Struct_3(Struct_2(-17887i, 702f), false, 6428i), Struct_3(Struct_2(-72724i, 1667f), false, i32(-2147483648)), Struct_3(Struct_2(2147483647i, 2031f), false, -1i), Struct_3(Struct_2(2147483647i, 1053f), true, -5948i), Struct_3(Struct_2(1i, -251f), false, -33964i), Struct_3(Struct_2(-54408i, -843f), false, 65284i), Struct_3(Struct_2(-1i, -1229f), false, 22653i), Struct_3(Struct_2(2147483647i, 926f), false, 23628i), Struct_3(Struct_2(-36515i, 160f), false, 2147483647i), Struct_3(Struct_2(1i, 1000f), false, -1i), Struct_3(Struct_2(22129i, -651f), true, -16116i), Struct_3(Struct_2(28664i, -445f), false, 0i), Struct_3(Struct_2(62583i, -1709f), true, 1i), Struct_3(Struct_2(1i, 419f), true, 1i), Struct_3(Struct_2(22730i, -677f), true, -54922i), Struct_3(Struct_2(38115i, -269f), false, 29506i), Struct_3(Struct_2(-40284i, -806f), false, 0i), Struct_3(Struct_2(i32(-2147483648), 916f), true, 16309i), Struct_3(Struct_2(1i, -107f), true, -3073i));

var<private> global4: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    let var_0 = -2152i;
    let var_1 = abs(u_input.a.x);
    global1 = array<Struct_5, 26>();
    let var_2 = Struct_1(0u, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -330f))))));
    var var_3 = u_input.a;
    return u_input.b;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: i32) -> Struct_3 {
    let var_0 = vec3<bool>(false, any(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, false), all(vec2<bool>(true, false))), vec2<bool>(true, false), vec2<bool>(true, true))), false);
    var var_1 = vec3<i32>(global2.x, func_3(vec4<bool>(any(var_0.zx), false, true == !var_0.x, any(!var_0.xz))), select(1i, abs(_wgslsmith_add_i32(-2147483647i, arg_2)), var_0.x));
    global1 = array<Struct_5, 26>();
    var var_2 = Struct_2(arg_2, -1020f);
    let var_3 = vec2<bool>(all(select(vec3<bool>(true, var_0.x, all(var_0)), !(!vec3<bool>(var_0.x, var_0.x, true)), !select(var_0, var_0, var_0.x))), true);
    return global3[_wgslsmith_index_u32(4294967295u | u_input.a.x, 32u)];
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_2(abs(firstLeadingBit(abs(global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-351f - -964f))));
    global4 = -1i;
    global4 = 19996i;
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b, 177f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1742f + 809f), var_0.b))))), var_0.b, min(~u_input.b, var_0.a));
    var_0 = var_1.a;
    return global3[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0, _wgslsmith_sub_u32(~u_input.a.x, 0u)), 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 14>();
    let var_0 = Struct_5(67661i >= _wgslsmith_clamp_i32(-5071i, u_input.b, reverseBits(firstLeadingBit(27588i))), func_1(u_input.a.x, ~(~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1654f, -428f), -780f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-153f * _wgslsmith_f_op_f32(select(-249f, -621f, true))) - -1276f))));
    global1 = array<Struct_5, 26>();
    global1 = array<Struct_5, 26>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c + -1128f))), -1374f)), var_0.b.a.b, 1315f, _wgslsmith_f_op_f32(floor(1523f)));
    var var_2 = vec2<i32>(4906i, func_2(var_1.wxx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_0.c))))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.b.a.a, var_0.b.c & u_input.b), ~(-27301i))).c);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~max(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 69219u), vec4<u32>(u_input.a.x, 1u, 0u, 0u))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.a, abs(~vec3<u32>(u_input.a.x, u_input.a.x, 0u))), _wgslsmith_mod_u32(36813u, u_input.a.x)), -419f, countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.x, var_2.x, -22181i), global2.wyw), vec3<i32>(global2.x, var_0.b.c, -25194i)) << (1u % 32u)), max(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, u_input.a.x, 5875u)), _wgslsmith_add_vec3_u32(~u_input.a, vec3<u32>(0u, u_input.a.x, u_input.a.x))), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.a.zx, u_input.a.zz), firstLeadingBit(vec2<u32>(1u, 46025u)))));
}

