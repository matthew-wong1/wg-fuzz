struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<f32>(2483f, 2120f), vec4<u32>(34404u, 60869u, 4294967295u, 4294967295u)), Struct_1(vec2<f32>(-328f, 712f), vec4<u32>(1u, 0u, 45474u, 0u)), Struct_1(vec2<f32>(604f, -556f), vec4<u32>(1u, 4294967295u, 1u, 81129u)), Struct_1(vec2<f32>(897f, 1700f), vec4<u32>(58980u, 4294967295u, 31811u, 24427u)), Struct_1(vec2<f32>(251f, -777f), vec4<u32>(52735u, 4294967295u, 1u, 4294967295u)), Struct_1(vec2<f32>(448f, -839f), vec4<u32>(64476u, 0u, 32426u, 40968u)), Struct_1(vec2<f32>(-519f, 982f), vec4<u32>(1u, 45253u, 1u, 0u)));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>) -> bool {
    let var_0 = 35684i;
    let var_1 = ~(~abs(min(select(vec4<u32>(u_input.a, u_input.a, 37705u, u_input.a), vec4<u32>(4294967295u, u_input.a, 13920u, 1u), false), vec4<u32>(u_input.a, u_input.a, 25955u, u_input.a))));
    let var_2 = Struct_3(global2[_wgslsmith_index_u32(u_input.a, 7u)], 1u);
    global0 = array<vec2<i32>, 5>();
    global1 = _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(round(664f)), var_2.a.b.x > _wgslsmith_dot_vec2_u32(~var_2.a.b.wz, ~vec2<u32>(var_1.x, 25787u)))) >= 2317f;
    return !(!any(vec2<bool>(4294967295u <= var_2.b, var_2.a.a.x <= arg_0.x)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: i32) -> f32 {
    let var_0 = !any(select(vec2<bool>(all(vec3<bool>(true, true, true)), true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, func_3(vec3<f32>(493f, arg_2, arg_0)))));
    global0 = array<vec2<i32>, 5>();
    let var_1 = Struct_2(~arg_3);
    global2 = array<Struct_1, 7>();
    global2 = array<Struct_1, 7>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, arg_0)) * _wgslsmith_f_op_f32(step(495f, arg_2))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-918f * _wgslsmith_f_op_f32(-arg_2)) * arg_2))));
}

fn func_1() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1880f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(sign(-1101f)), _wgslsmith_mult_u32(15021u, u_input.a), -860f, -55258i >> (1u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1393f)))))));
    global0 = array<vec2<i32>, 5>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(round(1932f))), _wgslsmith_f_op_f32(825f + 785f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(993f, 573f) - vec2<f32>(-2638f, 1157f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-288f, 252f))) + vec2<f32>(-164f, _wgslsmith_div_f32(-639f, 508f)))), vec4<u32>(~_wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a, select(reverseBits(~1262u), 38068u, !any(vec2<bool>(true, false))), 0u));
    let var_2 = (reverseBits(1i | (-1i >> (u_input.a % 32u))) >> (abs(reverseBits(max(1u, u_input.a))) % 32u)) | _wgslsmith_div_i32(~0i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, -1889i), min(vec2<i32>(-20600i, -1i), global0[_wgslsmith_index_u32(u_input.a, 5u)])) << (35958u % 32u));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a), ~var_1.b);
    return vec3<bool>(!(false || (~21305u < _wgslsmith_dot_vec3_u32(var_3.b.yxz, vec3<u32>(var_1.b.x, u_input.a, u_input.a)))), !(select(func_3(vec3<f32>(var_1.a.x, -213f, var_1.a.x)), any(vec3<bool>(true, true, true)), true) == (var_1.a.x == _wgslsmith_div_f32(186f, -1813f))), _wgslsmith_f_op_f32(var_3.a.x + var_3.a.x) > _wgslsmith_f_op_f32(1231f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -716f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 7>();
    let var_0 = vec2<u32>(~u_input.a, 30777u);
    var var_1 = select(vec3<u32>(~11401u, u_input.a << (1u % 32u), u_input.a), ~abs(select(vec3<u32>(u_input.a, 8617u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), false)) & vec3<u32>(var_0.x, var_0.x, _wgslsmith_div_u32(~0u, var_0.x & var_0.x)), select(vec3<bool>(true, true, any(func_1())), select(select(func_1(), vec3<bool>(true, false, true), true), select(func_1(), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    var var_2 = Struct_2(0i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a, 18491i, var_2.a), vec3<i32>(-2147483647i, var_2.a, -2147483647i))), -_wgslsmith_mod_i32(var_2.a, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -21001i), vec2<i32>(var_2.a, 2147483647i))), ~(-var_2.a), -1i), (vec3<u32>(var_0.x, 1u, ~1u) | ~vec3<u32>(var_0.x, var_0.x, var_1.x)) ^ select(~_wgslsmith_clamp_vec3_u32(vec3<u32>(39556u, var_1.x, var_1.x), vec3<u32>(var_0.x, 80846u, u_input.a), vec3<u32>(u_input.a, 50591u, u_input.a)), vec3<u32>(_wgslsmith_sub_u32(80137u, var_1.x), _wgslsmith_mult_u32(var_0.x, var_0.x), 7651u), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1814f, -1313f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -122f))), -525f, -485f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1529f, 275f, 467f), vec3<f32>(-612f, -1433f, -517f))))))) * vec3<f32>(-434f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(452f * 904f) + -157f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -825f) - 1566f))), ~_wgslsmith_add_vec3_i32(vec3<i32>(-var_2.a, var_2.a, var_2.a), reverseBits(vec3<i32>(var_2.a, var_2.a, var_2.a)) >> (~vec3<u32>(u_input.a, var_1.x, 52099u) % vec3<u32>(32u))));
}

