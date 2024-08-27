struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(599f - arg_0.b.a.x)) * arg_0.c.d.a.x), arg_0.b.a.x, arg_0.b.a.x));
    var_0 = _wgslsmith_f_op_vec3_f32(-arg_0.c.a.a);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1179f * -872f) - var_0.x), -409f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1005f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x - arg_0.b.a.x))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c.d.a) + vec3<f32>(_wgslsmith_f_op_f32(-181f - arg_0.b.a.x), 466f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.c.a.a.x - _wgslsmith_div_f32(-359f, -2216f))))));
    let var_1 = u_input.c.yy;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(arg_0.c.c.a.x - -799f))) - -1134f)));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(159f + _wgslsmith_f_op_f32(-arg_0.x)), 1441f)) != _wgslsmith_f_op_f32(floor(arg_0.x));
    var var_1 = max(_wgslsmith_add_vec2_i32(-vec2<i32>(-1i, u_input.b & -18460i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(u_input.a, -32215i) ^ vec2<i32>(u_input.a, u_input.b)) ^ (vec2<i32>(u_input.b, 2147483647i) & -vec2<i32>(-35157i, u_input.a))), reverseBits(vec2<i32>(-u_input.b, select(u_input.a, u_input.b, false)) & (vec2<i32>(-55938i, u_input.a) >> (select(vec2<u32>(6201u, u_input.c.x), vec2<u32>(40374u, u_input.c.x), true) % vec2<u32>(32u)))));
    var_1 = vec2<i32>(-1i) * -firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 2147483647i) << (vec2<u32>(u_input.c.x, 4294967295u) % vec2<u32>(32u)), -vec2<i32>(var_1.x, -1i)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.xw * vec2<f32>(arg_0.x, -423f)), _wgslsmith_div_vec2_f32(arg_0.zz, vec2<f32>(arg_0.x, arg_0.x))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-321f, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_div_f32(arg_0.x, var_2.x))) - vec2<f32>(var_2.x, var_2.x)));
    return arg_0.x;
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_4(u_input.a, Struct_3(vec2<f32>(-235f, 412f)), Struct_2(Struct_1(vec3<f32>(239f, -1000f, 1000f), true, u_input.b), Struct_1(vec3<f32>(-1243f, -834f, -1479f), true, 7341i), Struct_1(vec3<f32>(-230f, -103f, 1116f), false, arg_0.x), Struct_1(vec3<f32>(-424f, 1599f, -1501f), false, arg_0.x)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1870f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(527f + -563f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f), _wgslsmith_f_op_f32(-2362f + 1433f)), _wgslsmith_f_op_f32(1466f - _wgslsmith_f_op_f32(func_3(vec4<f32>(-1611f, 549f, 153f, 1800f))))), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))));
    var var_1 = _wgslsmith_sub_vec2_u32(select(vec2<u32>(~69852u, _wgslsmith_mult_u32(select(4294967295u, 36368u, false), ~4294967295u)), firstTrailingBit(u_input.c.zw), vec2<bool>(true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false)))), abs(u_input.c.wy));
    var var_2 = var_0.x;
    var_1 = (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 49796u), ~(vec2<u32>(var_1.x, u_input.c.x) & u_input.c.zw)) ^ vec2<u32>(0u, 0u)) ^ _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(5668u, 1u) >> (vec2<u32>(u_input.c.x, 1u) % vec2<u32>(32u))), ~reverseBits(u_input.c.ww));
    let var_3 = -arg_0.x << (3445u % 32u);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<u32>(~(~53250u), func_1(~vec3<i32>(u_input.b, -1i, -2147483647i)), ~4294967295u ^ ~u_input.c.x, 50494u)), u_input.b);
}

