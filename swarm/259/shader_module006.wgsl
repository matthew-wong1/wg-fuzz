struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec2<bool>,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
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

var<private> global0: i32;

var<private> global1: bool = false;

var<private> global2: i32 = 1i;

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, true);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = -(vec2<i32>(-1i) * -max(u_input.e, _wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.c), vec2<i32>(u_input.e.x, -38790i))));
    var var_1 = Struct_2(Struct_1(u_input.b.x, ~(-vec2<i32>(1i, u_input.c)), (global3.x | false) != false, ~0u, global3.x), Struct_1(~max(u_input.b.x, ~u_input.b.x), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(~u_input.e, var_0), var_0), all(global3.yz), u_input.b.x, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(1107f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -431f) + _wgslsmith_f_op_f32(floor(741f)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(411f, 1000f, 747f), vec3<f32>(-1000f, -106f, 1000f))))))), Struct_1(abs(~min(u_input.b.x, 0u)), max(abs(-vec2<i32>(1i, 2147483647i)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(var_0, var_0), var_0, _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_0.x), vec2<i32>(var_0.x, -1i)))), !global3.x || global3.x, u_input.b.x, true));
    return !global3.x;
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    global1 = !select(func_3(), all(select(select(vec4<bool>(global3.x, arg_0.x, false, false), vec4<bool>(true, arg_0.x, false, arg_0.x), global3.x), !vec4<bool>(global3.x, global3.x, arg_0.x, false), false)), arg_0.x);
    global1 = global3.x;
    return _wgslsmith_clamp_i32(2007i, -4749i, -46018i);
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> StorageBuffer {
    var var_0 = vec4<i32>(firstTrailingBit(u_input.d), func_2(select(arg_0.xx, !global3.xz, select(select(global3.wy, vec2<bool>(global3.x, false), vec2<bool>(global3.x, true)), !arg_0.xy, global3.yw))), -_wgslsmith_dot_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(50523i, 2147483647i, 79871i, u_input.e.x), vec4<i32>(1i, -19437i, -1i, 24289i))), vec4<i32>(_wgslsmith_mult_i32(u_input.e.x, u_input.c), -59167i, _wgslsmith_sub_i32(u_input.a, 1i), 794i)), -(~min(-2147483647i, ~0i)));
    let var_1 = Struct_1(u_input.b.x << (~reverseBits(_wgslsmith_div_u32(25615u, 41842u)) % 32u), ~(-(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.d), u_input.e) >> ((u_input.b.yz >> (vec2<u32>(arg_1, arg_1) % vec2<u32>(32u))) % vec2<u32>(32u)))), global3.x, ~(u_input.b.x & select(u_input.b.x, 4294967295u, global3.x)), !any(!select(vec4<bool>(false, arg_0.x, global3.x, global3.x), vec4<bool>(false, arg_0.x, global3.x, arg_0.x), vec4<bool>(true, arg_0.x, true, arg_0.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1004f, 283f) * vec2<f32>(897f, 1360f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1187f, 895f))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-881f, 1523f) * vec2<f32>(-2092f, 1671f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1113f, -583f)), true))))));
    global3 = !vec4<bool>(var_1.e, !arg_0.x, -1259f >= var_2.x, !all(!vec2<bool>(arg_0.x, global3.x)));
    var var_3 = abs(~u_input.b.x) & ~arg_1;
    return StorageBuffer(select(_wgslsmith_mod_i32(var_0.x << (67763u % 32u), var_0.x | u_input.d), _wgslsmith_sub_i32(~var_0.x, abs(482i)), select(!arg_0.x, true, true)) & (_wgslsmith_dot_vec2_i32(var_0.yy, ~var_1.b) & func_2(select(arg_0.zy, global3.zx, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global3.yyy, 19248u);
}

