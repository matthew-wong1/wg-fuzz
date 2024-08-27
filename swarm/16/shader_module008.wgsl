struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec4<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<bool, 22> = array<bool, 22>(true, false, true, true, true, false, true, true, false, true, false, true, false, false, true, false, true, false, false, false, false, false);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: i32) -> bool {
    let var_0 = Struct_1(vec3<i32>(-1i) * -abs(_wgslsmith_clamp_vec3_i32(global0.zxw, global0.xxz, vec3<i32>(2147483647i, 2147483647i, arg_2))), -abs(46542i), select(vec2<bool>(global1[_wgslsmith_index_u32(arg_1.b, 22u)], arg_1.c.x), !(!arg_1.a.d), vec2<bool>(true, false)), firstTrailingBit(arg_1.a.b) << (~vec2<u32>(~80398u, 4131u) % vec2<u32>(32u)));
    global0 = abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(960i, global0.x, global0.x, -2147483647i) & firstTrailingBit(vec4<i32>(global0.x, global0.x, 2147483647i, u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a, global0.x, var_0.a.x), vec4<i32>(arg_2, arg_2, 2147483647i, arg_2)) & vec4<i32>(-1i, global0.x, u_input.a, global0.x)), ~(-1i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i, global0.x) & countOneBits(var_0.b), ~(-2147483647i)), global0.x));
    global1 = array<bool, 22>();
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(321f + _wgslsmith_f_op_f32(-837f - 2162f)) - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1000f + 988f)))), select(~reverseBits(vec4<i32>(var_0.b, arg_2, var_0.a.x, -2147483647i) & vec4<i32>(global0.x, var_0.b, -9290i, -17447i)), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(-14215i, global0.x, u_input.a, 45213i)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a, -63474i, u_input.a), vec4<i32>(u_input.a, -2147483647i, var_0.a.x, global0.x))) & vec4<i32>(-2147483647i << (var_0.d.x % 32u), -1i, -21515i, 1i), !(!(!vec4<bool>(var_0.c.x, var_0.c.x, true, arg_1.c.x)))), Struct_3(reverseBits(_wgslsmith_add_i32(-global0.x, -2147483647i)), 6186i, var_0));
    global1 = array<bool, 22>();
    return !(select(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, var_0.d.x), 22u)], !all(vec2<bool>(true, false)), 1f <= var_1.a) || select(true, arg_1.a.d.x, arg_1.a.c));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(abs(-global0.ywy), 6619i, !select(vec2<bool>(!global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(min(26780u, 64064u), 22u)]), select(!vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 22u)]), select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(8350u, 22u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(36083u, 22u)])), func_3(1u, Struct_4(Struct_2(vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u), false, vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], true)), 21692u, vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], true)), u_input.a)), select(!vec2<bool>(global1[_wgslsmith_index_u32(50789u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)]), vec2<bool>(global1[_wgslsmith_index_u32(49851u, 22u)], true), select(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec2<bool>(global1[_wgslsmith_index_u32(57798u, 22u)], false), true))), ~(~firstTrailingBit(~vec2<u32>(31455u, 8097u))));
    global1 = array<bool, 22>();
    var var_1 = Struct_3((i32(-1i) * -_wgslsmith_sub_i32(global0.x, global0.x)) << (~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.x, var_0.d.x, var_0.d.x, 4294967295u), vec4<u32>(var_0.d.x, 36892u, 0u, var_0.d.x))) % 32u), -2147483647i, var_0);
    let var_2 = _wgslsmith_dot_vec2_u32(max(reverseBits(var_0.d), ~var_1.c.d), _wgslsmith_mult_vec2_u32(vec2<u32>(~max(var_1.c.d.x, var_1.c.d.x), _wgslsmith_add_u32(countOneBits(0u), var_0.d.x)), abs(abs(var_0.d >> (vec2<u32>(4294967295u, var_1.c.d.x) % vec2<u32>(32u))))));
    var var_3 = Struct_2(_wgslsmith_add_vec2_u32(abs(_wgslsmith_div_vec2_u32(firstTrailingBit(var_0.d), var_1.c.d)), ~(~vec2<u32>(var_0.d.x, 4294967295u))), ~vec2<u32>(~reverseBits(1u), var_0.d.x), all(!var_1.c.c), vec2<bool>(var_0.c.x, var_0.c.x | (any(vec4<bool>(global1[_wgslsmith_index_u32(7093u, 22u)], false, var_1.c.c.x, var_0.c.x)) & true)));
    return Struct_2(vec2<u32>(~_wgslsmith_dot_vec2_u32(var_3.a, vec2<u32>(4294967295u, 4294967295u)) & abs(28106u ^ var_3.a.x), var_2), min(vec2<u32>(var_3.a.x, 58349u), var_0.d >> (_wgslsmith_sub_vec2_u32(min(var_1.c.d, vec2<u32>(43257u, 5103u)), vec2<u32>(var_3.a.x, var_0.d.x)) % vec2<u32>(32u))), countOneBits(27881i | u_input.a) == var_0.a.x, vec2<bool>(true, 8030u > select(var_0.d.x, _wgslsmith_div_u32(var_2, var_0.d.x), var_1.c.c.x)));
}

fn func_1(arg_0: i32) -> vec4<i32> {
    global1 = array<bool, 22>();
    let var_0 = func_2();
    let var_1 = Struct_4(func_2(), 26025u, select(var_0.d, var_0.d, global1[_wgslsmith_index_u32(abs(~(var_0.b.x ^ var_0.a.x)), 22u)]));
    let var_2 = var_0.a.x;
    var var_3 = var_1;
    return vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global0.xy, firstTrailingBit(firstTrailingBit(global0.yw))), i32(-1i) * -1495i, u_input.a), _wgslsmith_sub_i32(min(~(-global0.x), ~(-global0.x)), 74477i), ~firstLeadingBit(_wgslsmith_sub_i32(u_input.a, select(u_input.a, 0i, var_3.c.x))), max(_wgslsmith_add_i32(-2147483647i, countOneBits(abs(-1i))), _wgslsmith_clamp_i32(arg_0, global0.x >> ((var_1.a.b.x | var_0.b.x) % 32u), arg_0 << (23574u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1933f, 338f))), _wgslsmith_f_op_f32(step(881f, -444f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-104f, 578f) * vec2<f32>(596f, -585f))))));
    global0 = -(~vec4<i32>(u_input.a, -1848i, _wgslsmith_mult_i32(min(-44892i, -12913i), u_input.a), _wgslsmith_mod_i32(6150i, _wgslsmith_div_i32(u_input.a, 0i))));
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(9887i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(global0.yx, max(global0.ww, vec2<i32>(-1773i, u_input.a))), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), global0.xw) | ~vec2<i32>(global0.x, 0i)), u_input.a, -2147483647i), max(_wgslsmith_div_vec4_i32((vec4<i32>(1i, -1i, 33437i, u_input.a) | vec4<i32>(global0.x, -2147483647i, 0i, -11138i)) ^ (vec4<i32>(-1i, u_input.a, 2147483647i, -1i) ^ vec4<i32>(1437i, u_input.a, global0.x, -6203i)), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, 20447i, global0.x, 26583i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, global0.x)))), func_1(2147483647i)));
    let var_2 = 1438f;
    global0 = vec4<i32>(4806i, min(global0.x, ~(_wgslsmith_mult_i32(var_1.x, 15531i) << (1u % 32u))), -43864i, 1i);
    global1 = array<bool, 22>();
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -214f), var_2)));
    var var_4 = _wgslsmith_f_op_f32(-var_2);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.ywy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -465f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1461f, -2124f, -1524f) * vec3<f32>(var_3.x, 637f, var_3.x))) - vec3<f32>(var_2, _wgslsmith_f_op_f32(177f - var_3.x), _wgslsmith_f_op_f32(-582f * var_2)))));
}

