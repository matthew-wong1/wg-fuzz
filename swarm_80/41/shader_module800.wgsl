struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(1000f, 1323f), vec2<f32>(-1377f, 1108f), vec2<f32>(-505f, 1417f), vec2<f32>(1858f, 1068f), vec2<f32>(-1000f, 780f), vec2<f32>(-733f, -1000f), vec2<f32>(-1023f, -521f), vec2<f32>(948f, -980f), vec2<f32>(252f, 732f), vec2<f32>(713f, -176f), vec2<f32>(-315f, -382f), vec2<f32>(-1496f, -245f));

var<private> global2: Struct_2 = Struct_2(992f, -1i, 18453u, 16882u);

var<private> global3: array<vec3<bool>, 23>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: i32, arg_3: vec3<bool>) -> i32 {
    global3 = array<vec3<bool>, 23>();
    var var_0 = -535f;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1704f);
    var var_2 = Struct_1(all(vec4<bool>(all(arg_0), arg_3.x | !arg_3.x, true, !any(vec2<bool>(false, arg_3.x)))), vec4<bool>(arg_0.x, arg_0.x, any(vec2<bool>(true, false)), !any(vec3<bool>(true, arg_0.x, false))));
    var var_3 = (_wgslsmith_dot_vec4_i32(select(vec4<i32>(52389i, u_input.b.x, 2147483647i, 18071i) | vec4<i32>(-11141i, u_input.b.x, -1i, 2147483647i), -u_input.c, arg_0), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 39735i, u_input.c.x, 2147483647i), vec4<i32>(global2.b, u_input.c.x, global2.b, global2.b), firstTrailingBit(u_input.c))) < _wgslsmith_mult_i32(14562i << (1u % 32u), 1i)) && all(select(arg_0, vec4<bool>(true, false, arg_0.x | arg_0.x, any(arg_3)), select(arg_0, !vec4<bool>(false, false, false, arg_3.x), select(vec4<bool>(false, arg_3.x, false, true), arg_0, var_2.b))));
    return 2147483647i;
}

fn func_2(arg_0: vec3<bool>) -> vec3<u32> {
    global2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.a)))) - _wgslsmith_f_op_f32(-global2.a)), _wgslsmith_add_i32(_wgslsmith_add_i32(global2.b, (global2.b >> (4294967295u % 32u)) & 10677i), _wgslsmith_sub_i32(1i, u_input.c.x)), firstTrailingBit(~((global2.c ^ 1u) >> (global2.d % 32u))), u_input.a | ~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a, 6167u, 1u), vec4<u32>(u_input.a, u_input.a, 1u, global2.d)));
    global1 = array<vec2<f32>, 12>();
    var var_0 = 4294967295u;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-613f - -1000f) + -1066f))), ~min(~u_input.c.x, max(u_input.c.x, 2147483647i)) ^ min(_wgslsmith_add_i32(func_3(vec4<bool>(false, true, arg_0.x, false), vec3<f32>(-1012f, global2.a, global2.a), global2.b, vec3<bool>(arg_0.x, true, arg_0.x)), 31698i), -1i), global2.c, 1u);
    var var_2 = !(!vec2<bool>((arg_0.x | arg_0.x) & arg_0.x, arg_0.x));
    return _wgslsmith_mod_vec3_u32(vec3<u32>(1u, ~1u, countOneBits(countOneBits(global2.d))), ~(~(_wgslsmith_mult_vec3_u32(vec3<u32>(23236u, global2.c, 59541u), vec3<u32>(62499u, global2.d, 4294967295u)) >> (~vec3<u32>(4294967295u, 2242u, 90652u) % vec3<u32>(32u)))));
}

fn func_1() -> u32 {
    var var_0 = ~(~(~vec3<u32>(u_input.a, 34380u, 12874u) >> (vec3<u32>(u_input.a, global2.c, 47096u) % vec3<u32>(32u)))) >> ((_wgslsmith_mod_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 45471u, 0u), vec3<u32>(4294967295u, global2.c, global2.d))), ~(~vec3<u32>(global2.c, 6361u, u_input.a))) ^ ~func_2(vec3<bool>(false, true, true))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_clamp_i32(u_input.b.x, global2.b, -23099i);
    var var_2 = vec4<i32>(~(-1i), _wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(countOneBits(24072i), 1i, var_1, ~(-1i)))), var_1, global2.b);
    var_2 = _wgslsmith_add_vec4_i32(-(~firstTrailingBit(u_input.c << (vec4<u32>(0u, var_0.x, var_0.x, global2.c) % vec4<u32>(32u)))), u_input.c);
    let var_3 = global2.a;
    return _wgslsmith_add_u32(abs(global2.d), ~firstTrailingBit(global2.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(abs(1u), u_input.a, (~_wgslsmith_add_u32(32260u, global2.c) << (~func_1() % 32u)) & _wgslsmith_clamp_u32(global2.c, firstLeadingBit(1u), 1u), ~abs(global2.c));
    global1 = array<vec2<f32>, 12>();
    let var_1 = Struct_4(select(vec4<bool>(!any(vec2<bool>(false, false)), true, true && all(vec3<bool>(false, true, true)), all(vec2<bool>(true, true))), vec4<bool>(_wgslsmith_mod_u32(global2.c, u_input.a) == _wgslsmith_mod_u32(69036u, 4294967295u), all(vec3<bool>(true, false, false)), global2.c < _wgslsmith_sub_u32(global2.c, var_0.x), any(!global3[_wgslsmith_index_u32(u_input.a, 23u)])), vec4<bool>(all(vec4<bool>(true, true, true, true)), select(2147483647i >= u_input.c.x, true, true), all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)))));
    global1 = array<vec2<f32>, 12>();
    global2 = Struct_2(-338f, -3516i, 1922u, ~_wgslsmith_add_u32(~(~1u), 1u));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1415f, global2.a, 195f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, -194f, global2.a) + vec3<f32>(-206f, -445f, global2.a))))))));
    global2 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x + -1217f), _wgslsmith_f_op_f32(var_2.x + -216f))))))), u_input.c.x << (~_wgslsmith_sub_u32(~var_0.x, 47643u) % 32u), u_input.a, _wgslsmith_div_u32(var_0.x, _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(var_0.zz, vec2<u32>(1u, 42637u)), ~var_0.wy)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - var_2.x)) * global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -837f)))));
    let var_4 = _wgslsmith_f_op_f32(max(var_2.x, global2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, -1i, func_3(vec4<bool>(true, var_1.a.x, false, var_1.a.x), vec3<f32>(var_4, -607f, -653f), 0i, vec3<bool>(false, var_1.a.x, false))), vec3<i32>(_wgslsmith_mult_i32(1i, u_input.c.x), _wgslsmith_add_i32(u_input.b.x, -2147483647i), _wgslsmith_mod_i32(global2.b, global2.b))), vec3<i32>(u_input.b.x, u_input.b.x, ~0i)), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(var_4 - _wgslsmith_f_op_f32(round(-1578f))), _wgslsmith_f_op_f32(389f - -614f)), global1[_wgslsmith_index_u32(~4294967295u, 12u)])));
}

