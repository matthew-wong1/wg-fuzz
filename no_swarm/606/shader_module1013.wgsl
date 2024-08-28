struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    let var_0 = u_input.c;
    var var_1 = Struct_1(u_input.b.x, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1051f, -468f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(739f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1235f, 810f, -1609f, -1994f))) * vec4<f32>(-147f, 674f, _wgslsmith_f_op_f32(sign(806f)), -1202f))), false | all(vec3<bool>(true, true, true)), firstLeadingBit(i32(-1i) * -1i));
    var_1 = Struct_1(54562u, any(select(vec2<bool>(var_1.e < 9285i, true), select(vec2<bool>(true, true), !vec2<bool>(var_1.b, false), var_1.b | var_1.d), select(select(vec2<bool>(true, var_1.b), vec2<bool>(var_1.b, var_1.b), var_1.d), !vec2<bool>(var_1.b, true), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-418f, var_1.c.x, var_1.c.x, 1311f)) - _wgslsmith_f_op_vec4_f32(sign(var_1.c))))), var_1.b, ~min(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_1.e, u_input.d), _wgslsmith_add_i32(u_input.d, 16263i)), var_1.e));
    let var_2 = !any(select(select(vec2<bool>(var_1.b, false), vec2<bool>(true, false), any(vec2<bool>(var_1.b, var_1.d))), vec2<bool>(false, true), true));
    var_1 = Struct_1(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(1u, 62595u, u_input.b.x))), vec3<u32>(48819u, ~49947u, u_input.c.x)), (any(vec2<bool>(true, var_2)) & true) | any(select(!vec4<bool>(false, false, var_2, false), select(vec4<bool>(var_1.d, var_2, false, true), vec4<bool>(false, false, true, true), var_2), select(vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(false, false, false, false), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(var_1.c)), _wgslsmith_f_op_vec4_f32(ceil(var_1.c)))))), (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -729f), _wgslsmith_f_op_f32(-327f + 339f))) >= _wgslsmith_f_op_f32(-1392f - -587f)) | true, -(~var_1.e));
    return _wgslsmith_div_i32(0i, u_input.a) ^ (_wgslsmith_mult_i32(min(_wgslsmith_dot_vec3_i32(vec3<i32>(13099i, u_input.d, 0i), vec3<i32>(var_1.e, 2147483647i, var_1.e)), -10919i), min(_wgslsmith_mod_i32(0i, u_input.d), abs(u_input.a))) ^ u_input.e);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(1u, true, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -553f), _wgslsmith_f_op_f32(abs(185f))), _wgslsmith_f_op_f32(-359f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-669f + 370f), _wgslsmith_f_op_f32(abs(-186f))))), _wgslsmith_f_op_f32(select(-956f, 1000f, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(310f)) + _wgslsmith_f_op_f32(f32(-1f) * -541f)) * _wgslsmith_f_op_f32(f32(-1f) * -551f))), all(vec4<bool>(false, true, any(vec2<bool>(false, true)), !select(false, true, false))), -(_wgslsmith_mult_i32(firstTrailingBit(1i), 25242i) ^ func_3()));
    let var_1 = var_0.c.x;
    var var_2 = 630f;
    var var_3 = vec3<u32>(1u, ~(~_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c.x, 68422u), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c))), ~(~max(var_0.a ^ u_input.b.x, ~u_input.c.x)));
    var var_4 = var_0.c.x;
    return -33817i;
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = func_2();
    var_0 = _wgslsmith_add_i32(1i, -_wgslsmith_clamp_i32(~u_input.e, u_input.d, u_input.d)) ^ _wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 36076i, u_input.a, u_input.a) | vec4<i32>(u_input.d, u_input.e, 38136i, u_input.d), _wgslsmith_sub_vec4_i32(vec4<i32>(-54288i, u_input.d, 1i, u_input.a), vec4<i32>(39773i, u_input.a, 2147483647i, 32518i))) << (_wgslsmith_div_u32(arg_0, u_input.c.x) % 32u));
    var_0 = u_input.d & _wgslsmith_mult_i32(reverseBits(-1i >> (arg_0 % 32u)), u_input.a);
    let var_1 = vec2<i32>(-1i) * -(select(vec2<i32>(u_input.e, u_input.e) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)), -vec2<i32>(26751i, 1i), vec2<bool>(true, true)) ^ vec2<i32>(u_input.a, -u_input.d));
    let var_2 = u_input.c.x;
    return Struct_3(!(!(!all(vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -216f);
    var var_1 = vec2<i32>(0i, ~_wgslsmith_clamp_i32(i32(-1i) * -u_input.e, 12216i, reverseBits(u_input.d)));
    var var_2 = -890f;
    var var_3 = func_1(~(~_wgslsmith_add_u32(~4294967295u, 24103u)));
    var_3 = func_1(_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.c), max(u_input.c, select(vec3<u32>(0u, u_input.b.x, 49312u), u_input.c, vec3<bool>(var_3.a, var_3.a, var_3.a)))) ^ _wgslsmith_clamp_u32(u_input.c.x, u_input.b.x, u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(6518u, u_input.c.x, 12910u, u_input.b.x)) & _wgslsmith_mult_vec4_u32(vec4<u32>(21478u, u_input.c.x, u_input.b.x, 1u), vec4<u32>(67274u, u_input.c.x, 47324u, 0u)), firstLeadingBit(~vec4<u32>(u_input.b.x, 13087u, 63660u, 0u))), vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.c.xx, ~vec2<u32>(45609u, 12065u)), 66300u, 1u, u_input.b.x)), select(u_input.c.zy, u_input.c.yx, vec2<bool>(true, all(vec3<bool>(var_3.a, var_3.a, var_3.a)))), i32(-1i) * -countOneBits(~var_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-2302f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-716f, -891f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1151f)))))), _wgslsmith_f_op_f32(-237f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-562f)) - _wgslsmith_f_op_f32(-1847f * _wgslsmith_div_f32(-1080f, 775f)))));
}

