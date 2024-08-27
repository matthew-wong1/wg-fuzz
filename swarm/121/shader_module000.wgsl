struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(7699u, 30206u), vec2<u32>(0u, 61227u), vec2<u32>(42342u, 116878u), vec2<u32>(59897u, 6827u), vec2<u32>(21124u, 1u), vec2<u32>(21361u, 23085u), vec2<u32>(8200u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(1u, 7907u), vec2<u32>(68342u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 0u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 41637u), vec2<u32>(1u, 8225u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(11719u, 35665u), vec2<u32>(13015u, 20273u), vec2<u32>(1u, 4294967295u), vec2<u32>(59995u, 1433u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u));

var<private> global1: i32;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: array<f32, 22> = array<f32, 22>(666f, 1215f, 1156f, -243f, 844f, 282f, -187f, -302f, 593f, 413f, -585f, 1000f, -497f, 221f, 1466f, -2545f, -892f, -1759f, -890f, -719f, -866f, 685f);

var<private> global4: f32;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, -9069i), _wgslsmith_sub_vec2_i32(u_input.a.yx >> (global0[_wgslsmith_index_u32(19963u, 23u)] % vec2<u32>(32u)), vec2<i32>(41592i, -2147483647i))) << (global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(~15150u, ~62439u, select(51006u, 21745u, false))), 23u)] % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-940f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 22u)]) - _wgslsmith_f_op_f32(f32(-1f) * -560f))), 664f, _wgslsmith_f_op_f32(ceil(-1817f)), global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 11368u, 4294967295u), vec3<u32>(1u, 87418u, 4294967295u)))), 22u)]));
    let var_2 = arg_0;
    var var_3 = Struct_1(~(firstTrailingBit(4294967295u) << (~1u % 32u)));
    var_3 = Struct_1(19656u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(0u, 22u)], 2255f))) * global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(~var_3.a, _wgslsmith_clamp_u32(4294967295u, var_3.a, var_3.a))), 22u)]) + _wgslsmith_div_f32(1174f, _wgslsmith_f_op_f32(abs(-752f))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    global2 = select(!(!(!vec2<bool>(global2.x, false))), vec2<bool>(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(7830u, 22u)]), arg_0.x) < _wgslsmith_f_op_f32(func_3(!vec3<bool>(false, false, global2.x)))), !(!select(vec2<bool>(global2.x, false), !vec2<bool>(false, global2.x), !global2.x)));
    let var_0 = Struct_3(u_input.a.x);
    let var_1 = ~(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-33099i, var_0.a), ~vec2<i32>(var_0.a, var_0.a)), -var_0.a, firstLeadingBit(var_0.a | 5651i), _wgslsmith_mod_i32(-1i, i32(-1i) * -10199i)) ^ ~select(-vec4<i32>(11230i, -30838i, -2147483647i, var_0.a), select(u_input.a, u_input.a, false), any(vec2<bool>(global2.x, global2.x))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 4294967295u, 1u)), abs(vec3<u32>(1u, 44732u, 0u))), ~(~72428u))), u_input.a.x, _wgslsmith_add_u32(1u, 37339u) >> (reverseBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(20339u, 0u, 1u, 4294967295u), vec4<u32>(73062u, 62355u, 5298u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(29722u, 0u, 4294967295u), vec3<u32>(0u, 2255u, 4294967295u)))) % 32u), Struct_1(4294967295u));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 22u)]), _wgslsmith_f_op_f32(-arg_0.x))), -1488f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(720f * global3[_wgslsmith_index_u32(var_2.d.a, 22u)])), -644f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(0u, 22u)], 1076f, arg_0.x, 318f)))));
    return var_2;
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: Struct_2) -> f32 {
    let var_0 = false;
    global2 = vec2<bool>(!any(select(arg_2, arg_2, arg_2)), _wgslsmith_add_i32(_wgslsmith_mod_i32(select(arg_3.b, u_input.a.x, arg_2.x), 1i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_3.b, 1i), arg_1.xy), arg_1.xx)) <= (abs(-38098i) & _wgslsmith_dot_vec2_i32(-arg_1.zx, arg_1.yx)));
    var var_1 = _wgslsmith_clamp_i32(u_input.a.x ^ 19262i, (~u_input.a.x << (~_wgslsmith_clamp_u32(arg_3.a.a, 52042u, arg_3.a.a) % 32u)) | ~arg_1.x, 1i);
    var var_2 = Struct_3(_wgslsmith_mult_i32(-1i >> ((22497u ^ arg_3.d.a) % 32u), 0i));
    var var_3 = select(!vec4<bool>(!all(arg_2), all(vec4<bool>(var_0, arg_2.x, true, arg_0)), !(arg_0 == true), !var_0), vec4<bool>(global2.x, any(select(vec2<bool>(true, true), select(arg_2, vec2<bool>(true, global2.x), arg_2), arg_0)), var_0, true), select(!vec4<bool>(var_0, global2.x, var_0, true), !select(!vec4<bool>(true, arg_2.x, var_0, arg_0), select(vec4<bool>(false, false, var_0, global2.x), vec4<bool>(global2.x, true, false, arg_2.x), vec4<bool>(arg_0, false, false, arg_2.x)), select(vec4<bool>(global2.x, true, false, true), vec4<bool>(arg_2.x, false, var_0, false), vec4<bool>(global2.x, false, arg_2.x, arg_2.x))), vec4<bool>(true, !(global3[_wgslsmith_index_u32(arg_3.a.a, 22u)] >= global3[_wgslsmith_index_u32(4294967295u, 22u)]), any(vec3<bool>(true, global2.x, false)), var_0)));
    return global3[_wgslsmith_index_u32(~arg_3.d.a, 22u)];
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = 1i;
    global1 = (_wgslsmith_div_i32(_wgslsmith_mult_i32(firstTrailingBit(19106i), 65467i), max(-u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))) ^ _wgslsmith_dot_vec2_i32(u_input.a.wx, select(u_input.a.yx, -u_input.a.yz, vec2<bool>(true, true)))) >> (arg_1 % 32u);
    var var_1 = vec4<i32>(firstTrailingBit(6306i) << (firstLeadingBit(arg_3.a) % 32u), -u_input.a.x, max(2147483647i, u_input.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(14118i, 1i), _wgslsmith_div_vec2_i32(u_input.a.yw, _wgslsmith_sub_vec2_i32(u_input.a.xw, u_input.a.wz))), vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x | 0i, max(2147483647i, u_input.a.x), u_input.a.x), _wgslsmith_add_i32(_wgslsmith_add_i32(1i, 17864i), -1139i))));
    return reverseBits(u_input.a);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = -12144i;
    var var_1 = 1000f;
    var var_2 = func_5(~(~countOneBits(4294967295u)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~arg_2.a, _wgslsmith_clamp_u32(1u, 4294967295u, arg_1.a)), global0[_wgslsmith_index_u32(~arg_2.a, 23u)]), min(select(min(vec2<u32>(1u, arg_2.a), vec2<u32>(4802u, arg_2.a)), vec2<u32>(5269u, arg_1.a), true), vec2<u32>(arg_1.a, _wgslsmith_mod_u32(arg_2.a, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(arg_2.a, 22u)])) - _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(arg_2.a, 22u)], 2010f, global2.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(global2.x, ~vec3<i32>(6606i, u_input.a.x, u_input.a.x), !vec2<bool>(global2.x, false), func_2(arg_0))), -703f)), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-887f, arg_0.x, arg_0.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(376f, global3[_wgslsmith_index_u32(arg_2.a, 22u)], arg_0.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(arg_0, arg_0, vec3<bool>(global2.x, global2.x, true))), vec3<f32>(464f, arg_0.x, arg_0.x), select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(false, global2.x, global2.x), true))))).d);
    global3 = array<f32, 22>();
    let var_3 = vec4<bool>(true, all(select(select(!vec4<bool>(global2.x, global2.x, false, global2.x), select(vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(false, global2.x, true, true), global2.x), !global2.x), select(select(vec4<bool>(false, true, global2.x, false), vec4<bool>(global2.x, false, global2.x, false), global2.x), select(vec4<bool>(global2.x, global2.x, false, false), vec4<bool>(true, global2.x, global2.x, false), false), true | global2.x), global2.x)), any(select(vec2<bool>(global2.x, global2.x), !vec2<bool>(false, global2.x), true)) || (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-391f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1688f * arg_0.x))), !(!(any(vec3<bool>(global2.x, true, global2.x)) || (-666f != arg_0.x))));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<bool>(all(vec2<bool>(global2.x, !func_1(vec3<f32>(global3[_wgslsmith_index_u32(16404u, 22u)], global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(2753u, 22u)]), Struct_1(60510u), Struct_1(50346u)))), all(vec2<bool>(global2.x, (u_input.a.x <= u_input.a.x) || true)));
    var var_0 = select(!(!global2.x) | global2.x, any(!vec2<bool>(global2.x, global2.x == true)), global2.x);
    let var_1 = 0u;
    let var_2 = -2147483647i;
    var var_3 = vec4<u32>(var_1, var_1, var_1, 108091u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(var_3.x, 22u)], global3[_wgslsmith_index_u32(12804u, 22u)], global3[_wgslsmith_index_u32(var_1, 22u)], -871f) * vec4<f32>(global3[_wgslsmith_index_u32(var_1, 22u)], 117f, -1333f, 521f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3[_wgslsmith_index_u32(84509u, 22u)], global3[_wgslsmith_index_u32(1u, 22u)], 273f, 297f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-312f, 2273f, global3[_wgslsmith_index_u32(var_3.x, 22u)], global3[_wgslsmith_index_u32(var_1, 22u)]), vec4<f32>(104f, 223f, 710f, global3[_wgslsmith_index_u32(37942u, 22u)]), vec4<bool>(global2.x, false, true, false))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-152f, 999f, -633f, global3[_wgslsmith_index_u32(0u, 22u)]))))), abs(_wgslsmith_mod_u32(abs(var_3.x), 50276u) << (7215u % 32u)), u_input.a.x, ~firstLeadingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 0u, var_1, var_3.x), ~vec4<u32>(var_3.x, var_3.x, 1u, 8867u))));
}

