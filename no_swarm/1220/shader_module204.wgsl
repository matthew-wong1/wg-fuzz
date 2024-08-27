struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: vec2<bool>;

var<private> global2: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-2294f, -1058f), vec2<f32>(317f, 966f), vec2<f32>(2483f, 313f), vec2<f32>(739f, 411f), vec2<f32>(-253f, 1235f), vec2<f32>(-1198f, -710f), vec2<f32>(-2878f, 274f), vec2<f32>(607f, -461f), vec2<f32>(364f, 1068f), vec2<f32>(-1845f, -1165f), vec2<f32>(1599f, 332f), vec2<f32>(947f, 1647f), vec2<f32>(-163f, 1768f), vec2<f32>(282f, -182f), vec2<f32>(-1756f, -676f), vec2<f32>(-1254f, 728f), vec2<f32>(-1000f, -351f), vec2<f32>(358f, 1920f), vec2<f32>(-382f, 2362f), vec2<f32>(2244f, -490f), vec2<f32>(1017f, 241f), vec2<f32>(428f, -362f), vec2<f32>(-664f, -1000f), vec2<f32>(401f, 1000f), vec2<f32>(1000f, 332f), vec2<f32>(-314f, -393f), vec2<f32>(-674f, 711f), vec2<f32>(1052f, -1000f));

var<private> global3: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    global1 = vec2<bool>(true, !(!(global1.x == false)));
    var var_0 = global0[_wgslsmith_index_u32(2762u, 4u)];
    let var_1 = 642f;
    let var_2 = _wgslsmith_div_i32(var_0.e.x, ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.e.x, -63632i, 2147483647i), vec3<i32>(-1i, 4926i, arg_0.a.x)), 1823i) & firstLeadingBit(1i));
    var var_3 = 55620u;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(var_1 + var_1), _wgslsmith_f_op_f32(f32(-1f) * -874f), 564f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 171f, 1350f, -1000f)), vec4<f32>(var_0.d.x, -445f, -1091f, var_0.d.x), true)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)), vec4<f32>(_wgslsmith_f_op_f32(floor(var_1)), 239f, _wgslsmith_f_op_f32(333f + var_1), _wgslsmith_f_op_f32(f32(-1f) * -553f)))), arg_0.b))));
}

fn func_2() -> Struct_1 {
    global2 = array<vec2<f32>, 28>();
    global2 = array<vec2<f32>, 28>();
    let var_0 = i32(-1i) * -reverseBits(2147483647i);
    global1 = vec2<bool>(true, global1.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(u_input.b.ww, vec4<f32>(552f, 392f, -704f, 895f), vec3<u32>(u_input.a, u_input.d.x, 1u), global2[_wgslsmith_index_u32(u_input.d.x, 28u)], vec3<i32>(1i, u_input.c, var_0)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-584f, -1155f, 912f, 1129f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1160f, 1108f, -923f, -135f))), vec4<f32>(-745f, -464f, 698f, 605f), true))))));
    return Struct_1(-select(_wgslsmith_add_vec2_i32(u_input.b.yy, u_input.b.yw) | -u_input.b.zz, ~vec2<i32>(var_0, u_input.e), vec2<bool>(true, global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1)), vec3<u32>(_wgslsmith_div_u32(51693u, u_input.d.x >> (~u_input.d.x % 32u)), 4294967295u, ~81409u), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(515f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1318f)))))), select(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(40658i, u_input.e, 2147483647i, u_input.c), u_input.b), -1i, -31662i | var_0), u_input.b.xyy, vec3<bool>(true, true, true)));
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 4>();
    let var_0 = -(~select(u_input.b, vec4<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.b.xxw, u_input.b.yzw), u_input.b.x, 1i), true));
    var var_1 = ~u_input.a ^ 11064u;
    let var_2 = false;
    global2 = array<vec2<f32>, 28>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(~4294967295u, ~(~u_input.a));
    let var_1 = !(reverseBits(-37637i) >= u_input.b.x);
    var var_2 = vec3<u32>(~(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), u_input.d)) ^ 13494u), ~u_input.a, u_input.a);
    let var_3 = func_1();
    var_2 = var_3.c;
    var_2 = ~min(_wgslsmith_mod_vec3_u32(vec3<u32>(var_3.c.x, 4294967295u, ~0u), vec3<u32>(11786u, func_1().c.x, func_1().c.x)), ~var_3.c & ~select(vec3<u32>(4294967295u, var_3.c.x, 0u), var_3.c, var_1));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, 39977u, var_3.c.x), vec4<u32>(19729u, u_input.a, var_3.c.x, var_2.x)), 25874u, 45417u) >> (min(6104u, 39950u) % 32u), ~51748u), var_3.c.x), 4u)];
    global0 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, firstLeadingBit(vec3<i32>(5778i, 2147483647i, 57015i)));
}

