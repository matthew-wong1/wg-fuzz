struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(15250u, 1u, 4294967295u, 8727u);

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global2: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> bool {
    global1 = select(select(select(select(!vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(true, true, true, true), vec4<bool>(global1.x, true, true, global1.x)), !select(vec4<bool>(false, global1.x, true, false), vec4<bool>(global1.x, false, global1.x, false), false), false), vec4<bool>(u_input.a.x > u_input.a.x, global1.x, !global1.x & any(vec4<bool>(false, global1.x, global1.x, global1.x)), !global1.x | any(vec4<bool>(global1.x, global1.x, global1.x, global1.x))), !select(!vec4<bool>(global1.x, global1.x, true, global1.x), !vec4<bool>(global1.x, global1.x, true, global1.x), !vec4<bool>(global1.x, global1.x, true, global1.x))), !vec4<bool>(all(select(vec2<bool>(global1.x, global1.x), global1.xy, vec2<bool>(false, global1.x))), any(!vec4<bool>(global1.x, global1.x, global1.x, true)), false, !global1.x), true);
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-505f, -1136f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.a, 1341f) - arg_0.a)))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a.x))))));
    global1 = select(vec4<bool>(!(select(global1.x, global1.x, global1.x) & (arg_1 == arg_1)), true, var_0.a.a.x < 170f, any(vec3<bool>(global1.x, true, global1.x))), vec4<bool>(global1.x, global1.x, any(global1.yy), true), any(select(!select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, false), global1.x), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, true, global1.x, false), !vec4<bool>(true, global1.x, global1.x, true)), (u_input.a.x ^ -14942i) == abs(1i))));
    var_0 = Struct_4(arg_0);
    var var_1 = Struct_3(-9184i << (~(~16418u >> (~arg_1 % 32u)) % 32u), ~(~(u_input.d.x << (17998u % 32u))), ~select(~vec2<i32>(u_input.a.x, u_input.a.x), -(~vec2<i32>(-2147483647i, 0i)), global1.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1101f, 1363f, arg_0.b.a)), vec3<f32>(arg_0.a.x, var_0.a.b.a, 1148f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a.x, 274f, var_0.a.b.a))), true)))), (u_input.d.x & ~(~u_input.b.x)) >= ~firstLeadingBit(~global0.x));
    return !(!(!all(vec4<bool>(false, true, var_1.e, global1.x)) | var_1.e));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> f32 {
    global2 = -187f;
    let var_0 = arg_2;
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1986f);
    let var_3 = vec3<bool>(!global1.x, !(!arg_1), func_3(Struct_2(_wgslsmith_div_vec2_f32(arg_2.a, _wgslsmith_f_op_vec2_f32(-var_0.a)), arg_2.b), ~reverseBits(u_input.b.x)));
    return _wgslsmith_f_op_f32(floor(arg_2.b.a));
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> Struct_4 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x));
    var var_0 = !(true & (_wgslsmith_f_op_f32(func_2(Struct_1(2030f), select(global1.x, false, global1.x), Struct_2(arg_0.a.a, arg_0.a.b))) != arg_0.a.b.a));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(927f, _wgslsmith_f_op_f32(f32(-1f) * -520f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a.x) * arg_0.a.b.a), _wgslsmith_f_op_f32(trunc(1315f)), _wgslsmith_mult_u32(34618u, arg_1) > (4294967295u ^ arg_1)))));
    var var_2 = Struct_5(firstLeadingBit(firstLeadingBit(~u_input.b)), 64936u);
    global2 = -1000f;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2410f, 1000f))))), Struct_1(_wgslsmith_div_f32(659f, -278f)))), ~(global0.x | _wgslsmith_dot_vec3_u32(global0.yyz << (vec3<u32>(25786u, u_input.d.x, 4294967295u) % vec3<u32>(32u)), u_input.b)));
    global1 = select(select(select(vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x, false, all(vec4<bool>(global1.x, global1.x, true, false))), u_input.a.x <= 1i), vec4<bool>(false, all(select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, true, false, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x))), (20349u > global0.x) && all(vec2<bool>(global1.x, global1.x)), global1.x && !global1.x), vec4<bool>(u_input.a.x <= (u_input.a.x << (45751u % 32u)), global1.x, all(vec4<bool>(true, global1.x, global1.x, true)), all(global1.ywz))), vec4<bool>(global1.x, true, false, !global1.x), global1.x);
    var var_1 = 892f;
    let var_2 = func_1(func_1(func_1(Struct_4(func_1(Struct_4(var_0.a), u_input.c).a), select(min(30545u, 4294967295u), u_input.c, u_input.a.x == -2147483647i)), ~(~_wgslsmith_clamp_u32(64530u, 0u, 1u))), ~firstTrailingBit(~_wgslsmith_dot_vec3_u32(global0.wxz, global0.zzx)));
    global1 = select(vec4<bool>(all(!vec4<bool>(global1.x, global1.x, true, false)), false, select(global1.x, true, global1.x), global1.x), select(!(!vec4<bool>(global1.x, global1.x, true, global1.x)), !vec4<bool>(global0.x <= 54027u, !global1.x, true, false), global1.x), any(!(!(!global1.xx))));
    global2 = _wgslsmith_f_op_f32(var_0.a.b.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.b.a, 719f, false)))) - var_0.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b.xy), _wgslsmith_div_u32(global0.x, 4294967295u), ~countOneBits(vec3<u32>(global0.x >> (13155u % 32u), ~u_input.b.x, u_input.d.x)), vec4<i32>(u_input.a.x, u_input.a.x, _wgslsmith_div_i32(u_input.a.x, countOneBits(_wgslsmith_mult_i32(u_input.a.x, 25949i))), -21242i));
}

