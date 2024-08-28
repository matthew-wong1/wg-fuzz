struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1323f;

var<private> global1: vec3<bool>;

var<private> global2: vec4<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    return u_input.b;
}

fn func_2(arg_0: u32) -> f32 {
    global2 = _wgslsmith_mod_vec4_u32(func_3(!vec4<bool>(any(vec4<bool>(global1.x, global1.x, global1.x, global1.x)), true, false, global1.x), Struct_1(~(u_input.c.x << (u_input.c.x % 32u)), global1.zx), Struct_1(~17767u, vec2<bool>(any(vec3<bool>(global1.x, global1.x, global1.x)), true)), Struct_1(arg_0 ^ ~1u, !(!vec2<bool>(global1.x, global1.x)))), ~(u_input.b ^ u_input.b));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(615f, 193f, -653f, -857f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-767f, -1808f, 522f, -1246f), vec4<f32>(292f, -905f, 1235f, 1000f), global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(597f, -785f, 845f, -1741f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-662f))), -1194f, 1f, -503f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(968f, -1300f, -637f, 1223f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -831f, -134f, 1000f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0.x)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-218f, _wgslsmith_f_op_f32(abs(187f)), _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_div_f32(1454f, var_1)) * vec4<f32>(_wgslsmith_f_op_f32(step(var_1, -1988f)), _wgslsmith_f_op_f32(min(-1222f, var_0.x)), _wgslsmith_f_op_f32(step(214f, 695f)), var_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-725f, _wgslsmith_f_op_f32(1357f - -433f), var_1, _wgslsmith_div_f32(1423f, var_0.x)))));
    let var_2 = Struct_1(u_input.a.x, vec2<bool>(global1.x, false && any(vec4<bool>(global1.x, global1.x, global1.x, false))));
    return var_1;
}

fn func_1() -> Struct_1 {
    global2 = vec4<u32>(~1u >> (~(u_input.a.x >> (global2.x % 32u)) % 32u), ~_wgslsmith_div_u32(global2.x, _wgslsmith_add_u32(34136u, abs(u_input.b.x))), global2.x, global2.x);
    var var_0 = 1i;
    global0 = _wgslsmith_f_op_f32(func_2(abs(21964u)));
    let var_1 = -firstTrailingBit(vec3<i32>(1i, 1i, 1i));
    var_0 = abs(-12339i);
    return Struct_1(global2.x, global1.zy);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> u32 {
    let var_0 = vec2<bool>(true, true);
    global2 = abs(vec4<u32>(arg_1.a, func_3(vec4<bool>(false, false, global1.x, true), arg_1, arg_1, Struct_1(1u, var_0)).x, u_input.c.x, u_input.b.x) >> (~arg_0 % vec4<u32>(32u)));
    global1 = arg_3.yxw;
    global1 = select(arg_3.wyz, select(vec3<bool>(arg_3.x, var_0.x, !(false & var_0.x)), !arg_3.zzz, vec3<bool>(true, true, !global1.x)), select(select(vec3<bool>(arg_1.b.x, arg_1.b.x, true), select(select(vec3<bool>(true, false, false), vec3<bool>(arg_1.b.x, false, global1.x), vec3<bool>(true, true, true)), select(vec3<bool>(true, global1.x, true), arg_3.yyz, vec3<bool>(true, var_0.x, global1.x)), select(arg_3.yww, vec3<bool>(false, false, var_0.x), false)), select(vec3<bool>(true, var_0.x, false), !vec3<bool>(var_0.x, true, true), global1.x)), select(select(arg_3.xzx, arg_3.yzw, all(arg_1.b)), arg_3.xyw, vec3<bool>(global1.x, true, global1.x)), true));
    var var_1 = func_1();
    return (_wgslsmith_add_u32(func_1().a, _wgslsmith_mult_u32(1u, var_1.a)) >> (~arg_0.x % 32u)) << (firstLeadingBit(0u) % 32u);
}

fn func_5(arg_0: u32) -> Struct_1 {
    var var_0 = -30054i;
    var_0 = _wgslsmith_dot_vec2_i32(firstTrailingBit(firstTrailingBit(vec2<i32>(-1i, -59476i))), vec2<i32>(1i, 1i));
    var var_1 = ~(~_wgslsmith_dot_vec2_u32(firstLeadingBit(~u_input.a), vec2<u32>(~global2.x, select(0u, 1u, global1.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(320f, -647f))))));
    var var_3 = !any(!vec2<bool>(true, global1.x && global1.x));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1633f));
    var var_0 = 0u;
    var var_1 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(~(~3773i), 1i), -vec2<i32>(_wgslsmith_mult_i32(-47769i, -1i), countOneBits(-1i)));
    let var_2 = func_5(func_4(vec4<u32>(33467u, global2.x, ~28442u, _wgslsmith_mult_u32(82621u, 12949u) | (u_input.b.x & 4294967295u)), func_1(), u_input.b.x, !vec4<bool>(!global1.x, !global1.x, all(vec4<bool>(false, global1.x, global1.x, false)), false)));
    let var_3 = var_2;
    var var_4 = Struct_1(~(~select(1u, 1040u, true) | 43292u), vec2<bool>(var_2.b.x, false));
    let var_5 = ~u_input.b.wzw;
    var var_6 = countOneBits(~_wgslsmith_mult_i32(~19587i, -11122i) ^ _wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 1i, 0i, 1i), vec4<i32>(-2147483647i, 33952i, -574i, -2147483647i), vec4<i32>(-22354i, 22429i, -47422i, 18432i)), vec4<i32>(_wgslsmith_mult_i32(1i, 0i), max(-39781i, -28196i), _wgslsmith_clamp_i32(2147483647i, -1i, -54584i), _wgslsmith_div_i32(-509i, 26050i))));
    var var_7 = vec2<i32>(-abs(-18449i), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-abs(i32(-1i) * -var_7.x));
}

