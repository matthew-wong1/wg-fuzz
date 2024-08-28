struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_5, arg_3: Struct_5) -> u32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(406f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1698f, arg_3.d.a.c.x), arg_1.x, arg_2.c.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1097f - arg_3.c.a.c.x)))), select(~(~countOneBits(arg_0.a.b)), _wgslsmith_dot_vec2_i32(global0.d << (~vec2<u32>(954u, 4294967295u) % vec2<u32>(32u)), ~(-vec2<i32>(19085i, -1i))), true), arg_0.a);
    let var_1 = arg_0;
    global0 = var_1.a;
    var var_2 = -615f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-612f)))))));
    return u_input.a.x;
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = vec2<u32>(u_input.a.x, _wgslsmith_div_u32(~func_3(Struct_3(Struct_1(global0.d.x, u_input.b.x, vec4<f32>(-1426f, 583f, -1112f, -242f), u_input.b.yz)), vec4<f32>(1614f, global0.c.x, 1163f, arg_0), Struct_5(vec3<bool>(true, false, false), vec4<i32>(u_input.b.x, 8652i, -68262i, 27498i), Struct_2(Struct_1(u_input.b.x, u_input.b.x, global0.c, global0.d), false), Struct_2(Struct_1(-2147483647i, global0.b, global0.c, global0.d), false), global0.d.x), Struct_5(vec3<bool>(false, false, true), vec4<i32>(12543i, 10394i, global0.b, global0.d.x), Struct_2(Struct_1(-958i, -1i, vec4<f32>(arg_0, 317f, 909f, global0.c.x), global0.d), true), Struct_2(Struct_1(u_input.b.x, 2147483647i, vec4<f32>(581f, 205f, -1941f, arg_0), vec2<i32>(2147483647i, -61384i)), true), u_input.b.x)), 1u) & ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 0u), vec3<u32>(94640u, u_input.a.x, u_input.a.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-global0.c.yz);
    let var_2 = global0.b;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    global0 = Struct_1(_wgslsmith_dot_vec4_i32(-max(vec4<i32>(-2147483647i, -1i, global0.b, 12773i), vec4<i32>(2147483647i, u_input.b.x, 10554i, global0.d.x)) & firstLeadingBit(vec4<i32>(u_input.b.x, global0.b, -42561i, u_input.b.x)), min(abs(abs(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, 12231i))), ~firstTrailingBit(vec4<i32>(14019i, -10277i, global0.a, u_input.b.x)))), -9454i, vec4<f32>(1648f, 1046f, global0.c.x, global0.c.x), -_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(u_input.b.x, 730i)), vec2<i32>(select(56546i, global0.a, true), 2147483647i)));
    return false;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_5(vec3<bool>(!(_wgslsmith_f_op_f32(-global0.c.x) != _wgslsmith_f_op_f32(arg_1.c.c.x + 1300f)), arg_1.c.c.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c.x, global0.c.x, arg_0))), true && any(!vec3<bool>(arg_0, true, false))), reverseBits(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(7301i, 0i, 2023i, u_input.b.x), max(vec4<i32>(u_input.b.x, u_input.b.x, global0.b, arg_1.b), vec4<i32>(0i, 0i, global0.a, arg_1.b))), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -30286i, global0.d.x, arg_1.c.b), vec4<i32>(-20516i, 4262i, 2147483647i, arg_1.b)), ~vec4<i32>(u_input.b.x, global0.d.x, u_input.b.x, 1i)))), Struct_2(Struct_1(-arg_1.b & _wgslsmith_div_i32(arg_1.c.d.x, global0.d.x), 7726i, _wgslsmith_f_op_vec4_f32(-arg_1.c.c), countOneBits(vec2<i32>(u_input.b.x, 1i))), arg_2), Struct_2(arg_1.c, false), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, global0.b & -2147483647i, ~global0.a), vec3<i32>(-2122i, u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, -2147483647i), global0.d)) >> (u_input.a % vec3<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(945f, 1098f, arg_0)), _wgslsmith_f_op_f32(min(134f, -1000f)), !(!arg_2)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1774f - 1000f) - 1212f))) * -225f));
    global0 = var_0.c.a;
    var var_2 = arg_1.b;
    return Struct_1(-2147483647i, _wgslsmith_mult_i32(37118i, abs(global0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.a.c.x * var_0.c.a.c.x), global0.c.x), _wgslsmith_div_f32(876f, _wgslsmith_f_op_f32(global0.c.x * arg_1.c.c.x)), _wgslsmith_f_op_f32(var_0.d.a.c.x + _wgslsmith_f_op_f32(trunc(arg_1.c.c.x))))), vec2<i32>(u_input.b.x, 49360i));
}

fn func_1() -> StorageBuffer {
    global0 = func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -493f)))), Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-129f, global0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1467f, -753f))))), 3172i, Struct_1(select(_wgslsmith_mult_i32(u_input.b.x, 0i), _wgslsmith_add_i32(u_input.b.x, 14265i), select(true, true, false)), -2147483647i, global0.c, abs(global0.d) & countOneBits(global0.d))), func_3(Struct_3(Struct_1(-41342i, -16524i, global0.c, vec2<i32>(global0.b, 1i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c) - global0.c), Struct_5(vec3<bool>(true, true, true), vec4<i32>(-2147483647i, global0.d.x, 22210i, u_input.b.x), Struct_2(Struct_1(-67870i, u_input.b.x, vec4<f32>(1133f, -2878f, global0.c.x, -839f), global0.d), true), Struct_2(Struct_1(global0.a, u_input.b.x, vec4<f32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x), vec2<i32>(-34887i, global0.d.x)), false), 1i), Struct_5(vec3<bool>(false, true, false), vec4<i32>(-22916i, 0i, global0.d.x, u_input.b.x), Struct_2(Struct_1(u_input.b.x, 15i, global0.c, u_input.b.xz), true), Struct_2(Struct_1(global0.d.x, u_input.b.x, vec4<f32>(global0.c.x, global0.c.x, global0.c.x, -707f), u_input.b.yz), false), 28511i)) > ~(~(~u_input.a.x)));
    var var_0 = Struct_4(_wgslsmith_f_op_f32(trunc(global0.c.x)), _wgslsmith_mod_i32(u_input.b.x, min(countOneBits(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, 2147483647i), vec2<i32>(u_input.b.x, 19793i))) & _wgslsmith_clamp_i32(reverseBits(-53737i), 1i, _wgslsmith_div_i32(3885i, u_input.b.x))), Struct_1(-countOneBits(func_4(false, Struct_4(global0.c.x, 8631i, Struct_1(-17494i, u_input.b.x, vec4<f32>(140f, 903f, global0.c.x, 1638f), u_input.b.xz)), false).b), global0.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global0.c))), u_input.b.xy ^ vec2<i32>(global0.a, u_input.b.x)));
    let var_1 = vec3<i32>(_wgslsmith_div_i32(max(global0.a, global0.b), -_wgslsmith_div_i32(2147483647i, u_input.b.x)), 0i, _wgslsmith_mod_i32(~(u_input.b.x >> (29997u % 32u)), -2147483647i)) & vec3<i32>(max(-global0.d.x, max(17419i, -1i) & var_0.b), u_input.b.x, _wgslsmith_add_i32(14717i, ~13627i));
    var var_2 = select(vec2<bool>(true, true), !vec2<bool>(true, !func_2(var_0.a)), select(vec2<bool>(!any(vec2<bool>(true, false)), any(vec3<bool>(false, false, true))), select(vec2<bool>(any(vec3<bool>(true, false, true)), true), vec2<bool>(true, true), true), !(var_0.c.c.x <= _wgslsmith_f_op_f32(-global0.c.x))));
    var_0 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), -754f)))), -global0.a, func_4(!(!any(vec3<bool>(false, true, true))), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c.c.x)) - global0.c.x), _wgslsmith_mod_i32(0i, i32(-1i) * -1i), var_0.c), u_input.a.x > ~_wgslsmith_dot_vec3_u32(vec3<u32>(12365u, u_input.a.x, 82978u), u_input.a)));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.c.zyy)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.c.c.wxy, var_0.c.c.wyz)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.c.x, var_0.a, -1838f) + var_0.c.c.ywz)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

