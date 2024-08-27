struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<f32>) -> vec3<f32> {
    var var_0 = vec3<u32>(abs(1u), 36393u >> (1u % 32u), ~(~4294967295u));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) + vec3<f32>(-766f, 105f, arg_0.x)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1140f, -332f, -600f))))), 2205f, ~vec3<u32>(var_0.x, 13154u, 0u) << ((~vec3<u32>(var_0.x, 4294967295u, 1u) ^ max(vec3<u32>(52799u, 0u, var_0.x), vec3<u32>(var_0.x, 4294967295u, 1u))) % vec3<u32>(32u)), firstTrailingBit(u_input.a.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.b))));
    var_0 = ~(~(~(var_1.a.c & var_1.a.c)) >> (~(var_1.a.c << (abs(var_1.a.c) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_3 = var_2;
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)) + arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -2094f), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-var_1.a.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: vec2<bool>) -> vec3<f32> {
    var var_0 = arg_1.a.d;
    var var_1 = arg_0.c;
    var var_2 = -1i;
    var_2 = abs(~(-1i)) | _wgslsmith_clamp_i32(7635i, firstTrailingBit(arg_0.a.d >> (27457u % 32u)), _wgslsmith_mod_i32(countOneBits(1i), firstTrailingBit(_wgslsmith_add_i32(3732i, arg_1.a.d))));
    var_1 = ~(~arg_0.a.c.x);
    return arg_0.a.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    var var_0 = -23415i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_2(arg_0, (arg_0.c.x << (arg_0.c.x % 32u)) | max(0u, arg_0.c.x), ~arg_0.c.x), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(func_3(arg_0.a.zy)), _wgslsmith_f_op_f32(-arg_0.b), ~arg_0.c, _wgslsmith_clamp_i32(40081i, u_input.a.x, -1i)), max(firstTrailingBit(33960u), arg_0.c.x), arg_0.c.x), false, !vec2<bool>(any(vec4<bool>(true, true, true, false)), false))));
    return _wgslsmith_mult_u32(_wgslsmith_div_u32(31384u, 59880u), ~1u);
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> vec2<u32> {
    let var_0 = vec4<u32>(select(1u, ~arg_0.b, false), func_2(arg_0.a, _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(0i, arg_0.a.d, 44102i, 4141i), -abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)))), arg_0.a.c.x, ~(~(~(~35179u))));
    let var_1 = vec2<u32>(arg_1, 266u);
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_div_f32(arg_0.a.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.b), arg_0.a.b)), 1267f, 1589f), _wgslsmith_f_op_f32(arg_0.a.b + 1324f), vec3<u32>(~(~var_0.x) << (var_1.x % 32u), arg_0.a.c.x, ~arg_1), u_input.a.x);
    var_2 = arg_0.a;
    let var_3 = 1i;
    return var_0.yw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(1000f)), 658f, _wgslsmith_f_op_f32(step(-579f, 363f))), 206f, vec3<u32>(1u, _wgslsmith_div_u32(0u, 1u), 1u), u_input.a.x), _wgslsmith_mod_u32(53067u, ~min(51591u, 0u)), ~(~_wgslsmith_clamp_u32(0u, 1u, 54592u))), 36226u);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec3_f32(func_4(Struct_2(Struct_1(vec3<f32>(1000f, 298f, -341f), -1058f, vec3<u32>(var_0.x, var_0.x, 8080u), u_input.a.x), ~var_0.x, ~var_0.x), Struct_2(Struct_1(vec3<f32>(1106f, -217f, -297f), -108f, vec3<u32>(54163u, var_0.x, var_0.x), u_input.a.x), _wgslsmith_mod_u32(94961u, var_0.x), ~var_0.x), !any(vec3<bool>(true, true, false)), vec2<bool>(true, true))).yz), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-132f, 157f)))), vec2<f32>(1f, 1f)));
    var var_2 = (_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, var_0.x, 2149u, var_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.x, var_0.x, 0u), ~vec4<u32>(29240u, var_0.x, 1u, var_0.x))) & 1u) << (firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, abs(var_0.x)), abs(abs(var_0.x)))) % 32u);
    var_2 = 17045u;
    let var_3 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-345f, -142f, var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_1.x, 485f), vec3<f32>(var_1.x, var_1.x, var_1.x))) * vec3<f32>(-750f, -1871f, -860f)))), _wgslsmith_f_op_f32(100f * _wgslsmith_f_op_f32(f32(-1f) * -484f)), _wgslsmith_mod_vec3_u32(vec3<u32>(select(16303u, ~var_0.x, true), _wgslsmith_mult_u32(var_0.x, 0u), firstTrailingBit(1u)), ~vec3<u32>(~var_0.x, 25593u, ~var_0.x)), _wgslsmith_clamp_i32(u_input.a.x, -32774i, _wgslsmith_div_i32(u_input.a.x, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(1069f)), _wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.b + var_3.b)))) * var_3.a), ~u_input.a.x);
}

