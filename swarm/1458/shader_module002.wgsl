struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>) -> f32 {
    var var_0 = select(select(vec3<bool>(any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), true, any(!arg_0)), vec3<bool>(!(!arg_0.x), arg_0.x, all(select(vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)))), arg_0.x), vec3<bool>(true, arg_0.x, all(!arg_0)), true);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(298f - _wgslsmith_f_op_f32(f32(-1f) * -1843f)) + 685f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -148f)))), _wgslsmith_f_op_f32(-996f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(362f + -1253f) - _wgslsmith_f_op_f32(ceil(1290f))))), arg_1.x < arg_1.x));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(func_3(select(vec2<bool>(true, true), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), false))), vec2<u32>(~(~1u), ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(56400u, 0u), vec2<u32>(1u, 0u), vec2<bool>(true, true)), vec2<u32>(1u, 1u)))));
    let var_1 = Struct_2(_wgslsmith_dot_vec4_i32(-u_input.a, ~select(u_input.a, vec4<i32>(u_input.c, 39941i, -26018i, 11309i), vec4<bool>(true, true, true, true))), Struct_1(any(vec3<bool>(true, true, all(vec4<bool>(false, true, false, false)))), vec2<u32>(1u, 1u), ~13662u, !(!select(vec2<bool>(true, true), vec2<bool>(false, true), true))), Struct_1(all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), false))), vec2<u32>(firstTrailingBit(reverseBits(64280u)), abs(25499u)), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(8349u, 43286u, 35661u), vec3<u32>(94913u, 4294967295u, 24397u)) | 4294967295u), select(vec2<bool>(true, u_input.d <= u_input.c), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), true), select(vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2103f), _wgslsmith_f_op_f32(-356f - -372f), !(u_input.c != 0i))), 1230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -623f))));
    let var_2 = var_1.b;
    let var_3 = any(!vec2<bool>(!all(vec4<bool>(false, true, var_1.c.a, false)), all(select(vec4<bool>(true, true, false, var_2.d.x), vec4<bool>(var_1.b.d.x, false, var_1.b.d.x, true), vec4<bool>(false, true, true, var_1.b.a)))));
    let var_4 = var_1;
    return var_1.d.x;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    var var_0 = i32(-1i) * -2147483647i;
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(arg_0 * 1062f))) == 323f, _wgslsmith_mult_vec2_u32(arg_2.c.b, arg_3.b), _wgslsmith_mult_u32(arg_2.c.b.x, ~(~arg_2.b.c >> (14029u % 32u))), arg_2.c.d);
    var_0 = _wgslsmith_mod_i32(21517i, countOneBits(arg_2.a)) ^ u_input.b.x;
    let var_2 = Struct_1(!(_wgslsmith_div_f32(arg_0, arg_2.d.x) < -1491f) & false, vec2<u32>(firstLeadingBit(_wgslsmith_add_u32(arg_2.c.c, var_1.b.x)), _wgslsmith_sub_u32(58761u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, arg_3.c, 4294967295u), vec4<u32>(arg_2.c.b.x, arg_3.c, 0u, arg_2.b.c)), ~arg_2.c.b.x))), ~_wgslsmith_sub_u32(arg_2.b.c, ~arg_3.c), !select(select(select(arg_3.d, arg_3.d, var_1.d), !arg_2.b.d, !var_1.d.x), vec2<bool>(var_1.a, all(vec4<bool>(arg_2.b.d.x, arg_2.b.d.x, arg_2.c.d.x, true))), var_1.a));
    var_1 = Struct_1(false, vec2<u32>(4294967295u, ~_wgslsmith_sub_u32(arg_3.b.x, arg_3.c)), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1.c, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_2.b.b.x), vec2<u32>(4294967295u, arg_3.b.x))), max(reverseBits(arg_2.c.b.x), _wgslsmith_clamp_u32(4294967295u, var_1.b.x, arg_2.c.c))), !vec2<bool>(-8945i <= _wgslsmith_sub_i32(u_input.d, 2147483647i), true));
    return Struct_2(~(~_wgslsmith_mod_i32(4679i, arg_2.a) | firstLeadingBit(~arg_2.a)), Struct_1(true, ~reverseBits(arg_2.b.b), _wgslsmith_mod_u32(var_1.b.x, firstLeadingBit(4294967295u) | ~arg_3.b.x), select(select(vec2<bool>(true, arg_3.d.x), select(arg_2.c.d, arg_3.d, true), select(var_1.d, var_1.d, true)), !select(vec2<bool>(false, var_1.a), vec2<bool>(true, false), vec2<bool>(true, arg_3.d.x)), true)), Struct_1(all(arg_3.d), firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_2.b.b.x), ~vec2<u32>(arg_2.c.c, 4294967295u))), 10669u, !select(select(vec2<bool>(true, false), vec2<bool>(var_2.a, false), vec2<bool>(arg_3.d.x, var_1.d.x)), select(arg_2.c.d, vec2<bool>(true, var_1.d.x), arg_2.b.d), vec2<bool>(arg_2.b.d.x, false))), vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1349f), -1118f));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(562f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.d.x)))) * -311f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), -116f), Struct_2(abs(~reverseBits(arg_0.a)), Struct_1(any(!vec3<bool>(false, false, arg_0.c.d.x)), arg_1.b.b, 1u, select(!arg_0.c.d, !arg_0.b.d, arg_0.c.a)), Struct_1(false, ~max(vec2<u32>(48776u, 0u), arg_0.b.b), arg_0.c.b.x, arg_0.b.d), _wgslsmith_f_op_vec3_f32(-arg_1.d)), Struct_1(all(select(vec4<bool>(true, true, false, arg_1.b.d.x), select(vec4<bool>(arg_1.b.a, arg_0.b.d.x, true, false), vec4<bool>(false, false, true, arg_1.b.d.x), vec4<bool>(true, arg_1.c.a, arg_0.b.a, arg_1.c.a)), vec4<bool>(true, arg_1.b.d.x, false, arg_0.c.d.x))), ~(~arg_1.b.b), _wgslsmith_clamp_u32(arg_0.b.b.x, ~1u, ~arg_1.b.b.x), !select(select(vec2<bool>(false, false), vec2<bool>(arg_1.c.d.x, arg_0.b.d.x), arg_1.b.d), !vec2<bool>(arg_1.c.d.x, arg_1.b.a), arg_0.d.x > arg_1.d.x)));
    let var_1 = vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(var_0.b.d.x, var_0.c.a), false)), !all(!vec4<bool>(arg_0.b.a, arg_1.b.d.x, arg_1.b.a, arg_1.b.d.x)));
    var var_2 = vec3<u32>(~31116u, 4294967295u, arg_1.c.c);
    var var_3 = -1i & _wgslsmith_mod_i32(arg_1.a, ~(~arg_0.a));
    let var_4 = var_0.d.x;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, vec2<u32>(1u, max(1u, _wgslsmith_add_u32(1u, func_1(Struct_2(u_input.c, Struct_1(true, vec2<u32>(0u, 54379u), 1u, vec2<bool>(true, false)), Struct_1(true, vec2<u32>(31416u, 4294967295u), 0u, vec2<bool>(false, false)), vec3<f32>(425f, -345f, 561f)), Struct_2(u_input.d, Struct_1(false, vec2<u32>(28283u, 0u), 51704u, vec2<bool>(false, false)), Struct_1(false, vec2<u32>(0u, 1u), 1u, vec2<bool>(false, false)), vec3<f32>(-208f, 124f, 148f)))))), select(~select(func_4(-1311f, 332f, Struct_2(u_input.c, Struct_1(false, vec2<u32>(12102u, 53u), 26954u, vec2<bool>(true, false)), Struct_1(true, vec2<u32>(0u, 13712u), 4294967295u, vec2<bool>(false, true)), vec3<f32>(-2226f, -1097f, 2855f)), Struct_1(true, vec2<u32>(57778u, 1u), 1u, vec2<bool>(true, true))).c.c, 1u, true), 4294967295u, true), vec2<bool>(true, !(true || all(vec3<bool>(false, true, false)))));
    var var_1 = func_4(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.d, ~select(vec2<u32>(65903u, 51537u), var_0.b, var_0.a)))), func_4(_wgslsmith_f_op_f32(min(892f, _wgslsmith_f_op_f32(454f + -340f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -158f)) + _wgslsmith_f_op_f32(round(-2631f))), func_4(591f, -917f, Struct_2(_wgslsmith_mod_i32(u_input.b.x, 12699i), Struct_1(var_0.a, vec2<u32>(4580u, var_0.b.x), var_0.c, var_0.d), func_4(491f, -1006f, Struct_2(54278i, var_0, var_0, vec3<f32>(-237f, 1187f, -734f)), var_0).b, _wgslsmith_f_op_vec3_f32(vec3<f32>(591f, 994f, 957f) - vec3<f32>(259f, -434f, 941f))), var_0), Struct_1(-1i <= _wgslsmith_clamp_i32(1i, 2147483647i, 1i), ~var_0.b, _wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, 1u, var_0.b.x, 1u), vec4<u32>(var_0.c, 4294967295u, 16172u, var_0.c)), min(vec4<u32>(var_0.b.x, var_0.c, var_0.c, 4294967295u), vec4<u32>(var_0.b.x, 101649u, 1u, 1u))), var_0.d)), Struct_1((~u_input.d != 0i) & (false | (true && var_0.a)), ~(~_wgslsmith_mult_vec2_u32(var_0.b, vec2<u32>(9609u, var_0.c))), 12185u, select(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_2()), func_4(-1126f, -276f, Struct_2(-2147483647i, var_0, var_0, vec3<f32>(1393f, -275f, -472f)), Struct_1(var_0.d.x, var_0.b, var_0.c, vec2<bool>(true, true))), func_4(894f, -601f, Struct_2(u_input.b.x, Struct_1(var_0.d.x, var_0.b, 31893u, vec2<bool>(var_0.a, false)), var_0, vec3<f32>(-1404f, -938f, -904f)), var_0).b).c.d, func_4(-1000f, _wgslsmith_div_f32(1210f, -409f), Struct_2(2147483647i, var_0, Struct_1(true, var_0.b, var_0.b.x, var_0.d), vec3<f32>(1349f, -891f, 1155f)), var_0).b.d, var_0.d.x)));
    var_1 = Struct_2(~func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-891f, var_1.d.x))), _wgslsmith_f_op_f32(-var_1.d.x), Struct_2(-1i ^ u_input.c, func_4(206f, 340f, Struct_2(-2147483647i, Struct_1(var_1.c.a, vec2<u32>(33030u, var_0.b.x), 4659u, vec2<bool>(var_1.b.a, false)), var_0, vec3<f32>(var_1.d.x, var_1.d.x, -584f)), Struct_1(var_0.d.x, var_0.b, 1u, vec2<bool>(var_1.c.a, false))).b, var_1.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.d.x, var_1.d.x, var_1.d.x), vec3<f32>(var_1.d.x, var_1.d.x, var_1.d.x), false))), Struct_1(any(vec3<bool>(true, var_0.a, var_1.c.d.x)), abs(var_0.b), _wgslsmith_dot_vec2_u32(var_1.c.b, var_1.c.b), !var_1.c.d)).a, func_4(137f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_1.c.d, var_1.b.b))))), func_4(1243f, _wgslsmith_f_op_f32(-var_1.d.x), Struct_2(-var_1.a, var_1.b, func_4(var_1.d.x, var_1.d.x, Struct_2(-3340i, var_1.c, Struct_1(var_1.b.d.x, vec2<u32>(var_1.b.c, 4294967295u), var_1.b.c, vec2<bool>(var_0.a, false)), var_1.d), var_1.b).b, var_1.d), func_4(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(-var_1.d.x), Struct_2(0i, Struct_1(var_0.a, vec2<u32>(var_1.c.b.x, 2010u), 0u, var_1.c.d), var_0, vec3<f32>(var_1.d.x, var_1.d.x, -930f)), Struct_1(var_0.d.x, vec2<u32>(1u, var_0.c), var_1.b.c, var_0.d)).b), var_0).b, Struct_1(true, var_1.c.b, ~var_1.b.c, !(!vec2<bool>(var_0.d.x, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-455f, var_1.d.x, var_1.d.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(var_1.d))))))));
    var_1 = Struct_2(-var_1.a, func_4(-2085f, 1000f, Struct_2(-1i, func_4(var_1.d.x, var_1.d.x, Struct_2(var_1.a, Struct_1(var_0.d.x, vec2<u32>(44466u, 2957u), var_0.c, var_0.d), Struct_1(var_0.d.x, var_1.c.b, var_0.b.x, vec2<bool>(true, var_1.b.d.x)), vec3<f32>(-305f, var_1.d.x, var_1.d.x)), var_0).b, func_4(_wgslsmith_f_op_f32(f32(-1f) * -751f), _wgslsmith_f_op_f32(-var_1.d.x), Struct_2(u_input.b.x, var_0, Struct_1(true, vec2<u32>(var_1.b.b.x, 1u), 28301u, vec2<bool>(var_0.d.x, var_1.c.d.x)), var_1.d), Struct_1(var_1.c.a, var_0.b, 74547u, var_1.c.d)).c, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(var_1.d, vec3<f32>(491f, var_1.d.x, 672f), vec3<bool>(var_0.a, false, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.x, 1935f, -984f) - var_1.d)))), func_4(-473f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-418f + 1000f), var_1.d.x), Struct_2(firstLeadingBit(u_input.b.x), Struct_1(var_1.c.a, vec2<u32>(65504u, var_0.b.x), var_1.b.c, var_1.c.d), Struct_1(true, var_1.b.b, var_0.c, var_0.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(228f, var_1.d.x, -377f) * var_1.d)), var_1.b).c).b, Struct_1(-42039i >= reverseBits(var_1.a), var_1.c.b, var_1.c.b.x, !vec2<bool>(true, any(vec3<bool>(var_1.c.a, true, true)))), _wgslsmith_f_op_vec3_f32(-var_1.d));
    let var_2 = func_4(_wgslsmith_f_op_f32(round(var_1.d.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) - _wgslsmith_div_f32(470f, 954f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-245f + var_1.d.x), func_4(_wgslsmith_f_op_f32(var_1.d.x * 948f), _wgslsmith_f_op_f32(max(var_1.d.x, var_1.d.x)), Struct_2(u_input.d, Struct_1(false, var_1.c.b, var_0.c, var_0.d), var_0, var_1.d), Struct_1(var_0.d.x, vec2<u32>(var_1.b.c, var_0.c), 96754u, var_0.d)).d.x)))), Struct_2(0i, var_0, var_1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.d * vec3<f32>(var_1.d.x, -294f, var_1.d.x)))), func_4(_wgslsmith_div_f32(1298f, _wgslsmith_f_op_f32(min(-1226f, _wgslsmith_f_op_f32(-var_1.d.x)))), _wgslsmith_f_op_f32(func_3(var_0.d, vec2<u32>(_wgslsmith_div_u32(4294967295u, var_1.b.b.x), 31940u))), func_4(var_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1666f), func_4(1320f, _wgslsmith_f_op_f32(round(-468f)), func_4(-727f, -2516f, Struct_2(u_input.d, var_0, Struct_1(var_0.d.x, var_1.c.b, var_0.b.x, vec2<bool>(true, var_0.a)), var_1.d), Struct_1(var_0.d.x, var_1.b.b, var_1.b.b.x, vec2<bool>(true, var_0.d.x))), var_1.b), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.d.x, func_4(var_1.d.x, 1000f, Struct_2(u_input.d, Struct_1(var_1.b.a, vec2<u32>(4678u, 4294967295u), var_0.c, vec2<bool>(var_0.a, true)), Struct_1(false, var_0.b, 15743u, var_1.b.d), vec3<f32>(var_1.d.x, -339f, -103f)), var_1.b), var_0).c), Struct_1(var_1.c.d.x, ~firstTrailingBit(vec2<u32>(1u, 7758u)), 20849u, func_4(-1742f, 1450f, func_4(148f, var_1.d.x, Struct_2(19964i, var_1.b, var_0, var_1.d), Struct_1(true, vec2<u32>(var_0.b.x, var_0.b.x), var_0.b.x, var_0.d)), var_1.b).b.d)).b).c;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~var_2.b, var_2.b >> (vec2<u32>(11112u, 0u) % vec2<u32>(32u))), var_0.b), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_1.d.x, 625f, var_1.d.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(879f, -724f, 1459f, -617f)))))), func_1(func_4(_wgslsmith_f_op_f32(trunc(var_1.d.x)), -188f, Struct_2(var_1.a, func_4(774f, var_1.d.x, Struct_2(15480i, Struct_1(true, vec2<u32>(32883u, 0u), var_1.b.c, vec2<bool>(var_1.c.d.x, false)), Struct_1(true, var_2.b, var_0.c, vec2<bool>(var_1.b.a, true)), vec3<f32>(-1755f, -1266f, var_1.d.x)), Struct_1(var_2.a, vec2<u32>(var_1.b.c, var_1.c.c), var_0.b.x, vec2<bool>(false, var_1.b.d.x))).c, var_1.c, vec3<f32>(-520f, var_1.d.x, var_1.d.x)), Struct_1(any(vec2<bool>(true, var_1.c.d.x)), _wgslsmith_div_vec2_u32(var_2.b, vec2<u32>(var_0.c, 3771u)), select(28362u, var_2.c, var_1.b.a), func_4(var_1.d.x, var_1.d.x, Struct_2(u_input.c, Struct_1(false, vec2<u32>(14987u, 0u), 1u, vec2<bool>(var_1.c.d.x, var_0.a)), Struct_1(var_1.b.a, vec2<u32>(4294967295u, var_0.c), var_0.c, vec2<bool>(false, var_1.b.d.x)), vec3<f32>(756f, var_1.d.x, var_1.d.x)), Struct_1(false, vec2<u32>(var_2.c, 4294967295u), var_0.c, vec2<bool>(var_1.b.d.x, var_0.d.x))).c.d)), func_4(_wgslsmith_f_op_f32(trunc(var_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-172f - var_1.d.x) - _wgslsmith_f_op_f32(min(-871f, var_1.d.x))), Struct_2(reverseBits(u_input.d), func_4(var_1.d.x, var_1.d.x, Struct_2(var_1.a, var_0, var_1.c, var_1.d), Struct_1(var_2.a, var_2.b, var_2.b.x, vec2<bool>(false, false))).c, var_0, var_1.d), func_4(-3311f, var_1.d.x, func_4(-889f, var_1.d.x, Struct_2(23496i, var_0, var_0, var_1.d), Struct_1(var_2.a, var_0.b, var_1.b.c, var_0.d)), Struct_1(var_2.d.x, var_1.c.b, var_0.b.x, vec2<bool>(var_2.d.x, true))).c)), var_1.c.b >> (firstLeadingBit(var_1.b.b) % vec2<u32>(32u)));
}

