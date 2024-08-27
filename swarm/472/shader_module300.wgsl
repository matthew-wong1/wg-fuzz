struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global1: array<vec3<f32>, 32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: u32) -> f32 {
    var var_0 = !global0.x;
    global1 = array<vec3<f32>, 32>();
    var_0 = global0.x;
    var var_1 = Struct_2(all(select(vec4<bool>(any(vec3<bool>(true, false, false)), select(false, global0.x, global0.x), true, global0.x || global0.x), select(vec4<bool>(global0.x, global0.x, false, true), select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), false), true), !(!vec4<bool>(false, global0.x, global0.x, false)))), !vec2<bool>(global0.x, false != (global0.x | true)), firstTrailingBit(firstLeadingBit(vec2<u32>(32377u, 47687u)) | ~vec2<u32>(arg_1, 0u)));
    let var_2 = Struct_2(var_1.b.x, vec2<bool>(var_1.a, all(global0.xxy) && true), (~vec2<u32>(41752u, 31819u) & _wgslsmith_mod_vec2_u32(var_1.c, vec2<u32>(var_1.c.x, 4294967295u))) ^ var_1.c);
    return _wgslsmith_f_op_f32(615f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-407f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(667f, -512f)))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(-32291i, 24443i, -2147483647i, -18302i), vec4<i32>(-562i, u_input.d, u_input.b.x, 32876i)), ~9121u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-744f))), 1f), _wgslsmith_add_u32(6555u, arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(298f, _wgslsmith_f_op_f32(f32(-1f) * -415f), _wgslsmith_f_op_f32(select(-817f, -756f, global0.x))) + global1[_wgslsmith_index_u32(~39454u, 32u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1036f)) * _wgslsmith_f_op_f32(f32(-1f) * -134f)))), -610f));
    var var_1 = _wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(19172u, 1u, var_0.b), select(vec3<u32>(arg_0, arg_0, 0u), vec3<u32>(arg_0, var_0.b, arg_0), false)), firstLeadingBit(vec3<u32>(arg_0, var_0.b, 13341u) | vec3<u32>(var_0.b, arg_0, var_0.b))), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, ~abs(var_0.b), ~arg_0), abs(vec3<u32>(var_0.b ^ 1u, 14384u, 1u)), vec3<u32>(arg_0, 0u, var_0.b | arg_0)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, 0u), 32u)] - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(arg_0, 32u)] - vec3<f32>(-835f, -184f, 1099f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-266f, var_0.c.x, var_0.d)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, var_0.a.x, 704f) * var_0.a) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.c.x + 683f), -1409f))), _wgslsmith_dot_vec2_u32(~max(var_1.zy, var_1.yy), vec2<u32>(~0u, var_0.b << (~4294967295u % 32u))), var_0.c, var_0.c.x);
    let var_2 = Struct_2(any(select(vec4<bool>(true, !global0.x, any(global0.xx), true), !(!vec4<bool>(global0.x, global0.x, true, global0.x)), all(!global0.xz))), global0.ww, _wgslsmith_div_vec2_u32(firstTrailingBit(firstTrailingBit(vec2<u32>(var_1.x, 1u))), ~(~vec2<u32>(var_1.x, 4294967295u))));
    let var_3 = reverseBits(~abs(min(abs(vec3<i32>(-6250i, u_input.b.x, u_input.b.x)), vec3<i32>(0i, -1i, u_input.a.x) | vec3<i32>(u_input.a.x, u_input.d, u_input.b.x))));
    return Struct_2(!global0.x, !var_2.b, countOneBits(var_2.c));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<f32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.xzz)), min(abs(_wgslsmith_mult_u32(3563u, arg_1.c.x)) & ~_wgslsmith_sub_u32(19247u, arg_1.c.x), _wgslsmith_sub_u32(arg_1.c.x, arg_1.c.x)), _wgslsmith_f_op_vec3_f32(abs(arg_0.yyw)), -259f);
    var var_1 = 0u;
    var var_2 = vec4<f32>(-1236f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1274f - arg_2.x) + var_0.c.x), arg_0.x, _wgslsmith_f_op_f32(round(998f)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_2.yyw))), vec3<f32>(_wgslsmith_div_f32(arg_2.x, 409f), _wgslsmith_f_op_f32(trunc(-419f)), _wgslsmith_f_op_f32(arg_2.x + var_2.x)))), 1u, _wgslsmith_div_vec3_f32(arg_0.wxx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.xxw) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.yzx - var_2.xwx)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1200f * -668f)), arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - 1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1832f - 999f) + 1f))));
    var var_3 = abs(firstTrailingBit(~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 12831u, 60585u, 129019u), vec4<u32>(arg_1.c.x, var_0.b, 35268u, 0u)), vec4<u32>(arg_1.c.x, 30982u, 0u, 1u) & vec4<u32>(2002u, 42842u, var_0.b, 18023u))));
    return 22813u <= ~arg_1.c.x;
}

fn func_1() -> Struct_2 {
    var var_0 = -163f;
    let var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(~121136u, _wgslsmith_clamp_u32(35982u, 26151u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 42025u, 4294967295u), vec3<u32>(0u, 1u, 1u)))), vec2<u32>(1u, _wgslsmith_div_u32(28218u, ~22549u)));
    var var_2 = select(true, global0.x, global0.x);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1926f)) + 1f))) - _wgslsmith_f_op_f32(1712f - 2316f));
    var var_3 = Struct_2(func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 813f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-534f)))), -385f, 1365f), func_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.x, var_1.x, var_1.x), reverseBits(vec3<u32>(2904u, var_1.x, 1u)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(361f + 474f)), _wgslsmith_div_f32(-545f, 257f))), !global0.ww, var_1);
    return func_2(107162u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_2(global0.x, vec2<bool>(true, global0.x), _wgslsmith_mult_vec2_u32(var_0.c, select(var_0.c, func_1().c, !vec2<bool>(global0.x, false))));
    let var_2 = var_1;
    global0 = !(!(!vec4<bool>(all(global0.yxz), true, global0.x, true)));
    var var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, firstTrailingBit(~_wgslsmith_div_u32(var_1.c.x, var_0.c.x)), ~4294967295u, var_1.c.x), max(vec4<u32>(_wgslsmith_mod_u32(var_1.c.x, 47426u), var_2.c.x & countOneBits(23390u), _wgslsmith_mult_u32(12336u, _wgslsmith_div_u32(var_0.c.x, 1u)), 42492u), abs((vec4<u32>(var_2.c.x, var_1.c.x, var_2.c.x, var_2.c.x) ^ vec4<u32>(var_2.c.x, var_2.c.x, 1u, 4294967295u)) & _wgslsmith_div_vec4_u32(vec4<u32>(50001u, var_1.c.x, var_2.c.x, var_0.c.x), vec4<u32>(var_2.c.x, var_0.c.x, 4294967295u, 7300u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-268f)) + -541f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(174f, -128f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1085f)), _wgslsmith_f_op_f32(558f - 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1456f, -1004f))))));
}

