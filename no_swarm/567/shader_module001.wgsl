struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    global0 = array<vec4<bool>, 32>();
    global0 = array<vec4<bool>, 32>();
    var var_0 = vec3<i32>(firstTrailingBit(min(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -27181i, -15023i, u_input.d.x), vec4<i32>(u_input.b.x, u_input.e, u_input.c.x, 1i))), -min(38343i, 6891i))), i32(-1i) * -18984i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(min(u_input.d.zwy, ~vec3<i32>(1i, 60002i, -22590i)), vec3<i32>(-u_input.e, 1i, 43669i)), select(_wgslsmith_add_vec3_i32(~u_input.c.xyz, reverseBits(u_input.c.xzx)), u_input.d.yxz, select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))));
    global0 = array<vec4<bool>, 32>();
    global0 = array<vec4<bool>, 32>();
    return 12891u;
}

fn func_2() -> vec4<bool> {
    let var_0 = true;
    global0 = array<vec4<bool>, 32>();
    let var_1 = countOneBits(vec3<u32>(66489u, ~(~u_input.a.x), u_input.a.x) ^ (vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(116673u, 23017u)), u_input.a.x, u_input.a.x & 20849u) ^ ~reverseBits(u_input.a)));
    global0 = array<vec4<bool>, 32>();
    var var_2 = Struct_2(u_input.c.xy, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-922f, 778f, -1000f, 1000f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-484f, -406f, 436f, -1834f)))) * vec4<f32>(_wgslsmith_f_op_f32(floor(-445f)), -238f, _wgslsmith_f_op_f32(-1371f * -644f), _wgslsmith_f_op_f32(1567f * 624f))), global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec2<i32>(10858i, u_input.d.x), vec2<bool>(!(all(vec2<bool>(var_0, false)) != var_0), !all(vec3<bool>(var_0, true, true))), abs(u_input.e));
    return vec4<bool>((!(var_0 && var_2.b.b.x) | all(!vec4<bool>(true, var_0, var_2.b.b.x, var_2.b.b.x))) != (var_0 || !all(var_2.b.b)), select(true && var_0, any(!global0[_wgslsmith_index_u32(func_3(), 32u)]), false), false, !(!var_0));
}

fn func_1() -> f32 {
    let var_0 = func_2();
    var var_1 = var_0.yx;
    var_1 = var_0.yw;
    global0 = array<vec4<bool>, 32>();
    var_1 = var_0.zy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-211f * _wgslsmith_f_op_f32(step(745f, 1289f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -reverseBits(u_input.e);
    global0 = array<vec4<bool>, 32>();
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(234f)), _wgslsmith_f_op_f32(-1823f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-426f * 2054f) - _wgslsmith_f_op_f32(534f + -592f))), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -548f), _wgslsmith_f_op_f32(f32(-1f) * -848f))))));
    var var_2 = ~u_input.a.x;
    var_0 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u), u_input.c.xz);
}

