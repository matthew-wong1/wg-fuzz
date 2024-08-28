struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -528f))), _wgslsmith_f_op_f32(-arg_0)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0))))));
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1264f, var_1.x, -461f, 839f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-270f, 646f, var_1.x, var_1.x) * vec4<f32>(arg_0, var_1.x, var_1.x, -1116f))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, 899f) + vec4<f32>(395f, 1596f, arg_0, -768f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0, -394f, arg_0) - vec4<f32>(1354f, -1581f, arg_0, 512f)), vec4<f32>(1094f, 936f, arg_0, 2216f), select(vec4<bool>(false, true, var_0, true), vec4<bool>(arg_1, true, true, arg_1), var_0))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, var_1.x, -184f, -909f), vec4<f32>(-455f, 2200f, var_1.x, arg_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -874f, 266f, 159f)))))));
    let var_2 = Struct_1(~abs(u_input.c.x), abs(-(firstTrailingBit(u_input.b) >> (41468u % 32u))));
    return _wgslsmith_f_op_f32(sign(910f));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -528f) + -975f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(682f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-143f))) + _wgslsmith_f_op_f32(abs(613f))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(var_0.x, -775f)), _wgslsmith_f_op_f32(-1041f - var_0.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(119f, 1000f) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, 433f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-936f, 458f)))))));
    var var_1 = any(!vec3<bool>(u_input.c.x != ~u_input.c.x, true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), true))));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(886f, -782f)))) * var_0.x), -142f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1661f * -1031f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(floor(382f)), true)) * var_0.x), 1099f);
    var var_3 = Struct_5(Struct_1(_wgslsmith_mult_u32(3837u, ~firstTrailingBit(u_input.c.x)), min(_wgslsmith_mod_i32(abs(u_input.b), -arg_0), arg_0)), _wgslsmith_dot_vec4_u32(reverseBits(max(_wgslsmith_mod_vec4_u32(vec4<u32>(5605u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x)), ~vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 4294967295u))), countOneBits(vec4<u32>(u_input.c.x, u_input.c.x, ~14012u, u_input.c.x))), 51552u, min(u_input.c.x, 1u), select(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), any(vec2<bool>(false, true))), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)))));
    return Struct_2(Struct_1(u_input.c.x, 2147483647i));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_4) -> Struct_3 {
    let var_0 = arg_3;
    var var_1 = arg_3.a.a.b;
    var var_2 = arg_3;
    var var_3 = vec2<i32>(max(-firstTrailingBit(var_0.a.a.b), _wgslsmith_mod_i32(var_2.a.a.b, firstLeadingBit(i32(-1i) * -21777i))), _wgslsmith_dot_vec2_i32(select(vec2<i32>(_wgslsmith_add_i32(arg_0.b, -36303i), u_input.a), vec2<i32>(~(-1i), select(var_2.d, -31892i, false)), select(!vec2<bool>(var_0.e, var_2.e), select(vec2<bool>(false, false), vec2<bool>(var_0.e, false), vec2<bool>(true, var_2.e)), any(vec4<bool>(true, var_0.e, arg_3.e, true)))), _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.d, 2147483647i), vec2<i32>(var_0.d, -13023i)) & vec2<i32>(arg_3.d, _wgslsmith_add_i32(77549i, arg_3.a.a.b))));
    let var_4 = var_0.a;
    return Struct_3(func_2(-18414i), min(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, arg_3.d) & vec2<i32>(-2147483647i, u_input.a)), firstTrailingBit(~vec2<i32>(var_0.a.a.b, -33605i))) >> (~reverseBits(vec2<u32>(arg_3.b.x, 1u) >> (arg_3.b.xw % vec2<u32>(32u))) % vec2<u32>(32u)), var_2.b.wyx >> (select(var_2.b.zwz, vec3<u32>(~0u, var_2.a.a.a, _wgslsmith_sub_u32(arg_1, 1u)), any(select(vec4<bool>(var_0.e, var_2.e, false, false), vec4<bool>(false, arg_3.e, false, true), vec4<bool>(false, true, arg_3.e, arg_3.e)))) % vec3<u32>(32u)), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(~arg_0.a, 27251u, var_4.a.a >> (arg_1 % 32u), max(1u, arg_1))), vec4<u32>(arg_0.a, u_input.c.x >> (arg_0.a % 32u), ~17918u, ~arg_0.a) & max(vec4<u32>(var_2.a.a.a, 4729u, 14818u, 4294967295u), var_2.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.c, var_0.c, var_2.c), vec3<f32>(var_2.c, 436f, var_2.c)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, arg_3.c, var_2.c) * vec3<f32>(1987f, -694f, 925f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1118f, arg_3.c, 635f)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.c, -438f, -1603f))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = func_4(arg_1.a, _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_div_u32(~8608u, ~7040u)), u_input.c.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2246f, -465f)) * vec2<f32>(-1300f, -727f)) - vec2<f32>(875f, _wgslsmith_div_f32(385f, -610f))))), Struct_4(func_2(24915i), vec4<u32>(u_input.c.x, ~abs(arg_1.a.a), arg_1.a.a, _wgslsmith_mult_u32(abs(u_input.c.x), _wgslsmith_clamp_u32(arg_1.a.a, arg_1.a.a, u_input.c.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(1313f, true)))), _wgslsmith_dot_vec3_i32(max(min(vec3<i32>(33838i, 0i, 1i), vec3<i32>(arg_1.a.b, -24496i, arg_1.a.b)), countOneBits(vec3<i32>(u_input.b, 2147483647i, -2147483647i))), vec3<i32>(-arg_1.a.b, 19929i, _wgslsmith_div_i32(-1i, u_input.b))), false));
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(-14548i ^ arg_1.a.b), -max(var_0.b.x, 229i)) & ~vec2<i32>(_wgslsmith_mult_i32(-1i, arg_1.a.b), var_0.a.a.b >> (arg_1.a.a % 32u)), vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-18844i, arg_1.a.b, arg_1.a.b, 18795i), ~vec4<i32>(12024i, 1i, 22385i, 59928i)), -arg_1.a.b | firstTrailingBit(_wgslsmith_mult_i32(u_input.b, 352i))));
    var_1 = ~(~arg_1.a.b);
    let var_2 = min(_wgslsmith_mult_i32(-u_input.a, _wgslsmith_mod_i32(-var_0.a.a.b, ~_wgslsmith_add_i32(-74708i, 0i))), 1i);
    var_1 = var_2;
    return vec2<i32>(arg_1.a.b, min(1i, _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_div_i32(2147483647i, 1i)), arg_1.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -190f, -295f, -361f) + vec4<f32>(-1214f, 2128f, 1000f, 1568f)))))));
    var var_1 = func_1(vec4<bool>(any(vec3<bool>(true, false, false)), true, true, false), Struct_2(Struct_1(~0u, u_input.a))) >> (_wgslsmith_mod_vec2_u32(u_input.c.zx, vec2<u32>(4294967295u, _wgslsmith_mult_u32(u_input.c.x, 41018u)) >> (countOneBits(vec2<u32>(u_input.c.x, u_input.c.x) | u_input.c.yz) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_2 = select(u_input.c, u_input.c, !(!vec3<bool>(true, true, any(vec3<bool>(true, false, false)))));
    let var_3 = func_4(func_2(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-8992i, -24094i), func_1(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), true), func_2(u_input.a)).x)).a, _wgslsmith_dot_vec3_u32(vec3<u32>(~(13803u & var_2.x), ~var_2.x | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, 1u, u_input.c.x), vec4<u32>(0u, var_2.x, var_2.x, 0u)), var_2.x), select(vec3<u32>(_wgslsmith_sub_u32(var_2.x, 1u), _wgslsmith_mod_u32(4294967295u, 8883u), 1u), vec3<u32>(~var_2.x, ~0u, ~0u), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))), vec2<f32>(-822f, var_0.x), Struct_4(Struct_2(func_4(Struct_1(var_2.x, var_1.x), ~var_2.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), Struct_4(Struct_2(Struct_1(60192u, -29048i)), vec4<u32>(var_2.x, 8764u, var_2.x, var_2.x), -1000f, u_input.a, false)).a.a), vec4<u32>(~u_input.c.x << (u_input.c.x % 32u), 1u, ~var_2.x, 54800u), -1611f, var_1.x, true | all(vec3<bool>(false, false, true)))).a.a;
    let var_4 = Struct_4(func_4(Struct_1(var_3.a, ~var_1.x ^ 1i), _wgslsmith_add_u32(66505u, var_2.x >> (~66271u % 32u)), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(339f - var_0.x), true))), Struct_4(func_4(func_2(13933i).a, max(u_input.c.x, u_input.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), Struct_4(Struct_2(var_3), vec4<u32>(var_2.x, 78687u, 4294967295u, 0u), var_0.x, var_3.b, true)).a, firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 0u, 50454u, u_input.c.x), vec4<u32>(4294967295u, var_2.x, 39333u, 1u))), var_0.x, select(var_3.b << (0u % 32u), u_input.a, 2147483647i != var_3.b), true)).a, ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c.x, 1u), u_input.c.x | var_2.x), _wgslsmith_div_u32(~var_2.x, var_3.a), 1u, 38203u), _wgslsmith_f_op_f32(-var_0.x), func_2(countOneBits(_wgslsmith_add_i32(_wgslsmith_mod_i32(-6536i, u_input.a), abs(1i)))).a.b, all(vec2<bool>(true, true)));
    let var_5 = var_4.e;
    let var_6 = func_4(Struct_1(firstLeadingBit(~var_2.x), -(func_2(-71381i).a.b >> (var_2.x % 32u))), select(_wgslsmith_sub_u32(u_input.c.x, ~func_4(Struct_1(1u, 0i), u_input.c.x, var_0.ww, Struct_4(Struct_2(var_4.a.a), vec4<u32>(var_3.a, 24290u, 37548u, var_4.a.a.a), var_4.c, 1i, false)).d.x), abs(1u), false), var_0.ww, Struct_4(func_4(var_3, firstLeadingBit(22471u ^ var_2.x), vec2<f32>(297f, _wgslsmith_f_op_f32(f32(-1f) * -1952f)), var_4).a, vec4<u32>(41797u, ~max(var_2.x, 0u), ~89133u, countOneBits(57697u) << (abs(var_3.a) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -366f)), _wgslsmith_div_i32(var_4.d, _wgslsmith_mod_i32(firstTrailingBit(u_input.a), i32(-1i) * -26311i)), var_5));
    var var_7 = func_4(Struct_1(59271u, var_1.x), max(var_2.x << (1u % 32u), var_3.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, 1960f)), var_6.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))))), var_4);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, var_7.a.a.a, u_input.c.x) >> (vec3<u32>(u_input.c.x, 26972u, 311u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(~u_input.c, var_6.c)) >> (vec3<u32>(58507u, var_7.d.x, _wgslsmith_div_u32(80818u, var_7.c.x)) % vec3<u32>(32u)), 1u, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(min(-1i, -6200i), ~var_3.b, 0i & var_7.b.x, -1i), ~firstLeadingBit(vec4<i32>(var_7.b.x, -10463i, var_3.b, var_1.x))), ~(~vec4<i32>(1i, u_input.b, 3959i, 2147483647i))), min(vec3<i32>(~(~var_3.b), -reverseBits(18211i), -16873i), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_6.a.a.b, 21536i), vec3<i32>(var_7.b.x, -39174i, u_input.b)) & vec3<i32>(16368i, var_1.x, 2147483647i))), var_4.b.wy);
}

