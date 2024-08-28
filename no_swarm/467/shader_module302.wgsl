struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    return ~_wgslsmith_clamp_u32(u_input.a.x, ~1u, _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x) | u_input.a.x));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1439f)), 452f, -473f, 1f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1536f, 1065f, -1084f, -1445f))))), countOneBits(-38014i), 1i, 743f);
    var var_1 = firstTrailingBit(min(-_wgslsmith_mult_vec4_i32(min(vec4<i32>(var_0.b, 15089i, var_0.c, -2147483647i), vec4<i32>(-25484i, 2147483647i, -9999i, -2147483647i)), reverseBits(vec4<i32>(var_0.b, var_0.b, var_0.c, var_0.c))), -(~abs(vec4<i32>(1i, var_0.c, var_0.b, var_0.c)))));
    var_1 = ~_wgslsmith_div_vec4_i32(min(-abs(vec4<i32>(1442i, 2147483647i, var_0.c, -2147483647i)), vec4<i32>(var_1.x, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.x, var_1.x, var_0.c), vec4<i32>(1i, 15923i, var_0.b, var_1.x)), abs(var_1.x))), ~vec4<i32>(var_0.c, var_1.x, var_0.c, var_1.x) & countOneBits(countOneBits(vec4<i32>(29825i, var_0.b, var_1.x, -35298i))));
    var_1 = _wgslsmith_add_vec4_i32(~(-countOneBits(vec4<i32>(-1i, var_1.x, 2147483647i, 1i) | vec4<i32>(2147483647i, var_1.x, -25199i, -1i))), ~(~reverseBits(abs(vec4<i32>(1i, var_1.x, var_0.b, -19934i)))));
    var var_2 = reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u | u_input.a.x, u_input.a.x, ~15745u, u_input.a.x), reverseBits(countOneBits(vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x))) >> (~(~vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u)) % vec4<u32>(32u)), min(~(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 74155u) >> (vec4<u32>(u_input.a.x, u_input.a.x, 7362u, u_input.a.x) % vec4<u32>(32u))), vec4<u32>(15544u, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 22980u), ~u_input.a.x))));
    return vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(var_2.x, _wgslsmith_div_u32(var_2.x, var_2.x)), 11771u), var_2.x, ~var_2.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(21938u, ~(u_input.a.x & var_2.x), ~(~36634u)), firstLeadingBit(max(var_2.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)))));
}

fn func_1(arg_0: u32) -> vec3<i32> {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1152f, 1f, -904f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-943f, -1979f, 385f)))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1161f)));
    let var_2 = vec2<f32>(863f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2678f, _wgslsmith_f_op_f32(-387f + -703f))))));
    let var_3 = _wgslsmith_div_vec4_u32(func_3(true), vec4<u32>(1u ^ u_input.a.x, 4294967295u, ~_wgslsmith_mod_u32(u_input.a.x, 25778u), _wgslsmith_sub_u32(max(~u_input.a.x, _wgslsmith_mult_u32(var_0, u_input.a.x)), var_0)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1630f, -420f)) * -760f), _wgslsmith_f_op_f32(trunc(200f)));
    return -vec3<i32>(~(-19860i), ~1i, _wgslsmith_div_i32(18992i << (var_0 % 32u), select(-2147483647i, 15323i, false)) << (func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -1077f, -374f) + vec3<f32>(var_2.x, var_2.x, 109f))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-290f, -421f, 266f) + vec3<f32>(-1245f, -357f, -542f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(255f, 258f, 477f) - vec3<f32>(2190f, -2122f, 683f))))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-149f, 439f, -1063f), _wgslsmith_div_vec3_f32(vec3<f32>(671f, -1496f, 926f), vec3<f32>(356f, -2147f, 1277f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(788f, 908f, 949f))))));
    var var_1 = func_1(_wgslsmith_div_u32(74497u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(46621u, 0u, 1u), u_input.a.x), select(_wgslsmith_div_vec2_u32(vec2<u32>(29211u, 4294967295u), vec2<u32>(u_input.a.x, 0u)), ~u_input.a.xy, vec2<bool>(false, true)))));
    let var_2 = Struct_2(firstLeadingBit(~(~(-vec4<i32>(-20019i, var_1.x, var_1.x, 2147483647i)))));
    var_1 = vec3<i32>(var_1.x, func_1(min(26179u, firstTrailingBit(abs(4294967295u)))).x, -13420i);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2179f + var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1885f, 700f) + _wgslsmith_f_op_f32(var_0.x + 1165f)), 1f, var_0.x) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1956f, var_0.x, var_0.x, var_0.x))))), _wgslsmith_div_i32(min(abs(_wgslsmith_dot_vec2_i32(var_1.xx, vec2<i32>(35252i, var_2.a.x))), _wgslsmith_mod_i32(firstLeadingBit(-4304i), _wgslsmith_dot_vec2_i32(vec2<i32>(-24023i, var_2.a.x), vec2<i32>(12277i, 1i)))), -2147483647i), -(reverseBits(~var_2.a.x) << ((abs(u_input.a.x) >> (~45108u % 32u)) % 32u)), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(vec2<i32>(-27340i, var_3.b), vec2<i32>(40989i, var_2.a.x >> (1u % 32u))), var_2.a.ywz);
}

