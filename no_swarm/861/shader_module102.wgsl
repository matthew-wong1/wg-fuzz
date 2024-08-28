struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: array<vec4<i32>, 11>;

var<private> global2: Struct_1 = Struct_1(3563f, 114f);

var<private> global3: array<vec2<bool>, 3>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = vec2<bool>(true & !(!all(vec3<bool>(true, true, false))), u_input.a > 4660u);
    global2 = Struct_1(_wgslsmith_div_f32(-842f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(318f - global2.b) * 189f))), -870f);
    var_0 = vec2<bool>(select(~4185u != reverseBits(firstTrailingBit(59092u)), all(select(select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !vec4<bool>(false, var_0.x, true, var_0.x), var_0.x || false)), false), _wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global2.b, global2.b))))) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1046f), global2.b)), global2.a)));
    let var_1 = Struct_2(min(vec3<u32>(max(select(0u, u_input.a, true), 0u), reverseBits(~u_input.a), 33070u), ~(~vec3<u32>(u_input.a, 3181u, 11978u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.b, -973f)) - _wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_f32(1900f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.a, -694f, var_0.x))))), Struct_1(-2245f, global2.a), max(u_input.b.x, _wgslsmith_mult_i32(-1i | select(-42410i, 16940i, true), abs(-u_input.b.x))), true);
    var var_2 = false;
    return ~_wgslsmith_dot_vec3_u32(var_1.a, var_1.a);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<f32>) -> u32 {
    global1 = array<vec4<i32>, 11>();
    let var_0 = Struct_2(vec3<u32>(abs(u_input.a), 4294967295u, 30232u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b + global2.b), _wgslsmith_f_op_f32(floor(arg_1.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-385f))) + _wgslsmith_div_f32(arg_1.b, -2600f))), Struct_1(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))), -(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(59043u, 4294967295u, u_input.a), vec3<u32>(28538u, u_input.a, 31783u)) & func_3(), 3u)]), 18763u >= u_input.a);
    var var_1 = 1u;
    return _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(arg_0.x, arg_0.x, u_input.a, 0u)), ~(~(~vec4<u32>(0u, arg_0.x, 1u, arg_0.x)))) << (23360u % 32u);
}

fn func_1() -> Struct_1 {
    let var_0 = ~vec3<i32>(global0[_wgslsmith_index_u32(15646u, 3u)], global0[_wgslsmith_index_u32(firstTrailingBit(func_2(vec3<u32>(0u, 32915u, 6778u), Struct_1(global2.a, -637f), true, vec2<f32>(590f, 1334f))), 3u)] << (func_3() % 32u), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.a, 3u)], max(7814i, _wgslsmith_mult_i32(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 3u)]))));
    let var_1 = 312f;
    let var_2 = _wgslsmith_f_op_f32(-global2.b);
    global2 = Struct_1(_wgslsmith_f_op_f32(max(-469f, -144f)), -633f);
    let var_3 = any(select(select(select(vec2<bool>(true, true), select(global3[_wgslsmith_index_u32(1u, 3u)], vec2<bool>(true, true), vec2<bool>(true, false)), true), !global3[_wgslsmith_index_u32(~55893u, 3u)], true & all(global3[_wgslsmith_index_u32(u_input.a, 3u)])), !vec2<bool>(all(vec4<bool>(false, false, true, true)), var_1 == -3067f), vec2<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 4294967295u), 3u)] > _wgslsmith_clamp_i32(-1i, global0[_wgslsmith_index_u32(4769u, 3u)], 2147483647i))));
    return Struct_1(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + -162f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2 + var_1))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(419f * global2.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_i32(firstTrailingBit(firstLeadingBit(global1[_wgslsmith_index_u32(3567u, 11u)])), _wgslsmith_div_vec4_i32(~min(global1[_wgslsmith_index_u32(u_input.a, 11u)] & global1[_wgslsmith_index_u32(0u, 11u)], _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 0i, -2147483647i, 2147483647i), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, global0[_wgslsmith_index_u32(u_input.a, 3u)]), vec4<i32>(u_input.b.x, 458i, global0[_wgslsmith_index_u32(u_input.a, 3u)], 1i))), ~vec4<i32>(u_input.b.x, -8335i, ~(-63676i), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 78988u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), 3u)])));
    var var_1 = Struct_2(vec3<u32>(_wgslsmith_div_u32(0u, _wgslsmith_add_u32(21287u, 1u)), ~(~4294967295u), _wgslsmith_add_u32(11666u, u_input.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.a), global2.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(global2.b)), global2.b))), func_1(), select(0i, _wgslsmith_mod_i32(13070i, global0[_wgslsmith_index_u32(~(~1u), 3u)]), false), false);
    var var_2 = _wgslsmith_f_op_f32(-var_1.b.x);
    var var_3 = Struct_2(~var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, 519f) + _wgslsmith_f_op_vec2_f32(round(var_1.b))) * vec2<f32>(_wgslsmith_f_op_f32(-1000f - global2.a), _wgslsmith_f_op_f32(select(var_1.b.x, -992f, var_1.e))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1647f))) - global2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-160f)))), ~var_0.x, u_input.a <= 1u);
    let var_4 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_i32(abs(39099i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d, -2147483647i, 2147483647i, var_1.d), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -1i, global0[_wgslsmith_index_u32(var_3.a.x, 3u)], u_input.b.x), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 1i)))), vec2<i32>(var_3.d, -var_3.d));
}

