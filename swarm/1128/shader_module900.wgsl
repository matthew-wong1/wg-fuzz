struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
    d: f32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 7>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec2<i32>, arg_3: f32) -> vec2<i32> {
    global0 = array<vec2<i32>, 7>();
    var var_0 = Struct_3(vec2<u32>(firstTrailingBit(select(1u, u_input.a.x, any(vec4<bool>(true, false, false, false)))), reverseBits(reverseBits(0u))), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_0, 375f)), _wgslsmith_f_op_f32(-arg_0)))), true)), select(vec2<i32>(-arg_2.x, -5878i), global0[_wgslsmith_index_u32(42758u, 7u)], vec2<bool>(true, true)));
    var var_1 = reverseBits(67783u);
    var var_2 = Struct_2(Struct_1(var_0.c.x), ~_wgslsmith_add_vec4_i32(~select(vec4<i32>(var_0.c.x, 0i, 2147483647i, arg_2.x), vec4<i32>(1i, var_0.c.x, 2147483647i, 2147483647i), vec4<bool>(true, true, true, false)), _wgslsmith_mod_vec4_i32(~vec4<i32>(var_0.c.x, var_0.c.x, arg_1, var_0.c.x), ~vec4<i32>(arg_2.x, arg_2.x, var_0.c.x, 2147483647i))), u_input.a.x, Struct_1(~arg_1));
    global0 = array<vec2<i32>, 7>();
    return vec2<i32>(_wgslsmith_clamp_i32(var_0.c.x, firstLeadingBit(var_2.b.x), -select(~(-1i), _wgslsmith_div_i32(-59514i, 28262i), 1u < var_0.a.x)), -firstLeadingBit(-2147483647i) | ~(-(var_2.b.x << (58066u % 32u))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<f32>) -> bool {
    global0 = array<vec2<i32>, 7>();
    let var_0 = Struct_3(vec2<u32>(arg_1, 4294967295u), arg_2.x, func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1276f), 836f)), -571f), ~arg_0, global0[_wgslsmith_index_u32(1u, 7u)], arg_2.x));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(arg_0, var_0.c.x, var_0.c.x)), ~abs(vec3<i32>(var_0.c.x, -31710i, -65503i))) >> (~u_input.a.x % 32u));
    var_1 = Struct_1(_wgslsmith_mult_i32(-1i, arg_0));
    global0 = array<vec2<i32>, 7>();
    return all(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, true), vec3<bool>(true, all(vec2<bool>(true, true)), true))) & !(!all(vec3<bool>(false, false, true)) | true);
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: f32) -> Struct_2 {
    let var_0 = arg_0.x;
    global0 = array<vec2<i32>, 7>();
    let var_1 = Struct_3(~firstLeadingBit(abs(u_input.a.xy)) ^ ~(~_wgslsmith_mod_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(1052f - -407f), ~min(max(global0[_wgslsmith_index_u32(30232u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]) & -global0[_wgslsmith_index_u32(48458u, 7u)], -vec2<i32>(-2147483647i, -2147483647i)));
    let var_2 = vec2<u32>(4294967295u, ~firstTrailingBit(_wgslsmith_clamp_u32(~1u, var_1.a.x, var_1.a.x)));
    global0 = array<vec2<i32>, 7>();
    return Struct_2(Struct_1(var_1.c.x), -_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.c.x, -50727i, 26702i, var_1.c.x) << ((vec4<u32>(4294967295u, var_2.x, 0u, 30948u) | vec4<u32>(0u, var_1.a.x, 33756u, var_2.x)) % vec4<u32>(32u)), select(reverseBits(vec4<i32>(var_1.c.x, var_1.c.x, var_1.c.x, -27334i)), -vec4<i32>(var_1.c.x, -25760i, var_1.c.x, 0i), false)), 63110u, Struct_1(80504i));
}

fn func_1(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: vec4<f32>) -> f32 {
    var var_0 = ~arg_0.e.a.a.x;
    var var_1 = func_4(vec4<bool>(func_2(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(max(u_input.a.x, u_input.a.x), 7u)], -vec2<i32>(0i, arg_0.b.b.x)), u_input.a.x, arg_2), true || (_wgslsmith_add_i32(arg_0.b.d.a, -1i) < arg_0.c), arg_2.x >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.e.a.b + arg_2.x), _wgslsmith_f_op_f32(abs(arg_2.x)), true)), !arg_0.e.d), _wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(select(935f, arg_0.e.a.b, all(!arg_0.e.b) && select(true, !arg_0.e.b.x, !arg_0.e.b.x))));
    global0 = array<vec2<i32>, 7>();
    var_1 = arg_0.e.c;
    var_1 = Struct_2(func_4(!select(vec4<bool>(arg_0.e.b.x, false, false, true), vec4<bool>(arg_0.e.d, arg_0.e.b.x, arg_0.e.b.x, arg_0.e.b.x), !arg_0.e.d), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.e.a.b))), arg_0.e.a.b).a, vec4<i32>(arg_1.x, var_1.b.x, 2147483647i, firstLeadingBit(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(53414u, 7u)], global0[_wgslsmith_index_u32(82829u, 7u)])) >> ((~15382u ^ ~u_input.a.x) % 32u)), ~(~var_1.c >> (15619u % 32u)), func_4(vec4<bool>(false, (arg_2.x <= 107f) && arg_0.e.d, all(vec2<bool>(true, true)), any(!arg_0.e.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_0.d)), -947f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1674f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.d)))))).a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.x, -214f)) * 1158f) + _wgslsmith_f_op_f32(-arg_0.e.a.b)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1707f, -298f, false))), arg_0.e.a.b)) - arg_0.e.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~1u, 7u)];
    var var_1 = -countOneBits(_wgslsmith_mod_i32(var_0.x | -1i, 0i) | firstTrailingBit(2147483647i));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1930f, -889f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(557f * -102f))) - vec3<f32>(-540f, -1362f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1364f)) - -164f))));
    let var_3 = _wgslsmith_add_i32(i32(-1i) * -2147483647i, ~(~var_0.x | 1i));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(func_1(Struct_5(u_input.a, Struct_2(Struct_1(var_3), vec4<i32>(54805i, 16261i, var_0.x, 0i), u_input.a.x, Struct_1(-29376i)), -33411i, var_2.x, Struct_4(Struct_3(vec2<u32>(u_input.a.x, u_input.a.x), 1388f, global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec2<bool>(true, false), Struct_2(Struct_1(1i), vec4<i32>(var_3, var_3, var_3, -7833i), u_input.a.x, Struct_1(var_0.x)), true)), vec4<i32>(-18639i, 2147483647i, var_3, 1i), vec4<f32>(-1892f, var_2.x, -298f, var_2.x)))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, -191f, var_2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(119f, var_2.x, -797f) + vec3<f32>(var_2.x, 1059f, var_2.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -502f, -382f))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, -404f), vec3<f32>(var_2.x, var_2.x, var_2.x))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-455f, 1082f, var_2.x) - vec3<f32>(-1563f, var_2.x, 1988f)))))));
    global0 = array<vec2<i32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u), vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, 0u), vec4<u32>(0u, u_input.a.x, 0u, 4294967295u))), select(vec4<u32>(34114u, 53985u, u_input.a.x, 7254u) | vec4<u32>(0u, 1u, 17000u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 44440u, 16440u), true)), ~(~((u_input.a.x << (u_input.a.x % 32u)) ^ ~4294967295u)), func_3(var_2.x, -min(var_3, func_3(var_2.x, 1i, vec2<i32>(var_3, var_3), var_2.x).x), -(vec2<i32>(-1i) * -global0[_wgslsmith_index_u32(4294967295u, 7u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + var_2.x)), abs(~(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, 76621u, u_input.a.x, 1u))) & (vec4<u32>(~u_input.a.x, ~u_input.a.x, 14883u, ~u_input.a.x) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 20810u, 31014u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 59785u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x), vec4<u32>(0u, 722u, u_input.a.x, 27845u))) % vec4<u32>(32u))));
}

