struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

var<private> global1: Struct_1 = Struct_1(i32(-2147483648), -1300f, 403f);

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 66936u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.c, global1.c, -483f, 354f), vec4<f32>(-1515f, global1.c, global1.b, global1.b), vec4<bool>(true, false, true, false))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(341f, 1971f, arg_0, arg_0), vec4<f32>(arg_0, global1.b, global1.b, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-608f, 848f, -726f, 1668f)))))));
    global0 = array<vec3<bool>, 10>();
    var var_1 = vec2<u32>(1u, ~23842u);
    let var_2 = Struct_1(i32(-1i) * -1i, global1.c, _wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))), -1075f))));
    let var_3 = global1.a;
    return -1i;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_div_vec2_f32(arg_1, arg_1);
    let var_1 = var_0.x;
    let var_2 = abs(vec3<i32>(1i, u_input.a, ~global1.a));
    global1 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_2.zy, vec2<i32>(~arg_0.x, func_3(arg_1.x, global2.x)), _wgslsmith_mod_vec2_i32(~arg_0, var_2.xx)), abs(arg_0)), 826f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(f32(-1f) * -1088f))))));
    var var_3 = ~reverseBits(var_2);
    return -_wgslsmith_div_i32(-22796i, u_input.c.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = Struct_1(abs(-1i ^ max(func_2(u_input.c, vec2<f32>(1000f, 1057f), vec4<u32>(global2.x, 1u, global2.x, global2.x)), -22316i)), global1.c, -1916f);
    let var_0 = ~global2.x;
    var var_1 = Struct_1(func_3(-1109f, ~(~7186u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) + arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)));
    let var_2 = ~_wgslsmith_div_vec2_u32(~vec2<u32>(102844u, 4294967295u), ~(vec2<u32>(0u, 84193u) & vec2<u32>(global2.x, global2.x))) ^ vec2<u32>(_wgslsmith_sub_u32(0u, ~min(20667u, var_0)), _wgslsmith_add_u32(43142u, var_0));
    var var_3 = ~(~global2.x);
    return Struct_1(-func_2(u_input.b, vec2<f32>(-1420f, global1.c), _wgslsmith_div_vec4_u32(~vec4<u32>(var_2.x, var_2.x, 92927u, 1u), vec4<u32>(21365u, var_0, 1u, global2.x) >> (vec4<u32>(var_0, 1u, var_2.x, 75371u) % vec4<u32>(32u)))), -499f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - var_1.c)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-125f, 1673f, _wgslsmith_f_op_f32(arg_0.b * arg_1.b), _wgslsmith_f_op_f32(floor(2202f))) * vec4<f32>(1288f, _wgslsmith_f_op_f32(arg_0.c - 1562f), _wgslsmith_f_op_f32(-1581f - arg_1.c), arg_1.c))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-354f, -2191f, arg_1.b, -1000f) - vec4<f32>(arg_1.c, -108f, -2057f, arg_0.c))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(408f, arg_0.b, 640f, arg_1.b))))));
    global0 = array<vec3<bool>, 10>();
    return !select(vec4<bool>(true, true, true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))), vec4<bool>(true, true, true, true), false);
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = all(select(select(vec4<bool>(!arg_0.x, arg_0.x, !arg_0.x, all(arg_0.xx)), func_4(func_1(Struct_1(u_input.c.x, global1.b, global1.b), Struct_1(global1.a, 291f, arg_2.x)), func_1(Struct_1(u_input.b.x, arg_2.x, global1.c), Struct_1(global1.a, global1.b, 150f))), select(arg_0, select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), true), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x))), select(vec4<bool>(!arg_0.x, !arg_0.x, 51623u <= global2.x, all(arg_0.www)), select(vec4<bool>(arg_0.x, false, false, true), select(arg_0, vec4<bool>(false, arg_0.x, true, false), vec4<bool>(false, true, arg_0.x, false)), false), any(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x))), arg_0));
    let var_1 = func_1(Struct_1(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)), global1.c), func_1(Struct_1(firstLeadingBit(~global1.a), _wgslsmith_div_f32(1834f, 1944f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-743f)) - _wgslsmith_div_f32(arg_1, -1124f))), func_1(func_1(Struct_1(-36568i, global1.c, global1.c), func_1(Struct_1(global1.a, -246f, -1234f), Struct_1(-18542i, 1970f, 543f))), func_1(Struct_1(-14793i, -1196f, 1525f), func_1(Struct_1(-48433i, arg_2.x, global1.c), Struct_1(-45944i, 1579f, arg_1))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, 534f)) - 318f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), arg_1, arg_2.x);
    let var_3 = any(arg_0.zx);
    let var_4 = arg_2.ww;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(-2147483647i < (global1.a & global1.a), true, true, false);
    global1 = func_5(!(!func_4(Struct_1(-19848i, global1.b, global1.c), func_1(Struct_1(u_input.b.x, global1.b, -1332f), Struct_1(-2147483647i, 1888f, 1000f)))), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.b, _wgslsmith_f_op_f32(sign(global1.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b * global1.c), global1.b))));
    let var_1 = _wgslsmith_mod_vec4_i32(~(-vec4<i32>(-u_input.b.x, _wgslsmith_div_i32(25234i, global1.a), ~global1.a, 1i)), -(~(vec4<i32>(u_input.c.x, u_input.a, 87717i, u_input.a) ^ vec4<i32>(u_input.b.x, 28334i, u_input.c.x, 1i))) ^ vec4<i32>(func_1(Struct_1(global1.a, -150f, global1.b), func_1(Struct_1(u_input.a, 1888f, -643f), Struct_1(global1.a, global1.b, global1.c))).a, -(i32(-1i) * -8209i), -43651i, min(global1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-5329i, 1i, global1.a, -2147483647i), vec4<i32>(19968i, -4170i, u_input.a, u_input.c.x)))));
    var var_2 = 2147483647i;
    var var_3 = func_1(func_5(!(!(!vec4<bool>(var_0.x, var_0.x, false, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global1.b))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.c, -1567f, global1.c, global1.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.b, global1.c, 1520f)))), func_1(Struct_1(var_1.x, _wgslsmith_f_op_f32(ceil(global1.c)), global1.c), func_1(Struct_1(var_1.x & global1.a, _wgslsmith_div_f32(global1.b, global1.c), _wgslsmith_f_op_f32(select(468f, global1.c, false))), func_1(func_5(vec4<bool>(false, var_0.x, false, false), -1580f, vec4<f32>(global1.b, -814f, global1.c, 1515f)), func_1(Struct_1(var_1.x, global1.c, 657f), Struct_1(1708i, global1.b, -1309f))))));
    let var_4 = vec3<f32>(-647f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1191f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1493f)), -434f) * -287f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c, -1262f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-41187i, i32(-1i) * -2147483647i, abs(~(~0i))), _wgslsmith_sub_u32(80461u, select(1u, 14139u, var_0.x)), vec3<u32>(_wgslsmith_mod_u32(global2.x, global2.x), global2.x, 1u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global2.x, global2.x, global2.x, global2.x)), countOneBits(abs(vec4<u32>(39107u, 4294967295u, 46210u, global2.x)))));
}

