struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: i32) -> vec2<i32> {
    var var_0 = arg_0;
    var var_1 = Struct_2(~(~vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(select(1718i, 12768i, -1516f < arg_0) | ~arg_1, select(vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(arg_1, -2147483647i)), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, -13767i), vec2<i32>(arg_3, arg_3)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1, arg_3), vec2<i32>(22122i, arg_2))), any(vec2<bool>(false, true))), !(_wgslsmith_div_f32(1839f, arg_0) > _wgslsmith_f_op_f32(round(arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, 481f) * vec4<f32>(1502f, 2446f, -246f, -648f)) - vec4<f32>(-979f, _wgslsmith_div_f32(arg_0, 626f), _wgslsmith_f_op_f32(arg_0 * 1460f), _wgslsmith_f_op_f32(arg_0 - 905f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-348f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(344f)))))), ~70047u);
    var_0 = _wgslsmith_f_op_f32(-1029f - _wgslsmith_div_f32(1897f, _wgslsmith_f_op_f32(-arg_0)));
    var var_2 = Struct_1(~arg_2, var_1.b.b, 1i <= _wgslsmith_dot_vec2_i32(var_1.b.b ^ vec2<i32>(arg_3, 0i), var_1.b.b), 1079f, var_1.b.e);
    var_0 = _wgslsmith_f_op_f32(step(var_1.c, arg_0));
    return var_1.b.b;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<f32>, arg_3: vec3<u32>) -> bool {
    var var_0 = Struct_1(-reverseBits(-2147483647i), func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - arg_2.x)))), reverseBits(i32(-1i) * -1i), ~arg_1 ^ -2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, arg_1, -48059i) & vec3<i32>(33713i, -69140i, arg_1), select(vec3<i32>(u_input.a, 4094i, arg_1), vec3<i32>(-2147483647i, arg_1, 1i), true)), vec3<i32>(2147483647i, -48146i, ~(-1i)))), !all(vec2<bool>(true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -418f) + _wgslsmith_f_op_f32(step(1062f, 1026f))), _wgslsmith_f_op_f32(549f * _wgslsmith_f_op_f32(-1390f - arg_2.x))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -252f), arg_2.x, -1645f, arg_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, -546f, arg_2.x, -1509f), vec4<f32>(336f, arg_2.x, 635f, arg_2.x)))));
    let var_1 = 0u;
    let var_2 = Struct_2(~(min(~vec4<u32>(arg_0.x, var_1, var_1, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1, 1u, arg_0.x, 0u), vec4<u32>(5069u, arg_3.x, arg_0.x, arg_0.x))) | _wgslsmith_div_vec4_u32(vec4<u32>(arg_3.x, 4294967295u, arg_0.x, 36833u), vec4<u32>(1u, arg_0.x, 4294967295u, arg_3.x) >> (vec4<u32>(982u, arg_3.x, 69052u, 49108u) % vec4<u32>(32u)))), Struct_1(-arg_1 ^ ~(~(-1i)), var_0.b, true, _wgslsmith_f_op_f32(arg_2.x * 275f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.e) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, 444f, var_0.e.x), var_0.e)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0.e, var_0.e))))), _wgslsmith_f_op_f32(591f * var_0.e.x), 1u);
    var_0 = var_2.b;
    var_0 = var_2.b;
    return all(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, var_2.b.c), var_2.b.c), any(vec2<bool>(false, true)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> StorageBuffer {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-1705f, 613f, 1033f), arg_0.e.zyy);
    var var_1 = vec2<bool>(arg_0.c, true);
    var var_2 = !select(vec3<bool>(any(vec4<bool>(true, true, var_1.x, false)), _wgslsmith_div_i32(u_input.a, u_input.a) < select(arg_0.a, -1i, arg_0.c), var_1.x), vec3<bool>(any(!vec4<bool>(false, false, arg_1.x, arg_1.x)), select(func_2(vec3<u32>(0u, 126862u, 9519u), -1i, var_0, vec3<u32>(4294967295u, 1u, 1u)), true, true), any(arg_1) || (u_input.a >= -1i)), !all(vec3<bool>(arg_1.x, arg_1.x, false)));
    let var_3 = Struct_2(vec4<u32>(1u, 1u, 1u, 1u), arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), arg_0.e.x))), countOneBits(13183u));
    let var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(arg_0.e.xz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_3.b.d + var_3.c), 1000f))), var_0.xx));
    return StorageBuffer(select(vec2<u32>(_wgslsmith_mod_u32(23685u, ~var_3.d), abs(_wgslsmith_clamp_u32(var_3.a.x, var_3.a.x, 1u))), ~(~var_3.a.yy), all(!select(vec4<bool>(arg_0.c, arg_0.c, false, true), vec4<bool>(false, false, false, var_1.x), vec4<bool>(arg_0.c, true, true, false)))), ~((select(vec3<i32>(u_input.a, arg_0.a, arg_0.a), vec3<i32>(-2147483647i, 1i, 0i), vec3<bool>(true, var_2.x, var_3.b.c)) ^ vec3<i32>(u_input.a, -1i, arg_0.b.x)) | firstTrailingBit(~vec3<i32>(var_3.b.b.x, u_input.a, -22211i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_1(u_input.a, ~(~vec2<i32>(u_input.a, 2147483647i)), !any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(floor(-1196f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(982f, -2190f, 826f, -1714f), vec4<f32>(1552f, -852f, 307f, -853f))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(536f * -1280f), -1040f, -507f), true))), vec2<bool>(false, !any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))));
}

