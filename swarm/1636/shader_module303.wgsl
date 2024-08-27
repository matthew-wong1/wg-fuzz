struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_3,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<i32>) -> f32 {
    let var_0 = -180f;
    let var_1 = ~_wgslsmith_mod_vec2_u32(arg_1.b.a, u_input.c);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1044f, -1794f)), -544f)), 319f);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + 807f), _wgslsmith_f_op_f32(floor(786f)))), -329f, _wgslsmith_f_op_f32(arg_1.d * var_2.x), var_2.x));
    let var_4 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-12045i, 30198i) << (~arg_1.c.a % vec2<u32>(32u)), vec2<i32>(arg_2.x, arg_2.x)), i32(-1i) * -u_input.b.x));
    return arg_1.e;
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<bool>) -> vec2<bool> {
    let var_0 = Struct_4(Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, u_input.b.x, -44356i, u_input.b.x), vec4<i32>(u_input.b.x, 6978i, 1i, u_input.b.x) | vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), Struct_3(u_input.e.xy, Struct_1(i32(-1i) * -1011i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(180f + -893f), _wgslsmith_f_op_f32(arg_1.x - -1000f))), Struct_2(Struct_1(-4527i)), Struct_1(u_input.b.x)), Struct_3(~u_input.c, Struct_1(-1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -369f, 832f))), Struct_2(Struct_1(31367i)), Struct_1(10716i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_1.x)))), arg_1.x);
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -u_input.b.wz, u_input.b.zx >> (~var_0.c.a % vec2<u32>(32u)))));
    var var_2 = any(select(!select(select(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), vec4<bool>(arg_2.x, true, true, false), vec4<bool>(true, true, arg_2.x, true)), !vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(false, false, arg_2.x, true))), !vec4<bool>(all(vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), true, any(arg_2.zx), true), vec4<bool>(arg_2.x, any(vec3<bool>(arg_2.x, true, true)), arg_2.x & false, -2394f < _wgslsmith_f_op_f32(-arg_1.x))));
    let var_3 = _wgslsmith_mod_u32(~arg_0, firstTrailingBit(var_0.b.a.x));
    var_2 = arg_2.x;
    return vec2<bool>(any(vec4<bool>(all(arg_2), arg_2.x, false, all(!vec4<bool>(true, true, false, arg_2.x)))), !((var_1.a.a | _wgslsmith_add_i32(u_input.b.x, 25026i)) <= 1i));
}

fn func_2() -> f32 {
    var var_0 = u_input.b.wzy;
    let var_1 = select(func_4(_wgslsmith_mult_u32(1u, u_input.c.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-853f + -438f) - _wgslsmith_f_op_f32(max(-2069f, -793f))), _wgslsmith_f_op_f32(func_3(Struct_1(2147483647i), Struct_4(Struct_1(-2369i), Struct_3(vec2<u32>(4294967295u, 65421u), Struct_1(-1i), vec3<f32>(-190f, 1000f, -613f), Struct_2(Struct_1(1i)), Struct_1(0i)), Struct_3(vec2<u32>(u_input.e.x, u_input.c.x), Struct_1(var_0.x), vec3<f32>(-176f, 910f, -190f), Struct_2(Struct_1(1i)), Struct_1(var_0.x)), -1628f, -1612f), ~vec3<i32>(-1i, -9730i, u_input.b.x))), 1691f), vec3<bool>(true, true, -1i != _wgslsmith_dot_vec4_i32(u_input.b, u_input.b))), select(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, false)), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true)), vec2<bool>(true, func_4(u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-134f, 289f, -192f))), vec3<bool>(all(vec4<bool>(true, false, false, true)), true, true)).x));
    var_0 = ~(-(~u_input.b.xzw) << (vec3<u32>(_wgslsmith_clamp_u32(u_input.e.x, u_input.a.x, 476u), u_input.e.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(2406u, u_input.d, 4294967295u, 4294967295u), vec4<u32>(4294967295u, u_input.d, 1u, 4294967295u))) % vec3<u32>(32u)));
    var_0 = abs(vec3<i32>(_wgslsmith_dot_vec3_i32(-select(vec3<i32>(-1i, 35395i, u_input.b.x), u_input.b.wwy, var_1.x), vec3<i32>(~(-1i), var_0.x, 8030i)), firstTrailingBit(55518i), u_input.b.x | u_input.b.x));
    var_0 = ~u_input.b.zyx ^ (u_input.b.yyw | u_input.b.xwy);
    return _wgslsmith_f_op_f32(620f - -157f);
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(1706f));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1997f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1000f) - _wgslsmith_f_op_f32(func_2())), -1885f)));
    var_0 = -1182f;
    let var_1 = Struct_2(Struct_1(u_input.b.x));
    var var_2 = var_1.a.a;
    return abs(var_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-func_1(), func_1(), u_input.b.x);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(663f * 736f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(select(4294967295u, 0u, true), _wgslsmith_mult_u32(0u, 4294967295u)) & ~(~u_input.e.x | _wgslsmith_mod_u32(182u, u_input.e.x)), var_1, 16215i, _wgslsmith_sub_vec3_i32(~(vec3<i32>(-2147483647i, 1i, u_input.b.x) >> (u_input.a.zyy % vec3<u32>(32u))), select(vec3<i32>(var_0.x, var_0.x, 1i), reverseBits(var_0), select(false, true, true))) << (u_input.e.xxw % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-232f, 474f))))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1 * 480f))), _wgslsmith_f_op_f32(262f + _wgslsmith_f_op_f32(trunc(640f))))));
}

