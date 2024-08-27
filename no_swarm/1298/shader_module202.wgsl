struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_4(u_input.c);
    let var_1 = Struct_3(_wgslsmith_div_u32(0u, ~(~26037u)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.b.ww, min(u_input.b.zw, ~u_input.b.zy)), u_input.c << ((arg_2.x >> (19304u % 32u)) % 32u), -var_0.a), arg_0.c, arg_0.d);
    var var_2 = var_0;
    var var_3 = arg_1;
    var var_4 = u_input.b >> (~(~arg_2) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(-822f * -1169f);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-694f * 366f), _wgslsmith_f_op_f32(-1252f - -300f), _wgslsmith_f_op_f32(f32(-1f) * -278f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(17204u, 1i, u_input.d, Struct_2(vec4<bool>(true, true, false, true), Struct_1(true))), Struct_2(vec4<bool>(false, true, true, false), Struct_1(false)), vec4<u32>(0u, u_input.a.x, u_input.a.x, 22404u) | vec4<u32>(u_input.d.x, 0u, u_input.d.x, 0u), Struct_2(vec4<bool>(true, true, false, false), Struct_1(true)))))));
    let var_1 = Struct_1(all(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(false, false, true, false))));
    let var_2 = u_input.d.x;
    var var_3 = var_1;
    var_3 = var_1;
    return var_1;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>) -> vec4<u32> {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(-2147483647i, u_input.c), 62036i);
    var var_1 = -_wgslsmith_mult_vec3_i32((u_input.b.ywz << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.a.x), vec3<u32>(0u, u_input.a.x, 4294967295u)) % vec3<u32>(32u))) << (abs(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 78176u, u_input.d.x), vec3<u32>(37007u, u_input.d.x, u_input.a.x))) % vec3<u32>(32u)), abs(~(-arg_2.wyz)));
    let var_2 = ~firstTrailingBit(u_input.d.x);
    var_0 = ~2147483647i | (15201i >> (var_2 % 32u));
    var_1 = ~vec3<i32>(max(arg_2.x, arg_2.x), var_1.x, _wgslsmith_add_i32(reverseBits(var_1.x) >> ((var_2 ^ var_2) % 32u), var_1.x));
    return ~countOneBits(~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_2, 19058u, 43378u, u_input.a.x), vec4<u32>(0u, 1u, var_2, 0u))));
}

fn func_1(arg_0: u32) -> Struct_4 {
    var var_0 = ~(countOneBits(vec4<u32>(~u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(22351u, 4294967295u)), 1u, u_input.d.x)) & vec4<u32>(1u, ~1u, ~(~16728u), ~(~26499u)));
    var_0 = func_4(-902f, func_2(), max(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.c, u_input.b.x, 35545i), vec4<i32>(u_input.c, 1i, u_input.c, u_input.b.x), u_input.b)), u_input.b)) << (vec4<u32>(4294967295u, arg_0, arg_0, _wgslsmith_div_u32(var_0.x, ~1u)) % vec4<u32>(32u));
    var_0 = ~(countOneBits(~(~vec4<u32>(4294967295u, u_input.d.x, 42294u, u_input.a.x))) << (_wgslsmith_mod_vec4_u32(func_4(_wgslsmith_f_op_f32(sign(-448f)), Struct_1(true), vec4<i32>(u_input.c, u_input.b.x, 55803i, u_input.c)), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(0u, var_0.x, 32591u, var_0.x)), vec4<u32>(arg_0, 36784u, 206u, 1u))) % vec4<u32>(32u)));
    var_0 = min(vec4<u32>(4294967295u, ~5346u, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(u_input.d >> (u_input.a % vec2<u32>(32u)), var_0.ww)), arg_0), vec4<u32>(52652u << (1u % 32u), countOneBits(81053u), var_0.x, ~firstLeadingBit(2951u)));
    var_0 = ~firstLeadingBit(~reverseBits(vec4<u32>(arg_0, 1u, 72814u, 23713u)) >> (((vec4<u32>(0u, arg_0, arg_0, u_input.d.x) ^ vec4<u32>(43233u, arg_0, u_input.a.x, u_input.d.x)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, arg_0, arg_0), vec4<u32>(arg_0, 0u, u_input.d.x, 15349u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return Struct_4(abs(0i >> (var_0.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(20614u);
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-392f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_3(4294967295u, var_0.a, vec2<u32>(u_input.d.x, u_input.a.x), Struct_2(vec4<bool>(false, true, true, true), Struct_1(true))), Struct_2(vec4<bool>(false, true, true, true), Struct_1(true)), vec4<u32>(u_input.d.x, 0u, 32475u, u_input.a.x), Struct_2(vec4<bool>(false, false, false, true), Struct_1(false)))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(995f + 705f) * 796f)))))));
    var_2 = 246f;
    var_2 = _wgslsmith_f_op_f32(func_3(Struct_3(20134u >> (~u_input.d.x % 32u), u_input.b.x, u_input.a, Struct_2(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), true), func_2())), Struct_2(vec4<bool>(true, true, true, true), Struct_1(true)), vec4<u32>(_wgslsmith_clamp_u32(~u_input.d.x & ~0u, abs(~8404u), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(1u, 1u))), u_input.a.x, 0u, ~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.d.x, u_input.d.x)) | u_input.d.x), Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), func_2())));
    var var_3 = vec4<u32>((~u_input.d.x >> (0u % 32u)) & 112002u, 67702u, 9804u, 13200u);
    let var_4 = 45485u;
    let var_5 = true;
    var_1 = _wgslsmith_mod_u32(_wgslsmith_add_u32(select(u_input.d.x, countOneBits(var_3.x), true), 22969u), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1331f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1583f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-145f, _wgslsmith_f_op_f32(f32(-1f) * -1257f), _wgslsmith_f_op_f32(sign(1279f)), _wgslsmith_f_op_f32(trunc(-220f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1812f, -114f, 738f, 810f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-777f, 822f, -2338f, 151f)))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(-630f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(446f)) * _wgslsmith_f_op_f32(abs(-1000f))), 490f, -1557f)));
}

