struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    return ~abs(~u_input.b.x);
}

fn func_3() -> i32 {
    var var_0 = (~(~u_input.b.x << (u_input.b.x % 32u)) >= ~(max(u_input.b.x, 4294967295u) ^ _wgslsmith_clamp_u32(22545u, 0u, 23786u))) & !all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(1f * -1130f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(867f + -1031f), -2270f)))));
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(201f, -1141f)))))));
    let var_2 = u_input.b.x & 0u;
    var_1 = -871f;
    return u_input.c.x;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x * arg_0) + 322f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1088f, -308f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(arg_2.b, arg_2.b)), arg_2.b, select(false, arg_2.d, arg_2.d) & all(vec3<bool>(true, true, true))))), 70496i, !(!(!(true != arg_2.d))), vec3<i32>(-_wgslsmith_dot_vec4_i32(~u_input.c, _wgslsmith_sub_vec4_i32(u_input.d, u_input.d)), func_3(), min(-(~35784i), _wgslsmith_add_i32(arg_2.e.x, -8303i >> (u_input.b.x % 32u)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-390f, arg_0)) - arg_0) + _wgslsmith_f_op_f32(exp2(arg_2.a)))), var_0.b, _wgslsmith_mod_i32(arg_2.c, 2147483647i), any(select(!select(vec4<bool>(arg_2.d, false, false, var_0.d), vec4<bool>(arg_2.d, arg_2.d, arg_2.d, arg_2.d), vec4<bool>(false, var_0.d, false, true)), select(select(vec4<bool>(arg_2.d, false, var_0.d, false), vec4<bool>(true, true, arg_2.d, var_0.d), var_0.d), vec4<bool>(false, var_0.d, true, var_0.d), arg_2.d), select(all(vec3<bool>(true, true, false)), arg_2.d, true))), vec3<i32>(-1i, ~reverseBits(~(-27977i)), var_0.e.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1172f)) - 465f)));
    var_0 = arg_2;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_0.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(-1000f, arg_2.a)))))), i32(-1i) * -2147483647i, select(select(arg_2.d, (-407f <= var_0.b.x) && !var_0.d, arg_2.d), true, select(all(vec3<bool>(true, false, arg_2.d)), false, var_0.d)), max(select(arg_2.e, arg_2.e, max(arg_1, 1u) > ~1u), vec3<i32>(~(-u_input.c.x), _wgslsmith_add_i32(-48916i, u_input.a.x ^ 2147483647i), arg_2.e.x)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.a.x;
    let var_1 = vec4<bool>(false, 51102i > (2073i ^ u_input.a.x), !any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, false, false))), !all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -703f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1556f, -1265f))), var_0, var_1.x, vec3<i32>(1i << ((0u ^ u_input.b.x) % 32u), u_input.c.x, (u_input.d.x >> (14898u % 32u)) << (~u_input.b.x % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -1073f), _wgslsmith_mod_u32(~(~(~u_input.b.x)), 1u & _wgslsmith_add_u32(~u_input.b.x, func_1(u_input.d, Struct_1(-262f, vec2<f32>(820f, -641f), -73177i, var_1.x, u_input.d.yxy)))));
    var var_3 = Struct_1(-172f, var_2.a.b, var_0, var_2.a.d && true, var_2.a.e);
    var var_4 = -(~var_0);
    let var_5 = vec3<u32>(~max(u_input.b.x >> (u_input.b.x % 32u), u_input.b.x ^ u_input.b.x), u_input.b.x, ~4294967295u) | vec3<u32>(39365u, func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -528f), _wgslsmith_div_f32(var_2.a.a, -330f))), 1u, var_2.a), var_2.c);
    let var_6 = abs(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), ~countOneBits(_wgslsmith_mult_vec2_u32(var_5.xy, u_input.b.xy)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.b.x, var_2.a.a, 1199f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-926f, var_2.b, 1881f) * vec3<f32>(-1000f, -334f, var_3.b.x))) - vec3<f32>(-1143f, var_3.a, _wgslsmith_f_op_f32(var_2.b * -254f))))));
}

