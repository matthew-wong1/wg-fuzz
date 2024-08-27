struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: array<vec2<f32>, 18>;

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(-366f), Struct_2(331f), Struct_2(1262f), Struct_2(944f), Struct_2(-311f), Struct_2(1145f), Struct_2(1000f), Struct_2(-185f), Struct_2(-208f), Struct_2(230f), Struct_2(-1325f), Struct_2(-274f), Struct_2(-2819f), Struct_2(-1036f), Struct_2(-250f), Struct_2(-296f), Struct_2(-422f), Struct_2(171f), Struct_2(456f), Struct_2(1000f), Struct_2(-393f), Struct_2(1186f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    global0 = array<i32, 3>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, arg_1.a)))));
    global3 = array<Struct_2, 22>();
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-1881f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-475f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a, -927f))), _wgslsmith_f_op_f32(512f * -1412f), var_0.a);
    let var_1 = Struct_3(firstTrailingBit(~arg_0.a));
    return !(!(!(!any(vec3<bool>(false, false, true)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> f32 {
    global3 = array<Struct_2, 22>();
    global1 = array<vec2<f32>, 18>();
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -102f, 989f, 1738f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, arg_0.x, -1172f, arg_1.a))), vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(-1502f + arg_0.x), _wgslsmith_f_op_f32(-global2.x), arg_1.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-548f, arg_1.a, -227f, -728f)))) * vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-global2.x), 260f, -1387f))));
    let var_0 = -28876i;
    let var_1 = global3[_wgslsmith_index_u32(u_input.a, 22u)];
    return arg_0.x;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: i32) -> Struct_2 {
    var var_0 = i32(-1i) * -arg_0;
    var_0 = _wgslsmith_sub_i32(firstTrailingBit(global0[_wgslsmith_index_u32(1u, 3u)]), ~0i);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -742f, -1000f, global2.x))), vec4<f32>(1000f, -311f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x * -396f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-206f, _wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(-global2.x), 1080f)))));
    let var_2 = Struct_3(arg_1);
    var var_3 = select(!select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), true), select(!vec3<bool>(var_1.x >= 880f, any(vec4<bool>(false, false, false, true)), true), vec3<bool>(func_2(Struct_3(4294967295u), global3[_wgslsmith_index_u32(var_2.a, 22u)]), any(vec2<bool>(false, true)), true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))), true);
    return Struct_2(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(sign(global2.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 1000f), vec2<f32>(var_1.x, var_1.x)) * _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.a, 18u)]))), Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x)))), global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(max(vec4<u32>(15315u, var_2.a, 1u, 61522u), vec4<u32>(4294967295u, arg_1, 20654u, arg_1)), vec4<u32>(var_2.a, 36345u, 9330u, 4294967295u))), 3u)], abs(1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 18>();
    global0 = array<i32, 3>();
    let var_0 = !(all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false))) || (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * 664f))) < global2.x));
    let var_1 = func_1(select(10680i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(-u_input.b, -6154i >> (u_input.a % 32u), u_input.b), 0i), var_0), ~firstLeadingBit(4294967295u), -49330i);
    global1 = array<vec2<f32>, 18>();
    global3 = array<Struct_2, 22>();
    let var_2 = _wgslsmith_div_u32(~u_input.a, min(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, u_input.a)), u_input.a)) << (~(~(41354u & ~u_input.a)) % 32u);
    var var_3 = firstTrailingBit(reverseBits(u_input.a)) | 0u;
    var var_4 = !vec4<bool>(var_0, reverseBits(~var_2) > 55651u, true, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(max(vec4<u32>(u_input.a, var_2, var_2, 2337u), firstTrailingBit(vec4<u32>(43980u, u_input.a, var_2, 1u))), _wgslsmith_div_vec4_u32(vec4<u32>(10755u, 4294967295u >> (var_2 % 32u), _wgslsmith_mod_u32(var_2, 34536u), ~13646u), vec4<u32>(reverseBits(0u), ~29090u, ~4294967295u, ~64768u))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, 286u), _wgslsmith_clamp_u32(42497u, 4294967295u, u_input.a), reverseBits(0u), 1u), vec4<u32>(1u, u_input.a, u_input.a, 1u)) << (_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), abs(vec4<u32>(u_input.a, u_input.a, var_2, u_input.a))), vec4<u32>(4294967295u, _wgslsmith_div_u32(4294967295u, 16958u), firstLeadingBit(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 23714u, u_input.a), vec4<u32>(var_2, 60995u, u_input.a, 1u)))) % vec4<u32>(32u)), vec2<i32>(global0[_wgslsmith_index_u32(~4294967295u, 3u)], firstLeadingBit(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(var_2, 3u)], -1i, global0[_wgslsmith_index_u32(u_input.a, 3u)]) | _wgslsmith_div_i32(u_input.b, u_input.b))), _wgslsmith_f_op_f32(-global2.x), (~vec3<u32>(65337u, 35670u, var_2) >> (~select(vec3<u32>(var_2, 40270u, var_2), vec3<u32>(34460u, var_2, 8561u), true) % vec3<u32>(32u))) & ~_wgslsmith_div_vec3_u32(vec3<u32>(33286u, 4294967295u, var_2), ~vec3<u32>(6829u, var_2, var_2)));
}

