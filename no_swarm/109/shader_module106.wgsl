struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1) -> i32 {
    return countOneBits(arg_2.b | -1i);
}

fn func_2() -> f32 {
    var var_0 = Struct_2(_wgslsmith_mult_i32(-(-u_input.b.x ^ u_input.c.x), ~2147483647i), Struct_1(false, -u_input.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1091f)))), vec4<i32>(15005i, func_3(any(vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), Struct_1(true, u_input.c.x, _wgslsmith_f_op_f32(-266f - -1211f))), ~firstTrailingBit(-13584i >> (u_input.a.x % 32u)), -1i), any(vec2<bool>(select(true, 1i > u_input.c.x, true), (20503u > u_input.a.x) || all(vec2<bool>(true, false)))), Struct_1(true, u_input.c.x, -779f));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1620f, var_0.e.c), vec2<f32>(var_0.e.c, var_0.b.c))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(207f, var_0.b.c), vec2<f32>(var_0.e.c, var_0.e.c), var_0.b.a))), vec2<f32>(var_0.b.c, _wgslsmith_f_op_f32(265f * var_0.b.c)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.c, -216f)), vec2<f32>(_wgslsmith_f_op_f32(var_0.b.c + -928f), -576f), vec2<bool>(all(vec3<bool>(var_0.e.a, var_0.b.a, var_0.e.a)), var_0.b.a))))));
    var var_2 = Struct_1(!(!any(select(vec4<bool>(var_0.b.a, var_0.d, var_0.b.a, true), vec4<bool>(var_0.d, var_0.d, var_0.b.a, var_0.b.a), vec4<bool>(var_0.e.a, var_0.e.a, var_0.e.a, var_0.e.a)))), firstTrailingBit(1i) << (4294967295u % 32u), -825f);
    let var_3 = vec4<u32>(_wgslsmith_sub_u32(max((u_input.a.x ^ 25626u) ^ (u_input.a.x | u_input.a.x), u_input.a.x), ~0u), select(reverseBits(_wgslsmith_mult_u32(u_input.a.x, ~26920u)), _wgslsmith_add_u32(4294967295u, u_input.a.x), false), 19620u, 1u);
    var var_4 = max(~vec2<u32>(23222u, u_input.a.x) & countOneBits(u_input.a), var_3.ww);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1165f, var_1.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(u_input.b.x, Struct_1(false, _wgslsmith_sub_i32(2147483647i, ~u_input.c.x), _wgslsmith_f_op_f32(func_2())), u_input.c, all(vec3<bool>(false, 0u > u_input.a.x, false)), Struct_1(true, -44104i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1664f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-919f, var_0.b.c) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.e.c, 116f), vec2<f32>(var_0.b.c, -100f)))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(var_0.b.c, var_0.b.c)), _wgslsmith_f_op_f32(floor(1000f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.c, var_0.e.c) + vec2<f32>(var_0.e.c, var_0.e.c)) - vec2<f32>(var_0.b.c, var_0.b.c)))));
    var var_2 = any(vec4<bool>(_wgslsmith_sub_i32(-1i, 12533i) > var_0.c.x, var_0.b.a == var_0.e.a, (u_input.c.x | u_input.c.x) < firstTrailingBit(-2147483647i), var_0.d)) && true;
    let var_3 = _wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(-(~u_input.c.yzw), u_input.c.wzw & countOneBits(vec3<i32>(14182i, u_input.b.x, var_0.b.b))), -abs(var_0.b.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 1i, -67806i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b.b, 32251i, var_0.a), min(vec3<i32>(var_0.b.b, var_0.e.b, -1i), var_0.c.xwz)))));
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-950f, -882f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(2382f, 649f, false))))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    var var_2 = _wgslsmith_f_op_f32(max(1337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x)))));
    var var_3 = u_input.c.zzy;
    let var_4 = Struct_2(-37364i, func_1(), ~u_input.c, var_0, func_1());
    var var_5 = var_4.e.a;
    var_5 = !(!(func_3(false, vec4<bool>(var_0, var_0, var_4.b.a, false), func_1()) >= -1i));
    let var_6 = _wgslsmith_f_op_f32(-301f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), var_4.b.c)));
    let var_7 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(0u, -(~1i), -500f);
}

