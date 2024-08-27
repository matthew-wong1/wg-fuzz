struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<u32>, arg_3: vec4<f32>) -> bool {
    var var_0 = Struct_2(~u_input.b.x, vec4<bool>(false, _wgslsmith_f_op_f32(-arg_3.x) < -1194f, -890f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.x)) - arg_3.x), arg_0.x));
    var_0 = Struct_2(firstTrailingBit(var_0.a), vec4<bool>(!all(vec4<bool>(var_0.b.x, false, true, var_0.b.x)), true, arg_0.x, arg_0.x));
    var_0 = Struct_2(_wgslsmith_mult_i32(~var_0.a, 1i), var_0.b);
    var_0 = Struct_2(-2147483647i, vec4<bool>(true, !(!arg_0.x), any(select(var_0.b.wz, arg_0.wx, true)) && (var_0.a > var_0.a), var_0.b.x));
    var var_1 = arg_3.xzw;
    return true;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(select(u_input.a.x, firstLeadingBit(0u), true) ^ 53452u, firstLeadingBit(~(~max(1u, 4294967295u))), true != any(vec2<bool>(false, func_3(vec4<bool>(true, true, false, false), 1u, vec2<u32>(31020u, u_input.a.x), vec4<f32>(757f, 1111f, 1446f, 270f)))));
    var var_1 = select(select(vec2<bool>(true, func_3(vec4<bool>(true, var_0.c, var_0.c, var_0.c), _wgslsmith_dot_vec3_u32(vec3<u32>(3705u, 4632u, var_0.b), vec3<u32>(var_0.b, var_0.b, var_0.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 18171u), vec2<u32>(76093u, 41643u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-889f, 1637f, -1000f, -1141f)))), !(!vec2<bool>(var_0.c, var_0.c)), select(!select(vec2<bool>(true, var_0.c), vec2<bool>(false, false), vec2<bool>(var_0.c, var_0.c)), vec2<bool>(any(vec2<bool>(var_0.c, false)), var_0.c), false)), select(!select(!vec2<bool>(true, var_0.c), !vec2<bool>(false, var_0.c), true), vec2<bool>((var_0.c || var_0.c) | true, true), false | ((true == var_0.c) & var_0.c)), vec2<bool>(true, true));
    var var_2 = 3824u;
    var var_3 = var_0.a;
    var var_4 = vec3<i32>(~((u_input.b.x | u_input.b.x) << (~u_input.a.x % 32u)), 1i, _wgslsmith_dot_vec2_i32(-u_input.b.yx, vec2<i32>(u_input.b.x, 2147483647i)) & _wgslsmith_mod_i32(-1130i, -58900i)) << (firstLeadingBit(vec3<u32>(50186u, 63197u, ~u_input.a.x)) % vec3<u32>(32u));
    return 1i;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec3<bool>) -> f32 {
    var var_0 = Struct_2(32383i, vec4<bool>((1i << (u_input.a.x % 32u)) < -min(1i, 0i), ~func_2() <= firstTrailingBit(~u_input.b.x), !arg_1, true));
    var_0 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.a, u_input.b.x, -1i), vec4<i32>(u_input.b.x, u_input.b.x, var_0.a, 84195i)), 2147483647i | var_0.a) << (arg_0 % 32u), select(select(var_0.b, select(select(vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(false, arg_2.x, var_0.b.x, arg_1), vec4<bool>(false, false, true, true)), var_0.b, true), select(vec4<bool>(false, true, true, arg_2.x), !vec4<bool>(arg_2.x, true, arg_2.x, false), select(var_0.b, vec4<bool>(arg_2.x, arg_1, false, arg_2.x), vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x)))), var_0.b, true));
    var var_1 = Struct_2(~var_0.a, !(!vec4<bool>(arg_2.x, var_0.b.x, arg_1, true)));
    var var_2 = var_0.b.wy;
    let var_3 = _wgslsmith_div_vec4_u32(~(~abs(vec4<u32>(36699u, u_input.a.x, 0u, 4294967295u))) << (vec4<u32>(arg_0, select(min(arg_0, 0u), 0u & u_input.a.x, true), 4294967295u, ~(51822u >> (u_input.a.x % 32u))) % vec4<u32>(32u)), vec4<u32>(~reverseBits(_wgslsmith_add_u32(4775u, arg_0)), ~_wgslsmith_clamp_u32(4294967295u, arg_0, 59180u), arg_0, u_input.a.x));
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 459f;
    let var_1 = !any(!vec4<bool>(true, true, true, select(true, true, true)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -708f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(u_input.a.x, var_1, vec3<bool>(var_1, var_1, true))))));
    let var_3 = 4294967295u;
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<u32>(u_input.a.x, ~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_3, u_input.a.x)))), _wgslsmith_sub_vec2_u32(abs(u_input.a), u_input.a) >> (min(~(~vec2<u32>(var_3, 52266u)), (u_input.a | u_input.a) << (vec2<u32>(4294967295u, 96126u) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_sub_vec4_i32(-select(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x) << (vec4<u32>(var_3, 16321u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), ~vec4<i32>(u_input.b.x, 41447i, u_input.b.x, -25459i), u_input.b.x >= u_input.b.x), firstTrailingBit(~vec4<i32>(u_input.b.x, u_input.b.x, -71280i, u_input.b.x)) | min(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(1i, 1i, u_input.b.x, 0i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-857f, -962f)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), var_2)), var_3);
}

