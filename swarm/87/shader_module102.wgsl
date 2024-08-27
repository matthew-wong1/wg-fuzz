struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(784f, -473f, true)))), -1097f) - vec2<f32>(_wgslsmith_f_op_f32(ceil(-503f)), -566f)), 73190u);
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1026f, -1000f, -1154f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x) * vec3<f32>(2939f, 750f, -1000f)))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1705f), _wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(914f, var_0.a.x, 1640f)), vec3<f32>(864f, 972f, -320f), true)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, -1052f, 255f), vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)))))));
    var var_2 = false;
    let var_3 = select(vec2<bool>(true, true), !(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))), !vec2<bool>(false, -1i <= u_input.a));
    let var_4 = true;
    return u_input.c;
}

fn func_2() -> bool {
    var var_0 = Struct_2(Struct_1(38099i >> (~firstTrailingBit(u_input.b.x) % 32u), !vec3<bool>(true, true, all(vec3<bool>(true, true, true))), 5636u), reverseBits(u_input.c));
    let var_1 = _wgslsmith_sub_i32(select(2147483647i, var_0.a.a, true), select(_wgslsmith_dot_vec2_i32(u_input.d.yz, max(~vec2<i32>(32217i, 23314i), u_input.d.yx)), var_0.a.a, var_0.a.b.x));
    var var_2 = ~countOneBits(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(38819u, 30407u, 0u, u_input.b.x)), reverseBits(vec4<u32>(0u, 10081u, u_input.b.x, var_0.a.c))) ^ _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0.a.c, 42674u, var_0.a.c), vec4<u32>(var_0.a.c, var_0.a.c, 21700u, 4294967295u)), ~vec4<u32>(var_0.a.c, 0u, 66383u, 4294967295u)));
    var_2 = vec4<u32>(72648u, _wgslsmith_div_u32(~(~58124u), 1u), 8660u, var_2.x);
    var_0 = Struct_2(var_0.a, _wgslsmith_div_i32(func_3(), ~12322i));
    return all(vec2<bool>(4294967295u <= var_0.a.c, !var_0.a.b.x | true)) != all(vec4<bool>(var_0.a.b.x, true, false, all(vec2<bool>(false, var_0.a.b.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32) -> f32 {
    let var_0 = Struct_1(countOneBits(firstLeadingBit(max(u_input.d.x, arg_0.a))), vec3<bool>(func_2(), false, false), min(~(~58592u), _wgslsmith_mod_u32(u_input.b.x, arg_2)));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-437f, arg_1.x)))) - _wgslsmith_f_op_vec2_f32(-arg_1.xw)) * arg_1.wz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1.x)), 744f)), arg_0.b.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(min(-264f, 660f)), arg_1.x, _wgslsmith_f_op_f32(-1032f - -1043f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, 1061f, arg_0.b.x))))))));
    var var_3 = var_2.x;
    let var_4 = ~(~_wgslsmith_add_vec4_u32(firstTrailingBit(~vec4<u32>(4294967295u, 1u, 3093u, u_input.b.x)), vec4<u32>(16589u, u_input.b.x, var_0.c, 0u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(29288u, 0u, 47585u, u_input.b.x), vec4<u32>(arg_2, u_input.b.x, arg_0.c, 44762u), vec4<u32>(4294967295u, u_input.b.x, 0u, 7299u))));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1580f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(357f + 1000f)))) + -301f);
    let var_1 = !(!all(vec4<bool>(true, true, true, true)));
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_1(-8771i, vec3<bool>(var_1, var_1, true), 4294967295u), vec4<f32>(-1321f, -562f, -337f, -365f), 83853u)), -1114f))) == _wgslsmith_f_op_f32(f32(-1f) * -701f), !(!any(!vec3<bool>(var_1, false, var_1))), !(!var_1) | var_1, any(select(!vec4<bool>(false, true, false, var_1), !vec4<bool>(false, var_1, var_1, var_1), select(vec4<bool>(var_1, var_1, var_1, var_1), select(vec4<bool>(var_1, false, true, false), vec4<bool>(true, var_1, var_1, var_1), false), vec4<bool>(var_1, false, false, true)))));
    var var_3 = Struct_1(_wgslsmith_clamp_i32(u_input.a, 14150i, reverseBits(u_input.a ^ -1i)), !(!(!vec3<bool>(var_1, var_1, false))), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(~u_input.b.x, 5057u), u_input.b.x));
    var var_4 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.d, u_input.d)), -4256i), var_3.a, -select(1i, _wgslsmith_mod_i32(50481i, var_3.a), !var_1)), var_3.b, 0u);
    var_4 = Struct_1(-var_4.a << (abs(~(~var_3.c)) % 32u), select(!var_2.xww, !vec3<bool>(true, var_1, var_2.x), vec3<bool>(false, !(var_4.b.x || true), select(false & var_1, u_input.b.x >= u_input.b.x, var_4.a == u_input.c))), var_4.c);
    let var_5 = -_wgslsmith_add_i32(_wgslsmith_add_i32(-58025i << (~var_4.c % 32u), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.d.x, var_3.a), vec3<i32>(-1i, var_3.a, -14756i)))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 0i, ~var_4.a), _wgslsmith_div_vec3_i32(vec3<i32>(-62911i, 0i, 2147483647i), min(u_input.d, u_input.d))));
    var var_6 = ~(~min(abs(~u_input.d), _wgslsmith_mult_vec3_i32(u_input.d & u_input.d, vec3<i32>(var_4.a, -1i, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(countOneBits(-1i), -var_5), _wgslsmith_dot_vec3_i32(min(u_input.d, vec3<i32>(var_5, 1i, 2147483647i)), u_input.d)), u_input.d.zx, vec2<i32>(var_3.a, var_6.x)), abs(~_wgslsmith_sub_vec2_u32(abs(u_input.b), vec2<u32>(46072u, u_input.b.x) ^ vec2<u32>(4294967295u, 36130u))), 0u, _wgslsmith_clamp_vec3_i32(vec3<i32>(abs(-var_3.a), firstLeadingBit(-27408i), _wgslsmith_sub_i32(var_6.x, reverseBits(-45144i))), select(vec3<i32>(var_5, var_3.a, 0i) & firstLeadingBit(u_input.d), u_input.d & vec3<i32>(u_input.d.x, 72467i, -7098i), !var_2.xxw), _wgslsmith_sub_vec3_i32(abs(min(u_input.d, u_input.d)), vec3<i32>(2147483647i, var_4.a, 2147483647i))));
}

