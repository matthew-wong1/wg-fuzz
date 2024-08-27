struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> i32 {
    return _wgslsmith_clamp_i32(-43527i, 42093i, -2685i);
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: i32) -> vec3<i32> {
    let var_0 = -vec2<i32>(~2147483647i, _wgslsmith_add_i32(~countOneBits(arg_2), func_3(Struct_2(-394f, vec2<f32>(-1611f, 1641f)), _wgslsmith_div_f32(536f, 348f), Struct_2(671f, vec2<f32>(917f, -462f)))));
    var var_1 = ~(vec4<u32>(arg_0.x, _wgslsmith_div_u32(arg_1, _wgslsmith_add_u32(69679u, arg_1)), reverseBits(4294967295u & arg_0.x), 1u) & _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, arg_0.x, 4294967295u, 36494u), min(_wgslsmith_div_vec4_u32(arg_0, arg_0), vec4<u32>(arg_1, 5052u, arg_0.x, arg_1)), abs(_wgslsmith_div_vec4_u32(arg_0, arg_0))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1351f))));
    let var_3 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-703f + var_2), _wgslsmith_f_op_f32(-var_2)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2086f, var_2) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1315f, 160f), vec2<f32>(var_2, 270f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-392f, var_2))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_2) + vec2<f32>(-187f, var_2)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2, var_2))), vec2<bool>(false, false))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1520f)) + _wgslsmith_div_f32(-189f, 671f)), _wgslsmith_div_f32(399f, -411f)) - _wgslsmith_div_f32(723f, 1000f)), vec4<bool>(true, select(true, 38884u == (17962u >> (arg_0.x % 32u)), false), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true))), false));
    var var_4 = Struct_3(4294967295u << (firstTrailingBit(arg_1 << ((arg_1 << (29198u % 32u)) % 32u)) % 32u), arg_0);
    return vec3<i32>(_wgslsmith_div_i32(-_wgslsmith_mod_i32(2147483647i, _wgslsmith_add_i32(-1i, 5188i)), u_input.a), reverseBits(-10846i), _wgslsmith_add_i32(-2147483647i, i32(-1i) * -_wgslsmith_mult_i32(2147483647i, 0i)));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: i32) -> vec4<u32> {
    var var_0 = firstTrailingBit(-func_2(vec4<u32>(~4294967295u, 42341u, 0u, 4294967295u), 5737u, -1i));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-329f, _wgslsmith_f_op_f32(arg_1 + arg_1), true)))) * 1339f), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x, _wgslsmith_f_op_f32(455f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-110f - -202f))));
    let var_2 = _wgslsmith_f_op_vec2_f32(arg_0.xz + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(floor(322f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_0.zy)))));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-var_2.x), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(min(var_2.x, -1126f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_div_f32(arg_1, 896f))))))));
    let var_4 = 4294967295u >> (0u % 32u);
    return ~(vec4<u32>(~_wgslsmith_add_u32(var_4, var_4), 6355u, ~abs(var_4), 0u | var_4) | ~((vec4<u32>(4294967295u, var_4, var_4, 0u) & vec4<u32>(var_4, var_4, var_4, 72942u)) << ((vec4<u32>(4294967295u, 79920u, var_4, var_4) ^ vec4<u32>(var_4, var_4, 4294967295u, var_4)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_add_vec4_u32(~func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-349f, -1495f, -787f)), -1618f, u_input.a), vec4<u32>(1u, countOneBits(func_1(vec3<f32>(-573f, -1075f, -1680f), 836f, 1i).x), 1u, 0u));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -2500f), vec2<f32>(-940f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(-348f)), var_1.b);
    let var_2 = Struct_3(7750u, vec4<u32>(var_0.x, 1u, ~(var_0.x >> ((var_0.x | 73746u) % 32u)), var_0.x));
    var var_3 = true;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b.x - var_1.b.x))) + _wgslsmith_div_f32(2496f, var_1.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1574f, -1527f)) - _wgslsmith_f_op_vec2_f32(var_1.b * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, -1063f) + vec2<f32>(1000f, var_1.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec2<i32>(50004i, u_input.a), vec2<i32>(func_2(var_0, 0u, 0i).x, u_input.a), vec2<bool>(all(vec4<bool>(false, false, false, false)), all(vec3<bool>(true, true, true)))) & (-(~vec2<i32>(-4919i, 31722i)) << (var_2.b.zy % vec2<u32>(32u))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_sub_i32(~17133i, 22925i), u_input.a, u_input.a), countOneBits(min(vec4<i32>(7988i, u_input.a, u_input.a, 30227i), vec4<i32>(-31321i, -1i, u_input.a, u_input.a)) | vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i))), var_4.b.x);
}

