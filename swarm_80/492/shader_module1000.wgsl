struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: u32,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, false, vec2<i32>(-1i, i32(-2147483648)), vec4<bool>(true, true, true, false), -35592i);

var<private> global1: array<vec3<u32>, 29>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(259f, -113f, -288f, 1000f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-174f, -1324f, -500f, 263f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1626f, -836f, -1044f, -1526f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1845f, -800f, -108f, 329f))))), u_input.a.x);
    return vec4<f32>(1260f, var_0.a.x, var_0.a.x, var_0.a.x);
}

fn func_2() -> i32 {
    global0 = Struct_1(true, u_input.b >= abs(global0.e), vec2<i32>(_wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, global0.c.x, 7477i), vec3<i32>(10863i, 18356i, u_input.b)), select(vec3<i32>(global0.c.x, 1i, global0.c.x), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.c.x, -3918i, -16099i), vec3<i32>(-2147483647i, -18480i, -2147483647i)), true)), -2669i), !global0.d, abs(-(~_wgslsmith_sub_i32(0i, u_input.b))));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-494f, -764f, -640f, 1994f) + vec4<f32>(-1000f, -121f, -440f, -1882f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2069f, -918f, -119f, 608f), vec4<f32>(-1331f, -1000f, -1744f, -1597f))))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(356f, -1000f, -532f, 1000f), vec4<f32>(363f, -1000f, -1340f, -1030f)) - vec4<f32>(282f, 128f, 195f, 2202f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1123f, 1018f, -2929f, -2019f)))) + vec4<f32>(_wgslsmith_div_f32(-1256f, 420f), _wgslsmith_f_op_f32(sign(-1546f)), _wgslsmith_f_op_f32(max(873f, 1445f)), _wgslsmith_div_f32(1892f, -1249f))), all(select(vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, true), false)) | select(global0.d.x, global0.b, any(global0.d.xwx)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())));
    var var_1 = (abs(~(~u_input.a.x)) >> (~(~(~u_input.a.x)) % 32u)) & _wgslsmith_clamp_u32(~22181u, u_input.a.x, ~u_input.a.x);
    let var_2 = Struct_1(!global0.d.x, true, abs(abs(_wgslsmith_div_vec2_i32(global0.c, vec2<i32>(global0.e, u_input.b)))), vec4<bool>(true, !(global0.d.x != (global0.b && global0.a)), global0.d.x, !(!global0.b)), 1i);
    return ~1i;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> Struct_3 {
    let var_0 = select(global1[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_add_vec3_u32(global1[_wgslsmith_index_u32(~firstLeadingBit(u_input.a.x) | 77378u, 29u)], max(vec3<u32>(u_input.a.x & 381u, ~33405u, ~u_input.a.x), _wgslsmith_sub_vec3_u32(countOneBits(global1[_wgslsmith_index_u32(98661u, 29u)]), ~global1[_wgslsmith_index_u32(1u, 29u)]))), !global0.b);
    let var_1 = countOneBits(_wgslsmith_mod_vec3_i32(~_wgslsmith_mod_vec3_i32(select(vec3<i32>(global0.c.x, global0.c.x, 29346i), vec3<i32>(global0.e, -47094i, global0.e), vec3<bool>(global0.a, global0.b, false)), -vec3<i32>(global0.c.x, u_input.b, -86440i)), min(-_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -1i, -26284i), vec3<i32>(u_input.b, -2147483647i, global0.c.x)), vec3<i32>(global0.e, global0.e << (var_0.x % 32u), func_2()))));
    let var_2 = arg_1;
    global0 = Struct_1(var_0.x == abs(abs(reverseBits(19102u))), true, vec2<i32>(2147483647i, func_2()), select(global0.d, select(!select(vec4<bool>(global0.a, false, global0.d.x, global0.a), vec4<bool>(global0.a, false, global0.d.x, global0.b), vec4<bool>(global0.d.x, false, global0.d.x, global0.b)), global0.d, !global0.a), global0.d.x), 99335i);
    var var_3 = var_2;
    return Struct_3(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -830f, 984f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_2.x, arg_1.x, -886f) * vec4<f32>(var_2.x, arg_1.x, 242f, arg_0)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-347f, var_2.x, arg_1.x, arg_1.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 1209f, 424f, 677f) - vec4<f32>(614f, -362f, arg_0, -366f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1365f, _wgslsmith_f_op_f32(1012f + -1278f), false && global0.d.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2049f, 1443f, 1034f, -3176f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1079f, -1170f, -649f, -1000f), vec4<f32>(1647f, -677f, 184f, 2134f), vec4<bool>(global0.a, global0.a, false, false)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2226f, -612f, 883f, -1089f) - vec4<f32>(501f, 1130f, -953f, -788f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_div_f32(-1036f, 3488f)))));
    global1 = array<vec3<u32>, 29>();
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(ceil(var_0.a.b)), 64492u);
    let var_2 = func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1023f + -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_1.a.zwy))));
    var var_3 = Struct_3(-469f, var_0.a.b);
    var_3 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-351f + var_1.a.x) - _wgslsmith_f_op_f32(-var_3.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.b.x)) - _wgslsmith_f_op_f32(floor(var_2.a))))), var_0.a.b);
    global0 = Struct_1(!any(vec4<bool>(global0.a, global0.b, !global0.d.x, true)), !any(!(!global0.d.zz)), vec2<i32>(u_input.b, abs(24076i | u_input.b)), !global0.d, (-2147483647i << (u_input.a.x % 32u)) << (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(min(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b, 2147483647i, global0.e, global0.e), ~vec4<i32>(u_input.b, global0.e, -16964i, u_input.b), vec4<i32>(global0.e, global0.e, global0.e, -16017i)), abs(vec4<i32>(global0.e, -1395i, 1i, -2147483647i) >> (vec4<u32>(var_1.b, 0u, u_input.a.x, 43502u) % vec4<u32>(32u))))), _wgslsmith_sub_i32(abs(-1i), u_input.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, var_1.a.x, var_2.b.x)), ~vec3<u32>(min(u_input.a.x, ~88607u), 0u, max(~102275u, u_input.a.x)), var_3.a);
}

