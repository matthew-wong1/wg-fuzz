struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: array<vec4<u32>, 22>;

var<private> global2: Struct_2 = Struct_2(Struct_1(43909u), vec4<i32>(-50157i, 12952i, 2230i, 12177i), Struct_1(4294967295u));

var<private> global3: u32;

var<private> global4: array<bool, 3> = array<bool, 3>(true, false, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> Struct_2 {
    var var_0 = vec4<bool>(true, !global4[_wgslsmith_index_u32(4294967295u, 3u)], global4[_wgslsmith_index_u32(0u, 3u)], true);
    var var_1 = true;
    var var_2 = global2.a;
    return global0[_wgslsmith_index_u32(var_2.a, 29u)];
}

fn func_3(arg_0: vec3<i32>) -> vec3<u32> {
    let var_0 = Struct_2(global2.c, ~select(vec4<i32>(-1i) * -global2.b, ~global2.b >> (vec4<u32>(global2.c.a, 1u, 4294967295u, global2.a.a) % vec4<u32>(32u)), !vec4<bool>(false, true, true, global4[_wgslsmith_index_u32(45214u, 3u)])), Struct_1(~0u));
    let var_1 = _wgslsmith_div_i32(global2.b.x, arg_0.x) >> (_wgslsmith_add_u32(_wgslsmith_sub_u32(19583u, var_0.c.a), 4294967295u) % 32u);
    var var_2 = select(vec3<bool>(true, !select(56069u >= global2.a.a, true, global2.a.a <= 4294967295u), any(vec4<bool>(select(global4[_wgslsmith_index_u32(1u, 3u)], false, global4[_wgslsmith_index_u32(38101u, 3u)]), false, global4[_wgslsmith_index_u32(19998u, 3u)], global4[_wgslsmith_index_u32(global2.a.a, 3u)]))), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(global4[_wgslsmith_index_u32(0u, 3u)], global4[_wgslsmith_index_u32(var_0.c.a, 3u)], global4[_wgslsmith_index_u32(global2.c.a, 3u)]), vec3<bool>(true, global4[_wgslsmith_index_u32(333u, 3u)], global4[_wgslsmith_index_u32(var_0.a.a, 3u)]), false), vec3<bool>(false, true, any(vec3<bool>(global4[_wgslsmith_index_u32(1u, 3u)], true, false)))), !vec3<bool>(false, true, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.c.a, 61732u), 3u)]), vec3<bool>(true, true, true)), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-773f)) * _wgslsmith_f_op_f32(1000f + 731f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(309f - -1223f)), global4[_wgslsmith_index_u32(0u, 3u)], global4[_wgslsmith_index_u32(~var_0.c.a, 3u)]));
    global4 = array<bool, 3>();
    global3 = 1u;
    return min(abs(_wgslsmith_div_vec3_u32(~(~vec3<u32>(1u, global2.a.a, 28040u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(global2.a.a, 3250u, var_0.c.a), vec3<u32>(1u, 0u, 62512u)))), vec3<u32>(var_0.c.a, select(global2.c.a ^ var_0.c.a, var_0.a.a, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.a.a, var_0.c.a), 3u)]), ~(~global2.c.a)) >> (vec3<u32>(~(~var_0.c.a), _wgslsmith_clamp_u32(var_0.c.a, ~global2.c.a, ~var_0.c.a), var_0.c.a) % vec3<u32>(32u)));
}

fn func_1() -> u32 {
    global3 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(reverseBits((global1[_wgslsmith_index_u32(global2.c.a, 22u)] ^ vec4<u32>(global2.a.a, global2.a.a, 4294967295u, global2.a.a)) >> (global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.c.a, 0u), 22u)] % vec4<u32>(32u))), vec4<u32>(global2.c.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(global2.a.a, global2.c.a), select(vec2<u32>(4294967295u, 88077u), vec2<u32>(4294967295u, 4294967295u), global4[_wgslsmith_index_u32(76374u, 3u)])), global2.a.a, 1u)), _wgslsmith_mod_u32(6545u, ~global2.c.a));
    let var_0 = Struct_2(Struct_1(global2.c.a), global2.b & global2.b, Struct_1(~67880u));
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    let var_1 = func_2();
    return _wgslsmith_div_u32(_wgslsmith_mult_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(15740u, var_0.a.a, 0u), select(vec3<u32>(1u, 22194u, 67912u), vec3<u32>(var_0.a.a, var_0.c.a, var_0.c.a), global4[_wgslsmith_index_u32(35974u, 3u)]))), _wgslsmith_div_u32(~_wgslsmith_sub_u32(var_0.c.a, 4294967295u), _wgslsmith_clamp_u32(15963u, ~var_1.a.a, _wgslsmith_dot_vec2_u32(vec2<u32>(18444u, 34u), vec2<u32>(global2.a.a, 1u))))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(70635u, 0u, var_1.c.a)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, ~var_1.c.a), func_3(global2.b.wwx))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = abs(select(~_wgslsmith_mod_vec2_u32(vec2<u32>(global2.c.a, global2.c.a), firstTrailingBit(vec2<u32>(global2.c.a, 1u))), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 13949u), select(abs(vec2<u32>(global2.c.a, 1u)), ~vec2<u32>(global2.c.a, global2.c.a), vec2<bool>(false, global4[_wgslsmith_index_u32(global2.c.a, 3u)]))), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(12760u, 1u), global2.a.a) & global2.c.a, 3u)]));
    global1 = array<vec4<u32>, 22>();
    global1 = array<vec4<u32>, 22>();
    let var_1 = (~min(global2.a.a, var_0.x) & _wgslsmith_mult_u32(8608u | ~global2.a.a, var_0.x)) | global2.c.a;
    let var_2 = arg_0 << (var_0.x % 32u);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(min(abs(global2.b.xxw), global2.b.ywy), -vec3<i32>(~85320i, -u_input.d, u_input.a));
    var var_1 = ~min(_wgslsmith_mod_vec2_u32(vec2<u32>(~global2.a.a, 62141u), ~vec2<u32>(4294967295u, global2.a.a)), firstLeadingBit(_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(0u, global2.a.a)), ~vec2<u32>(global2.a.a, 7503u))));
    var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(1u, var_1.x), vec2<u32>(~global2.c.a ^ abs(1u), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.c.a, global2.c.a), vec3<u32>(39854u, 26639u, 0u)))) & countOneBits(vec2<u32>(var_1.x ^ var_1.x, 870u << (global2.a.a % 32u))));
    global2 = global0[_wgslsmith_index_u32(1u, 29u)];
    var var_2 = func_4(_wgslsmith_mod_i32(25567i, -u_input.a) >> (~_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 1u), func_1()) % 32u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1169f + -730f) + _wgslsmith_f_op_f32(abs(290f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-812f)) - _wgslsmith_f_op_f32(-792f - -894f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -966f))), -178f));
    var var_3 = vec4<u32>(reverseBits(~var_1.x) << ((abs(~0u) << (var_2.a.a % 32u)) % 32u), _wgslsmith_sub_u32(0u, firstTrailingBit(func_2().c.a)), _wgslsmith_div_u32(min(0u, ~global2.c.a >> (_wgslsmith_mod_u32(var_2.a.a, var_2.c.a) % 32u)), ~func_3(vec3<i32>(62009i, -2147483647i, -1i)).x), ~115257u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(-func_4(0i, vec3<f32>(-1710f, -257f, -155f)).b.xx, countOneBits(u_input.c)), -34536i, (_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_2.b.x, var_2.b.x, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.b.x, global2.b.x, -37106i, global2.b.x), global2.b)) << (var_2.c.a % 32u)) ^ u_input.d, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, _wgslsmith_div_f32(2251f, -700f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -2102f) - vec2<f32>(1000f, -336f)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1403f, 944f) * vec2<f32>(146f, -192f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -117f), -1000f))), !(_wgslsmith_mod_u32(59378u, var_1.x) <= global2.a.a))), 1u);
}

