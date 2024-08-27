struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2) -> vec3<i32> {
    let var_0 = !select(vec4<bool>(-598f == _wgslsmith_f_op_f32(101f + arg_2.c.x), arg_2.b.x != 452u, all(vec4<bool>(true, false, false, true)), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)));
    let var_1 = var_0.xwy;
    var var_2 = ~u_input.a.xwz;
    var_2 = vec3<i32>(-u_input.a.x, -1i, -31054i);
    var_2 = select(arg_2.a.b.xwy, (arg_2.a.b.yyx << (vec3<u32>(select(32901u, 0u, var_0.x), firstTrailingBit(1u), 42755u) % vec3<u32>(32u))) | firstLeadingBit(abs(countOneBits(arg_2.a.b.zyx))), ~_wgslsmith_div_u32(reverseBits(u_input.c), select(u_input.c, 32863u, var_0.x)) <= ~27657u);
    return _wgslsmith_mod_vec3_i32(min(abs(u_input.a.yyw), min(vec3<i32>(_wgslsmith_add_i32(arg_0, arg_0), arg_2.a.b.x, -2147483647i), u_input.a.xyx)), countOneBits(~(arg_2.a.b.yzz & arg_2.a.b.xyz)) << (arg_1.xxw % vec3<u32>(32u)));
}

fn func_2(arg_0: i32, arg_1: Struct_5) -> bool {
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(20437i, arg_0, ~(~1i)), func_3(800i, ~_wgslsmith_mult_vec4_u32(vec4<u32>(96242u, u_input.c, 38260u, u_input.c), vec4<u32>(33726u, u_input.c, u_input.c, 1u)), Struct_2(Struct_1(u_input.a.x, u_input.a), ~vec2<u32>(4294967295u, u_input.c), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1172f, 264f), vec2<f32>(833f, 1014f), vec2<bool>(true, true))), -886f)) << (vec3<u32>(4294967295u, firstTrailingBit(~44718u), u_input.c) % vec3<u32>(32u)));
    var_0 = vec3<i32>(~0i, 25886i, firstTrailingBit(arg_1.a));
    return all(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, false, false)), !vec3<bool>(true, any(vec2<bool>(true, false)), true), true));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-378f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -242f)))) + vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -378f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-226f * -992f) + _wgslsmith_f_op_f32(793f - -1035f)), func_2(arg_0.b.x, Struct_5(-21950i)))), _wgslsmith_f_op_f32(1f * -2903f)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-252f, 791f), vec2<f32>(-1136f, 1949f))), vec2<f32>(1770f, var_0.x))))));
    var var_1 = Struct_4(Struct_2(arg_0, select(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c))), vec2<u32>(u_input.c, firstLeadingBit(u_input.c)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1320f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))) + _wgslsmith_f_op_f32(-var_0.x))));
    var var_2 = !vec2<bool>(2147483647i < _wgslsmith_div_i32(-19219i, ~arg_0.b.x), any(vec2<bool>(true, true)));
    let var_3 = vec2<f32>(-1420f, var_1.a.c.x);
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.c) * var_3), abs(reverseBits(~(-11965i))), abs(vec4<i32>(var_1.a.a.a, _wgslsmith_dot_vec3_i32(u_input.a.wwy, vec3<i32>(1i, 0i, 1i) >> (vec3<u32>(u_input.c, var_1.a.b.x, u_input.c) % vec3<u32>(32u))), arg_0.a, var_1.a.a.a)), arg_0.b.wwx);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: Struct_2) -> u32 {
    let var_0 = arg_1.a;
    var var_1 = Struct_5(6142i);
    var_1 = Struct_5(1i);
    var var_2 = !(all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)) & false);
    let var_3 = arg_3;
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(abs(_wgslsmith_clamp_u32(0u, u_input.c ^ 27993u, u_input.c)), ~firstTrailingBit(u_input.c), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, 39468u)), ~vec2<u32>(u_input.c, u_input.c)));
    var_0 = _wgslsmith_div_vec3_u32(~(~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, u_input.c, 21962u), vec3<u32>(13967u, 722u, var_0.x)), vec3<u32>(49119u, 2787u, var_0.x))), vec3<u32>(89958u, ~_wgslsmith_sub_u32(u_input.c, 0u), func_4(func_1(Struct_1(u_input.a.x, vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.b.x))), func_1(Struct_1(63590i, vec4<i32>(34705i, u_input.b.x, u_input.b.x, u_input.b.x))), -1i, Struct_2(Struct_1(u_input.b.x, vec4<i32>(1734i, u_input.a.x, 2147483647i, 0i)), var_0.xy, vec2<f32>(1127f, 1000f), -396f))) | ~(~vec3<u32>(3206u, 1u, u_input.c)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2547f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1091f * 1012f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-864f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -665f) + -128f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1806f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1070f + 240f), -1064f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-107f, 340f)), 1f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(269f)), _wgslsmith_f_op_f32(f32(-1f) * -1536f), true)))));
    let var_2 = ~(~_wgslsmith_mult_vec3_i32(~u_input.a.xxz, _wgslsmith_clamp_vec3_i32(countOneBits(u_input.a.yxw), u_input.a.zzz ^ u_input.a.wyw, -vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))));
    var_0 = _wgslsmith_mod_vec3_u32(min(firstLeadingBit(vec3<u32>(35695u, _wgslsmith_add_u32(var_0.x, var_0.x), ~var_0.x)), abs(vec3<u32>(_wgslsmith_mult_u32(1u, 3514u), 1u, 23820u))), select(reverseBits(_wgslsmith_add_vec3_u32(~vec3<u32>(42491u, 24829u, u_input.c), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(1u, var_0.x, 1u)))), ~select(vec3<u32>(var_0.x, 1u, u_input.c), vec3<u32>(var_0.x, u_input.c, 1u), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)), vec3<bool>(true, true, true)));
    let var_3 = var_1.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_3)), var_3, _wgslsmith_f_op_f32(f32(-1f) * -1958f), _wgslsmith_f_op_f32(var_1.x * -716f)), _wgslsmith_f_op_vec4_f32(-var_1)) * _wgslsmith_f_op_vec4_f32(-var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<i32>(abs(-1i & var_2.x), 1i)), ~0u);
}

