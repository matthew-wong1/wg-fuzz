struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<i32, 19> = array<i32, 19>(6637i, 0i, -26261i, 22533i, i32(-2147483648), 1i, 784i, -27734i, -25371i, 20272i, 5277i, -1152i, 0i, -45133i, -15766i, 52658i, 1558i, 2147483647i, -1i);

var<private> global2: Struct_1 = Struct_1(true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec3<bool> {
    global1 = array<i32, 19>();
    var var_0 = ~(vec4<u32>(~(~21532u), ~(~u_input.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 6944u, u_input.b, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 20565u, u_input.c)), 39830u) << ((vec4<u32>(94776u | u_input.c, u_input.a.x, ~u_input.c, 0u) & (firstLeadingBit(vec4<u32>(20507u, u_input.b, u_input.a.x, u_input.c)) >> (countOneBits(vec4<u32>(12393u, 4443u, 38190u, 0u)) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    global0 = ~(~_wgslsmith_add_u32(26366u, max(_wgslsmith_dot_vec3_u32(var_0.wxx, var_0.xzy), 29509u)));
    var var_1 = ~vec3<i32>(u_input.d.x, abs(~u_input.e.x), _wgslsmith_dot_vec2_i32(u_input.e, u_input.d.wx));
    global0 = _wgslsmith_sub_u32(~4294967295u, var_0.x) & _wgslsmith_mod_u32(8271u, u_input.b ^ (_wgslsmith_add_u32(var_0.x, var_0.x) ^ (var_0.x & 1u)));
    return vec3<bool>(false, arg_1.a, true);
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-39354i, -2147483647i), u_input.e);
    let var_1 = global2.a;
    var var_2 = func_3(vec3<bool>(!(!(!global2.a)), false, _wgslsmith_add_u32(u_input.b, ~u_input.c) == u_input.c), Struct_1(any(!select(vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(false, true, arg_0.a), arg_0.a))));
    global0 = _wgslsmith_mult_u32(u_input.c, u_input.a.x);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1031f)) - _wgslsmith_f_op_f32(f32(-1f) * -438f)))), 1113f, -602f);
    return u_input.e.x <= u_input.e.x;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(359f, 298f), _wgslsmith_div_f32(-335f, -348f), false || arg_0.a)))) - -376f));
    global0 = 87513u;
    global0 = ~(~min(0u, min(51502u, u_input.a.x)));
    global1 = array<i32, 19>();
    var var_1 = any(vec4<bool>(!(u_input.a.x < u_input.b), func_2(Struct_1(false)), func_2(arg_0), any(!(!vec2<bool>(false, global2.a)))));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.d.x, global1[_wgslsmith_index_u32(u_input.b, 19u)], u_input.d.x, 46319i), -u_input.d, -_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(18699u, 19u)], -7i, u_input.e.x), vec4<i32>(0i, -40749i, 0i, u_input.d.x))) >> (vec4<u32>(~(~u_input.a.x), 7311u, 4294967295u, _wgslsmith_clamp_u32(~1u, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 21548u))) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.d.x, 30470i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 35928i, 1i), u_input.d.zzx)), vec4<i32>(2147483647i >> (u_input.a.x % 32u), 0i & u_input.e.x, -21369i, abs(-12089i))) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-27866i, -global1[_wgslsmith_index_u32(u_input.b, 19u)], 0i, _wgslsmith_clamp_i32(u_input.e.x, global1[_wgslsmith_index_u32(29166u, 19u)], 0i)), _wgslsmith_add_vec4_i32(u_input.d, reverseBits(vec4<i32>(-2147483647i, u_input.d.x, -31947i, global1[_wgslsmith_index_u32(u_input.a.x, 19u)])))), false);
    var_0 = -_wgslsmith_sub_vec4_i32(u_input.d >> (countOneBits(vec4<u32>(1u, 70585u, u_input.c, 14001u)) % vec4<u32>(32u)), select(~(~u_input.d), u_input.d, true));
    var var_1 = select(select(select(vec4<bool>(true, false, global2.a, global2.a), !vec4<bool>(true, global2.a, false, false), !select(vec4<bool>(global2.a, true, true, global2.a), vec4<bool>(false, false, false, true), global2.a)), vec4<bool>(u_input.c >= u_input.b, true, global2.a, true), vec4<bool>(func_1(Struct_1(global2.a), global2.a) > 0u, true, true, all(!vec4<bool>(true, false, global2.a, true)))), select(select(select(vec4<bool>(global2.a, global2.a, false, global2.a), vec4<bool>(true, true, global2.a, true), true & global2.a), !(!vec4<bool>(false, false, false, global2.a)), select(select(vec4<bool>(false, false, false, global2.a), vec4<bool>(global2.a, global2.a, true, false), global2.a), vec4<bool>(true, false, global2.a, false), global2.a | true)), select(!vec4<bool>(global2.a, true, global2.a, true), select(select(vec4<bool>(global2.a, global2.a, true, false), vec4<bool>(false, global2.a, global2.a, global2.a), global2.a), select(vec4<bool>(global2.a, true, true, false), vec4<bool>(true, global2.a, global2.a, global2.a), true), global2.a), !select(vec4<bool>(true, true, global2.a, global2.a), vec4<bool>(true, false, global2.a, true), vec4<bool>(true, true, false, false))), vec4<bool>(false, true, global2.a, u_input.b <= 21980u)), any(select(vec4<bool>(true, func_2(Struct_1(global2.a)), true, false), !select(vec4<bool>(global2.a, global2.a, global2.a, false), vec4<bool>(true, global2.a, global2.a, global2.a), true), true)));
    var var_2 = Struct_1(select(global2.a, all(var_1.xzw), var_1.x));
    let var_3 = !(!var_1.zxw);
    var_1 = !(!select(select(vec4<bool>(true, true, true, true), !vec4<bool>(var_3.x, var_2.a, var_1.x, true), vec4<bool>(true, global2.a, true, global2.a)), select(vec4<bool>(true, var_3.x, global2.a, true), select(vec4<bool>(false, true, var_1.x, var_3.x), vec4<bool>(var_3.x, var_1.x, false, false), vec4<bool>(true, var_3.x, true, var_2.a)), vec4<bool>(var_2.a, false, var_1.x, var_1.x)), !select(vec4<bool>(var_1.x, var_3.x, var_3.x, true), vec4<bool>(true, true, var_1.x, false), vec4<bool>(var_1.x, var_3.x, true, var_3.x))));
    var_2 = Struct_1(-1078f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-619f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -261f) - _wgslsmith_f_op_f32(-972f + -751f))));
    var var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x, _wgslsmith_mult_vec4_i32(vec4<i32>(0i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 19u)], var_0.x, -1i), select(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], 2147483647i, var_0.x, 2147483647i), u_input.d)), max(_wgslsmith_mod_vec4_i32(u_input.d, u_input.d), u_input.d), var_3.x || false)));
}

