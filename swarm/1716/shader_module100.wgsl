struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<f32>) -> vec4<bool> {
    var var_0 = true;
    var_0 = select(!any(vec4<bool>(true, true, true, true)), true, true);
    let var_1 = Struct_1(~(~1u), 1i, vec4<u32>(0u, 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 4294967295u, u_input.a.x, 88117u), vec4<u32>(u_input.e, u_input.b, 44964u, 4294967295u)), ~vec4<u32>(u_input.e, u_input.b, 52185u, 26708u)) << (u_input.a.x % 32u), 24168u));
    var_0 = false;
    var var_2 = _wgslsmith_add_u32(u_input.e, u_input.a.x);
    return select(vec4<bool>(true, false, any(vec3<bool>(true, true, true)), (_wgslsmith_f_op_f32(1263f * -273f) != _wgslsmith_f_op_f32(-arg_0.x)) || false), select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, any(vec4<bool>(true, true, true, true))), !vec4<bool>(true, 4294967295u < var_1.a, any(vec3<bool>(true, false, true)), true), vec4<bool>(true, true, true, true)), all(select(vec4<bool>(any(vec2<bool>(true, true)), u_input.b > u_input.b, any(vec3<bool>(true, true, true)), any(vec4<bool>(false, true, false, false))), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true), true)));
}

fn func_2() -> vec3<f32> {
    var var_0 = vec4<bool>(false, false || (any(vec3<bool>(true, true, true)) && true), true, any(vec4<bool>(true, all(vec2<bool>(false, true)) & false, true, all(vec3<bool>(true, true, true)))));
    var_0 = vec4<bool>(all(var_0.zx), all(vec2<bool>(false || (var_0.x || true), true)), any(select(select(vec4<bool>(var_0.x, var_0.x, false, false), !vec4<bool>(false, true, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, false, var_0.x, true)), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, false, false, var_0.x)), !func_3(vec3<f32>(1000f, 135f, -1000f)))), var_0.x);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -492f)), -952f, _wgslsmith_f_op_f32(f32(-1f) * -992f)) * vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -422f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(461f)))), -104f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool) -> vec4<f32> {
    let var_0 = vec4<bool>(all(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0, arg_0, vec3<bool>(false, true, true)))))), arg_1, true, _wgslsmith_f_op_f32(f32(-1f) * -2921f) <= _wgslsmith_f_op_f32(select(-537f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_1)));
    var var_1 = vec3<u32>(firstTrailingBit(max(48462u, 0u)), countOneBits(~(~_wgslsmith_mod_u32(u_input.e, u_input.a.x))), ~min(0u, 9112u));
    var_1 = firstTrailingBit(abs(~vec3<u32>(~u_input.a.x, _wgslsmith_clamp_u32(u_input.b, 0u, 57166u), reverseBits(4294967295u))));
    var var_2 = 0i;
    var var_3 = var_0.x;
    return vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1400f))))))), _wgslsmith_f_op_f32(-1f), arg_0.x, _wgslsmith_f_op_f32(-100f * _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), -1201f, true)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())), select(!(true | (u_input.d.x != -10706i)), false, true | all(vec2<bool>(false, true)))));
    var var_1 = Struct_1(firstLeadingBit(arg_2.x), _wgslsmith_div_i32(countOneBits(-(-2147483647i & arg_1.b)), -arg_1.b), ~_wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, 79601u, arg_2.x, 0u)), arg_2));
    var_1 = arg_1;
    var var_2 = Struct_1(arg_3, 4789i, ~(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 103964u, 4294967295u, 0u), arg_2)) | ~firstTrailingBit(arg_2)));
    var_2 = Struct_1(1u << (~u_input.a.x % 32u), -19948i, _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~var_1.c, vec4<u32>(91837u, var_1.a, 19205u, var_1.a)) & arg_2, _wgslsmith_clamp_vec4_u32(max(~arg_1.c, ~vec4<u32>(arg_1.a, 1u, arg_3, var_2.a)), ~vec4<u32>(43279u, 0u, arg_2.x, 4294967295u), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.c.ywx, vec3<u32>(arg_3, 4294967295u, var_1.a)), arg_3, u_input.a.x, firstTrailingBit(81638u)))));
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~u_input.e, _wgslsmith_clamp_i32(~_wgslsmith_clamp_i32(u_input.d.x, firstLeadingBit(u_input.c.x), _wgslsmith_mod_i32(u_input.d.x, 2203i)), 1i, -59685i), ~(~vec4<u32>(~u_input.b, ~0u, u_input.b, ~4294967295u)));
    let var_1 = Struct_1(min(~(1u & u_input.b) & _wgslsmith_div_u32(abs(4294967295u), func_1(vec3<f32>(-232f, -352f, 787f), var_0, var_0.c, 77752u)), var_0.c.x), ~_wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b, var_0.b, -45237i, u_input.c.x), vec4<i32>(0i, 2147483647i, u_input.c.x, var_0.b), vec4<i32>(-5298i, var_0.b, var_0.b, u_input.c.x)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b, 6544i, var_0.b, 28825i), vec4<i32>(-2147483647i, var_0.b, var_0.b, -30120i), vec4<i32>(u_input.d.x, -2147483647i, var_0.b, u_input.c.x))), ~select(select(vec4<u32>(10552u, 73713u, u_input.e, 0u), vec4<u32>(44493u, 1478u, 2u, var_0.c.x), false), abs(abs(var_0.c)), true));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(-1701f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -719f) - _wgslsmith_f_op_f32(trunc(-674f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(731f + 611f))))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1250f)))), _wgslsmith_f_op_f32(1188f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1380f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 254f)))));
    let var_3 = abs(firstTrailingBit(vec2<i32>(abs(14190i), -(1i ^ var_1.b))));
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(692f, -613f), u_input.c >> (var_4.c.zw % vec2<u32>(32u)));
}

