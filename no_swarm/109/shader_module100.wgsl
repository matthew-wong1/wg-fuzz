struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: f32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<bool, 30> = array<bool, 30>(false, false, false, false, true, true, false, false, false, true, true, false, false, false, true, true, false, true, false, false, true, false, false, false, false, true, true, false, false, true);

var<private> global2: array<vec3<u32>, 21>;

var<private> global3: f32 = -779f;

var<private> global4: array<u32, 18>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<f32>) -> i32 {
    var var_0 = 1u;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, 1f));
    var_0 = u_input.e;
    global0 = reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(1i, u_input.d, 2147483647i), select(vec3<i32>(16328i, 5345i, 29816i), vec3<i32>(-46181i, -22931i, 8308i), true), vec3<bool>(false, true, false))) >> (vec3<u32>(4294967295u, 4294967295u, u_input.e) % vec3<u32>(32u)));
    var var_1 = Struct_4(~firstTrailingBit(max(vec3<i32>(arg_1, 0i, 2147483647i) & vec3<i32>(1i, -1i, arg_1), vec3<i32>(-1394i, 2147483647i, 24904i))), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_0)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 + arg_0) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1434f, 647f, arg_0.x, arg_0.x)))))), Struct_1(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.e, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 18u)]), 18u)], 18u)], _wgslsmith_add_i32(u_input.d, _wgslsmith_sub_i32(u_input.d, abs(global0.x))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2772i, 0i), firstTrailingBit(global0.zy)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b, -13605i, arg_1), vec3<i32>(arg_1, arg_1, arg_1), false), firstLeadingBit(vec3<i32>(-21337i, arg_1, -2147483647i))))), arg_0.x);
    return 0i;
}

fn func_4(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: u32) -> f32 {
    global4 = array<u32, 18>();
    let var_0 = Struct_3(vec4<f32>(473f, 145f, arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -459f)));
    global0 = abs(vec3<i32>(arg_2.c, 20468i, func_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(var_0.a, vec4<f32>(-722f, arg_0.c, var_0.a.x, 310f), true)), _wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(-227f, arg_0.c, arg_0.c, 1659f)))), -9403i, vec3<f32>(_wgslsmith_f_op_f32(ceil(1529f)), var_0.a.x, _wgslsmith_f_op_f32(-arg_0.c)))));
    var var_1 = Struct_4(countOneBits(_wgslsmith_sub_vec3_i32(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(-86248i, 1i, global0.x), vec3<i32>(global0.x, arg_2.c, -2147483647i), vec3<i32>(-3260i, -2147483647i, u_input.b)), vec3<i32>(0i, u_input.a, -11280i)), firstLeadingBit(vec3<i32>(arg_2.b, u_input.d, global0.x)))), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.a, vec4<f32>(505f, var_0.a.x, -235f, -559f), any(vec4<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 18u)], 30u)], false, false, false)))))), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(860f)), _wgslsmith_f_op_f32(min(978f, 412f)))), _wgslsmith_f_op_f32(-arg_0.c))) * _wgslsmith_f_op_f32(round(937f))));
    global0 = -(var_1.a ^ vec3<i32>(1i, countOneBits(global0.x), -3356i)) ^ vec3<i32>(-_wgslsmith_dot_vec3_i32(abs(var_1.a), -var_1.a), var_1.c.b, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(1000f, var_1.b.a.x, var_0.a.x, arg_0.c))), -firstLeadingBit(var_1.c.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.xzy))));
    return _wgslsmith_f_op_f32(456f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-2170f)))))));
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(func_4(Struct_5(_wgslsmith_mult_u32(arg_1, ~(~50895u)), 19096u, -707f, any(vec4<bool>(true, false, true, select(global1[_wgslsmith_index_u32(10905u, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)], true))), Struct_2(select(select(vec3<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0, 18u)], 30u)], global1[_wgslsmith_index_u32(1779u, 30u)], true), vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 30u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(50414u, 18u)], 30u)], true), global1[_wgslsmith_index_u32(arg_1, 30u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0, 18u)], 30u)], false), false), ~(~0u), select(select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 30u)], true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 30u)], false), vec2<bool>(true, global1[_wgslsmith_index_u32(25077u, 30u)])), !vec2<bool>(global1[_wgslsmith_index_u32(arg_0, 30u)], global1[_wgslsmith_index_u32(2630u, 30u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_1, 18u)], 30u)])))), ~vec2<u32>(1u, global4[_wgslsmith_index_u32(0u, 18u)]), Struct_1(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, 0u), vec2<u32>(0u, 66152u)), func_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 2311f, 523f, 922f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1152f, 1206f, -398f, -866f)))), 1i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1208f, -1329f, 1000f), vec3<f32>(-1922f, 1601f, -1000f), vec3<bool>(global1[_wgslsmith_index_u32(64811u, 30u)], true, false)))), global0.x), ~0u));
    global3 = _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -167f))), -1245f) + var_0)));
    var var_1 = 0i;
    global4 = array<u32, 18>();
    let var_2 = _wgslsmith_mult_u32(arg_1 << (_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(0u >> (global4[_wgslsmith_index_u32(arg_1, 18u)] % 32u), 21u)], vec3<u32>(arg_0, arg_0, arg_0)) % 32u), ~1u) ^ _wgslsmith_div_u32(abs(4294967295u), 1u);
    return Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1000f, var_0, var_0) - vec4<f32>(var_0, 510f, 1876f, var_0))))))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global4 = array<u32, 18>();
    var var_0 = func_2(0u, select(65172u, arg_0.a | _wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 4294967295u), vec2<u32>(2755u, arg_0.a))), true));
    var var_1 = var_0.a;
    global1 = array<bool, 30>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_5(global4[_wgslsmith_index_u32(0u, 18u)], select(1u, global4[_wgslsmith_index_u32(45319u, 18u)], true), var_1.x, all(vec3<bool>(global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(11948u, 30u)], true)), Struct_2(vec3<bool>(false, global1[_wgslsmith_index_u32(21543u, 30u)], false), arg_0.a, vec2<bool>(true, true))), ~abs(vec2<u32>(arg_0.a, global4[_wgslsmith_index_u32(u_input.c, 18u)])), Struct_1(0u, global0.x, arg_0.c), 1u)), var_1.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-777f, _wgslsmith_f_op_f32(322f + 787f))), var_1.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(4294967295u, -1i, ~global0.x))), _wgslsmith_f_op_f32(max(585f, -2478f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1065f)))));
    let var_1 = Struct_1(countOneBits(countOneBits(global4[_wgslsmith_index_u32(0u, 18u)] >> (u_input.c % 32u)) & countOneBits(1u)), u_input.b ^ global0.x, _wgslsmith_sub_i32(global0.x, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(~(-22056i), vec4<f32>(1874f, -1288f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -285f) * _wgslsmith_f_op_f32(func_1(Struct_1(global4[_wgslsmith_index_u32(var_1.a, 18u)], var_1.c, global0.x)))), 956f));
}

