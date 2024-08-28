struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 24224i;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<u32>(66516u, 33778u), 0u, true, false, true));

var<private> global2: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(0u, 1u, 4179u, 8089u), vec4<u32>(4294967295u, 3153u, 54405u, 27462u), vec4<u32>(33372u, 0u, 32019u, 4294967295u), vec4<u32>(4294967295u, 38570u, 107648u, 43071u), vec4<u32>(81408u, 43898u, 14294u, 61338u), vec4<u32>(26654u, 88062u, 1u, 0u), vec4<u32>(0u, 60688u, 109899u, 0u), vec4<u32>(4294967295u, 1u, 1u, 11715u), vec4<u32>(1u, 13832u, 1u, 56550u), vec4<u32>(0u, 7489u, 0u, 18616u), vec4<u32>(1u, 7997u, 4294967295u, 1251u), vec4<u32>(4294967295u, 46209u, 4294967295u, 52333u), vec4<u32>(1u, 65283u, 48286u, 66050u), vec4<u32>(26061u, 4294967295u, 58317u, 22283u), vec4<u32>(7021u, 39780u, 51235u, 1u), vec4<u32>(56660u, 1u, 41676u, 4294967295u), vec4<u32>(1u, 44200u, 32942u, 0u), vec4<u32>(1u, 17706u, 1u, 44368u), vec4<u32>(292u, 64951u, 1u, 1u), vec4<u32>(4294967295u, 0u, 22214u, 31714u), vec4<u32>(23682u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 0u, 55005u, 5347u), vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(22493u, 45494u, 21235u, 1u), vec4<u32>(12994u, 4294967295u, 4294967295u, 1u), vec4<u32>(1u, 0u, 9741u, 1u), vec4<u32>(30482u, 24541u, 23890u, 72046u), vec4<u32>(4294967295u, 0u, 51858u, 36191u), vec4<u32>(37497u, 1u, 61543u, 4294967295u));

var<private> global3: Struct_1 = Struct_1(vec2<u32>(0u, 0u), 1u, false, true, true);

var<private> global4: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(4294967295u, Struct_1(vec2<u32>(29207u, 0u), 90017u, false, true, false)), Struct_2(10731u, Struct_1(vec2<u32>(0u, 0u), 0u, true, false, true)), Struct_2(15450u, Struct_1(vec2<u32>(63724u, 5881u), 1u, false, false, true)), Struct_2(92418u, Struct_1(vec2<u32>(27663u, 56713u), 3706u, false, false, true)), Struct_2(24474u, Struct_1(vec2<u32>(1u, 0u), 1u, true, false, false)), Struct_2(18057u, Struct_1(vec2<u32>(0u, 0u), 5091u, false, false, false)), Struct_2(1u, Struct_1(vec2<u32>(4294967295u, 4294967295u), 1u, true, false, true)), Struct_2(0u, Struct_1(vec2<u32>(0u, 53885u), 1u, true, false, false)), Struct_2(1566u, Struct_1(vec2<u32>(1u, 1u), 26062u, true, true, false)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    global1 = array<Struct_1, 1>();
    global4 = array<Struct_2, 9>();
    global0 = 1i;
    var var_0 = Struct_2(global3.b, Struct_1(min(global3.a | _wgslsmith_sub_vec2_u32(vec2<u32>(global3.a.x, global3.b), global3.a), ~vec2<u32>(4294967295u, 33394u)), 1u, all(select(vec4<bool>(false, global3.e, global3.d, global3.c), !vec4<bool>(global3.d, global3.e, global3.d, false), vec4<bool>(global3.d, global3.c, true, true))), !global3.e, any(vec3<bool>(global3.c, global3.e, false)) && false));
    var var_1 = -2147483647i;
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    global1 = array<Struct_1, 1>();
    var var_0 = global3.a ^ vec2<u32>(global3.a.x, ~global3.a.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-2053f * 2359f) > _wgslsmith_f_op_f32(func_3()))));
    let var_2 = !any(!arg_0.wx);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(1360f, _wgslsmith_f_op_f32(246f - -2131f))), 235f, -1363f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1893f, _wgslsmith_f_op_f32(f32(-1f) * -1001f), _wgslsmith_f_op_f32(-205f * 149f)))), !select(vec3<bool>(false, true, false), vec3<bool>(arg_0.x, true, arg_0.x), !arg_0.zww))));
    return !select(select(select(select(vec3<bool>(global3.e, global3.c, global3.c), arg_0.zyy, arg_0.x), arg_0.xyx, !arg_0.wwy), arg_0.yzy, all(select(arg_0, arg_0, vec4<bool>(false, arg_0.x, arg_0.x, var_2)))), !(!vec3<bool>(true, arg_0.x, false)), vec3<bool>(false, true, arg_0.x));
}

fn func_1(arg_0: bool) -> i32 {
    global4 = array<Struct_2, 9>();
    global4 = array<Struct_2, 9>();
    global1 = array<Struct_1, 1>();
    let var_0 = global3.d;
    let var_1 = vec2<bool>(true, all(func_2(vec4<bool>(false, global3.e == true, all(vec2<bool>(global3.e, global3.c)), any(vec2<bool>(false, global3.d))))));
    return abs(i32(-1i) * -(~11018i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x << (4294967295u % 32u), _wgslsmith_mult_i32(-1i, func_1(global3.c)), -21926i), abs(-2147483647i << (u_input.c.x % 32u)) << (reverseBits(37152u) % 32u));
    var var_1 = vec3<u32>(u_input.b, global3.a.x, global3.a.x);
    var_1 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(var_1.x, u_input.b), max(_wgslsmith_add_u32(u_input.b, 78460u), var_1.x)), min(~4294967295u, ~_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(15961u, 29u)], vec4<u32>(u_input.c.x, 0u, global3.a.x, u_input.c.x)))), 1u, _wgslsmith_div_u32(countOneBits(global3.a.x) | 1u, 1u));
    let var_2 = Struct_1(vec2<u32>(56388u, _wgslsmith_mod_u32(1u, var_1.x)), var_1.x << (_wgslsmith_div_u32(global3.a.x | ~17295u, ~select(var_1.x, global3.b, global3.c)) % 32u), global3.e, false, true);
    let var_3 = all(select(vec3<bool>(false, true, false), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), !vec3<bool>(true, false, var_2.c)), true));
    global0 = abs(func_1(true)) >> (global3.a.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-func_1(any(select(vec4<bool>(var_3, global3.c, false, global3.e), vec4<bool>(var_3, global3.d, global3.e, var_3), true))), select(select(9400i ^ _wgslsmith_sub_i32(var_0, -4866i), abs(func_1(var_3)), _wgslsmith_f_op_f32(floor(-1000f)) > _wgslsmith_div_f32(254f, 938f)), var_0, any(select(!vec2<bool>(var_2.e, var_2.c), select(vec2<bool>(true, false), vec2<bool>(var_3, var_2.e), true), vec2<bool>(false, var_2.c)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-676f, 443f)), _wgslsmith_f_op_f32(trunc(861f))) - _wgslsmith_f_op_f32(556f * 390f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(383f)))), -440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1483f + -1000f)))), var_0);
}

