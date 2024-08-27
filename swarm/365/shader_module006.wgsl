struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(-1641f, -371f, -547f, -2331f), vec4<f32>(-464f, 834f, -418f, -199f), vec4<f32>(1000f, 1540f, 1055f, -115f), vec4<f32>(371f, -442f, -1810f, 1000f), vec4<f32>(-889f, -512f, 711f, 105f), vec4<f32>(-1732f, 2541f, -1300f, -260f), vec4<f32>(266f, -522f, 919f, -1682f), vec4<f32>(-1000f, -618f, 1122f, 500f), vec4<f32>(456f, 113f, -1410f, 2403f), vec4<f32>(-2314f, 2248f, 759f, -1014f), vec4<f32>(183f, 820f, 512f, -329f), vec4<f32>(123f, -1447f, -596f, -1392f), vec4<f32>(-1000f, -777f, 693f, 240f), vec4<f32>(-314f, 427f, -100f, -1000f), vec4<f32>(-599f, -1068f, -105f, -255f), vec4<f32>(-2066f, 1106f, 865f, 1043f), vec4<f32>(-1599f, 377f, -421f, -1014f), vec4<f32>(633f, 407f, -1457f, 747f), vec4<f32>(-1279f, -604f, -759f, -749f), vec4<f32>(-908f, 736f, -132f, 2549f), vec4<f32>(-491f, -517f, 728f, 894f), vec4<f32>(-362f, 1000f, -157f, -1047f), vec4<f32>(-857f, -1603f, -383f, -1944f), vec4<f32>(174f, 854f, 727f, 230f), vec4<f32>(-453f, 362f, -1715f, 321f), vec4<f32>(-581f, 575f, -298f, 1130f), vec4<f32>(-1813f, -1402f, -1107f, -1032f), vec4<f32>(336f, -161f, -966f, 1929f));

var<private> global1: array<bool, 5> = array<bool, 5>(true, false, true, true, true);

var<private> global2: bool = false;

var<private> global3: vec3<f32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    var var_0 = !(!select(vec4<bool>(true, true, true, true), select(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(1u, 5u)]), select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 5u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], false, false, global1[_wgslsmith_index_u32(u_input.d, 5u)]), global1[_wgslsmith_index_u32(0u, 5u)]), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(33472u, u_input.a.x), 5u)]), true));
    let var_1 = vec2<i32>(~0i, max(2224i, _wgslsmith_sub_i32(_wgslsmith_add_i32(abs(-46780i), _wgslsmith_mult_i32(u_input.c.x, u_input.c.x)), 0i)));
    var_0 = vec4<bool>(var_0.x, false, !all(vec4<bool>(true, var_0.x, true, -850f >= arg_0.x)), true);
    global1 = array<bool, 5>();
    global2 = false && (15903u == _wgslsmith_add_u32(1u, _wgslsmith_add_u32(select(u_input.a.x, 4294967295u, global1[_wgslsmith_index_u32(62265u, 5u)]), 1u)));
    return 14981u;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1) -> bool {
    global0 = array<vec4<f32>, 28>();
    global1 = array<bool, 5>();
    global3 = vec3<f32>(_wgslsmith_f_op_f32(1079f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1000f, -1434f)), -2027f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.x)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.x, global3.x)) - 463f), _wgslsmith_f_op_f32(219f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-804f, 1001f))))), _wgslsmith_f_op_f32(step(-1023f, global3.x)));
    global3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2249f, -965f, global3.x), vec3<f32>(global3.x, -346f, global3.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 317f, 1690f))) * vec3<f32>(_wgslsmith_f_op_f32(1000f * global3.x), _wgslsmith_f_op_f32(step(global3.x, global3.x)), _wgslsmith_f_op_f32(1388f * 1637f)))))));
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~(~firstLeadingBit(vec4<u32>(0u, 113294u, 1u, arg_1))), _wgslsmith_add_vec4_u32(firstTrailingBit(abs(vec4<u32>(u_input.d, 1u, 4294967295u, arg_2.c))), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 11605u, arg_2.a, 1u), ~vec4<u32>(4294967295u, 78857u, 34306u, arg_2.c)))), max(firstTrailingBit(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(0u, arg_1, arg_2.c, 9808u)), min(vec4<u32>(u_input.a.x, arg_1, 0u, 4294967295u), vec4<u32>(u_input.d, arg_2.c, 1u, arg_1)))), select(~(~vec4<u32>(u_input.a.x, u_input.d, arg_2.a, u_input.d)), ~(~vec4<u32>(4294967295u, 26761u, 45615u, 1u)), u_input.b.x == 1i)), _wgslsmith_div_vec4_u32(vec4<u32>(~(arg_2.c & u_input.d), ~(~u_input.a.x), arg_1, firstLeadingBit(arg_2.c & arg_1)), select(~vec4<u32>(54245u, 1u, 0u, u_input.d), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, 55275u, 13024u) ^ vec4<u32>(38807u, u_input.d, 20448u, u_input.d), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.c, 59317u, arg_1, 0u), vec4<u32>(38666u, arg_1, arg_2.c, arg_1))), select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 5u)], false, false, arg_2.b), vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(0u, 5u)]), !vec4<bool>(global1[_wgslsmith_index_u32(57295u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)], true, true)))));
    return global1[_wgslsmith_index_u32(~(~(~49583u)), 5u)];
}

fn func_2() -> Struct_2 {
    global2 = func_4(vec2<i32>(i32(-1i) * -u_input.b.x, ~(~(-u_input.c.x))), _wgslsmith_mod_u32(min(58728u, ~func_3(vec2<f32>(global3.x, global3.x))), _wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(u_input.a.x, u_input.d)), ~(u_input.a << (u_input.a % vec2<u32>(32u))))), Struct_1(u_input.d | 0u, -832f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - 467f)), 10225u));
    var var_0 = Struct_2(Struct_1(0u, true, u_input.a.x >> (_wgslsmith_div_u32(u_input.a.x, _wgslsmith_sub_u32(u_input.d, 0u)) % 32u)));
    global0 = array<vec4<f32>, 28>();
    var_0 = Struct_2(Struct_1(1u, global1[_wgslsmith_index_u32(26539u << (u_input.a.x % 32u), 5u)], abs(var_0.a.c)));
    global0 = array<vec4<f32>, 28>();
    return Struct_2(Struct_1(var_0.a.c, !((u_input.c.x ^ 2147483647i) > 1i), ~u_input.a.x));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = !func_2().a.b;
    var var_1 = func_2();
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1844f, _wgslsmith_f_op_f32(-global3.x), global1[_wgslsmith_index_u32(114831u, 5u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-445f))), global3.x));
    var var_2 = func_2();
    var_2 = func_2();
    return Struct_2(var_1.a);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = u_input.a.x;
    var var_1 = func_5(func_2(), u_input.b.yx, ~(vec4<u32>(u_input.a.x ^ var_0, _wgslsmith_mult_u32(arg_0, 0u), ~u_input.a.x, var_0) & ~(~vec4<u32>(var_0, 4294967295u, var_0, 4294967295u))));
    let var_2 = i32(-1i) * -4912i;
    let var_3 = Struct_2(var_1.a);
    var var_4 = var_1.a;
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 28>();
    var var_0 = func_1(u_input.d, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_f_op_f32(-global3.x), 719f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-992f * global3.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-336f)))), _wgslsmith_f_op_f32(f32(-1f) * -718f)));
    let var_1 = i32(-1i) * -_wgslsmith_div_i32(u_input.b.x, abs(u_input.c.x >> (0u % 32u)));
    var var_2 = u_input.a;
    global2 = var_0.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1852f + 819f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1762f, -441f, true)) * global3.x)), global3.x, _wgslsmith_f_op_f32(1257f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.x)) * 1118f))));
    global3 = vec3<f32>(global3.x, _wgslsmith_f_op_f32(max(var_3.x, -1173f)), global3.x);
    let var_4 = ~(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, 0i), _wgslsmith_add_i32(-9090i, -26009i)), -var_1, reverseBits(u_input.c.x), -25356i) << (vec4<u32>(4294967295u, var_2.x, 4294967295u, abs(38437u >> (var_0.a % 32u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(28671u, 4294967295u, 4294967295u), ~u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 2593u), vec2<u32>(1u, 1u)), countOneBits(6754u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.c, 0u, 49864u, 1u), vec4<u32>(0u, var_2.x, u_input.d, var_2.x) ^ vec4<u32>(4294967295u, var_0.c, var_0.a, var_0.a))));
}

