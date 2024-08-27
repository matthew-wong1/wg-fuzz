struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-596f, -253f, -930f);

var<private> global1: array<bool, 11>;

var<private> global2: array<u32, 9> = array<u32, 9>(4294967295u, 57874u, 13816u, 0u, 39530u, 52132u, 10109u, 1u, 4294967295u);

var<private> global3: Struct_3 = Struct_3(vec4<u32>(0u, 32632u, 4294967295u, 17403u), -167f, Struct_2(Struct_1(1000f, -20361i), Struct_1(-827f, i32(-2147483648)), vec4<u32>(1859u, 1u, 28780u, 4294967295u), -1i, -222f), Struct_2(Struct_1(1033f, -1i), Struct_1(472f, i32(-2147483648)), vec4<u32>(4744u, 5998u, 4294967295u, 53930u), 0i, 1185f), true);

var<private> global4: vec4<i32> = vec4<i32>(-12517i, -1i, -15327i, 2147483647i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    var var_0 = global0.zy;
    let var_1 = !select(vec4<bool>(true, !any(vec4<bool>(true, true, false, global3.e)), any(select(vec4<bool>(global3.e, false, false, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], false, arg_0.x, false), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(global3.c.c.x, 11u)], false, global1[_wgslsmith_index_u32(68140u, 11u)]))), any(vec2<bool>(global3.e, global1[_wgslsmith_index_u32(u_input.d.x, 11u)]))), vec4<bool>(global4.x == -global4.x, all(vec4<bool>(true, global1[_wgslsmith_index_u32(28098u, 11u)], global3.e, true)), (global1[_wgslsmith_index_u32(50263u, 11u)] || global3.e) | global3.e, any(vec4<bool>(global3.e, true, false, true))), arg_0.x);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), -1499f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1596f - global0.x) * _wgslsmith_f_op_f32(step(global3.c.e, _wgslsmith_f_op_f32(970f - var_0.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2050f)) + _wgslsmith_f_op_f32(f32(-1f) * -1589f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_i32(global3.c.a.b, _wgslsmith_sub_i32(global4.x, 17064i) & global3.d.d) >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(global3.d.c, vec4<u32>(13412u, 20709u, u_input.a.x, global3.d.c.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.a.x, 87225u, u_input.d.x), global3.a.zzx)), 9u)], 9u)] % 32u));
    let var_3 = !(!arg_0);
    return global3.c.a.b;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: bool, arg_3: i32) -> i32 {
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.d.e, -1000f, -1466f), vec3<f32>(-1411f, global0.x, global3.d.b.a), vec3<bool>(global1[_wgslsmith_index_u32(arg_0.x, 11u)], false, global1[_wgslsmith_index_u32(8819u, 11u)]))))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(-2495f + 794f), global3.c.b.a) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1147f, 1000f, 1000f), vec3<f32>(global0.x, global0.x, -889f))) - _wgslsmith_div_vec3_f32(vec3<f32>(-148f, global0.x, global0.x), vec3<f32>(global0.x, 233f, -675f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-564f, 1913f, global0.x), vec3<f32>(global3.d.a.a, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, 334f), vec3<f32>(global3.c.a.a, 355f, global3.d.e)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1274f, global0.x, global3.c.e) - vec3<f32>(-662f, global0.x, 462f))))))));
    var var_0 = true;
    var var_1 = u_input.a;
    var var_2 = vec4<f32>(global0.x, global3.d.b.a, global0.x, -176f);
    let var_3 = Struct_3(~(~global3.c.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -612f))), 2147483647i), Struct_1(517f, -(~u_input.b)), ~vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 9u)] | 4294967295u, 4294967295u, _wgslsmith_clamp_u32(global3.d.c.x, u_input.d.x, 0u), ~0u), u_input.b, _wgslsmith_f_op_f32(-global3.b)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-global0.x), global3.d.b.b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.a.a - 1000f)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global4.x, u_input.b), vec2<i32>(global4.x, 26800i)), ~15208i)), u_input.a, (-u_input.c & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, arg_1.x, 27214i, arg_1.x), vec4<i32>(-4416i, global4.x, arg_1.x, -33264i))) & -9354i, 943f), true);
    return ~firstTrailingBit(arg_1.x);
}

fn func_2() -> vec4<i32> {
    let var_0 = global3.d.b;
    let var_1 = u_input.a;
    let var_2 = global3.c;
    let var_3 = false;
    let var_4 = 0u;
    return vec4<i32>((_wgslsmith_mod_i32(var_2.a.b, var_2.d) << (firstLeadingBit(var_2.c.x) % 32u)) << ((var_1.x << (~_wgslsmith_mod_u32(u_input.a.x, 12531u) % 32u)) % 32u), var_2.b.b, func_4(var_2.c.yzx, vec3<i32>(~0i, reverseBits(u_input.b), -_wgslsmith_mod_i32(0i, 66681i)), any(vec3<bool>(all(vec3<bool>(false, global3.e, global1[_wgslsmith_index_u32(5904u, 11u)])), any(vec2<bool>(true, global3.e)), true)), _wgslsmith_mult_i32(abs(u_input.c), countOneBits(func_3(vec2<bool>(var_3, global1[_wgslsmith_index_u32(var_1.x, 11u)]))))), firstLeadingBit(firstTrailingBit(-1i)));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = global4.wyw;
    var var_1 = global3.d.a;
    global4 = reverseBits(~_wgslsmith_mod_vec4_i32(~max(vec4<i32>(-1i, 103108i, -1i, 21962i), vec4<i32>(global3.d.b.b, 1i, 15208i, 2147483647i)), _wgslsmith_clamp_vec4_i32(func_2(), ~vec4<i32>(2147483647i, var_0.x, arg_1, 13136i), countOneBits(vec4<i32>(11677i, 2147483647i, -12058i, var_1.b)))));
    var var_2 = global3.c.a;
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.a, _wgslsmith_f_op_f32(trunc(394f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 913f, var_2.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, 643f, -281f) * vec3<f32>(global0.x, global3.d.e, 642f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-207f, var_2.a, -175f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(651f, global3.b, 1128f) - vec3<f32>(global0.x, -573f, 466f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.b)) + _wgslsmith_f_op_f32(sign(global0.x))) * var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1046f * var_2.a)), global0.x));
    return global3.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(global0.x + 476f), global3.c.b.b);
    var_0 = func_1(vec2<bool>(global2[_wgslsmith_index_u32(abs(u_input.d.x), 9u)] <= ~17929u, global3.e), abs(~firstTrailingBit(var_0.b >> (41287u % 32u))));
    var var_1 = !select(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)] ^ global3.d.c.x, 11u)], global1[_wgslsmith_index_u32(u_input.d.x, 11u)], -1141f < var_0.a), select(!select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 11u)], false, false, global1[_wgslsmith_index_u32(22014u, 11u)]), vec4<bool>(false, global3.e, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)], 11u)], true), false), !(!vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 11u)], false, true)), global1[_wgslsmith_index_u32(0u, 11u)]), vec4<bool>(global3.e, true, !all(vec4<bool>(false, false, global3.e, true)), global3.e));
    let var_2 = Struct_2(Struct_1(-307f, func_3(vec2<bool>(false | global1[_wgslsmith_index_u32(15195u, 11u)], !var_1.x))), global3.c.a, vec4<u32>(u_input.a.x, 1u, 1u, ~(u_input.a.x & 4294967295u)) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(global3.c.c.yyx), ~u_input.d.www), _wgslsmith_mult_u32(u_input.a.x, u_input.d.x) >> (18189u % 32u), 75998u, ~62882u) % vec4<u32>(32u)), 24447i, var_0.a);
    let var_3 = Struct_2(func_1(var_1.yy, func_1(!var_1.xx, abs(0i) >> (select(global3.c.c.x, 4294967295u, var_1.x) % 32u)).b), global3.c.b, _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a.x, 4294967295u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(5088u, 3565u, 1u, global3.c.c.x), ~vec4<u32>(23778u, 116936u, 17978u, 38653u))), ~(-global4.x), global3.d.b.a);
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-297f - -1077f), global3.c.b.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(var_3.e)), _wgslsmith_f_op_f32(-890f + var_2.e)))));
    let var_5 = vec3<f32>(-1091f, _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(min(var_3.a.a, _wgslsmith_f_op_f32(global3.c.e * _wgslsmith_f_op_f32(ceil(var_2.a.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().zyw, u_input.d.wxz);
}

