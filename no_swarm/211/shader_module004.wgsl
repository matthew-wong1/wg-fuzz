struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    global0 = ~(~abs(~vec4<u32>(u_input.c.x, 0u, 89151u, arg_0.x)));
    global0 = vec4<u32>(~_wgslsmith_dot_vec2_u32(max(_wgslsmith_mod_vec2_u32(arg_0.wy, u_input.d.xx), _wgslsmith_mod_vec2_u32(vec2<u32>(29079u, u_input.d.x), global0.zx)), ~vec2<u32>(1u, 1u)), 31181u, ~abs(_wgslsmith_sub_u32(u_input.c.x, 36731u) >> ((u_input.c.x | 1u) % 32u)), _wgslsmith_div_u32(~_wgslsmith_mult_u32(35554u, _wgslsmith_div_u32(4294967295u, u_input.c.x)), _wgslsmith_add_u32(~_wgslsmith_mod_u32(arg_0.x, 3949u), 22275u)));
    let var_0 = firstTrailingBit(u_input.a.x);
    global0 = arg_0;
    let var_1 = vec2<bool>(true, true);
    return Struct_3(4294967295u, vec2<i32>(reverseBits(reverseBits(6473i) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, var_0, -9803i), u_input.a.zyx)), u_input.a.x), all(var_1));
}

fn func_3(arg_0: Struct_3) -> Struct_5 {
    global0 = abs(~(~abs(min(vec4<u32>(u_input.d.x, 5082u, u_input.c.x, u_input.c.x), vec4<u32>(global0.x, 4294967295u, 1u, 1u)))));
    var var_0 = Struct_2(vec4<u32>(4294967295u, 4294967295u, ~global0.x, ~46757u | arg_0.a), firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.a.x, _wgslsmith_div_i32(arg_0.b.x, -13580i), u_input.b, firstTrailingBit(u_input.b)))), max(~(~(~vec2<u32>(4294967295u, 15364u))), ~(~vec2<u32>(43331u, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(876f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(212f, -1608f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-664f + -2308f) + _wgslsmith_f_op_f32(348f + 604f)), _wgslsmith_f_op_f32(ceil(-1455f)))));
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(182f, var_0.d.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-444f, -195f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d.zz + var_0.d.zy))))));
    let var_2 = -u_input.b;
    var_0 = Struct_2(_wgslsmith_sub_vec4_u32(abs(countOneBits(vec4<u32>(4294967295u, var_0.a.x, arg_0.a, 0u) >> (vec4<u32>(arg_0.a, 0u, global0.x, 78734u) % vec4<u32>(32u)))), firstLeadingBit(var_0.a)), vec4<i32>(abs(reverseBits(u_input.a.x)), -48717i, -u_input.a.x, -63499i), ~vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(var_0.a.xz), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(4294967295u, var_0.a.x))), 1u), _wgslsmith_f_op_vec4_f32(select(var_0.d, _wgslsmith_f_op_vec4_f32(floor(var_0.d)), select(!vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c), vec4<bool>(all(vec2<bool>(false, arg_0.c)), arg_0.c, true, arg_0.c || true), select(select(vec4<bool>(false, false, arg_0.c, false), vec4<bool>(true, arg_0.c, false, arg_0.c), arg_0.c), vec4<bool>(arg_0.c, false, arg_0.c, false), vec4<bool>(true, true, true, true))))));
    return Struct_5(vec3<bool>(true, true, true), Struct_1(-3479i), _wgslsmith_mod_vec3_u32(select(u_input.d, ~u_input.d, !vec3<bool>(true, arg_0.c, false)), var_0.a.zxy) >> (var_0.a.xyy % vec3<u32>(32u)), _wgslsmith_f_op_f32(-var_1.x));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<u32>) -> vec3<bool> {
    let var_0 = u_input.a.yx;
    global0 = _wgslsmith_add_vec4_u32(~arg_1, ~(~(~vec4<u32>(u_input.d.x, 1u, 0u, arg_0.c.x))));
    let var_1 = arg_0.c.x;
    var var_2 = Struct_3(countOneBits(firstTrailingBit(~1u) & ~(~arg_1.x)), u_input.a.wy, arg_0.a.x);
    let var_3 = Struct_5(arg_0.a, arg_0.b, _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_div_u32(53115u, 1u), 45753u, ~0u)), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(23050u, 0u, 0u), arg_0.c.x ^ 55944u, min(77133u, 51022u)), ~reverseBits(7848u), arg_1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-889f)) * -822f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(313f + -696f))))));
    return func_3(Struct_3(var_3.c.x, vec2<i32>(0i << (u_input.c.x % 32u), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.x, -55467i), 1i)), !func_2(arg_1).c)).a;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<u32>, arg_3: vec4<u32>) -> Struct_4 {
    global0 = _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, u_input.d.x, 4294967295u, 1u << (_wgslsmith_add_u32(0u, ~u_input.c.x) % 32u)), ~vec4<u32>(~(~62280u), ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, 1u, arg_2.x, arg_1) >> (vec4<u32>(4294967295u, u_input.c.x, 43309u, global0.x) % vec4<u32>(32u)), arg_3), ~1u));
    global0 = vec4<u32>(arg_1, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(2916u, ~87313u, countOneBits(4294967295u)), ~vec3<u32>(4294967295u, 15094u, arg_2.x)), u_input.d), arg_2.x, _wgslsmith_dot_vec3_u32(~select(vec3<u32>(arg_1, 37258u, 0u), vec3<u32>(arg_3.x, arg_3.x, arg_2.x) ^ vec3<u32>(arg_2.x, global0.x, arg_2.x), all(vec2<bool>(true, true))), ~arg_3.wxw));
    var var_0 = select(select(vec3<bool>(arg_0, all(select(vec2<bool>(false, false), vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0))), !(!arg_0)), vec3<bool>(true, true, any(vec4<bool>(true, arg_0, arg_0, true)) && true), arg_1 <= countOneBits(~global0.x)), !vec3<bool>(arg_0 & true, !all(vec2<bool>(false, false)), true), func_4(func_3(func_2(~arg_3)), max(abs(countOneBits(arg_3)), max(select(vec4<u32>(1u, 16515u, arg_3.x, 4294967295u), arg_3, vec4<bool>(arg_0, arg_0, true, true)), vec4<u32>(u_input.c.x, arg_2.x, global0.x, 0u)))));
    global0 = ~countOneBits(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 138u), global0.xz), ~(~arg_3.x), _wgslsmith_clamp_u32(min(0u, 4294967295u), min(1u, 3642u), ~global0.x), u_input.c.x));
    var var_1 = -u_input.a >> (~(~vec4<u32>(~arg_3.x, 9107u, ~1871u, ~arg_1)) % vec4<u32>(32u));
    return Struct_4(vec2<u32>(~1u, max(u_input.c.x, ~(u_input.d.x >> (arg_1 % 32u)))), Struct_3(_wgslsmith_dot_vec2_u32(arg_3.yz, global0.xx), (firstLeadingBit(vec2<i32>(var_1.x, -1871i)) | var_1.yz) | -select(u_input.a.yw, var_1.xy, var_0.zz), true));
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: vec2<u32>) -> f32 {
    var var_0 = Struct_2(max(max((vec4<u32>(arg_2.x, 4294967295u, 24562u, 97844u) & vec4<u32>(u_input.c.x, 44124u, 58710u, 34052u)) ^ vec4<u32>(arg_2.x, 24310u, arg_2.x, 1u), ~select(vec4<u32>(1u, 28872u, arg_0.b.a, arg_0.b.a), vec4<u32>(arg_0.b.a, global0.x, arg_2.x, arg_2.x), vec4<bool>(false, arg_0.b.c, arg_0.b.c, arg_0.b.c))), ~vec4<u32>(arg_0.b.a, 4294967295u, ~arg_0.a.x, ~arg_0.b.a)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, max(u_input.a.x, u_input.b), _wgslsmith_dot_vec3_i32(u_input.a.zzx, u_input.a.zwx)), vec4<i32>(11206i, _wgslsmith_div_i32(u_input.b, arg_1), -37859i, u_input.a.x)), reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, u_input.b, 3229i), vec3<i32>(arg_1, 2147483647i, arg_0.b.b.x)), 2147483647i, select(arg_0.b.b.x, arg_1, false), -2147483647i)), select(select(select(vec4<bool>(true, arg_0.b.c, arg_0.b.c, arg_0.b.c), vec4<bool>(true, arg_0.b.c, false, arg_0.b.c), vec4<bool>(true, false, arg_0.b.c, false)), !vec4<bool>(arg_0.b.c, true, arg_0.b.c, false), any(vec2<bool>(true, arg_0.b.c))), !(!vec4<bool>(false, arg_0.b.c, arg_0.b.c, false)), !select(vec4<bool>(arg_0.b.c, arg_0.b.c, false, true), vec4<bool>(arg_0.b.c, arg_0.b.c, arg_0.b.c, arg_0.b.c), false))), ~firstTrailingBit(~arg_2), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(381f, 707f, -2214f, -1010f) * vec4<f32>(429f, 1356f, -297f, -596f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-495f, 1562f, -939f, 1986f), vec4<f32>(465f, -887f, -406f, 1339f), vec4<bool>(arg_0.b.c, false, false, arg_0.b.c))))), vec4<f32>(-952f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1204f, 783f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-878f + 1379f), _wgslsmith_f_op_f32(floor(-1225f)))), _wgslsmith_f_op_f32(f32(-1f) * -2844f)), arg_0.b.c)));
    var var_1 = _wgslsmith_f_op_vec2_f32(var_0.d.zw * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.d.xy)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.d.x, var_0.d.x)))) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.d.x, var_0.d.x), _wgslsmith_f_op_vec2_f32(var_0.d.xz - vec2<f32>(-260f, var_0.d.x))))));
    global0 = ~(~_wgslsmith_sub_vec4_u32(var_0.a, ~vec4<u32>(arg_0.a.x, var_0.a.x, 4294967295u, u_input.c.x)));
    global0 = _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.c.x, var_0.c.x, var_0.a.x, 52572u) << ((vec4<u32>(76473u, 1947u, 1u, arg_2.x) | var_0.a) % vec4<u32>(32u))) | var_0.a, _wgslsmith_div_vec4_u32(var_0.a, vec4<u32>(~arg_2.x, func_3(arg_0.b).c.x, u_input.d.x | abs(arg_0.a.x), ~min(4294967295u, 1u))));
    var_1 = var_0.d.xw;
    return _wgslsmith_f_op_f32(sign(738f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(func_1(true, select(104717u, 23208u, false), vec3<u32>(1u, global0.x, u_input.c.x), select(vec4<u32>(global0.x, 4294967295u, 4294967295u, global0.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.d.x, 0u), vec4<bool>(true, true, false, false))), ~(-14832i), abs(vec2<u32>(u_input.c.x, 46258u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - _wgslsmith_f_op_f32(-1503f - 861f)))));
    var var_1 = func_2(~(_wgslsmith_mod_vec4_u32(select(vec4<u32>(1u, u_input.d.x, 4294967295u, u_input.c.x), vec4<u32>(1u, u_input.c.x, global0.x, global0.x), vec4<bool>(true, true, false, true)), min(vec4<u32>(4294967295u, global0.x, 61626u, global0.x), vec4<u32>(71269u, global0.x, 6531u, 1u))) & vec4<u32>(0u, ~95750u, global0.x, abs(u_input.c.x)))).a;
    let var_2 = func_3(func_1(true, reverseBits(u_input.c.x), vec3<u32>(~1u, ~29915u, func_1(true, u_input.d.x, global0.xxw, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 65714u, global0.x, u_input.c.x), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, global0.x))).b.a), ~vec4<u32>(~global0.x, countOneBits(50493u), _wgslsmith_clamp_u32(4294967295u, 1u, 4356u), ~1u)).b).a;
    global0 = abs(vec4<u32>(func_2(~vec4<u32>(u_input.d.x, 73465u, 38009u, 1u)).a, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(65454u, 1u, u_input.d.x, 37285u), vec4<u32>(4294967295u, 4294967295u, global0.x, global0.x)), min(global0.x, 4294967295u)), global0.x, countOneBits(global0.x) >> (~u_input.c.x % 32u))) << (vec4<u32>(~global0.x | 1u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global0.x, 1u, 16148u)) | u_input.c, u_input.c), u_input.c.x, global0.x) % vec4<u32>(32u));
    var_1 = 0u;
    let var_3 = func_3(Struct_3(global0.x, -u_input.a.yw, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), ~u_input.a);
}

