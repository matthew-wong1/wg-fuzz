struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = u_input.c.x;
    var var_1 = ~_wgslsmith_mod_u32(min(0u, u_input.a.x), 14225u);
    global0 = select(vec2<bool>(true, true), vec2<bool>(any(!select(vec3<bool>(false, true, global0.x), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), global0.x), !(!global0.x));
    var var_2 = _wgslsmith_add_u32(~21228u, u_input.d.x);
    var var_3 = any(!(!(!(!vec4<bool>(global0.x, false, false, global0.x)))));
    return ~var_0 >> (~_wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.xx) % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: i32) -> u32 {
    let var_0 = vec4<f32>(312f, 1449f, -249f, arg_0.d);
    let var_1 = Struct_4(arg_3, select(!(!vec3<bool>(arg_1, arg_0.e, arg_0.e)), vec3<bool>(true, any(select(vec4<bool>(false, arg_1, global0.x, false), vec4<bool>(true, arg_0.e, true, false), arg_1)), arg_0.e), 59400u >= abs(func_3())), 248f, _wgslsmith_f_op_vec4_f32(var_0 - var_0), vec3<bool>(any(!(!vec2<bool>(arg_0.e, true))), any(select(!vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(arg_0.e, false, true, arg_1), vec4<bool>(true, global0.x, true, true))), any(!(!vec4<bool>(global0.x, arg_0.e, arg_1, arg_0.e)))));
    global0 = var_1.b.yz;
    global0 = var_1.e.zx;
    global0 = var_1.e.zz;
    return 4294967295u;
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_mod_vec2_i32(-_wgslsmith_div_vec2_i32(~reverseBits(vec2<i32>(40232i, u_input.b)), (vec2<i32>(-4788i, u_input.b) >> (vec2<u32>(u_input.c.x, 60648u) % vec2<u32>(32u))) >> (firstTrailingBit(u_input.a.wz) % vec2<u32>(32u))), vec2<i32>(-(~u_input.b), u_input.b));
    var var_1 = global0.x && !(!select(global0.x, 2147483647i != var_0.x, any(vec4<bool>(true, global0.x, global0.x, global0.x))));
    var var_2 = !global0.x;
    var var_3 = u_input.a.x;
    var_1 = global0.x;
    return ~_wgslsmith_mod_i32(7992i, _wgslsmith_div_i32(var_0.x, -2147483647i) << (_wgslsmith_clamp_u32(~u_input.a.x, func_2(Struct_1(49983i, -1288f, vec3<i32>(u_input.b, var_0.x, -7835i), -1000f, true), global0.x, vec2<u32>(u_input.d.x, u_input.c.x), u_input.b), u_input.a.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(func_1(), u_input.b);
    let var_1 = Struct_1(_wgslsmith_add_i32(firstLeadingBit(var_0.x) & _wgslsmith_div_i32(u_input.b, -2147483647i), (i32(-1i) * -2147483647i) | (u_input.b >> (u_input.d.x % 32u))) << (~(~_wgslsmith_div_u32(20454u, u_input.a.x)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1085f)) + _wgslsmith_f_op_f32(-1908f - 735f)))), reverseBits(~reverseBits(vec3<i32>(-1i, var_0.x, 2147483647i))) << (vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.d.x, u_input.c.x), _wgslsmith_div_u32(4294967295u, 1u)), ~31899u, ~abs(32293u)) % vec3<u32>(32u)), -553f, true);
    var var_2 = Struct_4(0i, vec3<bool>(true, true, all(select(vec4<bool>(false, false, var_1.e, true), vec4<bool>(var_1.e, false, var_1.e, false), select(vec4<bool>(global0.x, var_1.e, global0.x, false), vec4<bool>(true, false, global0.x, false), vec4<bool>(true, false, global0.x, true))))), _wgslsmith_f_op_f32(f32(-1f) * -1139f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.d, 402f, 290f))))), !vec3<bool>(select(true, global0.x, true), true, false));
    var_2 = Struct_4(2147483647i, var_2.b, _wgslsmith_div_f32(-1557f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c * var_1.d) + var_1.d), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b * var_2.c))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.c)), _wgslsmith_f_op_f32(select(551f, var_2.d.x, true)), -408f, _wgslsmith_div_f32(726f, var_2.d.x)), _wgslsmith_f_op_vec4_f32(sign(var_2.d)))), var_2.d, vec4<bool>(var_2.b.x | var_2.b.x, global0.x, all(vec2<bool>(var_1.e, global0.x)), true | all(vec3<bool>(true, false, var_1.e))))), vec3<bool>(all(select(vec2<bool>(false, var_2.e.x), vec2<bool>(true, false), false)) | any(!var_2.e), false, -1i >= _wgslsmith_add_i32(var_1.a, _wgslsmith_mod_i32(0i, -2147483647i))));
    let var_3 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1632f, 0u, 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.d.x))))) + _wgslsmith_f_op_f32(f32(-1f) * -197f)));
}

