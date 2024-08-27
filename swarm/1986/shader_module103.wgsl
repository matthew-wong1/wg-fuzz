struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<f32>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: vec3<bool>;

var<private> global2: array<i32, 16> = array<i32, 16>(-1i, 26053i, i32(-2147483648), -2822i, -61275i, i32(-2147483648), -1i, -2395i, 24455i, -29910i, 13160i, -1i, 1i, 28676i, 1i, 2147483647i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: u32) -> vec4<u32> {
    var var_0 = firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1.b, arg_0.c.x), vec3<u32>(arg_3, arg_0.d.e.x, 1u)), _wgslsmith_div_u32(u_input.c, arg_1.c.x)), vec2<u32>(arg_0.d.a.x, _wgslsmith_add_u32(arg_1.c.x, arg_0.c.x))), _wgslsmith_dot_vec4_u32(select(arg_1.d.a ^ vec4<u32>(26668u, u_input.c, arg_0.b, 4294967295u), vec4<u32>(4294967295u, arg_1.b, arg_3, arg_0.c.x) & vec4<u32>(26046u, 0u, 4773u, arg_0.d.e.x), arg_1.d.d.d), abs(~vec4<u32>(16501u, arg_3, u_input.e.x, arg_3)))));
    let var_1 = !all(arg_1.e.d);
    var var_2 = firstLeadingBit(arg_2.xx);
    return vec4<u32>(min(reverseBits(~4294967295u), arg_1.b), _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.x, arg_0.c.x << (var_0.x % 32u)), ~4294967295u), 4294967295u, arg_3);
}

fn func_2() -> Struct_1 {
    global1 = !vec3<bool>(!global1.x, reverseBits(u_input.a) == (u_input.c & 21140u), !(_wgslsmith_dot_vec2_i32(u_input.d, u_input.d) != _wgslsmith_mult_i32(-10299i, -21898i)));
    var var_0 = Struct_4(Struct_2(~func_3(Struct_3(1430f, u_input.e.x, u_input.e, Struct_2(vec4<u32>(17633u, 0u, 6172u, 0u), Struct_1(global1.yx, -1000f, vec3<f32>(431f, 633f, -335f), vec4<bool>(global1.x, global1.x, true, true), 49512i), Struct_1(vec2<bool>(global1.x, false), -374f, vec3<f32>(-679f, -473f, -105f), vec4<bool>(true, false, false, false), 2147483647i), Struct_1(vec2<bool>(true, true), -1207f, vec3<f32>(-633f, 208f, 1064f), vec4<bool>(global1.x, global1.x, false, true), u_input.b), vec2<u32>(u_input.e.x, u_input.c)), Struct_1(global1.xx, 210f, vec3<f32>(442f, -860f, 735f), vec4<bool>(false, true, global1.x, global1.x), 17783i)), Struct_3(-1353f, u_input.a, vec3<u32>(1u, u_input.a, 0u), Struct_2(vec4<u32>(u_input.a, u_input.c, u_input.a, 23097u), Struct_1(global1.yy, -1000f, vec3<f32>(1070f, 329f, 192f), vec4<bool>(false, false, global1.x, global1.x), global2[_wgslsmith_index_u32(1884u, 16u)]), Struct_1(vec2<bool>(global1.x, true), 1459f, vec3<f32>(1571f, -405f, 1569f), vec4<bool>(false, global1.x, false, global1.x), 1i), Struct_1(global1.yz, -474f, vec3<f32>(-334f, 1000f, 291f), vec4<bool>(global1.x, global1.x, global1.x, global1.x), global2[_wgslsmith_index_u32(u_input.a, 16u)]), vec2<u32>(1u, 1u)), Struct_1(global1.zy, 1222f, vec3<f32>(791f, 1000f, 322f), vec4<bool>(global1.x, global1.x, global1.x, true), -2147483647i)), vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a, 16u)], -2147483647i), u_input.e.x), Struct_1(global1.xy, 1451f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-278f, -1848f, -560f))), !vec4<bool>(global1.x, global1.x, global1.x, true), -firstTrailingBit(u_input.d.x)), Struct_1(select(vec2<bool>(true, true), !global1.xz, global1.x & global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -676f)), vec3<f32>(1f, 1f, 1f), !vec4<bool>(true, global1.x, global1.x, true), global2[_wgslsmith_index_u32(min(u_input.a, u_input.e.x), 16u)]), Struct_1(select(!global1.yz, global1.zy, global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -631f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2333f, 313f, 1309f), vec3<f32>(-1205f, 992f, 157f))))), vec4<bool>(global1.x, !global1.x, u_input.a <= u_input.a, !global1.x), i32(-1i) * -1310i), vec2<u32>(81258u, 4294967295u)));
    let var_1 = ~u_input.b;
    global1 = !vec3<bool>(global1.x, true, var_0.a.d.a.x);
    let var_2 = firstTrailingBit(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(abs(var_0.a.a), vec4<u32>(u_input.e.x, 4294967295u, var_0.a.e.x, 0u)), _wgslsmith_mod_vec4_u32(var_0.a.a, vec4<u32>(0u, 0u, firstTrailingBit(var_0.a.a.x), func_3(Struct_3(-489f, 0u, u_input.e, var_0.a, Struct_1(vec2<bool>(false, global1.x), var_0.a.b.b, vec3<f32>(1000f, -499f, 1417f), vec4<bool>(false, true, global1.x, false), var_0.a.b.e)), Struct_3(-1128f, u_input.e.x, u_input.e, Struct_2(var_0.a.a, var_0.a.d, Struct_1(global1.xx, var_0.a.c.b, vec3<f32>(var_0.a.d.c.x, var_0.a.c.c.x, var_0.a.b.c.x), var_0.a.c.d, 18558i), Struct_1(var_0.a.b.a, -954f, var_0.a.b.c, var_0.a.b.d, -2147483647i), vec2<u32>(var_0.a.a.x, var_0.a.e.x)), Struct_1(vec2<bool>(true, false), var_0.a.d.b, vec3<f32>(var_0.a.b.c.x, var_0.a.d.b, var_0.a.b.b), var_0.a.c.d, var_0.a.b.e)), vec3<i32>(38625i, var_0.a.c.e, global2[_wgslsmith_index_u32(1u, 16u)]), var_0.a.e.x).x))));
    return Struct_1(select(!select(select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, false), global1.xy), vec2<bool>(global1.x, true), !var_0.a.c.d.zx), vec2<bool>(!(-8790i <= global2[_wgslsmith_index_u32(u_input.e.x, 16u)]), global1.x), true), var_0.a.d.b, _wgslsmith_f_op_vec3_f32(abs(var_0.a.b.c)), select(vec4<bool>(true, true, global1.x, false), var_0.a.c.d, var_0.a.b.d.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.d.x), -1i, u_input.b, 0i), vec4<i32>(u_input.b << (var_2 % 32u), abs(2206i), -2977i, 8687i)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -886f));
    let var_1 = ~(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 10942u, u_input.a, 23852u), vec4<u32>(16011u, 1u, 0u, 0u))) << (u_input.c % 32u));
    let var_2 = u_input.e;
    global0 = ~(~_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.c, u_input.a, 50717u, u_input.e.x)), max(~vec4<u32>(var_1, 4294967295u, 15395u, 4294967295u), ~vec4<u32>(1u, var_1, var_1, 1u))));
    let var_3 = select(~var_2.x, u_input.c, false) | u_input.a;
    return u_input.d.x;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<bool>) -> vec3<bool> {
    var var_0 = -576f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a.b.c.x)) * -924f);
    var var_2 = Struct_1(vec2<bool>(false, false), _wgslsmith_f_op_f32(arg_0.a.c.b - 1514f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2219f - _wgslsmith_f_op_f32(var_1 - -414f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(884f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-arg_0.a.c.b))), select(vec4<bool>(true, true, true, true), select(arg_0.a.d.d, !(!arg_0.a.d.d), vec4<bool>(var_1 >= -1216f, arg_0.a.c.c.x <= arg_0.a.b.b, true, global1.x)), !(_wgslsmith_div_f32(1071f, 1013f) > _wgslsmith_f_op_f32(-var_1))), func_4(func_2(), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.a.b.c.x, -1161f)))))), !global1.x));
    var_0 = 768f;
    var var_3 = func_2();
    return !(!(!var_3.d.xxx));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(!vec3<bool>((global1.x & global1.x) != (global1.x & true), any(!vec2<bool>(global1.x, false)), true), select(select(vec3<bool>(!global1.x, false, true), func_1(Struct_4(Struct_2(vec4<u32>(u_input.c, 0u, 8616u, u_input.a), Struct_1(vec2<bool>(true, true), 238f, vec3<f32>(597f, 597f, -640f), vec4<bool>(global1.x, false, false, global1.x), 2147483647i), Struct_1(global1.xy, -266f, vec3<f32>(-1406f, 722f, -2043f), vec4<bool>(true, false, false, global1.x), -37620i), Struct_1(global1.xy, 178f, vec3<f32>(617f, -750f, 672f), vec4<bool>(true, true, global1.x, false), global2[_wgslsmith_index_u32(55069u, 16u)]), vec2<u32>(u_input.a, 46757u))), global1.yy), _wgslsmith_dot_vec4_i32(vec4<i32>(-5884i, -10577i, u_input.d.x, -27126i), vec4<i32>(u_input.b, u_input.d.x, 33936i, 7321i)) == firstLeadingBit(-2147483647i)), !vec3<bool>(global1.x, true, true), true), true);
    global2 = array<i32, 16>();
    let var_0 = _wgslsmith_f_op_f32(select(-2216f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 144f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1134f)))))), true));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(select(1490f, -162f, false)), func_2().d.x)) - var_0)), _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(1u, ~11000u) << (((0u >> (0u % 32u)) << ((u_input.a | u_input.c) % 32u)) % 32u), 4294967295u), ~(~vec3<u32>(57280u << (u_input.a % 32u), abs(91700u), 4294967295u)), Struct_2(~vec4<u32>(~4294967295u, u_input.e.x, _wgslsmith_mod_u32(u_input.c, 1u), 0u), Struct_1(global1.zx, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - -411f), _wgslsmith_f_op_f32(var_0 + var_0)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 585f) + vec3<f32>(-142f, -133f, -231f)))), vec4<bool>(any(vec3<bool>(false, true, false)), !global1.x, global1.x, true), _wgslsmith_mult_i32(u_input.d.x, u_input.b)), Struct_1(vec2<bool>(true, false), 244f, vec3<f32>(_wgslsmith_f_op_f32(-527f + 856f), var_0, _wgslsmith_f_op_f32(select(-529f, 294f, global1.x))), select(func_2().d, select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(true, true, false, global1.x)), select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(global1.x, false, global1.x, false), global1.x)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 3081i, -1i), vec3<i32>(0i, -1i, -62205i)), -26069i)), Struct_1(func_2().a, var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-134f, var_0, -1260f), vec3<f32>(1089f, var_0, -867f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1476f, var_0, 909f)))), vec4<bool>(true, true, true, any(global1.yx)), min(global2[_wgslsmith_index_u32(4294967295u, 16u)], ~7251i)), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.c, u_input.c), vec4<u32>(u_input.a, u_input.e.x, u_input.c, 29439u)), ~u_input.e.x)), func_2());
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1235f, var_0, var_0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_1.a, -832f, var_1.d.c.b))), vec4<f32>(_wgslsmith_f_op_f32(max(-460f, 1123f)), var_1.d.d.b, -2209f, _wgslsmith_f_op_f32(var_0 + 164f))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1094f, -1184f, -1143f, var_1.e.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.b.c.x, 386f, var_1.d.b.b, -2023f))))))));
    var var_3 = !var_1.d.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-u_input.d.x, global2[_wgslsmith_index_u32(30451u, 16u)], -4620i, 6729i), var_1.c.yy, 2147483647i, abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.e.x, ~32663u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.e.x), vec3<u32>(var_1.b, 38823u, 4294967295u)), reverseBits(~vec3<u32>(var_1.c.x, 14504u, 1386u)))));
}

