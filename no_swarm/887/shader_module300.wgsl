struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> u32 {
    let var_0 = false;
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    let var_1 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), global0[_wgslsmith_index_u32(~(~4294967295u), 16u)], u_input.a, false), vec4<i32>(1i, -_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, -2147483647i), select(vec2<i32>(-13475i, 20751i), vec2<i32>(u_input.a, 6277i), vec2<bool>(var_0, var_0))), 67683i, u_input.a));
    global0 = array<f32, 16>();
    return u_input.b.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_2) -> i32 {
    global0 = array<f32, 16>();
    var var_0 = Struct_4(vec3<bool>(!(!(!arg_1)), select(true == arg_1, false && (global0[_wgslsmith_index_u32(u_input.b.x, 16u)] > -1812f), false), true), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.a.x * -488f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1627f, arg_2.a.x)))))), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(0u, u_input.b.x), u_input.b.x & u_input.b.x), 16u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(func_3(), 16u)]))), 706f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a.wzw)));
    let var_1 = firstLeadingBit(~_wgslsmith_add_i32(~_wgslsmith_mod_i32(9844i, 2147483647i), -u_input.a));
    var var_2 = ~abs(u_input.b.x);
    var_0 = Struct_4(select(var_0.a, vec3<bool>(true, any(arg_0), var_0.a.x), all(!vec3<bool>(arg_1, true, true))), _wgslsmith_f_op_vec4_f32(-arg_2.a), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1112f * global0[_wgslsmith_index_u32(u_input.b.x, 16u)]) * _wgslsmith_div_f32(var_0.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 16u)])))), _wgslsmith_f_op_f32(-var_0.b.x), 675f));
    return -35335i;
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: i32, arg_3: vec3<i32>) -> f32 {
    var var_0 = ~firstTrailingBit(countOneBits(vec2<u32>(max(u_input.b.x, arg_0.x), ~0u)));
    var_0 = ~_wgslsmith_sub_vec2_u32(min(arg_0.zy, _wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_0.x, 0u), vec2<u32>(4069u, 4294967295u), u_input.b.yy)), _wgslsmith_sub_vec2_u32(select(_wgslsmith_mod_vec2_u32(u_input.b.yz, arg_0.yw), ~arg_0.zx, arg_1), arg_0.xx));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-800f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), 16u)], _wgslsmith_div_f32(829f, -237f), global0[_wgslsmith_index_u32(1u, 16u)]) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(273f, global0[_wgslsmith_index_u32(u_input.b.x, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(868u, 16u)]))) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], 612f, global0[_wgslsmith_index_u32(var_0.x, 16u)], global0[_wgslsmith_index_u32(arg_0.x, 16u)])))));
    var_0 = max(arg_0.xx >> (~vec2<u32>(var_0.x, ~1u) % vec2<u32>(32u)), ~(vec2<u32>(16997u | var_0.x, 9924u) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.b.yy) % vec2<u32>(32u))));
    var var_2 = select(!vec4<bool>(~1u > reverseBits(u_input.b.x), arg_1, true, true & select(false, arg_1, arg_1)), !vec4<bool>(all(!vec4<bool>(true, false, false, arg_1)), any(!vec3<bool>(arg_1, arg_1, true)), _wgslsmith_f_op_f32(floor(var_1.a.x)) > _wgslsmith_f_op_f32(step(var_1.a.x, global0[_wgslsmith_index_u32(4294967295u, 16u)])), select(any(vec4<bool>(true, true, arg_1, true)), arg_1, global0[_wgslsmith_index_u32(var_0.x, 16u)] > -2254f)), !vec4<bool>(-u_input.a > u_input.a, func_2(vec2<bool>(arg_1, arg_1), false, Struct_2(var_1.a)) < _wgslsmith_sub_i32(70451i, 1i), all(select(vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(false, false, arg_1, false))), all(!vec4<bool>(arg_1, false, arg_1, true))));
    return -603f;
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> i32 {
    var var_0 = abs(u_input.b);
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    var_0 = ~min(vec3<u32>(var_0.x, _wgslsmith_sub_u32(23406u, 0u), ~u_input.b.x ^ 4294967295u), vec3<u32>(17080u, 6211u, abs(u_input.b.x) | 30587u));
    let var_1 = Struct_4(vec3<bool>(true, true, any(select(!vec3<bool>(arg_1.a.d, arg_1.a.d, true), vec3<bool>(arg_1.a.d, arg_1.a.d, true), vec3<bool>(true, true, false)))), vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(func_4(_wgslsmith_add_vec4_u32(vec4<u32>(51200u, 4294967295u, 33978u, 49227u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x), vec4<u32>(u_input.b.x, u_input.b.x, 66237u, var_0.x))), !arg_1.a.d, min(12576i, -u_input.a), vec3<i32>(arg_1.b.x >> (14772u % 32u), func_2(vec2<bool>(true, arg_1.a.d), arg_1.a.d, Struct_2(vec4<f32>(-296f, 420f, arg_1.a.a.x, 1000f))), 41724i))), global0[_wgslsmith_index_u32(0u, 16u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(778f, arg_0), -1190f, arg_1.a.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_1.a.a.x, global0[_wgslsmith_index_u32(var_0.x, 16u)]) + vec3<f32>(-127f, 833f, arg_1.a.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2454f, -1000f, 172f)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_1.a.b, global0[_wgslsmith_index_u32(19021u, 16u)]) - vec3<f32>(arg_1.a.b, arg_1.a.b, -219f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1956f, 2092f)))))));
    return 2073i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 16>();
    var var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(max(-countOneBits(vec3<i32>(-26734i, -20205i, u_input.a)), max(-vec3<i32>(u_input.a, 5730i, 16528i), -vec3<i32>(u_input.a, 26656i, u_input.a))), ~((vec3<i32>(-2147483647i, u_input.a, 0i) & vec3<i32>(28048i, -20027i, u_input.a)) >> (vec3<u32>(44512u, 4294967295u, 46571u) % vec3<u32>(32u)))), ~min(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.a) << (u_input.b % vec3<u32>(32u)), vec3<i32>(-1i, 20995i, u_input.a)), vec3<i32>(_wgslsmith_clamp_i32(u_input.a, 7778i, u_input.a), func_1(global0[_wgslsmith_index_u32(4294967295u, 16u)], Struct_3(Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(1u, 16u)], -982f), -1035f, 0i, true), vec4<i32>(u_input.a, -37072i, 27632i, u_input.a))), ~u_input.a)), abs(_wgslsmith_div_vec3_i32(-(vec3<i32>(u_input.a, u_input.a, 1i) >> (vec3<u32>(4294967295u, 53216u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(~vec3<i32>(-1i, 21565i, 2147483647i), abs(vec3<i32>(-32806i, -56234i, u_input.a))))));
    let var_1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(max(firstLeadingBit(0u & u_input.b.x), firstLeadingBit(u_input.b.x)), 16u)] + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -922f) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 16u)]))))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], -763f, -511f, 964f)))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], 757f, global0[_wgslsmith_index_u32(u_input.b.x, 16u)], 636f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(157f, _wgslsmith_f_op_f32(select(-1044f, var_1, true)), _wgslsmith_f_op_f32(-479f * 689f), _wgslsmith_f_op_f32(max(952f, -763f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -796f, var_1, 866f))))))));
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -678f)), -1120f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-361f, _wgslsmith_f_op_f32(f32(-1f) * -926f))), 567f, true)) - _wgslsmith_f_op_f32(f32(-1f) * -634f)), _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * 342f), true)), ~(select(max(2147483647i, 2778i), u_input.a, true) << (min(min(4294967295u, 0u), u_input.b.x) % 32u)), u_input.b.x);
}

