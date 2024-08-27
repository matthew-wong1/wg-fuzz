struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: bool,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32;

var<private> global2: array<vec3<f32>, 18>;

var<private> global3: vec2<f32> = vec2<f32>(-458f, -1996f);

var<private> global4: array<i32, 12>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    var var_0 = Struct_3(Struct_2(vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(537f, global3.x, 248f, 1000f) - vec4<f32>(1223f, 701f, -441f, global3.x)), 19998i, true, ~(~arg_0)), _wgslsmith_sub_i32(abs(global4[_wgslsmith_index_u32(1u, 12u)]), -global4[_wgslsmith_index_u32(arg_0.x, 12u)]) & ~(~global4[_wgslsmith_index_u32(arg_0.x, 12u)])), ~_wgslsmith_mult_i32(abs(45987i) & _wgslsmith_mod_i32(-9274i, u_input.b), -31249i));
    let var_1 = ~1i << (0u % 32u);
    global3 = vec2<f32>(1231f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -272f), _wgslsmith_f_op_f32(-var_0.a.b.a.x))));
    global1 = ~_wgslsmith_div_u32(~arg_0.x, 4294967295u) | 4294967295u;
    return !(!(!vec4<bool>(all(vec4<bool>(var_0.a.b.c, var_0.a.a.x, false, true)), true, all(vec3<bool>(true, var_0.a.b.c, false)), var_0.a.b.c)));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool) -> Struct_5 {
    var var_0 = u_input.d.x >> (_wgslsmith_dot_vec3_u32(u_input.d, u_input.d) % 32u);
    global2 = array<vec3<f32>, 18>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.x, 1708f))))), 102f, _wgslsmith_f_op_f32(f32(-1f) * -836f));
    let var_2 = Struct_2(select(select(!(!vec4<bool>(true, arg_2, arg_1, true)), !(!vec4<bool>(arg_0, arg_2, arg_2, false)), true), !(!vec4<bool>(true, arg_0, true, false)), func_3(abs(abs(vec4<u32>(u_input.d.x, u_input.d.x, 0u, 0u))))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.x, var_1.x, global3.x, 265f))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1754f, global3.x, -639f, -714f) + vec4<f32>(576f, global3.x, -270f, var_1.x))))), _wgslsmith_clamp_i32(10877i, u_input.e.x >> (11031u % 32u), u_input.a) & (global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), 12u)] ^ 2147483647i), any(vec3<bool>(arg_0, arg_1, any(vec3<bool>(false, true, true)))), vec4<u32>(u_input.d.x, countOneBits(firstTrailingBit(u_input.d.x)), u_input.d.x, 49492u)), -2147483647i);
    global0 = all(!vec3<bool>(!all(var_2.a.zx), true, select(true, !var_2.a.x, !arg_2)));
    return Struct_5(-vec3<i32>(-3870i, u_input.e.x, u_input.c), any(!select(select(vec2<bool>(arg_0, var_2.b.c), var_2.a.zy, arg_1), var_2.a.zy, var_2.a.wz)), abs(min(vec4<u32>(firstTrailingBit(12546u), 1u, firstTrailingBit(u_input.d.x), _wgslsmith_mult_u32(u_input.d.x, u_input.d.x)), var_2.b.d)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_2.b.a - var_2.b.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b.a - vec4<f32>(-984f, -687f, var_2.b.a.x, var_1.x)))))));
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: vec3<i32>) -> vec3<bool> {
    var var_0 = vec2<bool>(false, any(select(select(vec4<bool>(true, true, arg_1.b, arg_1.b), vec4<bool>(false, arg_1.b, arg_1.b, arg_1.b), vec4<bool>(arg_1.b, true, false, false)), !vec4<bool>(false, true, arg_1.b, arg_1.b), all(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, false)))) | true);
    global1 = _wgslsmith_mult_u32(firstLeadingBit(countOneBits(select(firstLeadingBit(4294967295u), arg_1.c.x, !var_0.x))), 5876u);
    global1 = countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(~67424u), u_input.d.x, u_input.d.x | u_input.d.x, ~17014u), ~arg_1.c));
    return vec3<bool>(var_0.x, arg_1.b, any(select(func_3(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.c.x, arg_1.c.x, u_input.d.x, 4294967295u), arg_1.c)).zz, func_3(~arg_1.c).xy, true)));
}

fn func_1() -> Struct_3 {
    global2 = array<vec3<f32>, 18>();
    global1 = ~u_input.d.x;
    global0 = any(func_4(-46226i, func_2(true, false, select(true, true, false)), max(u_input.e.wzx, vec3<i32>(-34704i, u_input.e.x << (u_input.d.x % 32u), _wgslsmith_add_i32(0i, -1i)))));
    global1 = ~1u;
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -221f))), _wgslsmith_div_f32(global3.x, -222f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) + vec2<f32>(-804f, 1595f)))))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(353f, global3.x))))))));
    return Struct_3(Struct_2(!vec4<bool>(u_input.d.x != 1u, true, false, true), Struct_1(vec4<f32>(global3.x, _wgslsmith_f_op_f32(round(-159f)), -258f, -1480f), 0i, all(vec3<bool>(true, true, true)), _wgslsmith_mult_vec4_u32(vec4<u32>(44322u, u_input.d.x, u_input.d.x, 4294967295u), vec4<u32>(4294967295u, u_input.d.x, 67379u, u_input.d.x)) & vec4<u32>(4294967295u, 4294967295u, u_input.d.x, u_input.d.x)), _wgslsmith_clamp_i32(-(global4[_wgslsmith_index_u32(4986u, 12u)] | u_input.a), -_wgslsmith_mod_i32(global4[_wgslsmith_index_u32(0u, 12u)], global4[_wgslsmith_index_u32(0u, 12u)]), select(global4[_wgslsmith_index_u32(u_input.d.x, 12u)] << (21213u % 32u), _wgslsmith_dot_vec3_i32(u_input.e.ywy, u_input.e.ywz), all(vec4<bool>(false, true, false, false))))), global4[_wgslsmith_index_u32(u_input.d.x, 12u)]);
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: f32, arg_3: bool) -> vec4<u32> {
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, arg_0.a.b.b, -12845i), -u_input.e.wyx), u_input.e.yzx), func_2(!arg_1 && false, arg_0.a.b.c, true).a));
    global1 = arg_0.a.b.d.x;
    let var_1 = global3.x <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1724f + _wgslsmith_f_op_f32(arg_0.a.b.a.x + 415f)), _wgslsmith_f_op_f32(f32(-1f) * -1095f));
    var var_2 = ~arg_0.a.b.d.x;
    global4 = array<i32, 12>();
    return abs(arg_0.a.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, i32(-1i) * -52246i, u_input.b), vec3<i32>(i32(-1i) * -global4[_wgslsmith_index_u32(u_input.d.x, 12u)], -2147483647i, u_input.b)), _wgslsmith_f_op_f32(min(global3.x, global3.x)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1190f - 220f)))), countOneBits(~func_5(func_1(), func_2(true, false, true).b, global3.x, func_4(u_input.a, Struct_5(vec3<i32>(global4[_wgslsmith_index_u32(u_input.d.x, 12u)], global4[_wgslsmith_index_u32(4294967295u, 12u)], 0i), false, vec4<u32>(u_input.d.x, 13140u, u_input.d.x, u_input.d.x), vec4<f32>(global3.x, global3.x, global3.x, global3.x)), u_input.e.zzy).x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1075f, 1254f, global3.x, global3.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-356f, global3.x, 521f, global3.x), vec4<f32>(global3.x, 524f, -502f, 221f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, global3.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1586f, 1000f, global3.x, global3.x))))));
    global3 = var_0.d.xx;
    let var_1 = !(!select(func_1().a.a.wzw, !vec3<bool>(var_0.b, false, var_0.b), true));
    let var_2 = Struct_2(!select(select(func_3(vec4<u32>(var_0.c.x, 15871u, u_input.d.x, u_input.d.x)), vec4<bool>(var_0.b, true, var_0.b, true), any(vec2<bool>(var_0.b, false))), vec4<bool>(true, func_1().a.a.x, var_1.x, var_0.b | false), func_3(reverseBits(var_0.c))), func_1().a.b, _wgslsmith_dot_vec2_i32(select((u_input.e.zw >> (var_0.c.yw % vec2<u32>(32u))) & u_input.e.yy, reverseBits(vec2<i32>(39057i, -1i) | var_0.a.xy), vec2<bool>(var_1.x, false)), var_0.a.yy));
    var var_3 = func_1().b;
    global3 = _wgslsmith_f_op_vec2_f32(step(var_0.d.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b.a.zy))));
    let var_4 = Struct_2(!(!vec4<bool>(var_2.b.c, !var_0.b, true, var_1.x)), var_2.b, -48299i);
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.b.a.zw) + vec2<f32>(func_1().a.b.a.x, _wgslsmith_f_op_f32(-1133f + var_2.b.a.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b.a.ww)), vec2<f32>(_wgslsmith_f_op_f32(trunc(global3.x)), _wgslsmith_f_op_f32(min(var_2.b.a.x, 651f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4.b.a.yy + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_4.b.a.xz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(967f, 1384f)), 10159i >= var_0.a.x))) * var_0.d.ww));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_vec3_f32(step(var_4.b.a.wzy, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1233f, 1587f, var_0.d.x))))))), ~(~vec2<u32>(~var_0.c.x, 160394u)));
}

