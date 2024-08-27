struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: u32) -> bool {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-123f + arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -212f)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(arg_0.a, arg_0.a), arg_0.a)))));
    var var_2 = Struct_1(select(vec2<bool>(var_0, all(!vec4<bool>(var_0, false, var_0, false))), vec2<bool>(var_0, var_0), var_0), -vec3<i32>(firstLeadingBit(u_input.a) >> (u_input.d.x % 32u), -_wgslsmith_mod_i32(2147483647i, -36009i), 7762i), 1u, arg_2 >= countOneBits(~arg_2), !var_0);
    var_2 = Struct_1(select(vec2<bool>(select(true, var_2.a.x, !var_0), all(select(vec4<bool>(var_0, var_2.e, false, true), vec4<bool>(true, var_2.a.x, true, var_0), vec4<bool>(var_2.e, var_2.d, var_0, var_2.e)))), select(var_2.a, var_2.a, true), vec2<bool>(any(var_2.a), all(vec2<bool>(var_0, var_2.a.x)))), var_2.b, 51855u, _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(abs(var_1.x))) == var_1.x, var_0);
    let var_3 = _wgslsmith_sub_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.d.wx, select(u_input.b.xz, u_input.b.xz, vec2<bool>(true, var_0))), arg_2), u_input.d.zy);
    return select(true, _wgslsmith_f_op_f32(ceil(arg_0.a.x)) < _wgslsmith_f_op_f32(f32(-1f) * -646f), var_0);
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    var var_0 = !select(vec2<bool>(true, true), vec2<bool>(func_3(Struct_2(vec3<f32>(451f, arg_1, -110f)), -1i ^ u_input.a, _wgslsmith_dot_vec4_u32(u_input.d, arg_2)), true), (u_input.c.x ^ u_input.a) == ~2147483647i);
    var var_1 = u_input.c;
    let var_2 = firstLeadingBit(u_input.d.xy);
    let var_3 = firstLeadingBit(_wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 23420u), vec2<u32>(arg_2.x, 93102u)), u_input.b.xz) ^ select(vec2<u32>(4294967295u, 33861u), _wgslsmith_mod_vec2_u32(var_2, vec2<u32>(arg_2.x, u_input.d.x)), !select(vec2<bool>(var_0.x, false), vec2<bool>(true, true), vec2<bool>(false, false))));
    let var_4 = var_3.x;
    return 1u;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = -firstTrailingBit(-(vec4<i32>(u_input.c.x, u_input.a, 2147483647i, u_input.c.x) ^ -vec4<i32>(arg_2.b.x, arg_2.b.x, u_input.c.x, 12375i)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_0.a))) + arg_0.a))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>) -> StorageBuffer {
    var var_0 = u_input.c;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(arg_0.yxz), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d.x), vec2<u32>(4294967295u, u_input.d.x)), Struct_1(!vec2<bool>(arg_1.x, false), _wgslsmith_sub_vec3_i32(-u_input.c, ~u_input.c), func_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1272f, arg_0.x))), _wgslsmith_f_op_f32(step(395f, arg_0.x)), u_input.d), all(!vec2<bool>(arg_1.x, false)), func_3(Struct_2(arg_0.wwy), u_input.a, u_input.b.x)))));
    var var_2 = var_1;
    var_0 = max(-vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(48642i, var_0.x, 1i, var_0.x), vec4<i32>(var_0.x, u_input.a, var_0.x, 25368i)), ~u_input.c.x), _wgslsmith_mod_i32(u_input.a, var_0.x >> (37296u % 32u)), 0i), max(select(~(u_input.c ^ u_input.c), ~(-u_input.c), false), vec3<i32>(_wgslsmith_add_i32(1i, countOneBits(u_input.c.x)), u_input.c.x, -1i)));
    var_2 = var_1;
    return StorageBuffer(vec2<i32>(-(var_0.x & var_0.x), reverseBits(_wgslsmith_add_i32(min(11048i, 5110i), 13481i))), ~min(select(u_input.b.zz, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, 63714u), u_input.b.zx), arg_1.x), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(u_input.d.x, 22167u)), countOneBits(vec2<u32>(u_input.d.x, 17634u)))), vec3<i32>(_wgslsmith_sub_i32(1i, -var_0.x), -62i, ~0i), _wgslsmith_add_i32(i32(-1i) * -1i, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec4<u32>(u_input.d.x, 4294967295u, ~(4294967295u << (_wgslsmith_mult_u32(u_input.b.x, 42229u) % 32u)), ~17082u));
    let var_1 = vec3<bool>(true, any(vec2<bool>(true, true)), true);
    var var_2 = ~u_input.d.wz;
    var_2 = ~var_0.zx | ~firstTrailingBit(countOneBits(vec2<u32>(30992u, var_0.x)));
    var_2 = abs(abs(var_0.wy));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1531f, 418f, -917f, 181f), vec4<f32>(285f, -1691f, 1095f, 269f))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(951f, -478f, -344f, -1000f)))), !(!vec2<bool>(any(vec3<bool>(var_1.x, var_1.x, false)), any(vec3<bool>(false, false, var_1.x)))));
}

