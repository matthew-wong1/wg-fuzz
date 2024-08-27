struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: Struct_3 = Struct_3(Struct_2(vec3<u32>(4294967295u, 4294967295u, 40687u), 2147483647i, Struct_1(true, 0i, 0u, vec2<i32>(41260i, 28092i), vec2<f32>(260f, -280f))), vec4<bool>(true, false, true, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32, arg_3: i32) -> vec2<bool> {
    global1 = Struct_3(Struct_2(arg_0.a, _wgslsmith_mult_i32(7840i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-10578i, arg_2), ~arg_0.b, ~arg_0.c.b)), arg_0.c), global1.b);
    var var_0 = global1.a.c.e.x;
    var_0 = 1274f;
    let var_1 = select(select(!vec4<bool>(global1.b.x, global1.a.c.a, arg_0.c.a, true), global1.b, arg_0.c.a), global1.b, false);
    var var_2 = false;
    return !vec2<bool>(true, var_1.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: f32, arg_3: bool) -> u32 {
    global1 = Struct_3(Struct_2(vec3<u32>(global1.a.c.c, ~19735u, _wgslsmith_add_u32(52204u, 1u)), -31967i, Struct_1(!global1.b.x, ~global1.a.b >> (arg_0.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.a.x, global1.a.a.x, 55142u), vec3<u32>(17893u, u_input.a, u_input.a)) & 1u, global1.a.c.d, global1.a.c.e)), !global1.b);
    var var_0 = global1.a.c;
    global0 = func_3(global1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(685f, -2448f))) - global1.a.c.e), ~0i & abs(~var_0.b), firstLeadingBit(~(~global1.a.c.d.x)) | var_0.d.x);
    var var_1 = -vec3<i32>(i32(-1i) * -1i, -_wgslsmith_mult_i32(firstTrailingBit(-2147483647i), var_0.d.x), 1188i);
    return ~(~arg_0.x);
}

fn func_1() -> i32 {
    var var_0 = vec2<u32>(~min(global1.a.c.c, ~func_2(global1.a.a, true, global1.a.c.e.x, global1.a.c.a)), firstLeadingBit(_wgslsmith_clamp_u32(~u_input.b, 57270u << (u_input.a % 32u), u_input.a)) & _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(2316u, global1.a.a.x, u_input.a, global1.a.a.x), abs(vec4<u32>(1u, global1.a.a.x, u_input.b, 25615u))), ~countOneBits(vec4<u32>(global1.a.c.c, u_input.a, u_input.b, 10316u))));
    global0 = vec2<bool>(any(!select(!vec2<bool>(global1.a.c.a, true), vec2<bool>(true, global0.x), true)), true);
    var_0 = vec2<u32>(max(countOneBits(var_0.x) << (~4294967295u % 32u), func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.a.a.x, 1u, u_input.b), global1.a.a), global0.x, 214f, global0.x && true)), select(~0u, ~(~44970u), false)) << (global1.a.a.yx % vec2<u32>(32u));
    var var_1 = vec4<u32>(firstTrailingBit(~145695u), 4294967295u, _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(~4294967295u, ~32491u), var_0.x), var_0.x & ~16717u), u_input.a);
    var_1 = vec4<u32>(~(var_0.x & min(27901u, 1u)) | 4294967295u, ~var_0.x, ~(~(~global1.a.c.c)), 39712u);
    return -(i32(-1i) * -min(73813i, 0i)) ^ global1.a.c.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = global1.a.c.d | (_wgslsmith_add_vec2_i32(global1.a.c.d, vec2<i32>(2147483647i, 57292i << (global1.a.c.c % 32u))) >> (~global1.a.a.xx % vec2<u32>(32u)));
    var var_2 = Struct_1(true, 68642i, ~global1.a.c.c, vec2<i32>(_wgslsmith_add_i32(-1i, func_1()), ~var_1.x), _wgslsmith_f_op_vec2_f32(abs(global1.a.c.e)));
    var var_3 = Struct_3(Struct_2(global1.a.a, firstLeadingBit(global1.a.b), Struct_1(true, select(~global1.a.c.b, _wgslsmith_mult_i32(global1.a.b, 2147483647i), !var_0), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a, 38131u, 46631u), _wgslsmith_mult_u32(u_input.b, 0u)), vec2<i32>(-1i, 2147483647i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-367f, 853f) + var_2.e))), vec4<bool>(any(global1.b), !(!(global1.a.c.e.x != var_2.e.x)), all(global1.b.yz), true));
    var_2 = var_3.a.c;
    global1 = Struct_3(var_3.a, global1.b);
    let var_4 = abs(_wgslsmith_div_vec2_u32(global1.a.a.yz, select(~global1.a.a.zz, ~vec2<u32>(0u, global1.a.c.c), select(vec2<bool>(true, global0.x), vec2<bool>(false, true), var_2.a))) << (reverseBits(~(vec2<u32>(530u, global1.a.c.c) >> (global1.a.a.yx % vec2<u32>(32u)))) % vec2<u32>(32u)));
    let var_5 = !(!(!select(var_3.b.xy, select(vec2<bool>(global0.x, var_0), vec2<bool>(global1.a.c.a, global1.b.x), global1.a.c.a), var_3.a.c.d.x <= -57358i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-865f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.c.e.x + global1.a.c.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.x) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1042f * -1997f), -127f))))), 0i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(global1.a.c.b, 1i, 2147483647i, var_2.d.x), firstTrailingBit(vec4<i32>(23083i, var_1.x, var_3.a.b, -47317i))) | var_2.b, ~1i, -(~0i)));
}

