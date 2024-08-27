struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    let var_0 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, !any(vec3<bool>(false, true, false)), false), vec4<bool>(true, true, true, true)));
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(firstTrailingBit(~u_input.a) & ~5289u, ~_wgslsmith_mod_u32(~23163u, ~u_input.a), u_input.a), ~(abs(vec3<u32>(u_input.c, u_input.a, 4294967295u)) << (vec3<u32>(u_input.c, u_input.c, 0u) % vec3<u32>(32u))));
    let var_2 = ~vec4<u32>(max(~u_input.a, var_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(29487u, firstTrailingBit(var_1.x)), vec2<u32>(32533u, 1u)), ~_wgslsmith_div_u32(~u_input.c, _wgslsmith_add_u32(u_input.c, var_1.x)), 4294967295u);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(select(-1000f, arg_0.x, true)))), -558f));
    let var_4 = select(vec2<bool>(var_0, true), vec2<bool>(false & var_0, var_0), var_0);
    return vec3<bool>(select(1i == u_input.b, !any(select(vec4<bool>(true, false, true, var_0), vec4<bool>(false, var_4.x, var_0, true), true)), false), var_3.x < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * var_3.x)))), false);
}

fn func_2() -> Struct_3 {
    var var_0 = vec4<bool>(false, true, -44159i < _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b, u_input.b) & ~(-56i), u_input.b | min(-21182i, u_input.b)), any(!func_3(vec2<f32>(889f, 1847f))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -415f), 1f, true)), ~vec4<u32>(1u, ~(~u_input.a), ~1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 19985u, u_input.c), vec3<u32>(u_input.c, 22920u, 41951u)) % 32u), 8460u));
    var var_2 = var_1.b.xyz;
    var_0 = !select(select(!(!vec4<bool>(true, false, var_0.x, true)), select(select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(true, false, var_0.x, true), var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), vec4<bool>(true, any(vec3<bool>(var_0.x, false, var_0.x)), false, false)), vec4<bool>(false, var_0.x, !all(vec4<bool>(var_0.x, false, false, false)), var_0.x), var_0.x);
    var_0 = vec4<bool>(_wgslsmith_f_op_f32(floor(var_1.a)) >= var_1.a, any(var_0.xw), var_0.x, !var_0.x);
    return Struct_3(-2116f, reverseBits(abs(_wgslsmith_sub_vec4_u32(~var_1.b, ~vec4<u32>(32322u, var_1.b.x, var_1.b.x, 0u)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(555f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))));
    var_1 = arg_1.yx;
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.x * arg_1.x), -2117f));
    var var_2 = vec2<i32>(firstTrailingBit(-4942i), -1i);
    return Struct_2(!(!any(vec4<bool>(false, true, true, true)) | all(vec2<bool>(true, false))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_4(~vec4<i32>(1665i, -55843i, u_input.b, u_input.b), vec4<f32>(-1091f, -1909f, 126f, 265f), Struct_1(u_input.c, -134f, false, vec2<f32>(436f, -1955f)), ~u_input.c), func_1(vec3<f32>(-479f, -212f, 948f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1643f, 1064f, 380f) - vec3<f32>(-318f, -967f, 1270f))))) + func_2().a), _wgslsmith_add_vec4_u32(~firstTrailingBit(~vec4<u32>(u_input.a, 3939u, 4294967295u, u_input.c)), ~reverseBits(abs(vec4<u32>(53477u, u_input.a, u_input.a, u_input.c)))));
    var_1 = Struct_3(var_1.a, ~var_1.b);
    var var_2 = var_1.b.wwz;
    var var_3 = Struct_4(countOneBits(~vec4<i32>(u_input.b, 25108i, u_input.b, ~u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -1158f, var_1.a, -1285f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(646f, var_1.a, var_1.a, var_1.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_1.a, -1283f, -545f) - vec4<f32>(524f, var_1.a, -448f, 1834f))))), Struct_1(countOneBits(~_wgslsmith_add_u32(var_1.b.x, var_2.x)), 925f, true, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.a) * vec2<f32>(1000f, -1198f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.a) * vec2<f32>(var_1.a, -919f)))))), ~_wgslsmith_add_u32(4294967295u, abs(4294967295u) | func_2().b.x));
    let var_4 = !select(vec4<bool>(func_3(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.a, 975f)))).x, true, false, !(false || var_3.c.c)), vec4<bool>(all(vec2<bool>(var_3.c.c, var_3.c.c)), !select(false, var_3.c.c, var_3.c.c), true, var_3.d <= 61333u), select(true, true, true));
    var var_5 = func_1(var_3.b.yxz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.b.zyx - var_3.b.zxz)));
    var_2 = max(var_1.b.xwy << (~var_1.b.yxz % vec3<u32>(32u)), vec3<u32>(firstLeadingBit(~7154u), var_3.d, 15241u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -128f) + _wgslsmith_f_op_f32(-1019f + 1000f)), max(var_3.a & (_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 1i, var_3.a.x, u_input.b), var_3.a) << (vec4<u32>(11933u, var_3.c.a, var_3.c.a, var_1.b.x) % vec4<u32>(32u))), max(vec4<i32>(1i & var_3.a.x, u_input.b, 0i | var_3.a.x, var_3.a.x << (var_3.d % 32u)), -countOneBits(var_3.a))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_3.b.www, vec3<f32>(-224f, 1000f, -1159f)), vec3<f32>(var_1.a, 822f, -929f), vec3<bool>(var_3.c.c, true, var_4.x))) * var_3.b.wzw))), min((var_1.b >> (var_1.b % vec4<u32>(32u))) | vec4<u32>(u_input.c, var_3.c.a, 43383u, 4294967295u), vec4<u32>(var_3.d & var_2.x, firstLeadingBit(u_input.c), abs(10941u), var_2.x)) & var_1.b);
}

