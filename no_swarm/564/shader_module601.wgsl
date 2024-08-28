struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_4) -> u32 {
    global1 = global0.wz;
    global0 = vec4<bool>(!(!arg_3.a), global1.x && true, _wgslsmith_f_op_f32(921f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a.x, 929f, global0.x)))) <= arg_0.a.x, arg_1);
    global0 = !(!vec4<bool>(global1.x, true, any(global0.xyw), arg_3.a));
    var var_0 = arg_3;
    var_0 = Struct_4(0u > arg_2.x);
    return 1u;
}

fn func_3(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_2(!(!all(vec4<bool>(global1.x, true, global1.x, global1.x))));
    global0 = !vec4<bool>(any(!(!global0.wx)), any(vec2<bool>(true, false)), any(!global0.wwx), global1.x);
    let var_1 = -arg_0;
    let var_2 = var_0;
    global0 = select(select(vec4<bool>(!any(global0.zyw), global1.x, global1.x, any(!global0.zx)), !select(select(vec4<bool>(true, global1.x, var_2.a, var_2.a), vec4<bool>(var_0.a, global1.x, global0.x, var_0.a), vec4<bool>(false, false, global1.x, true)), select(vec4<bool>(true, true, true, global1.x), vec4<bool>(var_0.a, var_0.a, true, true), vec4<bool>(false, var_0.a, global0.x, var_0.a)), select(vec4<bool>(var_2.a, global1.x, var_0.a, false), vec4<bool>(true, global0.x, true, global0.x), false)), true), !vec4<bool>(var_0.a, false, global0.x, true), var_2.a);
    return Struct_3(firstTrailingBit(1u));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec2<i32>, arg_3: bool) -> Struct_4 {
    return Struct_4(false);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<f32>) -> Struct_4 {
    let var_0 = vec3<u32>(reverseBits(38635u), 46321u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(21073u, 1u, 4294967295u, 0u), vec4<u32>(4294967295u, 15683u, 6068u, 17092u), vec4<bool>(true, arg_1.a, false, true))) >> (_wgslsmith_clamp_u32(1u, ~39970u, _wgslsmith_mult_u32(10063u, 1u)) % 32u)));
    global1 = !vec2<bool>(any(!vec3<bool>(arg_1.a, false, global1.x)), !(var_0.x < 46002u));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * -1224f), _wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(arg_2.x * -1000f))), _wgslsmith_f_op_f32(arg_2.x + arg_2.x));
    var var_2 = u_input.a.x;
    var var_3 = select(false, true, (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -43384i, u_input.a.x, 31610i) & vec4<i32>(388i, u_input.a.x, u_input.a.x, 2147483647i), vec4<i32>(-1i, -15620i, 17095i, u_input.a.x) << (vec4<u32>(var_0.x, 32892u, var_0.x, var_0.x) % vec4<u32>(32u))) < 2147483647i) & arg_1.a);
    return func_4(func_3(select(u_input.a.x, -8614i << (func_2(Struct_1(vec3<f32>(-718f, -1000f, var_1.x), 39246u), true, var_0.xx, Struct_4(true)) % 32u), !global1.x)), _wgslsmith_div_u32(33920u, 19310u) == _wgslsmith_div_u32(firstLeadingBit(4294967295u), var_0.x), select(u_input.a.zy, ~_wgslsmith_sub_vec2_i32(u_input.a.xx, reverseBits(u_input.a.zy)), !global0.x), false);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_4, arg_3: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(1084f, _wgslsmith_f_op_f32(-1255f * -429f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.zz) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, 951f) - vec2<f32>(1201f, 269f))))))));
    global0 = vec4<bool>(true, arg_2.a, true, true);
    global1 = vec2<bool>(false, 1532f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    var var_1 = arg_0;
    let var_2 = 1u & ~var_1.b;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.zz;
    var var_0 = Struct_1(vec3<f32>(-2217f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -188f), -1278f)), 1023f), _wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(_wgslsmith_div_u32(select(0u, 0u, true), abs(4294967295u)), ~_wgslsmith_clamp_u32(0u, 55181u, 1u))));
    var var_1 = countOneBits(u_input.a.x);
    global1 = global0.wx;
    global1 = vec2<bool>((true || func_5(Struct_1(vec3<f32>(var_0.a.x, 923f, 402f), 66377u), u_input.a.x, func_1(Struct_2(false), Struct_4(global0.x), vec3<f32>(var_0.a.x, -151f, var_0.a.x)), var_0.a.x)) || (global0.x && (!global1.x == global0.x)), true);
    var_0 = Struct_1(var_0.a, 104705u);
    var var_2 = Struct_3(53307u);
    var var_3 = vec2<bool>(!global1.x, select(any(!global0.www), global0.x, global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-29152i, u_input.a.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a.xz) | min(vec2<i32>(34828i, -1i), u_input.a.zz), min(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 0i), vec2<i32>(-1i, -8572i)), -u_input.a.zz)), u_input.a.x));
}

