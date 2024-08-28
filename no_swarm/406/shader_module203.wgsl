struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_2,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(-397f, vec4<bool>(false, true, false, false), Struct_1(vec4<bool>(true, false, false, false), false, 311f), Struct_2(4294967295u, Struct_1(vec4<bool>(false, false, true, true), true, 784f), 7998i), Struct_1(vec4<bool>(true, false, false, false), false, -325f)), Struct_3(-288f, vec4<bool>(false, false, false, false), Struct_1(vec4<bool>(true, false, false, false), true, -476f), Struct_2(33304u, Struct_1(vec4<bool>(false, false, false, true), false, 1066f), 0i), Struct_1(vec4<bool>(false, true, false, false), true, 1325f)), Struct_3(906f, vec4<bool>(false, false, true, false), Struct_1(vec4<bool>(false, true, false, true), false, 585f), Struct_2(0u, Struct_1(vec4<bool>(false, true, false, false), false, 1000f), -23734i), Struct_1(vec4<bool>(false, true, false, false), false, -745f)), Struct_3(-1347f, vec4<bool>(false, false, true, true), Struct_1(vec4<bool>(false, true, false, false), false, -980f), Struct_2(75136u, Struct_1(vec4<bool>(false, false, false, true), true, 858f), i32(-2147483648)), Struct_1(vec4<bool>(false, true, false, false), false, -1228f)), Struct_3(2341f, vec4<bool>(false, true, true, true), Struct_1(vec4<bool>(true, true, true, true), true, -568f), Struct_2(4294967295u, Struct_1(vec4<bool>(true, false, true, true), true, 1000f), -16097i), Struct_1(vec4<bool>(true, false, true, true), false, 1062f)), Struct_3(-219f, vec4<bool>(true, false, true, false), Struct_1(vec4<bool>(true, false, false, false), true, -1071f), Struct_2(40826u, Struct_1(vec4<bool>(false, false, false, true), false, -564f), 1i), Struct_1(vec4<bool>(true, false, true, false), false, -364f)), Struct_3(800f, vec4<bool>(false, true, false, false), Struct_1(vec4<bool>(false, true, false, true), true, -488f), Struct_2(1u, Struct_1(vec4<bool>(false, false, true, true), true, -1977f), -54851i), Struct_1(vec4<bool>(false, true, true, true), true, 384f)), Struct_3(797f, vec4<bool>(true, false, true, false), Struct_1(vec4<bool>(true, false, true, true), false, 554f), Struct_2(54083u, Struct_1(vec4<bool>(false, false, false, true), false, -1377f), 0i), Struct_1(vec4<bool>(true, false, true, true), false, -1854f)));

var<private> global1: array<vec4<u32>, 23>;

var<private> global2: array<vec4<f32>, 7>;

var<private> global3: array<Struct_4, 22>;

var<private> global4: vec4<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    global3 = array<Struct_4, 22>();
    var var_0 = true;
    let var_1 = u_input.b;
    var var_2 = !(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), all(vec4<bool>(true, true, true, true))), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true)));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~15409u, ~0u), abs(_wgslsmith_div_vec2_u32(~vec2<u32>(11057u, 23288u), ~vec2<u32>(var_1, 1u)))), 0u, ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 102900u), vec3<u32>(var_1, 4294967295u, var_1)), vec3<u32>(59900u, 0u, 29792u) << (vec3<u32>(u_input.a, u_input.b, u_input.a) % vec3<u32>(32u))))), 8u)];
    return any(var_3.c.a.wxx);
}

fn func_2() -> i32 {
    var var_0 = Struct_4(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(814f, -1115f, false)) + _wgslsmith_f_op_f32(371f + -751f)) * -2109f), _wgslsmith_f_op_f32(f32(-1f) * -131f)), vec4<u32>(u_input.b, select(u_input.b, ~u_input.b, func_3()) >> (16105u % 32u), ~_wgslsmith_mult_u32(1u, 25493u) | (_wgslsmith_mult_u32(0u, 31920u) >> (firstLeadingBit(u_input.b) % 32u)), ~abs(u_input.b)));
    let var_1 = global4.x;
    var var_2 = vec2<i32>(31158i, -_wgslsmith_mod_i32(0i, -12150i) ^ global4.x);
    global1 = array<vec4<u32>, 23>();
    var var_3 = global0[_wgslsmith_index_u32(u_input.a << (firstTrailingBit(reverseBits(~(17492u << (0u % 32u)))) % 32u), 8u)];
    return (min(var_2.x & var_3.d.c, -var_2.x) ^ countOneBits(_wgslsmith_add_i32(firstLeadingBit(var_2.x), min(var_3.d.c, global4.x)))) << (var_3.d.a % 32u);
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: i32) -> Struct_3 {
    var var_0 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(-22401i, ~arg_1.x >> (35910u % 32u), _wgslsmith_div_i32(global4.x, 1i)), ~arg_1.wyz);
    var var_1 = Struct_2(~u_input.b, Struct_1(select(select(!vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(false, true, true, true), func_3()), !vec4<bool>(true, false, arg_0, true), !vec4<bool>(false, arg_0, arg_0, arg_0)), true, _wgslsmith_div_f32(-424f, -1019f)), _wgslsmith_add_i32(~min(-16049i, 2147483647i), ~3463i));
    var var_2 = Struct_5(global4.x, all(var_1.b.a), Struct_2(~(~_wgslsmith_mult_u32(var_1.a, u_input.b)), var_1.b, _wgslsmith_dot_vec3_i32(vec3<i32>(~global4.x, -var_0.x, -arg_2), ~global4.zxz)), _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(u_input.a, _wgslsmith_mod_u32(51905u, u_input.b), var_1.a), ~var_1.a), Struct_3(var_1.b.c, vec4<bool>(all(!vec3<bool>(arg_0, var_1.b.b, var_1.b.b)), true, all(select(var_1.b.a, vec4<bool>(var_1.b.a.x, var_1.b.a.x, false, var_1.b.b), var_1.b.a)), var_1.b.b), var_1.b, Struct_2(1u, Struct_1(!var_1.b.a, true, _wgslsmith_f_op_f32(1795f + var_1.b.c)), (arg_2 | 2147483647i) << (_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(45880u, 23u)], vec4<u32>(1u, 0u, var_1.a, var_1.a)) % 32u)), Struct_1(!vec4<bool>(true, var_1.b.b, true, var_1.b.b), !(arg_0 || false), _wgslsmith_f_op_f32(f32(-1f) * -325f))));
    var var_3 = var_0.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-517f, var_1.b.c, var_1.b.c) - vec3<f32>(-278f, -1000f, 798f))), vec3<f32>(var_2.c.b.c, var_1.b.c, var_2.c.b.c)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-530f, var_1.b.c, 721f), vec3<f32>(760f, var_1.b.c, 696f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(610f, -1178f, -1232f))), vec3<f32>(var_2.e.a, -234f, _wgslsmith_div_f32(var_2.e.d.b.c, -142f)))))));
    return var_2.e;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    global0 = array<Struct_3, 8>();
    global2 = array<vec4<f32>, 7>();
    var var_0 = arg_2;
    global0 = array<Struct_3, 8>();
    var var_1 = arg_2.c.c;
    return 16690u | u_input.b;
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = true;
    let var_1 = abs(u_input.a | func_5(func_4(true, -vec4<i32>(0i, 1i, 2147483647i, -8670i), func_2()), func_4(func_4(true, vec4<i32>(global4.x, -49935i, 1i, global4.x), 2147483647i).e.a.x, ~vec4<i32>(arg_0, -42125i, -60129i, global4.x), global4.x).d, Struct_3(_wgslsmith_f_op_f32(step(-251f, -1000f)), vec4<bool>(true, true, true, true), func_4(true, vec4<i32>(arg_0, global4.x, -27268i, arg_0), global4.x).e, func_4(false, vec4<i32>(arg_0, global4.x, arg_0, arg_0), -2147483647i).d, func_4(true, vec4<i32>(-101949i, global4.x, global4.x, 2147483647i), -1i).c)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(max(-3163f, -1000f)), func_3())))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-342f + 1000f)) - -264f)));
    let var_3 = countOneBits(abs(select(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -1i, global4.x), vec3<i32>(0i, arg_0, arg_0))), vec3<i32>(-1i) * -global4.xxy, vec3<bool>(true, true, true))));
    let var_4 = 1i;
    return _wgslsmith_f_op_f32(min(-619f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1728f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1574f, -1072f, -833f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1308f, 606f, 709f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-589f, -1905f, 117f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1007f, -1326f, 771f)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-150f, 408f, -940f), vec3<f32>(297f, -826f, 1322f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(192f, -666f, -1612f) * vec3<f32>(-135f, -1869f, -538f)))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1789f, 1237f, -1108f))), vec3<f32>(-736f, _wgslsmith_f_op_f32(max(-721f, 1015f)), _wgslsmith_f_op_f32(1653f * -228f)))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1720f, _wgslsmith_f_op_f32(func_1(global4.x << (4294967295u % 32u))))));
    var_1 = var_0.x;
    let var_2 = func_4(select(any(vec3<bool>(false, true, true)) & true, any(!func_4(false, vec4<i32>(global4.x, global4.x, global4.x, global4.x), 1i).c.a.xyx), any(vec3<bool>(false, all(vec4<bool>(false, true, true, false)), true))), select(-(~vec4<i32>(global4.x, 45795i, global4.x, 0i)), _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(32942i, -2147483647i, global4.x, 2147483647i)), vec4<i32>(global4.x, 44922i, 20570i, global4.x | global4.x), vec4<i32>(_wgslsmith_sub_i32(global4.x, global4.x), -1i, 0i, global4.x)), true), global4.x).d.a;
    global2 = array<vec4<f32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_2 >> (1u % 32u), min(40017u, 1276u)), _wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 13142u), vec2<u32>(var_2, 0u)), select(vec2<u32>(var_2, 10875u) & vec2<u32>(var_2, 1u), min(vec2<u32>(22329u, 44226u), vec2<u32>(var_2, 1u)), vec2<bool>(true, true)))), max(var_2, firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_2), vec2<u32>(var_2, 10992u)))), vec4<u32>(_wgslsmith_sub_u32(var_2, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2, 80861u), vec2<u32>(u_input.a, var_2) | vec2<u32>(u_input.a, 4294967295u))), ~12512u, var_2, _wgslsmith_mult_u32(countOneBits(6165u), 34489u)));
}

