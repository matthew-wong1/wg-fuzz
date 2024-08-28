struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> vec3<i32> {
    return u_input.b.yzw;
}

fn func_1() -> Struct_1 {
    var var_0 = select(vec3<bool>(true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)) & !any(vec4<bool>(true, true, true, true)), true), vec3<bool>(~_wgslsmith_mod_i32(u_input.b.x, -42843i) >= 1i, false, false), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(65459i, 27433i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x), -1i)), ~_wgslsmith_sub_i32(min(u_input.b.x, u_input.b.x), countOneBits(u_input.b.x))) & _wgslsmith_mod_vec2_i32(abs(u_input.b.wz), vec2<i32>(u_input.b.x, u_input.b.x));
    let var_2 = abs(vec2<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(func_2(), u_input.b.wxx))) >> (vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(1u, ~u_input.a.x)), ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.c.x, 2048u, 1u), u_input.c.x)) % vec2<u32>(32u));
    var_0 = !(!(!select(!vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(true, true, var_0.x), vec3<bool>(true, false, false), vec3<bool>(true, var_0.x, var_0.x)), var_2.x > var_2.x)));
    var_0 = !(!(!vec3<bool>(!var_0.x, true, var_0.x)));
    return Struct_1(abs(reverseBits(reverseBits(-2147483647i)) << (~_wgslsmith_clamp_u32(u_input.c.x, u_input.a.x, u_input.a.x) % 32u)), var_0.x);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(447f))))))));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-399f, -934f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1879f - -1721f), _wgslsmith_f_op_f32(812f + -265f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(722f - 891f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(848f + -363f), 861f) + 1159f))));
    var var_1 = -select(-(i32(-1i) * -1i), ~2147483647i, all(vec3<bool>(true, true, true)));
    var var_2 = Struct_4(max(vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(select(u_input.b.zz, u_input.b.zy, false), u_input.b.yx), 40657i), vec3<i32>(_wgslsmith_mult_i32(-53021i, u_input.b.x), _wgslsmith_add_i32(-u_input.b.x, u_input.b.x), _wgslsmith_clamp_i32(2147483647i, u_input.b.x, -2147483647i | u_input.b.x))));
    var_0 = -116f;
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-893f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * -1195f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(611f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!((1i << (u_input.a.x % 32u)) > (abs(1i) >> (u_input.c.x % 32u))), Struct_1(u_input.b.x, !select(u_input.a.x >= u_input.a.x, any(vec2<bool>(false, false)), true)), func_1(), vec2<bool>(!any(vec3<bool>(false, false, false)) | false, select(true, true, true)));
    var var_1 = _wgslsmith_div_vec3_u32(reverseBits(u_input.a), (u_input.a >> ((u_input.c.zzw | vec3<u32>(u_input.c.x, 0u, 41915u)) % vec3<u32>(32u))) >> (firstTrailingBit(vec3<u32>(~u_input.a.x, _wgslsmith_mult_u32(u_input.c.x, 24327u), ~u_input.c.x)) % vec3<u32>(32u)));
    let var_2 = func_1();
    var_0 = Struct_2(false, func_1(), var_2, !vec2<bool>(false, var_0.c.b));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(658f, -996f) + -762f) - _wgslsmith_f_op_f32(floor(564f)))), ~_wgslsmith_clamp_u32(0u, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, var_1.x), u_input.c.zyx)), 88204u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1052f + 371f)), -1235f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(350f * -1000f), _wgslsmith_div_f32(-476f, 175f))))));
}

