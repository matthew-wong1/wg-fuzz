struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: bool, arg_3: vec4<u32>) -> vec3<bool> {
    return select(vec3<bool>(arg_2 & (true | (true | arg_2)), arg_1.c, select(any(arg_0.zxw), arg_2 | true, true)), !arg_0.yyz, vec3<bool>(true, any(select(select(vec4<bool>(true, arg_1.c, false, false), vec4<bool>(arg_0.x, false, arg_2, arg_0.x), arg_0), select(arg_0, arg_0, vec4<bool>(arg_2, arg_2, arg_2, arg_0.x)), vec4<bool>(false, arg_1.c, true, arg_0.x))), true));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: i32, arg_3: f32) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_div_u32(max(56117u, select(~0u, _wgslsmith_add_u32(u_input.a.x, u_input.d), any(vec2<bool>(arg_1, arg_1)))), max(~1u, arg_0.a)), arg_0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1079f)))));
    var var_1 = select(vec4<bool>(any(select(vec4<bool>(true, arg_1, false, false), vec4<bool>(arg_1, false, arg_1, false), false)) | any(vec4<bool>(arg_1, arg_1, true, true)), true, arg_1, arg_1), !(!(!(!vec4<bool>(true, false, arg_1, false)))), any(select(vec3<bool>(arg_1 || false, any(vec3<bool>(true, arg_1, false)), false), vec3<bool>(arg_2 != arg_2, arg_1, true), false)));
    let var_2 = arg_0;
    var var_3 = vec3<i32>(~23457i, _wgslsmith_mod_i32(reverseBits(-10556i), -19828i), -61047i);
    var var_4 = !vec4<bool>(true, arg_1, (arg_1 == !arg_1) || true, any(vec2<bool>(true, var_1.x)));
    return ~(~max(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(var_0.b.a.c, 0u, arg_0.b.a.b.x, var_0.a)), ~vec4<u32>(arg_0.a, 4294967295u, u_input.c, 41730u))) ^ ~countOneBits(vec4<u32>(~24002u, _wgslsmith_add_u32(arg_0.b.a.b.x, 65529u), 1u, var_0.a));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>) -> Struct_4 {
    var var_0 = Struct_4(-2147483647i);
    var var_1 = Struct_2(Struct_1(u_input.a ^ vec4<u32>(8936u, u_input.a.x | u_input.d, u_input.c, _wgslsmith_mult_u32(22040u, 90720u)), u_input.a, 30114u));
    var_0 = Struct_4(-(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a, 2147483647i, var_0.a), vec3<i32>(var_0.a, var_0.a, -20888i)), vec3<i32>(u_input.e, 1i, -35676i)) >> (_wgslsmith_sub_u32(4294967295u, ~4294967295u) % 32u)));
    var_1 = Struct_2(Struct_1(func_3(Struct_3(_wgslsmith_mult_u32(var_1.a.c, var_1.a.c), Struct_2(Struct_1(vec4<u32>(u_input.d, u_input.a.x, 67659u, 0u), var_1.a.a, u_input.c)), arg_0.x), true, countOneBits(-var_0.a), arg_0.x), vec4<u32>(0u, 1u, u_input.a.x, 4294967295u), u_input.d));
    let var_2 = firstLeadingBit(-(~_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a, var_0.a), vec2<i32>(-1i, 4502i)), u_input.b)));
    return Struct_4(~(-38756i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2208f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1054f + 153f) * _wgslsmith_f_op_f32(f32(-1f) * -649f)) + -428f), -258f)));
    let var_1 = u_input.b.x;
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-225f, -944f, 403f), _wgslsmith_f_op_vec3_f32(var_0 * _wgslsmith_f_op_vec3_f32(round(var_0))))), !select(vec3<bool>(true, true, true), select(func_1(vec4<bool>(false, true, true, false), Struct_5(Struct_4(-18843i), Struct_4(-30172i), false), false, u_input.a), vec3<bool>(false, false, false), true), true));
    var var_3 = firstTrailingBit(~(u_input.c << (u_input.d % 32u)));
    var_2 = Struct_4(-2147483647i);
    var_2 = Struct_4(abs(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_1, var_1), vec3<i32>(52875i, 26812i, var_1)) ^ -u_input.e, -24944i)));
    let var_4 = u_input.a;
    var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a.wwz, u_input.a.xxw), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(83611u, 64879u, var_4.x, var_4.x)), ~u_input.a.x, ~0u), var_4.x, u_input.d), _wgslsmith_f_op_f32(f32(-1f) * -566f), _wgslsmith_add_u32(var_4.x, _wgslsmith_dot_vec4_u32(reverseBits(firstTrailingBit(vec4<u32>(var_4.x, 29931u, u_input.d, u_input.c))), firstTrailingBit(u_input.a) << (vec4<u32>(u_input.a.x, 4294967295u, 1u, 4294967295u) % vec4<u32>(32u)))));
}

