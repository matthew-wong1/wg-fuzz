struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true));

var<private> global2: vec2<u32>;

var<private> global3: vec2<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    return countOneBits(abs(0u));
}

fn func_2() -> u32 {
    global0 = array<Struct_1, 5>();
    var var_0 = Struct_1(-(i32(-1i) * -2147483647i));
    return func_3(~vec2<i32>(firstTrailingBit(u_input.a) ^ 2147483647i, 12904i));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: i32) -> Struct_5 {
    var var_0 = _wgslsmith_clamp_u32(u_input.c.x & ~global2.x, abs(_wgslsmith_mult_u32(~arg_2.x, u_input.d.x)), ~0u);
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(ceil(1688f)), -382f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) + vec3<f32>(arg_0, arg_0, 557f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, arg_0, arg_0)))))));
    global3 = select(select(vec2<bool>(global3.x, global3.x), vec2<bool>(any(global1[_wgslsmith_index_u32(global2.x, 32u)]) && (-1i <= arg_3), any(select(vec3<bool>(false, global3.x, global3.x), global1[_wgslsmith_index_u32(arg_2.x, 32u)], global3.x))), !select(!vec2<bool>(true, global3.x), !vec2<bool>(global3.x, false), !vec2<bool>(global3.x, false))), vec2<bool>(select(any(!vec2<bool>(false, global3.x)), global3.x, true), !global3.x), select(!vec2<bool>(global3.x, !global3.x), !vec2<bool>(true, all(vec3<bool>(global3.x, false, false))), vec2<bool>(false, any(select(global1[_wgslsmith_index_u32(56254u, 32u)], vec3<bool>(true, global3.x, global3.x), vec3<bool>(false, true, true))))));
    var var_2 = vec4<u32>(abs(_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(arg_2.x, _wgslsmith_mod_u32(1u, arg_2.x), reverseBits(arg_2.x)))), 74798u, _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2.x), u_input.d) >> (74411u % 32u), u_input.d.x), arg_2.x), ~arg_1.x);
    global1 = array<vec3<bool>, 32>();
    return Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-arg_0))), ~u_input.b.x & 4294967295u, -30821i, _wgslsmith_mod_vec2_u32(max(vec2<u32>(~4294967295u, 1u), ~var_2.yz), vec2<u32>(var_2.x, ~(4294967295u >> (arg_2.x % 32u)))), 11384i);
}

fn func_1() -> u32 {
    global0 = array<Struct_1, 5>();
    let var_0 = func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-489f, _wgslsmith_div_f32(-1243f, -154f))), 2324f)), _wgslsmith_add_vec3_u32(min(firstLeadingBit(vec3<u32>(1u, global2.x, 1u) & vec3<u32>(u_input.d.x, 4294967295u, 13094u)), ~countOneBits(vec3<u32>(17953u, 82815u, u_input.d.x))), abs(vec3<u32>(global2.x, global2.x, u_input.d.x) | ~vec3<u32>(1u, u_input.c.x, u_input.d.x))), ~vec4<u32>(~46118u, 47348u, 4294967295u, func_2()), ~u_input.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(272f, var_0.a.x, var_0.a.x, 173f), vec4<f32>(1269f, -716f, -1476f, -742f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(644f, 673f, -295f, -2243f) - vec4<f32>(259f, var_0.a.x, -976f, var_0.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.x, -774f, var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, var_0.a.x, -374f, 213f)))))));
    var var_2 = all(vec4<bool>(false, all(!(!vec2<bool>(global3.x, global3.x))), select(true, any(select(vec2<bool>(global3.x, false), vec2<bool>(global3.x, false), vec2<bool>(global3.x, false))), global3.x), u_input.a != -firstTrailingBit(u_input.a)));
    var_2 = global3.x;
    return ~57897u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(1u ^ (_wgslsmith_sub_u32(global2.x, u_input.d.x) | max(49417u, u_input.b.x)), ~1u, u_input.c.x, 0u ^ func_1()), vec4<u32>(~(~(~u_input.d.x)), ~(~1u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 22244u), vec2<u32>(global2.x, 37750u), !global3.x), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, global2.x), u_input.c), vec2<u32>(31144u, 0u) & u_input.b)), _wgslsmith_mult_u32(21817u, global2.x)), vec4<u32>(4294967295u, ~global2.x, global2.x, u_input.c.x) >> (_wgslsmith_mod_vec4_u32(max(max(vec4<u32>(22403u, global2.x, u_input.d.x, 41293u), vec4<u32>(4294967295u, 0u, 1u, 34584u)), ~vec4<u32>(0u, global2.x, u_input.d.x, global2.x)), ~firstLeadingBit(vec4<u32>(u_input.d.x, 0u, 45925u, 11171u))) % vec4<u32>(32u)));
    var var_1 = Struct_2(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -772f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1740f) - _wgslsmith_f_op_f32(round(-804f)))), abs(vec3<u32>(~global2.x, 128155u << (global2.x % 32u), u_input.b.x)), var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 38275i) >> (var_0.yy % vec2<u32>(32u)), select(_wgslsmith_mult_vec2_i32(vec2<i32>(-30000i, -42573i), vec2<i32>(u_input.a, -2147483647i)), -vec2<i32>(u_input.a, 1i), global3.x))).d.x);
    global0 = array<Struct_1, 5>();
    var_1 = Struct_2(_wgslsmith_mult_u32(var_1.a, 58365u));
    let var_2 = Struct_4(select(true, global3.x, false), firstTrailingBit(~(~(~u_input.a))), u_input.a | ~(-1i), vec2<bool>(!(!(true || global3.x)), all(select(select(vec2<bool>(true, global3.x), vec2<bool>(true, true), global3.x), !vec2<bool>(global3.x, false), any(vec2<bool>(global3.x, true))))), select(select(!vec4<bool>(true, global3.x, global3.x, global3.x), !(!vec4<bool>(false, global3.x, global3.x, true)), (u_input.a & -16669i) <= _wgslsmith_mult_i32(-28956i, u_input.a)), !(!select(vec4<bool>(global3.x, true, global3.x, false), vec4<bool>(true, true, false, true), true)), !(!global3.x) & all(!vec3<bool>(global3.x, false, global3.x))));
    let var_3 = var_2.c;
    global0 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~var_3, u_input.a));
}

