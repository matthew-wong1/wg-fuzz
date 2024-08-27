struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -299f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2310f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(176f)))))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1787f * 1097f) + 480f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(false, vec2<i32>(u_input.a, -11622i))))), _wgslsmith_f_op_f32(round(-100f)))));
    let var_1 = Struct_1(false, countOneBits(abs(vec2<i32>(1i, 1i))) ^ ~vec2<i32>(u_input.a, u_input.a));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(212f - _wgslsmith_f_op_f32(select(968f, 1000f, var_1.a))), 397f, 1959f) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_1(true, var_1.b))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1340f * 589f), _wgslsmith_f_op_f32(-235f - var_0.x), var_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -684f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, 1025f, 896f), vec3<f32>(-1411f, -1197f, 504f))))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-480f, var_0.x, var_0.x) + vec3<f32>(-973f, 1594f, var_0.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(1275f, var_0.x, 425f), vec3<f32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(var_0.x, -1000f, var_0.x)))), true))));
    var var_2 = var_1;
    var var_3 = reverseBits(vec2<i32>(-(i32(-1i) * -2147483647i) & -firstLeadingBit(var_2.b.x), select(_wgslsmith_add_i32(_wgslsmith_clamp_i32(13665i, -55522i, var_1.b.x), abs(32908i)), var_2.b.x, all(select(vec4<bool>(var_2.a, var_2.a, false, var_2.a), vec4<bool>(false, var_2.a, false, var_2.a), var_1.a)))));
    return var_1;
}

fn func_1() -> vec3<bool> {
    let var_0 = -2147483647i;
    let var_1 = func_2();
    var var_2 = func_2();
    var_2 = Struct_1(true, ~var_2.b);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-205f + 162f))), _wgslsmith_f_op_f32(1f + 1f), 1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1587f + _wgslsmith_f_op_f32(ceil(959f))), _wgslsmith_f_op_f32(abs(-594f))))));
    return vec3<bool>(true, true, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 6143u;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1047f))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-296f, 1114f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-806f, 262f) * vec2<f32>(var_1.x, -1894f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(281f, -912f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -603f))), any(func_1()))));
    var var_2 = ~var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(795f, -2790f, true))), -1216f, 1585f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, u_input.b), vec3<u32>(u_input.b, var_0, 88973u), vec3<u32>(u_input.b, 32755u, u_input.b))), ~vec3<u32>(var_0, u_input.b, u_input.c.x)), min(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(22065u, var_0, 4294967295u), vec3<u32>(var_0, 0u, 4481u), u_input.c), u_input.c), max(~vec3<u32>(var_0, 39958u, u_input.c.x), reverseBits(u_input.c)))), min(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 1i), -vec3<i32>(u_input.a, 63928i, u_input.a)) ^ countOneBits(vec3<i32>(u_input.a, u_input.a, -3480i)), -(vec3<i32>(-1i, u_input.a, u_input.a) << (u_input.c % vec3<u32>(32u)))), _wgslsmith_div_u32(~(~(~u_input.c.x)), 44u));
}

