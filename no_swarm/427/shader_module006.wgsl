struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, true, true, true, false, true, false, true, false, false, false, true, false, true, true, true, false, false, false, true, false, true, true, false, true, true);

var<private> global1: vec2<bool>;

var<private> global2: array<vec3<bool>, 5>;

var<private> global3: array<u32, 12>;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~(~u_input.e.yy), ~(u_input.b << (vec2<u32>(global4.c, u_input.d.x) % vec2<u32>(32u)))) & ~u_input.e.yy, ~(~vec2<u32>(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], _wgslsmith_mod_u32(global4.c, 127352u))));
    let var_1 = _wgslsmith_div_vec2_u32(u_input.e.xz, abs(vec2<u32>(~reverseBits(global3[_wgslsmith_index_u32(global4.c, 12u)]), 1u)));
    global1 = vec2<bool>(true, true);
    var_0 = firstLeadingBit(~(vec2<u32>(global4.c, var_0.x) >> (var_1 % vec2<u32>(32u)))) & u_input.b;
    let var_2 = -2147483647i;
    return !select(vec2<bool>(!(!global1.x), global1.x), vec2<bool>(all(select(vec2<bool>(global0[_wgslsmith_index_u32(10186u, 26u)], global1.x), vec2<bool>(false, true), vec2<bool>(true, true))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, global4.c), var_1) != ~var_0.x), vec2<bool>(!(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(64487u, 12u)], 26u)] || global1.x), true));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -283f))), _wgslsmith_div_i32(-2147483647i, u_input.c), (_wgslsmith_clamp_u32(~global3[_wgslsmith_index_u32(1u, 12u)], global4.c, _wgslsmith_sub_u32(arg_1.c, u_input.a.x)) >> ((~4294967295u & arg_1.c) % 32u)) | ~59174u, select(abs(firstLeadingBit(max(vec4<i32>(arg_1.d.x, u_input.c, -1i, u_input.c), arg_1.d))), vec4<i32>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, arg_1.b, -1i, arg_1.d.x), vec4<i32>(u_input.c, global4.d.x, global4.d.x, -1i)), 11648i), u_input.c, _wgslsmith_clamp_i32(~1237i, _wgslsmith_add_i32(-2147483647i, global4.b), -u_input.c), arg_1.b), !vec4<bool>(global1.x, global1.x, global0[_wgslsmith_index_u32(~arg_1.c, 26u)], global0[_wgslsmith_index_u32(min(51861u, 1u), 26u)])));
    global3 = array<u32, 12>();
    let var_1 = u_input.e.x;
    var var_2 = _wgslsmith_f_op_f32(round(-1129f));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global4.a)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1253f)), global4.a, firstTrailingBit(arg_1.b) <= -1i))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-965f, _wgslsmith_f_op_f32(round(-2688f))))));
    return arg_1.c;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * arg_1.x), global4.a), abs(_wgslsmith_sub_i32(~(-3037i), max(_wgslsmith_mult_i32(-46359i, u_input.c), -1i))), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(arg_0.x, 0u), 1u) >> (~func_4(arg_1.x, Struct_1(-1039f, global4.d.x, 65351u, vec4<i32>(0i, -1i, -26684i, 2147483647i)), func_3()) % 32u), firstLeadingBit(_wgslsmith_add_vec4_i32(~global4.d, global4.d)) << (firstLeadingBit(select(vec4<u32>(76554u, u_input.a.x, 4294967295u, arg_0.x), vec4<u32>(0u, 0u, u_input.e.x, global3[_wgslsmith_index_u32(69302u, 12u)]) | vec4<u32>(arg_0.x, global4.c, arg_0.x, 66542u), vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_0.x, 26u)], true))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(506f, 156f));
    let var_2 = func_3().x;
    var_1 = _wgslsmith_f_op_vec2_f32(abs(arg_1));
    let var_3 = ~vec3<u32>(1u, _wgslsmith_div_u32(1u, ~arg_0.x), ~4294967295u);
    return _wgslsmith_f_op_f32(-global4.a);
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(global4.a)), ~_wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_mod_i32(-2147483647i, -7670i)), -1i, -1i), ~1u, vec4<i32>(~min(firstTrailingBit(global4.d.x), u_input.c), arg_0.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, 33753i, 1i, -33477i) & ~vec4<i32>(0i, arg_0.x, -1i, global4.b), global4.d), global4.b));
    var var_1 = _wgslsmith_sub_vec2_i32(abs(var_0.d.xz), -reverseBits(_wgslsmith_sub_vec2_i32(global4.d.xz, vec2<i32>(0i, u_input.c))));
    var_1 = vec2<i32>(u_input.c, -_wgslsmith_add_i32(var_0.b, _wgslsmith_div_i32(1i, firstLeadingBit(var_0.d.x))));
    var var_2 = Struct_1(global4.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.d.x, -7582i, global4.d.x, var_0.d.x), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, var_0.d.x, 0i, -2147483647i), global4.d)), -(u_input.c ^ -2309i)) & var_1.x, 4294967295u, _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 43451i, arg_0.x, 46869i), ~arg_0, _wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(10930i, 31646i), vec2<i32>(global4.d.x, 69969i)), var_0.d.x), vec4<i32>(~18602i, _wgslsmith_sub_i32(1i, var_1.x), _wgslsmith_clamp_i32(global4.b, -80981i, 0i), _wgslsmith_dot_vec3_i32(arg_0.yxw, arg_0.zyx)))));
    var var_3 = Struct_1(_wgslsmith_div_f32(global4.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))))), firstLeadingBit(countOneBits(_wgslsmith_sub_i32(1i, var_0.b))), u_input.d.x, ~var_2.d);
    return Struct_1(arg_1, select(0i, -2147483647i, !any(vec3<bool>(global1.x, true, global1.x))), 0u, var_3.d);
}

fn func_6(arg_0: Struct_1) -> vec3<u32> {
    global2 = array<vec3<bool>, 5>();
    var var_0 = func_5(firstLeadingBit(global4.d) & vec4<i32>(-(~global4.d.x), i32(-1i) * -4228i, -_wgslsmith_div_i32(24073i, arg_0.d.x), arg_0.d.x >> (~global4.c % 32u)), _wgslsmith_f_op_f32(-1358f - arg_0.a), arg_0.a);
    var_0 = Struct_1(-1429f, var_0.b, var_0.c, -arg_0.d << (vec4<u32>(_wgslsmith_add_u32(u_input.b.x, abs(global4.c)), ~0u, u_input.a.x, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.c, var_0.c, global4.c), vec4<u32>(global3[_wgslsmith_index_u32(3798u, 12u)], 1u, 4852u, 0u)))) % vec4<u32>(32u)));
    return vec3<u32>(var_0.c & _wgslsmith_sub_u32(3222u, var_0.c), 24635u, _wgslsmith_mod_u32(select(1u, 99517u, !(1105u < global4.c)), ~(~(global3[_wgslsmith_index_u32(1u, 12u)] & 1504u))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<i32>, arg_3: vec3<i32>) -> i32 {
    global1 = vec2<bool>(!(545f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(617f + global4.a) + _wgslsmith_f_op_f32(-global4.a))), global1.x);
    global2 = array<vec3<bool>, 5>();
    var var_0 = func_6(func_5(global4.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(vec3<u32>(17495u, 0u, 1u), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4.a, -1277f))))), global4.a)), _wgslsmith_f_op_f32(max(683f, -214f))));
    let var_1 = Struct_1(global4.a, abs(-29067i), func_5(select(vec4<i32>(arg_2.x, 1i, arg_3.x, 1i) << (vec4<u32>(0u, 4294967295u, 1u, 4379u) % vec4<u32>(32u)), vec4<i32>(global4.d.x, arg_0, arg_0, u_input.c), global1.x) >> (abs(~vec4<u32>(global4.c, var_0.x, global3[_wgslsmith_index_u32(arg_1, 12u)], global3[_wgslsmith_index_u32(u_input.a.x, 12u)])) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-413f + global4.a) * -808f), -369f).c, global4.d);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.a, _wgslsmith_f_op_f32(867f - global4.a))))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1753f, global4.a)), global4.a)));
    return _wgslsmith_sub_i32(min(arg_0, arg_2.x), ~firstLeadingBit(u_input.c) ^ abs(~1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(858f));
    let var_1 = Struct_1(-277f, ~min(u_input.c, func_1(~u_input.c, global4.c | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)], -vec3<i32>(u_input.c, global4.b, -19674i), ~global4.d.xyw)), _wgslsmith_dot_vec4_u32(firstLeadingBit(~abs(vec4<u32>(u_input.e.x, 4294967295u, 0u, 0u))), vec4<u32>(~(~u_input.a.x), ~4294967295u, global3[_wgslsmith_index_u32(1u, 12u)], _wgslsmith_mult_u32(~u_input.e.x, 108313u))), vec4<i32>(min(u_input.c, -2147483647i), global4.d.x, _wgslsmith_dot_vec3_i32((global4.d.wzw >> (u_input.d % vec3<u32>(32u))) & global4.d.xwy, vec3<i32>(1i, u_input.c, u_input.c)), ~reverseBits(global4.b)));
    var var_2 = !select(vec2<bool>(!(true & global1.x), -u_input.c == -u_input.c), select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 26u)]), vec2<bool>(false, false), true), !(!vec2<bool>(global1.x, global1.x)), !func_3()), true);
    var var_3 = select(!(!select(select(vec4<bool>(var_2.x, global0[_wgslsmith_index_u32(var_1.c, 26u)], global0[_wgslsmith_index_u32(1414u, 26u)], false), vec4<bool>(global1.x, var_2.x, false, false), global1.x), vec4<bool>(global1.x, global1.x, global1.x, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 26u)], false, true, true), vec4<bool>(true, false, true, false), false))), vec4<bool>(true, true, all(select(global2[_wgslsmith_index_u32(~40075u, 5u)], vec3<bool>(global0[_wgslsmith_index_u32(global4.c, 26u)], var_2.x, global0[_wgslsmith_index_u32(var_1.c, 26u)]), global0[_wgslsmith_index_u32(~0u, 26u)])), ~u_input.c == 1i), select(vec4<bool>(func_3().x, !(27983i < u_input.c), !func_3().x, !global1.x), !vec4<bool>(true, global1.x || var_2.x, global1.x, global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(7570u, 12u)], 26u)]), select(vec4<bool>(global1.x, global1.x && true, all(vec4<bool>(false, var_2.x, global1.x, var_2.x)), var_1.d.x > -3970i), !select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.c, 12u)], 26u)], false, true), vec4<bool>(true, global0[_wgslsmith_index_u32(global4.c, 26u)], false, true), vec4<bool>(global1.x, global1.x, false, true)), vec4<bool>(false, var_2.x, any(vec4<bool>(false, true, true, var_2.x)), any(vec4<bool>(false, true, false, false))))));
    var_3 = select(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(var_2.x, false, var_3.x, false), select(vec4<bool>(var_3.x, global0[_wgslsmith_index_u32(1u, 26u)], var_3.x, true), vec4<bool>(false, var_2.x, false, var_3.x), global0[_wgslsmith_index_u32(0u, 26u)])), select(!vec4<bool>(true, false, global1.x, true), !vec4<bool>(global0[_wgslsmith_index_u32(89258u, 26u)], true, global1.x, true), !var_3.x), global0[_wgslsmith_index_u32(var_1.c, 26u)]), !(!select(vec4<bool>(var_2.x, global1.x, var_2.x, global1.x), vec4<bool>(true, var_2.x, false, true), true)), global0[_wgslsmith_index_u32(func_5(vec4<i32>(1i, var_1.d.x >> (0u % 32u), 91215i, ~var_1.d.x), _wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a + global4.a), _wgslsmith_f_op_f32(f32(-1f) * -2189f))).c, 26u)]), vec4<bool>(false, false, !any(vec2<bool>(true, var_3.x)), global1.x), var_3.x);
    global1 = vec2<bool>(all(select(select(!var_3.zw, !vec2<bool>(false, var_2.x), global0[_wgslsmith_index_u32(u_input.e.x, 26u)]), !vec2<bool>(global1.x, var_3.x), global0[_wgslsmith_index_u32(global4.c, 26u)])), true);
    global2 = array<vec3<bool>, 5>();
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_add_u32(_wgslsmith_add_u32(var_4.c, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, 75582u), 12u)]), func_5(var_4.d, 1223f, var_4.a).c << (_wgslsmith_div_u32(45753u, global3[_wgslsmith_index_u32(var_4.c, 12u)]) % 32u))));
}

