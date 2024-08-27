struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(u_input.a.x);
    let var_1 = _wgslsmith_clamp_i32(firstLeadingBit(-_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, global1.a), global1.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 3785i), -firstLeadingBit(~vec2<i32>(0i, -1i))), 31898i);
    global1 = Struct_1(14506i);
    global0 = _wgslsmith_mod_u32(select(64689u, 1u, !all(vec4<bool>(true, false, false, true))), u_input.b) | u_input.b;
    let var_2 = Struct_1(max(0i << (_wgslsmith_dot_vec4_u32(max(vec4<u32>(25663u, u_input.b, u_input.b, 6028u), vec4<u32>(6079u, u_input.b, u_input.b, 1u)), select(vec4<u32>(u_input.b, 2175u, u_input.b, u_input.b), vec4<u32>(0u, 127059u, 4294967295u, u_input.b), false)) % 32u), -1i));
    return select(!select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), var_1 > var_0.a), select(select(vec2<bool>(any(vec3<bool>(true, true, true)), true), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1637f) <= _wgslsmith_f_op_f32(select(-1451f, 1403f, true))), vec2<bool>(u_input.b == u_input.b, true), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, false), vec2<bool>(true, true))), select(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), all(vec3<bool>(false, false, false))), vec2<bool>(global1.a > _wgslsmith_mod_i32(-2147483647i, var_2.a), true), all(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), select(true, false, false)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-156f, arg_0.x) + -209f));
    var var_1 = !select(vec2<bool>(true, all(func_3())), !vec2<bool>(select(false, false, false), false), false);
    var var_2 = ~(vec2<i32>(-(~arg_2.a), -(~arg_2.a)) | _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a.x, 21784i), u_input.a.zz));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 1000f));
    return 7582i;
}

fn func_4(arg_0: u32, arg_1: i32) -> vec2<bool> {
    global1 = Struct_1(select(_wgslsmith_mult_i32(arg_1, select(-global1.a, -21989i, true)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1046f))) == 773f));
    global0 = _wgslsmith_add_u32(13146u, u_input.b >> (arg_0 % 32u));
    return !select(select(vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(true, false))), any(vec2<bool>(true, true))), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), ~_wgslsmith_mult_u32(1u, u_input.b) > arg_0);
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<bool>(0u <= select(0u, reverseBits(~u_input.b), true), _wgslsmith_f_op_f32(round(-837f)) == _wgslsmith_f_op_f32(f32(-1f) * -856f), all(select(func_4(1u, func_2(vec4<f32>(1000f, -1719f, 1890f, -466f), Struct_1(global1.a), Struct_1(1i))), select(vec2<bool>(true, true), func_3(), true), true)), all(vec3<bool>(func_3().x, func_3().x, false)));
    let var_1 = Struct_1(-(~global1.a));
    let var_2 = ~abs(_wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(21036u, u_input.b)) & 62332u);
    let var_3 = !any(vec4<bool>(true, true, true, var_0.x));
    var var_4 = _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2091f))))));
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = reverseBits(select(_wgslsmith_sub_i32(global1.a, max(countOneBits(-43930i), u_input.a.x)), min(31175i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(4018i, 0i, 37141i, -11754i), vec4<i32>(46549i, arg_3.a, u_input.a.x, global1.a)), -vec4<i32>(global1.a, arg_0.a, -40177i, 11007i))), !all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))));
    let var_1 = Struct_1(-1i);
    var var_2 = func_1();
    var var_3 = arg_1;
    var var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1, 2759f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(418f))))), vec2<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_1)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1))))), func_4(_wgslsmith_sub_u32(~arg_2, min(arg_2, 4294967295u)), ~1i)));
    return Struct_1(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b;
    let var_0 = func_5(func_1(), 760f, 3079u, Struct_1(-2147483647i & countOneBits(global1.a)));
    let var_1 = 3353i;
    var var_2 = var_0;
    let var_3 = func_1().a;
    let var_4 = -u_input.a;
    var var_5 = func_1().a;
    let var_6 = var_0;
    global0 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, -1340f, firstLeadingBit(-vec2<i32>(-1i, 29780i)) | reverseBits(abs(u_input.a.yz | vec2<i32>(global1.a, 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(317f, -725f)), _wgslsmith_f_op_f32(round(2140f))))) * -489f), vec4<u32>(u_input.b, 4294967295u, u_input.b, select(abs(4294967295u), ~select(0u, u_input.b, true), select(select(false, true, true), true, func_3().x))));
}

