struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: Struct_2;

var<private> global2: array<vec2<bool>, 26>;

var<private> global3: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false));

var<private> global4: array<Struct_2, 3>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = global1.b;
    let var_1 = true;
    var_0 = global1.c;
    let var_2 = all(global1.c.c) && (!var_0.d & var_0.d);
    global4 = array<Struct_2, 3>();
    return global1.c;
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec4<f32>, arg_3: vec2<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(global1.e, ~_wgslsmith_mult_u32(1u, ~25877u), ~u_input.a.x, select(abs(~63938u), u_input.a.x, true)), (select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, global1.e) >> (vec4<u32>(u_input.a.x, 0u, 4294967295u, 4294967295u) % vec4<u32>(32u)), all(global1.c.c.yz)) >> (firstTrailingBit(vec4<u32>(global1.e, u_input.a.x, u_input.a.x, 1u)) % vec4<u32>(32u))) << ((vec4<u32>(~56492u, ~global1.e, global1.e, _wgslsmith_sub_u32(77078u, global1.e)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.e, u_input.a.x, global1.e, 4294967295u) | vec4<u32>(60192u, 115137u, u_input.a.x, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 44132u, u_input.a.x, global1.e), vec4<u32>(global1.e, u_input.a.x, 83113u, global1.e)), _wgslsmith_mod_vec4_u32(vec4<u32>(12369u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(31848u, 21365u, u_input.a.x, 16143u)))) % vec4<u32>(32u)));
    var var_1 = global1.b.c;
    let var_2 = -vec4<i32>(min(global0[_wgslsmith_index_u32(0u, 28u)] & ~0i, -15534i), -23732i, -min(u_input.b.x ^ 1697i, u_input.b.x), 0i);
    var var_3 = _wgslsmith_mult_i32(arg_0, 2147483647i) >> (1u % 32u);
    global3 = array<vec4<bool>, 19>();
    return firstLeadingBit(vec3<i32>(var_2.x, 10762i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 0i, 42988i), ~u_input.b), arg_0 << (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(3502u, 4294967295u, 3678u, var_0.x), vec4<u32>(1u, 143320u, 23403u, 12167u)), ~vec4<u32>(0u, global1.e, var_0.x, 50116u)) % 32u)));
}

fn func_1() -> u32 {
    let var_0 = global1.b.c.yxz;
    let var_1 = Struct_3(func_2(_wgslsmith_sub_i32(-2147483647i, u_input.b.x), !(false & any(vec4<bool>(var_0.x, global1.c.d, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(448f, 144f, global1.c.b.x, 658f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-372f, global1.c.b.x, -309f, global1.b.b.x)), !global1.c.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.b.x, -2552f, global1.b.b.x, global1.c.b.x)), false))), Struct_1(func_3(firstTrailingBit(0i), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(38461u, 28u)], -35929i) != _wgslsmith_mult_i32(33397i, u_input.b.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.c.b.x, 676f, 2131f, global1.c.b.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(996f, -1851f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1833f, global1.b.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.b.b, global1.b.b, true))), !global3[_wgslsmith_index_u32(abs(~global1.e), 19u)], !func_2(_wgslsmith_sub_i32(u_input.b.x, global1.b.a.x), global1.b.c.x, _wgslsmith_div_vec4_f32(vec4<f32>(global1.b.b.x, 187f, global1.b.b.x, global1.c.b.x), vec4<f32>(458f, 1457f, global1.b.b.x, global1.b.b.x))).d));
    global3 = array<vec4<bool>, 19>();
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(min(~select(vec4<u32>(4294967295u, 39179u, global1.e, 0u), vec4<u32>(u_input.a.x, global1.e, global1.e, 0u), false), vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, global1.e), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, global1.e, 41359u), vec4<u32>(78633u, 27787u, 0u, 42046u)), _wgslsmith_sub_u32(0u, global1.e), 0u)), vec4<u32>(global1.e, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.e, u_input.a.x, global1.e, global1.e), vec4<u32>(1u, 52099u, 1u, u_input.a.x)), global1.e, 29353u), 0u, ~4294967295u & global1.e)), select(1u, global1.e, var_1.a.a.x < _wgslsmith_mult_i32(u_input.b.x, 0i)));
    global4 = array<Struct_2, 3>();
    return _wgslsmith_mod_u32(~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a) & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a.x, 34931u), vec4<u32>(4294967295u, 32546u, 71869u, u_input.a.x)))), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 27255u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, _wgslsmith_mult_u32(1u, max(global1.e, u_input.a.x)), abs(12834u) | firstTrailingBit(4294967295u), ~u_input.a.x ^ global1.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(665f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2093f + global1.c.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.c.b.x)), _wgslsmith_f_op_f32(-global1.c.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1261f, 457f, global1.c.d)), _wgslsmith_f_op_f32(-global1.c.b.x))))), ~((1u << (reverseBits(u_input.a.x) % 32u)) & global1.e));
}

