struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<u32>,
    c: i32,
    d: Struct_2,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: u32) -> vec4<u32> {
    return firstTrailingBit(~arg_1.a.d.a & vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(32977u, arg_1.a.d.a.x), u_input.c.x), reverseBits(1u), ~(~5102u), _wgslsmith_dot_vec2_u32(~arg_1.a.d.a.wz, u_input.c.yx)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<bool>) -> f32 {
    let var_0 = -select(_wgslsmith_div_i32(min(_wgslsmith_div_i32(arg_1.a, arg_2.x), reverseBits(arg_2.x)), -arg_1.a), ~arg_1.b, arg_3.x);
    var var_1 = u_input.c;
    var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(min(vec4<u32>(0u, 0u, var_1.x, u_input.b), vec4<u32>(var_1.x, 4294967295u, 81434u, u_input.c.x)), vec4<u32>(21420u, var_1.x, var_1.x, 4294967295u)), abs(func_3(u_input.a.xz, Struct_5(Struct_4(Struct_1(2147483647i, u_input.a.x, vec2<bool>(true, arg_3.x), arg_1.d, arg_3.wz), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), arg_3, Struct_3(u_input.c, Struct_1(50913i, arg_2.x, arg_3.xy, arg_3.zwz, arg_3.wy), Struct_2(-1368f, arg_1, arg_3.x, Struct_1(-40154i, arg_1.a, arg_3.yw, arg_3.zyy, arg_1.d.zx)))), var_1.wzw, -18619i, Struct_2(-330f, Struct_1(arg_2.x, u_input.a.x, vec2<bool>(arg_3.x, false), vec3<bool>(arg_0, arg_0, true), arg_1.c), true, arg_1), vec3<bool>(arg_3.x, true, false)), u_input.c.x))), u_input.c, vec4<u32>(55027u, ~(var_1.x ^ 1007u), ~4294967295u, 103404u)), reverseBits(_wgslsmith_clamp_vec4_u32(~u_input.c, reverseBits(~vec4<u32>(var_1.x, u_input.b, u_input.c.x, var_1.x)), select(~u_input.c, ~u_input.c, select(arg_3, arg_3, false)))));
    var_1 = u_input.c;
    var_1 = u_input.c;
    return -451f;
}

fn func_1(arg_0: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(276f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x * arg_0.x))))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_0, arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(func_2(true, Struct_1(-54983i, u_input.a.x, vec2<bool>(false, true), vec3<bool>(false, true, false), vec2<bool>(false, true)), u_input.a.xy, vec4<bool>(true, false, true, true))), arg_0.x, _wgslsmith_div_f32(563f, arg_0.x), 1033f)))));
    var_0 = 156f;
    var_0 = arg_0.x;
    var_0 = arg_0.x;
    return any(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), true), vec4<bool>(true, u_input.a.x <= 2147483647i, true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a.x, firstTrailingBit(~(-8380i)), select(vec2<bool>(func_1(vec4<f32>(881f, -1235f, 325f, -194f)) || true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)))), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), select(vec2<bool>(true, 2147483647i > u_input.a.x), vec2<bool>(true, all(vec4<bool>(false, true, false, false))), vec2<bool>(true, true))), vec3<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))), select(select(true, false, true) || false, true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false))), any(vec3<bool>(true, true, true))), select(vec2<bool>(true, any(vec3<bool>(true, true, true))), select(vec2<bool>(all(vec4<bool>(false, false, true, false)), any(vec3<bool>(true, false, true))), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), !vec2<bool>(all(vec4<bool>(false, false, true, false)), true)));
    var var_1 = select(true, true, var_0.d.x | true);
    var var_2 = Struct_3(~u_input.c, Struct_1(0i, ~(~min(var_0.a, -57402i)), !select(var_0.e, !vec2<bool>(false, var_0.c.x), select(vec2<bool>(var_0.c.x, false), var_0.e, var_0.d.yy)), var_0.d, select(!vec2<bool>(var_0.d.x, var_0.d.x), var_0.e, true)), Struct_2(1479f, Struct_1(_wgslsmith_add_i32(~56336i, var_0.a & u_input.a.x), _wgslsmith_add_i32(2147483647i, select(var_0.b, -1i, var_0.e.x)), var_0.e, select(vec3<bool>(true, false, true), !var_0.d, true), var_0.e), var_0.c.x, Struct_1(var_0.a, _wgslsmith_mult_i32(16827i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), vec2<bool>(true, true), select(var_0.d, select(vec3<bool>(var_0.d.x, false, false), vec3<bool>(false, true, var_0.c.x), false), select(var_0.d, var_0.d, var_0.d)), select(select(var_0.d.xz, var_0.c, var_0.e.x), select(var_0.d.xz, var_0.d.yy, var_0.d.x), var_0.e.x))));
    var var_3 = var_2.a.x >> (49011u % 32u);
    var_3 = 110215u;
    let var_4 = u_input.b;
    var_3 = func_3(-_wgslsmith_mod_vec2_i32(u_input.a.xz << (var_2.a.zy % vec2<u32>(32u)), u_input.a.zy), Struct_5(Struct_4(Struct_1(1i, -1i, vec2<bool>(false, false), var_2.c.b.d, vec2<bool>(true, true)), select(vec4<bool>(true, false, var_0.c.x, var_2.c.b.d.x), vec4<bool>(false, false, true, var_0.c.x), var_2.b.e.x), !vec4<bool>(true, false, false, var_2.c.d.e.x), Struct_3(vec4<u32>(78217u, var_2.a.x, 29761u, 20330u), Struct_1(u_input.a.x, var_0.b, vec2<bool>(false, false), vec3<bool>(var_0.d.x, true, var_0.e.x), var_2.c.d.d.xz), Struct_2(512f, Struct_1(2147483647i, var_0.b, vec2<bool>(true, var_0.e.x), vec3<bool>(false, var_2.b.d.x, var_2.c.b.e.x), var_0.c), true, Struct_1(-1i, -37267i, var_2.c.b.d.zz, vec3<bool>(var_2.c.d.e.x, true, var_2.c.d.d.x), vec2<bool>(false, true))))), func_3(min(u_input.a.xx, vec2<i32>(1i, -23703i)), Struct_5(Struct_4(var_2.c.d, vec4<bool>(var_2.b.c.x, var_0.d.x, false, false), vec4<bool>(true, var_2.c.d.d.x, var_2.c.b.e.x, var_0.c.x), Struct_3(vec4<u32>(1u, var_2.a.x, var_4, 28434u), Struct_1(var_2.c.b.b, 1i, var_2.c.b.d.xy, var_2.c.d.d, var_0.d.yy), Struct_2(-1231f, var_2.c.b, var_0.d.x, Struct_1(-10038i, var_0.a, var_0.c, var_2.b.d, var_0.d.zx)))), u_input.c.xzx, -2147483647i, var_2.c, vec3<bool>(var_0.c.x, true, var_0.d.x)), var_4).zxx, -3005i, var_2.c, vec3<bool>(any(vec2<bool>(false, true)), false, false)), 1u).x >> (_wgslsmith_mult_u32(var_4, var_2.a.x) % 32u);
    var_1 = var_2.b.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.a.zxx, -vec2<i32>(-42402i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_2.b.a, 1i), vec3<i32>(var_2.b.a, -52055i, var_2.b.b)), u_input.a)));
}

