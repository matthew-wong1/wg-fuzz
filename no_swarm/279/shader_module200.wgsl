struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: i32, arg_3: i32) -> bool {
    var var_0 = Struct_2(~_wgslsmith_sub_i32(-2147483647i, abs(0i)), u_input.b, firstTrailingBit(reverseBits(select(vec2<i32>(-13581i, 2147483647i), vec2<i32>(arg_3, -2147483647i) >> (u_input.a.xz % vec2<u32>(32u)), all(vec4<bool>(true, false, true, arg_0.x))))));
    var_0 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-16286i << (var_0.b.x % 32u), global0.x | var_0.c.x, firstTrailingBit(arg_2), 2147483647i), firstTrailingBit(vec4<i32>(arg_1.x, 20037i, 0i, global0.x)) & ~vec4<i32>(arg_2, -1i, 1i, arg_3)), abs(2147483647i)), _wgslsmith_add_vec4_u32(~(~vec4<u32>(var_0.b.x, u_input.c.x, var_0.b.x, 4294967295u)), vec4<u32>(~u_input.b.x, var_0.b.x, _wgslsmith_dot_vec3_u32(var_0.b.xxw, u_input.a), abs(0u))) ^ ~(~var_0.b), var_0.c & vec2<i32>(423i & (var_0.a >> (var_0.b.x % 32u)), 2147483647i));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-759f, 1289f, -1477f, -693f), vec4<f32>(-295f, -1000f, 447f, -319f)))))));
    var_0 = Struct_2(select(~_wgslsmith_mod_i32(arg_2, _wgslsmith_mult_i32(17356i, 7742i)), reverseBits(61220i), false != arg_0.x), abs(min(vec4<u32>(var_0.b.x, u_input.a.x, ~0u, ~u_input.c.x), var_0.b)), -reverseBits(arg_1));
    var_0 = Struct_2(arg_2, min(vec4<u32>(abs(u_input.d), ~var_0.b.x, ~(~78072u), var_0.b.x), ~(~vec4<u32>(u_input.b.x, 21032u, var_0.b.x, u_input.b.x) & vec4<u32>(0u, 0u, 41651u, var_0.b.x))), select(arg_1, vec2<i32>(-2147483647i >> (countOneBits(u_input.b.x) % 32u), select(_wgslsmith_sub_i32(global0.x, 2147483647i), 0i, true)), !(!select(arg_0.wz, vec2<bool>(arg_0.x, arg_0.x), arg_0.zw))));
    return any(arg_0.xx);
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    global0 = ~vec4<i32>(global0.x, global0.x, global0.x, _wgslsmith_div_i32(max(0i, countOneBits(-2147483647i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(5170i, 8247i), ~global0.x)));
    let var_0 = vec3<bool>(!all(vec3<bool>(func_3(vec4<bool>(false, false, true, true), global0.xz, global0.x, 0i), false, true)), true, any(vec3<bool>(true, true | (global0.x <= -1i), !(global0.x != 1i))));
    let var_1 = 4294967295u;
    return Struct_2(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-global0.x, -global0.x), -2147483647i), _wgslsmith_mult_vec4_u32(select(u_input.b, vec4<u32>(4294967295u, ~0u, ~u_input.d, 0u), var_0.x), ~u_input.b << (~(~vec4<u32>(47816u, 99237u, u_input.c.x, arg_0.x)) % vec4<u32>(32u))), select(-firstLeadingBit(select(vec2<i32>(global0.x, 3511i), vec2<i32>(global0.x, global0.x), false)), global0.zw, (all(vec2<bool>(false, var_0.x)) & false) != false));
}

fn func_1() -> i32 {
    let var_0 = func_2(u_input.b.xz);
    global0 = vec4<i32>(abs(36109i), var_0.a, global0.x, 61294i) ^ ~(vec4<i32>(-1i) * -max(vec4<i32>(-44035i, global0.x, global0.x, 1i), vec4<i32>(var_0.c.x, var_0.c.x, var_0.c.x, 1i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-692f, -468f, 158f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-210f, 855f, -164f) * vec3<f32>(194f, -616f, 1621f)), vec3<f32>(578f, -944f, 928f), all(vec2<bool>(true, false))))))) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-634f))), _wgslsmith_f_op_f32(sign(1f)))), _wgslsmith_div_f32(-293f, -1362f), -287f));
    let var_2 = any(vec4<bool>(false, true, !(!(var_1.x > var_1.x)), all(vec4<bool>(true, true, false, true))));
    global0 = select(vec4<i32>(-1i) * -(~vec4<i32>(global0.x, -10662i, global0.x, global0.x) | _wgslsmith_div_vec4_i32(vec4<i32>(var_0.a, -2147483647i, var_0.a, 0i), vec4<i32>(-16145i, -9568i, var_0.a, global0.x))), -_wgslsmith_mult_vec4_i32(reverseBits(select(vec4<i32>(-1i, var_0.c.x, var_0.c.x, global0.x), vec4<i32>(-36668i, var_0.c.x, global0.x, -1013i), vec4<bool>(var_2, var_2, true, var_2))), vec4<i32>(_wgslsmith_dot_vec3_i32(global0.wyw, global0.xzz), var_0.a, -1i, var_0.c.x)), !select(select(select(vec4<bool>(var_2, var_2, var_2, false), vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(var_2, var_2, true, var_2)), !vec4<bool>(true, var_2, true, var_2), all(vec4<bool>(true, var_2, var_2, false))), vec4<bool>(var_2, true, !var_2, var_2), vec4<bool>(var_2 != var_2, true, all(vec2<bool>(true, true)), true)));
    return 59794i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!all(vec3<bool>(false, true, false)));
    global0 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(~global0.x, abs(global0.x), _wgslsmith_add_i32(22380i, 1i)), firstLeadingBit(func_1())) ^ global0.x, _wgslsmith_dot_vec2_i32(~global0.xz, ~global0.wz), max(global0.x, firstTrailingBit(2147483647i)), 1i);
    global0 = min(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global0.ywx, vec3<i32>(global0.x, global0.x, global0.x)), ~global0.wyx), global0.x), global0.x, global0.x, _wgslsmith_add_i32(abs(-2147483647i), ~global0.x) ^ global0.x), _wgslsmith_mult_vec4_i32(~vec4<i32>(38864i, 1i, global0.x, firstLeadingBit(-1i)), -max(~vec4<i32>(global0.x, global0.x, global0.x, -27759i), countOneBits(vec4<i32>(global0.x, -2147483647i, global0.x, global0.x)))));
    global0 = vec4<i32>(-1i, -52490i, 9340i, -30778i) & firstTrailingBit(vec4<i32>(global0.x, _wgslsmith_mod_i32(global0.x, global0.x), 63882i, global0.x));
    var var_1 = abs(_wgslsmith_sub_u32(1u, 1u));
    let var_2 = func_1();
    let var_3 = false;
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(400f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1000f, -627f, true)))) * _wgslsmith_f_op_f32(max(-106f, _wgslsmith_f_op_f32(select(1684f, 425f, var_3))))), 1f) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f) + _wgslsmith_div_f32(-812f, 1149f)) * -688f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f - -722f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1480f), -1348f)))));
    var var_5 = Struct_3(!select(!select(vec4<bool>(false, true, var_3, var_0), vec4<bool>(var_3, var_0, false, false), var_0), !vec4<bool>(true, false, var_0, true), select(vec4<bool>(var_3, false, var_0, true), vec4<bool>(var_3, false, true, true), select(vec4<bool>(false, var_3, var_0, false), vec4<bool>(true, true, var_0, true), vec4<bool>(var_3, false, var_3, var_3)))), u_input.c.x, Struct_1(vec3<bool>(true, true, all(select(vec3<bool>(var_0, var_3, true), vec3<bool>(var_0, var_3, var_3), true)))), Struct_1(!vec3<bool>(var_0, !var_3, false)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<i32>(2093i, max(global0.x, -2147483647i))), -global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-560f - _wgslsmith_f_op_f32(abs(-796f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1159f)) - -1196f)), 42169u, _wgslsmith_dot_vec4_i32(vec4<i32>(min(-1i, var_2), _wgslsmith_sub_i32(~global0.x, 36962i), -6131i, max(22770i, ~0i)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2, global0.x, -2147483647i, 17060i), vec4<i32>(global0.x, var_2, global0.x, 2983i)), firstTrailingBit(vec4<i32>(-5896i, 1i, 66792i, 0i)), var_5.b == u_input.d) & select(~vec4<i32>(43843i, -2147483647i, var_2, var_2), max(vec4<i32>(global0.x, global0.x, 1i, 21302i), vec4<i32>(0i, global0.x, var_2, 0i)), vec4<bool>(true, true, true, true))));
}

