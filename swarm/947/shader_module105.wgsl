struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(-815f), Struct_1(469f), Struct_1(1125f), Struct_1(-1000f), Struct_1(157f), Struct_1(-872f), Struct_1(-648f), Struct_1(659f), Struct_1(293f), Struct_1(-327f), Struct_1(408f), Struct_1(-445f), Struct_1(-1129f), Struct_1(-591f), Struct_1(527f), Struct_1(199f), Struct_1(-413f), Struct_1(-696f), Struct_1(-924f), Struct_1(-720f), Struct_1(-786f), Struct_1(-1746f), Struct_1(-783f), Struct_1(803f));

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(-329f), Struct_1(-598f), Struct_1(-801f), Struct_1(384f), Struct_1(874f), Struct_1(-2182f));

var<private> global3: Struct_1 = Struct_1(-1407f);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 24u)];
    global2 = array<Struct_1, 6>();
    let var_1 = Struct_1(174f);
    global0 = 745f;
    var var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1, 15117i, arg_1 | (i32(-1i) * -63398i)), select(max(vec3<i32>(arg_1, -2147483647i, arg_1) | vec3<i32>(arg_1, -21606i, -20852i), vec3<i32>(15976i, -45794i, arg_1) >> (vec3<u32>(1u, 4294967295u, 61707u) % vec3<u32>(32u))) & ~vec3<i32>(1i, arg_1, -10433i), _wgslsmith_mult_vec3_i32(-vec3<i32>(-34492i, -22443i, arg_1), -vec3<i32>(23681i, arg_1, arg_1)) << ((~vec3<u32>(660u, 0u, 49837u) & (vec3<u32>(12660u, 0u, u_input.a) & vec3<u32>(10597u, u_input.a, u_input.a))) % vec3<u32>(32u)), true));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: bool) -> vec2<bool> {
    let var_0 = func_2(select(select(vec2<bool>(any(vec4<bool>(false, true, false, arg_2)), any(vec2<bool>(arg_2, false))), select(vec2<bool>(arg_2, arg_2), !vec2<bool>(false, arg_2), vec2<bool>(false, arg_2)), vec2<bool>(!arg_2, global3.a > global3.a)), vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), arg_2))), !(!select(vec2<bool>(arg_2, true), vec2<bool>(true, true), vec2<bool>(false, false)))), 17927i);
    let var_1 = global1[_wgslsmith_index_u32(u_input.a, 24u)];
    let var_2 = ~countOneBits(_wgslsmith_add_vec3_i32(abs(vec3<i32>(arg_0, arg_0, arg_0)), countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(23711i, 2147483647i, -1i), vec3<i32>(arg_1, 37014i, -241i)))));
    global0 = _wgslsmith_f_op_f32(-761f - _wgslsmith_f_op_f32(-var_1.a));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-218f + -1387f), _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1034f, _wgslsmith_f_op_f32(round(-490f)))) + _wgslsmith_f_op_f32(var_0.a * var_0.a))));
    return vec2<bool>(any(vec4<bool>(arg_2, all(select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(false, arg_2, arg_2), arg_2)), !(!arg_2), arg_2)), false);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: vec2<f32>) -> u32 {
    var var_0 = func_2(!arg_2.xz, countOneBits(arg_1.x));
    let var_1 = -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1, firstLeadingBit(vec2<i32>(arg_1.x, 2147483647i))), vec2<i32>(~arg_1.x, 1i)), ~1i);
    var var_2 = global1[_wgslsmith_index_u32(arg_0, 24u)];
    global1 = array<Struct_1, 24>();
    let var_3 = func_2(select(func_3(~_wgslsmith_add_i32(2147483647i, arg_1.x), var_1, all(!arg_2.zyw)), select(arg_2.zx, vec2<bool>(arg_2.x, true), func_3(abs(arg_1.x), i32(-1i) * -28059i, arg_2.x)), func_3(~abs(54342i), var_1, true)), ~(i32(-1i) * -2147483647i));
    return _wgslsmith_mult_u32(u_input.a, 22306u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~vec4<u32>(1u, reverseBits(~u_input.a), u_input.a, u_input.a));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(1397f * 810f));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(func_1(_wgslsmith_mod_u32(countOneBits(_wgslsmith_mult_u32(u_input.a, u_input.a)), var_0.x), -vec2<i32>(select(-7827i, -9424i, false), -12151i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec2<f32>(_wgslsmith_div_f32(global3.a, global3.a), 308f)), ~_wgslsmith_div_u32(59484u, ~countOneBits(u_input.a))), 6u)];
    var var_3 = _wgslsmith_f_op_f32(sign(global3.a));
    global3 = var_1;
    var var_4 = abs(~var_0.x);
    let var_5 = ~1u;
    let var_6 = ~(var_0.yw >> (~(vec2<u32>(0u, 0u) | var_0.zw) % vec2<u32>(32u)));
    var var_7 = _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(1i, -2147483647i), firstLeadingBit(-(-11386i >> (u_input.a % 32u)))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(11293i, 0i, 34978i) >> (vec3<u32>(4294967295u, var_6.x, var_0.x) % vec3<u32>(32u)), vec3<i32>(2595i, 8886i, 0i)), ~(-24826i), ~2147483647i, firstTrailingBit(1i)), abs(firstLeadingBit(vec4<i32>(2147483647i, -42224i, 23315i, 12580i)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_sub_i32(~7895i, ~23658i), _wgslsmith_sub_i32(-3756i, -1i)) | ~vec2<i32>(select(-17467i, 50097i, true), _wgslsmith_div_i32(14453i, -48865i)), var_6.x, vec4<u32>(u_input.a, ~(1u >> (var_5 % 32u)), max(~(~u_input.a), var_6.x), abs(min(u_input.a, 57856u) ^ u_input.a)), abs(1i), -2147483647i);
}

