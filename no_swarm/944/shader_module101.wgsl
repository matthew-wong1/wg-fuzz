struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global2: array<i32, 20>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    global2 = array<i32, 20>();
    global0 = array<vec4<bool>, 29>();
    global1 = global0[_wgslsmith_index_u32(~(~firstLeadingBit(_wgslsmith_sub_u32(46449u, 0u))) << (1u % 32u), 29u)];
    var var_0 = Struct_1(vec2<i32>(~(-586i), abs(-(i32(-1i) * -1i))), vec4<bool>(global1.x, false, true, global1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * 788f))));
    let var_1 = vec2<bool>(var_0.b.x, var_0.b.x);
    return _wgslsmith_f_op_f32(trunc(var_0.c));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> vec3<i32> {
    global2 = array<i32, 20>();
    let var_0 = abs(vec3<u32>(1u, 1u, 1u) << (vec3<u32>(firstTrailingBit(_wgslsmith_add_u32(0u, 0u)), _wgslsmith_mod_u32(abs(4294967295u), 21885u), ~(~169135u)) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_mod_i32(arg_3, reverseBits(-28165i));
    let var_2 = 9535u;
    var var_3 = _wgslsmith_sub_vec2_i32(arg_2.b.yx, _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(arg_2.b.yz, arg_2.b.xy, vec2<i32>(arg_2.b.x, 2147483647i))), -(~vec2<i32>(arg_2.b.x, -2147483647i))), arg_1.a));
    return vec3<i32>(6945i, u_input.a, reverseBits(-firstLeadingBit(arg_3)));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: bool) -> Struct_1 {
    let var_0 = select(func_4(Struct_3(!(!vec2<bool>(arg_2, arg_1.x)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], arg_0, -70376i), vec3<i32>(global2[_wgslsmith_index_u32(0u, 20u)], -24656i, -2147483647i)), vec3<i32>(-1i, global2[_wgslsmith_index_u32(4294967295u, 20u)], 2147483647i)), select(!arg_1.wzz, select(vec3<bool>(arg_2, global1.x, arg_2), global1.yzx, global1.yxw), !global1.wyz)), Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, 1i), vec2<i32>(global2[_wgslsmith_index_u32(1u, 20u)], 0i)), !vec4<bool>(false, true, arg_1.x, arg_2), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(func_3(vec4<f32>(-509f, 697f, 336f, -1700f))))), Struct_3(vec2<bool>(true, true), reverseBits(vec3<i32>(global2[_wgslsmith_index_u32(1u, 20u)], -1i, u_input.a)), arg_1.zzz), ~(-57564i)), _wgslsmith_sub_vec3_i32(max(~_wgslsmith_div_vec3_i32(vec3<i32>(-24304i, 2147483647i, -2147483647i), vec3<i32>(98110i, global2[_wgslsmith_index_u32(83105u, 20u)], u_input.a)), abs(-vec3<i32>(u_input.a, arg_0, -98610i))), vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.a, 2147483647i, 1i), vec4<i32>(u_input.a, -1i, u_input.a, -21980i)), 46582i, arg_0)), true);
    var var_1 = 4294967295u;
    global1 = vec4<bool>(!(!any(global1.zyy) != false), true, !(false == arg_2) | true, any(vec4<bool>(arg_2, all(arg_1), true, true)));
    let var_2 = -vec2<i32>(1i, min(1i, u_input.a));
    var var_3 = 1u;
    return Struct_1(-vec2<i32>(reverseBits(_wgslsmith_clamp_i32(u_input.a, 0i, var_2.x)), func_4(Struct_3(arg_1.yw, vec3<i32>(1i, global2[_wgslsmith_index_u32(1u, 20u)], -5782i), vec3<bool>(global1.x, arg_1.x, true)), Struct_1(var_0.yx, arg_1, -1640f), Struct_3(vec2<bool>(arg_2, false), var_0, arg_1.wzz), global2[_wgslsmith_index_u32(38873u, 20u)] & -12517i).x), select(select(select(vec4<bool>(arg_2, false, arg_2, arg_1.x), select(arg_1, vec4<bool>(false, false, false, arg_2), arg_1), false), global0[_wgslsmith_index_u32(max(0u, abs(1u)), 29u)], true), arg_1, true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -397f), _wgslsmith_div_f32(345f, _wgslsmith_f_op_f32(f32(-1f) * -1030f)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_3) -> u32 {
    var var_0 = func_2(~(~0i), select(global0[_wgslsmith_index_u32(~1u, 29u)], !(!(!global0[_wgslsmith_index_u32(1u, 29u)])), !arg_3.a.x), true);
    global0 = array<vec4<bool>, 29>();
    var var_1 = ~max(firstLeadingBit(~_wgslsmith_mult_u32(78028u, 1u)), ~1u);
    let var_2 = vec2<i32>(~(abs(u_input.a) & _wgslsmith_add_i32(-2147483647i, global2[_wgslsmith_index_u32(1u, 20u)])), -28252i);
    let var_3 = Struct_3(vec2<bool>(true, (var_0.c >= _wgslsmith_f_op_f32(min(var_0.c, -652f))) && (abs(arg_2) > ~(-1i))), vec3<i32>(~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, -1i, var_0.a.x), arg_3.b), global2[_wgslsmith_index_u32(0u, 20u)] << (77969u % 32u)), abs(u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, arg_3.b.x), ~(-vec3<i32>(var_0.a.x, var_2.x, arg_3.b.x)))), !global1.yzw);
    return ~(~(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(-vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(1u, 20u)]) >> (vec2<u32>(_wgslsmith_mult_u32(0u, 4294967295u), _wgslsmith_mod_u32(1u, 1u)) % vec2<u32>(32u))), global0[_wgslsmith_index_u32(~60799u, 29u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1275f, 1051f, false)))) + 1300f) - -207f));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(57810u & _wgslsmith_mult_u32(~func_1(vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c), global0[_wgslsmith_index_u32(1u, 29u)], var_0.a.x, Struct_3(vec2<bool>(global1.x, global1.x), vec3<i32>(2147483647i, var_0.a.x, var_0.a.x), vec3<bool>(global1.x, true, var_0.b.x))), 41705u), select(17652u, 1u, var_0.b.x)), 29u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(var_0.a.x, vec4<bool>(all(vec2<bool>(true, false)), true, !var_0.b.x, true), false).c, -915f, 260f));
    global0 = array<vec4<bool>, 29>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1019f, var_1.x, var_0.c, 275f) + vec4<f32>(var_1.x, -1037f, var_0.c, var_1.x)))))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1082f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * 339f) + -2204f), -136f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 472f, -665f, var_0.c)))));
    global1 = vec4<bool>(true & !global1.x, any(!vec4<bool>(select(var_0.b.x, var_0.b.x, var_0.b.x), !var_0.b.x, var_0.b.x & false, true)), all(vec2<bool>(!(var_0.b.x && global1.x), true)), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32((_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(91975u, 8753u)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(38968u, 1u), vec2<u32>(9652u, 1u)) % vec2<u32>(32u))) >> (select(vec2<u32>(1u, 3401u), countOneBits(vec2<u32>(0u, 0u)), var_0.b.wz) % vec2<u32>(32u)), ~countOneBits(vec2<u32>(1u, 1u))), -max(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 0i, global2[_wgslsmith_index_u32(0u, 20u)]) << (vec3<u32>(29244u, 9063u, 1u) % vec3<u32>(32u)), vec3<i32>(-2147483647i, -2147483647i, -2147483647i)), -firstLeadingBit(vec3<i32>(41016i, -1i, 0i))), vec3<u32>(0u, ~(~(~1u)), _wgslsmith_add_u32(min(~1084u, 15899u), _wgslsmith_mod_u32(1u, 1u))));
}

