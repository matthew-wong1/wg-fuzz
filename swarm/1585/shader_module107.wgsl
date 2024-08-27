struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(3460i, -22828i, -1i);

var<private> global1: array<vec4<f32>, 11>;

var<private> global2: bool = false;

var<private> global3: array<Struct_1, 27>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-673f, -1631f, 781f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-888f, 401f, -149f) + vec3<f32>(413f, -281f, 803f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1280f, 174f) + vec3<f32>(-1809f, -377f, 995f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1356f, 305f, 1067f))))));
    global1 = array<vec4<f32>, 11>();
    global2 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)) | false;
    global1 = array<vec4<f32>, 11>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(273f)), _wgslsmith_f_op_f32(select(-806f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), true)));
    return max(vec3<i32>(-_wgslsmith_sub_i32(_wgslsmith_mod_i32(23291i, -2147483647i), select(-2147483647i, global0[_wgslsmith_index_u32(u_input.d, 3u)], false)), -2147483647i, -2147483647i), max(u_input.c.yyz, vec3<i32>(global0[_wgslsmith_index_u32(92895u, 3u)], _wgslsmith_sub_i32(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(0u, 3u)], 21898i), firstTrailingBit(u_input.c.x)), u_input.c.x)));
}

fn func_2() -> i32 {
    global1 = array<vec4<f32>, 11>();
    global0 = array<i32, 3>();
    var var_0 = _wgslsmith_add_i32(_wgslsmith_mod_i32(-min(-32560i, ~2091i), _wgslsmith_dot_vec3_i32(-func_3(), _wgslsmith_add_vec3_i32(vec3<i32>(20316i, 37544i, global0[_wgslsmith_index_u32(4294967295u, 3u)]) ^ u_input.c.ywx, _wgslsmith_mult_vec3_i32(u_input.c.xwx, u_input.c.wyy)))), ~u_input.c.x);
    global2 = all(select(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, u_input.a.x <= _wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.b.x)), all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false))))));
    var var_1 = !(!vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), false, true));
    return global0[_wgslsmith_index_u32(u_input.d, 3u)];
}

fn func_4(arg_0: vec3<i32>, arg_1: f32) -> bool {
    global3 = array<Struct_1, 27>();
    return (~(-(global0[_wgslsmith_index_u32(0u, 3u)] >> (32233u % 32u))) > abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 81458i, global0[_wgslsmith_index_u32(62735u, 3u)]), arg_0))) && true;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_3) -> vec4<bool> {
    global2 = func_4(vec3<i32>(func_2(), arg_2.b, select(~(-3413i), -2147483647i, all(arg_2.c.a))), arg_0.x);
    var var_0 = _wgslsmith_mult_vec4_i32(firstTrailingBit(u_input.c), ~(u_input.c << (_wgslsmith_mult_vec4_u32(u_input.a, reverseBits(u_input.a)) % vec4<u32>(32u))));
    global3 = array<Struct_1, 27>();
    return arg_2.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(1u << (max(u_input.d, 16789u) % 32u), 11u)] - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1747f, 334f, 1491f, 1432f) * global1[_wgslsmith_index_u32(u_input.b.x, 11u)])), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(u_input.d, 11u)]), vec4<f32>(-1394f, 431f, 1000f, 1248f), func_1(vec3<f32>(-627f, 759f, -2278f), 0i, Struct_3(vec3<i32>(2147483647i, -32575i, -1i), -2147483647i, Struct_2(vec4<bool>(false, false, false, true), -1000f, vec3<u32>(u_input.d, u_input.b.x, 1u), 1u), Struct_2(vec4<bool>(true, true, true, false), 444f, u_input.a.wyz, u_input.d))))), global1[_wgslsmith_index_u32(~0u, 11u)]), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-345f, 434f, -948f)), -u_input.c.x, Struct_3(vec3<i32>(global0[_wgslsmith_index_u32(u_input.d, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), -2147483647i, Struct_2(vec4<bool>(false, false, false, false), -1095f, vec3<u32>(57702u, 1u, u_input.d), 48768u), Struct_2(vec4<bool>(true, false, false, false), 607f, u_input.a.wzy, u_input.d))))))));
    var var_1 = Struct_1(_wgslsmith_sub_vec2_u32(u_input.a.xy, ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(2845u, u_input.a.x), vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.b.x, u_input.d)))), u_input.b.x >> (_wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_add_vec4_u32(~vec4<u32>(29541u, 26833u, u_input.d, 0u), _wgslsmith_div_vec4_u32(u_input.a, u_input.a))) % 32u), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(-2147483647i, -1i), ~min(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.ww)), u_input.c.zx), vec3<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x), global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(~1u, 3u)]), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]), -u_input.c.zxy)), ~(-45309i)), _wgslsmith_f_op_vec2_f32(var_0.ww - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xz)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(635f, var_0.x), vec2<f32>(-2088f, 100f), select(vec2<bool>(false, false), vec2<bool>(false, false), false))))));
    global3 = array<Struct_1, 27>();
    let var_2 = Struct_3(vec3<i32>(-1i) * -(~vec3<i32>(var_1.d.x, 0i, 8667i)), -u_input.c.x, Struct_2(func_1(var_0.yxx, ~_wgslsmith_mod_i32(-2147483647i, 27362i), Struct_3(max(var_1.d, vec3<i32>(u_input.c.x, -27896i, u_input.c.x)), ~1i, Struct_2(vec4<bool>(true, false, true, true), -416f, u_input.a.zww, var_1.a.x), Struct_2(vec4<bool>(false, true, false, true), 1897f, u_input.a.wxz, var_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.e.x, -395f, true))) - _wgslsmith_f_op_f32(var_1.e.x * 1f)), ~_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, 0u, 79317u)), select(vec3<u32>(u_input.b.x, 57753u, 4246u), u_input.a.yxz, vec3<bool>(true, false, false))), max(min(4294967295u & u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, u_input.b.x, u_input.b.x), vec3<u32>(1u, var_1.a.x, 89661u))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(6113u, u_input.d), vec2<u32>(33311u, 1u)))), Struct_2(select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, func_1(var_0.wxz, 2147483647i, Struct_3(u_input.c.wyz, 19622i, Struct_2(vec4<bool>(true, true, false, false), var_0.x, u_input.a.wzy, 1243u), Struct_2(vec4<bool>(true, true, true, false), var_0.x, u_input.a.zyz, 62949u))).x, func_4(u_input.c.zyw, -964f))), -1390f, _wgslsmith_mod_vec3_u32(u_input.a.yzw, _wgslsmith_mod_vec3_u32(u_input.a.wyz, vec3<u32>(var_1.a.x, var_1.b, 105708u))), abs(~var_1.a.x)));
    global2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, countOneBits(-50716i), ~var_2.b, firstTrailingBit(var_2.c.d >> (min(16410u, u_input.b.x) % 32u)) ^ var_2.d.d);
}

