struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = !(!select(select(!vec4<bool>(arg_0.b.x, arg_0.b.x, false, true), vec4<bool>(true, false, arg_0.b.x, arg_0.b.x), arg_0.b.x), vec4<bool>(true, true, true, !arg_0.b.x), !select(vec4<bool>(true, arg_0.b.x, false, false), vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x), arg_0.b.x)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1220f * -1000f) - -1274f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(121f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -467f) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-984f, -164f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(670f - 1000f), -406f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-380f * 465f) - _wgslsmith_f_op_f32(360f * 382f))))));
    let var_2 = abs(vec2<i32>(arg_0.a, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b.xz, vec2<i32>(14211i, arg_0.a)), reverseBits(u_input.b.zz)), -u_input.b.x)));
    var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(554f, -760f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1450f) + var_1.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -1502f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-559f, -1886f, var_1.x), vec3<f32>(-1064f, -700f, var_1.x)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, 822f), vec3<f32>(971f, var_1.x, -183f), var_0.wwz))))))));
    var var_3 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_add_i32(u_input.b.x, arg_0.a), u_input.b.x, ~arg_0.a, reverseBits(-43498i)), ~vec4<i32>(var_2.x, firstLeadingBit(2147483647i), var_2.x, max(-8214i, u_input.b.x))));
    return _wgslsmith_dot_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-arg_0.a, var_3.a, ~(-26769i), 1i), countOneBits(vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.b.x)))), abs(vec4<i32>(var_2.x, _wgslsmith_sub_i32(arg_0.a, 1i), countOneBits(var_2.x) >> (u_input.a.x % 32u), _wgslsmith_mult_i32(-1i, ~arg_0.a))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(abs(u_input.c), max(~_wgslsmith_add_u32(0u, ~0u), arg_0.x));
    var var_1 = Struct_3(countOneBits(_wgslsmith_div_vec2_u32(arg_0.xx, firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(23226u, 1u), vec2<u32>(u_input.a.x, 6553u), vec2<u32>(4294967295u, var_0))))), func_3(Struct_2(u_input.b.x, select(vec2<bool>(true, false), vec2<bool>(false, false), true))) == min(1i, 3220i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-494f, _wgslsmith_f_op_f32(657f - 329f))))))));
    var var_2 = all(!select(!vec4<bool>(var_1.b, var_1.b, false, false), !vec4<bool>(var_1.b, var_1.b, false, false), var_1.b));
    let var_3 = Struct_2(~_wgslsmith_mod_i32(-firstTrailingBit(u_input.b.x), ~(~u_input.b.x)), !select(vec2<bool>(var_1.b & var_1.b, var_1.c > -526f), !select(vec2<bool>(true, false), vec2<bool>(true, true), var_1.b), all(!vec3<bool>(var_1.b, true, var_1.b))));
    let var_4 = any(!select(select(select(var_3.b, var_3.b, var_3.b), !vec2<bool>(var_1.b, var_1.b), any(vec3<bool>(false, var_1.b, false))), vec2<bool>(true, false), select(vec2<bool>(true, var_1.b), var_3.b, var_1.b)));
    return Struct_1(~u_input.b.x);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_3(min(~_wgslsmith_clamp_vec2_u32(vec2<u32>(34272u, 0u) ^ u_input.a.xx, u_input.a.xy, u_input.a.yw), ~u_input.a.zx), false, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2046f, _wgslsmith_f_op_f32(step(-866f, 665f)))))));
    var_0 = Struct_3(vec2<u32>(var_0.a.x, ~0u), select(true, !(508f >= var_0.c), var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-948f * var_0.c)))))));
    var var_1 = Struct_3(select(_wgslsmith_add_vec2_u32(var_0.a, reverseBits(~var_0.a)), u_input.a.ww, true), false, 424f);
    var var_2 = 1000f;
    var_2 = _wgslsmith_f_op_f32(round(1000f));
    return Struct_3(~max(select(~var_1.a, ~vec2<u32>(4294967295u, 0u), !var_1.b), ~(u_input.a.yz & u_input.a.xy)), any(vec3<bool>(var_1.b, true, false)), _wgslsmith_f_op_f32(min(2495f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c)))))));
}

fn func_1() -> u32 {
    var var_0 = firstTrailingBit(~31889u) << (_wgslsmith_dot_vec4_u32(select(u_input.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(113824u, u_input.a.x, u_input.c, 39095u), vec4<u32>(1u, u_input.a.x, u_input.c, 1u), u_input.a) ^ countOneBits(vec4<u32>(4294967295u, u_input.a.x, 23699u, u_input.c)), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(select(u_input.c, 66759u, false), 5007u, ~u_input.c, u_input.c & 0u))) % 32u);
    var_0 = abs(4294967295u);
    var var_1 = Struct_1(u_input.b.x);
    var var_2 = func_4(func_2(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 19040u), vec4<u32>(0u, u_input.a.x, 74324u, u_input.a.x))), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(13882u, u_input.c, u_input.c, u_input.c)), ~u_input.a))));
    var_0 = _wgslsmith_mult_u32(30462u, 1u);
    return ~max(24538u, var_2.a.x) & ~countOneBits(reverseBits(~2556u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(-_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1760i, u_input.b.x), u_input.b.yy), min(u_input.b.x, 21032i))));
    var var_1 = Struct_3(vec2<u32>(func_1(), _wgslsmith_sub_u32(select(u_input.a.x, max(13692u, u_input.a.x), true), u_input.a.x)), true, -394f);
    let var_2 = u_input.b.x;
    var var_3 = Struct_2(-1i, select(vec2<bool>(true, true), select(select(vec2<bool>(var_1.b, var_1.b), select(vec2<bool>(false, false), vec2<bool>(true, var_1.b), false), u_input.b.x <= u_input.b.x), !vec2<bool>(true, var_1.b), select(vec2<bool>(false, false), !vec2<bool>(true, var_1.b), true)), (1879f == _wgslsmith_f_op_f32(var_1.c + var_1.c)) & all(select(vec2<bool>(true, var_1.b), vec2<bool>(false, var_1.b), vec2<bool>(false, false)))));
    var var_4 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-1i, u_input.b.x), 19134i, _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(797f + _wgslsmith_f_op_f32(trunc(-282f)))), _wgslsmith_mult_vec4_u32(vec4<u32>(44737u, var_1.a.x, func_1(), 4294967295u), firstTrailingBit(~vec4<u32>(1u, u_input.c, 61459u, u_input.c))));
}

