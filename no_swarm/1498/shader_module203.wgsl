struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> vec3<i32> {
    var var_0 = ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 95907u, u_input.b) >> (vec3<u32>(23818u, u_input.b, u_input.c) % vec3<u32>(32u)), reverseBits(vec3<u32>(u_input.c, 21989u, 1u)))));
    return -vec3<i32>(8849i, u_input.a, 1317i);
}

fn func_3() -> bool {
    let var_0 = -_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.a << (0u % 32u), u_input.a, u_input.a), _wgslsmith_mult_vec3_i32(-vec3<i32>(-2147483647i, 1i, 110603i), vec3<i32>(u_input.a, -1i, u_input.a)) << (min(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 71082u, 60285u), vec3<u32>(u_input.b, u_input.b, 22150u)), vec3<u32>(u_input.b, u_input.c, 5774u)) % vec3<u32>(32u)), countOneBits(vec3<i32>(15230i << (1u % 32u), u_input.a, 2147483647i)));
    let var_1 = Struct_2(u_input.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1666f)));
    var_2 = 294f;
    var_2 = -1034f;
    return !all(vec2<bool>(true, any(vec2<bool>(true, true))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    let var_0 = 57787i;
    let var_1 = Struct_3(true, var_0, func_3(), any(!select(vec4<bool>(arg_0.x, arg_2.c, true, arg_2.a), vec4<bool>(arg_1.c, arg_0.x, arg_0.x, false), true)) & ((_wgslsmith_f_op_f32(trunc(1162f)) != _wgslsmith_div_f32(-293f, -128f)) != (all(vec2<bool>(false, arg_1.c)) && arg_1.d)));
    var var_2 = vec4<bool>(true, arg_1.c | true, var_1.c, any(!select(!vec2<bool>(true, arg_1.c), arg_0, true)));
    var_2 = vec4<bool>(any(vec3<bool>(false, true, var_1.d)), false, true, 42994u <= u_input.b);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1446f - 1594f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-608f - 701f)), _wgslsmith_f_op_f32(f32(-1f) * -347f));
    return -(~1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = vec4<i32>(func_2(vec2<bool>(true, true), Struct_3(true, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), vec4<i32>(u_input.a, 45429i, -2147483647i, -21802i) | vec4<i32>(u_input.a, 2147483647i, 14605i, u_input.a)), (62368u <= u_input.c) & true, true), Struct_3(false, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, u_input.a) << (vec3<u32>(u_input.b, 6801u, u_input.c) % vec3<u32>(32u)), func_1()), !all(vec2<bool>(true, true)), false)), select(u_input.a, _wgslsmith_sub_i32(-countOneBits(u_input.a), _wgslsmith_sub_i32(-u_input.a, _wgslsmith_div_i32(1i, u_input.a))), !all(vec2<bool>(true, false))), -firstTrailingBit(-37948i), u_input.a);
    var var_2 = Struct_1(0u, select(select(vec4<bool>(all(vec3<bool>(true, true, false)), true, true, any(vec4<bool>(false, true, false, true))), vec4<bool>(true, true, false, true), vec4<bool>(true, select(true, false, true), true, true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), any(vec2<bool>(true, false))), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1566f, 1000f, -400f), vec3<f32>(1425f, 1000f, -1123f))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(-1889f)), 1129f, 1126f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1160f, 1827f, -307f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(2121f)), _wgslsmith_f_op_f32(max(635f, -209f)), _wgslsmith_div_f32(-1005f, 316f))))));
    var var_3 = 33630u <= abs(_wgslsmith_div_u32(17024u, u_input.b));
    let var_4 = Struct_2((_wgslsmith_div_i32(-var_1.x, u_input.a) ^ abs(_wgslsmith_mod_i32(var_1.x, -1i))) | 23870i);
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(var_1.x >> (abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_2.a), vec2<u32>(9875u, var_2.a))) % 32u), var_1.x));
}

