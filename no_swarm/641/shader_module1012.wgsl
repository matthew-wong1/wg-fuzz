struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec4<i32>(1i, 2147483647i, -5345i, 36572i), vec2<bool>(true, false), vec2<i32>(i32(-2147483648), -55805i), false), Struct_3(vec4<i32>(-1i, 0i, 2147483647i, -1i), vec2<bool>(true, false), vec2<i32>(1i, 1i), false), Struct_3(vec4<i32>(0i, 18358i, -1i, 23693i), vec2<bool>(false, false), vec2<i32>(0i, -9884i), false), Struct_3(vec4<i32>(0i, 2147483647i, 32561i, -32796i), vec2<bool>(false, true), vec2<i32>(0i, 2147483647i), true), Struct_3(vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec2<bool>(false, true), vec2<i32>(-44754i, -24683i), true), Struct_3(vec4<i32>(-33202i, 0i, 2147483647i, 6781i), vec2<bool>(false, true), vec2<i32>(2147483647i, 2147483647i), true), Struct_3(vec4<i32>(-31760i, 10321i, 2147483647i, 42876i), vec2<bool>(true, false), vec2<i32>(-22748i, i32(-2147483648)), false), Struct_3(vec4<i32>(i32(-2147483648), 2147483647i, 52346i, 14787i), vec2<bool>(false, true), vec2<i32>(-20329i, -10648i), false), Struct_3(vec4<i32>(2147483647i, 16977i, 0i, 15745i), vec2<bool>(true, true), vec2<i32>(1i, 6576i), false), Struct_3(vec4<i32>(3786i, -36730i, -5639i, 0i), vec2<bool>(true, false), vec2<i32>(i32(-2147483648), 1i), false), Struct_3(vec4<i32>(i32(-2147483648), 41440i, 1i, 2147483647i), vec2<bool>(true, true), vec2<i32>(i32(-2147483648), i32(-2147483648)), false), Struct_3(vec4<i32>(i32(-2147483648), 1i, 25057i, 0i), vec2<bool>(true, false), vec2<i32>(-19358i, 37454i), true), Struct_3(vec4<i32>(-27130i, 2147483647i, 2147483647i, -1i), vec2<bool>(false, false), vec2<i32>(-4987i, 1i), false), Struct_3(vec4<i32>(2147483647i, -2030i, 8697i, -18188i), vec2<bool>(true, false), vec2<i32>(0i, -1i), true), Struct_3(vec4<i32>(-36585i, -17936i, -14273i, 1i), vec2<bool>(true, false), vec2<i32>(0i, -30541i), false), Struct_3(vec4<i32>(11628i, -32139i, -23616i, i32(-2147483648)), vec2<bool>(false, true), vec2<i32>(-1266i, 0i), true), Struct_3(vec4<i32>(13285i, -3547i, 5071i, -221i), vec2<bool>(false, true), vec2<i32>(2147483647i, 30290i), true), Struct_3(vec4<i32>(0i, -74477i, i32(-2147483648), i32(-2147483648)), vec2<bool>(true, false), vec2<i32>(-7161i, i32(-2147483648)), false), Struct_3(vec4<i32>(21061i, 0i, i32(-2147483648), 13834i), vec2<bool>(false, true), vec2<i32>(-27239i, 45788i), false));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2() -> Struct_3 {
    return global0[_wgslsmith_index_u32(u_input.a & (~(~_wgslsmith_div_u32(u_input.a, u_input.a)) << (~(1u >> (u_input.a % 32u)) % 32u)), 19u)];
}

fn func_3(arg_0: f32, arg_1: bool) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 19u)];
    let var_1 = ~(~vec4<u32>(35420u, _wgslsmith_clamp_u32(~u_input.a, 1u, reverseBits(u_input.a)), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(5813u, u_input.a, 4294967295u), vec3<u32>(63649u, 30712u, 26521u))), firstLeadingBit(~u_input.a)));
    var_0 = Struct_3(~countOneBits(min(_wgslsmith_div_vec4_i32(vec4<i32>(-59700i, 2147483647i, -1i, var_0.a.x), vec4<i32>(var_0.c.x, var_0.c.x, var_0.a.x, var_0.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.x, 90940i, -9208i, -19011i), var_0.a))), !vec2<bool>(false, !all(vec4<bool>(var_0.d, false, true, true))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(var_0.a.x), -2147483647i & var_0.a.x, select(var_0.a.x, -2147483647i, arg_1)), vec3<i32>(var_0.c.x & var_0.a.x, var_0.a.x, var_0.a.x >> (var_1.x % 32u))), 1i), !func_2().d);
    var var_2 = Struct_2(29673u, Struct_1(true, abs(var_1.x), vec4<u32>(126075u, ~var_1.x, ~(40223u & u_input.a), select(~4294967295u, _wgslsmith_dot_vec4_u32(var_1, vec4<u32>(4294967295u, var_1.x, 1u, 57504u)), var_0.d)), abs(~var_1.xw), var_1), (i32(-1i) * -var_0.c.x) & ~(~(~var_0.a.x)), ~select(109354u, 4294967295u, arg_1), var_0.a);
    let var_3 = Struct_3(_wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(1i), 1i, i32(-1i) * -14831i, 1i) | vec4<i32>(min(var_2.c, var_0.c.x), _wgslsmith_div_i32(-1i, var_2.e.x), var_2.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 54350i, 1i), var_2.e.yxx)), ~vec4<i32>(_wgslsmith_add_i32(1i, var_0.c.x), _wgslsmith_mod_i32(9392i, var_0.c.x), var_0.a.x, -var_0.a.x)), func_2().b, _wgslsmith_add_vec2_i32(max(var_0.a.zy, vec2<i32>(1i, 23707i)), vec2<i32>(43241i, var_2.c)), (true & var_0.d) == (true && all(vec4<bool>(var_0.d, var_0.d, var_2.b.a, true))));
    return var_2.e.x;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    global0 = array<Struct_3, 19>();
    let var_0 = func_2();
    global0 = array<Struct_3, 19>();
    let var_1 = reverseBits(var_0.c.x);
    let var_2 = Struct_3(((vec4<i32>(11095i, var_1, var_0.c.x, 0i) ^ ~vec4<i32>(2147483647i, var_1, -1489i, var_0.a.x)) & var_0.a) | -firstLeadingBit(var_0.a), var_0.b, vec2<i32>(abs(reverseBits(select(1i, 1i, false))), func_3(_wgslsmith_f_op_f32(sign(528f)), false)), any(vec2<bool>(all(vec4<bool>(false, arg_0.a, true, true)), false)) || true);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(690f))), _wgslsmith_f_op_f32(f32(-1f) * -215f));
    let var_1 = func_1(Struct_1(!(true | select(true, false, true)), reverseBits(~105283u), ~reverseBits(~vec4<u32>(57061u, 31353u, 4294967295u, u_input.a)), countOneBits(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 53662u), ~vec2<u32>(u_input.a, u_input.a))), abs(countOneBits(~vec4<u32>(u_input.a, 4294967295u, 0u, 1u)))), true);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(-380f)), -699f);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1233f - var_0.x), 510f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(-1032f, var_0.x)))))));
    var_0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(round(728f)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1160f)))))), _wgslsmith_f_op_f32(sign(var_0.x)), var_0.x > -1184f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-247f)), _wgslsmith_f_op_f32(-1584f - var_0.x), !func_2().b.x))));
    let var_3 = 17333u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-1957f, var_0.x), vec2<f32>(var_0.x, var_0.x)))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 620f)), vec2<f32>(var_0.x, -339f)))), _wgslsmith_f_op_f32(-var_0.x), countOneBits(firstLeadingBit(-var_1.a.zyx)));
}

