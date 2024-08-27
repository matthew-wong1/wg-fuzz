struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_2(vec2<bool>(true, true), ~118347u, u_input.d);
    global0 = array<u32, 14>();
    var var_1 = -368f;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1853f + -627f) - _wgslsmith_f_op_f32(-568f * _wgslsmith_f_op_f32(select(-801f, _wgslsmith_f_op_f32(trunc(1351f)), true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -396f))), -646f))));
    let var_3 = u_input.a.x;
    return !(!select(select(!vec4<bool>(var_0.a.x, false, true, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), true), select(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), !vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), all(vec2<bool>(var_0.a.x, var_0.a.x))), true));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -376f), _wgslsmith_f_op_f32(1075f + 1244f), _wgslsmith_f_op_f32(select(1578f, -351f, true)), _wgslsmith_f_op_f32(sign(879f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1451f, 1330f, -566f, 1544f) - vec4<f32>(-1340f, 298f, -721f, 1290f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2145f, -214f, -231f, -102f) * vec4<f32>(-921f, 1941f, -411f, 1232f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1335f, 548f, 1000f, 1066f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-149f, -733f, -380f, -559f)))))), vec2<u32>(~_wgslsmith_div_u32(abs(4294967295u), 78669u), 4294967295u));
    var var_1 = _wgslsmith_div_u32(global0[_wgslsmith_index_u32(95831u, 14u)], max(42566u, _wgslsmith_sub_u32(var_0.b.x, abs(u_input.d.x)))) ^ (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 1u, u_input.c, 45166u)), abs(~vec4<u32>(5801u, 11240u, 1u, global0[_wgslsmith_index_u32(13443u, 14u)]))) & u_input.d.x);
    global0 = array<u32, 14>();
    return !func_3(~u_input.d);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = arg_0;
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    var var_1 = arg_0.a.x;
    let var_2 = select(!select(select(func_2(), vec4<bool>(arg_0.a.x, true, false, true), true), vec4<bool>(!arg_0.a.x, true, any(vec2<bool>(arg_0.a.x, false)), true), !vec4<bool>(true, true, arg_0.a.x, arg_0.a.x)), !func_3(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.c, arg_0.c.x) << (vec3<u32>(4294967295u, 4294967295u, 64558u) % vec3<u32>(32u)), firstTrailingBit(u_input.d))), vec4<bool>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(~1u, 14u)], _wgslsmith_dot_vec2_u32(var_0.c.xx, u_input.d.xy)) != 4294967295u, false, func_3(arg_0.c).x, func_2().x));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-226f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-247f, 202f)) + _wgslsmith_f_op_f32(ceil(1942f)))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -696f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(281f, -377f)), 1351f))), vec2<u32>(25095u, 26403u));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_3 {
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    var var_0 = func_1(Struct_2(!func_2().yx, 29347u, firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(u_input.c, 4294967295u), 1u, ~0u))), _wgslsmith_dot_vec3_u32(select(u_input.d ^ vec3<u32>(arg_2.a.b.x, global0[_wgslsmith_index_u32(arg_2.a.b.x, 14u)], u_input.d.x), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.a.b.x, u_input.d.x, arg_0.b.x), ~u_input.d), !arg_1.x), vec3<u32>(~(4294967295u & u_input.c), 4294967295u, select(2949u, _wgslsmith_mod_u32(34633u, u_input.d.x), true))), func_1(Struct_2(vec2<bool>(any(vec4<bool>(false, true, true, true)), true), select(arg_2.a.b.x, countOneBits(arg_0.b.x), arg_1.x), select(firstTrailingBit(u_input.d), ~u_input.d, true)), 4294967295u, reverseBits(func_1(Struct_2(arg_1.yz, u_input.d.x, u_input.d), func_1(Struct_2(vec2<bool>(true, arg_1.x), 4294967295u, u_input.d), u_input.d.x, arg_2.a.b).b.x, vec2<u32>(1u, arg_2.a.b.x)).b)).b);
    let var_1 = abs((firstLeadingBit(u_input.d) ^ (~u_input.d >> (u_input.d % vec3<u32>(32u)))) ^ u_input.d);
    var var_2 = _wgslsmith_f_op_f32(floor(1000f));
    return Struct_3(func_1(Struct_2(arg_1.xz, var_1.x, ~var_1), 6468u, ~firstLeadingBit(firstLeadingBit(arg_0.b))), ~(-min(arg_2.b, arg_2.b)) | -arg_2.b);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_0.a.b.x, _wgslsmith_mult_u32(abs(u_input.c), 29959u << (global0[_wgslsmith_index_u32(26734u, 14u)] % 32u))), 0u), (40808u << (~select(1u, 59280u, true) % 32u)) | ~abs(43700u));
    var_0 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(~_wgslsmith_sub_u32(u_input.d.x, u_input.d.x), 1u << (~u_input.d.x % 32u))), _wgslsmith_sub_vec2_u32(arg_0.a.b & ~arg_0.a.b, _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a.b.x, u_input.d.x) & (u_input.d.zz | u_input.d.zy), _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, global0[_wgslsmith_index_u32(u_input.d.x, 14u)]), ~vec2<u32>(1u, global0[_wgslsmith_index_u32(0u, 14u)]))))), 14u)], 14u)];
    let var_1 = 56016u;
    let var_2 = arg_0.a;
    let var_3 = vec2<f32>(arg_0.a.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1203f)) - -812f), arg_0.a.a.x)))));
    return Struct_2(select(vec2<bool>(false, any(vec3<bool>(true, false, false))), select(func_2().zz, func_2().yz, vec2<bool>(true, true)), func_3(u_input.d).x), max(_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], 31443u)), ~var_2.b.x), _wgslsmith_add_u32(1u, var_1)), ~vec3<u32>(~0u, 1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.e, _wgslsmith_sub_i32(~(-select(u_input.e, u_input.b.x, true)), 1i), !all(vec2<bool>(true, true)));
    var_0 = 2448i ^ u_input.a.x;
    global0 = array<u32, 14>();
    let var_1 = Struct_2(!vec2<bool>(any(vec2<bool>(true, true)), true), u_input.c, ~u_input.d);
    let var_2 = func_5(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 311f, 102f, 1216f), vec4<f32>(-114f, 825f, -226f, 161f), vec4<bool>(var_1.a.x, false, false, false))), vec2<u32>(_wgslsmith_clamp_u32(0u, var_1.b, 1293u), abs(1541u))), !select(select(vec4<bool>(false, true, false, var_1.a.x), vec4<bool>(true, var_1.a.x, var_1.a.x, false), true), select(vec4<bool>(false, true, var_1.a.x, true), vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), true), !vec4<bool>(true, true, var_1.a.x, true)), Struct_3(func_1(var_1, ~4294967295u, _wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 14u)], 14u)], 46881u), vec2<u32>(4294967295u, u_input.c))), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(3746i, -84798i, 14691i)), -vec3<i32>(u_input.a.x, 0i, -1252i)))), _wgslsmith_f_op_vec4_f32(min(func_4(func_4(Struct_1(vec4<f32>(227f, -532f, 1342f, 737f), vec2<u32>(var_1.c.x, u_input.c)), func_3(vec3<u32>(var_1.c.x, 25216u, u_input.c)), Struct_3(Struct_1(vec4<f32>(-569f, -1306f, -359f, -1070f), var_1.c.xz), vec3<i32>(-2147483647i, u_input.e, u_input.b.x))).a, func_3(~vec3<u32>(var_1.b, global0[_wgslsmith_index_u32(4294967295u, 14u)], 7003u)), func_4(Struct_1(vec4<f32>(-268f, 704f, 1470f, -449f), vec2<u32>(global0[_wgslsmith_index_u32(var_1.b, 14u)], 47901u)), func_3(vec3<u32>(4294967295u, 39408u, 1u)), func_4(Struct_1(vec4<f32>(827f, 1150f, 452f, 634f), vec2<u32>(0u, u_input.c)), vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x), Struct_3(Struct_1(vec4<f32>(1558f, 398f, -1000f, -786f), u_input.d.xy), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x))))).a.a, vec4<f32>(1f, 1f, 1f, 1f))), select(vec3<i32>(11437i, -3800i, _wgslsmith_mod_i32(u_input.b.x, -12504i)) & vec3<i32>(u_input.e, _wgslsmith_clamp_i32(u_input.e, 10395i, -2147483647i), ~0i), -vec3<i32>(u_input.b.x, u_input.a.x, 0i) ^ (vec3<i32>(2147483647i, u_input.b.x, u_input.e) & -vec3<i32>(u_input.e, u_input.b.x, u_input.a.x)), func_2().zww));
    var var_3 = !select(!vec4<bool>(true, true, false, var_1.a.x), func_2(), func_3(var_1.c | vec3<u32>(global0[_wgslsmith_index_u32(0u, 14u)], u_input.c, var_1.b)).x);
    let var_4 = func_2().zx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(801f, -789f)) + _wgslsmith_f_op_f32(abs(-514f))), _wgslsmith_f_op_f32(f32(-1f) * -2189f))), min(-1i, 1i), (_wgslsmith_sub_i32(u_input.b.x, ~u_input.a.x) | -5228i) ^ ~firstLeadingBit(_wgslsmith_mult_i32(u_input.e, u_input.a.x)), var_2.c);
}

