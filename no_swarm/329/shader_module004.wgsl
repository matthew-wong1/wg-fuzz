struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: f32, arg_3: u32) -> i32 {
    let var_0 = 8687u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(607f, -919f, 485f) - vec3<f32>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(var_0, 27u)], 1404f)) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], -188f, -571f)) * vec3<f32>(_wgslsmith_f_op_f32(-545f - -874f), global0[_wgslsmith_index_u32(countOneBits(arg_1), 27u)], _wgslsmith_f_op_f32(-909f + global0[_wgslsmith_index_u32(1u, 27u)])))));
    let var_2 = reverseBits(vec3<i32>(~1i, arg_0.x, ~(firstLeadingBit(arg_0.x) >> (~0u % 32u))));
    let var_3 = Struct_1(select(arg_0.wx, var_2.yx, !(~4294967295u > _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, u_input.c, 1u, u_input.c), u_input.b))), vec3<i32>(arg_0.x, min(~arg_0.x ^ 6377i, -arg_0.x), u_input.a.x), firstLeadingBit(1u) | ~_wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(38443u, arg_3, 0u, 1u)), !(!vec3<bool>(var_2.x < var_2.x, true, any(vec4<bool>(true, true, true, true)))));
    let var_4 = ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 41615u, abs(~var_3.c)), _wgslsmith_dot_vec3_u32(~select(vec3<u32>(3986u, 1u, 1u), u_input.b.zzy, true), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, arg_1, var_3.c, var_3.c), u_input.b), 32551u, _wgslsmith_div_u32(1u, u_input.d))));
    return 0i;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: i32) -> u32 {
    let var_0 = arg_2;
    let var_1 = arg_0.x;
    var var_2 = Struct_2(Struct_1(u_input.a.zy, vec3<i32>(0i << (arg_1.x % 32u), 1i, ~var_0) | _wgslsmith_div_vec3_i32(~vec3<i32>(20032i, -44171i, u_input.a.x), vec3<i32>(arg_2, 790i, u_input.a.x) >> (u_input.b.zzy % vec3<u32>(32u))), ~11384u, select(arg_0, vec3<bool>(true, select(false, arg_0.x, arg_0.x), arg_2 <= -613i), vec3<bool>(all(arg_0.xx), u_input.b.x == arg_1.x, any(arg_0.yz)))));
    var var_3 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(var_2.a.c ^ firstTrailingBit(4294967295u)) & ~reverseBits(91000u), 27u)] * _wgslsmith_f_op_f32(-480f + global0[_wgslsmith_index_u32(var_2.a.c, 27u)]));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1032f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-498f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 27u)] - global0[_wgslsmith_index_u32(var_2.a.c, 27u)]))))));
    return ~_wgslsmith_clamp_u32(var_2.a.c, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(u_input.b.x, arg_1.x, var_2.a.c), u_input.b.ywy, 1u < arg_1.x), u_input.b.xyx), ~_wgslsmith_dot_vec4_u32(~u_input.b, ~vec4<u32>(1u, 4887u, arg_1.x, arg_1.x)));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: u32) -> f32 {
    var var_0 = -49661i;
    let var_1 = Struct_1(-abs(abs(select(arg_2.b.xx, u_input.a.xx, arg_2.d.x))), abs((_wgslsmith_mod_vec3_i32(u_input.a, arg_2.b) >> (abs(vec3<u32>(arg_2.c, arg_3, arg_2.c)) % vec3<u32>(32u))) ^ arg_2.b), 4294967295u, arg_2.d);
    var_0 = u_input.a.x;
    var_0 = ~0i;
    var var_2 = arg_2;
    return _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u & func_4(select(!arg_2.d, vec3<bool>(arg_2.d.x, var_2.d.x, var_2.d.x), vec3<bool>(false, true, false)), vec2<u32>(countOneBits(80170u), _wgslsmith_div_u32(arg_0, 0u)), ~func_3(vec4<i32>(var_1.a.x, -1i, 31429i, 22247i), 10392u, -238f, 75405u)), 27u)] - _wgslsmith_f_op_f32(-arg_1.x));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_add_u32(~_wgslsmith_sub_u32(reverseBits(~u_input.d), ~_wgslsmith_clamp_u32(u_input.c, 36099u, 1u)), u_input.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1137f * _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.d, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(0u, 27u)])) + global0[_wgslsmith_index_u32(u_input.d, 27u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(1u, vec3<f32>(-1153f, -206f, global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), Struct_1(vec2<i32>(-1i, -2147483647i), vec3<i32>(u_input.a.x, -2147483647i, 1i), arg_0.c, vec3<bool>(true, arg_0.d.x, false)), u_input.d)) + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(78186u, 27u)], global0[_wgslsmith_index_u32(arg_0.c, 27u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(411f + global0[_wgslsmith_index_u32(4294967295u, 27u)]) * _wgslsmith_f_op_f32(min(173f, global0[_wgslsmith_index_u32(u_input.b.x, 27u)])))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(24834u, 27u)]), _wgslsmith_div_f32(616f, -702f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.c, 27u)] * global0[_wgslsmith_index_u32(u_input.c, 27u)]), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(5857u, 27u)]))))));
    var_0 = abs(4941u);
    var var_2 = Struct_2(arg_0);
    var var_3 = (arg_0.b.x >> (arg_0.c % 32u)) < ~(~((arg_0.a.x ^ 30188i) | arg_0.a.x));
    return all(vec4<bool>(false, !all(vec4<bool>(false, var_2.a.d.x, arg_0.d.x, false)), var_2.a.d.x, false));
}

fn func_5(arg_0: bool) -> StorageBuffer {
    var var_0 = 155f;
    let var_1 = !select(!select(select(vec3<bool>(arg_0, false, false), vec3<bool>(false, true, arg_0), false), vec3<bool>(arg_0, arg_0, false), select(vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0))), vec3<bool>(true, all(vec2<bool>(true, arg_0)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 27u)]) > global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 4294967295u), 27u)]), !(!(arg_0 == true)));
    var var_2 = Struct_1(vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x ^ -4411i, -u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, reverseBits(u_input.a.x))) << (u_input.b.wy % vec2<u32>(32u)), -vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -1i), u_input.a.xy ^ vec2<i32>(-2147483647i, -12912i)), _wgslsmith_mod_i32(u_input.a.x >> (u_input.d % 32u), 61969i), firstTrailingBit(firstLeadingBit(-17366i))), u_input.d, var_1);
    global0 = array<f32, 27>();
    var var_3 = Struct_1(u_input.a.xz, ~(-((u_input.a >> (vec3<u32>(var_2.c, var_2.c, var_2.c) % vec3<u32>(32u))) & var_2.b)), _wgslsmith_div_u32(countOneBits(u_input.b.x), 7378u), var_1);
    return StorageBuffer(_wgslsmith_mod_i32(var_2.a.x, _wgslsmith_sub_i32(~(-var_2.a.x), var_3.b.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(var_2.c, 27u)], global0[_wgslsmith_index_u32(11369u, 27u)], -2156f, global0[_wgslsmith_index_u32(1u, 27u)]), vec4<f32>(global0[_wgslsmith_index_u32(29211u, 27u)], global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(30512u, 27u)])))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1430f, global0[_wgslsmith_index_u32(var_3.c, 27u)], -995f, -1587f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(510f, global0[_wgslsmith_index_u32(36379u, 27u)], -1452f, global0[_wgslsmith_index_u32(0u, 27u)])))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_3.c, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)], -767f, 480f))))), select(-1i, var_2.a.x, any(!select(vec4<bool>(false, arg_0, var_1.x, var_1.x), vec4<bool>(var_1.x, var_2.d.x, var_2.d.x, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x)))), ~vec3<u32>(_wgslsmith_add_u32(var_3.c, u_input.d), 11395u, var_3.c | 4294967295u) << (vec3<u32>(u_input.d, var_3.c, u_input.b.x) % vec3<u32>(32u)), vec3<i32>(~abs(1447i), u_input.a.x ^ (1i << (_wgslsmith_clamp_u32(u_input.c, 1u, 18983u) % 32u)), var_3.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, (~(-u_input.a.x) >> (_wgslsmith_mod_u32(106044u, u_input.c) % 32u)) > (min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 23830i), vec2<i32>(18057i, 38155i)), -2147483647i) << (u_input.d % 32u)));
    global0 = array<f32, 27>();
    let x = u_input.a;
    s_output = func_5(all(vec2<bool>(all(!vec2<bool>(var_0.x, false)), !var_0.x | func_1(Struct_1(vec2<i32>(u_input.a.x, 2147483647i), vec3<i32>(13434i, -1i, -1i), u_input.d, vec3<bool>(var_0.x, false, false))))));
}

