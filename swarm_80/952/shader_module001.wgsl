struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(true, Struct_2(Struct_1(-467f))), Struct_3(true, Struct_2(Struct_1(-1459f))), Struct_3(true, Struct_2(Struct_1(-1495f))), Struct_3(true, Struct_2(Struct_1(1850f))), Struct_3(false, Struct_2(Struct_1(868f))), Struct_3(false, Struct_2(Struct_1(797f))), Struct_3(false, Struct_2(Struct_1(1711f))), Struct_3(true, Struct_2(Struct_1(2836f))), Struct_3(false, Struct_2(Struct_1(-1060f))), Struct_3(false, Struct_2(Struct_1(355f))), Struct_3(false, Struct_2(Struct_1(931f))), Struct_3(false, Struct_2(Struct_1(159f))), Struct_3(true, Struct_2(Struct_1(-1290f))), Struct_3(true, Struct_2(Struct_1(-369f))), Struct_3(true, Struct_2(Struct_1(773f))), Struct_3(true, Struct_2(Struct_1(-1000f))), Struct_3(true, Struct_2(Struct_1(150f))), Struct_3(false, Struct_2(Struct_1(-705f))), Struct_3(false, Struct_2(Struct_1(-2136f))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_3) -> u32 {
    global0 = array<Struct_3, 19>();
    let var_0 = _wgslsmith_f_op_f32(max(arg_1.b.a.a, -252f)) < _wgslsmith_f_op_f32(arg_3.b.a.a - _wgslsmith_f_op_f32(258f * _wgslsmith_f_op_f32(arg_3.b.a.a - _wgslsmith_f_op_f32(step(-1264f, 640f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.a.a), _wgslsmith_f_op_f32(ceil(-996f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1437f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(817f, 964f))))))));
    global0 = array<Struct_3, 19>();
    var var_2 = 486f;
    return abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, ~arg_2.a, u_input.c), ~(~(vec4<u32>(65054u, 0u, 4294967295u, u_input.c) << (vec4<u32>(arg_2.a, 1326u, u_input.a, u_input.c) % vec4<u32>(32u))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<i32>) -> u32 {
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    var var_0 = ~vec3<u32>(u_input.c, ~(~u_input.a), 4663u | min(func_3(vec4<bool>(false, arg_0.x, false, arg_0.x), global0[_wgslsmith_index_u32(28387u, 19u)], Struct_4(u_input.a, vec2<bool>(arg_0.x, true)), Struct_3(arg_0.x, Struct_2(Struct_1(arg_1)))), 49119u));
    var_0 = countOneBits(~firstLeadingBit(max(~vec3<u32>(u_input.c, 1u, var_0.x), ~vec3<u32>(6850u, 4294967295u, u_input.d))));
    return _wgslsmith_sub_u32(var_0.x << ((var_0.x ^ countOneBits(42451u)) % 32u), u_input.a);
}

fn func_4(arg_0: u32) -> u32 {
    let var_0 = max(_wgslsmith_div_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(arg_0, 66954u) % vec2<u32>(32u)), ~vec2<u32>(u_input.d, 44560u))), countOneBits(~countOneBits(vec2<u32>(u_input.d, 80296u)))), ~min(vec2<u32>(4294967295u, func_3(vec4<bool>(true, false, true, true), global0[_wgslsmith_index_u32(11461u, 19u)], Struct_4(85829u, vec2<bool>(true, true)), global0[_wgslsmith_index_u32(arg_0, 19u)])), vec2<u32>(0u, arg_0) | vec2<u32>(arg_0, u_input.c)));
    global0 = array<Struct_3, 19>();
    let var_1 = Struct_4(abs(43243u), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))));
    var var_2 = false;
    var_2 = !var_1.b.x;
    return 1u;
}

fn func_5(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(floor(233f)));
}

fn func_6(arg_0: Struct_1) -> Struct_5 {
    var var_0 = arg_0.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1468f, _wgslsmith_f_op_f32(func_5(Struct_4(u_input.a, vec2<bool>(true, false)), vec4<i32>(-2147483647i, -7709i, u_input.b.x, -15767i), Struct_3(true, Struct_2(arg_0)), global0[_wgslsmith_index_u32(3229u, 19u)]).a * _wgslsmith_f_op_f32(min(-1359f, 1297f))), -259f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1034f, _wgslsmith_f_op_f32(trunc(arg_0.a)), 324f)))));
    var var_2 = func_5(Struct_4(38899u, vec2<bool>(true, any(vec2<bool>(true, true)) | true)), -select(-_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(0i, u_input.b.x, 43021i, u_input.b.x)), ~vec4<i32>(u_input.b.x, u_input.b.x, -39019i, 0i), true), global0[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(u_input.d | u_input.a, 1u)), 19u)], Struct_3(false, Struct_2(func_5(Struct_4(u_input.d, vec2<bool>(false, false)), ~vec4<i32>(2147483647i, 22502i, -23927i, u_input.b.x), global0[_wgslsmith_index_u32(u_input.a, 19u)], Struct_3(false, Struct_2(Struct_1(444f)))))));
    var_0 = 156f;
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), 418f)))));
    return Struct_5(Struct_4(u_input.a, !select(vec2<bool>(false, false), vec2<bool>(false, false), true)));
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_3, 19>();
    let var_0 = func_6(func_5(Struct_4(func_4(func_2(vec3<bool>(false, true, false), -961f, u_input.b)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true))), ~(-vec4<i32>(u_input.b.x, 1i, 0i, 1i)) >> (vec4<u32>(107505u, 64546u, ~1u, ~0u) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(u_input.d, 19u)], global0[_wgslsmith_index_u32(min(abs(0u), ~_wgslsmith_sub_u32(1u, u_input.a)), 19u)]));
    global0 = array<Struct_3, 19>();
    var var_1 = false;
    var var_2 = func_6(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(457f, -907f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1177f - 930f) - -473f)))));
    return Struct_2(func_5(Struct_4(countOneBits(firstLeadingBit(var_0.a.a)), var_2.a.b), _wgslsmith_mod_vec4_i32(abs(reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1i))), vec4<i32>(~2147483647i, 10453i, _wgslsmith_sub_i32(u_input.b.x, -1i), -u_input.b.x)), Struct_3(all(vec3<bool>(true, var_0.a.b.x, true)) & (var_2.a.b.x | var_0.a.b.x), Struct_2(Struct_1(-797f))), global0[_wgslsmith_index_u32(0u, 19u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<Struct_3, 19>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-470f - _wgslsmith_f_op_f32(-var_0.a.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a * -1796f) * var_0.a.a)));
    let var_2 = u_input.b.x;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-120f * _wgslsmith_f_op_f32(-1311f - _wgslsmith_f_op_f32(var_0.a.a * -552f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1279f - -212f))))), _wgslsmith_f_op_f32(round(-124f)), _wgslsmith_f_op_f32(-1f));
    global0 = array<Struct_3, 19>();
    let var_4 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1023f))))), 842f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(698f)));
}

