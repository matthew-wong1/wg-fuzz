struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, false, true)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-109f, 525f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-998f - 719f) - _wgslsmith_f_op_f32(1123f + 1826f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-111f * -1308f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-275f)))))) - -398f), _wgslsmith_f_op_f32(1068f * _wgslsmith_f_op_f32(-210f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(637f - -770f)))));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-240f, 295f, 907f, 1385f)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1768f, -1012f, -1333f) * vec4<f32>(-800f, 170f, 1356f, 2030f)) - _wgslsmith_f_op_vec4_f32(func_3()))))), !all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(func_3()).x, 718f, countOneBits(-1i));
}

fn func_1() -> Struct_1 {
    var var_0 = ~select(-2147483647i, firstTrailingBit(_wgslsmith_mult_i32(-7808i, 64029i)), true);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(560f + 1113f) * -107f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-378f + -835f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(372f, 285f, false)) - 1000f))), 606f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1063f))))));
    var var_2 = Struct_3(func_2(), ~vec3<u32>((0u << (u_input.a % 32u)) & ~u_input.a, _wgslsmith_mult_u32(u_input.a, 0u) & 36339u, ~_wgslsmith_div_u32(u_input.a, 25245u)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, -1047f, _wgslsmith_f_op_f32(sign(1638f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) - _wgslsmith_f_op_f32(-1000f * -125f))))), Struct_2(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), false)));
    var_0 = var_2.a.e;
    var var_3 = 4294967295u;
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_3 {
    var var_0 = func_1();
    global0 = array<Struct_2, 26>();
    let var_1 = !select(select(select(!arg_0.d.a, !arg_0.d.a, select(arg_0.d.a, arg_0.d.a, arg_0.d.a)), vec3<bool>(false & arg_0.d.a.x, var_0.b, var_0.b), vec3<bool>(true, true, var_0.b)), arg_0.d.a, select(!vec3<bool>(arg_0.a.b, var_0.b, false), vec3<bool>(true, any(vec4<bool>(arg_0.a.b, true, true, var_0.b)), func_1().b), arg_0.d.a));
    var var_2 = Struct_2(arg_0.d.a);
    return Struct_3(arg_0.a, ~arg_0.b | (~arg_0.b & _wgslsmith_sub_vec3_u32(min(vec3<u32>(arg_0.b.x, 14746u, u_input.a), arg_0.b), vec3<u32>(u_input.a, 1u, arg_0.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(~abs(4294967295u)), ~(~39622u) & abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a, 16624u), vec4<u32>(38830u, arg_0.b.x, u_input.a, arg_0.b.x)))), 26u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(func_1(), vec3<u32>(firstTrailingBit(_wgslsmith_div_u32(30646u, 27639u)), u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1294f, -1000f, 1347f, 1006f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-447f, 692f, -1160f, 785f) - vec4<f32>(596f, 1842f, 866f, 886f)))), Struct_2(vec3<bool>(any(vec4<bool>(false, false, false, false)), true, true))), vec3<i32>(-10868i, ~(-47350i), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(28092i, -36163i), vec2<i32>(-2147483647i, 0i))));
    var var_1 = -(-(_wgslsmith_dot_vec3_i32(vec3<i32>(-57797i, var_0.a.e, 30377i), vec3<i32>(var_0.a.e, var_0.a.e, var_0.a.e)) >> (var_0.b.x % 32u)) | -var_0.a.e);
    global0 = array<Struct_2, 26>();
    var_1 = _wgslsmith_mult_i32(-var_0.a.e, var_0.a.e);
    var var_2 = vec2<bool>(any(!vec3<bool>(false, var_0.d.a.x, var_0.d.a.x)), max(u_input.a ^ 29301u, max(1u, 81230u)) > 1u);
    let var_3 = func_4(func_4(Struct_3(var_0.a, ~(vec3<u32>(501u, 4294967295u, u_input.a) ^ vec3<u32>(1u, 19867u, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), global0[_wgslsmith_index_u32(1u, 26u)]), -_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, var_0.a.e, -21881i)), reverseBits(vec3<i32>(var_0.a.e, -19888i, var_0.a.e)))), vec3<i32>(var_0.a.e, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.e, func_4(Struct_3(var_0.a, var_0.b, vec4<f32>(var_0.a.c, var_0.a.c, var_0.c.x, var_0.a.c), var_0.d), vec3<i32>(-33253i, var_0.a.e, var_0.a.e)).a.e, var_0.a.e, firstTrailingBit(2147483647i)), vec4<i32>(var_0.a.e, 1i, 2147483647i, var_0.a.e | 34389i)), var_0.a.e));
    var var_4 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, -abs(vec3<i32>(_wgslsmith_add_i32(var_3.a.e, var_0.a.e), -2147483647i, ~var_3.a.e)));
}

