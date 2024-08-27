struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = -abs(abs(_wgslsmith_mod_i32(abs(-25348i), abs(1i))));
    var var_1 = max(u_input.a.wy, min(~u_input.a.xw, _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 34705u), vec2<u32>(u_input.a.x, 59022u)), vec2<u32>(min(19451u, 40074u), u_input.a.x))));
    var_1 = ~min(min(countOneBits(vec2<u32>(var_1.x, 45059u)), _wgslsmith_add_vec2_u32(~vec2<u32>(0u, u_input.a.x), ~vec2<u32>(0u, u_input.b.x))), u_input.b.yy);
    return (1i & max(select(27090i, _wgslsmith_mod_i32(1i, 64814i), true), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_0, -36510i, var_0, var_0)), max(vec4<i32>(15498i, -2147483647i, -2147483647i, var_0), vec4<i32>(var_0, 0i, var_0, 1i))))) ^ ~(-6505i);
}

fn func_2() -> bool {
    let var_0 = vec4<i32>(19897i, ~22188i, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, firstLeadingBit(-26187i)), min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-47747i, -10889i), vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, -5247i)), vec2<i32>(1i, 1i)))), func_3(true, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1731f * 1253f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-662f * -846f))), Struct_1(-664f, vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2462f, 1095f, -1822f))))));
    var var_1 = (-78817i | (reverseBits(2147483647i ^ var_0.x) << (firstTrailingBit(u_input.a.x) % 32u))) <= (-_wgslsmith_mult_i32(13581i, _wgslsmith_sub_i32(15686i, var_0.x)) | var_0.x);
    var_1 = all(vec2<bool>(all(vec2<bool>(true, true)), true));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1702f + 1211f), _wgslsmith_f_op_f32(sign(-856f))))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(337f, -343f, 818f), vec3<f32>(484f, 128f, 102f))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1987f - 1153f) * _wgslsmith_div_f32(746f, -976f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-745f * 1000f), _wgslsmith_div_f32(690f, 1475f)))), select(vec3<bool>(true, all(vec2<bool>(true, false)), u_input.b.x <= u_input.b.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), vec3<f32>(-1003f, _wgslsmith_f_op_f32(min(-717f, 1f)), _wgslsmith_f_op_f32(-1358f - _wgslsmith_f_op_f32(f32(-1f) * -3159f)))));
    var_2 = Struct_2(Struct_1(-1641f, var_2.b.b, _wgslsmith_f_op_vec3_f32(var_2.b.c + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-408f, var_2.a.c.x, -1000f)))), Struct_1(-571f, var_2.a.b, var_2.b.c));
    return true;
}

fn func_1() -> f32 {
    var var_0 = select(!vec4<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), func_2(), any(vec4<bool>(true, false, true, false)) & all(vec3<bool>(false, true, false)), !any(vec3<bool>(false, true, true))), !vec4<bool>(select(true, false, true), true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), false), vec4<bool>(true, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x) > 31329u, true, (all(vec3<bool>(true, true, true)) && true) && any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false))));
    let var_1 = ~(select(~vec4<i32>(-1i, -1i, -1i, 0i), vec4<i32>(0i, 12454i, -26731i, 21233i), var_0.x && var_0.x) | -vec4<i32>(1i, 46668i, 2147483647i, 2147483647i)) & _wgslsmith_add_vec4_i32(-vec4<i32>(1i, 1i, i32(-1i) * -74627i, -2147483647i), ~firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(19126i, 1i, -42822i, -27942i), vec4<i32>(-1i, 24717i, 1i, 11076i), vec4<i32>(-11132i, -1i, -27375i, -14023i))));
    var var_2 = Struct_3(~u_input.a.x >> ((86225u >> (u_input.b.x % 32u)) % 32u), Struct_1(-511f, vec3<bool>(59946u > _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1208f, -449f, -520f))), vec3<f32>(-553f, 1271f, -174f), select(var_0.wxy, vec3<bool>(false, true, true), vec3<bool>(false, true, var_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2577f, -1054f, 154f) + vec3<f32>(1327f, 1047f, -491f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1056f, -771f, 509f), vec3<f32>(199f, 312f, -1584f))))))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1148f)) - _wgslsmith_f_op_f32(1000f * -492f)))), !select(select(var_0.zyy, var_0.xww, vec3<bool>(var_0.x, true, var_0.x)), vec3<bool>(var_0.x, false, false), vec3<bool>(true, true, false)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-215f, 563f, -338f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1110f, 876f, 630f) * vec3<f32>(-1086f, 819f, 2192f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-805f, -250f, 473f))))))));
    let var_3 = Struct_3(39040u, Struct_1(_wgslsmith_f_op_f32(var_2.b.a * var_2.b.a), select(vec3<bool>(false, func_2(), true || var_2.c.b.x), var_0.xyx, !var_2.c.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c.c)), vec3<f32>(-1723f, -869f, var_2.c.a))), var_2.c);
    let var_4 = var_3.c.c.x;
    return var_3.c.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f)))));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(-var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(17735u, u_input.b.x), u_input.a.zy), u_input.b.yy), abs(~0u)), 5563u), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(func_3(false, var_1, Struct_1(var_0.x, vec3<bool>(true, false, false), var_0)), 1i, 1i, 1i >> (u_input.a.x % 32u)), firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i))), ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-5891i, -27177i, -19327i), vec3<i32>(54846i, -57461i, 1i)), 1i, _wgslsmith_clamp_i32(27292i, 0i, 1i), 1i)), u_input.b.x);
}

