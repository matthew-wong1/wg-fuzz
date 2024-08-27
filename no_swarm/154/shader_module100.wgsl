struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: u32, arg_3: vec2<bool>) -> i32 {
    let var_0 = u_input.c;
    let var_1 = 58954u;
    global0 = all(select(!vec3<bool>(true, true, arg_0.x >= 1285f), !select(!vec3<bool>(arg_1.x, arg_1.x, false), !arg_1.xwx, true), true));
    return ~u_input.c;
}

fn func_3(arg_0: u32, arg_1: u32) -> u32 {
    global0 = true;
    global0 = true;
    let var_0 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(5045u, u_input.e, ~u_input.e & 4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(71422u, 1u, arg_0, u_input.a.x)), ~43256u)), vec4<u32>(47543u, _wgslsmith_add_u32(arg_0 ^ arg_1, 1u), 1u, arg_0)), 48421u, firstLeadingBit(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -82600i, -1i), vec3<i32>(46600i, 8946i, 21731i))), _wgslsmith_clamp_vec3_u32(u_input.a.xzx, countOneBits(_wgslsmith_mod_vec3_u32(u_input.a.xyy, vec3<u32>(0u, arg_0, 60978u))) | vec3<u32>(_wgslsmith_sub_u32(u_input.e, 29017u), 111745u >> (arg_0 % 32u), _wgslsmith_add_u32(u_input.b.x, arg_0)), ~_wgslsmith_div_vec3_u32(~vec3<u32>(arg_1, 1u, arg_1), ~u_input.b.wxy)), vec2<bool>(any(vec3<bool>(true, true, true)), false));
    return ~(~(arg_1 << (select(0u, var_0.a, true) % 32u)));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> bool {
    global0 = arg_2.e.x;
    let var_0 = Struct_3(u_input.b.xw, u_input.a, ~_wgslsmith_mod_u32(arg_0, ~1u & (86599u & arg_2.d.x)));
    global0 = false;
    var var_1 = _wgslsmith_div_vec2_u32(firstLeadingBit(arg_2.d.xx), vec2<u32>(arg_0, var_0.b.x));
    global0 = arg_2.e.x;
    return any(vec3<bool>(false, arg_1, arg_1));
}

fn func_1() -> Struct_1 {
    let var_0 = !vec4<bool>(true, true, (u_input.d & func_2(vec3<f32>(1189f, 1267f, -1208f), vec4<bool>(false, false, true, true), u_input.b.x, vec2<bool>(true, true))) <= u_input.d, true);
    global0 = true;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global0 = true;
    global0 = !func_4(func_3(select(u_input.b.x, u_input.a.x, true) >> (u_input.a.x % 32u), 1u), !(_wgslsmith_mod_u32(u_input.b.x, u_input.e) == u_input.b.x), Struct_1(abs(min(u_input.a.x, u_input.b.x)), ~_wgslsmith_div_u32(72665u, u_input.a.x), 0i, ~u_input.a.xwz & ~u_input.a.wzw, !var_0.zy), _wgslsmith_div_f32(796f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -140f), all(var_0)))));
    return Struct_1(func_3(_wgslsmith_mod_u32(~u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b.yzw, vec3<u32>(12538u, u_input.a.x, u_input.b.x), u_input.a.yzz), ~u_input.a.wwz)), u_input.e ^ _wgslsmith_sub_u32(u_input.e ^ 0u, reverseBits(27995u))), ~(~(~u_input.a.x)), 2147483647i, _wgslsmith_div_vec3_u32(~vec3<u32>(5290u, 0u, u_input.a.x & u_input.b.x), vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.b.www, u_input.a.xyx)) | (_wgslsmith_sub_vec3_u32(u_input.b.xwz, vec3<u32>(u_input.a.x, u_input.a.x, 20317u)) | vec3<u32>(17518u, 29413u, u_input.e))), vec2<bool>(false, any(var_0.wz)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(vec4<bool>(true, true, true, true));
    var var_0 = Struct_2(func_1());
    var var_1 = Struct_2(func_1());
    var var_2 = Struct_3(~var_1.a.d.zz, min(u_input.b, vec4<u32>(52539u, abs(~u_input.e), ~(~10394u), ~func_1().d.x)), ~0u);
    let var_3 = Struct_1(25286u, var_1.a.b, 1i, var_0.a.d << ((var_2.b.zxx & var_1.a.d) % vec3<u32>(32u)), vec2<bool>(false, !var_0.a.e.x & ((var_0.a.c <= var_1.a.c) != var_1.a.e.x)));
    var var_4 = 75019i;
    var_2 = Struct_3(~vec2<u32>(~1u, ~firstLeadingBit(u_input.e)), ~(~vec4<u32>(15392u, var_2.a.x, min(74657u, u_input.a.x), var_0.a.b)), ~(~var_0.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.d.zy, _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(2147483647i, var_1.a.c), select(6916i, -1i, false), -60964i), -firstTrailingBit(vec3<i32>(u_input.d, var_0.a.c, -1i))), ~(-vec3<i32>(u_input.c, u_input.c, var_0.a.c))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-248f, 2404f), -113f)), 1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(399f - -1051f) + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -412f))), 188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-523f + -805f)))), abs(u_input.a) << (u_input.b % vec4<u32>(32u)), 540f);
}

