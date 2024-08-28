struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(16889u, 5208u, 121221u), 15519u, vec4<bool>(false, true, true, false));

var<private> global1: Struct_3 = Struct_3(false, Struct_2(Struct_1(vec3<u32>(9499u, 1u, 0u), 4294967295u, vec4<bool>(false, false, true, false))));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(arg_1.x + 1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x)))))), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(-659f * arg_1.x)) - -1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))));
    let var_1 = arg_2.a;
    var var_2 = 1i;
    let var_3 = global1.b;
    var var_4 = arg_1.x;
    return Struct_3((16743u & (global1.b.a.a.x ^ abs(var_3.a.b))) >= 34022u, global1.b);
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = func_2(arg_2.b.a.c.ywx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1488f, 271f, 1420f, -1537f) - vec4<f32>(-850f, 1325f, 1454f, 2196f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 234f, 1000f, 967f)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(848f, 894f, -974f, -1000f))))), arg_2.b.a).b.a.c.xwy;
    var var_1 = 0u;
    var var_2 = Struct_3(true, Struct_2(func_2(arg_3.b.a.c.zxw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1046f, 2135f, -778f, -1277f))), Struct_1(countOneBits(vec3<u32>(1u, u_input.c, global0.a.x)), arg_2.b.a.a.x, global1.b.a.c)).b.a));
    global1 = arg_2;
    var_1 = u_input.c;
    return vec4<bool>(!(all(vec2<bool>(false, arg_1.x)) && !any(var_2.b.a.c.xxx)), true, true, all(global0.c));
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = abs(1u);
    global1 = Struct_3(global0.c.x, Struct_2(Struct_1((vec3<u32>(4294967295u, global0.b, 4294967295u) | vec3<u32>(2374u, 5163u, 80023u)) << (global0.a % vec3<u32>(32u)), min(~14509u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 9447u), u_input.a.wz)), func_3(40250u & arg_0, !global1.b.a.c, func_2(global0.c.zxw, vec4<f32>(576f, 188f, 253f, -430f), global1.b.a), func_2(global0.c.zww, vec4<f32>(365f, 1130f, 1129f, -1068f), Struct_1(u_input.a.wwz, u_input.a.x, vec4<bool>(false, false, global0.c.x, false)))))));
    var var_1 = select(firstLeadingBit(global0.a), u_input.a.yzy, global0.c.xyy);
    var_0 = global0.a.x;
    let var_2 = -(~(select(vec2<i32>(u_input.b, 18455i), vec2<i32>(-23727i, -1i), global1.b.a.c.x) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(0i, u_input.b), vec2<i32>(u_input.b, 1i)))) ^ vec2<i32>(_wgslsmith_mult_i32(u_input.b, -2147483647i), abs(1i));
    return func_2(vec3<bool>(!(9212u != _wgslsmith_add_u32(var_1.x, var_1.x)), true, var_2.x >= -80953i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-214f, -1642f, 941f, -562f) + vec4<f32>(-535f, 641f, -849f, 1774f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-735f, -337f, 773f, 546f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-789f, 920f, 1748f, -1123f))))), func_3(~1u, vec4<bool>(false, global0.c.x, true, global0.c.x), func_2(vec3<bool>(true, global0.c.x, global1.a), vec4<f32>(790f, 1160f, -467f, 457f), Struct_1(vec3<u32>(global1.b.a.a.x, 0u, global0.b), 4659u, vec4<bool>(global1.b.a.c.x, true, global0.c.x, false))), func_2(vec3<bool>(true, global0.c.x, global0.c.x), vec4<f32>(-835f, -1000f, 933f, 350f), global1.b.a))))), Struct_1(_wgslsmith_mod_vec3_u32(~max(vec3<u32>(u_input.a.x, u_input.a.x, var_1.x), vec3<u32>(global0.a.x, u_input.c, 4294967295u)), ~vec3<u32>(global1.b.a.a.x, 0u, 102638u)), 67371u, vec4<bool>(false, select(global1.b.a.c.x, 45327u == u_input.c, any(vec3<bool>(global1.b.a.c.x, true, false))), true, global1.a)));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> Struct_4 {
    var var_0 = Struct_4(0u, abs(vec2<u32>(91256u << (u_input.c % 32u), global0.a.x)));
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2, -2147483647i, u_input.b), vec3<i32>(0i, arg_2, -42659i) << (arg_1.b.a.a % vec3<u32>(32u))), firstLeadingBit(vec3<i32>(u_input.b, abs(-10259i), -1i >> (global1.b.a.b % 32u))) >> ((_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(var_0.a, 24016u, 4294967295u)), reverseBits(arg_3.b.a.a)) << (vec3<u32>(107690u, 1u, countOneBits(1u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_2 = func_1(~_wgslsmith_clamp_u32(~(~5420u), global1.b.a.a.x, 25259u)).b.a;
    var_1 = -((vec3<i32>(_wgslsmith_mod_i32(u_input.b, arg_2), i32(-1i) * -3681i, var_1.x) >> (vec3<u32>(arg_3.b.a.b, reverseBits(142648u), var_2.a.x) % vec3<u32>(32u))) ^ ~((vec3<i32>(var_1.x, 28868i, var_1.x) & vec3<i32>(u_input.b, u_input.b, arg_2)) | firstTrailingBit(vec3<i32>(-10288i, -43692i, 1i))));
    var var_3 = Struct_4(~1u, ~vec2<u32>(var_0.a, 29062u));
    return Struct_4(4294967295u, arg_3.b.a.a.zx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(true, func_1(1u), ~u_input.b, func_2(func_1(_wgslsmith_mod_u32(abs(4294967295u), _wgslsmith_mult_u32(1u, 72890u))).b.a.c.zwz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1327f, 1441f, 864f, 1231f))) + vec4<f32>(_wgslsmith_div_f32(-885f, -1092f), _wgslsmith_f_op_f32(-1842f - -1214f), _wgslsmith_f_op_f32(2361f * -1000f), -175f)), global1.b.a));
    var var_1 = func_2(vec3<bool>(true | all(select(vec4<bool>(false, false, global1.a, global0.c.x), global0.c, vec4<bool>(global1.b.a.c.x, true, global0.c.x, global0.c.x))), true, global0.c.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1551f, -1598f, 367f, 963f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-333f, 493f, -686f, 748f), vec4<f32>(1624f, -510f, -1967f, -1515f))), !(!vec4<bool>(true, global1.b.a.c.x, global1.a, false)))))), func_2(vec3<bool>(all(vec2<bool>(false, global0.c.x)), false, global0.c.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(328f, 2322f, 1000f, 2250f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(422f, -569f, 1443f, 152f)))), Struct_1(select(~global0.a, ~vec3<u32>(global1.b.a.b, 13148u, 69415u), !vec3<bool>(false, global0.c.x, global1.b.a.c.x)), global0.b, global0.c)).b.a).b.a;
    global1 = func_2(!(!func_1(~global0.a.x).b.a.c.xww), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-393f, 501f, 1000f, 238f), vec4<f32>(2139f, 1487f, -922f, 503f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1241f, 253f, 953f, -1000f), vec4<f32>(184f, -549f, -1000f, -113f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -259f), 186f, 550f, 122f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(sign(177f)), -929f, _wgslsmith_f_op_f32(f32(-1f) * -765f), _wgslsmith_f_op_f32(f32(-1f) * -1151f)))))), Struct_1(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(var_1.a.x, u_input.a.x), 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(37753u, 43918u, 22168u), vec3<u32>(global0.b, 12049u, global1.b.a.a.x)) ^ global0.b, 1u >> (1u % 32u)), 4294967295u, select(global1.b.a.c, vec4<bool>(global0.c.x, true, !global0.c.x, true), select(func_1(3435u).b.a.c, !vec4<bool>(global0.c.x, global1.a, global0.c.x, true), true))));
    var_0 = Struct_4(_wgslsmith_sub_u32(_wgslsmith_add_u32(reverseBits(4294967295u), var_1.a.x), _wgslsmith_add_u32(57930u, _wgslsmith_add_u32(_wgslsmith_mult_u32(global0.a.x, 1u), var_1.a.x & global0.a.x))), global1.b.a.a.zz);
    var var_2 = u_input.b;
    let var_3 = !vec4<bool>(var_1.c.x, global1.b.a.c.x, true, !var_1.c.x);
    let var_4 = vec4<i32>(~select(-35040i, reverseBits(-u_input.b), all(vec2<bool>(true, true))), abs(~u_input.b), 2147483647i, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-var_4.x, var_4.x));
}

