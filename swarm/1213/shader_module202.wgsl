struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
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

var<private> global0: array<vec4<bool>, 3>;

var<private> global1: i32 = 12722i;

var<private> global2: Struct_2 = Struct_2(false, Struct_1(vec3<bool>(false, true, true), vec3<u32>(0u, 26749u, 1u)), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), Struct_1(vec3<bool>(true, false, false), vec3<u32>(0u, 76194u, 6022u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = firstTrailingBit(~abs(select(vec3<u32>(global2.e.b.x, u_input.a, 4294967295u) & vec3<u32>(4294967295u, u_input.a, 34590u), ~global2.b.b, global2.d.wwy)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-680f - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(375f * _wgslsmith_f_op_f32(arg_0 * arg_0))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2533f, arg_0)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, 1116f), vec2<f32>(-1893f, arg_0))))))) - vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(select(-859f, -1734f, global2.d.x))))), arg_0));
    let var_2 = Struct_2(true, Struct_1(vec3<bool>(all(select(vec4<bool>(global2.e.a.x, global2.e.a.x, global2.d.x, global2.e.a.x), vec4<bool>(false, false, global2.a, global2.e.a.x), global0[_wgslsmith_index_u32(4294967295u, 3u)])), any(!global0[_wgslsmith_index_u32(4294967295u, 3u)]), global2.a), ~(~min(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(0u, 1u, 25643u)))), !vec4<bool>(!all(vec3<bool>(true, global2.b.a.x, global2.c.x)), true, false, global2.d.x), select(!(!select(global2.d, vec4<bool>(global2.a, false, global2.b.a.x, true), false)), global2.d, true | all(select(vec4<bool>(global2.b.a.x, true, global2.c.x, true), global0[_wgslsmith_index_u32(var_0.x, 3u)], true))), global2.e);
    var var_3 = -_wgslsmith_mod_i32(~70061i, firstTrailingBit(abs(i32(-1i) * -25666i)));
    var var_4 = global2.b;
    return var_4.a.x;
}

fn func_2() -> Struct_2 {
    let var_0 = global2.e;
    var var_1 = Struct_1(!(!(!select(vec3<bool>(global2.c.x, global2.c.x, true), vec3<bool>(false, true, false), false))), reverseBits(~u_input.b.yxx));
    let var_2 = Struct_1(vec3<bool>(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(608f + -515f) + -1000f)), global2.e.a.x && true, var_1.a.x), _wgslsmith_div_vec3_u32(global2.e.b, var_1.b));
    var_1 = Struct_1(select(!vec3<bool>(!var_1.a.x, var_2.a.x, true), vec3<bool>(true, select(!var_2.a.x, true, true), true), all(select(vec3<bool>(var_1.a.x, global2.d.x, global2.e.a.x), select(vec3<bool>(false, var_0.a.x, true), vec3<bool>(true, false, var_0.a.x), var_0.a), !var_2.a.x))), _wgslsmith_div_vec3_u32(~max(vec3<u32>(0u, 29622u, global2.b.b.x), vec3<u32>(var_2.b.x, 0u, 12830u)) | ~(~vec3<u32>(global2.e.b.x, 1u, var_2.b.x)), ~_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, global2.e.b.x, var_0.b.x)), ~global2.b.b, abs(vec3<u32>(var_0.b.x, global2.e.b.x, global2.b.b.x)))));
    global2 = Struct_2(!all(!(!vec3<bool>(false, var_1.a.x, var_0.a.x))), global2.b, !vec4<bool>(any(global2.d.zz), global2.b.a.x, false, true), select(global2.d, !select(!vec4<bool>(var_0.a.x, var_2.a.x, true, false), select(global0[_wgslsmith_index_u32(27200u, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)], global2.d.x), select(global0[_wgslsmith_index_u32(var_0.b.x, 3u)], global0[_wgslsmith_index_u32(33656u, 3u)], vec4<bool>(false, global2.a, true, true))), select(global0[_wgslsmith_index_u32(~firstLeadingBit(var_0.b.x), 3u)], select(vec4<bool>(true, true, false, var_0.a.x), select(global2.c, vec4<bool>(global2.e.a.x, global2.a, false, var_0.a.x), var_2.a.x), !vec4<bool>(var_0.a.x, global2.b.a.x, var_1.a.x, false)), true)), global2.e);
    return Struct_2(var_2.a.x, Struct_1(!select(select(vec3<bool>(true, var_2.a.x, var_1.a.x), global2.e.a, var_0.a), global2.e.a, global2.c.xyz), u_input.b.zyw), !select(!vec4<bool>(true, var_1.a.x, var_1.a.x, true), !select(vec4<bool>(var_0.a.x, var_1.a.x, false, true), vec4<bool>(var_1.a.x, var_0.a.x, var_1.a.x, true), global2.d), any(vec2<bool>(false, var_2.a.x))), vec4<bool>(all(vec2<bool>(all(global2.d), var_1.a.x)), !(var_2.a.x && true), var_1.a.x, any(vec4<bool>(true, var_0.a.x, true, global2.e.a.x))), Struct_1(vec3<bool>(var_0.a.x, (var_1.a.x & true) || any(vec2<bool>(true, var_1.a.x)), var_2.a.x), var_2.b));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> Struct_2 {
    let var_0 = global2.b.b;
    global2 = func_2();
    global2 = Struct_2(false, func_2().e, vec4<bool>(-18718i > ~arg_0.x, arg_1, true, global2.a), select(select(!global0[_wgslsmith_index_u32(~0u, 3u)], !global0[_wgslsmith_index_u32(u_input.a, 3u)], !(!vec4<bool>(true, true, arg_1, arg_1))), global2.d, true), global2.e);
    global2 = func_2();
    var var_1 = Struct_1(select(global2.b.a, !global2.b.a, arg_1), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(global2.e.b, ~min(global2.b.b, global2.b.b)), global2.b.b));
    return Struct_2(any(global0[_wgslsmith_index_u32(select(var_1.b.x, _wgslsmith_sub_u32(var_0.x, 4294967295u & u_input.b.x), select(true, true, any(vec4<bool>(false, true, true, false)))), 3u)]), func_2().e, global2.d, select(!global0[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(4294967295u, 10409u), func_2().e.b.x, true), 3u)], select(func_2().c, global2.c, vec4<bool>(true, all(vec2<bool>(true, true)), false, false)), true), Struct_1(vec3<bool>(!arg_1 || true, true, var_1.a.x), ~global2.b.b));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(_wgslsmith_mod_u32(global2.b.b.x & u_input.a, ~4294967295u), arg_0, min(~global2.e.b.x, 1u | arg_1.e.b.x))), vec3<u32>(~(~u_input.b.x), global2.e.b.x, _wgslsmith_mult_u32(arg_1.e.b.x, 85051u) | _wgslsmith_dot_vec3_u32(arg_1.e.b, vec3<u32>(1u, 0u, arg_1.e.b.x))) | select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, arg_0, global2.b.b.x), _wgslsmith_sub_vec3_u32(arg_1.b.b, vec3<u32>(1u, u_input.a, u_input.a))), vec3<u32>(_wgslsmith_add_u32(24533u, 50318u), 17216u, max(arg_0, 1u)), arg_1.c.wyx));
    let var_1 = countOneBits(min(_wgslsmith_add_vec3_u32(firstLeadingBit(global2.b.b), vec3<u32>(var_0.x, 4294967295u, 1u)), min(arg_1.e.b | vec3<u32>(4294967295u, 1u, 25521u), select(arg_1.e.b, vec3<u32>(arg_0, u_input.b.x, 4293u), global2.e.a.x))) ^ arg_1.e.b);
    global0 = array<vec4<bool>, 3>();
    let var_2 = ~vec4<u32>(1u, ~global2.e.b.x, arg_0, ~u_input.b.x ^ ~(arg_0 | global2.e.b.x));
    var_0 = var_2.wzy;
    return global2.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    global1 = i32(-1i) * -61994i;
    global0 = array<vec4<bool>, 3>();
    let var_0 = 1u;
    let var_1 = func_1(max(vec4<i32>(abs(reverseBits(34232i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(7633i, -2843i), vec2<i32>(-19248i, 14829i)), reverseBits(-17310i), -(i32(-1i) * -73520i)), -max(select(vec4<i32>(283i, -4410i, -23173i, 1i), vec4<i32>(2147483647i, -36071i, 0i, 28764i), true), vec4<i32>(1i, 1i, 1i, 1i))), arg_0.a.x);
    let var_2 = u_input.b;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_sub_i32(-func_5(global2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -250f, 2074f, 265f))), func_4(4294967295u, func_1(vec4<i32>(13373i, -1i, 40805i, 1i), false))), firstLeadingBit(_wgslsmith_clamp_i32(~1i, ~_wgslsmith_mult_i32(-1i, 1i), max(14028i, i32(-1i) * -16601i))));
    global2 = Struct_2(global2.a & true, func_1(vec4<i32>(1i, -1i, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(29295i, 0i)), select(vec2<i32>(37178i, 2147483647i), vec2<i32>(-19338i, 1i), global2.c.yw)), 1i), any(vec3<bool>(global2.d.x, false, !global2.a))).e, !func_2().d, global2.d, func_4(global2.b.b.x, func_1(min(~vec4<i32>(1i, -33022i, 2147483647i, 2147483647i), vec4<i32>(1i, 1i, 1i, 1i)), global2.c.x != all(vec4<bool>(global2.d.x, false, true, global2.b.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b.x));
}

