struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec3<bool> {
    global0 = false;
    global0 = _wgslsmith_add_i32(~(-u_input.c.x), ~(~(-u_input.c.x))) > u_input.c.x;
    let var_0 = vec4<u32>(~u_input.b, ~u_input.a, ~1u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(u_input.a, u_input.b)), firstTrailingBit(vec2<u32>(u_input.b, u_input.b))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 53194u), vec2<u32>(u_input.a, u_input.b)))) | countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.b), vec4<u32>(u_input.a, u_input.b, u_input.a, 35195u)), vec4<u32>(0u, u_input.b, 4294967295u, u_input.a)), vec4<u32>(u_input.a, 1u, u_input.a, 33361u) >> (abs(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)) % vec4<u32>(32u))));
    let var_1 = -45722i;
    let var_2 = select(!vec4<bool>(true, false, false, all(vec2<bool>(true, true))), vec4<bool>(u_input.c.x != _wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, u_input.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(1718i, 17974i), u_input.c.zz)), true, all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false), true)), false), any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false), true)));
    return select(var_2.yzz, !var_2.zyw, !var_2.zzz);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec3<bool> {
    global0 = false;
    global0 = true && arg_1;
    var var_0 = select(vec4<bool>(false, arg_1, false, !(!(arg_0.a.x == arg_0.a.x))), !(!(!select(vec4<bool>(true, true, arg_1, true), vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1)))), all(vec3<bool>(any(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, true, arg_1), arg_1)), !all(vec2<bool>(arg_1, true)), arg_1)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-888f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0.a.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1199f)))), -206f));
    var var_2 = -_wgslsmith_mod_i32(firstLeadingBit(10094i), i32(-1i) * -20929i);
    return select(var_0.wwz, func_3(), vec3<bool>(true, false, any(!select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, false, true, false)))));
}

fn func_1() -> i32 {
    let var_0 = !(!select(vec3<bool>(true, true, true), !func_2(Struct_1(vec4<f32>(245f, -1000f, -384f, 1059f), u_input.c.xz), false), u_input.c.x >= -u_input.c.x));
    global0 = !var_0.x;
    global0 = any(var_0.zx);
    global0 = !(!(!(!func_2(Struct_1(vec4<f32>(431f, 1193f, 1000f, -402f), vec2<i32>(-1i, u_input.c.x)), false).x)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-888f)), 1124f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-308f, -1432f, var_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-859f, -1045f, 694f, 1761f) * vec4<f32>(456f, -401f, -221f, 1568f)) - vec4<f32>(826f, -2427f, 3272f, -582f)) + vec4<f32>(-1160f, -601f, _wgslsmith_f_op_f32(1000f - -1736f), _wgslsmith_f_op_f32(ceil(1733f))))), select(vec2<i32>(u_input.c.x, 55474i), _wgslsmith_div_vec2_i32(u_input.c.yz, vec2<i32>(firstTrailingBit(u_input.c.x), min(u_input.c.x, u_input.c.x))), true));
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = -vec3<i32>(u_input.c.x, u_input.c.x, ~(~(-2147483647i)));
    let var_1 = !select(vec2<bool>(true, true), !vec2<bool>(any(vec4<bool>(false, true, false, false)), all(vec4<bool>(true, true, false, false))), !(!any(vec4<bool>(true, true, false, true))));
    let var_2 = vec4<i32>(-1i) * -((_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, -76231i, u_input.c.x, u_input.c.x), vec4<i32>(var_0.x, -2147483647i, var_0.x, var_0.x)) | vec4<i32>(var_0.x, u_input.c.x, var_0.x, 1i)) & vec4<i32>(-1i, ~var_0.x, var_0.x, func_1()));
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2617f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(456f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1716f), _wgslsmith_div_f32(1567f, -1466f)) + vec2<f32>(802f, _wgslsmith_f_op_f32(f32(-1f) * -1595f))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1748f, 286f)), 318f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(563f, -945f), vec2<f32>(-290f, -1288f))))))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~firstTrailingBit(min(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(1u, 64637u)))), -4658i, _wgslsmith_div_vec2_i32(var_2.xy | -vec2<i32>(1i, u_input.c.x), var_0.zy), var_0.x);
}

