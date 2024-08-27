struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<bool, 28> = array<bool, 28>(true, false, false, true, true, true, true, false, false, true, true, false, false, false, false, false, false, true, true, false, true, false, false, true, false, true, false, false);

var<private> global2: Struct_1;

var<private> global3: array<bool, 1> = array<bool, 1>(false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<u32> {
    global3 = array<bool, 1>();
    let var_0 = -global2.e;
    var var_1 = Struct_1(~global2.a, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + global2.c)), !(any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 28u)], global2.b, global3[_wgslsmith_index_u32(global2.a.x, 1u)], global3[_wgslsmith_index_u32(u_input.a, 1u)])) != true), 3511i);
    global2 = global0[_wgslsmith_index_u32(~(~var_1.a.x) ^ abs(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(var_1.a, vec4<u32>(u_input.a, var_1.a.x, u_input.a, u_input.e)), var_1.a)), 24u)];
    let var_2 = global0[_wgslsmith_index_u32(var_1.a.x, 24u)];
    return ~var_1.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32, arg_3: f32) -> vec3<i32> {
    var var_0 = global0[_wgslsmith_index_u32(~(global2.a.x >> (~_wgslsmith_sub_u32(global2.a.x, ~u_input.a) % 32u)), 24u)];
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1033f) > global2.c, 1050f, all(arg_1.xw), -arg_2);
    var var_1 = Struct_1(~firstLeadingBit(func_3()), false, _wgslsmith_div_f32(289f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1012f * arg_0.c) + _wgslsmith_f_op_f32(step(global2.c, var_0.c)))))), (false != var_0.b) & all(!vec4<bool>(var_0.b, global2.b, false, false)), abs(2147483647i & firstLeadingBit(global2.e)));
    let var_2 = Struct_1(vec4<u32>(func_3().x, 29495u, ~_wgslsmith_div_u32(global2.a.x, u_input.a >> (var_1.a.x % 32u)), var_1.a.x), var_0.d, -1093f, !(!(arg_1.x || arg_1.x)), _wgslsmith_add_i32(~40771i, u_input.b.x >> (_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.a.x, arg_0.a.x), ~global2.a.x) % 32u)));
    let var_3 = countOneBits(vec3<i32>(-1i, countOneBits(_wgslsmith_mod_i32(1i, -var_2.e)), -27214i));
    return -vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b, _wgslsmith_clamp_vec3_i32(u_input.b, var_3, vec3<i32>(2147483647i, arg_2, var_3.x))) >> (var_2.a.x % 32u), _wgslsmith_add_i32(var_2.e, ~global2.e), -max(u_input.b.x, var_0.e | 1568i));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(reverseBits(_wgslsmith_add_i32(-28099i, global2.e << (arg_1.a.x % 32u))) < _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(arg_1.e, u_input.b.x), 1i, global2.e), ~func_2(global0[_wgslsmith_index_u32(1u, 24u)], vec4<bool>(true, arg_0.d, false, false), -1i, arg_0.c)), all(select(vec2<bool>(global3[_wgslsmith_index_u32(0u, 1u)], true), select(!vec2<bool>(arg_0.b, false), select(vec2<bool>(arg_0.b, global3[_wgslsmith_index_u32(global2.a.x, 1u)]), vec2<bool>(false, true), vec2<bool>(arg_0.d, false)), arg_1.d), true)), global3[_wgslsmith_index_u32(0u, 1u)], (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(88660u, global2.a.x, arg_1.a.x), vec3<u32>(arg_0.a.x, 24419u, global2.a.x)), ~1u) >= ~4294967295u) & true);
    let var_1 = Struct_1(vec4<u32>(~(~4294967295u ^ arg_1.a.x), _wgslsmith_add_u32(28644u, u_input.a), ~firstTrailingBit(29072u), ~(~u_input.a | ~4294967295u)), select(true, all(vec4<bool>(var_0.x, 4294967295u >= global2.a.x, all(vec3<bool>(true, true, arg_1.b)), 26554u <= u_input.d)), true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.c, arg_0.c))))), (!all(var_0.ww) || (_wgslsmith_div_f32(-1108f, arg_1.c) <= _wgslsmith_f_op_f32(-201f * arg_0.c))) & ((true & !global2.d) && any(select(vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(arg_1.a.x, 28u)], global1[_wgslsmith_index_u32(0u, 28u)], false), vec4<bool>(true, true, true, var_0.x), vec4<bool>(global2.d, arg_0.d, global3[_wgslsmith_index_u32(arg_1.a.x, 1u)], false)))), arg_0.e);
    var_0 = vec4<bool>(false, var_0.x || false, any(var_0.wyy), global2.b);
    global0 = array<Struct_1, 24>();
    return Struct_1(global2.a, true, -345f, all(vec2<bool>(true, (arg_1.a.x & u_input.d) > (47613u ^ u_input.a))), max(_wgslsmith_clamp_i32(min(arg_1.e, u_input.c), arg_1.e, _wgslsmith_sub_i32(1i, global2.e)), arg_1.e) | var_1.e);
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = global2.c;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2.c + 226f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.c * arg_0.c), arg_0.c, true))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.c, -1645f)) * _wgslsmith_f_op_f32(arg_0.c + arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1129f - 118f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.c, global2.c), vec2<f32>(arg_0.c, 348f), vec2<bool>(arg_0.d, false))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.c, 2120f))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(242f - var_1.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, global2.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1660f) + vec2<f32>(arg_0.c, -1858f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-593f, -1000f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.c, global2.c))), any(vec4<bool>(global2.d, global1[_wgslsmith_index_u32(1u, 28u)], true, global2.b)))) - vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return _wgslsmith_add_vec4_u32(vec4<u32>(countOneBits(11885u), (4294967295u >> (min(arg_0.a.x, arg_0.a.x) % 32u)) & 38399u, 62738u, ~(~_wgslsmith_div_u32(7399u, 84829u))), select(vec4<u32>(_wgslsmith_div_u32(u_input.e, 4294967295u), 63579u, 1u, u_input.a) | _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, u_input.d, global2.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, global2.a.x, 13273u, u_input.d), vec4<u32>(global2.a.x, 4294967295u, 1u, 55233u))), vec4<u32>(1u, _wgslsmith_dot_vec3_u32(~global2.a.wxz, select(vec3<u32>(39698u, arg_0.a.x, global2.a.x), vec3<u32>(arg_0.a.x, 6334u, 4294967295u), false)), 11728u, _wgslsmith_clamp_u32(u_input.a | global2.a.x, u_input.e, u_input.d)), vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 1u), 28u)] & true, any(!vec2<bool>(global2.d, true)), arg_0.b, func_1(Struct_1(vec4<u32>(global2.a.x, arg_0.a.x, u_input.d, 23604u), arg_0.d, arg_0.c, arg_0.b, arg_0.e), func_1(arg_0, Struct_1(vec4<u32>(global2.a.x, 1u, 1684u, 0u), false, var_1.x, true, -16155i))).b)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(countOneBits(func_4(func_1(Struct_1(vec4<u32>(global2.a.x, 23999u, global2.a.x, u_input.a), true, global2.c, global2.b, -2147483647i), Struct_1(vec4<u32>(global2.a.x, 0u, 61265u, 4294967295u), true, 417f, global1[_wgslsmith_index_u32(u_input.d, 28u)], 36500i)))), true, 1258f, true, _wgslsmith_mult_i32(min(u_input.b.x >> (5838u % 32u), i32(-1i) * -6856i), abs(global2.e)) >> (u_input.d % 32u));
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(16232u, global2.a.x), ~(~(vec2<u32>(u_input.a, global2.a.x) << (global2.a.zy % vec2<u32>(32u)))));
    var var_1 = global2.a.xy;
    var var_2 = u_input.b.yz;
    let var_3 = vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)] & select(!(u_input.b.x > var_2.x), !global2.b, !func_1(Struct_1(global2.a, true, -324f, false, 0i), global0[_wgslsmith_index_u32(28451u, 24u)]).b), !((_wgslsmith_f_op_f32(3011f * global2.c) > 1f) && (any(vec3<bool>(global2.b, global3[_wgslsmith_index_u32(1u, 1u)], false)) && all(vec2<bool>(false, global2.b)))), global1[_wgslsmith_index_u32(global2.a.x, 28u)]);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, func_1(func_1(Struct_1(vec4<u32>(0u, var_0.x, global2.a.x, var_0.x), global1[_wgslsmith_index_u32(~1u, 28u)], _wgslsmith_f_op_f32(min(global2.c, 556f)), global3[_wgslsmith_index_u32(1637u, 1u)], global2.e), func_1(func_1(global0[_wgslsmith_index_u32(1u, 24u)], Struct_1(global2.a, true, -680f, true, 2147483647i)), Struct_1(vec4<u32>(35373u, var_0.x, var_1.x, var_1.x), true, -685f, true, 39476i))), func_1(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(firstTrailingBit(~1u), 24u)])).c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(255f, _wgslsmith_f_op_f32(abs(2162f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-1277f, global2.c), vec2<f32>(358f, 1311f)), vec2<f32>(1f, 1f))))));
}

