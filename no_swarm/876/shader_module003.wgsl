struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1101f;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    var var_0 = any(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, false, false), u_input.c != u_input.c), select(select(false, true, false), true, true)));
    var var_1 = u_input.c;
    var_0 = !(-1720f >= _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(438f - -2174f), _wgslsmith_f_op_f32(f32(-1f) * -267f)))));
    let var_2 = Struct_1(~(~select(u_input.c, 0u, true)) ^ ~(~u_input.c), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-138f, 188f, 1063f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-967f, 829f, 419f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(159f, -481f, -235f), vec3<f32>(510f, -761f, 1690f), vec3<bool>(true, true, true))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1707f, 1407f, 536f) - vec3<f32>(1069f, 1204f, 360f)))))), _wgslsmith_dot_vec3_u32(~(vec3<u32>(33071u, 1u, u_input.c) & vec3<u32>(u_input.c, 0u, u_input.c)) | vec3<u32>(0u, ~1u, _wgslsmith_clamp_u32(66114u, 24850u, u_input.c)), vec3<u32>(abs(u_input.c), ~_wgslsmith_mod_u32(u_input.c, u_input.c), ~u_input.c)), select(vec4<bool>(any(vec4<bool>(true, true, true, true)), ~54040u <= _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 11540u, 0u), vec3<u32>(u_input.c, u_input.c, 17398u)), !all(vec2<bool>(false, false)), any(vec4<bool>(false, true, true, true))), vec4<bool>(true, true, true, true), true), select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), _wgslsmith_sub_i32(u_input.a, 1i) <= 39386i), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(select(false, true, true), true))));
    let var_3 = ~min(reverseBits(45742u) >> (0u % 32u), ~(~var_2.a));
    return _wgslsmith_f_op_vec3_f32(-var_2.b);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = arg_2;
    return _wgslsmith_f_op_f32(arg_0.x - -960f);
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    global0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(func_3()), arg_0, Struct_1(36394u, arg_0.b, var_0.c, var_0.d, !(!arg_0.d.zx))));
    var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var_1 = -548f;
    return _wgslsmith_f_op_f32(-arg_0.b.x);
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> Struct_1 {
    global0 = -630f;
    let var_0 = ~select(max(vec3<u32>(34846u, 1u, 15137u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 4294967295u, 55928u))), reverseBits(select(vec3<u32>(u_input.c, 32568u, 59475u), vec3<u32>(57436u, 85913u, u_input.c), arg_0)), !(!vec3<bool>(true, arg_0, true))) ^ (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c << (0u % 32u)), abs(vec3<u32>(u_input.c, 0u, 4294967295u)) & _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 1u, 56329u), vec3<u32>(u_input.c, u_input.c, u_input.c))) | ~vec3<u32>(u_input.c, u_input.c, u_input.c));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(206f, -1415f, -278f, -954f), vec4<f32>(-419f, 220f, -1637f, 1379f)) - vec4<f32>(-784f, -1775f, 1000f, -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(109f + 231f) - _wgslsmith_div_f32(-1000f, -465f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-915f + -1666f))), _wgslsmith_f_op_f32(func_2(Struct_1(0u, vec3<f32>(1000f, 328f, -950f), var_0.x, vec4<bool>(arg_0, false, false, true), vec2<bool>(true, true)))))), _wgslsmith_f_op_f32(min(-484f, -1119f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(765f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1171f) + _wgslsmith_div_f32(-1000f, -1185f)))), arg_0));
    let var_2 = abs(arg_1);
    let var_3 = max(~_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.yz, vec2<u32>(2042u, 4294967295u)), u_input.c & 1u), var_0.yx), var_0.yx);
    return Struct_1(20847u, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2063f, -565f, var_1.x))), max(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~var_0.x, _wgslsmith_sub_u32(10151u, 1784u)), reverseBits(var_3.x ^ 1u)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0, var_0), var_0) | 1u), vec4<bool>(all(!vec4<bool>(arg_0, true, arg_0, true)) != true, true, false, false), select(vec2<bool>(arg_0, false && any(vec3<bool>(true, false, false))), vec2<bool>(all(!vec3<bool>(true, arg_0, false)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(arg_0, false, true)))), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(true & (true && any(vec2<bool>(true, false)))), ~(~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-40725i, u_input.a, u_input.a), vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(62604i, -38051i, u_input.a) | vec3<i32>(u_input.b, 19755i, u_input.b))));
    var var_1 = ~(~(~vec3<u32>(~22724u, 102695u, _wgslsmith_mult_u32(u_input.c, u_input.c))));
    let var_2 = var_0;
    let var_3 = _wgslsmith_mult_i32(-9135i, -u_input.a) << ((var_1.x >> (~min(~var_1.x, 1u) % 32u)) % 32u);
    var var_4 = select(vec4<u32>(var_1.x, countOneBits(_wgslsmith_mod_u32(1u, 41888u)), min(0u, 81313u), u_input.c), firstLeadingBit(vec4<u32>(select(4294967295u, _wgslsmith_sub_u32(u_input.c, 79944u), select(var_2.d.x, var_0.d.x, var_2.e.x)), ~u_input.c, u_input.c, var_0.c)), false);
    var_1 = ~(~var_4.zzx) & (vec3<u32>(func_1(true, abs(vec3<i32>(var_3, -14187i, u_input.a))).c, 0u, ~(~var_4.x)) << (~vec3<u32>(~var_4.x, abs(var_0.a), u_input.c) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, -2105f, vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, var_3, -35633i, u_input.b), vec4<i32>(u_input.a, -92477i, -35122i, 13722i), vec4<bool>(true, var_2.d.x, false, var_2.d.x)), ~vec4<i32>(var_3, var_3, u_input.b, -2147483647i)), _wgslsmith_clamp_i32(31788i, _wgslsmith_mod_i32(var_3, -33965i), var_3), 21507i, countOneBits(u_input.b)) << (vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_0.c, u_input.c), firstLeadingBit(22781u)), _wgslsmith_add_u32(var_0.a & 20445u, var_4.x >> (u_input.c % 32u)), 4294967295u & (var_0.c >> (1u % 32u)), ~21818u) % vec4<u32>(32u)));
}

