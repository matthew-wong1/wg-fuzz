struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = 840f;
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1731f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(ceil(514f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1227f - 1839f), _wgslsmith_f_op_f32(abs(var_0)))) * -1000f))));
    let var_2 = _wgslsmith_div_vec3_i32(abs(vec3<i32>(2814i >> (1u % 32u), _wgslsmith_sub_i32(1i | u_input.a, _wgslsmith_mult_i32(u_input.a, -13779i)), u_input.a)), countOneBits(-reverseBits(~vec3<i32>(43618i, 0i, -2147483647i))));
    var var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -49316i, var_2.x), _wgslsmith_mod_vec4_i32(max(vec4<i32>(_wgslsmith_mult_i32(var_2.x, -59746i), u_input.a, firstTrailingBit(1i), ~(-2147483647i)), vec4<i32>(_wgslsmith_sub_i32(0i, -2147483647i), _wgslsmith_clamp_i32(-23169i, 5333i, 644i), ~(-2147483647i), 12625i)), min(firstLeadingBit(-vec4<i32>(u_input.a, u_input.a, u_input.a, var_2.x)), -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_2.x, var_2.x, 24795i), vec4<i32>(u_input.a, var_2.x, -2147483647i, u_input.a)))));
    var_3 = min(vec4<i32>(1i, var_3.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.x, 41898i, 1i), var_3.wxz), ~(-vec3<i32>(var_2.x, 1i, 22116i))), var_3.x), ~(-vec4<i32>(var_3.x, -3752i, 53039i, countOneBits(2147483647i))));
    return var_1.x == -214f;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool) -> u32 {
    let var_0 = max(vec2<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 50650u), firstTrailingBit(vec2<u32>(0u, 85594u))), ~1u), vec2<u32>(1u, 1u));
    var var_1 = !vec4<bool>(select(func_3(), arg_0, true), arg_1, !arg_0, arg_2);
    let var_2 = vec4<i32>(_wgslsmith_sub_i32(~min(u_input.a, 1i) << (26657u % 32u), u_input.a), u_input.a, u_input.a, firstTrailingBit(max(~u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a)) | u_input.a));
    let var_3 = Struct_3(var_2.yx, Struct_1(vec2<i32>(-12284i, 1i) >> (var_0 % vec2<u32>(32u)), var_2.x));
    var_1 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2404f * 1228f), _wgslsmith_f_op_f32(f32(-1f) * -549f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) > _wgslsmith_f_op_f32(trunc(2043f)), any(vec4<bool>(any(vec4<bool>(arg_2, arg_0, true, false)), arg_1, -2147483647i >= var_3.b.b, arg_2)) & all(vec2<bool>(true, any(vec4<bool>(true, true, arg_2, true)))), any(!(!var_1.yxz)), !arg_2);
    return _wgslsmith_clamp_u32(~var_0.x, 0u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(reverseBits(26704u), ~56270u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, var_0.x), _wgslsmith_mod_u32(var_0.x, var_0.x), 82148u)), _wgslsmith_mult_u32(var_0.x, var_0.x)));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: u32, arg_3: vec2<bool>) -> vec2<i32> {
    var var_0 = Struct_1(reverseBits(-vec2<i32>(u_input.a, -15515i)), 1i << (~(arg_2 | ~117831u) % 32u));
    var_0 = Struct_1(~select(~var_0.a, select(var_0.a ^ vec2<i32>(2147483647i, u_input.a), firstTrailingBit(var_0.a), vec2<bool>(arg_3.x, true)), vec2<bool>(true, arg_3.x)), -2147483647i);
    let var_1 = Struct_1(var_0.a, ~(-1369i));
    var_0 = var_1;
    var var_2 = vec2<bool>(true, !arg_3.x || true);
    return _wgslsmith_mod_vec2_i32(-abs(_wgslsmith_add_vec2_i32(-var_1.a, -var_0.a)), var_1.a);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = vec3<i32>(u_input.a << (~abs(_wgslsmith_mod_u32(42517u, 1u)) % 32u), u_input.a, 2147483647i);
    let var_1 = -vec4<i32>(-2147483647i, var_0.x, _wgslsmith_clamp_i32(arg_0.a.x, 23398i ^ arg_0.a.x, -(~(-1i))), select(~_wgslsmith_mult_i32(var_0.x, var_0.x), 1i, false));
    let var_2 = Struct_2(~func_4(true, vec2<f32>(182f, -113f), func_2(arg_0.a.x == 11592i, true, 0i >= arg_0.a.x), vec2<bool>(true, true)));
    var var_3 = -var_1.x;
    var_3 = -2147483647i;
    return Struct_1(var_0.xy, -20722i);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: f32, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = ~arg_3.x;
    let var_1 = Struct_1(vec2<i32>(u_input.a, arg_0.b.a.x), u_input.a);
    let var_2 = Struct_2(vec2<i32>(u_input.a, ~u_input.a));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 1172f, 1000f, 1680f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2, arg_2, arg_2, 899f)))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, arg_2, -352f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -306f, 1670f, arg_2) * vec4<f32>(-1878f, arg_2, arg_2, arg_2))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2, 1541f, arg_2, 249f))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, arg_2, -194f, -372f))))))));
    let var_4 = var_2;
    return Struct_2(~vec2<i32>(u_input.a & countOneBits(arg_0.a.x), func_4(true, _wgslsmith_f_op_vec2_f32(-var_3.yx), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 19228u), vec2<u32>(48346u, 47343u)), vec2<bool>(true, arg_1.x)).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_3(min(vec2<i32>(-22936i, 78147i) | -vec2<i32>(15545i, u_input.a), vec2<i32>(u_input.a, 1i) & (vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(4294967295u, 18301u) % vec2<u32>(32u)))), func_1(Struct_2(-vec2<i32>(-48015i, u_input.a)))), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1505f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(696f - -760f)))))), ~(~min(max(vec4<u32>(15318u, 130280u, 4294967295u, 1u), vec4<u32>(1320u, 1u, 17096u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2391f), _wgslsmith_f_op_f32(f32(-1f) * -1008f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1520f, _wgslsmith_f_op_f32(floor(-615f)))))), 1098f);
    let var_2 = func_1(Struct_2(var_0.a)).a.x;
    var var_3 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -var_0.a, vec2<i32>(~var_0.a.x, _wgslsmith_sub_i32(var_0.a.x, var_2)), vec2<i32>(var_0.a.x, 81255i) | vec2<i32>(1i, 1i)) >> (vec2<u32>(1u, ~1u) % vec2<u32>(32u));
    let var_4 = var_0.a;
    let var_5 = Struct_3(var_4, func_1(Struct_2(vec2<i32>(-1i, var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, 2147483647i, _wgslsmith_mult_i32(33401i, -func_1(var_0).a.x)));
}

