struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: vec3<bool>;

var<private> global2: Struct_4 = Struct_4(Struct_1(vec2<u32>(1u, 4294967295u)), Struct_3(false, 444f, vec3<u32>(7430u, 4294967295u, 0u), 43188u, 1699f), true);

var<private> global3: array<f32, 14> = array<f32, 14>(-1202f, -1000f, 879f, 214f, 143f, 396f, -418f, 511f, 113f, 1491f, -493f, 574f, -1064f, 1815f);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: bool) -> bool {
    let var_0 = reverseBits(1u);
    global1 = vec3<bool>(false, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(1u, 14u)], global2.b.b)) - _wgslsmith_f_op_f32(ceil(1669f))) * _wgslsmith_f_op_f32(max(-1425f, _wgslsmith_f_op_f32(min(global2.b.b, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 14u)]))))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.b.e)), _wgslsmith_f_op_f32(-431f - global2.b.e)));
    let var_1 = Struct_2(select(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(global1.x, true, true, global1.x), false)), select(select(select(vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(arg_0, arg_1, false, true), vec4<bool>(global1.x, global2.c, global1.x, global2.c)), !vec4<bool>(true, true, arg_1, true), !vec4<bool>(true, true, global1.x, arg_1)), !select(vec4<bool>(true, true, false, arg_1), vec4<bool>(arg_0, arg_1, true, arg_1), false), select(vec4<bool>(false, true, false, false), !vec4<bool>(true, global1.x, false, global1.x), !global1.x)), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-190f, _wgslsmith_f_op_f32(trunc(-1183f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.e))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.e, 1000f, global2.b.e) - vec3<f32>(-727f, -1889f, 164f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(288f, 372f, -1665f), vec3<f32>(-1046f, -996f, 901f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 14u)], global2.b.e, global2.b.b))), all(vec4<bool>(false, false, global1.x, false))))))), any(vec2<bool>(global2.c, arg_0)));
    let var_2 = var_1.a;
    let var_3 = -547f;
    return true;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_sub_vec2_i32(-(~_wgslsmith_add_vec2_i32(vec2<i32>(0i, 1i) << (arg_2.a % vec2<u32>(32u)), vec2<i32>(-32290i, 33994i) ^ vec2<i32>(-1i, u_input.a))), ~vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), ~(-2147483647i)), u_input.a));
    var var_1 = global3[_wgslsmith_index_u32(arg_1, 14u)];
    global2 = Struct_4(global2.a, Struct_3(false, arg_0.x, vec3<u32>(~(~arg_1), ~_wgslsmith_mult_u32(19446u, 24991u), 0u), 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -452f)), true);
    global2 = Struct_4(Struct_1(arg_2.a), Struct_3(true, global3[_wgslsmith_index_u32(~countOneBits(~arg_2.a.x), 14u)], vec3<u32>(arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, global0[_wgslsmith_index_u32(41419u, 29u)]), global2.b.c) ^ ~0u, 0u), abs(min(55400u, arg_2.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-425f))), _wgslsmith_f_op_f32(298f - _wgslsmith_f_op_f32(trunc(-1000f)))))), false);
    var var_2 = global0[_wgslsmith_index_u32(~(~0u), 29u)];
    return !func_3(true, arg_2.a.x == ~57207u);
}

fn func_1(arg_0: u32) -> Struct_5 {
    var var_0 = u_input.a;
    let var_1 = Struct_1(~vec2<u32>(u_input.b.x, arg_0));
    var var_2 = Struct_2(select(vec4<bool>(false, global2.b.a, all(!vec3<bool>(global2.c, global2.b.a, global1.x)), true), vec4<bool>(global1.x, false, global1.x & true, !(!global1.x)), select(!vec4<bool>(true, true, true, global2.c), vec4<bool>(true, global2.c, func_2(vec3<f32>(global3[_wgslsmith_index_u32(arg_0, 14u)], 1138f, 347f), 0u, global2.a), u_input.b.x <= var_1.a.x), vec4<bool>(!global1.x, global2.b.a, !global2.c, func_2(vec3<f32>(-594f, global2.b.e, global2.b.e), 0u, Struct_1(var_1.a))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-698f, global3[_wgslsmith_index_u32(1u, 14u)], -1234f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(-379f)), _wgslsmith_f_op_f32(-248f + global3[_wgslsmith_index_u32(4294967295u, 14u)]), 1f))))), (abs(0i) >> ((0u & u_input.b.x) % 32u)) > u_input.a);
    var var_3 = select(~vec3<u32>(global0[_wgslsmith_index_u32(34361u, 29u)], global2.b.d, ~arg_0), ~global2.b.c, !(global2.b.e >= 571f));
    let var_4 = select(!(!select(var_2.a.xxx, vec3<bool>(var_2.a.x, var_2.a.x, false), any(var_2.a.yz))), vec3<bool>(global2.c, var_2.a.x | false, true), !select(vec3<bool>(u_input.a == -1i, !global2.b.a, func_2(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], var_2.b.x, global3[_wgslsmith_index_u32(0u, 14u)]), var_3.x, Struct_1(vec2<u32>(20724u, 1u)))), vec3<bool>(false, global2.c, u_input.a >= u_input.a), !global2.c));
    return Struct_5(Struct_4(global2.a, global2.b, global1.x), 0u, Struct_2(var_2.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_2.b), vec3<f32>(842f, global3[_wgslsmith_index_u32(global2.a.a.x, 14u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 29u)], 14u)]))), var_2.b)), true), Struct_2(select(select(!var_2.a, !vec4<bool>(true, var_4.x, true, true), all(var_4.xy)), !(!vec4<bool>(false, true, true, global2.c)), select(!vec4<bool>(var_2.a.x, var_4.x, false, false), vec4<bool>(false, false, true, false), var_2.a)), _wgslsmith_div_vec3_f32(var_2.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-313f, global3[_wgslsmith_index_u32(1u, 14u)], global3[_wgslsmith_index_u32(0u, 14u)]) - var_2.b), var_2.b, true))), !select(global2.c, all(global1.xx), !var_2.c)), vec4<i32>(-u_input.a, 59859i, _wgslsmith_sub_i32(u_input.a & u_input.a, 1i), select(u_input.a, u_input.a, func_3(func_3(true, false), any(var_2.a.yxz)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_5, arg_3: Struct_1) -> Struct_4 {
    global1 = func_1(~23516u).c.a.zxz;
    global3 = array<f32, 14>();
    global3 = array<f32, 14>();
    return Struct_4(arg_3, Struct_3(!(!any(vec3<bool>(false, global1.x, global1.x))), -293f, max(_wgslsmith_mod_vec3_u32(arg_2.a.b.c, u_input.b), abs(abs(global2.b.c))), ~(~1800u ^ arg_3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1383f - arg_2.d.b.x) - _wgslsmith_f_op_f32(exp2(global2.b.b))))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global1.yx;
    var var_1 = !(!(!var_0));
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-268f, global2.b.e, 458f, global3[_wgslsmith_index_u32(global2.b.d, 14u)]), vec4<f32>(-663f, global2.b.e, -1523f, global3[_wgslsmith_index_u32(u_input.b.x, 14u)]), vec4<bool>(true, true, true, global2.c)))), vec4<f32>(global2.b.e, global3[_wgslsmith_index_u32(34202u, 14u)], global3[_wgslsmith_index_u32(select(16280u, 42390u, true), 14u)], _wgslsmith_f_op_f32(f32(-1f) * -564f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1064f, -1257f, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(127219u, 29u)], 14u)], global3[_wgslsmith_index_u32(40799u, 14u)]) + vec4<f32>(global3[_wgslsmith_index_u32(global2.b.c.x, 14u)], 592f, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 14u)], -2200f))))), Struct_1(~select(vec2<u32>(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 29u)]), ~u_input.b.xy, global1.xx)), func_1(global2.b.d), Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global2.a.a.x, global0[_wgslsmith_index_u32(66249u, 29u)]) & vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_clamp_vec2_u32(u_input.b.yy, vec2<u32>(global0[_wgslsmith_index_u32(1u, 29u)], u_input.b.x), global2.a.a)), vec2<u32>(7745u, 11u) >> (reverseBits(u_input.b.xz) % vec2<u32>(32u)))));
    var_1 = func_1(1u).d.a.yy;
    var var_3 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-903f, _wgslsmith_f_op_f32(select(-1165f, global3[_wgslsmith_index_u32(78542u, 14u)], true)))), _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(~1u, 14u)], 619f)), _wgslsmith_f_op_f32(-1216f - -1839f))), ~abs(~0u) << (_wgslsmith_dot_vec4_u32((vec4<u32>(47948u, 0u, global2.b.d, 24294u) >> (vec4<u32>(var_2.b.c.x, var_2.a.a.x, var_2.b.d, 4294967295u) % vec4<u32>(32u))) & vec4<u32>(0u, 8685u, global2.b.d, 1u), vec4<u32>(firstTrailingBit(global2.b.c.x), _wgslsmith_add_u32(u_input.b.x, u_input.b.x), ~global2.b.d, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 54955u), u_input.b.zz))) % 32u), var_2.a);
    var var_4 = _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(23333u, 1u, 33326u, global2.b.d), ~vec4<u32>(var_2.b.c.x, 12260u, 0u, var_2.a.a.x)), _wgslsmith_mod_u32(max(global0[_wgslsmith_index_u32(4833u, 29u)] & 1u, 0u), var_2.b.c.x)), _wgslsmith_mult_vec3_u32(~var_2.b.c, _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(countOneBits(24522u), _wgslsmith_mod_u32(global2.a.a.x, var_2.b.d), ~u_input.b.x))));
    var_4 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(global2.b.d, 1u)), global0[_wgslsmith_index_u32(global2.a.a.x, 29u)], 1u) & vec3<u32>(u_input.b.x, 1u, ~max(4294967295u, 1u)), u_input.b);
    var var_5 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-2369f)), _wgslsmith_f_op_f32(-var_2.b.b), -1032f, _wgslsmith_f_op_f32(sign(-1333f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.e, global2.b.b, var_2.b.e, -1785f) * vec4<f32>(-893f, global2.b.e, var_2.b.b, -1000f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-708f, global3[_wgslsmith_index_u32(0u, 14u)], global2.b.b, global2.b.e), vec4<f32>(-1099f, global3[_wgslsmith_index_u32(47585u, 14u)], 1044f, global2.b.b)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(318f, -1133f, -774f, var_2.b.e), vec4<f32>(global2.b.e, 1265f, -431f, var_2.b.b), vec4<bool>(global2.b.a, var_1.x, var_0.x, false)))))), Struct_1(_wgslsmith_div_vec2_u32(firstLeadingBit(max(vec2<u32>(global0[_wgslsmith_index_u32(51164u, 29u)], 22858u), vec2<u32>(22844u, 5866u))), ~var_2.a.a)), func_1(var_2.a.a.x), func_1(~var_2.a.a.x).a.a);
    var_3 = var_5.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_4.x, 123432u, countOneBits(4294967295u), countOneBits(35877u)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(66959u, 8871u, global0[_wgslsmith_index_u32(4294967295u, 29u)], u_input.b.x), vec4<u32>(2134u, u_input.b.x, var_4.x, 12753u))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.c.x, var_5.a.a.x), var_5.b.c.zx), var_4.x, 4294967295u & var_4.x, u_input.b.x))), vec2<u32>(global2.b.d, 1u));
}

