struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: array<u32, 32> = array<u32, 32>(9037u, 17520u, 23655u, 62994u, 4294967295u, 1u, 71172u, 50354u, 0u, 0u, 4294967295u, 25890u, 1u, 1u, 15312u, 9126u, 35398u, 4294967295u, 11805u, 0u, 21096u, 20953u, 1u, 4294967295u, 3358u, 2078u, 4294967295u, 0u, 6650u, 23617u, 12033u, 66268u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1f), ~max(~(~vec2<u32>(4294967295u, 23439u)), ~vec2<u32>(global1[_wgslsmith_index_u32(91829u, 32u)], global1[_wgslsmith_index_u32(61384u, 32u)])), 67755u, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), false), all(vec3<bool>(false, true, false))), abs(27311u) < ((1u << (u_input.a % 32u)) | (4294967295u >> (global1[_wgslsmith_index_u32(0u, 32u)] % 32u)))), _wgslsmith_add_vec2_i32(select(u_input.c.zz, u_input.c.zx, true), u_input.c.zz));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(floor(var_0.a))))), ~vec2<u32>(0u, ~(~0u)), ~4294967295u, var_0.d, firstLeadingBit(vec2<i32>(u_input.c.x, _wgslsmith_sub_i32(u_input.c.x ^ 1i, global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(27149u, 32u)], 3u)]))));
    let var_2 = !select(var_1.d.xz, !select(vec2<bool>(true, true), vec2<bool>(var_1.d.x, var_1.d.x), var_1.d.xz), var_0.d.xx);
    global0 = array<i32, 3>();
    var_1 = var_0;
    return vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_clamp_u32(0u << (global1[_wgslsmith_index_u32(var_1.b.x, 32u)] % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, var_1.b.x, global1[_wgslsmith_index_u32(58300u, 32u)], u_input.a), vec4<u32>(var_1.b.x, global1[_wgslsmith_index_u32(1u, 32u)], 4294967295u, var_1.b.x)), ~global1[_wgslsmith_index_u32(var_0.b.x, 32u)]), 0u), (31273u ^ u_input.a) >> (max(_wgslsmith_sub_u32(var_0.c, var_1.b.x), ~u_input.a) % 32u)), 3526u);
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<i32, 3>();
    let var_0 = Struct_1(100f, ~vec2<u32>(~(~3585u), ~(u_input.a >> (0u % 32u))), 0u, !vec4<bool>(arg_0, false, any(vec2<bool>(true, arg_0)), all(select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, true, true, true), vec4<bool>(arg_0, arg_0, false, arg_0)))), u_input.c.zz);
    global1 = array<u32, 32>();
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    return Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -557f), all(var_0.d.ywy))), ~func_3(), select(countOneBits(_wgslsmith_mod_u32(min(30296u, u_input.a), 1u)), u_input.a >> (4294967295u % 32u), var_0.d.x), var_0.d, u_input.c.xx);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1269f + _wgslsmith_f_op_f32(sign(-1683f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(742f)), arg_3.a)));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, -1108f, 695f)) * vec3<f32>(126f, arg_1.a, arg_3.a))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.a, arg_1.a)), _wgslsmith_f_op_f32(arg_3.a * 1000f), _wgslsmith_f_op_f32(-arg_0.a))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-147f, -1851f, arg_0.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, 1400f, arg_1.a)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3.a, 866f, -1092f), vec3<f32>(-115f, 133f, 406f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, arg_1.a, 1176f), vec3<f32>(-717f, -348f, arg_1.a), arg_3.d.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_3.a, arg_3.a) - vec3<f32>(arg_0.a, arg_1.a, -161f)) * vec3<f32>(417f, 229f, arg_1.a))), arg_3.d.x)));
    var var_2 = vec4<u32>(arg_0.c, 4294967295u, 4294967295u, min(1u, countOneBits(~27201u)));
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.a))) <= 122f);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_4(func_2(arg_0.x & true), func_2(arg_0.x), abs(global1[_wgslsmith_index_u32(~0u, 32u)]) << (u_input.a % 32u), Struct_1(_wgslsmith_f_op_f32(ceil(-682f)), _wgslsmith_add_vec2_u32(func_3() >> (arg_1.b % vec2<u32>(32u)), ~reverseBits(arg_1.b)), arg_1.b.x, !arg_1.d, vec2<i32>(-global0[_wgslsmith_index_u32(arg_1.c, 3u)] >> (4294967295u % 32u), 1i)));
    let var_1 = arg_1;
    global1 = array<u32, 32>();
    global0 = array<i32, 3>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(func_2(func_4(arg_1, func_4(Struct_1(arg_1.a, vec2<u32>(global1[_wgslsmith_index_u32(var_1.c, 32u)], var_0.c), var_1.c, vec4<bool>(arg_0.x, var_1.d.x, true, var_0.d.x), var_1.e), Struct_1(var_1.a, var_1.b, var_1.b.x, arg_1.d, var_0.e), global1[_wgslsmith_index_u32(11833u, 32u)], arg_1), arg_1.c >> (4294967295u % 32u), Struct_1(-426f, var_1.b, global1[_wgslsmith_index_u32(37347u, 32u)], vec4<bool>(false, false, arg_0.x, false), vec2<i32>(1i, 2147483647i))).d.x).a)), vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.b, abs(reverseBits(vec2<u32>(33386u, u_input.a)))), ~(~_wgslsmith_add_u32(arg_1.b.x, var_0.c))), ~(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.b.x, arg_1.c, arg_1.b.x, u_input.a)), vec4<u32>(1u, 1u, 4294967295u, 60321u))), select(!vec4<bool>(true, true, arg_1.b.x != 1u, true), var_1.d, !vec4<bool>(false, var_1.d.x | arg_1.d.x, !var_1.d.x, func_4(Struct_1(-2168f, vec2<u32>(arg_1.c, 4294967295u), global1[_wgslsmith_index_u32(var_0.b.x, 32u)], vec4<bool>(true, true, arg_1.d.x, true), arg_1.e), arg_1, u_input.a, Struct_1(arg_1.a, arg_1.b, 40433u, var_0.d, var_0.e)).d.x)), vec2<i32>(_wgslsmith_mod_i32(-110843i, -17388i) ^ arg_1.e.x, global0[_wgslsmith_index_u32(func_4(Struct_1(_wgslsmith_div_f32(-671f, arg_1.a), vec2<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 32u)]), global1[_wgslsmith_index_u32(0u, 32u)], func_2(false).d, ~u_input.c.zy), Struct_1(_wgslsmith_f_op_f32(max(arg_1.a, var_1.a)), func_4(Struct_1(var_0.a, var_1.b, global1[_wgslsmith_index_u32(var_1.c, 32u)], vec4<bool>(false, var_1.d.x, arg_0.x, var_0.d.x), vec2<i32>(-7102i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 3u)])), Struct_1(var_1.a, vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(41955u, 32u)]), arg_1.b.x, arg_1.d, var_0.e), global1[_wgslsmith_index_u32(0u, 32u)], Struct_1(arg_1.a, var_1.b, 58681u, vec4<bool>(arg_1.d.x, arg_1.d.x, false, true), vec2<i32>(global0[_wgslsmith_index_u32(23086u, 3u)], 62486i))).b, ~global1[_wgslsmith_index_u32(1u, 32u)], func_2(var_1.d.x).d, ~vec2<i32>(-1i, 46867i)), _wgslsmith_div_u32(~6563u, u_input.a), func_4(arg_1, Struct_1(var_0.a, vec2<u32>(var_0.c, u_input.a), 42755u, var_0.d, u_input.c.yz), global1[_wgslsmith_index_u32(arg_1.c, 32u)], func_4(Struct_1(var_1.a, vec2<u32>(12613u, 87344u), 1u, var_1.d, vec2<i32>(var_1.e.x, 0i)), arg_1, 11435u, Struct_1(-1161f, var_0.b, 3433u, arg_1.d, vec2<i32>(u_input.c.x, 1i))))).b.x, 3u)]));
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = -931f;
    let var_1 = arg_0;
    let var_2 = var_1.d.x;
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    return Struct_1(var_1.a, abs(vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c, 92262u, 0u, var_1.c), vec4<u32>(0u, 4881u, 7653u, arg_1))), _wgslsmith_dot_vec3_u32(~vec3<u32>(20284u, arg_0.b.x, var_1.b.x), _wgslsmith_mult_vec3_u32(vec3<u32>(51112u, u_input.a, arg_0.b.x), vec3<u32>(0u, 1u, global1[_wgslsmith_index_u32(u_input.a, 32u)]))))), ~1u, vec4<bool>(false, var_2 || (~u_input.a == abs(0u)), any(vec2<bool>(var_2 & var_2, arg_0.d.x)), (-389f != _wgslsmith_f_op_f32(-var_1.a)) != func_4(func_4(arg_0, Struct_1(2698f, vec2<u32>(0u, global1[_wgslsmith_index_u32(33574u, 32u)]), u_input.a, vec4<bool>(arg_0.d.x, arg_0.d.x, var_2, var_1.d.x), var_1.e), 4294967295u, Struct_1(-1813f, arg_0.b, var_1.c, arg_0.d, vec2<i32>(arg_0.e.x, arg_0.e.x))), arg_0, 53715u, Struct_1(arg_0.a, var_1.b, global1[_wgslsmith_index_u32(arg_0.c, 32u)], var_1.d, vec2<i32>(15922i, arg_0.e.x))).d.x), ~vec2<i32>(u_input.c.x, _wgslsmith_mod_i32(0i, ~2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    global0 = array<i32, 3>();
    let var_0 = !(!(~19083i <= _wgslsmith_mod_i32(-48769i, global0[_wgslsmith_index_u32(u_input.a, 3u)] ^ global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 32u)], 3u)])));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(653u, 32u)], global1[_wgslsmith_index_u32(1u | u_input.a, 32u)], abs(u_input.a)), 32u)], ~(~50404u)), _wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 32u)], 32u)], 32u)], u_input.a) & vec2<u32>(0u, u_input.a), ~vec2<u32>(0u, global1[_wgslsmith_index_u32(21329u, 32u)]), vec2<u32>(global1[_wgslsmith_index_u32(33184u, 32u)], u_input.a)), vec2<u32>(~(~u_input.a), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(142958u, 32u)], 32u)])));
    let var_2 = func_5(func_1(!vec2<bool>(true, var_0), Struct_1(560f, countOneBits(~vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 32u)], u_input.a)), _wgslsmith_clamp_u32(abs(4294967295u), max(global1[_wgslsmith_index_u32(107717u, 32u)], 1u), 14450u), !vec4<bool>(var_0, false, false, var_0), _wgslsmith_mod_vec2_i32(u_input.c.yy | vec2<i32>(-1i, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], u_input.b))))), _wgslsmith_dot_vec3_u32(select(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], u_input.a), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], u_input.a, u_input.a)), max(vec3<u32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 32u)]), vec3<u32>(0u, 4294967295u, 82853u)), select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, true, var_0), false)), abs(firstTrailingBit(vec3<u32>(1u, 61299u, u_input.a))), !func_2(var_0).d.x), ~(~vec3<u32>(u_input.a, u_input.a, 14319u)) << (select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(28168u, 0u, 16583u)), _wgslsmith_add_vec3_u32(vec3<u32>(50114u, global1[_wgslsmith_index_u32(u_input.a, 32u)], 93706u), vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 32u)], 32u)], 0u)), !var_0) % vec3<u32>(32u))));
    let var_3 = _wgslsmith_sub_u32(1u, ((var_2.b.x >> (max(4478u, global1[_wgslsmith_index_u32(28744u, 32u)]) % 32u)) << (19336u % 32u)) & _wgslsmith_add_u32(~1u, u_input.a));
    let var_4 = ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_2.e.x, -2147483647i, var_2.e.x), ~vec4<i32>(var_2.e.x, u_input.b, u_input.c.x, -75418i))) >> (((~(~vec4<u32>(7904u, 0u, global1[_wgslsmith_index_u32(u_input.a, 32u)], var_3)) & vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_2.b, var_2.b), 32u)], 1u, 1u, ~4294967295u)) & _wgslsmith_clamp_vec4_u32(~min(vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(1u, 32u)], u_input.a, var_3), vec4<u32>(0u, 8148u, var_3, 25894u)), abs(vec4<u32>(55692u, var_2.c, 4294967295u, 0u)) | firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(var_3, 32u)], global1[_wgslsmith_index_u32(0u, 32u)], u_input.a, 4294967295u)), ~vec4<u32>(global1[_wgslsmith_index_u32(1u, 32u)], var_2.b.x, u_input.a, 4294967295u) | _wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(1u, 32u)], var_3, 4294967295u, var_2.c), vec4<u32>(1u, global1[_wgslsmith_index_u32(var_3, 32u)], 0u, var_3)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a & ~func_5(var_2, var_2.b.x).b.x), -_wgslsmith_clamp_i32(var_2.e.x, firstLeadingBit(2147483647i), ~var_2.e.x), -1i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(222f, -271f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.a - var_2.a), _wgslsmith_f_op_f32(183f * 1000f))) - var_2.a), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(~18145u, 3u)], countOneBits(var_2.e.x)) < firstTrailingBit(reverseBits(var_4.x)))), var_4);
}

