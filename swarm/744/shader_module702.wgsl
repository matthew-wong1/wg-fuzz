struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<i32, 21> = array<i32, 21>(0i, 1i, -33214i, -1i, 30339i, -4525i, 13867i, 2147483647i, 20554i, -61920i, -10129i, i32(-2147483648), 0i, 1i, 1i, 24030i, -82590i, i32(-2147483648), 31938i, 48200i, 15781i);

var<private> global2: array<bool, 1>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = select(!(!vec4<bool>(-16808i < u_input.b.x, any(vec3<bool>(arg_1.d, false, global2[_wgslsmith_index_u32(8961u, 1u)])), true, u_input.e == 4294967295u)), vec4<bool>(!((u_input.e >> (u_input.e % 32u)) > ~4294967295u), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e, 4294967295u), 1u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(417f * arg_1.b.a.x)) >= -361f, global0.x), arg_1.b.b & global2[_wgslsmith_index_u32(~66652u, 1u)]);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_0, arg_1.c.x, true)), _wgslsmith_f_op_f32(1988f - arg_0), all(var_0.xyx))), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(min(-558f, -358f)), !var_0.x))) + arg_1.b.a) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_1.b.a.x), vec2<f32>(arg_0, 1694f), vec2<bool>(global0.x, true))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, arg_0)), vec2<bool>(true, u_input.e >= 17384u)))));
    global1 = array<i32, 21>();
    var var_2 = arg_1;
    let var_3 = u_input.e | 1u;
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1.a.x, Struct_2(vec3<f32>(354f, 1000f, 427f), Struct_1(vec2<f32>(-305f, arg_1.a.x), false), vec3<f32>(1768f, arg_1.a.x, arg_1.a.x), global2[_wgslsmith_index_u32(u_input.e, 1u)], Struct_1(arg_1.a, true))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.x, arg_1.a.x) + _wgslsmith_f_op_f32(-993f * arg_1.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, 1658f, 555f)))), Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.a), _wgslsmith_div_i32(u_input.c.x, countOneBits(u_input.a)) > firstTrailingBit(global1[_wgslsmith_index_u32(1u, 21u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-441f * arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -224f), 1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.a.x, arg_1.a.x, 998f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(237f, arg_1.a.x, -709f))))), arg_0.x <= 64717u, arg_1);
    let var_1 = select(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.x, 46911u), 1u)], arg_1.b), select(vec2<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 1u)], true, arg_1.b)), -global1[_wgslsmith_index_u32(4294967295u, 21u)] == u_input.d), vec2<bool>(true, true), !select(!vec2<bool>(var_0.b.b, false), vec2<bool>(false, var_0.e.b), false)), !select(vec2<bool>(true, any(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.e, 1u)]))), select(!vec2<bool>(false, arg_1.b), vec2<bool>(true, true), vec2<bool>(true, arg_1.b)), select(select(vec2<bool>(true, global2[_wgslsmith_index_u32(25675u, 1u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.e, 1u)]), vec2<bool>(true, var_0.e.b)), vec2<bool>(false, true), false)));
    let var_2 = _wgslsmith_sub_i32(-1i, u_input.c.x);
    let var_3 = ~vec4<i32>(_wgslsmith_sub_i32(var_2, u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.b, _wgslsmith_mult_vec2_i32(~vec2<i32>(58398i, u_input.c.x), abs(u_input.b))), 2147483647i, _wgslsmith_sub_i32(-(~0i), u_input.d));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c * vec3<f32>(1631f, 1535f, arg_1.a.x)) - vec3<f32>(-719f, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(abs(var_0.c.x)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-716f, -318f, _wgslsmith_f_op_f32(-352f * 1201f)) - var_0.c)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.e.a.x))), _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(-var_0.c.x))), false), vec3<f32>(_wgslsmith_f_op_f32(-222f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-199f, 1818f, false)) + _wgslsmith_f_op_f32(f32(-1f) * -1155f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(var_0.b.a.x + 953f), Struct_2(var_0.a, arg_1, vec3<f32>(arg_1.a.x, -1565f, -984f), false, var_0.e)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.x, arg_1.a.x)), _wgslsmith_f_op_f32(-689f - _wgslsmith_f_op_f32(func_3(arg_1.a.x, Struct_2(var_0.a, Struct_1(var_0.b.a, var_1.x), vec3<f32>(837f, 1000f, var_0.c.x), var_0.d, Struct_1(arg_1.a, true))))))), any(vec4<bool>(!select(global0.x, var_1.x, true), arg_0.x <= 1u, all(!vec3<bool>(var_0.e.b, false, var_0.b.b)), !any(vec2<bool>(var_1.x, false)))), var_0.b);
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -985f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-331f - _wgslsmith_f_op_f32(round(var_0.e.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(716f - var_0.b.a.x)) * 149f)), arg_1, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(var_0.c, vec3<f32>(var_0.e.a.x, arg_1.a.x, arg_1.a.x), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.e, 1u)], true))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c + var_0.a)), vec3<bool>(all(var_1), u_input.e != ~0u, var_3.x >= 0i))), !all(select(vec4<bool>(global0.x, var_0.e.b, true, false), vec4<bool>(true, true, false, false), all(vec4<bool>(false, global2[_wgslsmith_index_u32(11973u, 1u)], arg_1.b, true)))), var_0.e);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: vec4<bool>) -> bool {
    var var_0 = max(abs(u_input.e), 0u);
    global0 = vec2<bool>(countOneBits(~u_input.e) <= min(arg_2.x, _wgslsmith_mod_u32(u_input.e, u_input.e)), true);
    return false;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> vec3<f32> {
    global0 = select(vec2<bool>(true, true), select(!(!vec2<bool>(arg_1.b, arg_1.b)), vec2<bool>(all(select(vec3<bool>(global0.x, true, true), vec3<bool>(false, global0.x, false), vec3<bool>(true, true, global0.x))), arg_1.b), select(select(select(vec2<bool>(false, arg_1.b), vec2<bool>(arg_1.b, global0.x), vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 1u)], global2[_wgslsmith_index_u32(u_input.e, 1u)])), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(1u, 1u)], true)), true), !(!vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.e, 1u)])), vec2<bool>(true, true))), vec2<bool>(true, all(vec3<bool>(!global0.x, any(vec2<bool>(false, true)), true))));
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1300f)), arg_0.x))), arg_1, vec3<f32>(-780f, arg_0.x, 189f), any(vec3<bool>(func_4(func_2(vec4<u32>(u_input.e, u_input.e, 28829u, 4294967295u), Struct_1(arg_1.a, arg_1.b)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a.x, arg_0.x, -1263f, 479f), vec4<f32>(-603f, 1240f, -894f, 1629f), vec4<bool>(global0.x, global0.x, global0.x, true))), max(vec2<u32>(u_input.e, u_input.e), vec2<u32>(0u, u_input.e)), !vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.e, 1u)], global2[_wgslsmith_index_u32(u_input.e, 1u)])), all(vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 1u)], global0.x)), any(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 1u)], global0.x)))), arg_1);
    var var_1 = arg_1;
    var var_2 = Struct_1(var_1.a, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e, ~76288u), 21u)] >= (~global1[_wgslsmith_index_u32(64445u, 21u)] | global1[_wgslsmith_index_u32(929u, 21u)]));
    global0 = select(!vec2<bool>(!var_2.b, true), !vec2<bool>(false, any(vec3<bool>(true, true, true))), true);
    return _wgslsmith_f_op_vec3_f32(var_0.a * var_0.a);
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> bool {
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1851f, 465f) * vec2<f32>(949f, 2132f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1263f) - vec2<f32>(1000f, 1714f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1207f, -2298f)), !(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 1u)], true), false)))), !global2[_wgslsmith_index_u32(0u, 1u)]);
    var var_1 = vec3<bool>(true, !(!all(!vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.e, 1u)], global2[_wgslsmith_index_u32(28081u, 1u)], false))), func_5(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec2_f32(-var_0.a), var_0)), abs(global1[_wgslsmith_index_u32(0u, 21u)]) > ~(-44921i), Struct_1(var_0.a, global0.x && global0.x)));
    global0 = var_1.zz;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_i32(-55841i, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.a, -27800i), vec3<i32>(u_input.b.x, 69590i, global1[_wgslsmith_index_u32(u_input.e, 21u)])))), abs(select(_wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], -27477i, -625i, -39656i), vec4<i32>(u_input.d, u_input.c.x, -5233i, u_input.d)), select(vec4<i32>(u_input.b.x, u_input.c.x, 0i, -8664i), vec4<i32>(0i, 46768i, 1i, global1[_wgslsmith_index_u32(4294967295u, 21u)]), var_0.b), any(vec4<bool>(true, true, global2[_wgslsmith_index_u32(27549u, 1u)], var_1.x)))) >> (vec4<u32>(u_input.e, 4294967295u, _wgslsmith_sub_u32(~u_input.e, min(4294967295u, 4294967295u)), u_input.e) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(~(~0u), ~_wgslsmith_sub_u32(u_input.e, u_input.e), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, 54712u, u_input.e), vec3<u32>(23794u, u_input.e, u_input.e)), ~vec3<u32>(22840u, 1u, 1u)), 17819u)), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-46923i), -1i, global1[_wgslsmith_index_u32(u_input.e, 21u)] >> (reverseBits(21647u) % 32u), reverseBits(u_input.a)), vec4<i32>(12795i, 13202i, -1i, u_input.d)));
}

