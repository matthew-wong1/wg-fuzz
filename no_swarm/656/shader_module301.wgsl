struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    global0 = array<vec4<bool>, 8>();
    var var_0 = abs(-(~_wgslsmith_mult_i32(select(-78341i, u_input.a.x, false), u_input.a.x)));
    var_0 = 39695i;
    global0 = array<vec4<bool>, 8>();
    global0 = array<vec4<bool>, 8>();
    return 5690u;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> f32 {
    var var_0 = Struct_3(select(~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 3447u, 90425u), vec4<u32>(22424u, 1u, 100509u, 41696u)), vec4<u32>(1u, 9990u, 4294967295u, 82204u), ~vec4<u32>(0u, 16266u, 47599u, 23552u)), vec4<u32>(~(~1u), abs(func_3()), 1u, _wgslsmith_div_u32(_wgslsmith_div_u32(0u, 43233u), 1u)), select(select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(11069u, 4294967295u), 8u)], global0[_wgslsmith_index_u32(firstLeadingBit(54749u), 8u)], select(false, false, false)), select(global0[_wgslsmith_index_u32(65197u, 8u)], vec4<bool>(true, true, true, true), true), true)), Struct_1(global0[_wgslsmith_index_u32(~30059u, 8u)], ~(~min(vec4<i32>(u_input.a.x, arg_1, 16854i, -1i), vec4<i32>(u_input.a.x, -2147483647i, -1i, -1i))), ~u_input.a.x & 11994i, _wgslsmith_clamp_i32(arg_1, _wgslsmith_div_i32(-17827i, 2147483647i), _wgslsmith_mod_i32(-2147483647i, -u_input.a.x))), Struct_1(global0[_wgslsmith_index_u32(~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 13341u, 1u, 89513u), vec4<u32>(1u, 152154u, 64048u, 6396u))), 8u)], _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_1, arg_1, arg_1, 2147483647i), abs(~vec4<i32>(23536i, 31701i, 42894i, u_input.a.x)), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -2147483647i), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, arg_1, 35300i)))), -13390i, -12874i), Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), global0[_wgslsmith_index_u32(1u, 8u)], true)), vec4<bool>(true, true, arg_0.x == arg_0.x, true), false), select(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, 8381i, -12070i, 45830i)), ~vec4<i32>(arg_1, 1i, -33824i, 1i)), vec4<i32>(arg_1, arg_1, u_input.a.x, arg_1), false), (21290i & u_input.a.x) | ~(-45334i), -1i), vec3<u32>(func_3() ^ 7387u, 1u, ~5067u));
    let var_1 = Struct_4(Struct_1(vec4<bool>(true, !var_0.c.a.x, var_0.c.a.x, select(true, true, true)), var_0.d.b, _wgslsmith_clamp_i32(arg_1, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1i, 97715i), vec3<i32>(2147483647i, -19873i, arg_1))), arg_1), firstLeadingBit(~_wgslsmith_clamp_i32(arg_1, 6565i, 1i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -1989f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1532f + arg_0.x) * _wgslsmith_f_op_f32(exp2(arg_0.x)))) + arg_0.zzy), var_0.d, !select(select(!vec2<bool>(var_0.d.a.x, var_0.c.a.x), !vec2<bool>(var_0.b.a.x, var_0.b.a.x), false | var_0.b.a.x), var_0.c.a.zx, (false | var_0.c.a.x) & var_0.c.a.x), Struct_2(arg_0.zwy, Struct_1(global0[_wgslsmith_index_u32(0u, 8u)], max(var_0.c.b << (var_0.a % vec4<u32>(32u)), ~vec4<i32>(-19973i, arg_1, var_0.d.c, -1834i)), var_0.c.b.x, -13316i), Struct_1(select(select(global0[_wgslsmith_index_u32(0u, 8u)], var_0.b.a, var_0.d.a.x), !vec4<bool>(false, var_0.c.a.x, false, var_0.b.a.x), select(global0[_wgslsmith_index_u32(var_0.a.x, 8u)], global0[_wgslsmith_index_u32(29519u, 8u)], vec4<bool>(true, true, false, var_0.b.a.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, arg_1, arg_1) | var_0.c.b, vec4<i32>(u_input.a.x, 2147483647i, -1i, var_0.b.b.x)), -2147483647i, min(var_0.d.d, abs(0i)))));
    let var_2 = Struct_3(var_0.a, Struct_1(!vec4<bool>(false, false, any(vec2<bool>(var_0.c.a.x, var_0.d.a.x)), true), vec4<i32>(0i, _wgslsmith_mult_i32(var_0.c.b.x, -1i), 11477i, -32213i) | _wgslsmith_div_vec4_i32(var_1.c.b, var_0.d.b ^ vec4<i32>(u_input.a.x, 0i, 32295i, u_input.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_1, u_input.a.x), var_1.e.b.b.xwx), i32(-1i) * -55499i, u_input.a.x ^ arg_1), vec3<i32>(arg_1, arg_1 >> (var_0.a.x % 32u), -var_1.e.c.c)), abs(u_input.a.x)), var_0.c, Struct_1(select(select(!var_0.d.a, !var_1.c.a, any(var_1.c.a.zz)), vec4<bool>(any(vec3<bool>(var_0.d.a.x, var_1.a.a.x, var_0.c.a.x)), !var_0.b.a.x, !var_1.a.a.x, var_1.d.x), select(select(vec4<bool>(var_1.e.c.a.x, false, var_0.c.a.x, true), global0[_wgslsmith_index_u32(68896u, 8u)], true), !vec4<bool>(var_0.b.a.x, true, true, var_1.c.a.x), all(var_1.c.a.wxz))), var_0.b.b, 1i, 1i), vec3<u32>(var_0.a.x, var_0.e.x, 81459u));
    var var_3 = ~((var_2.a.zxz >> (var_2.a.xww % vec3<u32>(32u))) << (vec3<u32>(61290u, firstTrailingBit(1u) & ~var_2.e.x, ~_wgslsmith_add_u32(var_0.e.x, 1u)) % vec3<u32>(32u)));
    var var_4 = var_1.e;
    return 437f;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec3<i32>) -> vec2<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(-636f, _wgslsmith_f_op_f32(func_2(vec4<f32>(_wgslsmith_div_f32(-280f, -1654f), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(528f, 1000f), -1170f), countOneBits(-42235i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1624f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1421f, 158f, -985f, arg_1.x) - vec4<f32>(-798f, -591f, arg_1.x, -1984f)), arg_2.x))))), _wgslsmith_f_op_f32(-1632f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(833f * 1f), 337f, countOneBits(arg_0.x) == _wgslsmith_sub_u32(arg_0.x, arg_0.x)))));
    let var_1 = Struct_1(!select(!select(global0[_wgslsmith_index_u32(4294967295u, 8u)], vec4<bool>(true, false, true, true), false), global0[_wgslsmith_index_u32(max(arg_0.x & 69471u, ~4294967295u), 8u)], global0[_wgslsmith_index_u32(arg_0.x, 8u)]), _wgslsmith_mult_vec4_i32(~(vec4<i32>(2147483647i, -2147483647i, arg_2.x, 28875i) ^ vec4<i32>(13842i, u_input.a.x, arg_2.x, arg_2.x)) ^ vec4<i32>(u_input.a.x ^ 21393i, _wgslsmith_div_i32(u_input.a.x, -2147483647i), -1i, 0i), vec4<i32>(29876i, ~23169i, countOneBits(-arg_2.x), -arg_2.x)), _wgslsmith_dot_vec3_i32(arg_2, countOneBits(arg_2)), u_input.a.x);
    global0 = array<vec4<bool>, 8>();
    var var_2 = select(firstTrailingBit(firstTrailingBit(vec3<i32>(-67327i, arg_2.x, 23414i)) & vec3<i32>(_wgslsmith_clamp_i32(arg_2.x, var_1.c, -3350i), ~89387i, arg_2.x)), ~vec3<i32>(0i, u_input.a.x, ~var_1.d), select(arg_1.x != _wgslsmith_f_op_f32(1016f + arg_1.x), ~min(0u, arg_0.x) != ~arg_0.x, all(vec2<bool>(var_1.a.x == false, -580f != var_0.x))));
    var_2 = u_input.a;
    return var_1.a.yx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 8>();
    var var_0 = vec3<i32>(1i, u_input.a.x, -_wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(49233i, 1i), vec2<i32>(-2147483647i, u_input.a.x))));
    let var_1 = _wgslsmith_clamp_vec2_u32(select(_wgslsmith_div_vec2_u32(abs(firstTrailingBit(vec2<u32>(1u, 0u))), ~vec2<u32>(23924u, 41406u)), firstTrailingBit(vec2<u32>(4294967295u, 1u)), !select(func_1(vec4<u32>(16709u, 0u, 15491u, 16606u), vec2<f32>(1090f, 1122f), u_input.a), vec2<bool>(true, false), vec2<bool>(true, true))), ~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(min(vec2<u32>(0u, 5009u), vec2<u32>(72224u, 47951u)), vec2<u32>(6913u, 1u), vec2<u32>(31735u, 1u)), vec2<u32>(7848u, ~9439u)), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(25690u, 95u)), vec2<u32>(1u, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 40728u)), _wgslsmith_div_vec2_u32(~vec2<u32>(78203u, 17732u), vec2<u32>(14261u, 17762u))));
    var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(abs(u_input.a.x), var_0.x, -var_0.x), ~u_input.a), -vec3<i32>(_wgslsmith_div_i32(var_0.x, u_input.a.x), u_input.a.x, u_input.a.x)), 36659i, _wgslsmith_mod_i32(i32(-1i) * -u_input.a.x, reverseBits(u_input.a.x)));
    var_0 = u_input.a;
    global0 = array<vec4<bool>, 8>();
    let var_2 = -(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_sub_i32(~(-1i), u_input.a.x)) & ~var_0.x);
    let var_3 = var_1;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(vec2<i32>(var_2, u_input.a.x), select(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(var_0.x, 1i), !var_4) >> (_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(var_3.x, 1u)), vec2<u32>(8937u, 4294967295u)) % vec2<u32>(32u))), var_1.x, var_0.x);
}

