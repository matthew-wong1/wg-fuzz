struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(0u, 39477u, 1u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 1u, 13482u));

var<private> global1: Struct_4;

var<private> global2: array<u32, 18> = array<u32, 18>(65554u, 75148u, 4294967295u, 24721u, 15752u, 103837u, 43147u, 1u, 48497u, 0u, 14780u, 0u, 10302u, 38280u, 92081u, 4294967295u, 0u, 94839u);

var<private> global3: Struct_4 = Struct_4(vec4<i32>(1i, -4463i, 2147483647i, -1i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_5(any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, false)))), u_input.a);
    global0 = array<vec3<u32>, 3>();
    let var_1 = vec2<f32>(222f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1481f + -123f), _wgslsmith_f_op_f32(trunc(1163f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -362f)))) - _wgslsmith_f_op_f32(min(354f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(638f, 747f)))))));
    var var_2 = Struct_2(Struct_1(all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(var_0.a, var_0.a, var_0.a, false))), 34578u & _wgslsmith_div_u32(58425u & global2[_wgslsmith_index_u32(74689u, 18u)], ~1u), global1.a.yw), Struct_1(false, min(firstLeadingBit(_wgslsmith_sub_u32(u_input.a, 4294967295u)), 4294967295u | min(var_0.b, 4294967295u)), global3.a.wy), Struct_1(var_0.a, ~_wgslsmith_mod_u32(~var_0.b, _wgslsmith_mult_u32(var_0.b, var_0.b)), vec2<i32>(-33453i, global3.a.x)), Struct_1(true, ~firstLeadingBit(~u_input.a), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(global3.a.xy, global1.a.zx), vec2<i32>(global1.a.x, global3.a.x)) | vec2<i32>(~(-27824i), -45983i)), Struct_1((~global2[_wgslsmith_index_u32(39594u, 18u)] == var_0.b) == all(select(vec4<bool>(true, var_0.a, true, var_0.a), vec4<bool>(var_0.a, var_0.a, false, true), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a))), ~u_input.a, ~abs(global1.a.yy)));
    global1 = Struct_4(_wgslsmith_mod_vec4_i32(~vec4<i32>(0i, -43308i, 2147483647i, -u_input.b), vec4<i32>(27671i, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(-3687i, -10167i)), ~0i) & vec4<i32>(firstTrailingBit(global3.a.x), var_2.c.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, var_2.e.c.x, global3.a.x), vec3<i32>(global3.a.x, 5802i, global1.a.x)), -1i)));
    return vec2<bool>(!(!(!var_2.c.a)), var_2.b.a);
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1176f)), -707f)))));
    var var_1 = Struct_3(func_3(), !(false && !select(true, true, false)), select(select(vec3<bool>(any(vec3<bool>(false, true, false)), true, all(vec4<bool>(false, true, false, true))), vec3<bool>(1090f <= var_0, true, true), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, _wgslsmith_add_u32(28197u, global2[_wgslsmith_index_u32(u_input.a, 18u)]) > countOneBits(u_input.a))), vec4<f32>(-962f, _wgslsmith_f_op_f32(ceil(var_0)), var_0, 714f));
    global0 = array<vec3<u32>, 3>();
    let var_2 = Struct_3(vec2<bool>(all(select(!vec3<bool>(var_1.c.x, true, true), var_1.c, !var_1.b)), var_1.c.x), select(var_1.c.x, true, select(var_0 < _wgslsmith_div_f32(var_1.d.x, -828f), countOneBits(global3.a.x) > _wgslsmith_div_i32(global3.a.x, global1.a.x), true)), select(vec3<bool>(true, var_1.b | (true | var_1.b), ~1i >= u_input.b), var_1.c, !(_wgslsmith_div_f32(-368f, 994f) != _wgslsmith_f_op_f32(max(-1303f, var_0)))), vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -718f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-663f))))));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.d * vec4<f32>(var_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-457f))), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.d.x, var_2.d.x, true)) * _wgslsmith_f_op_f32(f32(-1f) * -270f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(202f)), var_2.d.x, 1356f, _wgslsmith_f_op_f32(-1000f * var_2.d.x))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(sign(var_0))), _wgslsmith_f_op_f32(var_1.d.x * -198f), -2122f, var_1.d.x)));
    return var_1.c;
}

fn func_1(arg_0: Struct_5, arg_1: vec3<bool>) -> vec2<f32> {
    let var_0 = Struct_3(!select(arg_1.zz, arg_1.yy, true), any(select(!(!vec4<bool>(true, arg_0.a, arg_0.a, false)), vec4<bool>(false, false, all(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), arg_1.x), arg_0.b > u_input.a)), !(!func_2()), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -694f)), _wgslsmith_f_op_f32(ceil(445f)), -1847f, -792f));
    var var_1 = ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(46863u, 18u)], 37711u), 18u)] | arg_0.b, select(~min(61416u, 75794u), _wgslsmith_mod_u32(~arg_0.b, countOneBits(arg_0.b)), true)), 3u)];
    global1 = Struct_4(abs(global1.a));
    let var_2 = vec2<i32>(0i, _wgslsmith_dot_vec3_i32(global1.a.wyy, global1.a.ywx));
    var var_3 = Struct_4(-vec4<i32>(global3.a.x, abs(_wgslsmith_mod_i32(global3.a.x, -41703i)), -var_2.x, _wgslsmith_dot_vec3_i32(global1.a.zwy, vec3<i32>(-24703i, 20557i, -1i))));
    return vec2<f32>(var_0.d.x, var_0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec3_i32(global1.a.wzw, _wgslsmith_mult_vec3_i32(~vec3<i32>(-11067i, global1.a.x, 2147483647i), firstLeadingBit(global1.a.ywz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1534f, -837f) * vec2<f32>(-1310f, 1955f)), vec2<f32>(1377f, -105f)))), ~u_input.a, _wgslsmith_f_op_vec2_f32(func_1(Struct_5(!all(vec3<bool>(false, true, false)), max(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(55495u, 18u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)]), u_input.a)), select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true))))), countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(6959u, 18u)], 18u)], 18u)], (97700u | u_input.a) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, global2[_wgslsmith_index_u32(u_input.a, 18u)], global2[_wgslsmith_index_u32(79901u, 18u)]), vec4<u32>(u_input.a, 4294967295u, global2[_wgslsmith_index_u32(32199u, 18u)], 0u)) % 32u))));
}

