struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(-2021f, -1169f, 963f);

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<i32>(-1i, -1i, 0i)), Struct_1(vec3<i32>(6676i, 2301i, -1i)), Struct_1(vec3<i32>(0i, 14295i, 10071i)), Struct_1(vec3<i32>(-35981i, 26878i, -35733i)), Struct_1(vec3<i32>(1i, -27030i, 31181i)), Struct_1(vec3<i32>(-1i, -1i, -18457i)), Struct_1(vec3<i32>(56910i, 2147483647i, i32(-2147483648))), Struct_1(vec3<i32>(-26260i, 15812i, 2147483647i)), Struct_1(vec3<i32>(-7687i, 46967i, 24345i)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = array<Struct_1, 9>();
    global0 = array<f32, 3>();
    return global1[_wgslsmith_index_u32(1u, 9u)];
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> vec3<i32> {
    var var_0 = -(~vec2<i32>(~_wgslsmith_add_i32(3910i, -2147483647i), -13299i));
    var var_1 = u_input.c;
    return select(arg_1.a, _wgslsmith_mod_vec3_i32(~arg_1.a, arg_1.a), false);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = func_2(~_wgslsmith_clamp_u32(u_input.a, ~u_input.c.x, min(4294967295u, u_input.a)) ^ u_input.a);
    global0 = array<f32, 3>();
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u, ~u_input.c.x | 79968u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))) & vec4<u32>(_wgslsmith_mult_u32(abs(u_input.a), u_input.b), 19983u, ~u_input.c.x, 22991u), _wgslsmith_sub_vec4_u32(firstLeadingBit(~(~vec4<u32>(4294967295u, u_input.c.x, 0u, 50479u))), firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.b, 4294967295u, 40285u), ~vec4<u32>(u_input.a, 0u, 0u, u_input.a)))));
    global0 = array<f32, 3>();
    let var_2 = _wgslsmith_f_op_f32(ceil(-186f));
    return Struct_1(arg_0.c.a);
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 9>();
    global0 = array<f32, 3>();
    var var_0 = select(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<bool>(true, true), any(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))));
    let var_1 = vec3<i32>(arg_0, -11586i, -arg_2.a.x);
    let var_2 = func_2(_wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, u_input.a), vec2<u32>(u_input.c.x, u_input.c.x))), firstTrailingBit(vec2<u32>(~24280u, u_input.b))));
    return Struct_1(-var_2.a);
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_2 {
    global1 = array<Struct_1, 9>();
    let var_0 = true;
    global1 = array<Struct_1, 9>();
    global0 = array<f32, 3>();
    var var_1 = Struct_2(vec2<bool>(true, true), select(vec2<i32>(firstLeadingBit(-1i), arg_0.a.x), arg_0.a.zx << (u_input.c % vec2<u32>(32u)), false) << (vec2<u32>(abs(reverseBits(910u)), 0u) % vec2<u32>(32u)), func_2(u_input.a), arg_0.a.x, ~(~(arg_0.a | arg_0.a)));
    return Struct_2(vec2<bool>(var_1.a.x, any(vec2<bool>(var_0, true))), -vec2<i32>(_wgslsmith_dot_vec2_i32(-arg_0.a.zz, vec2<i32>(-1i, -1i) & arg_0.a.xz), -_wgslsmith_div_i32(-29221i, 2147483647i)), var_1.c, abs(arg_0.a.x), vec3<i32>(-(~(-21285i)), -_wgslsmith_div_i32(_wgslsmith_div_i32(-6517i, -43595i), countOneBits(arg_0.a.x)), func_5(arg_0.a.x, min(arg_0.a, _wgslsmith_add_vec3_i32(vec3<i32>(-38812i, var_1.e.x, arg_0.a.x), vec3<i32>(var_1.b.x, 2147483647i, 0i))), Struct_1(arg_0.a)).a.x));
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = func_6(func_5(-1i, countOneBits(vec3<i32>(0i << (1u % 32u), _wgslsmith_sub_i32(arg_0, -1i), arg_0)), func_4(Struct_2(vec2<bool>(true, true), ~vec2<i32>(20436i, arg_0), func_2(u_input.b), countOneBits(27173i), func_3(2147483647i, Struct_1(vec3<i32>(arg_0, arg_0, arg_0)), arg_0)))), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(false, false, false, false))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))) | any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), false))));
    var var_1 = any(vec2<bool>(var_0.a.x, false));
    global1 = array<Struct_1, 9>();
    global0 = array<f32, 3>();
    let var_2 = var_0.c;
    return Struct_2(vec2<bool>(false, true | var_0.a.x), vec2<i32>(-9415i, -var_0.d), global1[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_mod_i32(-1i, ~_wgslsmith_dot_vec3_i32(var_0.e, -var_0.e)), func_4(Struct_2(!(!vec2<bool>(false, var_0.a.x)), vec2<i32>(53813i, ~var_0.b.x), func_5(firstLeadingBit(0i), var_2.a << (vec3<u32>(u_input.a, u_input.b, u_input.a) % vec3<u32>(32u)), func_4(Struct_2(var_0.a, var_2.a.zx, var_0.c, var_0.b.x, vec3<i32>(arg_0, arg_0, -2147483647i)))), -59137i, var_0.e)).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(11706i);
    let var_1 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(11078u, u_input.a) << (vec2<u32>(u_input.a, u_input.b) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(u_input.a, u_input.b))), u_input.c), 66251u, ~u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(33516u, 3u)], global0[_wgslsmith_index_u32(var_1.x, 3u)])), global0[_wgslsmith_index_u32(39961u, 3u)]), _wgslsmith_f_op_f32(-261f - _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(var_1.x, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)])))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)])), vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(47759u, 3u)]), _wgslsmith_f_op_f32(-931f * global0[_wgslsmith_index_u32(120531u, 3u)]))))), min(~(vec4<i32>(1i, -1i, var_0.c.a.x, var_0.e.x) | vec4<i32>(36949i, -2147483647i, var_0.b.x, 2147483647i)), -select(vec4<i32>(2147483647i, var_0.e.x, var_0.e.x, 54539i), vec4<i32>(var_0.e.x, var_0.e.x, 1i, var_0.c.a.x), var_0.a.x)) << (~min(vec4<u32>(1u, 1u, var_1.x, var_1.x) | vec4<u32>(u_input.b, 38873u, 30614u, 81770u), select(vec4<u32>(u_input.c.x, 12812u, 1u, 22655u), vec4<u32>(var_1.x, var_1.x, var_1.x, 4294967295u), false)) % vec4<u32>(32u)));
}

