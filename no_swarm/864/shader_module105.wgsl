struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<u32>, 6>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, firstLeadingBit(countOneBits(125i)), u_input.a.x, u_input.a.x | 46588i), ~select(countOneBits(vec4<i32>(-8735i, u_input.a.x, -15170i, u_input.a.x)), -vec4<i32>(u_input.a.x, -8381i, 0i, -22477i), vec4<bool>(true, true, true, true)));
    var var_1 = var_0.x;
    return Struct_2(vec2<f32>(-259f, -1379f));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_sub_vec3_u32(~vec3<u32>(~u_input.b, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), ~vec3<u32>(4294967295u, 48838u, u_input.b))), _wgslsmith_clamp_vec3_u32(select(abs(vec3<u32>(1u, u_input.b, 4294967295u)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(75573u, 1u, 4294967295u), vec3<u32>(0u, 9328u, u_input.b)) % vec3<u32>(32u)), reverseBits(firstLeadingBit(vec3<u32>(1u, 26864u, u_input.b))), abs(0i) == _wgslsmith_mod_i32(u_input.a.x, -69564i)), vec3<u32>(~10761u, u_input.b, 0u), vec3<u32>(1u, _wgslsmith_clamp_u32(select(19347u, 4294967295u, arg_1.b.x), u_input.b, ~u_input.b), u_input.b)));
    global1 = vec4<f32>(global0.a.x, 1144f, _wgslsmith_f_op_f32(f32(-1f) * -1036f), _wgslsmith_f_op_f32(-global1.x));
    var var_1 = vec4<u32>(11727u, u_input.b, u_input.b, ~var_0.x);
    var_1 = vec4<u32>(var_1.x, ~43903u, u_input.b, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, u_input.b), 6u)], _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.x, var_1.x, u_input.b, 4294967295u), _wgslsmith_clamp_vec4_u32(global2[_wgslsmith_index_u32(var_1.x, 6u)], global2[_wgslsmith_index_u32(12870u, 6u)], vec4<u32>(u_input.b, 1080u, u_input.b, 4294967295u)))), 4169u));
    var_1 = ~(select(global2[_wgslsmith_index_u32(~4294967295u, 6u)], vec4<u32>(34735u, var_1.x, select(u_input.b, 20672u, arg_1.d), 4294967295u >> (var_0.x % 32u)), vec4<bool>(!arg_1.b.x, arg_1.d == arg_1.d, 1u >= var_1.x, true)) | (~(~vec4<u32>(1u, var_0.x, u_input.b, 0u)) >> (global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(67384u), 19792u), 6u)] % vec4<u32>(32u))));
    return vec2<i32>(-10932i, -24487i);
}

fn func_1() -> bool {
    let var_0 = ~u_input.a.zx | -_wgslsmith_mod_vec2_i32(u_input.a.yz, func_3(func_2(vec2<u32>(u_input.b, 3602u)), Struct_1(vec2<f32>(115f, global1.x), vec3<bool>(true, false, true), global0.a.x, false)));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global1.wx), _wgslsmith_f_op_vec2_f32(vec2<f32>(-716f, global0.a.x) * global0.a))));
    global1 = vec4<f32>(_wgslsmith_div_f32(global1.x, -541f), global0.a.x, global0.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1086f * global0.a.x), _wgslsmith_f_op_f32(global0.a.x * global0.a.x))))));
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(min(global0.a.x, 1000f)), 1180f, global1.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-883f, _wgslsmith_f_op_f32(sign(1000f)), global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + 659f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-296f, global1.x, -1581f, -526f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1428f, -1000f, global1.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -1104f, global0.a.x, global1.x)))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(169f, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x), _wgslsmith_f_op_f32(-920f * -1058f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.x, global0.a.x, global1.x, global0.a.x), vec4<f32>(global1.x, -1890f, global0.a.x, global0.a.x))))))), !select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), true))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2251f + _wgslsmith_f_op_f32(1655f - -1157f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global1.x))))));
    return !(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, 1u), abs(vec4<u32>(0u, 0u, u_input.b, 78154u))) < 69563u) | true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(0u, u_input.b);
    global1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, _wgslsmith_f_op_f32(round(-763f)), -1419f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x * global0.a.x), _wgslsmith_f_op_f32(max(global0.a.x, global1.x)), true))))));
    let var_1 = vec3<u32>(u_input.b, 310u ^ abs(var_0.x & var_0.x), countOneBits(~var_0.x)) >> (vec3<u32>(1u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 65162u, u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 0u, 4294967295u), vec3<u32>(var_0.x, var_0.x, u_input.b))), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(u_input.b, 1u)), select(~vec2<u32>(var_0.x, u_input.b), vec2<u32>(u_input.b, 0u), vec2<bool>(false, true)))) % vec3<u32>(32u));
    let var_2 = Struct_3(u_input.a.x >> ((var_1.x << (var_1.x % 32u)) % 32u), u_input.a.x, 7998i <= (u_input.a.x & ~u_input.a.x), func_1());
    var var_3 = var_2;
    var var_4 = vec2<bool>(var_3.d, true);
    let var_5 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(~4294967295u, select(var_1.x, var_0.x, var_5), _wgslsmith_mult_u32(0u, u_input.b))));
}

