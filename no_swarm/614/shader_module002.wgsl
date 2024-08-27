struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<vec2<i32>, 4>;

var<private> global2: Struct_1;

var<private> global3: Struct_4;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4) -> vec2<i32> {
    let var_0 = 1u;
    let var_1 = arg_0.b;
    var var_2 = vec2<i32>(global2.d, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(-52066i, -15944i, -2147483647i)), vec3<i32>(var_1.a.a.d ^ global2.d, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0i, arg_0.a.x), u_input.a.zxy))), vec3<i32>(u_input.a.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(32306u, 21853u), vec2<u32>(var_0, 21205u)) % 32u), 0i, firstTrailingBit(9030i))));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.b.x), _wgslsmith_f_op_f32(1675f + arg_0.d.x), true))))));
    var var_4 = 1000f;
    return vec2<i32>(global3.b.a.c.d, global3.b.a.c.d ^ (u_input.a.x ^ (23844i << (firstLeadingBit(global2.b.x) % 32u))));
}

fn func_2(arg_0: u32) -> Struct_4 {
    global3 = Struct_4(u_input.a.wz ^ -func_3(Struct_4(vec2<i32>(0i, global3.a.x), Struct_3(Struct_2(Struct_1(global2.a, global2.b, 48027u, -16598i), vec2<f32>(global3.d.x, global3.d.x), Struct_1(4294967295u, global2.b, 57361u, global2.d), global2.d, false), global3.b.b), true, global3.b.b.xxx)), global3.b, !(_wgslsmith_f_op_f32(-755f - global3.b.a.b.x) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-815f - global3.b.a.b.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global3.d, global3.b.b.yzz, vec3<bool>(global3.c, false, true))), global3.d)))));
    var var_0 = Struct_3(Struct_2(global3.b.a.c, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2371f, _wgslsmith_f_op_f32(-205f * 511f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(global3.d.xy)))), false)), global3.b.a.c, -_wgslsmith_add_i32(abs(global2.d), _wgslsmith_sub_i32(u_input.a.x, global3.b.a.d)), _wgslsmith_f_op_f32(f32(-1f) * -622f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1072f + -1456f) - _wgslsmith_f_op_f32(global3.b.b.x + global3.d.x))), vec4<f32>(global3.d.x, global3.b.a.b.x, 1f, global3.b.b.x));
    var var_1 = vec2<u32>(_wgslsmith_div_u32(global3.b.a.c.a, ~var_0.a.a.b.x), _wgslsmith_dot_vec2_u32(global3.b.a.a.b.zz, (_wgslsmith_sub_vec2_u32(global3.b.a.a.b.xw, global2.b.yz) ^ vec2<u32>(arg_0, 54473u)) & (global3.b.a.c.b.xw ^ var_0.a.c.b.wz)));
    global3 = Struct_4(~(~vec2<i32>(~(-40020i), _wgslsmith_clamp_i32(1i, 1i, var_0.a.a.d))), global3.b, _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, var_1.x & global3.b.a.c.a, global3.b.a.c.b.x, _wgslsmith_mod_u32(global3.b.a.c.b.x, 53255u)), global3.b.a.a.b | select(vec4<u32>(4294967295u, 100591u, global2.a, 1u), vec4<u32>(36917u, 13014u, var_0.a.a.a, global2.b.x), true)) < global2.a, _wgslsmith_f_op_vec3_f32(-global3.d));
    let var_2 = Struct_4(vec2<i32>(~_wgslsmith_mod_i32(-13164i, _wgslsmith_dot_vec3_i32(u_input.a.wxx, u_input.a.yyz)), _wgslsmith_div_i32(global2.d, ~global2.d)), Struct_3(Struct_2(Struct_1(~var_0.a.a.a, ~vec4<u32>(var_0.a.a.b.x, var_1.x, var_1.x, 1u), abs(global3.b.a.a.b.x), func_3(Struct_4(vec2<i32>(u_input.a.x, var_0.a.d), Struct_3(Struct_2(var_0.a.c, vec2<f32>(global3.b.b.x, -1104f), global3.b.a.c, -2147483647i, false), global3.b.b), true, vec3<f32>(var_0.b.x, 206f, -711f))).x), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.b.x)), -1896f), Struct_1(0u, global2.b, select(4294967295u, arg_0, global0.x), i32(-1i) * -7773i), -24229i, true), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.b.x), _wgslsmith_f_op_f32(-878f - -977f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b.x) + _wgslsmith_f_op_f32(sign(-574f))), 774f, -1000f)), all(!vec4<bool>(global3.b.a.e, var_0.a.e, true, var_0.a.e)) & global0.x, _wgslsmith_f_op_vec3_f32(select(global3.b.b.wwy, global3.b.b.yxy, !select(true, global0.x & global3.c, true))));
    return Struct_4(vec2<i32>(var_2.b.a.a.d, -12501i), Struct_3(Struct_2(global3.b.a.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.a.b)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.d.x, 810f)))), Struct_1(~4294967295u, var_2.b.a.a.b, reverseBits(var_1.x), var_2.a.x), func_3(var_2).x, var_2.c | true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(256f, var_2.b.a.b.x, 1002f, 2852f), var_2.b.b))), all(vec4<bool>(true, all(vec2<bool>(false, global0.x)), _wgslsmith_sub_u32(var_2.b.a.c.c, 52270u) <= 37221u, any(vec3<bool>(true, false, true)) & false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.yyy - vec3<f32>(global3.b.a.b.x, var_0.a.b.x, 296f)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = global3.b;
    var var_1 = -5705i;
    global3 = func_2(1u);
    return func_2(4294967295u).b.a.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: u32) -> Struct_1 {
    return func_1(func_2(_wgslsmith_div_u32(~func_2(97260u).b.a.c.b.x, global2.b.x)).b.a.a.c, Struct_1(65323u, arg_0.b, 4294967295u, -34550i), func_1(max(~global2.a, firstLeadingBit(arg_3 << (4294967295u % 32u))), Struct_1(max(reverseBits(global3.b.a.a.c), ~arg_2.x), func_1(~arg_0.c, Struct_1(4294967295u, arg_2, 50442u, global3.a.x), func_1(0u, Struct_1(arg_2.x, global2.b, 4294967295u, 13818i), Struct_1(global3.b.a.c.a, global3.b.a.c.b, 0u, 35523i))).b, countOneBits(46202u), -1i), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(!select(vec2<bool>(global3.c, global0.x), select(vec2<bool>(global3.c, false), vec2<bool>(false, false), vec2<bool>(false, global0.x)), !vec2<bool>(global3.b.a.e, true)), !select(select(vec2<bool>(global3.c, false), vec2<bool>(global0.x, true), vec2<bool>(global0.x, true)), select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, false), vec2<bool>(true, global3.c)), select(vec2<bool>(global3.c, global3.c), vec2<bool>(true, global3.b.a.e), vec2<bool>(global0.x, global0.x))), select(vec2<bool>(true, any(vec2<bool>(true, global0.x))), vec2<bool>(global0.x, all(vec2<bool>(global0.x, global3.b.a.e))), true));
    var var_0 = global2.b.x;
    let var_1 = func_4(func_1(4294967295u, Struct_1(global2.a, global3.b.a.a.b, 0u, u_input.a.x), Struct_1(select(~5u, ~global3.b.a.c.c, true), vec4<u32>(min(global2.a, global3.b.a.a.a), 56433u, firstLeadingBit(global3.b.a.a.c), global3.b.a.c.c), global3.b.a.a.c, 15543i)), select(vec2<bool>(global0.x, !select(true, global3.b.a.e, false)), !select(!vec2<bool>(global3.b.a.e, global0.x), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), false), _wgslsmith_mult_vec4_u32(countOneBits(max(vec4<u32>(0u, global2.c, 44746u, global2.c), global3.b.a.c.b)), global2.b) >> (vec4<u32>(~1u, ~1u, ~func_2(global3.b.a.c.a).b.a.a.a, firstLeadingBit(abs(1u))) % vec4<u32>(32u)), global2.b.x);
    var_0 = global3.b.a.a.a;
    global1 = array<vec2<i32>, 4>();
    var var_2 = vec3<u32>((((10833u & var_1.c) >> (_wgslsmith_mod_u32(4294967295u, global2.b.x) % 32u)) >> (~19013u % 32u)) >> (~global3.b.a.a.a % 32u), ~4294967295u, ~(abs(_wgslsmith_add_u32(4294967295u, global3.b.a.a.a)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.x, global3.b.a.c.c, 80701u, global2.a), vec4<u32>(1u, 4294967295u, global3.b.a.a.c, 26285u) >> (vec4<u32>(var_1.c, 4294967295u, 12332u, global3.b.a.a.c) % vec4<u32>(32u))) % 32u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(global3.b.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.b.x, -1196f, global3.b.b.x, 1000f) * _wgslsmith_div_vec4_f32(global3.b.b, vec4<f32>(global3.b.a.b.x, 1021f, -663f, -2838f))))), (global0.x & true) | (var_2.x < 89147u)));
    let var_4 = 0i <= func_4(Struct_1(select(~60013u, ~18949u, global0.x), ~vec4<u32>(var_1.a, 4294967295u, var_2.x, global3.b.a.a.c), ~_wgslsmith_div_u32(global2.c, 29898u), ~(-2147483647i)), select(vec2<bool>(true, false), !(!vec2<bool>(global0.x, true)), all(select(vec3<bool>(global3.b.a.e, false, global3.c), vec3<bool>(global3.b.a.e, false, global0.x), vec3<bool>(global3.c, false, global0.x)))), abs(global2.b), 61371u).d;
    let var_5 = Struct_4(vec2<i32>((-global2.d >> ((18208u >> (var_2.x % 32u)) % 32u)) ^ -func_2(var_1.c).a.x, _wgslsmith_mod_i32(global2.d, _wgslsmith_sub_i32(u_input.a.x, global3.a.x) | 12520i)), func_2(var_1.c).b, global0.x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global3.d))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(701f, var_3.x, var_3.x), var_3.wzx, true)), _wgslsmith_f_op_vec3_f32(-global3.d))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.b.x, -1219f, 532f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(902f, 1051f, -289f)), _wgslsmith_f_op_vec3_f32(global3.b.b.zyz * global3.b.b.zwz))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(4166i, global2.d, -_wgslsmith_mod_i32(global2.d, -global3.b.a.a.d), min(var_1.d & countOneBits(global3.a.x), ~_wgslsmith_mod_i32(-2147483647i, 1231i))), countOneBits(~(-_wgslsmith_add_vec2_i32(vec2<i32>(global2.d, -2147483647i), var_5.a))), var_1.b.yw, _wgslsmith_clamp_u32(abs(4294967295u), _wgslsmith_mult_u32(34785u, ~(~30491u)), _wgslsmith_add_u32(var_5.b.a.a.c, var_1.a)), vec4<f32>(-2209f, var_3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -774f))), _wgslsmith_f_op_f32(ceil(-643f))));
}

