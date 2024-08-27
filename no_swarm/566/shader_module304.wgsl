struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_div_i32(u_input.d, u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1216f))))), ~(~_wgslsmith_div_vec2_u32(reverseBits(u_input.c.wz), u_input.c.ww ^ vec2<u32>(u_input.a, 4294967295u))));
    var var_1 = Struct_2(vec4<bool>(true, true, any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(false, false, true), false)), select(select(all(vec2<bool>(false, true)), -65297i < u_input.b.x, true), any(vec3<bool>(true, true, false)), true)));
    var_1 = Struct_2(select(var_1.a, !var_1.a, !var_1.a.x));
    var_0 = Struct_1(_wgslsmith_div_i32(-1i, max(_wgslsmith_add_i32(41532i ^ var_0.a, i32(-1i) * -13552i), _wgslsmith_div_i32(~1i, u_input.b.x))), arg_0.x, (~abs(vec2<u32>(18677u, u_input.a)) ^ var_0.c) >> (vec2<u32>(u_input.a, 75141u) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1072f * _wgslsmith_f_op_f32(-var_0.b)));
    return countOneBits(var_0.a);
}

fn func_2() -> i32 {
    let var_0 = !(!(!(-1554f < _wgslsmith_f_op_f32(floor(549f)))));
    let var_1 = Struct_1((_wgslsmith_dot_vec3_i32(u_input.b.yxy | u_input.b.xxz, firstLeadingBit(u_input.b.wxx)) | func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1501f, 1068f)))) ^ u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_f32(floor(-1000f))), vec2<u32>(select(~_wgslsmith_mod_u32(u_input.a, 1u), max(u_input.a, u_input.a), !all(vec3<bool>(var_0, var_0, var_0))), 4878u));
    var var_2 = u_input.b;
    var_2 = -_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a, countOneBits(min(2147483647i, var_2.x)), 0i, _wgslsmith_add_i32(var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.a, -19206i, 32760i), u_input.b))), -(u_input.b & ~vec4<i32>(var_2.x, 29383i, var_2.x, 55064i)));
    let var_3 = Struct_2(vec4<bool>(var_0, var_0, all(!(!vec3<bool>(var_0, var_0, var_0))), true));
    return -2147483647i;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.d, u_input.b.x) & _wgslsmith_mult_i32(u_input.b.x, 5254i), 3353i, i32(-1i) * -1i, -u_input.d & ~u_input.d) >> (~(~(~u_input.c)) % vec4<u32>(32u)), u_input.b & vec4<i32>(_wgslsmith_div_i32(func_2(), ~44968i), -1i, ~(u_input.d ^ -1i), 16197i));
    var var_1 = all(vec2<bool>(true, true));
    var var_2 = select(select(vec2<bool>(true, u_input.b.x < (u_input.d & u_input.d)), vec2<bool>(true, true), !(true | (var_0 >= u_input.b.x))), !select(vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(false, true))), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(false, true), vec2<bool>(true, true))), !select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), vec2<bool>(true, true)));
    var_2 = vec2<bool>(select(true, var_2.x, true), var_2.x & select(var_2.x, !var_2.x, true));
    var var_3 = u_input.c & u_input.c;
    return Struct_2(!select(select(!vec4<bool>(var_2.x, false, var_2.x, true), select(vec4<bool>(true, true, false, false), vec4<bool>(var_2.x, var_2.x, true, true), var_2.x), !vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), select(select(vec4<bool>(var_2.x, var_2.x, true, true), vec4<bool>(var_2.x, true, true, var_2.x), var_2.x), !vec4<bool>(var_2.x, var_2.x, var_2.x, false), select(vec4<bool>(var_2.x, false, var_2.x, false), vec4<bool>(var_2.x, var_2.x, var_2.x, false), true)), vec4<bool>(true, true, var_2.x, 4294967295u == var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -471f) + _wgslsmith_f_op_f32(-933f * -529f)) + 1589f))));
    var var_1 = func_1();
    var var_2 = u_input.c.zwz << (vec3<u32>(u_input.c.x, min(7878u >> (~u_input.a % 32u), 1u), u_input.c.x) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~select(abs(vec2<i32>(1i, 2147483647i)), u_input.b.zy, !(298f > var_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1606f, -1799f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -767f, var_0) + vec3<f32>(var_0, var_0, var_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1245f, 492f, var_0))))), select(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 19363u, u_input.c.x, u_input.c.x), select(u_input.c, u_input.c, false))), u_input.c, var_1.a));
}

