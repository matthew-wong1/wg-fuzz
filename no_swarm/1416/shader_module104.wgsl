struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<bool, 13>;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(0i, 1i, 21148i));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = 2086f;
    let var_1 = any(!(!vec2<bool>(arg_1.x && true, arg_0.x)));
    let var_2 = u_input.b.x;
    var var_3 = arg_2;
    var_3 = Struct_1(vec3<i32>(arg_2.a.x, 2147483647i, 45565i));
    return ~(~(vec2<u32>(9813u, 88257u << (u_input.b.x % 32u)) << (_wgslsmith_mod_vec2_u32(u_input.b.xy, _wgslsmith_div_vec2_u32(u_input.b.zy, vec2<u32>(u_input.b.x, var_2))) % vec2<u32>(32u))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = u_input.b.yzw;
    let var_1 = true;
    let var_2 = ~(0u & arg_0.x) >= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, _wgslsmith_sub_u32(arg_0.x, arg_0.x) & arg_0.x), ~vec2<u32>(4294967295u, var_0.x) & ((var_0.yx | vec2<u32>(0u, 4294967295u)) & func_3(vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 13u)]), vec3<bool>(false, var_1, var_1), Struct_1(global2.a))));
    let var_3 = global2.a.x;
    let var_4 = arg_1;
    return global0[_wgslsmith_index_u32(min(29975u, _wgslsmith_sub_u32(countOneBits(u_input.c), 1075u)), 31u)];
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(33628u, 31u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-622f, 751f, -1000f, -1913f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(813f, 845f, 1228f, 667f))) - vec4<f32>(-883f, -1000f, _wgslsmith_f_op_f32(round(-372f)), -1602f)))));
    let var_2 = u_input.a;
    let var_3 = ~reverseBits(_wgslsmith_mod_u32(arg_3.x, arg_3.x));
    var_0 = Struct_1(arg_2.a << (vec3<u32>(0u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, 17864u), _wgslsmith_sub_u32(arg_3.x, 1u)), func_3(select(vec2<bool>(global1[_wgslsmith_index_u32(var_3, 13u)], false), vec2<bool>(true, global1[_wgslsmith_index_u32(arg_3.x, 13u)]), vec2<bool>(global1[_wgslsmith_index_u32(8354u, 13u)], global1[_wgslsmith_index_u32(var_3, 13u)])), !vec3<bool>(global1[_wgslsmith_index_u32(var_3, 13u)], global1[_wgslsmith_index_u32(var_3, 13u)], true), global0[_wgslsmith_index_u32(var_3, 31u)]).x) % vec3<u32>(32u)));
    return 4294967295u;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    global2 = global0[_wgslsmith_index_u32(~countOneBits(~(~1u)), 31u)];
    global2 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(func_4(_wgslsmith_mod_i32(-1i, -2147483647i), Struct_1(vec3<i32>(2147483647i, arg_2.a.x, u_input.d.x)), func_2(vec2<u32>(u_input.b.x, u_input.c), Struct_1(arg_1.a)), ~u_input.b.xzw), _wgslsmith_sub_u32(19011u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), u_input.b)))) ^ u_input.c, 31u)];
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-530f - 1225f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2526f, -1057f)))))));
    global1 = array<bool, 13>();
    let var_1 = Struct_1(~_wgslsmith_add_vec3_i32(vec3<i32>(1i, abs(arg_1.a.x), ~(-49568i)), -firstTrailingBit(arg_2.a)));
    return select(!(!vec2<bool>(4294967295u != u_input.b.x, any(vec3<bool>(global1[_wgslsmith_index_u32(32982u, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global1[_wgslsmith_index_u32(u_input.c, 13u)])))), select(select(select(vec2<bool>(true, true), !vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 13u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(44123u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)]), false)), vec2<bool>(true, all(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(12159u, 13u)], true))), !select(vec2<bool>(true, false), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 13u)]), global1[_wgslsmith_index_u32(4294967295u, 13u)])), select(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 13u)]), !vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 13u)]), global1[_wgslsmith_index_u32(58653u, 13u)]), all(select(vec4<bool>(true, true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], false, true, false), true))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, ~(~u_input.b.x), (firstLeadingBit(u_input.c) << (_wgslsmith_mod_u32(55082u, u_input.c) % 32u)) & u_input.b.x), 13u)]);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 31u)];
    let var_1 = ~(~u_input.b.ww);
    let var_2 = global0[_wgslsmith_index_u32(u_input.b.x << (39091u % 32u), 31u)];
    global2 = Struct_1(_wgslsmith_clamp_vec3_i32(var_0.a, ~vec3<i32>(var_0.a.x, ~global2.a.x, -u_input.a), ~var_0.a));
    return Struct_1(firstTrailingBit(abs(-vec3<i32>(33495i, var_2.a.x, u_input.d.x))) & ~func_2(u_input.b.yz, func_2(vec2<u32>(var_1.x, u_input.b.x), Struct_1(vec3<i32>(-2147483647i, -33291i, global2.a.x)))).a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 13>();
    global1 = array<bool, 13>();
    var var_0 = func_5(Struct_1(global2.a), select(select(select(vec2<bool>(true, true), !vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 13u)]), global1[_wgslsmith_index_u32(64930u, 13u)]), select(vec2<bool>(true, true), func_1(u_input.a, Struct_1(global2.a), global0[_wgslsmith_index_u32(76067u, 31u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 13u)], false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], true), false)), !any(vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)]))), vec2<bool>(true, all(select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 13u)], false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 13u)], global1[_wgslsmith_index_u32(32067u, 13u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 13u)], false, global1[_wgslsmith_index_u32(u_input.c, 13u)])))), !vec2<bool>(false, select(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global1[_wgslsmith_index_u32(32671u, 13u)]))));
    var var_1 = vec4<bool>(all(vec2<bool>(select(all(vec3<bool>(global1[_wgslsmith_index_u32(125282u, 13u)], false, false)), global1[_wgslsmith_index_u32(2046u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)] || global1[_wgslsmith_index_u32(u_input.c, 13u)]), true)), _wgslsmith_add_i32(var_0.a.x, _wgslsmith_sub_i32(i32(-1i) * -21106i, ~u_input.a)) != -1i, any(select(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 13u)], false, global1[_wgslsmith_index_u32(706u, 13u)], true), vec4<bool>(global1[_wgslsmith_index_u32(0u, 13u)] & false, false, any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], false, global1[_wgslsmith_index_u32(u_input.c, 13u)])), any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(53779u, 13u)]))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 31670u, u_input.b.x, 53177u), u_input.b), 13u)])), false);
    var var_2 = global0[_wgslsmith_index_u32(~u_input.b.x, 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~u_input.c, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, u_input.b.x), select(vec2<u32>(27101u, u_input.b.x), u_input.b.zx, var_1.wx)), ~(~vec2<u32>(532u, u_input.c)))), -_wgslsmith_add_vec3_i32(var_2.a, -select(var_2.a, var_2.a, global1[_wgslsmith_index_u32(4294967295u, 13u)])), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-395f, 427f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-284f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-565f + -534f) - -657f), all(var_1.zy) && global1[_wgslsmith_index_u32(u_input.b.x, 13u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

