struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: u32;

var<private> global2: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_clamp_i32(~1i, -22974i, ~(abs(arg_0.e.x) & arg_0.e.x)) >> (_wgslsmith_mod_u32(arg_0.c.x, _wgslsmith_div_u32(max(32969u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, arg_0.b, 1u, arg_0.c.x), vec4<u32>(68530u, 25046u, arg_0.b, 0u))), _wgslsmith_mod_u32(4294967295u, firstLeadingBit(arg_0.c.x)))) % 32u);
    var var_1 = -reverseBits(_wgslsmith_sub_vec4_i32(firstTrailingBit(firstTrailingBit(arg_0.e)), _wgslsmith_clamp_vec4_i32(-u_input.a, vec4<i32>(-2147483647i, arg_0.e.x, -1i, u_input.a.x), ~u_input.a)));
    global2 = !arg_0.a.x;
    let var_2 = arg_0.b & 4294967295u;
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-298f)), _wgslsmith_f_op_f32(-arg_0.d)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> u32 {
    global2 = arg_0.d < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.d))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2064f - -380f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0))));
    var var_0 = _wgslsmith_mod_vec2_i32(~arg_0.e.xy, _wgslsmith_div_vec2_i32(abs(min(vec2<i32>(arg_0.e.x, -2147483647i) | vec2<i32>(arg_0.e.x, -41657i), vec2<i32>(1i, arg_0.e.x))), vec2<i32>(-1i, abs(i32(-1i) * -1i))));
    var var_1 = select(arg_0.a.yw, select(!(!arg_0.a.yy), select(arg_0.a.xx, !arg_0.a.yy, arg_1), !arg_0.a.xz), arg_0.a.xy);
    let var_2 = select(vec4<i32>(1i, 1i, ~(~39260i), -(i32(-1i) * -15902i)), ~(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(arg_0.e.x, var_0.x, u_input.b, 2147483647i)) ^ firstTrailingBit(-vec4<i32>(-25004i, 54723i, var_0.x, arg_0.e.x))), !(!(!vec4<bool>(true, arg_1, arg_1, false))));
    global0 = _wgslsmith_dot_vec2_u32(arg_0.c, vec2<u32>(_wgslsmith_mult_u32(arg_0.b, 1u), arg_0.c.x));
    return ~(~0u);
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = ~(u_input.a & reverseBits(countOneBits(_wgslsmith_div_vec4_i32(u_input.a, u_input.a))));
    global1 = arg_0.b.x;
    global0 = _wgslsmith_add_u32(_wgslsmith_mod_u32(~func_2(Struct_1(vec4<bool>(false, false, arg_0.c, true), arg_0.b.x, vec2<u32>(arg_0.b.x, arg_0.a.x), 2190f, vec4<i32>(-1i, -47573i, -1i, 1i)), !arg_0.c), func_2(Struct_1(vec4<bool>(true, arg_0.c, arg_0.c, arg_0.c), arg_0.a.x << (arg_0.b.x % 32u), ~vec2<u32>(arg_0.a.x, 0u), _wgslsmith_f_op_f32(f32(-1f) * -951f), vec4<i32>(var_0.x, 43397i, u_input.b, -91778i)), arg_0.c && all(vec2<bool>(true, arg_0.c)))), _wgslsmith_sub_u32(arg_0.b.x, arg_0.b.x));
    global0 = arg_0.b.x;
    let var_1 = _wgslsmith_dot_vec4_i32(u_input.a, u_input.a);
    return select(max(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, func_2(Struct_1(vec4<bool>(false, arg_0.c, arg_0.c, false), 4294967295u, arg_0.b.yy, 931f, vec4<i32>(u_input.b, var_1, var_1, -1i)), false), 4294967295u << (arg_0.b.x % 32u), 88430u), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(22100u, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<u32>(27065u, 1u, 53849u, 13393u), vec4<u32>(arg_0.b.x, 0u, arg_0.b.x, arg_0.b.x)))), ~_wgslsmith_mod_u32(arg_0.a.x, _wgslsmith_mult_u32(4294967295u, 0u))), _wgslsmith_sub_u32(30918u, arg_0.a.x), any(select(vec3<bool>(all(vec4<bool>(true, false, false, false)), true, arg_0.c), !(!vec3<bool>(arg_0.c, false, arg_0.c)), arg_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 22397u;
    var var_0 = ~(_wgslsmith_mult_u32(~func_1(Struct_2(vec2<u32>(0u, 1u), vec3<u32>(4294967295u, 9713u, 1u), true, u_input.a.zz)), ~28876u) & _wgslsmith_mod_u32(~abs(53058u), ~countOneBits(94788u)));
    let var_1 = Struct_1(vec4<bool>(true, true, !(!all(vec4<bool>(true, true, true, true))), false), ~_wgslsmith_add_u32(1u, ~12775u), ~vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(f32(-1f) * -215f), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(1i, 1i, abs(15267i), countOneBits(0i))), vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(13936i, u_input.b, 39831i, -1i), u_input.a, u_input.a), u_input.a), 0i, countOneBits(u_input.a.x)), u_input.a >> (vec4<u32>(102493u, 1u, ~17669u, ~1u) % vec4<u32>(32u))));
    let var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(var_1)), var_1.d)), _wgslsmith_f_op_f32(-var_1.d), -229f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_1.d), var_1.d, _wgslsmith_f_op_f32(select(var_1.d, var_1.d, var_1.a.x)), -290f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1132f, var_1.d, var_1.d, 357f), vec4<f32>(var_1.d, -684f, var_1.d, var_1.d), false))), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.d, var_1.d, var_1.d, var_1.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, var_1.d, 1089f, -444f) - vec4<f32>(-1000f, var_1.d, 812f, 730f))))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, 361f, -267f))) + vec3<f32>(var_1.d, 176f, _wgslsmith_f_op_f32(var_1.d * 1000f))), vec3<f32>(var_1.d, _wgslsmith_f_op_f32(-var_1.d), var_1.d), !var_1.a.xzw)), var_1.c.x);
}

