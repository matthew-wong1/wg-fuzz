struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_2) -> i32 {
    var var_0 = arg_2.a;
    let var_1 = !arg_2.b.xz;
    var var_2 = Struct_2(arg_2.d, arg_2.b, !(arg_1.x < 1u), Struct_1(_wgslsmith_dot_vec2_u32(~(~arg_2.d.d.zz), ~vec2<u32>(12066u, arg_1.x) & abs(var_0.d.xy)), -2147483647i, _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), u_input.b), arg_2.a.c), min(~vec4<u32>(var_0.d.x, 32676u, 22763u, arg_2.d.a), _wgslsmith_clamp_vec4_u32(~arg_2.d.d, min(vec4<u32>(arg_2.d.a, 34866u, arg_2.a.d.x, 4839u), arg_2.a.d), arg_1))));
    var var_3 = Struct_1(var_0.d.x << (~_wgslsmith_sub_u32(30056u << (arg_2.d.d.x % 32u), ~var_2.d.d.x) % 32u), var_2.a.c.x, var_0.c, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, _wgslsmith_sub_u32(var_0.d.x, 3256u), 4294967295u, ~arg_2.a.a), _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.x, 71354u, var_2.a.a, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, arg_1.x, arg_1.x), vec4<u32>(arg_2.d.a, 29371u, 1u, var_2.d.d.x)), min(var_0.d, vec4<u32>(arg_2.a.d.x, arg_1.x, arg_1.x, 47254u))), ~(~vec4<u32>(arg_1.x, 2814u, 22339u, 43410u))));
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-260f, -641f)))), -651f, var_1.x));
    return ~(-64994i);
}

fn func_2(arg_0: vec4<f32>) -> bool {
    let var_0 = false || !(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -28122i, u_input.a, u_input.c), vec4<i32>(-36685i, u_input.b.x, -3236i, u_input.b.x) << (vec4<u32>(45281u, 1u, 26865u, 51616u) % vec4<u32>(32u))) >= u_input.c);
    var var_1 = Struct_1(0u, func_3(vec2<bool>(!var_0, var_0), ~reverseBits(~vec4<u32>(0u, 0u, 0u, 19534u)), Struct_2(Struct_1(4294967295u, u_input.a >> (53038u % 32u), select(vec2<i32>(-35475i, u_input.b.x), u_input.b, var_0), vec4<u32>(1u, 1u, 1u, 1u)), vec3<bool>(var_0, var_0, !var_0), any(vec4<bool>(true, var_0, true, var_0)) | var_0, Struct_1(0u, firstLeadingBit(u_input.a), u_input.b, vec4<u32>(0u, 1403u, 4294967295u, 794u)))), ~vec2<i32>(-32137i, 58624i) | _wgslsmith_add_vec2_i32(u_input.b, u_input.b), ~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))));
    var_1 = Struct_1(var_1.d.x, abs(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, -21590i), var_1.c.x, 1i)) | ~var_1.c.x, vec2<i32>(u_input.c, 1i), vec4<u32>(min(71648u, _wgslsmith_sub_u32(~var_1.a, _wgslsmith_mult_u32(var_1.a, 12542u))), var_1.a, reverseBits(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, var_1.a, 32887u), max(vec3<u32>(1u, 42226u, 1u), var_1.d.xyz)) ^ var_1.a));
    var var_2 = _wgslsmith_f_op_f32(trunc(-1097f));
    return var_0;
}

fn func_4(arg_0: bool) -> f32 {
    var var_0 = any(!select(vec2<bool>(select(false, true, false), true), select(!vec2<bool>(true, arg_0), vec2<bool>(arg_0, true), func_2(vec4<f32>(1537f, 1215f, -805f, 172f))), any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), arg_0))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(547f, 191f)) - _wgslsmith_div_vec2_f32(vec2<f32>(685f, 665f), vec2<f32>(-493f, 1991f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-644f, 1089f), vec2<f32>(260f, 601f)))))));
    let var_2 = ~(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(56175u, 40532u, 4294967295u, 72030u)), ~vec4<u32>(1u, 1u, 1u, 1u)) & _wgslsmith_add_vec4_u32(select(vec4<u32>(32820u, 58975u, 63906u, 62215u), firstTrailingBit(vec4<u32>(1u, 67268u, 94836u, 66660u)), vec4<bool>(true, true, true, true)), vec4<u32>(40410u, 1u, 1u, 4294967295u) << (select(vec4<u32>(16638u, 71804u, 59422u, 12232u), vec4<u32>(0u, 1u, 4294967295u, 14185u), false) % vec4<u32>(32u))));
    let var_3 = Struct_1(~(~_wgslsmith_dot_vec3_u32(select(var_2.wyw, var_2.zxx, vec3<bool>(arg_0, true, arg_0)), var_2.zzw)), u_input.a, vec2<i32>(-2147483647i, max(u_input.c, countOneBits(0i))), ~(~(~(~var_2))));
    return 614f;
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = vec4<f32>(-1775f, _wgslsmith_f_op_f32(min(963f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1087f, 793f))))), 945f, _wgslsmith_f_op_f32(func_4(func_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -751f), _wgslsmith_f_op_f32(max(2455f, 1000f)), _wgslsmith_f_op_f32(trunc(625f)), _wgslsmith_f_op_f32(abs(-2654f)))))));
    let var_1 = Struct_2(Struct_1(~38021u, ~u_input.b.x, -(u_input.b >> (vec2<u32>(6229u, 40374u) % vec2<u32>(32u))), (_wgslsmith_clamp_vec4_u32(vec4<u32>(49297u, 60091u, 4294967295u, 35478u), vec4<u32>(45227u, 4294967295u, 1u, 0u), vec4<u32>(0u, 4294967295u, 0u, 32658u)) ^ vec4<u32>(1u, 1u, 1u, 1u)) >> (vec4<u32>(1u, 1u, ~25599u, ~4294967295u) % vec4<u32>(32u))), !(!select(vec3<bool>(true, arg_0, true), vec3<bool>(false, false, false), !vec3<bool>(arg_0, arg_0, true))), arg_0, Struct_1(1u, u_input.a, -vec2<i32>(func_3(vec2<bool>(arg_0, arg_0), vec4<u32>(39574u, 73134u, 26662u, 0u), Struct_2(Struct_1(3842u, -18666i, u_input.b, vec4<u32>(4294967295u, 1u, 4294967295u, 0u)), vec3<bool>(false, true, arg_0), arg_0, Struct_1(1u, u_input.c, vec2<i32>(12880i, 1i), vec4<u32>(0u, 63625u, 56482u, 0u)))), 0i), _wgslsmith_clamp_vec4_u32(min(reverseBits(vec4<u32>(15277u, 13153u, 4294967295u, 1u)), abs(vec4<u32>(65230u, 98679u, 0u, 12258u))), firstTrailingBit(~vec4<u32>(37019u, 0u, 0u, 0u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 0u, 5578u), vec4<u32>(0u, 104589u, 21707u, 0u), vec4<u32>(1u, 1u, 1u, 1u)))));
    var var_2 = _wgslsmith_add_u32(var_1.d.d.x, _wgslsmith_add_u32(0u, var_1.d.a));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~countOneBits(~var_1.a.d), vec4<u32>(~reverseBits(var_1.d.a), ~_wgslsmith_mult_u32(var_1.d.a, 4294967295u), var_1.a.d.x ^ var_1.d.d.x, max(1u, var_1.a.a))), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.d.x, _wgslsmith_add_u32(var_1.d.d.x, var_1.d.a), var_1.a.a, _wgslsmith_mult_u32(14655u, _wgslsmith_div_u32(10491u, 9718u))), vec4<u32>(var_1.a.a, ~_wgslsmith_clamp_u32(0u, 10021u, var_1.d.d.x), ~0u, abs(1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1u, 0i << (func_1(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false))) % 32u), firstTrailingBit(firstLeadingBit(u_input.b & vec2<i32>(u_input.b.x, u_input.b.x))) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), abs(vec4<u32>(abs(~22280u), 7102u, ~(~21274u), abs(1u))));
    var var_1 = Struct_2(var_0, select(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(var_0.a != 3619u, all(vec3<bool>(false, false, false)), true), true), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), any(vec2<bool>(true, true))), select(true, !all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), !all(vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_clamp_u32(var_0.a >> (var_0.a % 32u), var_0.a, ~0u & ~var_0.d.x), ~u_input.b.x, vec2<i32>(var_0.c.x, ~2147483647i), vec4<u32>(~(~var_0.a), var_0.a, ~(~var_0.d.x), var_0.a)));
    let var_2 = vec4<i32>(1i, _wgslsmith_mod_i32(-4630i, min(reverseBits(-20326i) ^ max(var_0.b, 14745i), 0i)), -2147483647i, var_1.d.b);
    var_1 = Struct_2(var_1.d, vec3<bool>(var_1.b.x, true, true), var_1.c, Struct_1(~(~52350u), var_1.a.c.x, _wgslsmith_add_vec2_i32(select(var_2.yx, var_2.xw, vec2<bool>(var_1.c, true)), var_2.yw) & _wgslsmith_mult_vec2_i32(var_0.c, var_0.c), _wgslsmith_mod_vec4_u32(var_1.a.d, abs(vec4<u32>(var_0.d.x, 0u, var_0.a, 49130u)))));
    var var_3 = abs(~(~(~var_0.d)));
    var var_4 = -64896i;
    var var_5 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(min(-9729i << (_wgslsmith_dot_vec3_u32(reverseBits(var_3.yxx), ~var_3.yxz) % 32u), var_2.x), 7331i, _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(var_0.d.x, var_1.a.a), _wgslsmith_add_u32(4294967295u, var_1.a.a), 44127u << (1u % 32u), 1u)), var_1.a.d), ~vec2<u32>(select(var_3.x, firstTrailingBit(0u), false), ~(~0u)), i32(-1i) * -1i);
}

