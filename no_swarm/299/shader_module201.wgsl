struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 1u, 4294967295u, 1u);

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = vec4<bool>(arg_0.a, global1.x & any(!select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, global1.x, true), false)), ~_wgslsmith_mod_u32(abs(global0.x), ~9875u) > u_input.c.x, (global1.x | all(select(vec2<bool>(false, true), vec2<bool>(global1.x, global1.x), vec2<bool>(arg_0.a, arg_0.a)))) & true);
    var var_1 = all(var_0.wzx);
    global0 = vec4<u32>(6579u, global0.x, reverseBits(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(40058u, 7303u, 4294967295u), _wgslsmith_sub_u32(global0.x | global0.x, 102491u))), ~(~_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(306u, 0u), 4294967295u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(580f, _wgslsmith_f_op_f32(-1683f - _wgslsmith_f_op_f32(1935f + -608f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-352f, -1000f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(495f, -112f) * vec2<f32>(521f, 1025f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(739f, 720f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1246f, -600f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-100f, -963f))))))));
    var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), var_2.x), 1468f) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x - 626f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-291f, var_2.x))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.x, -508f))))))));
    return ~(reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 50085u, global0.x, global0.x), vec4<u32>(global0.x, 4294967295u, u_input.c.x, global0.x)), ~vec4<u32>(8945u, global0.x, u_input.e, 0u))) << (firstLeadingBit(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(77642u, 37057u, global0.x, global0.x), vec4<u32>(u_input.e, 4294967295u, global0.x, 54352u)))) % vec4<u32>(32u)));
}

fn func_2() -> vec2<bool> {
    global0 = _wgslsmith_add_vec4_u32(max(~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, 23048u, u_input.c.x), vec4<u32>(global0.x, u_input.c.x, global0.x, 52845u)), vec4<u32>(58811u, global0.x, global0.x, 0u) >> (vec4<u32>(63218u, u_input.e, u_input.e, u_input.e) % vec4<u32>(32u))), func_3(Struct_1(true, vec4<i32>(-4546i, u_input.a.x, 17063i, -2147483647i) & vec4<i32>(1832i, u_input.d, u_input.b, -13904i)))), select(vec4<u32>(_wgslsmith_mod_u32(4294967295u, global0.x), 0u, abs(u_input.c.x), ~0u), ~vec4<u32>(68452u, 1u, 4294967295u, u_input.e), !select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(false, true, true, global1.x), vec4<bool>(global1.x, false, global1.x, true))) >> ((~(~vec4<u32>(4294967295u, 0u, u_input.c.x, 6511u)) >> (_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(22629u, global0.x, 48652u, u_input.e)), _wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 0u, 3790u, global0.x), vec4<u32>(60737u, u_input.c.x, u_input.c.x, global0.x))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global1 = !(!vec2<bool>(all(vec2<bool>(true, true)), all(select(vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(global1.x, true, false, false), false))));
    var var_0 = !(!select(!vec3<bool>(true, false, global1.x), !select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, false, false), vec3<bool>(global1.x, true, true)), !vec3<bool>(global1.x, true, global1.x)));
    let var_1 = true;
    let var_2 = vec2<f32>(1f, -201f);
    return select(select(var_0.xz, vec2<bool>(_wgslsmith_f_op_f32(max(887f, var_2.x)) >= _wgslsmith_div_f32(var_2.x, 313f), false || global1.x), var_0.zy), select(!vec2<bool>(any(vec3<bool>(false, false, true)), false), select(select(var_0.zy, vec2<bool>(true, global1.x), !vec2<bool>(var_0.x, true)), !(!var_0.yx), select(select(vec2<bool>(var_1, var_1), var_0.xz, false), select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, var_1), false), var_0.zz)), var_0.zy), !(any(!vec3<bool>(global1.x, true, false)) | global1.x));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = -1i;
    global1 = func_2();
    let var_1 = Struct_1(!arg_1, abs(~(-(~vec4<i32>(var_0, -2147483647i, u_input.d, var_0)))));
    let var_2 = -vec2<i32>(u_input.a.x, ~(~arg_2.x));
    global0 = select(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, ~9849u, arg_3.c.x), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, arg_3.c.x, u_input.c.x, arg_3.c.x), vec4<u32>(1u, u_input.c.x, 0u, 0u))) & _wgslsmith_sub_vec4_u32(arg_3.c << (vec4<u32>(u_input.c.x, arg_3.c.x, 50978u, global0.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(arg_3.c, arg_3.c), arg_3.c)), abs(~arg_3.c << (~vec4<u32>(arg_3.c.x, 0u, arg_3.c.x, 17780u) % vec4<u32>(32u))), vec4<bool>(true, true, true, true));
    return Struct_3(arg_3.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(845f)) + _wgslsmith_f_op_f32(-445f + -1000f)), _wgslsmith_f_op_f32(max(339f, -1457f)))), 780f)), vec2<bool>(all(!(!vec3<bool>(global1.x, true, false))), true));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3) -> bool {
    global0 = ~vec4<u32>(u_input.c.x, reverseBits(33448u) & abs(u_input.e & 9001u), arg_2.a.x | 4100u, 4294967295u);
    global0 = arg_0.a;
    global1 = !select(vec2<bool>(!arg_2.c.x, func_1(func_2().x, false, ~vec3<i32>(15259i, u_input.d, arg_1), Struct_2(arg_0.c.x, u_input.a, vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 59271u))).c.x), arg_2.c, select(!(!arg_2.c.x), select(true, true, true), global1.x));
    global0 = vec4<u32>(select(abs(~(~0u)), select(select(select(73176u, 4294967295u, true), 0u, false), 43631u, arg_0.c.x), true), ~arg_2.a.x, 0u & arg_0.a.x, ~(~40395u));
    var var_0 = Struct_1(true, vec4<i32>(u_input.b << (~4294967295u % 32u), arg_1, 79301i, -arg_1) >> (vec4<u32>(u_input.c.x, global0.x, _wgslsmith_dot_vec2_u32(min(global0.xz, vec2<u32>(0u, arg_0.a.x)), global0.wz), ~(~arg_2.a.x)) % vec4<u32>(32u)));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(firstLeadingBit(_wgslsmith_sub_vec2_i32(abs(-u_input.a), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.a.x, 15637i)))), abs(u_input.a), !vec2<bool>(all(select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true))), func_4(Struct_3(vec4<u32>(u_input.c.x, global0.x, global0.x, 90862u), 1000f, vec2<bool>(global1.x, global1.x)), 0i, func_1(global1.x, true, vec3<i32>(0i, u_input.d, u_input.a.x), Struct_2(global1.x, u_input.a, vec4<u32>(1u, 4294967295u, 9496u, 4294967295u))))));
    var var_1 = Struct_1(global1.x && true, -vec4<i32>(u_input.d, (2147483647i & var_0.x) | ~2147483647i, ~1i, ~(2147483647i >> (global0.x % 32u))));
    let var_2 = var_1.b;
    var var_3 = Struct_2(select(false, false && var_1.a, global1.x), ~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 28474i), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, var_2.x), min(vec2<i32>(var_2.x, 65414i), vec2<i32>(21000i, -1i)))), vec4<u32>(global0.x | _wgslsmith_add_u32(1u, _wgslsmith_div_u32(1u, u_input.c.x)), ~firstTrailingBit(_wgslsmith_dot_vec2_u32(global0.zx, vec2<u32>(4294967295u, 1u))), 4294967295u, global0.x));
    var var_4 = !var_3.a;
    global1 = !select(func_2(), vec2<bool>(true, any(select(vec4<bool>(var_1.a, true, false, true), vec4<bool>(var_1.a, var_1.a, var_3.a, global1.x), global1.x))), any(vec3<bool>(!global1.x, global1.x, var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(926f, 365f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-909f, 1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(857f - -286f) * 922f))), abs(-var_0.x));
}

