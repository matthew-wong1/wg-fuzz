struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(21915u, 4294967295u, 68953u, 0u), vec4<u32>(1155u, 4294967295u, 14886u, 3442u), vec4<u32>(23137u, 4294967295u, 1u, 1u), vec4<u32>(23925u, 38389u, 4294967295u, 49597u), vec4<u32>(37277u, 53641u, 28527u, 1u), vec4<u32>(45830u, 97422u, 1u, 4294967295u), vec4<u32>(4294967295u, 1u, 44669u, 0u), vec4<u32>(0u, 4294967295u, 75340u, 0u), vec4<u32>(34713u, 62622u, 0u, 38379u), vec4<u32>(1u, 1u, 4919u, 1u), vec4<u32>(1u, 21619u, 0u, 15908u), vec4<u32>(0u, 17768u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(0u, 0u, 4294967295u, 21669u), vec4<u32>(1u, 61899u, 4294967295u, 42118u), vec4<u32>(0u, 100600u, 4294967295u, 4294967295u), vec4<u32>(18322u, 69933u, 95029u, 22603u), vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(4294967295u, 1u, 49667u, 0u), vec4<u32>(33122u, 0u, 1u, 1u), vec4<u32>(73322u, 4294967295u, 0u, 55481u));

var<private> global2: f32 = -778f;

var<private> global3: bool;

var<private> global4: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> f32 {
    global3 = global0.d;
    global2 = global4.a;
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-global4.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.c.x), 287f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1384f, _wgslsmith_f_op_f32(-global4.c.x)))), -849f), Struct_1(global4.a, abs(_wgslsmith_sub_vec2_i32(vec2<i32>(global4.b.x, -1i), global0.b)), vec2<f32>(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.c.x, -1061f))), any(!(!vec3<bool>(global4.d, global0.d, global0.d))), _wgslsmith_add_vec4_u32(global0.e, _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global4.e.x, 1u, 4294967295u, global0.e.x), global0.e), global0.e ^ vec4<u32>(global0.e.x, 4294967295u, u_input.b.x, global4.e.x)))));
    let var_1 = vec3<f32>(global0.c.x, 265f, var_0.a.x);
    return -1000f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = vec3<i32>(-2147483647i, arg_0.b.x >> (~1u % 32u), -global0.b.x);
    return abs(arg_1.b);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = select(select(true, global4.d, arg_0.d), true, !arg_0.d & all(select(!vec4<bool>(global4.d, global0.d, arg_0.d, global4.d), vec4<bool>(true, true, true, true), arg_0.d | global0.d)));
    let var_1 = select(select(!select(!vec4<bool>(arg_0.d, global0.d, true, global0.d), select(vec4<bool>(true, true, arg_0.d, false), vec4<bool>(arg_0.d, true, global4.d, true), false), select(vec4<bool>(global0.d, global0.d, arg_0.d, arg_0.d), vec4<bool>(global4.d, true, arg_0.d, true), false)), select(vec4<bool>(!global0.d, true, global0.d && arg_0.d, global4.d & false), vec4<bool>(true, true, true, u_input.c < 22801i), !vec4<bool>(global4.d, false, arg_0.d, true)), !vec4<bool>(arg_0.a < global4.a, any(vec3<bool>(arg_0.d, false, global4.d)), true, global4.d)), !(!select(!vec4<bool>(true, global4.d, arg_0.d, true), select(vec4<bool>(arg_0.d, global0.d, true, global4.d), vec4<bool>(global4.d, arg_0.d, false, true), global0.d), global0.d)), select(!(!vec4<bool>(arg_0.d, true, true, arg_0.d)), select(select(!vec4<bool>(false, true, arg_0.d, true), select(vec4<bool>(global0.d, false, false, true), vec4<bool>(false, false, true, true), arg_0.d), true), select(!vec4<bool>(arg_0.d, arg_0.d, arg_0.d, false), !vec4<bool>(false, global0.d, false, arg_0.d), any(vec2<bool>(global0.d, false))), !vec4<bool>(true, global4.d, false, false)), vec4<bool>(any(vec3<bool>(arg_0.d, false, true)), all(vec2<bool>(global4.d, arg_0.d)), select(true, false, !global4.d), true)));
    global2 = _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global4.c.x, arg_0.c.x))), global4.c.x)));
    var var_2 = Struct_1(arg_0.a, ~select(vec2<i32>(15434i, _wgslsmith_dot_vec2_i32(global4.b, vec2<i32>(arg_0.b.x, -1i))), global0.b, select(true, global0.d, arg_0.d) | true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_0.c), _wgslsmith_f_op_vec2_f32(-global4.c))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_div_f32(401f, 544f)))), !(_wgslsmith_sub_u32(1u | global0.e.x, ~u_input.b.x) > _wgslsmith_sub_u32(global4.e.x | 1780u, global4.e.x)), _wgslsmith_clamp_vec4_u32(reverseBits(abs(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b.x, 103929u, global0.e.x), global0.e))), vec4<u32>(0u, 1u, _wgslsmith_div_u32(35763u, ~u_input.b.x), 16300u), vec4<u32>(1u, max(17851u ^ u_input.b.x, ~global0.e.x), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(18311u, global0.e.x, 64704u), countOneBits(arg_0.e.x)), global0.e.x)));
    var var_3 = global4.d;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-583f)))), max(vec2<i32>(-countOneBits(61162i), -2147483647i), ~_wgslsmith_mult_vec2_i32(~vec2<i32>(arg_0.b.x, -25637i), ~global0.b)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(192f, 506f))))), global4.d, _wgslsmith_sub_vec4_u32(~var_2.e, vec4<u32>(1u, max(global4.e.x, var_2.e.x), 54794u >> (0u % 32u), _wgslsmith_add_u32(var_2.e.x, global0.e.x)) ^ vec4<u32>(~var_2.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(global4.e.x, 23350u)), countOneBits(61108u), 0u)));
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_2 {
    global1 = array<vec4<u32>, 21>();
    global4 = func_4(Struct_1(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_vec2_i32(func_3(Struct_1(1000f, vec2<i32>(-1i, -2147483647i), vec2<f32>(global4.a, 967f), true, vec4<u32>(global0.e.x, arg_1, arg_0, 4294967295u)), Struct_1(934f, global4.b, vec2<f32>(-405f, global4.c.x), global4.d, global4.e)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, 23548i, u_input.a), vec4<i32>(u_input.c, global4.b.x, global0.b.x, -78838i)), abs(global4.b.x))), _wgslsmith_f_op_vec2_f32(min(global4.c, global4.c)), select(any(vec3<bool>(true, true, global0.d)), _wgslsmith_f_op_f32(f32(-1f) * -487f) == _wgslsmith_f_op_f32(-global0.a), _wgslsmith_mult_u32(u_input.b.x, 63195u) >= ~1u), global1[_wgslsmith_index_u32(32780u ^ _wgslsmith_mult_u32(10001u, firstLeadingBit(arg_0)), 21u)]), ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global4.b.x, global4.b.x, -54108i, global4.b.x) ^ vec4<i32>(35537i, -53787i, u_input.a, global4.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(176i, global0.b.x, u_input.a, 24048i), vec4<i32>(0i, global0.b.x, 1i, global4.b.x)), vec4<i32>(574i, -25173i, global4.b.x, global4.b.x)), _wgslsmith_sub_vec4_i32(-vec4<i32>(global0.b.x, global0.b.x, global0.b.x, 2147483647i), vec4<i32>(u_input.c, 0i, -15494i, global0.b.x))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))), min(global4.b, vec2<i32>(global0.b.x, ~(-2147483647i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global0.c))), global4.d, global4.e);
    global0 = func_4(func_4(func_4(func_4(Struct_1(var_0.a, var_0.b, vec2<f32>(var_0.c.x, var_0.c.x), var_0.d, global0.e), _wgslsmith_dot_vec3_i32(vec3<i32>(-2379i, -1i, 1i), vec3<i32>(14085i, 1i, global0.b.x))), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, -1i), 36144i)), (u_input.a >> (global4.e.x % 32u)) >> (1u % 32u)), _wgslsmith_mod_i32(0i, -15752i));
    var var_1 = all(!(!vec4<bool>(global0.d, true, global0.d, true)));
    return Struct_2(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(var_0.a * 1569f), 546f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1003f, global4.a))))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-212f, global0.a)) + 1487f), _wgslsmith_f_op_f32(floor(-854f)))), firstTrailingBit(vec2<i32>(abs(30555i), 2147483647i)), global0.c, all(select(vec2<bool>(global0.d, global0.d), vec2<bool>(var_0.d, true), var_0.d)) == false, _wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(~36684u, 21u)], _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1, global4.e.x, 0u, global4.e.x), ~vec4<u32>(arg_1, 14526u, global0.e.x, var_0.e.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), global4.d), vec2<bool>(global4.d, false), !global0.d), select(!select(vec2<bool>(global4.d, true), vec2<bool>(global4.d, global4.d), false), select(vec2<bool>(true, true), !vec2<bool>(false, global4.d), global4.d), select(select(vec2<bool>(global0.d, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(global0.d, global4.d), vec2<bool>(global4.d, true), vec2<bool>(true, global0.d)), vec2<bool>(global0.d, global0.d))), !vec2<bool>(true, global0.d));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(595f, 1665f, -284f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-global4.a), -475f, _wgslsmith_f_op_f32(-global0.c.x))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-523f, _wgslsmith_f_op_f32(2402f + global0.a), 2042f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, -1558f, global4.c.x) - vec3<f32>(global0.c.x, -490f, 527f))))))));
    var var_3 = func_1(0u, ~1u);
    var var_4 = !vec3<bool>(var_0.x, global4.d, !global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(-2147483647i, -25590i, 1i << (1u % 32u), global0.b.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_3.a.x, -1000f) + var_2)), var_2, all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(var_3.a.yyy - func_1(~0u, global0.e.x).a.yyz))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c.x), 659f)));
}

