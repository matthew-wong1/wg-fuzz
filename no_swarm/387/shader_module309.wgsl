struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(4294967295u, 22741u, 62241u, 66079u, 4294967295u, 18605u, 42648u, 1u, 26408u, 42141u);

var<private> global1: vec3<bool>;

var<private> global2: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(1u, 4294967295u, 558u, 6425u), vec4<u32>(0u, 10855u, 1u, 24766u), vec4<u32>(1u, 4294967295u, 1u, 21713u), vec4<u32>(77457u, 4294967295u, 22880u, 1u), vec4<u32>(25079u, 15990u, 0u, 1u), vec4<u32>(1u, 9531u, 22544u, 31866u), vec4<u32>(33653u, 1u, 4294967295u, 4294967295u), vec4<u32>(1u, 61931u, 0u, 0u), vec4<u32>(42250u, 0u, 24764u, 45237u), vec4<u32>(1u, 33656u, 28002u, 31175u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_0.a);
    var var_1 = countOneBits(countOneBits(u_input.a));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1902f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(312f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -358f), -391f))))));
    let var_3 = vec3<bool>(!(!((var_0.a.x | var_0.a.x) > _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 40089i), arg_0.a.xz))), !global1.x, global1.x);
    var_1 = ~52252u;
    return _wgslsmith_add_u32(89694u, u_input.a);
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: i32, arg_3: vec2<u32>) -> f32 {
    let var_0 = Struct_1(firstLeadingBit(-(-vec4<i32>(arg_1, arg_0.x, arg_0.x, arg_0.x) | vec4<i32>(-37605i, 1i, 1i, 17909i))));
    global1 = vec3<bool>(global1.x, true, true);
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(func_3(Struct_1(var_0.a)), 24100u) >> (arg_3 % vec2<u32>(32u)), firstTrailingBit(~_wgslsmith_div_vec2_u32(arg_3, vec2<u32>(4294967295u, u_input.a))));
    var var_2 = vec3<i32>(-36454i, select(-1i, -arg_0.x << (_wgslsmith_mult_u32(34376u, global0[_wgslsmith_index_u32(38402u, 10u)]) % 32u), false), _wgslsmith_add_i32(var_0.a.x | ~54936i, arg_0.x));
    var var_3 = ~arg_3.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-953f + _wgslsmith_f_op_f32(min(-121f, 507f))) + -197f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1780f))), _wgslsmith_f_op_f32(-192f + _wgslsmith_f_op_f32(ceil(-536f))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: vec2<bool>) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(~1u, 10u)];
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(519f)) - _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(func_2(arg_0.zx, 54297i, ~0i, vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], u_input.a))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, -626f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1205f)), _wgslsmith_f_op_f32(-arg_1.x))))));
    var var_2 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(-15102i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(arg_0.x, -20931i, -45259i, arg_0.x)), countOneBits(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, -5429i, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, 2147483647i, -39861i))), vec4<i32>(arg_0.x, ~23683i, _wgslsmith_dot_vec2_i32(arg_0.zy, arg_0.zz), 1i)) ^ vec4<i32>(-select(arg_0.x, -1i, false), -25419i, firstLeadingBit(abs(-1i)), ~(~arg_0.x)));
    var var_3 = arg_0.x;
    return _wgslsmith_f_op_f32(-var_1.x) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1105f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * 349f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(global1.x, any(vec4<bool>(false, true, false, func_1(vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(341f, -1101f, -283f) * vec3<f32>(514f, -693f, 1051f)), select(global1.xx, global1.xy, true), !vec2<bool>(global1.x, global1.x)))), false);
    var var_0 = Struct_1(vec4<i32>(-(1i << (global0[_wgslsmith_index_u32(u_input.a, 10u)] % 32u)), abs(9510i), (-48472i | firstTrailingBit(20270i)) << (~select(17367u, 4294967295u, true) % 32u), -2147483647i));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-238f, -2378f, 312f, 1719f) + vec4<f32>(-123f, -1000f, 128f, 1905f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(382f, 2577f, 2058f, 131f), vec4<f32>(-1543f, -1089f, -780f, -1189f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2180f, 1020f, -1347f, 504f), vec4<f32>(-628f, 1856f, 653f, -505f), !global1.x)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, true)), !vec4<bool>(global1.x, global1.x, true, global1.x), global1.x))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(vec4<f32>(879f, 1000f, 492f, 2178f), vec4<f32>(-1182f, 1406f, 920f, -437f))))))) - vec4<f32>(_wgslsmith_f_op_f32(sign(1382f)), 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + 1000f))))), 415f));
    var var_2 = Struct_1(abs(var_0.a));
    let var_3 = Struct_1(vec4<i32>(var_0.a.x, _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(1i, var_2.a.x), var_0.a.x), -var_0.a.x), 0i, 16494i));
    let var_4 = vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(13982u, 1u), _wgslsmith_div_u32(u_input.a, 6178u), global0[_wgslsmith_index_u32(4242u, 10u)], u_input.a), abs(min(abs(global2[_wgslsmith_index_u32(22093u, 10u)]), vec4<u32>(122195u, 0u, 30035u, 1803u) | vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], 1u, global0[_wgslsmith_index_u32(32474u, 10u)], u_input.a)))), u_input.a);
    global1 = !vec3<bool>(true, global1.x || (!global1.x | (var_1.x <= var_1.x)), ~(-68693i) < var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, var_3.a.x);
}

