struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_add_vec2_u32(arg_1.c.xz ^ ~(arg_1.c.zw >> (~vec2<u32>(0u, 71061u) % vec2<u32>(32u))), arg_1.c.wy);
    var var_1 = arg_1.a;
    var_1 = arg_1.a;
    var_0 = ~arg_1.d;
    let var_2 = _wgslsmith_f_op_f32(954f - -1000f);
    return 1u;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1508f, 2139f), vec2<f32>(1000f, 1769f)) - vec2<f32>(-540f, 473f)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1575f), _wgslsmith_f_op_f32(trunc(-328f)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-449f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(879f, -393f) + vec2<f32>(241f, -1031f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(858f, 1000f) + vec2<f32>(-836f, 1299f))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -270f), var_0.x)));
    global0 = Struct_3(false);
    var var_1 = _wgslsmith_sub_u32(arg_1.d, max(~17267u, 30584u));
    var var_2 = Struct_2(var_0.x, arg_1, _wgslsmith_div_vec4_u32(vec4<u32>(0u, _wgslsmith_mod_u32(29906u, 78779u), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), arg_1.c.xy)), ~arg_1.c.x), ~(arg_1.c >> (vec4<u32>(0u, arg_1.d, arg_1.d, arg_1.c.x) % vec4<u32>(32u))) ^ min(min(vec4<u32>(1u, arg_1.d, arg_1.d, 7613u), vec4<u32>(arg_1.d, 25992u, arg_1.d, arg_1.d)), ~vec4<u32>(0u, 0u, arg_1.d, arg_1.d))), ~select(_wgslsmith_clamp_vec2_u32(arg_1.c.zx, arg_1.c.yx, vec2<u32>(61218u, arg_1.c.x)) | select(arg_1.c.wx, arg_1.c.xy, global0.a), (arg_1.c.yx ^ vec2<u32>(arg_1.c.x, arg_1.c.x)) & ~arg_1.c.zw, select(global0.a, 0u >= arg_1.d, true)));
    return -614f;
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = arg_0 >= (60945u | _wgslsmith_sub_u32(arg_0, _wgslsmith_clamp_u32(1u, ~arg_0, 32458u)));
    let var_1 = vec2<u32>(abs(~select(func_2(Struct_3(false), Struct_2(-1000f, Struct_1(u_input.a.wxx, u_input.a.x, vec4<u32>(30301u, arg_0, 4294967295u, arg_0), arg_0), vec4<u32>(arg_0, arg_0, 4294967295u, 1u), vec2<u32>(arg_0, arg_0))), 28451u, false != global0.a)), 82120u);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-280f)) * _wgslsmith_f_op_f32(1535f + 606f)), _wgslsmith_f_op_f32(func_3(Struct_3(global0.a), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), 1i, vec4<u32>(0u, var_1.x, var_1.x, arg_0), 0u), vec2<bool>(true, true)))) - _wgslsmith_f_op_f32(f32(-1f) * -1578f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-727f))), -658f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -478f), _wgslsmith_f_op_f32(-651f - -431f)))), 1301f);
    var var_3 = _wgslsmith_add_vec2_i32(u_input.a.xy, vec2<i32>(_wgslsmith_dot_vec3_i32(abs(u_input.a.zyy), -_wgslsmith_div_vec3_i32(vec3<i32>(-71132i, u_input.a.x, -1i), vec3<i32>(-19018i, 37126i, u_input.a.x))), u_input.a.x));
    let var_4 = Struct_1(-max(select(vec3<i32>(-45438i, 2147483647i, -2147483647i) | vec3<i32>(u_input.a.x, -18352i, var_3.x), u_input.a.wwz, select(vec3<bool>(true, true, global0.a), vec3<bool>(true, global0.a, global0.a), false)), firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, 21712i), vec3<i32>(18006i, 1i, var_3.x)))), _wgslsmith_sub_i32(var_3.x, var_3.x) << (27146u % 32u), vec4<u32>(~(~(~0u)), firstTrailingBit(4294967295u) & ~arg_0, 4294967295u, 0u), 367u);
    return Struct_2(_wgslsmith_div_f32(734f, 407f), Struct_1(u_input.a.zyy, var_4.b, _wgslsmith_sub_vec4_u32(vec4<u32>(35381u, var_4.d, _wgslsmith_mult_u32(9263u, 113789u), ~var_1.x), reverseBits(var_4.c)), 46097u), vec4<u32>(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(15026u, var_1.x, var_4.c.x), var_4.c.wzy), _wgslsmith_mult_u32(51786u, _wgslsmith_dot_vec3_u32(var_4.c.wzw, var_4.c.yxy))), arg_0, ~1u, _wgslsmith_add_u32(var_1.x, firstLeadingBit(4294967295u))), _wgslsmith_clamp_vec2_u32(reverseBits(countOneBits(vec2<u32>(var_1.x, var_4.d))), _wgslsmith_sub_vec2_u32(~var_1, ~vec2<u32>(47383u, var_4.d)), var_4.c.xx | var_1) >> (vec2<u32>(~(var_4.c.x | 1u), var_1.x) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.a)), 1532f, arg_1.a, _wgslsmith_f_op_f32(-2816f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(595f, arg_0.a) + _wgslsmith_f_op_f32(f32(-1f) * -2368f)))));
    let var_1 = arg_2.x;
    global0 = Struct_3(!global0.a);
    var var_2 = Struct_3(all(vec4<bool>(true, true, true, false)));
    var var_3 = select(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_mult_i32(1i, -55599i)), ~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(2147483647i, countOneBits(-4312i), 1i, abs(u_input.a.x))), any(vec4<bool>(all(!vec3<bool>(true, global0.a, false)), any(select(vec4<bool>(false, false, false, global0.a), vec4<bool>(var_2.a, global0.a, false, global0.a), true)), global0.a, all(select(vec4<bool>(true, var_2.a, var_2.a, var_2.a), vec4<bool>(false, var_2.a, true, global0.a), vec4<bool>(false, global0.a, var_2.a, global0.a))))));
    return Struct_3(!((_wgslsmith_f_op_f32(arg_0.a * arg_0.a) < _wgslsmith_f_op_f32(var_0.x - arg_1.a)) | (_wgslsmith_f_op_f32(f32(-1f) * -1372f) == arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-831f, 849f))))), Struct_1(u_input.a.yzw, 0i, vec4<u32>(max(1u, 4294967295u), ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 55200u), vec4<u32>(4294967295u, 0u, 36491u, 1u)), 4294967295u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(37354u, 42056u), vec2<u32>(86301u, 1u))), ~vec4<u32>(~0u, 53521u, 4294967295u, 56229u), _wgslsmith_div_vec2_u32(vec2<u32>(~0u, 1u), vec2<u32>(1u, 1u))), func_1(firstTrailingBit(~14422u)), countOneBits(u_input.a.yw));
    global0 = func_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-971f))), Struct_1(~u_input.a.zyz, ~abs(u_input.a.x), ~(~vec4<u32>(10482u, 0u, 74195u, 11183u)), 8041u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), func_1(~31390u).b.c), vec2<u32>(_wgslsmith_sub_u32(~22338u, 1u), min(1u, _wgslsmith_sub_u32(78287u, 0u)))), func_1(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 42542u, 46405u)))), vec2<i32>(-9000i, u_input.a.x) ^ ~(vec2<i32>(u_input.a.x, 0i) | vec2<i32>(1i, 1i)));
    var var_0 = ~1u;
    global0 = func_4(func_1(firstTrailingBit(~(~4294967295u))), func_1(abs(1u) & firstTrailingBit(~1u)), ~func_1(~0u).b.a.xz >> (_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)) % vec2<u32>(32u)));
    var var_1 = Struct_1(min(-_wgslsmith_mod_vec3_i32(~u_input.a.wxw, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 2994i, -1i), u_input.a.yzz)), abs(abs(u_input.a.ywz))), _wgslsmith_sub_i32(-u_input.a.x, _wgslsmith_dot_vec3_i32(select(u_input.a.zyy, u_input.a.wyz >> (vec3<u32>(91175u, 4294967295u, 4294967295u) % vec3<u32>(32u)), !global0.a), u_input.a.wyx)), ~_wgslsmith_mod_vec4_u32(select(vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(30833u, 0u, 1u, 23601u), vec4<bool>(global0.a, global0.a, global0.a, true)) >> (vec4<u32>(4294967295u, 0u, 1u, 0u) % vec4<u32>(32u)), vec4<u32>(0u, ~1u, 22740u, ~61660u)), min(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(26376u, 0u, 32229u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 66749u), vec3<u32>(22081u, 37426u, 4294967295u), vec3<u32>(1u, 4294967295u, 4294967295u))) ^ 1u, firstTrailingBit(~countOneBits(1u))));
    let var_2 = -(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_1.b, var_1.b), vec3<i32>(var_1.b, -40957i, -2147483647i))) & countOneBits(countOneBits(1i) & var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1104f, -504f), _wgslsmith_f_op_f32(max(func_1(4294967295u).a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(772f - 287f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -790f), _wgslsmith_f_op_f32(1296f + -2353f))))))));
}

