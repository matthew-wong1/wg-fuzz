struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: vec4<i32>) -> vec2<bool> {
    let var_0 = Struct_2(vec3<u32>(~13029u, 1u, firstTrailingBit(u_input.c)), firstTrailingBit(~firstTrailingBit(vec4<u32>(35506u, u_input.b.x, u_input.c, 4294967295u))), Struct_1(48853u));
    let var_1 = vec4<bool>(false, (-48463i | -arg_1.x) == countOneBits(-14553i), true && all(!select(arg_0, vec2<bool>(arg_0.x, arg_0.x), arg_0)), arg_0.x);
    var var_2 = u_input.b.x;
    var var_3 = Struct_4(var_0, Struct_3(293f));
    var_2 = var_0.a.x;
    return !(!(!var_1.xz));
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<u32>(u_input.a, ~0u, (16064u & ~(33038u & u_input.a)) & ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(1u, 1u, u_input.c)), 11686u), u_input.b.x);
    var var_1 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-769f * _wgslsmith_f_op_f32(-729f - 981f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -575f))), _wgslsmith_f_op_f32(f32(-1f) * -929f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-724f * 302f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(408f, -982f, 1054f, 295f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(920f, -895f, 457f, -1801f) - vec4<f32>(-198f, -344f, 773f, 1203f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(662f, -263f, 996f, -1408f) - vec4<f32>(-678f, -615f, -223f, 213f)))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), func_3(vec2<bool>(false, false), vec4<i32>(-1i, 1i, 1i, -1i), vec4<i32>(0i, -1i, 31805i, 1i)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(427f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1402f) + -730f), _wgslsmith_f_op_f32(select(-907f, _wgslsmith_f_op_f32(abs(-1597f)), true)), -902f))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-725f)))))), var_2.x, var_2.x);
    var var_4 = Struct_2(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, ~u_input.b.x, u_input.a), ~u_input.b), vec4<u32>(4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_0, select(vec4<u32>(23351u, var_0.x, u_input.a, var_0.x), vec4<u32>(u_input.c, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, false, false))), max(~u_input.b.x, u_input.c << (var_0.x % 32u))), ~(~var_0.x), _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.b.yz, vec2<u32>(var_0.x, 1u)), var_0.yw ^ abs(vec2<u32>(38817u, 4294967295u)))), Struct_1(0u));
    return Struct_1(1u);
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> f32 {
    var var_0 = func_2();
    let var_1 = ~1u;
    let var_2 = 550f;
    var_0 = func_2();
    var_0 = func_2();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(851f * var_2));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(min(1i, ~(-2147483647i)), ~1i, ~_wgslsmith_sub_i32(-1i, 25849i), min(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -61326i), vec2<i32>(32209i, 3562i)), _wgslsmith_sub_i32(-6747i, 0i))), ~_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(-2147483647i, -30126i, 5154i, -66009i)), vec4<i32>(22525i, -2147483647i, 1i, 2147483647i) >> (vec4<u32>(u_input.b.x, 1u, 12574u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-793f, -541f, -158f), vec3<f32>(113f, 328f, 1067f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(-693f, 1182f), _wgslsmith_f_op_f32(floor(872f))))))));
}

