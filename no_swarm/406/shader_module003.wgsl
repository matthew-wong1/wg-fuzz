struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    global0 = u_input.a.yy;
    global0 = ~(~max(_wgslsmith_mod_vec2_u32(~vec2<u32>(7065u, global0.x), _wgslsmith_mod_vec2_u32(u_input.a.zy, u_input.a.yz)), countOneBits(~u_input.a.zy)));
    global0 = u_input.a.zx;
    let var_0 = Struct_3(~43740u, select(select(select(!vec4<bool>(arg_0, false, false, arg_0), !vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, true, false)), select(vec4<bool>(arg_0, false, true, arg_0), select(vec4<bool>(arg_0, true, false, false), vec4<bool>(arg_0, false, false, arg_0), arg_0), select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(arg_0, true, false, false), arg_0)), false), vec4<bool>(arg_0, _wgslsmith_f_op_f32(select(-200f, 1938f, arg_0)) < 1333f, arg_0, -u_input.b.x <= _wgslsmith_clamp_i32(1i, 2147483647i, 1i)), select(vec4<bool>(true, any(vec4<bool>(true, arg_0, arg_0, true)), true, true), select(!vec4<bool>(arg_0, false, arg_0, arg_0), select(vec4<bool>(false, false, false, true), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, false)), any(vec2<bool>(arg_0, arg_0))), false)), vec4<u32>(abs(~min(1u, u_input.a.x)), ~1u, ~abs(_wgslsmith_div_u32(u_input.a.x, global0.x)), _wgslsmith_mult_u32(~87746u, global0.x)), Struct_2(u_input.a.x, Struct_1(vec2<bool>(all(vec4<bool>(false, true, arg_0, true)), true), vec3<i32>(min(-16784i, 20195i), -u_input.b.x, -2147483647i), 11205u)));
    global0 = u_input.a.xy;
    return vec2<bool>(var_0.b.x, var_0.b.x);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_4 {
    var var_0 = ~(-u_input.b.xwy);
    global0 = u_input.a.yz;
    var var_1 = ~(~vec4<u32>(global0.x >> ((arg_1.a >> (u_input.a.x % 32u)) % 32u), arg_1.b.c, 1u, 1u));
    var_0 = vec3<i32>(max(i32(-1i) * -11488i, u_input.b.x), var_0.x, _wgslsmith_mod_i32(-(~(arg_1.b.b.x ^ u_input.b.x)), ~min(-18899i, -18243i ^ arg_1.b.b.x)));
    var_1 = vec4<u32>(0u, countOneBits(~(abs(var_1.x) & arg_1.b.c)), ~(~(~global0.x & _wgslsmith_add_u32(0u, u_input.a.x))), var_1.x);
    return Struct_4(Struct_2(var_1.x, Struct_1(func_3(true), _wgslsmith_div_vec3_i32(select(u_input.b.wyx, vec3<i32>(var_0.x, arg_1.b.b.x, -42802i), arg_1.b.a.x), abs(u_input.b.wxx)), u_input.a.x)), var_0.yy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(956f, 301f, -247f, 1222f), vec4<f32>(-431f, -152f, 368f, -422f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-417f, 475f, 147f, 408f))), vec4<f32>(_wgslsmith_div_f32(102f, 532f), _wgslsmith_f_op_f32(abs(1277f)), -335f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    global0 = firstLeadingBit(~vec2<u32>((global0.x ^ 28817u) & abs(u_input.a.x), 43744u));
    global0 = vec2<u32>(abs(_wgslsmith_sub_u32(50005u | global0.x, arg_1.a.a & global0.x)) | 4294967295u, ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_2.c, abs(global0.x)), 27551u));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-185f, 1129f), vec2<f32>(1000f, arg_1.c.x))))))));
    global0 = ~select(vec2<u32>(~min(global0.x, 9447u), _wgslsmith_div_u32(32553u, ~46012u)), ~u_input.a.zy, func_2(_wgslsmith_add_i32(1i, -2147483647i), func_2(min(47041i, arg_2.b.x), Struct_2(0u, Struct_1(arg_2.a, arg_1.a.b.b, u_input.a.x))).a).a.b.a);
    global0 = ~(~u_input.a.zx);
    return _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 0u, 0u, 37441u), vec4<u32>(arg_2.c, u_input.a.x, 30342u, 1u)) | _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.c, arg_2.c), vec2<u32>(arg_1.a.b.c, u_input.a.x)), firstLeadingBit(global0.x), ~_wgslsmith_clamp_u32(arg_2.c, 0u, u_input.a.x)), 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.a.x, arg_2.c, global0.x, 1u)), select(vec4<u32>(arg_2.c, 1u, 31012u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 19850u, arg_2.c, 20273u), vec4<u32>(arg_1.a.a, 105286u, u_input.a.x, global0.x), vec4<u32>(4294967295u, arg_2.c, u_input.a.x, 8042u)), !vec4<bool>(arg_0.x, arg_1.a.b.a.x, true, arg_2.a.x))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(arg_1.a.b.c, global0.x, u_input.a.x, 4294967295u), vec4<u32>(9441u, 1u, u_input.a.x, global0.x), false), vec4<u32>(arg_2.c, arg_1.a.a, arg_1.a.b.c, 41661u) | vec4<u32>(35071u, arg_2.c, 22366u, 47680u)), vec4<u32>(arg_2.c, 1u, global0.x, ~arg_2.c))));
}

fn func_1(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_div_vec3_u32(~u_input.a, vec3<u32>(29603u, arg_0.a, 33554u) ^ select(vec3<u32>(28501u, 0u, 1u) & vec3<u32>(76011u, global0.x, 0u), vec3<u32>(20506u, 1u, global0.x), select(vec3<bool>(true, false, arg_0.b.a.x), vec3<bool>(true, arg_0.b.a.x, arg_0.b.a.x), true))) >> (vec3<u32>(reverseBits(func_4(!vec3<bool>(arg_0.b.a.x, false, false), func_2(u_input.b.x, arg_0), arg_0.b, func_2(u_input.b.x, arg_0).c)), firstTrailingBit(global0.x), ~arg_0.a) % vec3<u32>(32u));
    let var_1 = Struct_1(!select(!arg_0.b.a, arg_0.b.a, true), arg_0.b.b, max(~abs(u_input.a.x), 1u));
    var_0 = ~firstTrailingBit(~vec3<u32>(arg_0.a, var_1.c, 61966u));
    let var_2 = Struct_3(global0.x ^ 4294967295u, select(vec4<bool>(_wgslsmith_mult_u32(var_0.x, 22656u) >= 71347u, any(arg_0.b.a), !arg_0.b.a.x, false), vec4<bool>(true, true, var_1.a.x, var_1.a.x), vec4<bool>(true, var_1.a.x, true, ~1i == -var_1.b.x)), ~firstTrailingBit(min(~vec4<u32>(var_0.x, arg_0.b.c, 22841u, 4294967295u), abs(vec4<u32>(arg_0.a, global0.x, var_0.x, var_1.c)))), arg_0);
    var var_3 = !var_2.d.b.a.x == all(!var_2.b.wzz);
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.xx;
    var var_0 = _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mod_i32(63751i, reverseBits(_wgslsmith_mult_i32(reverseBits(-735i), ~u_input.b.x))));
    let var_1 = vec4<bool>(true, u_input.b.x >= _wgslsmith_add_i32(-1i, -17954i), true || !all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true)), true);
    let var_2 = var_1.zyx;
    let var_3 = ~(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, 0u, global0.x, u_input.a.x)), vec4<u32>(global0.x, global0.x, u_input.a.x, u_input.a.x) << (vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x) % vec4<u32>(32u))), reverseBits(~vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x))) & ~((vec4<u32>(1u, global0.x, u_input.a.x, u_input.a.x) | vec4<u32>(16850u, 98775u, u_input.a.x, 1u)) << (func_1(Struct_2(0u, Struct_1(vec2<bool>(true, true), u_input.b.wwx, 0u))) % vec4<u32>(32u))));
    var var_4 = Struct_5(!var_1, vec4<i32>(max(-min(u_input.b.x, 30507i), u_input.b.x), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(abs(-1i), u_input.b.x, -u_input.b.x, ~(-7698i))), u_input.b.x, u_input.b.x));
    var_4 = Struct_5(var_4.a, firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 5189i, u_input.b.x, var_4.b.x) ^ u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, -2147483647i)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -8487i, 1i), vec4<i32>(u_input.b.x, var_4.b.x, u_input.b.x, 20735i)), u_input.b))));
    var_0 = abs(-26327i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-881f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(501f * 476f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-955f * 1000f) - _wgslsmith_f_op_f32(trunc(-1654f))))), _wgslsmith_f_op_f32(step(-795f, -337f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-498f, 855f, -136f) - vec3<f32>(550f, -1137f, 1161f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1185f, 179f, -1253f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-354f, -437f, 727f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1444f, 1569f, 1094f))))), 11992u, abs(~(var_3.zyw ^ u_input.a)) ^ ~(~vec3<u32>(0u, 41667u, 0u)));
}

