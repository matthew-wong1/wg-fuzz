struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: i32 = 34748i;

var<private> global2: vec2<i32> = vec2<i32>(-7118i, 46404i);

var<private> global3: array<Struct_1, 13>;

var<private> global4: Struct_1 = Struct_1(25297u, vec3<u32>(1u, 54901u, 0u), vec2<f32>(639f, 1000f), vec2<i32>(-1207i, 26009i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<u32> {
    var var_0 = ~max(arg_1.a, ~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 9314u, 0u), vec3<u32>(u_input.b.x, global4.b.x, u_input.b.x))));
    global4 = Struct_1(0u, abs(~(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 67598u, 45714u), vec3<u32>(u_input.b.x, u_input.b.x, arg_2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1167f, -1000f))))))), vec2<i32>(_wgslsmith_mod_i32(countOneBits(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), 1i), 18021i));
    global4 = Struct_1(max(abs(arg_1.a), abs(1u)), arg_1.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.zy + global4.c) - _wgslsmith_f_op_vec2_f32(-global4.c)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.c) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c.x, arg_0.x)))))), vec2<i32>(reverseBits(global2.x ^ _wgslsmith_add_i32(-1i, arg_1.d.x)), ~2147483647i));
    var var_1 = arg_1;
    let var_2 = !any(select(!(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 12u)], false, true)), select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], false, global0[_wgslsmith_index_u32(61670u, 12u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(14266u, 12u)], false), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 12u)], false, global0[_wgslsmith_index_u32(52121u, 12u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(arg_1.b.x, 12u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]))), true));
    return vec4<u32>(0u | _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4082u, u_input.b.x), reverseBits(global4.b.x), min(u_input.b.x, 1u)), ~(~vec3<u32>(1u, var_1.a, 4294967295u))), select(_wgslsmith_sub_u32(~(~global4.a), ~arg_1.b.x ^ 0u), 4294967295u, _wgslsmith_clamp_i32(arg_1.d.x >> (arg_2.x % 32u), select(global2.x, -37971i, false), 1i) > arg_1.d.x), 4294967295u, reverseBits(arg_1.b.x) ^ (~global4.b.x & (30701u ^ _wgslsmith_div_u32(4294967295u, arg_1.a))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = global4.b.yx;
    var var_1 = min(global4.d, global4.d);
    var_0 = vec2<u32>(global4.a, _wgslsmith_clamp_u32(~0u, ~(~1u >> (~global4.a % 32u)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(12443u, 927u, var_0.x, global4.a) >> (vec4<u32>(var_0.x, 32970u, global4.b.x, 31019u) % vec4<u32>(32u))), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c.x, -152f, -360f, global4.c.x)), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global4.a, 0u), 13u)], firstTrailingBit(vec4<u32>(4294967295u, global4.a, 1729u, 4294967295u))))));
    let var_2 = Struct_2(abs(_wgslsmith_mod_u32(~26665u, 12579u)), _wgslsmith_add_i32(_wgslsmith_mod_i32(-74488i, u_input.a.x), 0i), _wgslsmith_f_op_f32(step(global4.c.x, -634f)), false, Struct_1(countOneBits(u_input.b.x), vec3<u32>(firstTrailingBit(0u) & 10303u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(81713u, 0u, u_input.b.x, var_0.x), vec4<u32>(u_input.b.x, var_0.x, 6359u, u_input.b.x)), firstLeadingBit(var_0.x)), u_input.b.x), _wgslsmith_f_op_vec2_f32(global4.c * vec2<f32>(global4.c.x, -594f)), u_input.a.wx));
    global4 = Struct_1(min(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, u_input.b.x), var_2.a), _wgslsmith_dot_vec2_u32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, global4.c.x, 150f, var_2.e.c.x)), global3[_wgslsmith_index_u32(u_input.b.x ^ var_2.a, 13u)], min(vec4<u32>(u_input.b.x, u_input.b.x, var_2.e.b.x, 3811u), vec4<u32>(1u, var_2.a, u_input.b.x, var_2.a))).zz, vec2<u32>(1u & global4.b.x, global4.b.x))), ~select(_wgslsmith_div_vec3_u32(select(global4.b, var_2.e.b, var_2.d), vec3<u32>(94478u, var_0.x, u_input.b.x)), u_input.b, !vec3<bool>(arg_0, global0[_wgslsmith_index_u32(var_0.x, 12u)], arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global4.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c))) - vec2<f32>(global4.c.x, _wgslsmith_f_op_f32(var_2.c - var_2.c))), _wgslsmith_div_vec2_i32(-global4.d, -reverseBits(_wgslsmith_add_vec2_i32(global4.d, var_2.e.d))));
    return global3[_wgslsmith_index_u32(u_input.b.x, 13u)];
}

fn func_1() -> vec3<bool> {
    var var_0 = global3[_wgslsmith_index_u32(global4.a, 13u)];
    var var_1 = func_2(false);
    var var_2 = global0[_wgslsmith_index_u32(0u, 12u)];
    var var_3 = any(!select(!select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 12u)], global0[_wgslsmith_index_u32(37092u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_0.a, 12u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(48487u, 12u)], global0[_wgslsmith_index_u32(var_0.b.x, 12u)])), vec3<bool>(select(true, global0[_wgslsmith_index_u32(31492u, 12u)], global0[_wgslsmith_index_u32(14774u, 12u)]), !global0[_wgslsmith_index_u32(62792u, 12u)], any(vec2<bool>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]))), global0[_wgslsmith_index_u32(~var_0.a, 12u)] && select(global0[_wgslsmith_index_u32(44955u, 12u)], false, global0[_wgslsmith_index_u32(4294967295u, 12u)])));
    var var_4 = select(select(select(select(!vec3<bool>(global0[_wgslsmith_index_u32(var_1.a, 12u)], false, true), vec3<bool>(false, true, false), vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.a, 12u)], true)), select(vec3<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 12u)], global0[_wgslsmith_index_u32(var_0.b.x, 12u)], true), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], true, false), true), u_input.a.x >= -26686i), vec3<bool>(true, false, var_1.c.x < global4.c.x)), select(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(global4.b.x, 12u)], global0[_wgslsmith_index_u32(global4.a, 12u)])), !(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 12u)], true, global0[_wgslsmith_index_u32(var_1.b.x, 12u)]))), select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(104596u, 12u)], global0[_wgslsmith_index_u32(var_1.b.x, 12u)], false), vec3<bool>(global0[_wgslsmith_index_u32(var_0.a, 12u)], global0[_wgslsmith_index_u32(var_1.b.x, 12u)], true), true), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 12u)], false, global0[_wgslsmith_index_u32(3977u, 12u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], true, false), global0[_wgslsmith_index_u32(1u, 12u)]), true), vec3<bool>(true, true, !global0[_wgslsmith_index_u32(55268u, 12u)]), true)), !vec3<bool>(true, all(vec3<bool>(false, true, true)), global0[_wgslsmith_index_u32(0u, 12u)]), true);
    return select(vec3<bool>(true, any(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u >> (var_0.b.x % 32u), 12u)], var_4.x, global0[_wgslsmith_index_u32(~var_0.b.x, 12u)])), true), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.b.x, 12u)], global0[_wgslsmith_index_u32(43931u, 12u)]), vec3<bool>(true, var_4.x, true), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(var_0.a, 12u)])), var_4.x), vec3<bool>(!global0[_wgslsmith_index_u32(u_input.b.x, 12u)], true, true), select(54732u, global4.a, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]) > global4.b.x), var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(_wgslsmith_clamp_u32(25980u, u_input.b.x, 36532u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(~1u, max(u_input.b.x, u_input.b.x)), ~select(u_input.b.x, u_input.b.x, true))), 0u, reverseBits(~global4.b.x)), 12u)];
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-1506f, ~select(u_input.a, vec4<i32>(reverseBits(2147483647i), firstTrailingBit(global2.x), -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global4.d.x, 1i, global4.d.x), u_input.a.yyx)), select(all(var_1.zy), any(vec2<bool>(false, true)), all(vec4<bool>(true, false, var_1.x, var_1.x)))), abs(~(~reverseBits(vec4<u32>(4294967295u, global4.b.x, 0u, 1u)))), 4294967295u, u_input.a.xzw);
}

