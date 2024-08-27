struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<f32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool;

var<private> global2: f32;

var<private> global3: array<f32, 11> = array<f32, 11>(-242f, -267f, -1020f, 951f, -436f, 362f, 579f, -171f, -1108f, -857f, 280f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: bool, arg_3: vec2<u32>) -> vec3<f32> {
    var var_0 = u_input.b;
    let var_1 = global3[_wgslsmith_index_u32(arg_3.x, 11u)];
    global0 = _wgslsmith_clamp_vec2_i32(u_input.a.zy, u_input.a.zx, vec2<i32>(-75701i, countOneBits(u_input.a.x)));
    let var_2 = Struct_2(arg_1.zwy, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b, 11u)] + 291f))), -766f, global3[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(4294967295u, u_input.b)), 11u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(~arg_0), ~arg_3.x), 11u)]));
    global0 = u_input.a.yx;
    return vec3<f32>(var_2.b.x, _wgslsmith_f_op_f32(1f + global3[_wgslsmith_index_u32(37179u, 11u)]), var_2.b.x);
}

fn func_3() -> bool {
    global2 = -158f;
    let var_0 = Struct_3(Struct_1(true, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(1269f - 1208f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 11u)])), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-129f, global3[_wgslsmith_index_u32(1u, 11u)])))))), -25658i, vec2<i32>(-42989i, ~abs(global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), 11u)], _wgslsmith_div_f32(371f, global3[_wgslsmith_index_u32(u_input.b, 11u)]), -893f))), select(_wgslsmith_sub_vec4_i32(vec4<i32>(32428i, ~u_input.a.x, -13865i, max(global0.x, u_input.a.x)), vec4<i32>(28568i, global0.x, -1i, global0.x) | ~vec4<i32>(global0.x, 0i, u_input.a.x, global0.x)), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a.x, global0.x), u_input.a.x), u_input.a.x, u_input.a.x, -1i), vec4<bool>(any(vec3<bool>(true, true, true)), false, any(vec4<bool>(true, true, true, true)), 0u < u_input.b)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(countOneBits(5529u)), 81986u, u_input.b, ~_wgslsmith_add_u32(u_input.b, 0u)), ~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) ^ _wgslsmith_clamp_vec4_u32(~vec4<u32>(56904u, 97892u, u_input.b, 1u), firstLeadingBit(vec4<u32>(1u, u_input.b, u_input.b, u_input.b)), select(vec4<u32>(1u, u_input.b, 58207u, 48355u), vec4<u32>(1u, 1u, u_input.b, 1u), true))), 11u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 11u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 11u)] * -364f), _wgslsmith_f_op_f32(905f + global3[_wgslsmith_index_u32(1u, 11u)])))), (vec2<i32>(-9898i << (u_input.b % 32u), -4755i >> (u_input.b % 32u)) ^ vec2<i32>(-1i, 2147483647i & u_input.a.x)) << (~select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, u_input.b), vec2<bool>(true, true)) % vec2<u32>(32u)));
    let var_1 = ~(u_input.b >> (u_input.b % 32u));
    global1 = !var_0.a.a;
    let var_2 = vec4<bool>(true, false, any(select(select(vec2<bool>(true, false), vec2<bool>(var_0.a.a, var_0.a.a), false), select(vec2<bool>(var_0.a.a, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(var_0.a.a, var_0.a.a)), var_0.a.a & true), vec2<bool>(all(vec3<bool>(var_0.a.a, var_0.a.a, var_0.a.a)), true))), all(vec3<bool>(any(vec3<bool>(var_0.a.a, true, var_0.a.a)), true, true)));
    return var_0.a.a;
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: bool) -> vec3<i32> {
    let var_0 = arg_0;
    global2 = 1236f;
    var var_1 = Struct_2(!(!vec3<bool>(arg_2, false, arg_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -533f), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(12320u, 10949u), 11u)], _wgslsmith_f_op_f32(190f - 642f), _wgslsmith_div_f32(-150f, global3[_wgslsmith_index_u32(var_0, 11u)])), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -677f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(115069u, 11u)]), global3[_wgslsmith_index_u32(1u, 11u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !select(vec4<bool>(true, arg_2, false, false), vec4<bool>(false, arg_1.x, arg_1.x, arg_2), arg_2))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1352f, -1484f, 927f, -471f)), vec4<f32>(1581f, global3[_wgslsmith_index_u32(u_input.b, 11u)], global3[_wgslsmith_index_u32(arg_0, 11u)], global3[_wgslsmith_index_u32(var_0, 11u)])) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-745f, 1316f, global3[_wgslsmith_index_u32(var_0, 11u)], global3[_wgslsmith_index_u32(0u, 11u)])))))));
    let var_2 = Struct_4(Struct_3(Struct_1(false, var_1.b.yz, abs(-10274i), ~select(vec2<i32>(28111i, 0i), vec2<i32>(6514i, global0.x), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1630f, 1270f, 1379f))))), vec4<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.a.x, u_input.a.x, 41422i, global0.x), vec4<i32>(global0.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(1040i, -22314i, -13478i, global0.x)), ~(global0.x & 1i), _wgslsmith_clamp_i32(-u_input.a.x, ~(-54819i), -u_input.a.x), max(u_input.a.x | -38387i, 37349i)), _wgslsmith_f_op_f32(step(var_1.b.x, -454f)), var_1.b.wwx, _wgslsmith_add_vec2_i32(select(vec2<i32>(u_input.a.x, global0.x), ~u_input.a.zz, true), u_input.a.yz)), Struct_2(var_1.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1(u_input.b, vec4<bool>(true, false, false, arg_1.x), arg_2, vec2<u32>(var_0, arg_0))).x - -1000f), _wgslsmith_f_op_f32(max(var_1.b.x, global3[_wgslsmith_index_u32(select(u_input.b, 1u, false), 11u)])), var_1.b.x, var_1.b.x)), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-898f - -1359f))) - _wgslsmith_f_op_f32(-415f + var_1.b.x)), _wgslsmith_f_op_f32(floor(var_1.b.x)), -497f), 1u, select(!all(!vec4<bool>(var_1.a.x, false, var_1.a.x, arg_1.x)), !all(!vec2<bool>(arg_1.x, var_1.a.x)), true));
    var var_3 = !(any(var_1.a.yx) & select(all(select(var_2.b.a, var_2.b.a, var_1.a)), (11916u << (var_0 % 32u)) >= ~u_input.b, arg_2));
    return _wgslsmith_add_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(var_2.a.b.xyy, u_input.a)) | abs(u_input.a << (vec3<u32>(var_0, var_0, var_2.d) % vec3<u32>(32u))), vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 46523i), u_input.a.xy), reverseBits(~var_2.a.e.x), _wgslsmith_sub_i32(global0.x << (var_0 % 32u), ~(-1i)))) << (~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), min(vec3<u32>(var_0, 66019u, var_2.d), vec3<u32>(var_2.d, var_0, arg_0))), ~min(vec3<u32>(77304u, 1u, 46671u), vec3<u32>(1u, 0u, 85374u))) % vec3<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = func_4(15767u, !select(!select(vec2<bool>(true, true), vec2<bool>(false, arg_0), arg_0), vec2<bool>(arg_0 || arg_1.a.a, all(vec4<bool>(false, true, false, arg_1.a.a))), true), func_3());
    let var_1 = ~arg_1.a.d;
    var var_2 = !arg_0 || true;
    let var_3 = Struct_2(!select(vec3<bool>(arg_0, arg_0, true), select(select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_1.a.a, true, arg_0), vec3<bool>(arg_0, true, arg_1.a.a)), !vec3<bool>(arg_0, true, arg_1.a.a), false), !select(vec3<bool>(arg_0, arg_1.a.a, true), vec3<bool>(arg_0, false, false), arg_1.a.a)), vec4<f32>(global3[_wgslsmith_index_u32(u_input.b, 11u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(214f)) + _wgslsmith_div_f32(arg_1.a.b.x, arg_1.a.e.x)))), 116f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-179f - _wgslsmith_f_op_f32(step(arg_1.c, 1000f))))));
    var var_4 = var_3;
    return vec3<u32>(u_input.b & _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, u_input.b, 21434u, u_input.b)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec4<u32>(14179u, u_input.b, 19432u, u_input.b), vec4<u32>(44434u, 0u, u_input.b, 0u)), ~(~vec4<u32>(u_input.b, u_input.b, 41312u, 3304u))), 40100u >> (~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b, 4294967295u, 4294967295u), reverseBits(1485u)) % 32u), _wgslsmith_mod_u32(u_input.b, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!(!vec3<bool>(true, global0.x < 1i, false)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 11u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2539f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1540f + global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 11u)])), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~(~4294967295u), 11u)] * 1809f), global3[_wgslsmith_index_u32(firstTrailingBit(~(~1u)), 11u)]));
    let var_1 = _wgslsmith_dot_vec3_u32(func_2(var_0.a.x, Struct_3(Struct_1(any(vec4<bool>(true, false, false, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(977f, var_0.b.x)), ~global0.x, vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(func_1(u_input.b, vec4<bool>(true, var_0.a.x, true, var_0.a.x), true, vec2<u32>(4294967295u, u_input.b)))), min(reverseBits(vec4<i32>(u_input.a.x, 63336i, global0.x, u_input.a.x)), vec4<i32>(u_input.a.x, global0.x, -11790i, u_input.a.x) & vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -10226i)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 11u)] - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(67962u, 11u)] - global3[_wgslsmith_index_u32(38518u, 11u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, -1157f)), vec2<i32>(-1i) * -u_input.a.zz)), abs(vec3<u32>(reverseBits(1u ^ u_input.b), abs(~u_input.b), _wgslsmith_mod_u32(33451u, ~u_input.b))));
    let var_2 = 2147483647i;
    let var_3 = var_0.b.x;
    let var_4 = Struct_4(Struct_3(Struct_1(any(var_0.a.yx), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 11u)], global3[_wgslsmith_index_u32(u_input.b, 11u)]), var_0.b.wz)), _wgslsmith_f_op_vec2_f32(-var_0.b.xy))), var_2 >> (_wgslsmith_div_u32(1u, 4294967295u) % 32u), -u_input.a.zy, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-839f, var_0.b.x, -345f)))), vec4<i32>(25582i, firstLeadingBit(2147483647i), _wgslsmith_mult_i32(var_2, min(53042i, u_input.a.x)), abs(u_input.a.x | 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3, _wgslsmith_f_op_f32(trunc(var_3))))), vec3<f32>(-129f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(76994u, 11u)] * -2157f))), countOneBits(u_input.a.xz)), Struct_2(!var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.b, var_0.b, vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true)))) - var_0.b)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b * var_0.b) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2165f, -722f, var_3, var_3) + var_0.b))))), firstTrailingBit(var_1), any(select(select(var_0.a, select(vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<bool>(true, var_0.a.x, true), var_0.a), select(var_0.a, var_0.a, vec3<bool>(true, true, var_0.a.x))), var_0.a, var_0.a.x)));
    var var_5 = -657f;
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.x))) + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.b, u_input.b, var_1) ^ vec3<u32>(u_input.b, var_4.d, u_input.b)), ~_wgslsmith_div_vec3_u32(vec3<u32>(31429u, 1u, 1u), vec3<u32>(var_1, 1u, var_4.d))), 11u)]));
    var var_7 = select(vec2<bool>(true, any(var_0.a)), var_0.a.yz, var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(abs(vec3<u32>(4294967295u, 41991u, var_4.d)) >> (select(vec3<u32>(39357u, var_1, 62367u), vec3<u32>(26979u, 75343u, 4294967295u), false) % vec3<u32>(32u)))));
}

