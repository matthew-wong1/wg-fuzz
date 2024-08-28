struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -684f;

var<private> global1: array<u32, 2> = array<u32, 2>(57919u, 1u);

var<private> global2: Struct_3 = Struct_3(true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> bool {
    global2 = Struct_3(true);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -382f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1259f + -1759f) - _wgslsmith_div_f32(-626f, -1000f)), _wgslsmith_f_op_f32(step(-1055f, 1f)), false))) - _wgslsmith_f_op_f32(abs(-326f)));
    global2 = Struct_3(true);
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(global1[_wgslsmith_index_u32(0u, 2u)]), global1[_wgslsmith_index_u32(~60334u, 2u)], 8882u), vec3<u32>(0u, ~0u, 49680u)), _wgslsmith_f_op_f32(min(153f, -665f)), true));
    global2 = Struct_3(true);
    return all(select(vec2<bool>(true, false), select(select(vec2<bool>(false, global2.a), !vec2<bool>(false, var_1.a.c), vec2<bool>(true, global2.a)), select(select(vec2<bool>(true, false), vec2<bool>(var_1.a.c, var_1.a.c), global2.a), select(vec2<bool>(false, global2.a), vec2<bool>(var_1.a.c, false), vec2<bool>(false, true)), select(vec2<bool>(var_1.a.c, var_1.a.c), vec2<bool>(var_1.a.c, false), vec2<bool>(true, true))), !(!vec2<bool>(var_1.a.c, global2.a))), vec2<bool>(any(vec4<bool>(false, var_1.a.c, false, global2.a)), var_1.a.b < -388f)));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_3) -> vec2<i32> {
    let var_0 = arg_3;
    var var_1 = -437f;
    var_1 = -226f;
    let var_2 = 0i;
    let var_3 = select(select(select(arg_2.zy, select(select(vec2<bool>(arg_3.a, false), vec2<bool>(arg_2.x, var_0.a), arg_3.a), !arg_2.xy, all(vec2<bool>(arg_2.x, arg_0))), true), select(!vec2<bool>(arg_3.a, true), !(!vec2<bool>(arg_0, arg_0)), false), select(select(select(arg_2.xy, vec2<bool>(var_0.a, true), vec2<bool>(false, var_0.a)), arg_2.zy, vec2<bool>(arg_0, true)), select(vec2<bool>(true, true), !arg_2.xz, var_0.a), vec2<bool>(true, false))), !select(select(vec2<bool>(arg_0, true), arg_2.yz, vec2<bool>(true, false)), arg_2.yy, select(vec2<bool>(true, global2.a), vec2<bool>(false, true), arg_3.a)), select(!(!(!arg_2.yx)), vec2<bool>(all(!vec3<bool>(false, arg_3.a, arg_0)), true), !arg_2.zz));
    return abs(abs(vec2<i32>(_wgslsmith_mod_i32(var_2, -1i), max(-17640i, var_2)))) >> (vec2<u32>(abs(global1[_wgslsmith_index_u32(0u, 2u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 2u)], 18740u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 2u)], 2u)], 2u)], 2u)])), vec4<u32>(12924u, u_input.a, 4294967295u, u_input.a) ^ vec4<u32>(u_input.a, 4294967295u, global1[_wgslsmith_index_u32(1u, 2u)], u_input.a)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.a, 28337u, u_input.a, 35675u)), vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 2u)], 2u)], 0u, 32731u) & vec4<u32>(u_input.a, 21411u, global1[_wgslsmith_index_u32(34263u, 2u)], global1[_wgslsmith_index_u32(26630u, 2u)]))), 2u)]) % vec2<u32>(32u));
}

fn func_2() -> Struct_2 {
    var var_0 = ~(~vec2<u32>(37473u, ~firstTrailingBit(19280u)));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -211f);
    var var_1 = ~((vec2<i32>(-2147483647i, i32(-1i) * -2147483647i) << (~vec2<u32>(global1[_wgslsmith_index_u32(36713u, 2u)], 12180u) % vec2<u32>(32u))) | abs(func_4(func_3(), 421f, !vec3<bool>(global2.a, global2.a, global2.a), Struct_3(true))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(834f + -587f) * _wgslsmith_f_op_f32(sign(-1357f))), -1012f, 1f)));
    var_0 = _wgslsmith_mult_vec2_u32(firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, u_input.a) << (~vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 2u)]) % vec2<u32>(32u)), vec2<u32>(21335u, 1082u))), ~(~(reverseBits(vec2<u32>(var_0.x, 0u)) | vec2<u32>(23769u, 26590u))));
    return Struct_2(Struct_1(0u, var_2.x, global2.a));
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    var var_0 = func_2();
    let var_1 = select(select(!vec4<bool>(true && arg_0.a.c, arg_0.a.c, global2.a, select(var_0.a.c, true, true)), !select(!vec4<bool>(var_0.a.c, arg_0.a.c, var_0.a.c, true), !vec4<bool>(global2.a, global2.a, arg_0.a.c, var_0.a.c), func_3()), any(vec3<bool>(true, true, any(vec3<bool>(true, true, arg_0.a.c))))), !vec4<bool>(select(true, true, true), false, true, arg_0.a.c), true);
    var var_2 = func_2().a;
    var_2 = var_0.a;
    var var_3 = !any(select(select(var_1, var_1, var_1.x), var_1, var_1.x));
    return Struct_3(true);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: vec3<bool>) -> i32 {
    let var_0 = ~_wgslsmith_add_vec3_u32(~(~max(vec3<u32>(13129u, global1[_wgslsmith_index_u32(arg_2, 2u)], global1[_wgslsmith_index_u32(1u, 2u)]), vec3<u32>(0u, 4600u, 0u))), (~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 2u)], 2u)], 4294967295u, 1u) ^ vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(27568u, 2u)], global1[_wgslsmith_index_u32(48491u, 2u)])) ^ reverseBits(vec3<u32>(arg_2, 14099u, arg_2)));
    let var_1 = !select(vec4<bool>(global2.a, true, true, any(arg_3.yx)), vec4<bool>(true, !arg_3.x, true != any(vec4<bool>(true, arg_3.x, false, false)), all(vec2<bool>(true, false))), global2.a);
    global2 = Struct_3(var_1.x);
    global1 = array<u32, 2>();
    global2 = func_5(func_2());
    return _wgslsmith_add_i32(firstTrailingBit(select(max(-8423i, i32(-1i) * -2147483647i), i32(-1i) * -1i, true)), -20166i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(1i, abs(func_1(_wgslsmith_f_op_f32(150f - 167f), _wgslsmith_f_op_f32(2609f + -750f), 28941u, vec3<bool>(false, true, true)))) >> (_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 2u)], u_input.a, u_input.a), select(vec4<u32>(4294967295u, 21265u, u_input.a, 1u), vec4<u32>(18574u, 15579u, 0u, u_input.a), true))), vec4<u32>(~_wgslsmith_clamp_u32(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 2u)], 18555u), 1u, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12742u, 2u)], 2u)]), ~vec2<u32>(u_input.a, 89651u)))) % 32u);
    global2 = Struct_3((global1[_wgslsmith_index_u32(6924u, 2u)] >= 0u) && (_wgslsmith_f_op_f32(round(585f)) >= -113f));
    var var_1 = Struct_1(~u_input.a, _wgslsmith_f_op_f32(select(288f, _wgslsmith_f_op_f32(-1000f * -2885f), !global2.a)), global2.a);
    global2 = Struct_3((var_1.b > _wgslsmith_f_op_f32(f32(-1f) * -244f)) && (global2.a && global2.a));
    var var_2 = false;
    global2 = func_5(Struct_2(Struct_1(60418u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), var_1.c)));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, var_1.b, 170f)), vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.b)), _wgslsmith_f_op_f32(abs(var_1.b)), 1033f, var_1.b), true))))));
    var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-326f, var_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b)) - var_3.x)) - -1260f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.b)) + -736f) + -1094f), var_3.x);
    let var_4 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(1u, 2u)], var_1.a, reverseBits(global1[_wgslsmith_index_u32(19224u, 2u)])) & global1[_wgslsmith_index_u32(func_2().a.a, 2u)], countOneBits(59916u)), var_3.x, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(-var_0, ~var_0, var_0 << (0u % 32u)) ^ -select(_wgslsmith_div_vec3_i32(vec3<i32>(var_0, -39373i, -4927i), vec3<i32>(var_0, var_0, -2147483647i)), -vec3<i32>(var_0, -28975i, var_0), true));
}

