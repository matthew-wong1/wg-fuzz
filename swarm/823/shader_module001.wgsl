struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(2147483647i, vec4<bool>(false, false, true, true));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>) -> vec4<bool> {
    global0 = Struct_2(global0.a, select(vec4<bool>(false, !global0.b.x, arg_0, _wgslsmith_add_i32(-8509i, global0.a) <= ~global0.a), global0.b, false));
    let var_0 = Struct_4(Struct_2(2147483647i, select(select(!global0.b, global0.b, true), global0.b, arg_0)), Struct_2(i32(-1i) * 0i, global0.b));
    global0 = Struct_2(_wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_0.b.a, -2147483647i, global0.a), vec4<i32>(var_0.a.a, 9659i, global0.a, var_0.b.a)), _wgslsmith_div_vec4_i32(vec4<i32>(17264i, var_0.b.a, 1i, -9809i), vec4<i32>(0i, global0.a, var_0.a.a, var_0.a.a))) >> (reverseBits(53418u) % 32u)), global0.b);
    let var_1 = Struct_5(var_0, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1215f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(742f + 412f)), -861f, -1278f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1116f, -1000f, 1000f, -864f), vec4<f32>(-130f, -2114f, -1411f, -195f), true)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(806f, 800f, -754f, -1120f), vec4<f32>(526f, -1488f, 794f, 644f), var_0.a.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-423f, 197f, 739f, -413f))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(361f - 532f), _wgslsmith_f_op_f32(min(362f, -563f)), _wgslsmith_f_op_f32(sign(-1384f)), -1766f), vec4<f32>(_wgslsmith_f_op_f32(-1422f * 772f), _wgslsmith_f_op_f32(sign(-613f)), _wgslsmith_f_op_f32(abs(-587f)), _wgslsmith_f_op_f32(trunc(-1000f))))))), Struct_3(-vec4<i32>(_wgslsmith_div_i32(global0.a, 28672i), -global0.a, global0.a & 1i, -45747i), Struct_2(max(global0.a, min(var_0.b.a, 1i)), select(select(var_0.b.b, vec4<bool>(false, false, true, var_0.a.b.x), var_0.b.b.x), select(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true), vec4<bool>(var_0.b.b.x, false, false, global0.b.x), global0.b), select(var_0.b.b.x, arg_0, true))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1693f)) * vec2<f32>(310f, -1465f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1348f, -1006f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1075f, 1270f) * vec2<f32>(-2374f, 923f))))))), Struct_3(vec4<i32>(countOneBits(-11925i), 34563i, 23034i, -34203i), Struct_2(0i, vec4<bool>(var_0.b.b.x, var_0.a.b.x == global0.b.x, arg_0, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-305f, 335f), vec2<f32>(698f, -595f), vec2<bool>(true, true))))))));
    var var_2 = var_1.a;
    return vec4<bool>(true, true == all(select(vec2<bool>(var_2.b.b.x, var_2.b.b.x), !vec2<bool>(false, arg_0), var_2.a.b.x)), !all(vec3<bool>(any(vec4<bool>(false, true, var_0.a.b.x, false)), global0.b.x, arg_0 != var_1.e.b.b.x)), !all(vec3<bool>(false, global0.b.x, true)));
}

fn func_2(arg_0: i32) -> vec4<bool> {
    let var_0 = Struct_2(arg_0, func_3(!all(!global0.b.xzw), vec3<u32>(_wgslsmith_mod_u32(u_input.a, abs(u_input.a)), ~_wgslsmith_clamp_u32(4138u, u_input.a, 72620u), 25596u)));
    var var_1 = abs(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(0i, var_0.a), vec2<i32>(-2147483647i, var_0.a)), ~min(vec2<i32>(global0.a, -2392i), vec2<i32>(arg_0, 1i))), vec2<i32>(global0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(45400i, var_0.a, arg_0, 3664i), vec4<i32>(var_0.a, var_0.a, 5111i, global0.a)) << (4294967295u % 32u))));
    var var_2 = vec2<f32>(291f, -1222f);
    var var_3 = ~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1u) & ~vec2<u32>(44674u, u_input.a), vec2<u32>(~0u, _wgslsmith_div_u32(1u, u_input.a))), ~(~(~vec2<u32>(86999u, 63364u))));
    var var_4 = var_3.x;
    return select(func_3(firstTrailingBit(~var_0.a) != arg_0, reverseBits(vec3<u32>(~var_3.x, ~111u, ~0u))), var_0.b, any(func_3(all(!var_0.b.zw), ~vec3<u32>(85264u, 102990u, 27766u))));
}

fn func_1() -> bool {
    var var_0 = ~_wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), 24562u), (reverseBits(vec2<u32>(u_input.a, u_input.a)) ^ vec2<u32>(1u, 25474u)) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)));
    global0 = Struct_2(~_wgslsmith_mod_i32(global0.a, ~global0.a << (_wgslsmith_clamp_u32(u_input.a, 4399u, var_0.x) % 32u)), !func_2(~abs(global0.a)));
    return all(!select(!func_2(global0.a), global0.b, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, false, func_1());
    var var_1 = _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, abs(u_input.a), select(u_input.a, u_input.a, true), 19502u), abs(abs(vec4<u32>(7789u, 0u, u_input.a, u_input.a)))), ~(~select(vec4<u32>(u_input.a, u_input.a, 43294u, 7671u), vec4<u32>(11560u, 57400u, 13095u, u_input.a), global0.b)) << (vec4<u32>(_wgslsmith_mod_u32(u_input.a, ~u_input.a), u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a), 4294967295u) % vec4<u32>(32u)));
    var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(0u, ~0u), vec2<u32>(select(47144u, u_input.a, true), u_input.a)), ~min(~vec2<u32>(4294967295u, u_input.a), select(vec2<u32>(50988u, u_input.a), vec2<u32>(u_input.a, 1u), vec2<bool>(true, false)))), _wgslsmith_mult_u32(~(~1u), 18526u) | ~firstLeadingBit(~u_input.a));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1316f, 1147f, -562f, 1075f), vec4<f32>(501f, -195f, -802f, -1859f))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2314f, 833f, 141f, 955f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1947f, -260f, -1034f)))))));
    let var_3 = Struct_5(Struct_4(Struct_2(-_wgslsmith_mult_i32(global0.a, 0i), vec4<bool>(true, true, true, true)), Struct_2(global0.a, !(!global0.b))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.x, var_2.x, -1000f, var_2.x))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(143f, 1000f, -140f, var_2.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(105f, -878f, _wgslsmith_f_op_f32(min(1000f, -1932f)), var_2.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 940f, var_2.x, var_2.x) * vec4<f32>(-1073f, var_2.x, 502f, 1243f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)))))), Struct_3(vec4<i32>(-global0.a, -global0.a, 1i, global0.a), Struct_2(max(1i, -global0.a), !func_3(true, vec3<u32>(u_input.a, 0u, 4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.zz))), Struct_3(reverseBits((vec4<i32>(global0.a, -20381i, global0.a, global0.a) ^ vec4<i32>(-32591i, global0.a, global0.a, 1i)) >> (vec4<u32>(4294967295u, 47997u, u_input.a, 1u) % vec4<u32>(32u))), Struct_2(-global0.a | global0.a, vec4<bool>(var_0.x, all(vec2<bool>(true, false)), var_0.x, var_0.x | var_0.x)), _wgslsmith_f_op_vec2_f32(var_2.yz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_2.xx))))));
    var_0 = vec3<bool>(false, var_0.x, global0.b.x);
    var_0 = !func_2(-countOneBits(_wgslsmith_sub_i32(-9309i, 22314i))).yxx;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_mult_u32(min(u_input.a, 37002u), u_input.a), _wgslsmith_clamp_u32(u_input.a, u_input.a, 14258u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d.c.x + 1000f)), ~(-countOneBits(vec4<i32>(global0.a, var_3.a.a.a, 31442i, 49168i))) | var_3.e.a, ~(-vec2<i32>(var_3.a.b.a, global0.a << (47356u % 32u))));
}

