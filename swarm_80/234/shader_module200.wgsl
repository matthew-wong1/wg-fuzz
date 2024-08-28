struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(vec2<bool>(true, true));
    var var_1 = vec4<bool>(all(!vec3<bool>(all(vec3<bool>(false, false, false)), var_0.a.x, all(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x)))), var_0.a.x, !var_0.a.x, false);
    let var_2 = Struct_1(var_1.yy);
    return Struct_1(!var_0.a);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1063f)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1880f, 452f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -719f), _wgslsmith_f_op_f32(697f - 1032f)))))));
    var_0 = 306f;
    var_1 = 990f;
    var_1 = 951f;
    return func_2(min(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 55503u, 43432u, 0u), _wgslsmith_sub_vec4_u32(arg_1, vec4<u32>(1u, arg_1.x, 4294967295u, arg_1.x)), ~vec4<u32>(0u, arg_1.x, 20381u, 4294967295u)), _wgslsmith_add_vec4_u32(~arg_1, _wgslsmith_clamp_vec4_u32(arg_1, arg_1, vec4<u32>(arg_1.x, u_input.a, 29335u, 37312u))), min(vec4<u32>(40043u, 4294967295u, 0u, 1u), ~vec4<u32>(arg_1.x, 4294967295u, 26303u, 45536u))), vec4<u32>(0u, ~1u, arg_1.x, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-899f * _wgslsmith_f_op_f32(floor(1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -416f) + -549f))));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> bool {
    let var_0 = ~u_input.b;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1266f, -358f) + vec2<f32>(-1000f, -1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1452f, -1392f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(101f, -1378f)) - vec2<f32>(1f, 1f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(270f, 606f) - vec2<f32>(1357f, -1847f))) + vec2<f32>(823f, -501f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-767f, 537f, arg_0.a.x)) - _wgslsmith_f_op_f32(-211f - 1143f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-759f + 1606f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return any(!select(vec3<bool>(arg_0.a.x, arg_0.a.x, true), !(!vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), select(!vec3<bool>(arg_0.a.x, true, arg_0.a.x), !vec3<bool>(arg_0.a.x, false, true), any(arg_0.a))));
}

fn func_1() -> vec3<i32> {
    let var_0 = func_4(func_3(Struct_1(vec2<bool>(all(vec2<bool>(true, false)), true)), ~(firstLeadingBit(vec4<u32>(51386u, 10796u, u_input.a, u_input.a)) & reverseBits(vec4<u32>(4294967295u, u_input.a, 42270u, u_input.a))), func_2(vec4<u32>(u_input.a, u_input.a, 3002u, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -565f) + _wgslsmith_f_op_f32(ceil(-1103f)))), func_2(vec4<u32>(0u, ~u_input.a, firstTrailingBit(1u), u_input.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(289f * -844f))))), _wgslsmith_mod_i32(max(i32(-1i) * -2147483647i, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(-52308i, u_input.b)))), -_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<i32>(u_input.b, -11172i, -31736i))));
    var var_1 = !any(select(vec4<bool>(true, true, var_0, var_0), vec4<bool>(var_0, func_3(Struct_1(vec2<bool>(true, true)), vec4<u32>(1u, u_input.a, u_input.a, 43179u), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(var_0, true))).a.x, var_0, var_0), !var_0));
    var var_2 = func_4(Struct_1(func_3(func_2(~vec4<u32>(u_input.a, 4294967295u, 33616u, u_input.a), 212f), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, u_input.a)), 1u, ~u_input.a, ~u_input.a), Struct_1(vec2<bool>(var_0, var_0)), func_2(vec4<u32>(u_input.a, 53097u, u_input.a, 6050u) | vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_f_op_f32(-155f + -601f))).a), abs(-u_input.b));
    let var_3 = Struct_1(func_3(func_3(func_3(Struct_1(vec2<bool>(false, var_0)), vec4<u32>(u_input.a, 1u, u_input.a, 31526u), Struct_1(vec2<bool>(var_0, false)), func_3(Struct_1(vec2<bool>(var_0, false)), vec4<u32>(u_input.a, 0u, 62429u, 1u), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(var_0, var_0)))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 39970u), _wgslsmith_add_vec4_u32(vec4<u32>(36860u, u_input.a, 1u, u_input.a), vec4<u32>(25076u, u_input.a, u_input.a, u_input.a))), func_3(Struct_1(vec2<bool>(false, var_0)), ~vec4<u32>(u_input.a, 4167u, u_input.a, u_input.a), Struct_1(vec2<bool>(var_0, true)), func_2(vec4<u32>(47469u, u_input.a, 1u, 0u), 1000f)), func_2(vec4<u32>(60018u, u_input.a, 4294967295u, u_input.a), _wgslsmith_f_op_f32(select(-467f, -572f, true)))), vec4<u32>(0u, _wgslsmith_clamp_u32(u_input.a, ~45265u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 26323u, u_input.a), vec3<u32>(0u, 22430u, 36873u))), _wgslsmith_mod_u32(~u_input.a, u_input.a), u_input.a), Struct_1(func_2(vec4<u32>(u_input.a, u_input.a, 1u, 1u), _wgslsmith_f_op_f32(1831f * -1467f)).a), Struct_1(vec2<bool>(func_4(Struct_1(vec2<bool>(var_0, var_0)), -38247i), var_0))).a);
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 663f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -117f) + _wgslsmith_f_op_f32(sign(2645f)))))));
    return vec3<i32>(12309i, 10447i, ~(~u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = vec4<u32>(~max(0u, ~reverseBits(u_input.a)), ~4294967295u, ~u_input.a, u_input.a);
    let var_2 = _wgslsmith_div_vec3_i32(~func_1() >> (var_1.xww % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(-_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.b, u_input.b, u_input.b), ~vec3<i32>(1i, u_input.b, u_input.b), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -2147483647i, -1i), vec3<i32>(6220i, u_input.b, 1i))), func_1() | countOneBits(vec3<i32>(0i, 18024i, -1i))));
    let var_3 = vec2<bool>(true | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -918f)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-533f * -741f)))), false);
    var_0 = any(vec4<bool>(var_3.x, var_3.x, true, true));
    var var_4 = vec2<u32>(~10769u, _wgslsmith_mod_u32(select(~1u, 6360u, true), _wgslsmith_sub_u32(firstLeadingBit(u_input.a), min(4294967295u, 0u)) | var_1.x));
    var var_5 = (select(vec4<i32>(-u_input.b, -u_input.b, _wgslsmith_mod_i32(u_input.b, 2147483647i), max(u_input.b, u_input.b)), vec4<i32>(var_2.x, ~19759i, countOneBits(var_2.x), countOneBits(47030i)), vec4<bool>(all(vec2<bool>(var_3.x, var_3.x)), false, true, true)) & -_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, -2147483647i, var_2.x, -36726i) ^ vec4<i32>(var_2.x, u_input.b, u_input.b, 50366i), vec4<i32>(0i, -4496i, var_2.x, var_2.x) & vec4<i32>(0i, -1i, u_input.b, 2147483647i))) & -vec4<i32>(1i, max(~u_input.b, i32(-1i) * -36700i), -42625i, -2147483647i);
    let var_6 = func_3(Struct_1(vec2<bool>(any(vec4<bool>(var_3.x, true, false, var_3.x)), var_3.x)), reverseBits(~(~var_1)) << (((var_1 >> (~vec4<u32>(var_4.x, 72030u, u_input.a, 37416u) % vec4<u32>(32u))) | vec4<u32>(1u, ~u_input.a, 4294967295u, 4294967295u)) % vec4<u32>(32u)), func_3(func_2(_wgslsmith_add_vec4_u32(min(var_1, vec4<u32>(var_4.x, var_1.x, u_input.a, 4294967295u)), max(vec4<u32>(71985u, var_4.x, 1u, 0u), var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(959f)))), ~min(vec4<u32>(1u, u_input.a, 36592u, 1u), var_1) | ~var_1, func_2(_wgslsmith_mod_vec4_u32(firstTrailingBit(var_1), ~var_1), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-586f, 940f), _wgslsmith_div_f32(-967f, 671f)))), Struct_1(vec2<bool>(true, any(vec3<bool>(false, false, false))))), Struct_1(select(vec2<bool>(var_3.x, var_3.x), select(select(vec2<bool>(var_3.x, var_3.x), var_3, true), !var_3, !vec2<bool>(true, var_3.x)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(266f);
}

