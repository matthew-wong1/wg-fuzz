struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: Struct_2,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(4294967295u, Struct_1(vec4<u32>(0u, 1u, 25248u, 31557u), -59574i, vec3<u32>(4294967295u, 0u, 1u), vec3<bool>(false, false, true), vec4<bool>(false, true, true, false)), true, vec3<u32>(1u, 1u, 45640u)), Struct_2(1u, Struct_1(vec4<u32>(25321u, 13012u, 27638u, 83064u), -63794i, vec3<u32>(33351u, 51282u, 0u), vec3<bool>(true, true, false), vec4<bool>(true, true, false, true)), false, vec3<u32>(0u, 0u, 12909u)), Struct_2(54651u, Struct_1(vec4<u32>(0u, 4294967295u, 31298u, 4294967295u), 2147483647i, vec3<u32>(13063u, 4294967295u, 0u), vec3<bool>(true, true, true), vec4<bool>(true, false, false, true)), true, vec3<u32>(37679u, 52883u, 10042u)), Struct_2(1u, Struct_1(vec4<u32>(38570u, 8385u, 1u, 47468u), -3451i, vec3<u32>(26296u, 1u, 4294967295u), vec3<bool>(true, false, true), vec4<bool>(false, true, false, true)), true, vec3<u32>(36959u, 1u, 5076u)), Struct_2(2788u, Struct_1(vec4<u32>(1u, 0u, 76387u, 0u), 0i, vec3<u32>(16117u, 109599u, 4294967295u), vec3<bool>(true, false, true), vec4<bool>(false, true, false, true)), true, vec3<u32>(1u, 4294967295u, 48116u)), Struct_2(30226u, Struct_1(vec4<u32>(0u, 36100u, 25340u, 19594u), 55470i, vec3<u32>(1u, 1159u, 4294967295u), vec3<bool>(false, true, false), vec4<bool>(true, false, true, true)), true, vec3<u32>(79536u, 1u, 3498u)), Struct_2(1u, Struct_1(vec4<u32>(4294967295u, 1337u, 4294967295u, 16701u), 1i, vec3<u32>(9411u, 22488u, 26192u), vec3<bool>(false, true, false), vec4<bool>(false, false, true, true)), false, vec3<u32>(0u, 1u, 0u)), Struct_2(0u, Struct_1(vec4<u32>(37951u, 96862u, 56346u, 82204u), 2147483647i, vec3<u32>(0u, 0u, 14355u), vec3<bool>(true, true, true), vec4<bool>(false, true, false, true)), true, vec3<u32>(57267u, 4294967295u, 45418u)), Struct_2(4294967295u, Struct_1(vec4<u32>(0u, 7696u, 4294967295u, 0u), 11150i, vec3<u32>(62632u, 25782u, 4294967295u), vec3<bool>(false, true, true), vec4<bool>(true, true, false, true)), false, vec3<u32>(19205u, 4294967295u, 40957u)), Struct_2(4294967295u, Struct_1(vec4<u32>(1u, 58529u, 30422u, 56932u), -16018i, vec3<u32>(0u, 37724u, 1u), vec3<bool>(true, false, true), vec4<bool>(true, false, false, false)), true, vec3<u32>(0u, 12214u, 24344u)), Struct_2(1u, Struct_1(vec4<u32>(33124u, 16615u, 4294967295u, 3056u), i32(-2147483648), vec3<u32>(4294967295u, 29725u, 27590u), vec3<bool>(false, true, true), vec4<bool>(false, true, true, false)), false, vec3<u32>(0u, 39436u, 1u)), Struct_2(4294967295u, Struct_1(vec4<u32>(1u, 1u, 1u, 0u), -1i, vec3<u32>(33060u, 48089u, 1u), vec3<bool>(true, true, true), vec4<bool>(true, true, true, false)), true, vec3<u32>(5749u, 49477u, 45950u)), Struct_2(4294967295u, Struct_1(vec4<u32>(58017u, 21399u, 44045u, 1u), -1i, vec3<u32>(1u, 0u, 0u), vec3<bool>(true, true, true), vec4<bool>(false, true, true, false)), true, vec3<u32>(28817u, 4294967295u, 33515u)), Struct_2(4294967295u, Struct_1(vec4<u32>(8526u, 42495u, 1u, 6921u), -2401i, vec3<u32>(4294967295u, 28095u, 37045u), vec3<bool>(false, false, false), vec4<bool>(false, false, true, false)), false, vec3<u32>(1u, 0u, 63881u)), Struct_2(1u, Struct_1(vec4<u32>(12317u, 7360u, 60183u, 43429u), -39128i, vec3<u32>(45271u, 102098u, 29719u), vec3<bool>(false, false, false), vec4<bool>(false, false, false, true)), false, vec3<u32>(0u, 50053u, 1u)), Struct_2(0u, Struct_1(vec4<u32>(90900u, 49340u, 107648u, 9949u), 1790i, vec3<u32>(4294967295u, 31180u, 0u), vec3<bool>(true, true, true), vec4<bool>(false, false, false, false)), false, vec3<u32>(65132u, 9795u, 4294967295u)), Struct_2(119898u, Struct_1(vec4<u32>(22456u, 1u, 4294967295u, 0u), 24479i, vec3<u32>(0u, 56565u, 0u), vec3<bool>(false, true, true), vec4<bool>(false, true, true, false)), true, vec3<u32>(79781u, 16500u, 0u)), Struct_2(0u, Struct_1(vec4<u32>(1u, 25u, 1u, 39543u), i32(-2147483648), vec3<u32>(0u, 1u, 4294967295u), vec3<bool>(true, true, true), vec4<bool>(true, false, false, false)), true, vec3<u32>(69648u, 1u, 4294967295u)), Struct_2(59212u, Struct_1(vec4<u32>(1u, 1u, 1u, 19313u), 19995i, vec3<u32>(27608u, 4294967295u, 49614u), vec3<bool>(false, false, false), vec4<bool>(false, true, true, false)), false, vec3<u32>(2267u, 1u, 51602u)), Struct_2(67739u, Struct_1(vec4<u32>(1u, 0u, 4294967295u, 9384u), 24240i, vec3<u32>(9644u, 4294967295u, 4294967295u), vec3<bool>(true, false, true), vec4<bool>(false, false, false, false)), false, vec3<u32>(22471u, 44204u, 137409u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(690f, arg_0.x));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(704f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(360f * 123f)))))))));
    let var_2 = Struct_2(~(~(~0u)), Struct_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 0u, 41138u, u_input.a) << (u_input.b % vec4<u32>(32u)), ~u_input.b), u_input.d, ~vec3<u32>(~u_input.e, ~u_input.c, _wgslsmith_mult_u32(u_input.e, 4294967295u)), select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(true, true, true), !vec3<bool>(true, true, arg_1)), select(!vec4<bool>(arg_1, true, false, true), !select(vec4<bool>(arg_1, true, false, false), vec4<bool>(arg_1, true, true, false), arg_1), select(!vec4<bool>(true, arg_1, arg_1, true), select(vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(true, false, arg_1, true), arg_1), arg_1))), 0i > -_wgslsmith_mult_i32(countOneBits(u_input.d), -18132i), u_input.b.zyz);
    let var_3 = all(vec2<bool>(var_2.c, true));
    var_0 = -1733f;
    return vec3<u32>(_wgslsmith_div_u32(62160u, 1u), _wgslsmith_mod_u32(select(~_wgslsmith_dot_vec3_u32(u_input.b.zxz, var_2.d), _wgslsmith_dot_vec4_u32(var_2.b.a, _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(16336u, 0u, u_input.b.x, var_2.d.x))), arg_1), firstTrailingBit(~(~1u))), var_2.b.a.x);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: f32) -> bool {
    var var_0 = Struct_2(1u, Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b.wxy, u_input.b.xwx), u_input.e, u_input.a, 4294967295u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(21062i, arg_0) ^ vec2<i32>(-21034i, arg_0), -vec2<i32>(-29950i, arg_0)), u_input.b.yzz, vec3<bool>(true, true, true), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true))), select(all(vec3<bool>(false, true, false)) & true, _wgslsmith_add_u32(u_input.c, u_input.e) < 38948u, true), firstLeadingBit(_wgslsmith_clamp_vec3_u32(~func_3(vec4<f32>(257f, arg_2, arg_1, -416f), false), ~(u_input.b.xxw | vec3<u32>(u_input.e, u_input.e, 16804u)), max(abs(u_input.b.xwx), min(vec3<u32>(u_input.c, u_input.b.x, 38315u), u_input.b.yzx)))));
    var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~abs(var_0.b.c), u_input.b.xwx), 20u)];
    var var_1 = 1u;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-276f, 625f))))), _wgslsmith_f_op_f32(-arg_2)));
    var var_3 = false;
    return var_0.b.e.x;
}

fn func_1() -> u32 {
    let var_0 = vec2<bool>(!(!(!(u_input.d >= 7465i))), true);
    var var_1 = Struct_1(~firstTrailingBit(countOneBits(u_input.b)), ~u_input.d, u_input.b.wzw, vec3<bool>(select(true, all(vec3<bool>(var_0.x, false, true)), min(u_input.d, u_input.d) >= (u_input.d & 2147483647i)), var_0.x, ~min(34933u, u_input.c) == _wgslsmith_div_u32(~4294967295u, u_input.c)), select(select(select(select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(true, false, true, false)), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x), vec4<bool>(true == var_0.x, any(vec4<bool>(var_0.x, var_0.x, true, true)), true, true), !(!vec4<bool>(var_0.x, true, true, var_0.x))), vec4<bool>(!var_0.x, true, var_0.x | true, true), select(vec4<bool>(func_2(-8075i, -325f, -2081f), u_input.e == 0u, var_0.x | var_0.x, var_0.x), select(!vec4<bool>(false, false, var_0.x, false), select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false), var_0.x), vec4<bool>(var_0.x, true, var_0.x, false)), 1i <= _wgslsmith_clamp_i32(u_input.d, 2147483647i, u_input.d))));
    var var_2 = 221f;
    let var_3 = u_input.b;
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec3<bool>(true, !(!(u_input.d >= 1i)), true));
    let var_1 = u_input.b.yy;
    var var_2 = Struct_4(var_1.x != func_1(), ~(~0i), vec3<bool>(false, var_0, all(vec4<bool>(var_0, true, false, false)) && false), Struct_2(34593u, Struct_1(u_input.b, 1i, u_input.b.xxx, vec3<bool>(!var_0, false, true), vec4<bool>(true, false, false, -5553i <= u_input.d)), false, _wgslsmith_sub_vec3_u32(u_input.b.zwx, u_input.b.wyx)), Struct_3(u_input.d, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 133f)))))), global0[_wgslsmith_index_u32(0u, 20u)], u_input.d, global0[_wgslsmith_index_u32(u_input.a, 20u)]));
    var var_3 = 1000f;
    var_2 = Struct_4(all(var_2.e.c.b.e), -u_input.d, vec3<bool>(any(vec2<bool>(select(var_2.c.x, var_2.a, true), var_2.e.b.x > -1246f)), true, false), var_2.e.c, var_2.e);
    var_3 = var_2.e.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(min(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.e.c.a, u_input.c), u_input.b.xy), _wgslsmith_div_u32(15977u, u_input.c)), _wgslsmith_mod_u32(66391u, var_1.x & 100461u), _wgslsmith_dot_vec3_u32(vec3<u32>(4628u, 15136u, u_input.b.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(3020u, u_input.c, u_input.b.x), var_2.d.b.a.yyx, u_input.b.xyx)), _wgslsmith_sub_u32(~u_input.e, ~15425u)) & u_input.b, _wgslsmith_mult_vec2_u32(vec2<u32>(max(var_2.e.e.a, func_3(vec4<f32>(-567f, 1173f, 1371f, var_2.e.b.x), true).x), 38484u), ~var_2.d.d.zz), ~(~vec2<u32>(reverseBits(var_2.d.b.c.x), u_input.a)));
}

