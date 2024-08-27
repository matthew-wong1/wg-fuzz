struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = Struct_1(~_wgslsmith_mod_vec4_i32(arg_1.b.a, -arg_0.b.a | vec4<i32>(3750i, -1i, arg_1.c, arg_0.a.a.x)), arg_1.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0.a.c)), _wgslsmith_f_op_f32(f32(-1f) * -341f)))) * _wgslsmith_f_op_f32(3948f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(416f - 180f) + _wgslsmith_f_op_f32(159f - -1000f)))));
    var var_1 = !vec4<bool>(true, arg_1.a.b, var_0.b, arg_1.b.b);
    var_0 = Struct_1(~vec4<i32>(-reverseBits(1i), ~0i, arg_0.b.a.x, ~0i), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-935f))));
    var var_2 = -17687i | ((-_wgslsmith_mult_i32(arg_1.c, 0i) ^ ~_wgslsmith_add_i32(1i, arg_1.c)) ^ 37166i);
    var_0 = Struct_1(countOneBits(select(~(~var_0.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-3479i, arg_1.a.a.x, arg_1.b.a.x, arg_1.a.a.x), min(arg_1.a.a, vec4<i32>(arg_1.c, var_0.a.x, 59489i, var_0.a.x)), var_0.a << (vec4<u32>(35503u, 0u, 4294967295u, 14926u) % vec4<u32>(32u))), !select(vec4<bool>(true, true, arg_0.b.b, var_0.b), vec4<bool>(false, var_0.b, false, arg_1.a.b), vec4<bool>(arg_0.b.b, false, true, arg_1.b.b)))), !(!(!(arg_1.a.b == var_1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -197f))))));
    return ~select(~reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -1i, arg_0.c), arg_0.a.a.yxw, arg_0.a.a.wyx)), (vec3<i32>(arg_1.a.a.x, 1i, var_0.a.x) | -var_0.a.zwy) >> (vec3<u32>(countOneBits(u_input.a), abs(4294967295u), 41574u) % vec3<u32>(32u)), !select(vec3<bool>(true, var_0.b, arg_1.a.b), select(vec3<bool>(true, arg_0.a.b, false), var_1.zyw, var_1.yyy), all(vec4<bool>(var_1.x, arg_1.b.b, var_0.b, arg_0.a.b))));
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_sub_i32(-2147483647i, -_wgslsmith_mod_i32(-3877i, ~(38534i >> (u_input.a % 32u))));
    var_0 = ~1i;
    var var_1 = Struct_3(vec2<bool>(all(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true))), true), Struct_1(-(~select(vec4<i32>(0i, 0i, -1i, 48258i), vec4<i32>(0i, 1i, -15443i, -7699i), true)), !all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2049f * -873f), _wgslsmith_f_op_f32(f32(-1f) * -2746f)))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 1i, 1i), firstTrailingBit(func_3(Struct_2(Struct_1(vec4<i32>(-16246i, -6356i, 3163i, 0i), false, 1238f), Struct_1(vec4<i32>(28421i, -2147483647i, 1i, -2147483647i), true, 1470f), -23032i), Struct_2(Struct_1(vec4<i32>(31966i, -79685i, -14006i, -51196i), true, -145f), Struct_1(vec4<i32>(1i, 1i, 3038i, -2147483647i), false, -721f), 16570i)))));
    var var_2 = Struct_4(countOneBits(min(u_input.b, 4294967295u)), var_1.b.c, abs(~countOneBits(vec3<i32>(var_1.c.x, var_1.c.x, var_1.c.x))), -var_1.b.a.x);
    var_1 = Struct_3(vec2<bool>(var_1.b.b, !(var_1.b.c == _wgslsmith_f_op_f32(step(var_2.b, var_1.b.c)))), var_1.b, _wgslsmith_sub_vec3_i32(var_2.c, countOneBits(firstTrailingBit(var_2.c)) | (vec3<i32>(-7867i, 1i, -2147483647i) & -vec3<i32>(-64885i, 445i, var_2.c.x))));
    return Struct_4(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u) << (vec2<u32>(var_2.a, 4294967295u) % vec2<u32>(32u)), vec2<u32>(1u, 19203u)), ~_wgslsmith_add_u32(0u, 29066u), 0u), _wgslsmith_add_vec3_u32(~(vec3<u32>(71709u, 31713u, var_2.a) | vec3<u32>(33403u, u_input.b, u_input.a)), ~_wgslsmith_div_vec3_u32(vec3<u32>(23425u, 22719u, 11969u), vec3<u32>(u_input.b, 55827u, var_2.a)))), var_1.b.c, max(min(var_2.c, firstLeadingBit(~vec3<i32>(var_2.d, var_2.d, 0i))), ~firstTrailingBit(-vec3<i32>(var_1.c.x, var_1.c.x, -2147483647i))), var_1.b.a.x);
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0.a.yww;
    var_0 = -(arg_0.a.xzz | max(-arg_0.a.zzz, vec3<i32>(arg_0.a.x, var_0.x, 0i))) << (vec3<u32>(45573u, u_input.b, 9303u) % vec3<u32>(32u));
    var var_1 = func_2();
    var_1 = func_2();
    let var_2 = Struct_2(arg_0, arg_0, -4184i);
    return var_2.c;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(arg_2.b.a, !(_wgslsmith_f_op_f32(1278f - -1000f) < _wgslsmith_f_op_f32(select(2142f, 266f, true))), arg_2.b.c), Struct_1(~_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 7486i, -1i, arg_1.c), vec4<i32>(14676i, arg_2.c.x, arg_3.x, -2147483647i)), vec4<i32>(arg_3.x, -24966i, arg_1.a.a.x, arg_3.x)), false, 992f), _wgslsmith_add_i32(11487i, 12856i));
    var var_1 = vec3<bool>(all(select(select(arg_0, select(arg_0, arg_0, vec3<bool>(var_0.a.b, arg_0.x, arg_0.x)), var_0.b.b), select(arg_0, arg_0, vec3<bool>(var_0.b.b, arg_1.b.b, true)), arg_2.b.b)), any(!vec4<bool>(any(arg_0.yx), !arg_1.a.b, all(arg_0.xx), false)), arg_0.x || (!(1u == u_input.a) && !arg_0.x));
    var var_2 = var_0.b.a.x;
    let var_3 = Struct_4(_wgslsmith_mult_u32(~(~1u) | _wgslsmith_mod_u32(~u_input.b, abs(u_input.b)), _wgslsmith_mult_u32(u_input.b, _wgslsmith_div_u32(u_input.a, 45640u))), var_0.a.c, _wgslsmith_clamp_vec3_i32(~abs(arg_1.a.a.zyx), var_0.a.a.xyw, arg_1.a.a.wzx), 1i);
    var var_4 = Struct_3(vec2<bool>(_wgslsmith_mod_u32(0u, u_input.b) == countOneBits(u_input.b), arg_0.x & var_0.b.b), Struct_1(countOneBits(~var_0.a.a) ^ vec4<i32>(var_0.b.a.x, 0i >> (var_3.a % 32u), -2491i, ~var_0.c), arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1963f, -1661f)))))), arg_1.b.a.zwy);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), _wgslsmith_f_op_f32(f32(-1f) * -171f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(570f)))), Struct_2(Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 41539i, -53796i), vec3<i32>(13666i, 16103i, -18991i)), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-64202i, 2147483647i, -10094i), vec3<i32>(3645i, 49995i, 28807i)), func_1(Struct_1(vec4<i32>(1i, 2147483647i, 22901i, -30241i), true, 1944f))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(49402u, u_input.b, 0u)) >= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 0u, u_input.b), vec4<u32>(25213u, 75441u, u_input.b, 47904u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(816f + 336f)))), Struct_1(~vec4<i32>(-2147483647i, 22610i, -1i, -14314i) << (select(vec4<u32>(1u, u_input.b, u_input.a, 0u), vec4<u32>(57708u, 0u, u_input.a, 42149u), true) % vec4<u32>(32u)), false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -841f), -533f, true))), -2147483647i), Struct_3(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(false, true)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)))), Struct_1(~firstTrailingBit(vec4<i32>(-1i, -20212i, -2147483647i, -11091i)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-959f, 508f)))), vec3<i32>(1i, countOneBits(1i), firstLeadingBit(min(-22566i, -23238i)))), vec2<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(firstLeadingBit(vec2<i32>(-2147483647i, 43190i))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-25343i, 1i) >> (vec2<u32>(0u, u_input.b) % vec2<u32>(32u)), vec2<i32>(1i, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(-66497i, 5541i), vec2<i32>(-43586i, -1i)))), firstLeadingBit(~2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(157f, firstTrailingBit(var_0.b.a.x), select(~vec2<u32>(_wgslsmith_add_u32(u_input.b, u_input.a), 93193u), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.b, 4294967295u) << (vec2<u32>(u_input.a, u_input.b) % vec2<u32>(32u)))), !(!(!vec2<bool>(false, var_0.b.b)))), ~var_0.a.a.x);
}

