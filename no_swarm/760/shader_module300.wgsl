struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    var var_0 = Struct_3(-14962i);
    var_0 = Struct_3(~(33505i >> (countOneBits(u_input.e.x) % 32u)) & ~max(-19202i, -39849i));
    let var_1 = Struct_3(1i);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1374f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - -630f))), -286f, _wgslsmith_f_op_f32(-arg_2)));
    var var_3 = 1i;
    return 1003f;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = vec2<u32>(~(_wgslsmith_add_u32(u_input.b ^ 9732u, arg_0) | select(4294967295u, 1u | arg_0, true)), arg_1);
    var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(1563u, ~(~62696u)), u_input.e << (select(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(arg_0, arg_3.d.d)), min(u_input.e, vec2<u32>(arg_0, arg_1)), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 1u), u_input.e)), ~vec2<u32>(4294967295u, arg_3.b.d), (arg_2.x | true) && (arg_2.x && arg_2.x)) % vec2<u32>(32u)));
    global0 = array<Struct_1, 29>();
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(0u, 29u)], Struct_1(vec3<i32>(77929i, ~u_input.a, 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3.d.b.x, arg_3.b.b.x, 600f), arg_3.d.b) + _wgslsmith_f_op_vec3_f32(floor(arg_3.e.b)))), arg_3.e.a.x, 1u), u_input.a, Struct_1(~(arg_3.e.a & -vec3<i32>(arg_3.d.c, u_input.c.x, -39458i)), arg_3.b.b, ~(-15397i), countOneBits(arg_3.e.d)), Struct_1(arg_3.d.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_3.d.b))), arg_3.a.b), -1i, ~_wgslsmith_sub_u32(50037u, 0u)));
    var_0 = vec2<u32>(4294967295u, countOneBits(arg_3.b.d) >> (((abs(var_1.a.d) | var_1.e.d) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.b.d, var_0.x, 1u, var_0.x), vec4<u32>(0u, 41865u, arg_1, u_input.b))) % 32u));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-583f, var_1.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -244f)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.b.x, -997f, 1175f, 410f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-185f, -542f, var_1.a.b.x, arg_3.e.b.x) - vec4<f32>(arg_3.a.b.x, var_1.b.b.x, var_1.e.b.x, arg_3.b.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 901f, 2268f, var_1.a.b.x))))))));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: bool, arg_3: bool) -> bool {
    let var_0 = Struct_3(arg_1.x);
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(280f, -420f) - vec2<f32>(445f, -1018f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2(4294967295u | u_input.b, 16196u, vec2<bool>(false, arg_3), Struct_2(Struct_1(vec3<i32>(arg_1.x, 52335i, var_0.a), vec3<f32>(-1000f, -510f, -151f), 2147483647i, 3166u), Struct_1(vec3<i32>(2147483647i, -1i, 1i), vec3<f32>(-1000f, 930f, -2048f), 1i, 84510u), 22643i, global0[_wgslsmith_index_u32(arg_0, 29u)], Struct_1(vec3<i32>(u_input.c.x, 2147483647i, 0i), vec3<f32>(688f, -416f, -1210f), 9167i, arg_0)))).xz))));
    let var_3 = ~_wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, arg_0, u_input.e.x, u_input.b), vec4<u32>(60202u, 42328u, u_input.b, 40692u)) & ~max(vec4<u32>(u_input.e.x, arg_0, 51943u, u_input.b), vec4<u32>(u_input.e.x, 1u, 4294967295u, arg_0)), ~(~vec4<u32>(0u, arg_0, u_input.e.x, 1131u)));
    let var_4 = -firstLeadingBit(-_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, u_input.a, -2933i, 71170i), ~vec4<i32>(-9858i, 30911i, u_input.d.x, 1i)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 29>();
    let var_0 = Struct_3(2246i);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-963f))))), -854f, -637f));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(func_1(u_input.d, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -864f))))))), 1505f);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -388f), 313f, 167f, _wgslsmith_f_op_f32(select(var_1.x, var_1.x, false))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, var_1.x, 1508f, 1081f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(242f, var_1.x, -458f, -679f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1854f, -1000f, var_1.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1491f, 609f) - vec4<f32>(var_1.x, var_1.x, -1284f, -483f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1479f, var_1.x, -154f) * vec4<f32>(-714f, var_1.x, var_1.x, -1563f)), true)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(40460u, 4294967295u, vec2<bool>(true, true), Struct_2(Struct_1(vec3<i32>(1i, u_input.d.x, u_input.c.x), vec3<f32>(var_1.x, var_1.x, -497f), u_input.a, 1u), global0[_wgslsmith_index_u32(u_input.e.x, 29u)], u_input.c.x, Struct_1(vec3<i32>(var_0.a, 0i, 2147483647i), vec3<f32>(736f, 288f, -636f), -31098i, u_input.b), global0[_wgslsmith_index_u32(u_input.b, 29u)]))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-431f, -120f, var_1.x, 838f)))))), !vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), func_3(54931u, u_input.c, all(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, false))), true, var_0.a > 1i)));
    global0 = array<Struct_1, 29>();
    var var_3 = !((-14221i << ((u_input.e.x ^ ~u_input.e.x) % 32u)) < ~(~(-42213i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_dot_vec2_i32(abs(u_input.d), ~reverseBits(vec2<i32>(-1i, var_0.a))) & -31556i);
}

