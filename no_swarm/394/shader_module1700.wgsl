struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(-100f, -600f, -570f), vec3<f32>(-1000f, 1000f, -834f), vec3<f32>(106f, 531f, -801f), vec3<f32>(-1885f, 436f, -1094f), vec3<f32>(-948f, -469f, -707f), vec3<f32>(194f, 211f, 179f), vec3<f32>(-105f, 870f, -1000f), vec3<f32>(-1598f, 175f, 167f), vec3<f32>(1073f, -113f, -437f), vec3<f32>(675f, 2257f, 913f), vec3<f32>(-103f, -1356f, 1550f), vec3<f32>(-1390f, 1221f, 2583f), vec3<f32>(1115f, 124f, -908f), vec3<f32>(-741f, -374f, 1024f), vec3<f32>(-2793f, 382f, -1542f), vec3<f32>(-2249f, -418f, -794f), vec3<f32>(-223f, 1327f, -2675f), vec3<f32>(-827f, 1040f, 3124f), vec3<f32>(535f, 387f, -729f), vec3<f32>(-747f, -835f, -680f), vec3<f32>(268f, -152f, -352f), vec3<f32>(-669f, -195f, 1550f), vec3<f32>(-1049f, 324f, 1617f), vec3<f32>(-290f, -246f, 842f), vec3<f32>(-660f, 1000f, 892f), vec3<f32>(1614f, 456f, 491f), vec3<f32>(-1000f, 1000f, 1101f), vec3<f32>(-804f, 592f, 1000f), vec3<f32>(-232f, -176f, 1134f), vec3<f32>(1008f, -269f, 535f), vec3<f32>(-184f, -786f, -399f));

var<private> global2: bool;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    global2 = true;
    let var_0 = arg_0.x;
    let var_1 = Struct_4(Struct_1(~firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(66307u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63674u, 16u)], 16u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)]), vec2<u32>(64216u, 63608u))), _wgslsmith_div_vec2_u32(vec2<u32>(~42444u, ~0u), ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 0u) >> (vec2<u32>(45560u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)]) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, -442f, true)) + _wgslsmith_f_op_f32(trunc(-294f))), vec4<bool>(true, true, true, true)), _wgslsmith_add_vec3_i32(u_input.a.wyy, vec3<i32>(-1i, ~(-2147483647i), _wgslsmith_clamp_i32(2147483647i << (global0[_wgslsmith_index_u32(5214u, 16u)] % 32u), u_input.a.x, _wgslsmith_clamp_i32(2147483647i, u_input.b.x, -19611i)))));
    let var_2 = var_1.a.a.x;
    let var_3 = var_1;
    return _wgslsmith_dot_vec2_i32(vec2<i32>(max(var_3.b.x, var_1.b.x & var_1.b.x), 1i), u_input.a.xy);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(38648i, arg_0, -min(1i, reverseBits(arg_0))), -vec3<i32>(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x))), ~(-38592i), func_3(_wgslsmith_f_op_vec2_f32(max(arg_1.wz, arg_1.xz)))));
    let var_1 = select(vec2<bool>(!(select(false, true, false) | all(vec4<bool>(true, true, false, false))), false), select(vec2<bool>(true, false), select(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), false), vec2<bool>(all(vec4<bool>(false, false, false, false)), true)), _wgslsmith_f_op_f32(select(arg_1.x, 663f, false)) < _wgslsmith_f_op_f32(-1010f * _wgslsmith_f_op_f32(-arg_1.x))), false);
    global1 = array<vec3<f32>, 31>();
    let var_2 = select(-(firstLeadingBit(62901i) >> (1u % 32u)), _wgslsmith_mult_i32(abs(1i), abs(u_input.b.x)), all(vec4<bool>(!any(vec4<bool>(var_1.x, var_1.x, true, false)), any(vec4<bool>(var_1.x, false, true, var_1.x)), false, all(vec3<bool>(false, var_1.x, true)))));
    var var_3 = Struct_4(Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(~global0[_wgslsmith_index_u32(4294967295u, 16u)], 22938u), abs(vec2<u32>(39367u, 23024u)) & (vec2<u32>(1u, 42814u) >> (vec2<u32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(53846u, 16u)]) % vec2<u32>(32u)))), ~vec2<u32>(0u, global0[_wgslsmith_index_u32(min(6160u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]), 16u)]), arg_1.x, select(select(select(vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, false, true, var_1.x)), vec4<bool>(true, true, true, true), vec4<bool>(var_1.x, false, var_1.x, var_1.x)), !select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(true, true, true, false)), all(var_1))), select(vec3<i32>(arg_0, 25294i, _wgslsmith_dot_vec3_i32(u_input.b.yzz, vec3<i32>(-1i, u_input.a.x, arg_0))), abs(_wgslsmith_div_vec3_i32(min(u_input.a.zzw, vec3<i32>(24939i, arg_0, u_input.a.x)), u_input.a.wyz)), true));
    return var_3.a.d.x & true;
}

fn func_1() -> f32 {
    global2 = false;
    let var_0 = vec3<bool>(true, true, true);
    global1 = array<vec3<f32>, 31>();
    global2 = ((false && var_0.x) | select(func_2(countOneBits(1i), vec4<f32>(573f, 673f, 244f, 1241f)), !func_2(u_input.b.x, vec4<f32>(-2024f, -1590f, -867f, -173f)), true)) & true;
    global0 = array<u32, 16>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(561f - _wgslsmith_f_op_f32(abs(-325f))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(140f, _wgslsmith_f_op_f32(min(-1362f, -236f)), false))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = Struct_1(~(~(~vec2<u32>(51639u, 15824u))), _wgslsmith_mult_vec2_u32(~countOneBits(~vec2<u32>(12445u, 21911u)), vec2<u32>(abs(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)], 16u)], 95051u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24735u, 16u)], 16u)], 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7489u, 16u)], 16u)], 16u)], 0u, 1u)))), _wgslsmith_f_op_f32(func_1()), vec4<bool>(!select(true, any(vec3<bool>(false, false, false)), true), true, true, !all(vec2<bool>(true, true))));
    global2 = false;
    let var_2 = _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 1u), ~(~(var_1.a | vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a.x, 16u)], 16u)], 4294967295u))) | vec2<u32>(~_wgslsmith_add_u32(0u, global0[_wgslsmith_index_u32(55561u, 16u)]), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_div_i32(-1i, -17044i)), max(65834u, _wgslsmith_dot_vec2_u32(var_1.b, var_1.a)));
}

