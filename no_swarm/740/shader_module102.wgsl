struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_2(~(-vec2<i32>(u_input.b, ~u_input.b)), Struct_1(_wgslsmith_f_op_f32(ceil(-943f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1124f)), _wgslsmith_f_op_f32(abs(176f))))), firstTrailingBit(min(~vec3<u32>(84594u, u_input.a, u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 26650u), ~vec3<u32>(1u, u_input.a, 0u)))));
    var var_1 = Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(var_0.a.x & _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, 0i, var_0.a.x), vec3<i32>(26110i, var_0.a.x, var_0.a.x)), abs(-u_input.b))), var_0.b, var_0.b, vec3<u32>(1u, 1u, firstTrailingBit(0u)));
    let var_2 = vec3<f32>(-1025f, _wgslsmith_f_op_f32(-397f - 596f), 124f);
    var var_3 = var_2.x;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(max(var_1.b.a, -411f)));
    return firstTrailingBit(~select(var_0.d, ~vec3<u32>(12410u, var_0.d.x, 0u), true));
}

fn func_2(arg_0: i32, arg_1: u32) -> vec2<u32> {
    let var_0 = Struct_1(-910f);
    var var_1 = Struct_2(vec2<i32>(_wgslsmith_mod_i32(-1i, abs(_wgslsmith_add_i32(-8564i, -84574i))), ~(-73690i)), Struct_1(-834f), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(915f, var_0.a)))))), func_3());
    let var_2 = var_1.b;
    let var_3 = _wgslsmith_f_op_f32(round(-1793f));
    var_1 = Struct_2(var_1.a, var_0, var_0, ~(~(~abs(vec3<u32>(u_input.a, 1u, arg_1)))));
    return _wgslsmith_mult_vec2_u32(~select(vec2<u32>(30081u, u_input.a) | vec2<u32>(1u, 1u), var_1.d.zx << (func_3().yy % vec2<u32>(32u)), !select(vec2<bool>(false, true), vec2<bool>(false, true), false)), ~_wgslsmith_mult_vec2_u32(~(~var_1.d.zy), ~(~var_1.d.zx)));
}

fn func_1(arg_0: u32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1038f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1241f * _wgslsmith_f_op_f32(1077f + 255f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(863f))))));
    let var_1 = func_2(u_input.b, u_input.c);
    var var_2 = _wgslsmith_mod_u32(reverseBits(_wgslsmith_div_u32(~var_1.x, var_1.x)), u_input.c) | abs(~arg_0);
    let var_3 = ~vec4<i32>(-12739i, 0i, -u_input.b, _wgslsmith_add_i32(select(-2147483647i, u_input.b, true) & u_input.b, reverseBits(-910i)));
    var var_4 = ~firstTrailingBit(var_1);
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))) - _wgslsmith_f_op_f32(var_0.x - 1718f)) - -249f), _wgslsmith_f_op_f32(f32(-1f) * -293f), var_0.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<f32>) -> f32 {
    let var_0 = -411f;
    var var_1 = _wgslsmith_f_op_f32(floor(-498f));
    let var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u), firstLeadingBit(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(u_input.c, u_input.a)), vec2<u32>(123463u, 73367u))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_vec3_f32(func_1(~(~4294967295u))).x, _wgslsmith_f_op_f32(floor(-853f)), _wgslsmith_f_op_vec3_f32(func_1(u_input.c)).x);
    let var_4 = var_2.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))) * _wgslsmith_f_op_f32(exp2(arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-1191f)), -224f, _wgslsmith_div_f32(-423f, -1969f)) - _wgslsmith_f_op_vec3_f32(func_1(u_input.a)))), Struct_3(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-120f)), -660f)))), Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_div_f32(355f, _wgslsmith_f_op_f32(153f + 988f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(154354u)).x)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(1249f)), _wgslsmith_f_op_f32(-1024f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2153f))), _wgslsmith_f_op_vec3_f32(func_1(583u)).x, -130f)));
    var var_1 = Struct_1(var_0);
    var var_2 = countOneBits(~_wgslsmith_div_i32(-1i, u_input.b) << (~(~1u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-select(-vec2<i32>(u_input.b, 4334i), vec2<i32>(u_input.b, -1i), false) | -_wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(8355i, 5841i)), -731f, ~(~_wgslsmith_add_vec4_u32(~vec4<u32>(1u, u_input.a, u_input.c, u_input.c), ~vec4<u32>(1u, 28816u, u_input.c, u_input.c))), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, 14864u), vec3<u32>(1u, u_input.a, 56864u)), vec3<u32>(u_input.c, u_input.c, 0u)), ~(~vec3<u32>(u_input.c, u_input.c, u_input.a))) >> (func_3() % vec3<u32>(32u)), -619f);
}

