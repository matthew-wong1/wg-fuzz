struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-543f, 551f, true)) * 339f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-195f + 270f)))));
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    return ~(~(~(~vec4<u32>(u_input.b.x, 59773u, 1u, 0u))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(508f, 720f, arg_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.a, 173f, arg_0.a)))))))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1714f - 1428f) * arg_0.a), _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-1454f, arg_0.a, 329f), vec3<f32>(arg_0.a, arg_0.a, -1569f)), vec3<f32>(480f, 916f, arg_0.a))))), false)));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 979f))), 2334f, _wgslsmith_f_op_f32(min(arg_0.a, var_0.x))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-303f, -571f, -779f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 755f, -1377f)))))));
    let var_1 = ~vec2<i32>(-1i, 16576i);
    global0 = array<i32, 29>();
    let var_2 = _wgslsmith_mult_u32(firstLeadingBit(~firstLeadingBit(arg_0.c.d.x)) ^ 0u, ~(~u_input.b.x));
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b.x, ~_wgslsmith_mod_u32(~var_2, 4294967295u)) << (u_input.b.x % 32u), 29u)];
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: i32) -> vec3<u32> {
    var var_0 = 1i;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1230f, 167f, arg_1)))) + -1781f), Struct_1(vec2<bool>(arg_1, all(vec2<bool>(true, true))), 4294967295u, false, u_input.b.xy), Struct_1(vec2<bool>(arg_1, false), 26974u, (_wgslsmith_f_op_f32(ceil(1355f)) > _wgslsmith_f_op_f32(abs(-229f))) || all(select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, false, arg_1), vec3<bool>(false, arg_1, true))), ~select(~vec2<u32>(1u, u_input.b.x), abs(arg_0.yy), vec2<bool>(false, arg_1))), any(select(!select(vec3<bool>(arg_1, true, true), vec3<bool>(true, true, arg_1), arg_1), vec3<bool>(true, true, true), !(!vec3<bool>(false, arg_1, arg_1)))), all(select(vec4<bool>(true, arg_1, true, 59326i > u_input.c.x), !select(vec4<bool>(arg_1, false, true, false), vec4<bool>(true, false, arg_1, false), arg_1), vec4<bool>(arg_1 != true, arg_0.x != 1u, global0[_wgslsmith_index_u32(105799u, 29u)] != 2147483647i, arg_1))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_1.a)))))) * var_1.a), var_1.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_1.a)))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(-var_2.x), var_1.b, var_1.b, true, var_1.b.a.x != var_1.d);
    return func_2().yxw;
}

fn func_1() -> StorageBuffer {
    var var_0 = u_input.b;
    var_0 = ~func_4(func_2(), !(func_3(Struct_2(-138f, Struct_1(vec2<bool>(false, false), var_0.x, false, u_input.b.xz), Struct_1(vec2<bool>(true, false), 69021u, true, u_input.b.yx), true, false)) == _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.a.x, -2147483647i), vec4<i32>(23841i, 2147483647i, -26988i, u_input.c.x))), -global0[_wgslsmith_index_u32(~4294967295u, 29u)]);
    global0 = array<i32, 29>();
    var_0 = vec3<u32>(_wgslsmith_div_u32(func_2().x, 0u), var_0.x, u_input.b.x);
    var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(35642u, var_0.x, firstLeadingBit(70481u)), ~reverseBits(_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, var_0.x, 78457u) | vec3<u32>(u_input.b.x, 38344u, var_0.x))));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1616f - -1528f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-617f)))))), u_input.b.x, -2044f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(578f)), _wgslsmith_div_f32(358f, 1838f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(857f, -1703f))) - vec2<f32>(-869f, -1263f)))), firstLeadingBit(abs(vec4<i32>(-11323i, global0[_wgslsmith_index_u32(17544u & u_input.b.x, 29u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(21863u, 4294967295u), 29u)], u_input.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~96u;
    let x = u_input.a;
    s_output = func_1();
}

