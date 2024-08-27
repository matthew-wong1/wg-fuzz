struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(4294967295u, 34416u, 22038u, 0u, 41108u, 0u, 4294967295u, 0u, 43644u, 11553u, 0u, 63070u, 81274u, 4294967295u, 0u, 53734u, 0u, 49126u, 72226u, 39498u, 11023u, 49209u, 6485u);

var<private> global1: vec2<u32> = vec2<u32>(1u, 36383u);

var<private> global2: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = !(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, arg_0.x, 25841i, arg_0.x), arg_0) >= u_input.a.x);
    global1 = vec2<u32>(~u_input.b, 0u);
    let var_1 = Struct_3(!(!vec3<bool>(var_0, false, !var_0)), Struct_2(vec4<u32>(~min(u_input.e.x, 1u), ~(u_input.e.x >> (2591u % 32u)), max(1u, 1u), 69977u ^ global1.x), min(~(-2147483647i), u_input.d << (1u % 32u)), max(select(~vec4<i32>(u_input.a.x, u_input.d, -2147483647i, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, arg_0.x, 2147483647i, 0i), arg_0), !vec4<bool>(true, var_0, true, var_0)), vec4<i32>(-2147483647i, u_input.a.x, -1i, 5436i) | vec4<i32>(-8104i, u_input.d, u_input.a.x, 2147483647i)), Struct_1(_wgslsmith_f_op_f32(612f * arg_1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.a, arg_1.a, arg_1.a, 757f)))))), i32(-1i) * -36694i, Struct_2(countOneBits(~vec4<u32>(31124u, 118404u, global1.x, 14278u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global1.x, 23u)], 1u, global0[_wgslsmith_index_u32(24505u, 23u)], 0u), vec4<u32>(10388u, u_input.b, 3143u, 4294967295u)) % vec4<u32>(32u))), -9587i, vec4<i32>(34774i, -u_input.a.x ^ _wgslsmith_div_i32(u_input.c.x, 2147483647i), u_input.c.x ^ -51423i, 1i), arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-575f, 581f, arg_1.a, 1207f) * vec4<f32>(arg_1.a, arg_1.a, arg_1.a, arg_1.a))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1728f) - -1475f)));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(852f, 1537f), 1005f, 223f, 1231f);
    global0 = array<u32, 23>();
    return var_1.b.a;
}

fn func_4(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0.e.zx;
    global0 = array<u32, 23>();
    let var_1 = select(vec4<bool>(any(vec3<bool>(true, true, true)), !all(vec4<bool>(false, true, false, false)), !any(vec2<bool>(true, true)), !all(vec3<bool>(true, true, true))), !vec4<bool>(false, true, !all(vec3<bool>(false, true, true)), !any(vec3<bool>(true, true, true))), select(select(vec4<bool>(false, all(vec2<bool>(false, true)), true, true), vec4<bool>(true, true, true, true), !(5840u >= global1.x)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true))))));
    let var_2 = u_input.d & u_input.a.x;
    let var_3 = Struct_3(select(!var_1.yyz, select(vec3<bool>(true, true, 87668u > global1.x), var_1.zwy, !any(vec2<bool>(false, var_1.x))), vec3<bool>(0u <= reverseBits(global1.x), !(global1.x < global0[_wgslsmith_index_u32(global1.x, 23u)]), _wgslsmith_f_op_f32(-arg_0.d.a) <= _wgslsmith_f_op_f32(-arg_0.d.a))), arg_0, -37416i, Struct_2(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, arg_0.a.x, 46331u, 50019u), firstTrailingBit(arg_0.a))), var_2, u_input.a, Struct_1(_wgslsmith_f_op_f32(arg_0.d.a - _wgslsmith_div_f32(arg_0.e.x, arg_0.d.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.e) + arg_0.e), vec4<f32>(arg_0.d.a, _wgslsmith_f_op_f32(-arg_0.d.a), _wgslsmith_f_op_f32(select(-219f, var_0.x, var_1.x)), _wgslsmith_div_f32(arg_0.e.x, arg_0.d.a)), select(!var_1, vec4<bool>(true, var_1.x, var_1.x, var_1.x), false)))), Struct_1(_wgslsmith_f_op_f32(abs(arg_0.e.x))));
    return u_input.e.x;
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    let var_0 = vec4<u32>(_wgslsmith_add_u32(u_input.b, 1u) << (~1u % 32u), func_4(Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.a.x, global1.x, 57469u, arg_2.a.x), vec4<u32>(u_input.e.x, u_input.b, 95581u, global0[_wgslsmith_index_u32(arg_1.d.a.x, 23u)])) | func_3(vec4<i32>(-2147483647i, arg_1.b.b, 14006i, 2147483647i), arg_2.d), u_input.c.x, reverseBits(arg_2.c), arg_2.d, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1639f, arg_1.d.d.a, arg_2.d.a, -801f), arg_2.e, vec4<bool>(false, true, arg_1.a.x, arg_1.a.x))))))), 4294967295u, global0[_wgslsmith_index_u32(~min(~_wgslsmith_sub_u32(22013u, global1.x), ~0u), 23u)]);
    let var_1 = Struct_2(~_wgslsmith_mult_vec4_u32(var_0, select(var_0, vec4<u32>(0u, var_0.x, 1u, 15338u), vec4<bool>(arg_1.a.x, arg_1.a.x, true, true)) << (~vec4<u32>(arg_1.d.a.x, arg_1.d.a.x, global0[_wgslsmith_index_u32(global1.x, 23u)], 13911u) % vec4<u32>(32u))), ~(-24506i), vec4<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(4438i, 1i)), arg_2.c.xy) << (func_3(-vec4<i32>(arg_2.c.x, arg_2.b, -63124i, arg_0), Struct_1(arg_1.b.e.x)).x % 32u), arg_2.c.x, ~u_input.d, u_input.a.x), arg_1.d.d, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1040f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.d.a - arg_2.e.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.d.a), 826f), arg_1.e.a))));
    var var_2 = arg_1;
    let var_3 = firstTrailingBit(arg_2.c);
    let var_4 = arg_1.e;
    return arg_1.a.x;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: f32) -> Struct_1 {
    global0 = array<u32, 23>();
    let var_0 = u_input.e;
    var var_1 = Struct_2(abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.x, ~67611u, 7618u, ~global0[_wgslsmith_index_u32(4294967295u, 23u)]), ~(~vec4<u32>(98303u, var_0.x, global1.x, u_input.e.x)))), u_input.a.x, (vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, u_input.c.x, u_input.d, u_input.c.x)) << (abs(_wgslsmith_mod_vec4_u32(vec4<u32>(7828u, u_input.b, 0u, global1.x) << (vec4<u32>(3732u, 81025u, arg_2.x, global1.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, global0[_wgslsmith_index_u32(global1.x, 23u)], var_0.x, 10668u), vec4<u32>(var_0.x, 23049u, u_input.e.x, 69785u), vec4<u32>(82608u, var_0.x, 4294967295u, 170u)))) % vec4<u32>(32u)), Struct_1(arg_1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3, 960f, arg_3, 1475f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_1.a, -1244f, arg_3) + vec4<f32>(arg_1.a, -1240f, -480f, 1997f)))));
    let var_2 = Struct_3(vec3<bool>(!(_wgslsmith_f_op_f32(step(arg_1.a, var_1.d.a)) <= _wgslsmith_f_op_f32(arg_3 + var_1.e.x)), true | !(!arg_0.x), true && any(select(vec4<bool>(true, false, false, arg_0.x), vec4<bool>(arg_0.x, false, true, false), arg_0.x))), Struct_2(vec4<u32>(0u << (global1.x % 32u), min(~arg_2.x, arg_2.x | 0u), 1u & u_input.b, 10685u), _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(-62568i, -15431i)), vec2<i32>(var_1.b, countOneBits(var_1.c.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(firstTrailingBit(u_input.a.x), 56876i << (global0[_wgslsmith_index_u32(70990u, 23u)] % 32u), -17199i, _wgslsmith_clamp_i32(u_input.d, 2147483647i, -15672i)), u_input.a), Struct_1(1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_1.e, _wgslsmith_f_op_vec4_f32(-var_1.e), true)) * vec4<f32>(var_1.d.a, -712f, -1635f, _wgslsmith_f_op_f32(floor(-582f))))), _wgslsmith_clamp_i32(max(-var_1.b, -9071i), _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.a.wzx), var_1.c.zyx), -var_1.c.x) ^ -26188i, Struct_2(~var_1.a, ~u_input.d, var_1.c, arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1478f, var_1.e.x, 650f, 335f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_1.e)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-665f, arg_1.a, var_1.d.a, arg_1.a)))))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-2144f))))))));
    let var_3 = var_2.d.a;
    return Struct_1(_wgslsmith_div_f32(var_1.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3)) * -523f)));
}

fn func_1(arg_0: bool, arg_1: u32) -> vec4<bool> {
    var var_0 = func_5(select(select(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, true)), vec2<bool>(all(vec3<bool>(arg_0, arg_0, false)), arg_0), vec2<bool>(arg_0, func_2(22833i, Struct_3(vec3<bool>(true, arg_0, true), Struct_2(vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(arg_1, 23u)], u_input.e.x, 0u), -12692i, vec4<i32>(u_input.d, -22658i, u_input.a.x, u_input.a.x), Struct_1(-652f), vec4<f32>(1362f, -661f, -1000f, -619f)), 1i, Struct_2(vec4<u32>(global1.x, global1.x, 19795u, arg_1), -2147483647i, vec4<i32>(u_input.c.x, 5898i, 0i, u_input.a.x), Struct_1(-265f), vec4<f32>(-648f, 1465f, -1366f, 135f)), Struct_1(257f)), Struct_2(vec4<u32>(26073u, 99669u, 11608u, 0u), u_input.d, u_input.a, Struct_1(607f), vec4<f32>(276f, -1836f, 739f, -383f))))), vec2<bool>(all(vec2<bool>(arg_0, arg_0)), arg_0), any(vec4<bool>(arg_0 || true, !arg_0, !arg_0, true))), Struct_1(1080f), (u_input.e | ~_wgslsmith_mult_vec2_u32(vec2<u32>(19696u, global1.x), u_input.e)) | vec2<u32>(u_input.e.x, ~u_input.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(2159f)), _wgslsmith_f_op_f32(543f * 1000f)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-var_0.a));
    global1 = u_input.e & _wgslsmith_sub_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, global1.x), abs(u_input.e))), u_input.e);
    global2 = ~global1.x;
    var_0 = Struct_1(-766f);
    return !(!select(vec4<bool>(select(arg_0, false, false), arg_0, !arg_0, all(vec3<bool>(false, false, arg_0))), vec4<bool>(!arg_0, false, true, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e.x, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global1.x & (4294967295u | global0[_wgslsmith_index_u32(1u, 23u)]), 23u)], 23u)]), countOneBits(vec2<u32>(~68302u, select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), u_input.e), 0u, true))));
    var var_0 = Struct_2(select(reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(57763u, 23u)], u_input.b, 0u, 34345u)) << ((~vec4<u32>(59823u, u_input.e.x, global1.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 23u)], 23u)]) | (vec4<u32>(47728u, 34745u, u_input.b, 23639u) ^ vec4<u32>(25679u, 1u, 1u, 32432u))) % vec4<u32>(32u)), abs(_wgslsmith_div_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 23u)], 4294967295u, global1.x, global0[_wgslsmith_index_u32(global1.x, 23u)]), vec4<u32>(global1.x, 0u, 47298u, 30448u))), func_1(true, ~countOneBits(global1.x))), u_input.d, u_input.a, func_5(vec2<bool>(true, true), func_5(!func_1(true, u_input.e.x).xx, func_5(vec2<bool>(false, true), func_5(vec2<bool>(false, false), Struct_1(-309f), u_input.e, -547f), vec2<u32>(global0[_wgslsmith_index_u32(0u, 23u)], 4294967295u), _wgslsmith_div_f32(-1000f, -1229f)), ~(vec2<u32>(1u, u_input.e.x) << (u_input.e % vec2<u32>(32u))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(1000f, 931f, true)))), _wgslsmith_mult_vec2_u32(u_input.e, reverseBits(u_input.e)), -923f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))));
    var var_1 = Struct_3(vec3<bool>(false, true, true), Struct_2(_wgslsmith_clamp_vec4_u32(~var_0.a, _wgslsmith_mod_vec4_u32(var_0.a, vec4<u32>(u_input.e.x, 4294967295u, global1.x, 4294967295u)) << (firstLeadingBit(vec4<u32>(0u, global1.x, u_input.e.x, var_0.a.x)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(var_0.a >> (vec4<u32>(40241u, global1.x, 16492u, global0[_wgslsmith_index_u32(u_input.b, 23u)]) % vec4<u32>(32u)), vec4<u32>(u_input.b, 4570u, 8539u, global1.x))), _wgslsmith_add_i32(select(_wgslsmith_mod_i32(var_0.b, 6583i), u_input.a.x, all(vec2<bool>(false, false))), reverseBits(11197i)), vec4<i32>(_wgslsmith_dot_vec4_i32(~u_input.a, var_0.c), _wgslsmith_add_i32(3037i, _wgslsmith_mult_i32(-13904i, -49660i)), abs(select(var_0.c.x, -1i, true)), u_input.c.x | _wgslsmith_dot_vec3_i32(var_0.c.xzy, vec3<i32>(19454i, 16247i, -2147483647i))), func_5(select(func_1(true, global0[_wgslsmith_index_u32(1u, 23u)]).zw, vec2<bool>(false, false), true), func_5(vec2<bool>(true, true), Struct_1(var_0.d.a), var_0.a.yz << (u_input.e % vec2<u32>(32u)), var_0.e.x), u_input.e, _wgslsmith_f_op_f32(max(1316f, _wgslsmith_f_op_f32(ceil(var_0.d.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, var_0.d.a, var_0.e.x, var_0.e.x) + var_0.e), _wgslsmith_f_op_vec4_f32(-var_0.e)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.e + var_0.e) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1339f, -524f, var_0.d.a, var_0.d.a)))))), _wgslsmith_sub_i32(2180i, u_input.d), Struct_2(~(~abs(vec4<u32>(37755u, global1.x, var_0.a.x, 0u))), -2147483647i, _wgslsmith_mult_vec4_i32(select(-var_0.c, var_0.c, true), -max(u_input.a, var_0.c)), Struct_1(var_0.e.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.d.a, 722f, -522f, -511f))), vec4<f32>(var_0.d.a, 413f, var_0.d.a, 1272f), vec4<bool>(true, false, false, true))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(var_0.e)))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.d.a, -912f)), 1000f)));
    var var_2 = vec3<f32>(-508f, _wgslsmith_f_op_f32(min(-1694f, _wgslsmith_f_op_f32(1f - var_1.e.a))), -999f);
    var_0 = Struct_2(var_0.a, select(-75842i, -1i, var_1.a.x), var_0.c | reverseBits(-abs(var_1.b.c)), var_1.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d.e.x, 2551f, -1720f, -374f), vec4<f32>(218f, var_1.d.e.x, var_2.x, var_0.d.a)) - _wgslsmith_div_vec4_f32(var_1.b.e, vec4<f32>(var_0.d.a, var_0.d.a, var_0.d.a, 613f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 459f, 1000f, -254f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-6173i), ~var_1.d.c.ywy, ~_wgslsmith_div_u32(1u, abs(global1.x)));
}

