struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<Struct_3, 2>;

var<private> global2: f32 = -503f;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-463f + -326f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-527f))))));
    global0 = array<Struct_2, 23>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -650f))), firstTrailingBit(min(~(-1i), u_input.c)) & (1i >> (0u % 32u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-525f, 1000f, 474f, -1929f) * vec4<f32>(875f, -1414f, -2368f, -540f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(584f, -1925f, 555f, 227f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(994f, 349f, -1395f, -2225f) - vec4<f32>(-3142f, 684f, 140f, 1589f))))))), ~(~(u_input.b ^ _wgslsmith_dot_vec4_u32(vec4<u32>(30382u, u_input.b, 18262u, u_input.b), vec4<u32>(1u, u_input.b, u_input.b, u_input.b)))));
    var var_2 = Struct_4(~min(~_wgslsmith_clamp_vec4_u32(vec4<u32>(34810u, 0u, u_input.b, u_input.b), vec4<u32>(1u, 6361u, 65706u, var_1.d), vec4<u32>(u_input.b, 4294967295u, var_1.d, var_1.d)), ~vec4<u32>(u_input.b, u_input.b, 93899u, 25056u)));
    var var_3 = Struct_1(680f, var_1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 399f, -242f, var_1.c.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-639f, var_1.c.x, 310f, -768f), var_1.c)), var_1.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2261f, var_1.c.x, 400f, var_1.c.x)))), 0u);
    return _wgslsmith_f_op_f32(max(var_1.a, -864f));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-507f, _wgslsmith_f_op_f32(min(-1449f, 229f)), 990f, -1000f) + _wgslsmith_div_vec4_f32(vec4<f32>(-123f, 1000f, 541f, 188f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(157f, -351f, -969f, 536f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-653f, 681f), -925f, _wgslsmith_f_op_f32(f32(-1f) * -727f), _wgslsmith_div_f32(691f, -485f)) * vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(1068f - 1255f), _wgslsmith_f_op_f32(max(270f, -1299f)), -751f))));
    global1 = array<Struct_3, 2>();
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_mult_u32((~arg_0.x | 1u) & _wgslsmith_mult_u32(~u_input.b, 1u), arg_0.x)), 23u)];
}

fn func_1() -> u32 {
    let var_0 = func_2(~select(vec4<u32>(~1u, u_input.b, ~u_input.b, countOneBits(43974u)), ~(vec4<u32>(75549u, 0u, 53908u, 1u) ^ vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)), false), -(-1i >> (u_input.b % 32u)));
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.a)))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.a * var_0.a.a), _wgslsmith_f_op_f32(var_0.a.a - 239f)), true, !(!(!all(vec4<bool>(true, true, false, false)))));
    let var_2 = Struct_3(~reverseBits(~(~vec4<u32>(4294967295u, u_input.b, var_0.a.d, var_0.a.d))), ~_wgslsmith_add_vec4_i32(vec4<i32>(1i, -43553i, 1i, var_0.a.b), ~vec4<i32>(var_0.a.b, 0i, 2147483647i, u_input.a.x)) | -(~(~vec4<i32>(u_input.a.x, -1i, 33238i, var_0.a.b))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(15422u, u_input.b)), _wgslsmith_add_vec2_u32(vec2<u32>(65865u, u_input.b) >> (vec2<u32>(57628u, 0u) % vec2<u32>(32u)), ~vec2<u32>(var_0.a.d, 4294967295u))) | ~4294967295u, vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -428f), 1000f, 554f));
    let var_3 = var_0;
    var_1 = select(vec3<bool>(all(select(vec2<bool>(var_1.x, var_1.x), !var_1.yx, var_0.a.b != u_input.a.x)), true, true), !vec3<bool>(true, all(vec3<bool>(true, var_1.x, true)), var_1.x), !(!(!(!vec3<bool>(var_1.x, true, var_1.x)))));
    return _wgslsmith_dot_vec3_u32(var_2.a.yww, ~var_2.a.yxz) ^ var_3.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 2>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, u_input.b) | abs(4294967295u), func_1() | u_input.b)), u_input.b), 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(~max(abs(vec3<u32>(var_0.c, 79762u, 70215u)), vec3<u32>(u_input.b, 4294967295u, var_0.a.x) << (var_0.a.wyx % vec3<u32>(32u))) >> (abs(~(~var_0.a.yzz)) % vec3<u32>(32u)));
}

