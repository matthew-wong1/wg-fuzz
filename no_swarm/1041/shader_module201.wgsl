struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(4294967295u, 6058u, 25702u), vec3<u32>(35300u, 14239u, 14933u), vec3<u32>(13704u, 39669u, 4294967295u), vec3<u32>(81453u, 4294967295u, 45774u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(57565u, 24621u, 4294967295u), vec3<u32>(1u, 8996u, 0u), vec3<u32>(72875u, 133523u, 4294967295u), vec3<u32>(25344u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 9658u), vec3<u32>(3404u, 5807u, 17484u), vec3<u32>(12160u, 1u, 61662u), vec3<u32>(29881u, 0u, 1486u), vec3<u32>(54501u, 4294967295u, 63349u));

var<private> global1: bool = false;

var<private> global2: array<Struct_2, 1>;

var<private> global3: array<u32, 20>;

var<private> global4: array<Struct_5, 19>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec4<i32>) -> bool {
    var var_0 = arg_3.x;
    global2 = array<Struct_2, 1>();
    global1 = !(!any(arg_0.b.zz));
    let var_1 = ~reverseBits(abs(~firstLeadingBit(vec3<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 20u)], 0u, 1u))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-512f, -1202f, arg_2.d.a.x)), vec3<f32>(arg_2.d.d.x, arg_2.d.a.x, 845f))))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.x, 2147483647i), vec2<i32>(7872i, 11687i)), ~u_input.c.x), arg_0.a), 0u, vec2<f32>(_wgslsmith_f_op_f32(-arg_2.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1832f)), global3[_wgslsmith_index_u32(4294967295u, 20u)]);
    return arg_2.e.a.x;
}

fn func_2() -> u32 {
    var var_0 = all(!vec2<bool>(true, !func_3(Struct_4(vec2<i32>(-1i, u_input.c.x), vec4<bool>(true, true, false, true)), Struct_4(vec2<i32>(26258i, u_input.c.x), vec4<bool>(false, false, false, true)), Struct_3(4294967295u, Struct_2(vec4<bool>(true, false, false, true)), Struct_1(vec3<f32>(110f, -423f, 200f), -1i, u_input.a.x, vec2<f32>(-823f, -207f), u_input.b.x), Struct_1(vec3<f32>(-258f, 1173f, -356f), u_input.c.x, 1u, vec2<f32>(-1523f, -576f), 22678u), Struct_2(vec4<bool>(true, false, true, false))), vec4<i32>(u_input.d, -2147483647i, u_input.c.x, -29914i))));
    global3 = array<u32, 20>();
    let var_1 = select(select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.d), -vec3<i32>(24204i, u_input.d, u_input.c.x)), ~6909i, u_input.d, _wgslsmith_clamp_i32(u_input.d, u_input.c.x, u_input.d)), firstTrailingBit(vec4<i32>(u_input.d, _wgslsmith_mod_i32(22403i, u_input.d), -18733i, _wgslsmith_mult_i32(0i, -2147483647i))), select(true, true, all(vec3<bool>(true, true, true)))), _wgslsmith_div_vec4_i32(reverseBits(abs(select(vec4<i32>(30118i, -12162i, -1i, u_input.c.x), vec4<i32>(-2147483647i, u_input.c.x, -37423i, u_input.d), vec4<bool>(false, false, false, false)))), -vec4<i32>(u_input.d, abs(u_input.d), u_input.d, reverseBits(u_input.c.x))), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(any(vec4<bool>(false, false, false, false)), true, false, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 20u)], 20u)] < global3[_wgslsmith_index_u32(4294967295u, 20u)]), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, false, true, true))), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, any(vec4<bool>(false, false, false, false)), true))));
    var var_2 = 467f;
    let var_3 = 37269u;
    return countOneBits(global3[_wgslsmith_index_u32(u_input.b.x, 20u)]);
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> bool {
    global2 = array<Struct_2, 1>();
    var var_0 = min(4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~u_input.b.xz, u_input.b.zz), func_2()));
    let var_1 = Struct_2(!select(!select(vec4<bool>(arg_1, true, false, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1)), vec4<bool>(true, false, true, false), true));
    global1 = true;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_u32(~select(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(4294967295u), 20u)], 20u)], _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 24388u, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, 17155u, 31321u, u_input.e)), ~u_input.e, u_input.e), vec4<u32>(~0u, ~u_input.e, _wgslsmith_mult_u32(1u, 7054u), ~u_input.a.x), func_1(vec3<i32>(u_input.c.x, -8073i, u_input.c.x), false)), countOneBits(vec4<u32>(56305u, ~(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 20u)], 20u)], 20u)] ^ u_input.a.x), firstTrailingBit(~u_input.b.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(0u, 20u)], 1u), u_input.a))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-181f, _wgslsmith_f_op_f32(sign(-128f)), 844f, 657f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(249f, -1065f, -2038f, 169f), vec4<f32>(384f, 605f, -643f, 359f), vec4<bool>(true, true, true, false)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(385f, 103f, -1000f, -818f)) - vec4<f32>(-253f, -1000f, -875f, -1315f)))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-339f, -1171f, -1069f, -1010f))), vec4<f32>(1140f, -630f, 857f, -892f))))));
    let var_2 = 0i ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 1i, u_input.c.x), vec3<i32>(2147483647i, -5649i, -17195i)), u_input.c.x | 14015i, -11167i, ~u_input.d), vec4<i32>(-u_input.d, min(-45796i, u_input.d), u_input.c.x, u_input.c.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(904f)));
    let var_4 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(var_0.x, ~u_input.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(abs(var_1.x))))), global3[_wgslsmith_index_u32(37025u, 20u)], u_input.e);
}

