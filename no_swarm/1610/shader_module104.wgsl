struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: bool = false;

var<private> global2: array<bool, 15>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_1(select(~vec4<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], 8u)]), ~4294967295u, ~0u, ~u_input.d), vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.d, ~34844u, 1u), 8u)], ~0u, _wgslsmith_mod_u32(min(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)]), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)]), ~4523u), true), !select(select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 15u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 15u)]), vec3<bool>(global2[_wgslsmith_index_u32(58208u, 15u)], global2[_wgslsmith_index_u32(39867u, 15u)], global2[_wgslsmith_index_u32(12831u, 15u)]), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), all(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 15u)], global2[_wgslsmith_index_u32(u_input.d, 15u)]))), select(select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(73026u, 15u)], global2[_wgslsmith_index_u32(u_input.d, 15u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 15u)], false), false), !vec3<bool>(true, false, global2[_wgslsmith_index_u32(19318u, 15u)]), vec3<bool>(true, true, true)), select(select(vec3<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15957u, 8u)], 15u)], global2[_wgslsmith_index_u32(u_input.b, 15u)], true), vec3<bool>(false, true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 8u)], 15u)]), false), vec3<bool>(true, true, true), !vec3<bool>(true, true, global2[_wgslsmith_index_u32(1u, 15u)]))), vec4<u32>(11096u, u_input.a, _wgslsmith_div_u32(1012u, u_input.b), max(~global0[_wgslsmith_index_u32(~u_input.d, 8u)], ~24444u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1307f + 440f), 1f, _wgslsmith_f_op_f32(floor(2017f)))))), reverseBits(~u_input.c));
    global0 = array<u32, 8>();
    var var_1 = var_0.b.x;
    var var_2 = any(!select(!var_0.b.zy, select(vec2<bool>(true, true), vec2<bool>(true, true), !var_0.b.yz), select(var_0.b.yy, vec2<bool>(false, var_0.b.x), select(var_0.b.xy, vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.d, 15u)]), var_0.b.xy))));
    return reverseBits(var_0.a);
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(abs(_wgslsmith_mult_vec4_u32(select(func_3(), countOneBits(vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 8u)], 38805u, 1u)), select(vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32414u, 8u)], 15u)], global2[_wgslsmith_index_u32(0u, 15u)], false, global2[_wgslsmith_index_u32(u_input.b, 15u)]), vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19618u, 8u)], 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)], false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47779u, 8u)], 8u)], 15u)]), vec4<bool>(global2[_wgslsmith_index_u32(7324u, 15u)], true, true, global2[_wgslsmith_index_u32(0u, 15u)]))), vec4<u32>(global0[_wgslsmith_index_u32(min(u_input.d, 20440u), 8u)], reverseBits(4294967295u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)] & 34399u, min(1u, global0[_wgslsmith_index_u32(1u, 8u)])))), select(!vec3<bool>(false, global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 8u)], 15u)], !global2[_wgslsmith_index_u32(u_input.b, 15u)]), !select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 15u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(5232u, 15u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 8u)], 15u)]), true), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~39196u, 8u)], 15u)]), vec4<u32>(u_input.b, 63564u, u_input.b, u_input.a) | select(vec4<u32>(4294967295u, 37411u, abs(0u), _wgslsmith_mult_u32(22661u, global0[_wgslsmith_index_u32(1u, 8u)])), vec4<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], 8u)], 0u), u_input.a, _wgslsmith_clamp_u32(4294967295u, 0u, u_input.b), ~u_input.b), (u_input.d >= 1u) & !global2[_wgslsmith_index_u32(u_input.b, 15u)]), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-194f, 593f, -1856f) * vec3<f32>(210f, -687f, 557f)), vec3<f32>(-1000f, -2296f, 452f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1822f, 190f, -576f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 1413f, -1000f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-645f, -914f, 1000f)))))), vec4<i32>(-(~(u_input.c.x ^ 1i)), -1i << (global0[_wgslsmith_index_u32(9788u, 8u)] % 32u), -_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, -1i), 32471i));
    let var_1 = vec4<bool>(var_0.e.x > 21050i, true, global2[_wgslsmith_index_u32(~u_input.a, 15u)], false);
    global1 = true;
    let var_2 = global0[_wgslsmith_index_u32(var_0.a.x, 8u)];
    let var_3 = min(vec4<i32>(-2147483647i, reverseBits(-var_0.e.x), _wgslsmith_clamp_i32(~var_0.e.x, var_0.e.x, -1i), ~u_input.c.x & _wgslsmith_div_i32(var_0.e.x, var_0.e.x)), (firstTrailingBit(vec4<i32>(3960i, 1i, -1i, 0i)) & select(vec4<i32>(u_input.c.x, -2147483647i, -2147483647i, -1i), vec4<i32>(u_input.c.x, var_0.e.x, var_0.e.x, var_0.e.x), vec4<bool>(var_0.b.x, false, var_1.x, false))) & var_0.e) ^ min(vec4<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(var_0.e.x, var_0.e.x)), 2147483647i, firstLeadingBit(2147483647i), var_0.e.x), var_0.e);
    return vec3<bool>(true, global2[_wgslsmith_index_u32(var_0.c.x, 15u)], false);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec4<u32>) -> u32 {
    var var_0 = select(func_2(), select(select(!(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(arg_2.x, 15u)])), vec3<bool>(true, true, true), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 15u)], false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 15u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(28168u, 15u)], true), all(vec4<bool>(false, true, false, false)))), !vec3<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(11998u, 15u)], global2[_wgslsmith_index_u32(45269u, 15u)], true)), all(vec3<bool>(true, global2[_wgslsmith_index_u32(18047u, 15u)], true)), !global2[_wgslsmith_index_u32(1u, 15u)]), false), func_2());
    var var_1 = Struct_1(vec4<u32>(_wgslsmith_add_u32(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(u_input.a, u_input.a, u_input.d))), 39167u, ~_wgslsmith_div_u32(12913u, arg_0.x), min(~global0[_wgslsmith_index_u32(36225u, 8u)], 14217u)) | vec4<u32>(~68487u, select(u_input.d, u_input.a, !global2[_wgslsmith_index_u32(arg_0.x, 15u)]), ~abs(u_input.b), ~0u >> ((u_input.b | 19409u) % 32u)), vec3<bool>(all(func_2().yy), false, all(!(!vec4<bool>(true, var_0.x, true, global2[_wgslsmith_index_u32(4294967295u, 15u)])))), _wgslsmith_clamp_vec4_u32(~max(firstTrailingBit(vec4<u32>(arg_0.x, arg_0.x, 1u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, arg_2.x, 46643u, u_input.a), arg_2)), min(~abs(arg_2), arg_0), _wgslsmith_mod_vec4_u32(select(arg_2 >> (vec4<u32>(4294967295u, u_input.b, arg_0.x, arg_2.x) % vec4<u32>(32u)), vec4<u32>(global0[_wgslsmith_index_u32(arg_0.x, 8u)], 84079u, global0[_wgslsmith_index_u32(u_input.b, 8u)], 24796u) << (vec4<u32>(arg_2.x, 10331u, 10360u, arg_0.x) % vec4<u32>(32u)), true), ~arg_2 | arg_2)), vec3<f32>(-1422f, -412f, 1000f), vec4<i32>(49672i, arg_1.x, u_input.c.x, arg_1.x));
    let var_2 = ~arg_1.x;
    var var_3 = Struct_1(~_wgslsmith_clamp_vec4_u32(vec4<u32>(~26565u, ~4294967295u, min(1u, 4294967295u), _wgslsmith_mult_u32(var_1.c.x, 0u)), _wgslsmith_div_vec4_u32(countOneBits(arg_2), ~vec4<u32>(u_input.d, 4294967295u, arg_2.x, 4294967295u)), abs(select(var_1.c, arg_2, true))), vec3<bool>(var_1.b.x, !(!(1u >= arg_0.x)), false), var_1.a, vec3<f32>(var_1.d.x, 1628f, _wgslsmith_f_op_f32(-1000f + 1f)), vec4<i32>(_wgslsmith_sub_i32(arg_1.x, u_input.c.x ^ arg_1.x) ^ -31761i, _wgslsmith_add_i32(var_1.e.x, firstTrailingBit(var_2)), -(~(~var_2)), _wgslsmith_sub_i32(8989i, u_input.c.x)));
    let var_4 = -var_3.e | vec4<i32>(-u_input.c.x, -firstTrailingBit(~2147483647i), ~(~1i), -876i);
    return ~countOneBits(~global0[_wgslsmith_index_u32(4294967295u, 8u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>(~func_1(vec4<u32>(17856u, 1u, 0u, 0u), vec4<i32>(u_input.c.x, u_input.c.x, 1i, -1i), vec4<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 8u)], 28367u, u_input.b)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4035u, 0u), vec2<u32>(43474u, 41843u)), u_input.d), 1u, ~global0[_wgslsmith_index_u32(u_input.a, 8u)]) << (select(vec4<u32>(select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5747u, 8u)], 8u)], 4294967295u, true), ~u_input.b, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~0u, 8u)], 8u)]), ~vec4<u32>(55361u, 1u, global0[_wgslsmith_index_u32(4294967295u, 8u)], 4294967295u) | vec4<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 8u)], 4294967295u), !(global2[_wgslsmith_index_u32(u_input.d, 15u)] && true)) % vec4<u32>(32u)), vec3<bool>(!global2[_wgslsmith_index_u32(u_input.d, 15u)], global2[_wgslsmith_index_u32(70829u, 15u)], true), abs(_wgslsmith_mult_vec4_u32(abs(~vec4<u32>(u_input.d, 6189u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2833u, 8u)], 8u)], u_input.b)), vec4<u32>(4860u ^ u_input.a, ~69402u, _wgslsmith_add_u32(54924u, u_input.a), ~u_input.a))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1102f, -503f, 1002f) + vec3<f32>(-1327f, 991f, 804f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-227f, 581f, -602f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1079f, -121f, 2441f) * vec3<f32>(-654f, -139f, 360f))))), _wgslsmith_div_vec4_i32(vec4<i32>(~u_input.c.x, -2147483647i, max(~1i, u_input.c.x), u_input.c.x), vec4<i32>(i32(-1i) * -1i, u_input.c.x, u_input.c.x, _wgslsmith_sub_i32(-24116i, -1i) | _wgslsmith_div_i32(u_input.c.x, 2147483647i))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_0.d.x)), 2150f, all(vec3<bool>(!var_0.b.x, any(vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 15u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35175u, 8u)], 8u)], 15u)], true, var_0.b.x)) && false, !(2147483647i >= u_input.c.x)))));
    global2 = array<bool, 15>();
    global2 = array<bool, 15>();
    let var_2 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.b, 8u)], var_0.a.x), global0[_wgslsmith_index_u32(1u, 8u)], u_input.b ^ 1u, 21336u), abs(abs(vec4<u32>(28222u, u_input.d, 1u, u_input.a)))), ~firstLeadingBit(~var_0.a)), _wgslsmith_mod_vec3_u32(var_0.a.zxz, var_0.c.zwz));
}

