struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: i32, arg_3: vec3<bool>) -> vec2<i32> {
    global0 = array<vec3<i32>, 5>();
    let var_0 = vec3<f32>(-1356f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-521f)))), -1425f), _wgslsmith_f_op_f32(ceil(1395f)));
    global0 = array<vec3<i32>, 5>();
    let var_1 = ~(~u_input.d.x >> (~_wgslsmith_mod_u32(u_input.a.x, 48890u) % 32u));
    return vec2<i32>(-(~arg_1.x), -u_input.e);
}

fn func_4(arg_0: vec2<i32>) -> vec4<i32> {
    global0 = array<vec3<i32>, 5>();
    global0 = array<vec3<i32>, 5>();
    global0 = array<vec3<i32>, 5>();
    return u_input.b;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    let var_0 = arg_2;
    return 4294967295u;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec3<i32>(u_input.b.x, u_input.e, u_input.e), ~u_input.c.x, -2147483647i);
    let var_1 = Struct_1(reverseBits(vec3<i32>(_wgslsmith_mod_i32(-266i, var_0.c) | -1i, abs(abs(13835i)), 0i)), func_5(func_4(func_3(vec3<u32>(u_input.d.x, var_0.b, 69439u), u_input.b, var_0.c, vec3<bool>(true, false, true)) >> ((u_input.c.zy & u_input.c.xy) % vec2<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(-748f + 1f), -1921f), Struct_1(_wgslsmith_sub_vec3_i32(select(var_0.a, vec3<i32>(10754i, var_0.c, -1i), vec3<bool>(false, false, true)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, -9453i, u_input.e), vec3<i32>(u_input.b.x, u_input.e, 2147483647i))), ~(~var_0.b), countOneBits(var_0.a.x)), vec2<f32>(303f, -599f)), firstTrailingBit(reverseBits((-1i << (u_input.d.x % 32u)) >> (countOneBits(var_0.b) % 32u))));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-342f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1075f * 659f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2665f + -1710f))))));
    var var_3 = 1508f;
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -142f))));
    return var_1;
}

fn func_1(arg_0: i32, arg_1: u32) -> u32 {
    global0 = array<vec3<i32>, 5>();
    var var_0 = func_2();
    var var_1 = func_2();
    let var_2 = Struct_1(firstLeadingBit(-func_2().a), _wgslsmith_clamp_u32(~(~(~var_1.b)), select(_wgslsmith_add_u32(arg_1, 4369u) & countOneBits(arg_1), firstLeadingBit(var_1.b), true), _wgslsmith_mult_u32(~(1u << (u_input.a.x % 32u)), ~(~10717u))), var_0.a.x);
    global0 = array<vec3<i32>, 5>();
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.b.yww, 0u, _wgslsmith_add_i32(-2147483647i, u_input.e) >> (u_input.c.x % 32u));
    let var_1 = vec3<bool>(!(all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))) && any(vec2<bool>(true, true))), false, true);
    var var_2 = _wgslsmith_dot_vec3_u32(~u_input.d.zyz, _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~u_input.c, vec3<u32>(_wgslsmith_add_u32(42071u, var_0.b), _wgslsmith_clamp_u32(11700u, 4294967295u, u_input.c.x), _wgslsmith_mult_u32(8449u, u_input.d.x))), vec3<u32>(firstLeadingBit(reverseBits(1u)), u_input.d.x, 21117u), ~(~vec3<u32>(u_input.a.x, var_0.b, var_0.b))));
    var var_3 = var_0.b;
    let var_4 = var_1.x;
    var var_5 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.d.x, func_1(4902i, 4294967295u), var_0.b), vec3<u32>(_wgslsmith_mod_u32(var_0.b, 70451u), ~1u, u_input.a.x | var_0.b)) & u_input.a.xyy;
    let var_6 = max(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-1i, ~u_input.e)), ~(~max(vec2<i32>(u_input.e, var_0.c), vec2<i32>(-72047i, 12413i)))), -(~(u_input.b.x ^ 15932i)));
    let var_7 = func_2();
    var var_8 = Struct_1(min(u_input.b.xww, vec3<i32>(var_7.a.x, 23218i >> (firstTrailingBit(u_input.d.x) % 32u), -2147483647i)), 1u, var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-644f, func_4(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -var_7.a.yy, ~select(vec2<i32>(2256i, 1i), vec2<i32>(var_0.c, var_7.a.x), false))).zwz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-520f, -1000f, -133f, 1400f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1041f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) - _wgslsmith_f_op_f32(abs(624f))))), -firstLeadingBit(var_6));
}

