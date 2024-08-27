struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: vec4<u32> = vec4<u32>(19412u, 1u, 4294967295u, 4294967295u);

var<private> global2: array<bool, 21> = array<bool, 21>(false, true, true, false, false, true, true, true, true, false, true, true, false, true, true, false, true, true, false, true, true);

var<private> global3: array<u32, 22>;

var<private> global4: array<Struct_3, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(-587f, select(vec4<bool>(global2[_wgslsmith_index_u32(~(~4294967295u), 21u)], true, true, !select(false, true, false)), !select(vec4<bool>(true, global2[_wgslsmith_index_u32(35627u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(global1.x, 21u)]), vec4<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 22u)], 21u)], global2[_wgslsmith_index_u32(32568u, 21u)], global2[_wgslsmith_index_u32(12571u, 21u)], true), true), true));
    var var_1 = !select(vec3<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)] ^ 1u, 22u)], 22u)], 21u)], any(var_0.b) == var_0.b.x, any(vec2<bool>(var_0.b.x, true))), select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 21u)], false, all(var_0.b.zyy)), select(var_0.b.yzx, vec3<bool>(true, true, true), var_0.b.yxz), select(!var_0.b.xxx, vec3<bool>(true, true, true), var_0.b.x)), vec3<bool>(true, true, -1i > _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)));
    var var_2 = u_input.a.x;
    var_2 = 14031i;
    global0 = array<Struct_2, 25>();
    return global1.x;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_add_i32(firstTrailingBit(u_input.a.x), min(~u_input.a.x, ~u_input.a.x) >> (1909u % 32u)), u_input.a.x);
    let var_1 = global0[_wgslsmith_index_u32(global1.x, 25u)];
    global3 = array<u32, 22>();
    global1 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(max(global3[_wgslsmith_index_u32(41943u, 22u)], global1.x), firstLeadingBit(1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), global1.yy << (vec2<u32>(global1.x, 1u) % vec2<u32>(32u))), func_3(), _wgslsmith_add_u32(1u, global1.x ^ global1.x)), abs(~vec4<u32>(global1.x, 1u, global3[_wgslsmith_index_u32(global1.x, 22u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)])));
    let var_2 = var_1.a;
    return Struct_1(select(var_1.b.xwx, vec3<bool>(false, var_1.a > _wgslsmith_f_op_f32(var_1.a - var_1.a), _wgslsmith_f_op_f32(-1000f - -511f) > _wgslsmith_f_op_f32(-1013f * var_1.a)), vec3<bool>(global2[_wgslsmith_index_u32(global1.x, 21u)], ~global1.x >= global1.x, true)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> vec3<u32> {
    global2 = array<bool, 21>();
    global2 = array<bool, 21>();
    global3 = array<u32, 22>();
    var var_0 = vec4<bool>(all(!vec4<bool>(any(vec3<bool>(arg_1, false, true)), func_2().a.x, global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 21u)], true)), global2[_wgslsmith_index_u32(global1.x, 21u)], select(all(vec3<bool>(true, arg_1, u_input.a.x < -54507i)), !((arg_2 < -241f) & global2[_wgslsmith_index_u32(func_3(), 21u)]), 1i > abs(max(2147483647i, u_input.a.x))), !func_2().a.x);
    let var_1 = global1.x;
    return vec3<u32>(_wgslsmith_clamp_u32(~select(global3[_wgslsmith_index_u32(99265u, 22u)], 4294967295u, !arg_0.a.x), global3[_wgslsmith_index_u32(~0u, 22u)], max(_wgslsmith_mult_u32(~4294967295u, ~8014u), _wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(14280u, 22u)], ~10289u))), ~61959u & ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)], 22u)], 13436u, global3[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<u32>(global1.x, global1.x, global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(49747u, 22u)]))), ~global1.x);
}

fn func_1(arg_0: vec4<u32>) -> vec4<i32> {
    let var_0 = !(!(!select(!vec3<bool>(global2[_wgslsmith_index_u32(global1.x, 21u)], global2[_wgslsmith_index_u32(global1.x, 21u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 22u)], 21u)]), !vec3<bool>(false, false, global2[_wgslsmith_index_u32(93472u, 21u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(30038u, 21u)], global2[_wgslsmith_index_u32(global1.x, 21u)], false), vec3<bool>(true, true, true), true))));
    let var_1 = ~_wgslsmith_mult_vec3_u32(func_4(func_2(), false | global2[_wgslsmith_index_u32(func_3(), 21u)], 1630f), abs(min(~global1.wzz, ~global1.yyx)));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1175f + -609f), -1132f, var_0.x))))), 440f, select(!all(vec4<bool>(var_0.x, false, var_0.x, false)), func_2().a.x, any(!select(var_0, var_0, var_0)))));
    let var_3 = 1f;
    let var_4 = vec4<bool>(select(false | (u_input.a.x < -4758i), select(!var_0.x, false, all(vec4<bool>(global2[_wgslsmith_index_u32(var_1.x, 21u)], var_0.x, var_0.x, global2[_wgslsmith_index_u32(0u, 21u)]))), !(u_input.a.x == u_input.a.x)) != global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0, _wgslsmith_div_vec4_u32(vec4<u32>(88470u, 1u, arg_0.x, global1.x), vec4<u32>(1u, var_1.x, 4294967295u, arg_0.x))) | arg_0.x, 21u)], var_0.x, _wgslsmith_f_op_f32(-var_2) != _wgslsmith_f_op_f32(max(var_3, _wgslsmith_f_op_f32(f32(-1f) * -1312f))), all(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(var_1.x, 21u)], any(var_0.zy))));
    return firstTrailingBit(u_input.a) & countOneBits(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_3, 22>();
    var var_0 = _wgslsmith_add_vec4_i32(~vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(14091i, u_input.a.x), select(1i, -21401i, global2[_wgslsmith_index_u32(global1.x, 21u)])), _wgslsmith_div_i32(-2147483647i, u_input.a.x), 18894i, u_input.a.x), func_1(~vec4<u32>(global3[_wgslsmith_index_u32(0u, 22u)], 35474u, 94788u, 7769u) << (vec4<u32>(global1.x, global1.x, 88113u, global1.x) % vec4<u32>(32u))) << ((~(~vec4<u32>(15655u, global1.x, 15005u, 0u)) >> ((vec4<u32>(global1.x, global1.x, global3[_wgslsmith_index_u32(1u, 22u)], 0u) << (~vec4<u32>(15371u, 0u, global3[_wgslsmith_index_u32(global1.x, 22u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 22u)]) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global3 = array<u32, 22>();
    var_0 = _wgslsmith_add_vec4_i32(u_input.a, u_input.a);
    var var_1 = ~2147483647i;
    let var_2 = Struct_3(1f);
    global1 = vec4<u32>(~reverseBits(19280u), abs(global1.x), (0u >> (~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 22u)], 22u)]) % 32u)) & countOneBits(0u), ~19604u);
    let x = u_input.a;
    s_output = StorageBuffer(global1.zww, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(max(var_2.a, var_2.a)), var_2.a, _wgslsmith_f_op_f32(select(var_2.a, -264f, false))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.a)), var_2.a, var_2.a)))), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_div_u32(14138u, 6330u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(72745u, 22u)], 90653u) >> (vec2<u32>(2170u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 22u)], 22u)], 22u)]) % vec2<u32>(32u)), ~vec2<u32>(global3[_wgslsmith_index_u32(1u, 22u)], 4294967295u), global1.wx)), ~vec2<u32>(global1.x << (global1.x % 32u), countOneBits(global3[_wgslsmith_index_u32(global1.x, 22u)]))), u_input.a.x);
}

