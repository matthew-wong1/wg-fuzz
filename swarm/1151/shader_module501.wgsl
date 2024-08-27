struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global1: array<f32, 23>;

var<private> global2: Struct_2 = Struct_2(Struct_1(0u), true);

var<private> global3: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(0u, 0u), vec2<u32>(0u, 0u), vec2<u32>(6512u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(16485u, 4294967295u), vec2<u32>(1u, 11729u), vec2<u32>(20869u, 9353u), vec2<u32>(42303u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(4570u, 7460u), vec2<u32>(30011u, 36820u), vec2<u32>(41849u, 64935u), vec2<u32>(1u, 17816u), vec2<u32>(62722u, 0u), vec2<u32>(109067u, 14533u), vec2<u32>(0u, 36140u), vec2<u32>(0u, 19886u), vec2<u32>(59585u, 0u), vec2<u32>(0u, 14491u), vec2<u32>(0u, 34683u), vec2<u32>(54635u, 445u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 65440u), vec2<u32>(41010u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(35682u, 41182u), vec2<u32>(1u, 14108u), vec2<u32>(4294967295u, 54982u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = ~vec4<i32>(-2147483647i, ((i32(-1i) * -2147483647i) << (~u_input.a % 32u)) ^ ((i32(-1i) * -35761i) ^ _wgslsmith_clamp_i32(-2147483647i, 42469i, 0i)), min(-52616i, firstTrailingBit(-1i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, -6953i), vec2<i32>(_wgslsmith_div_i32(-19679i, 2147483647i), -1i)));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(849f - _wgslsmith_f_op_f32(108f - global1[_wgslsmith_index_u32(24138u, 23u)])) + _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(1u, 23u)]))) * global1[_wgslsmith_index_u32(arg_0.a.a, 23u)])));
    let var_2 = Struct_4(select(select(vec3<bool>(true, true, var_0.x <= var_0.x), vec3<bool>(true, true, !global2.b), vec3<bool>(false, global2.a.a == 0u, global2.b && false)), select(vec3<bool>(true, true, 4294967295u > global2.a.a), vec3<bool>(true, all(global0[_wgslsmith_index_u32(global2.a.a, 21u)]), all(vec4<bool>(arg_0.b, true, true, arg_0.b))), !select(vec3<bool>(arg_0.b, arg_0.b, true), vec3<bool>(arg_0.b, true, true), vec3<bool>(global2.b, false, global2.b))), arg_0.b));
    var var_3 = any(vec2<bool>(abs(global2.a.a) != firstLeadingBit(4294967295u), arg_0.b)) && (global1[_wgslsmith_index_u32(~arg_0.a.a, 23u)] >= -725f);
    let var_4 = Struct_2(Struct_1(~(u_input.e.x ^ (u_input.a << (0u % 32u)))), var_2.a.x);
    return !(true & (~(var_4.a.a >> (1433u % 32u)) < min(690u, ~36542u)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_4 {
    var var_0 = firstLeadingBit(select(_wgslsmith_add_vec4_u32((vec4<u32>(arg_2.a.a.a, u_input.b, 69239u, 4294967295u) ^ vec4<u32>(arg_1.a, u_input.c.x, 20270u, 0u)) | vec4<u32>(2849u, 1u, u_input.e.x, u_input.a), ~vec4<u32>(arg_1.a, arg_1.a, 0u, 39379u)), vec4<u32>(~arg_2.a.a.a, 0u, arg_1.a, ~arg_1.a), select(vec4<bool>(true, arg_2.a.b, arg_2.a.b, true), !(!vec4<bool>(true, arg_2.a.b, true, false)), arg_2.a.b)));
    global2 = Struct_2(global2.a, func_3(Struct_2(Struct_1(u_input.e.x), global2.b)) || all(vec3<bool>(arg_0 == arg_0, false, global2.b)));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~reverseBits(abs(vec4<u32>(global2.a.a, arg_2.a.a.a, u_input.e.x, 4294967295u))), ~select(select(~vec4<u32>(22504u, global2.a.a, arg_2.a.a.a, var_0.x), vec4<u32>(29182u, u_input.e.x, 0u, u_input.c.x) ^ vec4<u32>(1u, global2.a.a, arg_2.a.a.a, arg_2.a.a.a), arg_2.a.b), ~vec4<u32>(u_input.b, 64578u, 5660u, 1u), func_3(Struct_2(arg_2.a.a, false)))), 21u)];
    let var_2 = global0[_wgslsmith_index_u32(arg_1.a, 21u)];
    var var_3 = false;
    return Struct_4(select(!vec3<bool>(any(global0[_wgslsmith_index_u32(0u, 21u)]), global2.b, false), vec3<bool>(-650f > global1[_wgslsmith_index_u32(~arg_1.a, 23u)], all(select(vec2<bool>(var_2.x, true), global0[_wgslsmith_index_u32(arg_1.a, 21u)], global2.b)), !(!global2.b)), var_1.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: i32) -> u32 {
    global1 = array<f32, 23>();
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(331f, global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(u_input.e.x, 23u)])))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], true)))), global1[_wgslsmith_index_u32(global2.a.a, 23u)], _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), global2.b))), any(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, arg_2, -31529i, arg_2), vec4<i32>(13024i, arg_2, arg_2, -81372i)), global2.a, Struct_3(Struct_2(global2.a, arg_1.a.x))).a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1438f, 279f, global1[_wgslsmith_index_u32(global2.a.a, 23u)]))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(u_input.e.x, 23u)], -1000f) * vec3<f32>(1327f, global1[_wgslsmith_index_u32(u_input.c.x, 23u)], -1207f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(464f, global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(global2.a.a, 23u)]))))));
    var var_1 = var_0.xy;
    var_1 = var_0.zy;
    var_1 = _wgslsmith_f_op_vec2_f32(-var_0.xz);
    return ~(~1u);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: u32) -> u32 {
    let var_0 = arg_1.a;
    let var_1 = vec4<u32>(reverseBits(min(38911u, 4294967295u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(min(vec3<u32>(4294967295u, u_input.b, 4294967295u), vec3<u32>(73796u, var_0.a.a, u_input.d.x)), vec3<u32>(7349u, var_0.a.a, 56562u)), vec3<u32>(~u_input.d.x, global2.a.a, ~arg_1.a.a.a)), ~(~1u), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_3, 1u, 32870u), vec4<u32>(1u, 0u, 4294967295u, 0u)), _wgslsmith_sub_u32(arg_1.a.a.a, 14903u))) | vec4<u32>(1u, global2.a.a, _wgslsmith_sub_u32(func_4(vec3<u32>(1u, 1u, arg_1.a.a.a), func_2(-2193i, global2.a, arg_1), _wgslsmith_clamp_i32(2147483647i, -2147483647i, arg_2.x)), var_0.a.a), ~(~0u));
    let var_2 = var_0;
    let var_3 = _wgslsmith_mult_vec2_u32(vec2<u32>(~(_wgslsmith_clamp_u32(31191u, 1u, global2.a.a) & _wgslsmith_mod_u32(var_1.x, arg_3)), var_0.a.a), var_1.xz);
    let var_4 = u_input.a;
    return select(~firstTrailingBit(u_input.a), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(4294967295u, 23u)])))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1400f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 23>();
    let var_0 = vec3<bool>(!global2.b, true, global2.b);
    global1 = array<f32, 23>();
    let var_1 = ~select(~vec3<u32>(func_1(vec3<f32>(531f, global1[_wgslsmith_index_u32(global2.a.a, 23u)], 245f), Struct_3(Struct_2(Struct_1(u_input.e.x), false)), vec3<i32>(42944i, 28695i, 1i), 0u), func_4(vec3<u32>(62396u, 22483u, global2.a.a), Struct_4(vec3<bool>(true, false, false)), -6990i), 27171u), ~_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(u_input.c.x, u_input.a, 41526u)), vec3<u32>(global2.a.a, u_input.c.x, 32859u)), !var_0);
    let var_2 = var_1;
    var var_3 = abs(_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(var_1.x, 30u)], ~vec2<u32>(u_input.d.x, ~var_2.x)));
    var var_4 = Struct_1(countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.x, var_1.x, 21491u, 32805u), ~vec4<u32>(9934u, var_2.x, var_2.x, u_input.b)), vec4<u32>(firstTrailingBit(var_1.x), u_input.d.x, 36000u, ~11395u))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(reverseBits(~vec4<i32>(0i, -26600i, -2147483647i, 2147483647i))));
}

