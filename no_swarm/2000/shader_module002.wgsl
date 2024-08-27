struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32 = 364f;

var<private> global2: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(1u, 61463u, 71718u, 55011u), vec4<u32>(0u, 27799u, 84069u, 54334u), vec4<u32>(57261u, 56193u, 0u, 4294967295u), vec4<u32>(54810u, 13324u, 790u, 4294967295u), vec4<u32>(1u, 0u, 0u, 7917u), vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(25066u, 15735u, 29329u, 57703u), vec4<u32>(11829u, 12685u, 38537u, 0u), vec4<u32>(52526u, 8081u, 14910u, 58664u), vec4<u32>(4294967295u, 0u, 37122u, 1u), vec4<u32>(4294967295u, 0u, 28676u, 20148u), vec4<u32>(1u, 0u, 11051u, 41099u), vec4<u32>(0u, 0u, 0u, 48642u), vec4<u32>(31435u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 42465u, 0u, 83712u), vec4<u32>(4294967295u, 0u, 22875u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec4<u32>(35825u, 4294967295u, 39792u, 23111u), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec4<u32>(2830u, 62479u, 35480u, 1u), vec4<u32>(1u, 0u, 4446u, 95488u), vec4<u32>(1u, 1u, 0u, 13495u), vec4<u32>(1u, 1u, 78443u, 16705u));

var<private> global3: array<f32, 20>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: vec4<u32>) -> u32 {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(round(1208f));
    let var_2 = all(select(vec4<bool>(any(vec3<bool>(false, global0.c, global0.c)) | global0.c, true, all(select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, true, false), arg_0.x)), any(!vec2<bool>(arg_0.x, false))), vec4<bool>(true, global0.c, true, arg_0.x), all(select(vec4<bool>(true, true, global0.c, arg_0.x), !vec4<bool>(global0.c, true, arg_0.x, arg_0.x), select(vec4<bool>(false, false, global0.c, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, global0.c), true)))));
    var_0 = max(1i, -min(max(max(u_input.a.x, -1i), u_input.a.x), -11327i));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-global0.a), _wgslsmith_f_op_vec3_f32(max(global0.b, global0.b)), true);
    return arg_2.x;
}

fn func_3() -> vec3<u32> {
    global3 = array<f32, 20>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(max(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3[_wgslsmith_index_u32(1u, 20u)], global3[_wgslsmith_index_u32(33813u, 20u)], 856f), global0.b))), _wgslsmith_f_op_vec3_f32(max(global0.b, global0.b)))) + global0.b), true);
    var var_1 = var_0;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -604f), var_1.a.x))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a.x, global3[_wgslsmith_index_u32(~1u, 20u)], -1724f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-171f, 177f, global0.a.x)))), var_0.b, vec3<bool>(false, !global0.c, true))))), !any(!vec3<bool>(false, false, global0.c)) & (_wgslsmith_f_op_f32(-var_1.a.x) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(0u, 20u)]))))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(var_0.a)), vec3<f32>(451f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global0.a.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 20u)])))), global0.c);
    return ~abs(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(37638u, 40206u, 0u), min(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(77154u, 31355u, 65708u))), ~vec3<u32>(1u, 1u, 16438u), _wgslsmith_mult_vec3_u32(vec3<u32>(45533u, 52789u, 0u), select(vec3<u32>(54846u, 6296u, 1u), vec3<u32>(19254u, 65634u, 22911u), vec3<bool>(var_2.c, false, var_1.c)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(func_2(vec2<bool>(true, true), vec3<u32>(76637u, 0u, 4294967295u), vec4<u32>(4294967295u, 43029u, 49322u, 830u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u)), ~_wgslsmith_mult_u32(0u, 0u)), max(~vec3<u32>(0u, _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(10928u, 23u)]), ~4294967295u), abs(select(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(32434u, 48838u, 4294967295u), global0.c) | func_3())));
    let var_1 = vec3<bool>(!(2147483647i <= arg_1), !(!(-623f < _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(20421u, 20u)]))), global0.c);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(977u, var_0, var_0), vec3<u32>(var_0, var_0, 31621u)), 20u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(33247u, 20u)] - global3[_wgslsmith_index_u32(var_0, 20u)]))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, global3[_wgslsmith_index_u32(1u, 20u)], global3[_wgslsmith_index_u32(var_0, 20u)]) + global0.b), vec3<f32>(_wgslsmith_f_op_f32(trunc(-2581f)), _wgslsmith_f_op_f32(f32(-1f) * -1351f), _wgslsmith_f_op_f32(floor(-438f))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u, 20u)], 409f, -116f))))), var_1.x || global0.c);
    let var_3 = ~max(_wgslsmith_mult_vec4_i32(abs(u_input.a | u_input.a), u_input.a), vec4<i32>(_wgslsmith_dot_vec3_i32(~u_input.a.zzz, reverseBits(vec3<i32>(-2147483647i, u_input.a.x, 14746i))), _wgslsmith_dot_vec4_i32(vec4<i32>(51561i, -24225i, arg_0.x, u_input.a.x), vec4<i32>(2147483647i, arg_1, 57591i, arg_0.x)), i32(-1i) * -u_input.a.x, u_input.a.x));
    let var_4 = !var_1.xz;
    return var_0;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1236f * -2136f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 20u)]))), global0.b, any(vec4<bool>(true, all(arg_3), true || all(arg_3), true)));
    global1 = -1118f;
    let var_1 = arg_1.b.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * -647f)), _wgslsmith_f_op_f32(select(1506f, global3[_wgslsmith_index_u32(3643u, 20u)], !all(vec3<bool>(global0.c, global0.c, arg_3.x)))), 1116f));
    global1 = -1036f;
    return Struct_2(vec2<f32>(var_0.b.x, -760f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1030f, var_0.b.x, -1768f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -465f, var_2.x))))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(trunc(global0.a.x));
    global0 = func_4(vec4<u32>(1u, ~1u, _wgslsmith_sub_u32(1u, func_1(-u_input.a.wzy, 0i)), 62226u), Struct_1(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(func_1(-u_input.a.xyw, u_input.a.x), 20u)]), select(u_input.a.xyy >> (vec3<u32>(6551u, 4294967295u, 0u) % vec3<u32>(32u)), vec3<i32>(select(10950i, -1i, false), -1i, firstTrailingBit(2147483647i)), !all(vec4<bool>(false, true, global0.c, false))), ~max(~21169u, ~0u)), ~vec2<i32>(u_input.a.x, _wgslsmith_clamp_i32(1i << (1u % 32u), u_input.a.x | u_input.a.x, abs(u_input.a.x))), select(vec3<bool>(true, true, true), vec3<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(global0.c, global0.c, false), false)), true || select(global0.c, global0.c, global0.c), false), !vec3<bool>(global0.c, u_input.a.x < 2147483647i, all(vec3<bool>(global0.c, global0.c, global0.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(-42927i & _wgslsmith_mult_i32(u_input.a.x, -2147483647i), 20338i), _wgslsmith_mult_vec4_u32(~(~global2[_wgslsmith_index_u32(1u, 23u)]), max(global2[_wgslsmith_index_u32(1u, 23u)], ~_wgslsmith_div_vec4_u32(vec4<u32>(61260u, 22264u, 1u, 4294967295u), global2[_wgslsmith_index_u32(4294967295u, 23u)]))));
}

