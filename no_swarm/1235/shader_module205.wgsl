struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<Struct_2, 13>;

var<private> global2: array<bool, 19> = array<bool, 19>(false, true, true, true, true, false, true, true, true, true, false, true, false, false, true, false, true, true, true);

var<private> global3: vec2<f32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.c >> (_wgslsmith_sub_u32(~(~(~17320u)), u_input.c) % 32u), 6u)];
    global3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(global3.x, -1014f)), _wgslsmith_f_op_f32(max(1159f, _wgslsmith_f_op_f32(f32(-1f) * -790f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x))))));
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -436f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 476f), vec2<f32>(-523f, 1356f)))) * vec2<f32>(_wgslsmith_f_op_f32(-1127f - -984f), -733f)), false)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-650f, global3.x) * vec2<f32>(global3.x, 476f)))))));
    global0 = array<Struct_1, 6>();
    let var_1 = _wgslsmith_f_op_f32(floor(-216f));
    return max(select(firstLeadingBit(-12539i), -1i, false), ~_wgslsmith_div_i32(_wgslsmith_mod_i32(arg_1.a.x, 66590i), ~2147483647i));
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(-abs(u_input.d), vec4<i32>(-u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -52681i, u_input.d.x), u_input.a), -1i, u_input.d.x), u_input.d), vec2<i32>(abs(~u_input.b), u_input.b), -u_input.a.x), !vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 19u)]), 0i);
    var var_1 = Struct_1(vec4<i32>(-56322i, u_input.a.x, ~firstLeadingBit(~u_input.a.x), 12894i), vec2<i32>(firstLeadingBit(var_0.c), -2147483647i), func_3(_wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-74524i, u_input.a.x, u_input.b, var_0.c), var_0.a.a), vec4<i32>(8860i, -1i, var_0.c, -1i) & vec4<i32>(u_input.a.x, u_input.d.x, 31319i, var_0.c))), global0[_wgslsmith_index_u32(1u, 6u)]));
    let var_2 = false | var_0.b.x;
    global2 = array<bool, 19>();
    var var_3 = Struct_2(var_0.a, !vec2<bool>(var_2, select(true, any(vec3<bool>(var_2, false, var_0.b.x)), var_0.b.x)), -2147483647i);
    return vec4<u32>(~firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.c, u_input.c)), ~vec2<u32>(u_input.c, 46740u))), u_input.c, _wgslsmith_sub_u32(min(~(~4294967295u), 0u >> (0u % 32u)), u_input.c | ~(u_input.c << (u_input.c % 32u))), ~(~(~(~84928u))));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a.a << ((~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 39601u, arg_1, 0u), vec4<u32>(arg_1, u_input.c, u_input.c, u_input.c)) | select(~vec4<u32>(0u, u_input.c, 15812u, arg_1), ~vec4<u32>(u_input.c, 0u, arg_1, 35792u), !vec4<bool>(arg_2.x, false, true, true))) % vec4<u32>(32u)), vec2<i32>(-abs(~(-1i)), min(-1i, -_wgslsmith_add_i32(arg_0.c, 2147483647i))), abs(-u_input.b));
    var var_1 = arg_0.a;
    var var_2 = 1u;
    let var_3 = !((all(vec2<bool>(global2[_wgslsmith_index_u32(4502u, 19u)], false)) & arg_2.x) | (_wgslsmith_dot_vec3_i32(u_input.d.wxy, u_input.a) >= -2674i));
    var var_4 = _wgslsmith_dot_vec4_u32(firstTrailingBit(func_2()), vec4<u32>(~5499u, ~85454u, arg_1, firstTrailingBit(arg_1))) >> (_wgslsmith_add_u32(select(_wgslsmith_clamp_u32(arg_1, arg_1, u_input.c), func_2().x, false), 21118u) % 32u);
    return Struct_1(arg_0.a.a, var_1.a.yx, -u_input.d.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: u32) -> StorageBuffer {
    let var_0 = abs(_wgslsmith_div_i32(_wgslsmith_div_i32(arg_0.c, -26755i), _wgslsmith_add_i32(arg_0.a.x & -2147483647i, ~u_input.a.x) >> (arg_3 % 32u)));
    let var_1 = any(vec3<bool>(arg_1.x, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, var_0, -57520i), arg_0.a.xzz, vec3<bool>(true, true, global2[_wgslsmith_index_u32(27480u, 19u)])), -vec3<i32>(-7733i, var_0, var_0)) < func_3(i32(-1i) * -11933i, global0[_wgslsmith_index_u32(reverseBits(u_input.c), 6u)]), 25723u == (max(41579u, u_input.c) << (1u % 32u))));
    let var_2 = u_input.a;
    global1 = array<Struct_2, 13>();
    global0 = array<Struct_1, 6>();
    return StorageBuffer(vec2<u32>(69073u, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 13>();
    global0 = array<Struct_1, 6>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(u_input.c, 1u), u_input.c), 6u)];
    let x = u_input.a;
    s_output = func_4(func_1(global1[_wgslsmith_index_u32(4294967295u, 13u)], max(28119u >> (u_input.c % 32u), u_input.c), vec2<bool>(true, any(vec2<bool>(global2[_wgslsmith_index_u32(0u, 19u)], true)) & (global2[_wgslsmith_index_u32(u_input.c, 19u)] != false))), !select(!(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 19u)], false)), select(vec2<bool>(true, true), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 19u)], global2[_wgslsmith_index_u32(u_input.c, 19u)]), true), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(11197u, u_input.c, ~18972u), 19u)]), false, u_input.c);
}

