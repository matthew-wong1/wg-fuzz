struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 9>;

var<private> global1: vec4<bool>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), u_input.c.yy));
    var var_1 = u_input.c.x << (~(~(~u_input.c.x)) % 32u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-730f, _wgslsmith_f_op_f32(-var_0.a.a.x))), _wgslsmith_f_op_f32(var_0.a.a.x + _wgslsmith_f_op_f32(-var_0.a.a.x)))), _wgslsmith_f_op_f32(var_0.a.a.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-351f + var_0.a.a.x), var_0.a.a.x))));
    let var_3 = var_0.a.a.x;
    var var_4 = _wgslsmith_sub_u32(min(var_0.a.b.x >> (var_0.a.b.x % 32u), ~max(_wgslsmith_sub_u32(4294967295u, 5983u), ~1u)), ~max(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(40387u, u_input.c.x, var_0.a.b.x, var_0.a.b.x), vec4<u32>(0u, u_input.c.x, 23538u, 4294967295u)), vec4<u32>(1u, 3650u, u_input.c.x, 37637u)), reverseBits(countOneBits(u_input.c.x))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1453f))), -237f))));
}

fn func_2() -> u32 {
    var var_0 = vec4<bool>(all(!select(select(global1.yww, global1.wyx, false), !global1.wyz, global1.yyw)), false, !all(select(!vec4<bool>(global1.x, false, false, false), vec4<bool>(false, false, global1.x, global1.x), !vec4<bool>(global1.x, global1.x, true, global1.x))), all(!(!(!vec4<bool>(global1.x, global1.x, global1.x, false)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-903f, -506f, -406f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(349f, 152f, 473f))))), _wgslsmith_sub_vec2_u32(select(u_input.c.zx, min(u_input.c.zz, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, u_input.c.x))), !global1.x || global1.x), u_input.c.xx));
    var var_2 = Struct_4(vec2<u32>(var_1.b.x, var_1.b.x) | select((vec2<u32>(u_input.c.x, u_input.c.x) & u_input.c.xy) | _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 1u), u_input.c.yx), vec2<u32>(31005u << (u_input.c.x % 32u), 1u), !var_0.yz), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(149f, -434f))) - var_1.a.x));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x))), _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(sign(-847f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -1291f)) * -432f))), _wgslsmith_f_op_f32(abs(-2090f)));
    let var_4 = var_1;
    return ~u_input.c.x;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_mod_u32(countOneBits(11574u << (countOneBits(func_2()) % 32u)), ~59258u);
    global1 = !(!select(!select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(true, global1.x, false, global1.x)), !(!vec4<bool>(global1.x, false, true, false)), vec4<bool>(global1.x, !global1.x, all(global1.wz), true)));
    var var_1 = vec4<bool>(true, true, true, global1.x);
    let var_2 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.d, -u_input.a), global0[_wgslsmith_index_u32(~(~u_input.c.x), 9u)], vec3<i32>(_wgslsmith_clamp_i32(u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -1i, 48552i, 41832i), vec4<i32>(u_input.d.x, u_input.a.x, u_input.a.x, u_input.a.x)), -2147483647i), u_input.b, u_input.e.x));
    global1 = !vec4<bool>(true, var_1.x & true, true, true);
    return Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1143f, -1000f, 1446f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(927f, -167f, -418f), vec3<f32>(-1873f, 110f, 1280f))))), ~max(u_input.c.xz, u_input.c.yy)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> vec3<f32> {
    var var_0 = Struct_2(!(!(!select(global1.yz, vec2<bool>(false, global1.x), global1.xx))), func_1().a, 4294967295u, u_input.a.x, func_1().a);
    let var_1 = all(global1.zzy);
    var var_2 = Struct_4(var_0.e.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1015f + -760f)), var_0.b.a.x);
    var_0 = Struct_2(vec2<bool>(all(var_0.a), global1.x), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.a.a), ~vec2<u32>(~1u, 4294967295u)), arg_0.a.b.x, abs(arg_2), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(161f, 2242f, var_0.e.a.x))))), var_0.b.b));
    var var_3 = arg_0.a.b.x;
    return vec3<f32>(691f, _wgslsmith_f_op_f32(-var_2.b), -1073f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(func_1(), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1237f, -603f, -909f))), vec2<u32>(8599u, u_input.c.x))), 1i, _wgslsmith_f_op_f32(max(-163f, 1017f))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(547f * var_0.x))))), _wgslsmith_f_op_f32(var_0.x - var_0.x), -2045f);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1447f, 151f, var_0.x)), vec4<f32>(var_1.x, 1000f, 354f, 952f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-846f, var_0.x, 2649f, var_1.x)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -437f, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, -966f, -1000f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_1.x, 545f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-437f, 1808f, 309f, var_0.x) - vec4<f32>(var_1.x, 1078f, var_1.x, 548f)), vec4<f32>(-1692f, 599f, 1779f, 267f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -1027f, -1011f, -1000f), vec4<f32>(var_0.x, var_1.x, var_1.x, var_1.x), false)) * vec4<f32>(346f, var_1.x, 573f, 1191f)))), select(vec4<bool>(global1.x, false && global1.x, global1.x, u_input.d.x <= 23283i), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, true, true)), !vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(global1.x, false, false, true)), !global1.x & all(vec2<bool>(true, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_0.x, 2303f, var_1.x)) - var_2))) * var_2));
}

