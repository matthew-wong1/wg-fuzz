struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: vec2<i32>) -> vec4<i32> {
    let var_0 = vec4<bool>(arg_2, arg_2, false, any(!vec3<bool>(true, arg_2 || arg_2, arg_2)));
    global0 = arg_2;
    return vec4<i32>(1i, arg_3.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, 1i, arg_3.x) >> (~u_input.a % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(arg_3.x, arg_3.x, -23249i))), _wgslsmith_mult_i32(-(i32(-1i) * -53690i), firstTrailingBit(-2147483647i))) & ~_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-21113i, arg_3.x, 2147483647i, arg_3.x), vec4<i32>(arg_3.x, arg_3.x, -1i, -66886i)) ^ vec4<i32>(-47469i, arg_3.x, arg_3.x, arg_3.x), firstTrailingBit(vec4<i32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_3(Struct_2(0u), arg_2.x);
    var var_1 = 17121i;
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.b, max(arg_2.x, 0i)), select(var_0.b, firstLeadingBit(1i), false)), 52365i), var_0.b);
    let var_3 = _wgslsmith_div_i32(abs(var_2), 21169i);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(927f - -1273f) - _wgslsmith_f_op_f32(f32(-1f) * -1381f))), 420f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1102f) - _wgslsmith_f_op_f32(ceil(412f))))), -1354f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1901f, -610f, true)))))));
    return _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(arg_0, vec4<u32>(101690u, 34799u, 55802u, u_input.a.x))), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(24871u, 1u, 98596u, 1u)), select(vec4<u32>(var_0.a.a, 4294967295u, var_0.a.a, 4294967295u), arg_0, true))), ~(~(vec4<u32>(0u, var_0.a.a, u_input.a.x, var_0.a.a) ^ vec4<u32>(55934u, 0u, 28366u, 18665u)))), max(~vec4<u32>(u_input.a.x, 1u, 0u, 4294967295u) & countOneBits(vec4<u32>(1u, var_0.a.a, u_input.a.x, var_0.a.a)), arg_0) & vec4<u32>(arg_0.x, 47415u, 0u, arg_0.x));
}

fn func_2(arg_0: u32) -> vec4<u32> {
    var var_0 = ~(-_wgslsmith_add_vec4_i32(vec4<i32>(-16058i, -1i, 1i, ~12788i), vec4<i32>(1i, 1i, 1i, 1i) >> ((vec4<u32>(77346u, 16681u, 1u, 0u) >> (vec4<u32>(1u, 45786u, u_input.a.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global0 = true;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -690f);
    let var_2 = Struct_3(Struct_2(u_input.a.x), -17078i);
    global0 = true;
    return _wgslsmith_mod_vec4_u32(func_4(~(~vec4<u32>(u_input.a.x, 4294967295u, arg_0, arg_0) << (abs(vec4<u32>(1u, 4294967295u, 23045u, 8042u)) % vec4<u32>(32u))), vec2<bool>(true, !any(vec2<bool>(true, true))), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(var_0.x, 0i, var_0.x, -1i)), ~vec4<i32>(var_0.x, var_2.b, var_2.b, var_2.b), func_3(_wgslsmith_f_op_f32(f32(-1f) * -840f), u_input.a.x, true, _wgslsmith_div_vec2_i32(var_0.yw, vec2<i32>(var_0.x, 2147483647i))))), _wgslsmith_mod_vec4_u32(min((vec4<u32>(u_input.a.x, 13385u, 29720u, 34761u) ^ vec4<u32>(134923u, var_2.a.a, arg_0, 10952u)) | ~vec4<u32>(u_input.a.x, arg_0, 4294967295u, 41888u), vec4<u32>(select(u_input.a.x, u_input.a.x, true), ~var_2.a.a, ~4294967295u, u_input.a.x)), _wgslsmith_sub_vec4_u32(func_4(~vec4<u32>(0u, u_input.a.x, u_input.a.x, arg_0), vec2<bool>(true, true), vec4<i32>(var_2.b, -1i, 1i, -36667i)), vec4<u32>(abs(arg_0), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), ~var_2.a.a, ~1u))));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    global0 = any(vec2<bool>(false && !arg_0, arg_0));
    let var_0 = max(countOneBits(~(~4294967295u)), min(6310u, 41201u));
    let var_1 = 1348f;
    global0 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(44292u, arg_2.a.a, 48155u, 4193u), vec4<u32>(arg_1.a.a, 0u, 2555u, 29454u))), func_2(firstLeadingBit(77538u))), firstLeadingBit(_wgslsmith_mult_u32(var_0, arg_2.a.a)) & (~var_0 << (~11880u % 32u))) == ~(~4294967295u);
    let var_2 = any(!vec3<bool>(true, all(!vec3<bool>(false, false, arg_0)), false | any(vec2<bool>(false, arg_0))));
    return !(_wgslsmith_f_op_f32(abs(-116f)) < _wgslsmith_f_op_f32(sign(-308f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = Struct_1(-(~vec3<i32>(i32(-1i) * -2147483647i, -1i << (u_input.a.x % 32u), 1i)));
    var var_1 = var_0.a.yy;
    let var_2 = true;
    global0 = !all(vec4<bool>(var_2, !func_1(var_2, Struct_3(Struct_2(u_input.a.x), var_1.x), Struct_3(Struct_2(32335u), var_1.x)), var_2, false));
    global0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 33014u, u_input.a.x) ^ vec4<u32>(28197u, 20119u, 1u, 0u), vec4<u32>(u_input.a.x, 8793u, 0u, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), func_4(abs(vec4<u32>(1u, u_input.a.x, 4294967295u, 1u)), !vec2<bool>(var_2, false), -vec4<i32>(var_0.a.x, 1i, -34803i, -51401i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1425f, _wgslsmith_f_op_f32(max(-614f, -198f)), _wgslsmith_f_op_f32(abs(-1184f))) - vec3<f32>(-930f, _wgslsmith_f_op_f32(abs(845f)), 203f))));
}

