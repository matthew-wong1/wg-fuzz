struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
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

var<private> global0: array<vec4<bool>, 12>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> vec2<i32> {
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f))), -411f, false)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1764f), 1000f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(595f + 406f) + _wgslsmith_f_op_f32(f32(-1f) * -196f))))));
    var var_2 = _wgslsmith_mult_i32(u_input.b.x, -(2147483647i & select(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2076i, var_0, 2147483647i), vec4<i32>(var_0, -43542i, var_0, 13314i)), arg_0.x & false)));
    let var_3 = _wgslsmith_mult_i32(var_0, -1i);
    var_2 = -19456i;
    return select(countOneBits(firstTrailingBit(u_input.b.zz ^ vec2<i32>(-1i, u_input.b.x))), vec2<i32>(abs(-2147483647i), var_3), false);
}

fn func_2() -> u32 {
    var var_0 = -810f;
    let var_1 = vec3<f32>(-196f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-267f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -298f)))), -178f);
    let var_2 = Struct_2(~abs(7999u));
    var var_3 = u_input.b.yz;
    var var_4 = countOneBits(-_wgslsmith_mult_vec2_i32(func_3(vec2<bool>(false, false), u_input.a.x), firstLeadingBit(u_input.b.xx) & u_input.b.xz));
    return firstTrailingBit(u_input.a.x);
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = Struct_2(func_2());
    let var_1 = Struct_2(arg_0);
    var var_2 = true || any(!vec3<bool>(true, u_input.b.x >= u_input.b.x, false));
    var var_3 = var_1;
    global0 = array<vec4<bool>, 12>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(309f, 361f))) + vec2<f32>(-2234f, _wgslsmith_f_op_f32(-1079f + -836f))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(461f + 145f)), _wgslsmith_f_op_f32(f32(-1f) * -281f))), func_1(91855u), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)));
    var var_1 = ~1i;
    global0 = array<vec4<bool>, 12>();
    let var_2 = var_0;
    var var_3 = vec2<i32>(~_wgslsmith_mult_i32((0i | u_input.b.x) ^ -u_input.b.x, -(~(-1i))), (29680i << (_wgslsmith_sub_u32(1u, ~u_input.a.x) % 32u)) ^ -u_input.b.x);
    let var_4 = max(77993u, select(4294967295u, 1u, var_2.b));
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer((vec4<i32>(firstTrailingBit(u_input.b.x), var_3.x, _wgslsmith_mod_i32(var_3.x, 0i), var_3.x) & reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, -1i, 9241i))) & (~(-vec4<i32>(u_input.b.x, u_input.b.x, var_3.x, -2147483647i)) >> ((~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x) << (abs(vec4<u32>(20128u, var_4, 1u, 74014u)) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

