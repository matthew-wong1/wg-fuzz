struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: bool;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> i32 {
    global0 = ~_wgslsmith_clamp_vec4_u32(~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 1u), vec4<u32>(10946u, 4294967295u, 48111u, global0.x))), vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, 4294967295u, 0u, u_input.a.x), vec4<u32>(global0.x, 4294967295u, u_input.a.x, 1u)), vec4<u32>(global0.x, global0.x, 71912u, 0u)), global0.x, 13659u), vec4<u32>(abs(1u ^ global0.x), ~(u_input.a.x >> (u_input.a.x % 32u)), ~(~23396u), global0.x >> (u_input.a.x % 32u)));
    var var_0 = -(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), select(~vec3<i32>(-1i, 8295i, 2147483647i), -vec3<i32>(2147483647i, -28842i, 2147483647i), vec3<bool>(true, false, false))) & -1i);
    let var_1 = Struct_5(!((_wgslsmith_clamp_i32(2147483647i, 83711i, -2147483647i) | 1i) != (_wgslsmith_clamp_i32(-7494i, -47213i, 1i) >> (global0.x % 32u))), vec4<u32>(~(~0u & ~u_input.a.x), ~_wgslsmith_div_u32(global0.x, u_input.a.x), firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, 95136u), 1u)), _wgslsmith_mod_u32(1u, ~abs(global0.x))), firstTrailingBit(~_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 0i), abs(vec2<i32>(1i, -21979i)))));
    let var_2 = Struct_5(var_1.a, (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, var_1.b.x, global0.x), ~vec4<u32>(u_input.a.x, 16720u, 4294967295u, u_input.a.x)) & ~(~var_1.b)) | ~(~var_1.b), vec2<i32>(var_1.c.x, max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.x, var_1.c.x, -31675i, 71380i), vec4<i32>(var_1.c.x, var_1.c.x, -14696i, var_1.c.x)), -1i)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1182f) + 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), -501f))), select(min(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.c.x, -1i, var_1.c.x, var_2.c.x), vec4<i32>(var_2.c.x, var_2.c.x, 1i, -35321i)), ~(~vec4<i32>(var_2.c.x, -24310i, 1i, 2147483647i))), -abs(-vec4<i32>(-2147483647i, var_1.c.x, var_2.c.x, 65994i)), !vec4<bool>(!var_1.a, var_2.b.x != u_input.a.x, var_2.a, var_2.a)), Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-362i, var_2.c.x, -23484i), _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.c.x, var_2.c.x, var_2.c.x), vec3<i32>(var_1.c.x, -10944i, var_1.c.x))), 2147483647i, select(-1i, -8310i | var_2.c.x, any(vec4<bool>(true, var_1.a, var_1.a, true))), -30965i), -28335i, var_1.b, abs(~vec3<u32>(u_input.a.x, 1u, u_input.a.x)), var_1.b.yxy));
    return var_1.c.x;
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: Struct_5) -> f32 {
    var var_0 = arg_0.a.b;
    global1 = !arg_3.a && false;
    global1 = true;
    var var_1 = arg_1.xx;
    var var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - 1237f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), (abs(select(vec4<i32>(arg_3.c.x, 29419i, -1i, arg_3.c.x), vec4<i32>(arg_3.c.x, arg_3.c.x, 23050i, 2147483647i), vec4<bool>(arg_2.x, arg_2.x, false, arg_3.a))) ^ min(-vec4<i32>(arg_0.a.b, -36885i, arg_0.a.b, 15434i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.a.b, arg_3.c.x, arg_0.a.b, arg_3.c.x), vec4<i32>(-1i, 2147483647i, arg_0.a.b, arg_3.c.x)))) << ((_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(arg_3.b.x, arg_3.b.x, global0.x, 4294967295u)) >> (~(~arg_3.b) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_1(select(vec4<i32>(select(arg_0.a.b, arg_3.c.x, arg_3.a), min(1i, arg_0.a.b), func_3(), 1i), ~_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a.b, arg_3.c.x, 2147483647i, 2147483647i), vec4<i32>(-1i, arg_0.a.b, arg_0.a.b, arg_3.c.x)), !(!arg_3.a)), _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.b, arg_0.a.b, -38735i, 9246i), vec4<i32>(arg_0.a.b, -25124i, arg_0.a.b, arg_3.c.x)), vec4<i32>(~arg_0.a.b, ~arg_0.a.b, i32(-1i) * -2867i, -18465i)), select(arg_3.b, vec4<u32>(arg_0.a.c, 1u, _wgslsmith_add_u32(1u, arg_3.b.x), arg_0.a.c << (global0.x % 32u)), true), arg_3.b.wxy, ~(arg_3.b.wxw ^ (arg_3.b.yzx & vec3<u32>(4294967295u, arg_0.a.a, arg_0.a.c)))));
    return 882f;
}

fn func_1(arg_0: Struct_4) -> f32 {
    global0 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(abs(u_input.a.x) & _wgslsmith_mod_u32(81628u, 18463u), ~global0.x, countOneBits(global0.x), 1u), _wgslsmith_clamp_vec4_u32(countOneBits(~vec4<u32>(global0.x, 4294967295u, 0u, 52263u)), (vec4<u32>(4294967295u, global0.x, 4294967295u, arg_0.a.a) << (vec4<u32>(82866u, 76839u, 22933u, 29209u) % vec4<u32>(32u))) | (vec4<u32>(global0.x, u_input.a.x, u_input.a.x, 62465u) << (vec4<u32>(arg_0.a.a, arg_0.a.c, global0.x, global0.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 32135u, arg_0.a.a), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u))));
    global0 = firstLeadingBit(~(_wgslsmith_div_vec4_u32(~vec4<u32>(29525u, global0.x, arg_0.a.a, global0.x), firstTrailingBit(vec4<u32>(arg_0.a.c, u_input.a.x, global0.x, global0.x))) & ~vec4<u32>(u_input.a.x, 11525u, 4294967295u, 22907u)));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1611f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-449f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0, vec4<f32>(-374f, 771f, 445f, -1553f), vec4<bool>(false, true, false, false), Struct_5(true, vec4<u32>(u_input.a.x, global0.x, 1u, 4294967295u), vec2<i32>(-1i, 12806i)))))) * 1352f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -615f))) * -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -253f))))), 1000f, true)));
    var var_1 = vec4<u32>(~(_wgslsmith_add_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(27759u, 1u, global0.x, 1u), vec4<u32>(u_input.a.x, arg_0.a.a, 57512u, arg_0.a.c))) ^ ~(~29173u)), _wgslsmith_add_u32(~firstTrailingBit(countOneBits(26782u)), ~1u >> (global0.x % 32u)), _wgslsmith_add_u32(_wgslsmith_add_u32(89407u, global0.x), ~4294967295u & ~arg_0.a.c) ^ _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 32266u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~_wgslsmith_dot_vec3_u32(global0.wzz, vec3<u32>(63953u, arg_0.a.a, 4294967295u))), ~arg_0.a.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f - var_0.x), -1946f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(103f))))), var_0.x));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(188f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1404f - -634f))) + _wgslsmith_f_op_f32(func_1(Struct_4(Struct_2(70037u, 2147483647i, u_input.a.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(694f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_4(Struct_2(global0.x, 35457i, 0u)), vec4<f32>(-1322f, 157f, -1073f, 1318f), vec4<bool>(true, false, false, true), Struct_5(true, vec4<u32>(4294967295u, 73672u, 59013u, 99387u), vec2<i32>(-52521i, 61060i)))))))));
    global1 = true;
    let var_1 = vec4<bool>(true, all(select(vec2<bool>(all(vec3<bool>(false, true, true)), any(vec3<bool>(true, false, false))), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true))), all(!vec2<bool>(select(false, true, true), true)), all(vec2<bool>(true, true)));
    var var_2 = Struct_2(_wgslsmith_clamp_u32(~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), global0.zw)), _wgslsmith_sub_u32(u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 35870u, u_input.a.x, global0.x), vec4<u32>(53432u, u_input.a.x, global0.x, 34289u))), 4294967295u ^ select(1u ^ u_input.a.x, global0.x, var_1.x)), ~(~func_3()), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~max(vec2<u32>(35772u, global0.x), u_input.a), vec2<u32>(global0.x | u_input.a.x, ~global0.x)), ~(global0.xy | ~u_input.a)));
    global0 = abs(~(~(~(vec4<u32>(4294967295u, global0.x, 0u, 31414u) << (vec4<u32>(global0.x, var_2.c, 27674u, 1u) % vec4<u32>(32u))))));
    var_2 = Struct_2(~0u, max(-(var_2.b << (u_input.a.x % 32u)), -1i), firstTrailingBit(reverseBits(firstTrailingBit(global0.x))) << (min(firstLeadingBit(~23473u), abs(_wgslsmith_mult_u32(global0.x, var_2.c))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32((reverseBits(68690i) >> (global0.x % 32u)) << (~u_input.a.x % 32u), -14275i), _wgslsmith_clamp_vec4_u32(vec4<u32>(60050u, ~112853u | global0.x, global0.x, 1u), select(vec4<u32>(~var_2.a, var_2.a, global0.x, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 65281u, 61252u, var_2.a), firstLeadingBit(vec4<u32>(global0.x, var_2.c, u_input.a.x, 0u))), vec4<bool>(true, false, var_1.x, var_1.x)), max(~vec4<u32>(global0.x, 14342u, u_input.a.x, global0.x), ~vec4<u32>(u_input.a.x, var_2.a, 0u, 4294967295u))), global0.yy, ~_wgslsmith_add_u32(~(~u_input.a.x), ~(~var_2.c)), -1055f);
}

