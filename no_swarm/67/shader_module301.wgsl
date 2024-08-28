struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<bool>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<f32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(arg_1.a));
    let var_1 = Struct_2(~select(u_input.c, firstTrailingBit(u_input.c) & u_input.c, true && all(vec4<bool>(false, arg_0.d, true, true))));
    var var_2 = true;
    let var_3 = 1u;
    let var_4 = Struct_3(Struct_2(u_input.c), min(abs(abs(vec4<u32>(42657u, var_3, 0u, 82924u))) | _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_3, 4294967295u, u_input.d.x, 59969u), vec4<u32>(u_input.a.x, 0u, 34884u, var_3), _wgslsmith_clamp_vec4_u32(vec4<u32>(6779u, u_input.d.x, var_3, 4294967295u), vec4<u32>(1u, var_3, 0u, 1u), vec4<u32>(31091u, 23910u, 22310u, 58607u))), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(24702u, var_3, 0u, var_3)), reverseBits(vec4<u32>(13224u, u_input.a.x, 1u, var_3))) << (vec4<u32>(u_input.d.x << (u_input.a.x % 32u), u_input.d.x, var_3, u_input.a.x) % vec4<u32>(32u))), Struct_2(vec3<i32>(0i, -reverseBits(arg_1.b), _wgslsmith_div_i32(u_input.b.x, arg_1.b))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-938f, arg_1.e.x, arg_0.e.x, arg_0.e.x) - arg_1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_1.e.x, -1000f, arg_3.x)))), ~(~(arg_0.b | 0i)), !select(!vec3<bool>(false, arg_0.d, false), arg_0.c, all(vec4<bool>(false, arg_0.d, arg_0.d, arg_0.d))), arg_1.d, arg_1.e));
    return vec3<f32>(var_0.x, _wgslsmith_f_op_f32(303f + -728f), 373f);
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = arg_0.xzx;
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), 860f, arg_1))) - _wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, 230f, 139f, 1013f))), i32(-1i) * -45349i, select(vec3<bool>(true, arg_2.x, true), vec3<bool>(false, false, true), vec3<bool>(arg_2.x, arg_2.x, true)), true, var_0.yy), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1373f, 1237f, var_0.x, -978f)), ~u_input.c.x, select(vec3<bool>(true, true, false), vec3<bool>(true, true, arg_2.x), vec3<bool>(false, arg_2.x, true)), arg_2.x, _wgslsmith_f_op_vec2_f32(var_0.yz - arg_0.xz)), -(u_input.c.x & u_input.b.x), arg_0.yxy)))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0.wwx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0.zwz - arg_0.ywx), arg_0.xzz, all(vec4<bool>(true, true, arg_2.x, arg_2.x))))))));
    var var_2 = Struct_3(Struct_2(u_input.c), vec4<u32>(_wgslsmith_add_u32(u_input.a.x ^ ~u_input.a.x, u_input.a.x), firstTrailingBit(4294967295u), u_input.d.x, _wgslsmith_sub_u32(abs(countOneBits(u_input.d.x)), u_input.d.x)), Struct_2(-(~u_input.c)), Struct_1(arg_0, u_input.b.x, vec3<bool>(false, false, any(select(vec2<bool>(false, true), arg_2, arg_2))), !(!any(vec3<bool>(arg_2.x, arg_2.x, arg_2.x))), var_1.zy));
    let var_3 = var_2.d;
    return var_2.d;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: u32) -> Struct_1 {
    return func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 549f, arg_0, 651f)) * vec4<f32>(332f, -1242f, arg_0, -1272f)))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(exp2(arg_0))), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-378f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -607f))))), _wgslsmith_clamp_u32(u_input.d.x, ~0u, _wgslsmith_sub_u32(select(93283u, _wgslsmith_dot_vec4_u32(vec4<u32>(24103u, 2806u, u_input.d.x, 15026u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)), true), u_input.d.x >> (_wgslsmith_div_u32(65224u, 9722u) % 32u))), max(~u_input.d.x, ~min(~u_input.a.x, 40368u)));
    let var_1 = Struct_3(Struct_2(vec3<i32>(reverseBits(-17532i), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.e, var_0.b, 1i, var_0.b), -vec4<i32>(1i, -9356i, u_input.e, 26016i)), abs(-var_0.b))), max(vec4<u32>(abs(20351u), 57782u, u_input.d.x, ~u_input.a.x) & abs(vec4<u32>(1u, u_input.d.x, 6510u, u_input.a.x) ^ vec4<u32>(0u, 33102u, 3398u, 0u)), ~(~min(vec4<u32>(u_input.d.x, u_input.a.x, 67518u, 36155u), vec4<u32>(u_input.a.x, 0u, 4294967295u, 2046u)))), Struct_2(abs(u_input.c)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a, vec4<f32>(var_0.a.x, -201f, -819f, var_0.e.x)) - var_0.a)), _wgslsmith_dot_vec3_i32(abs(abs(vec3<i32>(u_input.c.x, -62898i, var_0.b))), vec3<i32>(1i, 1i, u_input.b.x >> (u_input.a.x % 32u))), func_1(var_0.e.x, u_input.d.x, u_input.a.x).c, var_0.c.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_0.e - var_0.a.wx), vec2<f32>(var_0.e.x, var_0.a.x)))))));
    var var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.a.x + var_1.d.a.x) * _wgslsmith_f_op_f32(min(var_1.d.a.x, 312f))))), select(u_input.d.x, u_input.a.x, var_0.c.x), firstTrailingBit(24666u) >> (41194u % 32u));
    var_0 = var_1.d;
    let var_3 = _wgslsmith_div_f32(335f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(var_1.d, func_1(395f, 54720u, var_1.b.x), ~u_input.b.x, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.x, var_2.e.x, var_2.e.x))))).x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(firstTrailingBit(max(vec4<i32>(2147483647i, u_input.c.x, 49008i, var_0.b), vec4<i32>(var_0.b, -1i, -43517i, 1850i))), -_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -19600i, -55664i, u_input.e), vec4<i32>(-2147483647i, 25162i, var_0.b, -14837i))), -(~(vec4<i32>(var_2.b, 2147483647i, 25917i, var_0.b) | vec4<i32>(-2854i, -1i, var_0.b, -6508i)))), -1000f, _wgslsmith_f_op_f32(1224f + -628f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1614f)), -103f)), _wgslsmith_f_op_f32(max(644f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_3)), _wgslsmith_f_op_f32(select(1380f, var_0.a.x, var_0.c.x))))))));
}

