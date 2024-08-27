struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
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

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, 25802i, 1i);

var<private> global1: vec2<u32>;

var<private> global2: bool = false;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(vec2<i32>(-6471i, i32(-1i) * -32694i) ^ vec2<i32>(u_input.b, _wgslsmith_div_i32(firstTrailingBit(1i), 0i)), global1.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2753f)) - 1394f))), global0.xz | ~global0.yz);
    var var_1 = 1u;
    var var_2 = var_0;
    let var_3 = Struct_2(~43254u);
    let var_4 = select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), vec3<bool>(true, true, true)), select(vec3<bool>(!any(vec2<bool>(false, false)), false, u_input.c < (global0.x & var_2.d.x)), !vec3<bool>(global0.x != 8229i, true, 4294967295u == var_2.b), select(true, _wgslsmith_mult_i32(-1i, u_input.c) >= -2147483647i, false)), !vec3<bool>(any(vec4<bool>(true, false, false, true)), true & any(vec3<bool>(false, true, false)), true));
    return vec4<i32>(~max(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -33374i, var_2.a.x) << (vec3<u32>(1u, 4294967295u, global1.x) % vec3<u32>(32u)), ~vec3<i32>(9586i, u_input.c, var_0.d.x)), global0.x), 0i, ~firstTrailingBit(-1i), u_input.c);
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: i32) -> vec3<i32> {
    var var_0 = reverseBits((vec4<i32>(-1i) * -vec4<i32>(-45894i, -1i, u_input.c, u_input.c)) & _wgslsmith_sub_vec4_i32(func_3(), -vec4<i32>(global0.x, 66544i, arg_2, global0.x)));
    global1 = u_input.a.yy;
    var_0 = vec4<i32>(u_input.c, -29160i, global0.x, -1i);
    var var_1 = select(vec4<bool>(!(arg_0 == true), arg_0, true == (all(vec3<bool>(arg_0, false, arg_1.x)) || true), u_input.c >= ~_wgslsmith_sub_i32(arg_2, -58780i)), select(!select(vec4<bool>(false, arg_1.x, arg_0, arg_0), vec4<bool>(arg_0, true, arg_1.x, true), select(vec4<bool>(arg_0, false, false, true), vec4<bool>(true, arg_0, true, true), arg_1.x)), select(select(vec4<bool>(true, false, arg_0, true), !vec4<bool>(arg_0, arg_1.x, false, arg_1.x), !vec4<bool>(true, true, arg_1.x, true)), vec4<bool>(true && arg_1.x, true, !arg_0, !arg_0), select(!vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(false, true, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true))), select(select(select(vec4<bool>(arg_1.x, arg_0, false, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, false, arg_1.x, arg_0)), vec4<bool>(arg_1.x, false, false, false), select(vec4<bool>(arg_1.x, true, true, true), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), false)), vec4<bool>(!arg_0, true, -1251i <= var_0.x, true), !all(arg_1))), select(!vec4<bool>(arg_1.x, any(arg_1.xz), true, true), select(select(!vec4<bool>(false, false, false, arg_0), !vec4<bool>(arg_0, arg_1.x, arg_0, arg_0), false), vec4<bool>(!arg_1.x, all(vec3<bool>(arg_1.x, false, arg_0)), arg_0, any(vec4<bool>(arg_1.x, arg_1.x, arg_0, arg_0))), !(!vec4<bool>(true, arg_1.x, arg_1.x, arg_0))), all(arg_1)));
    let var_2 = vec3<u32>(4294967295u, ~global1.x, countOneBits(0u));
    return abs(~vec3<i32>(firstLeadingBit(u_input.c & var_0.x), global0.x, _wgslsmith_clamp_i32(firstLeadingBit(1i), _wgslsmith_add_i32(24811i, arg_2), -20761i)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = _wgslsmith_div_vec3_i32(vec3<i32>(firstTrailingBit(~u_input.b), ~global0.x, 31133i), min(vec3<i32>(global0.x, _wgslsmith_mod_i32(global0.x, u_input.c), u_input.c) ^ (func_2(arg_0, vec3<bool>(true, arg_0, true), global0.x) & _wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.c, global0.x), vec3<i32>(2147483647i, global0.x, u_input.b))), reverseBits(-vec3<i32>(-26819i, 18049i, u_input.c))));
    var var_0 = min(4294967295u, abs(_wgslsmith_mod_u32(abs(u_input.a.x), global1.x)));
    var var_1 = -(-_wgslsmith_sub_vec4_i32(vec4<i32>(-25034i, -1i, -2147483647i, 0i), vec4<i32>(global0.x, -11576i, u_input.b, 0i)) ^ func_3()) | -max(max(vec4<i32>(2147483647i, 0i, -4944i, u_input.c), select(vec4<i32>(2147483647i, u_input.c, -2147483647i, 0i), vec4<i32>(66416i, 3511i, -52183i, -19243i), vec4<bool>(true, false, arg_0, arg_0))), vec4<i32>(i32(-1i) * -93135i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1326i, 1i, u_input.b), vec4<i32>(0i, -42004i, u_input.c, global0.x)), ~21637i, func_2(false, vec3<bool>(false, false, true), 0i).x));
    var var_2 = countOneBits(global0.x);
    global1 = firstTrailingBit(u_input.a.zz);
    return Struct_1(var_1.yx, _wgslsmith_div_u32(28185u << (1u % 32u), _wgslsmith_div_u32(~global1.x, ~abs(global1.x))), 1134f, var_1.yx >> (u_input.a.yz % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !(any(vec3<bool>(true, true, true)) | true);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-372f, 1219f) - _wgslsmith_f_op_f32(f32(-1f) * -353f)) - _wgslsmith_f_op_f32(floor(155f)))));
    global2 = !all(vec4<bool>(true, true, true, true));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1276f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 230f))), _wgslsmith_f_op_f32(step(1410f, -620f)))))));
    var var_2 = func_1(false);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -507f, var_1) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 703f, 456f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.a.x);
}

