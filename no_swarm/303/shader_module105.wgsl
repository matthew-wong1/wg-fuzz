struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> i32 {
    let var_0 = (abs(~vec2<u32>(1u, u_input.b)) | max(~min(vec2<u32>(7974u, 4294967295u), vec2<u32>(34109u, 4294967295u)), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 106339u, u_input.b), firstLeadingBit(u_input.b)))) << (~vec2<u32>(0u, 4294967295u) % vec2<u32>(32u));
    let var_1 = Struct_3(countOneBits(u_input.d.yy), min(vec4<i32>(-1i) * -min(vec4<i32>(u_input.c.x, u_input.c.x, 1i, 0i), vec4<i32>(u_input.d.x, u_input.d.x, -21439i, 1i)), firstTrailingBit(vec4<i32>(2147483647i, u_input.c.x, 15676i, u_input.d.x) << ((vec4<u32>(35408u, var_0.x, var_0.x, var_0.x) >> (vec4<u32>(var_0.x, u_input.b, var_0.x, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)))), _wgslsmith_mod_vec2_u32(select(~(var_0 | var_0), var_0, !vec2<bool>(arg_1, false)), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.b), abs(vec2<u32>(4294967295u, u_input.b)), var_0), _wgslsmith_sub_vec2_u32(select(var_0, var_0, vec2<bool>(false, arg_1)), var_0), select(vec2<bool>(arg_1, true), vec2<bool>(true, true), true))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(197f, 1309f, 1075f)))))));
    var var_3 = Struct_1(all(vec2<bool>(arg_1, arg_1)));
    var var_4 = var_1.b.zww;
    return _wgslsmith_div_i32(u_input.d.x << (~0u % 32u), ~(~max(-24448i, u_input.a.x) ^ _wgslsmith_add_i32(countOneBits(-1i), 12041i)));
}

fn func_2() -> i32 {
    var var_0 = false;
    var var_1 = abs(u_input.d.x) | _wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(-vec4<i32>(-3924i, -1i, -1i, -71719i), vec4<i32>(2147483647i, u_input.c.x, 1i, 0i)), ~_wgslsmith_div_i32(func_3(vec4<f32>(701f, 630f, -1203f, -202f), true), min(u_input.d.x, -60913i)));
    var var_2 = ~_wgslsmith_mod_u32(u_input.b, _wgslsmith_mod_u32((u_input.b | 20529u) | _wgslsmith_mult_u32(u_input.b, 1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 25026u, 45537u), ~vec3<u32>(71397u, 527u, 8874u))));
    let var_3 = firstTrailingBit(firstTrailingBit(~u_input.b));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(abs(-183f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(-377f - 1968f), true)), -572f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-892f + _wgslsmith_f_op_f32(floor(649f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1864f)))))));
    return -1056i;
}

fn func_1() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-1949f - -549f);
    var_0 = -1129f;
    var var_1 = func_2();
    var_1 = -32369i;
    var var_2 = ~(~_wgslsmith_mod_u32(~u_input.b, u_input.b));
    return vec4<i32>(-(~min(u_input.c.x, u_input.a.x)), 822i, ~_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, -2147483647i)), abs(u_input.d.xy)), ~1i) << (vec4<u32>(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, 20307u), min(vec2<u32>(1u, 4294967295u), vec2<u32>(28094u, u_input.b) | vec2<u32>(u_input.b, u_input.b))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(select(u_input.b, 4294967295u, true), ~u_input.b, 45563u), _wgslsmith_clamp_u32(u_input.b, 1u, reverseBits(1u))), u_input.b) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_i32(func_1(), vec4<i32>(_wgslsmith_add_i32(~countOneBits(-4498i), -_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-2763i, u_input.a.x))), u_input.c.x, func_2(), _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, u_input.d.x), u_input.c.x)));
    let var_1 = !select(true, abs(1u) >= u_input.b, all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_2 = Struct_2(Struct_1(true), 0u, _wgslsmith_add_i32(var_0.x, u_input.a.x), Struct_1(!any(!vec4<bool>(true, true, var_1, var_1))));
    var_0 = -(~firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 1i, u_input.a.x, 29872i) & vec4<i32>(-2147483647i, u_input.c.x, 1i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(-9004i, -1i, -1733i, -2147483647i), vec4<i32>(u_input.c.x, 1i, var_0.x, u_input.a.x)), select(vec4<i32>(1i, -2147483647i, var_0.x, var_2.c), vec4<i32>(-4639i, var_2.c, -26699i, -32760i), vec4<bool>(false, var_2.d.a, false, true)))));
    let var_3 = Struct_4(select(~(~vec4<u32>(1u, var_2.b, 1u, u_input.b)), ~(~(~vec4<u32>(u_input.b, 16674u, 111224u, 0u))), select(!(!vec4<bool>(true, var_2.d.a, var_2.d.a, var_2.a.a)), select(vec4<bool>(var_2.a.a, var_2.d.a, var_1, var_1), vec4<bool>(var_1, var_1, var_1, var_1), !var_2.d.a), vec4<bool>(!var_2.a.a, false, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, ~1u, var_2.b);
}

