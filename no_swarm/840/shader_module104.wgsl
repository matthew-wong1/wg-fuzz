struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> f32 {
    return _wgslsmith_div_f32(1407f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(430f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_3() -> f32 {
    let var_0 = !(-938f < _wgslsmith_f_op_f32(max(255f, _wgslsmith_f_op_f32(select(-1825f, 432f, all(vec2<bool>(true, false)))))));
    let var_1 = u_input.b;
    let var_2 = Struct_1(select(select(!select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), true), select(vec2<bool>(false, false), vec2<bool>(true, var_0), false && var_0), true), !(!vec2<bool>(var_0, var_0)), vec2<bool>(max(var_1, 34977u) >= _wgslsmith_mod_u32(var_1, 4294967295u), any(vec2<bool>(var_0, false)))));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-649f - 177f))), 1076f, true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -537f))))));
    var var_4 = select(abs(_wgslsmith_sub_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(73490u, var_1, var_1, var_1), vec4<u32>(15669u, 34060u, u_input.b, 43378u))), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 24381u, 0u, u_input.d), vec4<u32>(1u, 0u, var_1, u_input.b)), vec4<u32>(50699u, 1u, var_1, 4294967295u) << (vec4<u32>(u_input.d, u_input.d, var_1, u_input.c.x) % vec4<u32>(32u))))), _wgslsmith_div_vec4_u32(vec4<u32>(0u, _wgslsmith_mod_u32(reverseBits(var_1), ~59572u), 3065u, _wgslsmith_mod_u32(~53954u, _wgslsmith_add_u32(u_input.d, 80004u))), ~abs(vec4<u32>(0u, u_input.b, 4902u, 78561u))), !(!(!select(vec4<bool>(true, true, false, var_2.a.x), vec4<bool>(var_0, var_2.a.x, false, false), vec4<bool>(false, var_0, var_2.a.x, false)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-768f)))))));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(668f * -258f))), 155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -126f))), _wgslsmith_f_op_f32(func_3()))));
    let var_1 = reverseBits(firstLeadingBit(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 26318u, u_input.c.x, u_input.b) | vec4<u32>(u_input.b, u_input.c.x, 72917u, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, u_input.b, 4294967295u, u_input.c.x), vec4<u32>(u_input.d, 3721u, u_input.c.x, 4294967295u) >> (vec4<u32>(5703u, u_input.c.x, u_input.d, 18664u) % vec4<u32>(32u))))));
    var var_2 = abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, _wgslsmith_dot_vec3_u32(u_input.c, var_1.wzx), _wgslsmith_dot_vec4_u32(vec4<u32>(23205u, var_1.x, 0u, u_input.b), var_1)), var_1));
    var var_3 = Struct_1(!(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true)));
    var var_4 = ~reverseBits((vec2<i32>(u_input.e.x, u_input.e.x) << (var_2.zx % vec2<u32>(32u))) ^ vec2<i32>(u_input.a.x ^ -2147483647i, u_input.e.x << (var_1.x % 32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -593f) * -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true | (!select(true, true, true) && false);
    var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(782f * -529f) - _wgslsmith_f_op_f32(func_1())) != _wgslsmith_f_op_f32(-1772f - _wgslsmith_f_op_f32(f32(-1f) * -1312f)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, 538f), _wgslsmith_f_op_f32(max(-412f, 818f)))))), _wgslsmith_f_op_f32(func_3()));
    let var_2 = _wgslsmith_add_i32(u_input.a.x, u_input.a.x | reverseBits(-u_input.a.x)) == (i32(-1i) * -(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.e.x, u_input.a.x, -22534i), vec4<i32>(u_input.e.x, 43234i, u_input.a.x, -29390i)) ^ _wgslsmith_sub_i32(u_input.a.x, 33232i)));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(round(var_1.x))) - vec2<f32>(1831f, var_1.x))));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1108f, _wgslsmith_f_op_f32(sign(var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<u32>(1u, 1u, 1u) << (u_input.c % vec3<u32>(32u))) >> (max(u_input.c, select(min(u_input.c, u_input.c), abs(u_input.c), true)) % vec3<u32>(32u)), u_input.a);
}

