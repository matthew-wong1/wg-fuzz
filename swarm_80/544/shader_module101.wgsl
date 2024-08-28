struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(false, true, true, true, false, true, true, true, true, false, false, false, false, false, true, true, false, true);

var<private> global1: array<u32, 5> = array<u32, 5>(16950u, 24769u, 4294967295u, 0u, 1u);

var<private> global2: vec3<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> vec3<u32> {
    global2 = select(!(!(!(!vec3<bool>(true, global2.x, global2.x)))), select(select(!select(vec3<bool>(global0[_wgslsmith_index_u32(86311u, 18u)], global2.x, true), vec3<bool>(true, true, global2.x), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)], global2.x)), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 18u)], false, true), !(!vec3<bool>(true, arg_1.x, false))), select(vec3<bool>(global2.x, arg_1.x, all(arg_1)), select(vec3<bool>(true, false, arg_1.x), !vec3<bool>(arg_1.x, true, false), arg_1.x), all(select(arg_1, arg_1, global2.xz))), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(arg_0, global1[_wgslsmith_index_u32(u_input.a, 5u)], arg_0, 25207u)), 18u)]), any(vec3<bool>(u_input.d > u_input.e, false, true)) | true);
    let var_0 = false;
    let var_1 = 34686u;
    let var_2 = Struct_3(_wgslsmith_mult_vec3_u32(~(u_input.b.wxx << (vec3<u32>(76562u, 24239u, 0u) % vec3<u32>(32u))) ^ select(u_input.b.wzy << (vec3<u32>(4294967295u, var_1, 4294967295u) % vec3<u32>(32u)), vec3<u32>(u_input.c, 1u, global1[_wgslsmith_index_u32(0u, 5u)]), any(vec3<bool>(true, var_0, true))), ~(~u_input.b.zyw)));
    var var_3 = Struct_4(~var_2.a.x, var_2);
    return vec3<u32>(~(~(~global1[_wgslsmith_index_u32(u_input.a, 5u)])), _wgslsmith_div_u32(var_1, ~(~_wgslsmith_mult_u32(u_input.a, 1u))), var_1);
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, firstLeadingBit(arg_0)), func_3(~(~6040u), !select(global2.zy, vec2<bool>(true, true), global2.x))));
    var var_1 = _wgslsmith_mult_u32(arg_0, var_0.a.x ^ 0u);
    var_1 = 1u;
    var var_2 = 0u;
    var_1 = ~(((global1[_wgslsmith_index_u32(arg_0, 5u)] & 4294967295u) << (~10265u % 32u)) >> (arg_0 % 32u)) & (825u ^ ((66461u >> (min(arg_0, 0u) % 32u)) << (global1[_wgslsmith_index_u32(19972u, 5u)] % 32u)));
    return Struct_3(func_3(var_0.a.x, select(global2.yy, vec2<bool>(all(global2.zx), !global0[_wgslsmith_index_u32(u_input.a, 18u)]), global2.yz)));
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = ~vec4<i32>(~u_input.e, u_input.d, 0i, -1i);
    var var_1 = Struct_4(1u, func_2(~(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1u, 5u)], 4294967295u) | (8991u << (1u % 32u)))));
    var_0 = vec4<i32>(-(~var_0.x), abs(u_input.d) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(0u, 5u)], u_input.a, 102693u), vec3<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], 1u, var_1.b.a.x)) % 32u), 2147483647i, -2147483647i) >> (u_input.b % vec4<u32>(32u));
    global2 = !select(!vec3<bool>(all(vec4<bool>(global2.x, global2.x, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25407u, 5u)], 18u)], global0[_wgslsmith_index_u32(26771u, 18u)])), all(vec3<bool>(global2.x, global0[_wgslsmith_index_u32(0u, 18u)], false)), global0[_wgslsmith_index_u32(4294967295u, 18u)]), !vec3<bool>(global2.x | global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34541u, 5u)], 18u)], all(vec2<bool>(true, global2.x)), true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~var_1.b.a.yz), _wgslsmith_mult_vec2_u32(var_1.b.a.xx, ~vec2<u32>(48306u, var_1.b.a.x))), 18u)]);
    var var_2 = Struct_1(!select(select(select(vec3<bool>(global2.x, true, false), vec3<bool>(global0[_wgslsmith_index_u32(var_1.a, 18u)], global2.x, global2.x), false), select(vec3<bool>(global0[_wgslsmith_index_u32(11886u, 18u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(var_1.b.a.x, 18u)], true, true), vec3<bool>(true, global2.x, global0[_wgslsmith_index_u32(22765u, 18u)])), true), vec3<bool>(true, false, any(vec3<bool>(global2.x, true, true))), select(!vec3<bool>(false, global0[_wgslsmith_index_u32(84952u, 18u)], false), !vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 18u)], true), true)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), -913f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) + arg_0), arg_0), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(434f, arg_0, 621f), vec3<f32>(-1853f, -158f, 295f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, arg_0, arg_0), vec3<f32>(863f, arg_0, 592f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(699f, -228f, arg_0))), select(vec3<bool>(global0[_wgslsmith_index_u32(var_1.a, 18u)], global0[_wgslsmith_index_u32(var_1.a, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]), !vec3<bool>(true, false, global2.x), !global0[_wgslsmith_index_u32(4294967295u, 18u)]))))), 7652u);
    return func_2(14914u);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: f32, arg_3: vec4<u32>) -> Struct_4 {
    global0 = array<bool, 18>();
    return Struct_4(~min(34217u, 23554u), arg_0.b);
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(734f * 1436f) - -801f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1692f))), _wgslsmith_div_f32(-117f, 1f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -311f)))), _wgslsmith_f_op_f32(max(-675f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -130f))))))));
    let var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1176f, -455f, 280f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 631f, var_0.x))) * vec3<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(max(var_0.x, -2369f)), _wgslsmith_f_op_f32(var_0.x - var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1964f, 1f, _wgslsmith_f_op_f32(var_0.x + var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -838f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-399f, 680f, 1156f) + vec3<f32>(-699f, var_0.x, -994f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -334f))), -183f, 1493f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(964f, 318f, -472f))) + vec3<f32>(225f, var_2.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(507f, var_2.x, var_0.x)))))));
    global1 = array<u32, 5>();
    return Struct_1(!select(!select(vec3<bool>(global2.x, false, false), vec3<bool>(false, false, global2.x), global2.x), !select(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_1.a, 18u)], true), vec3<bool>(global2.x, true, global0[_wgslsmith_index_u32(100u, 18u)]), vec3<bool>(true, false, true)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2173f, -282f, var_2.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-445f, 461f, var_0.x))) + vec3<f32>(515f, 1541f, var_2.x))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-340f, -1488f)))) - 905f);
    global2 = !(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 18u)] || global2.x, true)));
    var var_1 = func_5(_wgslsmith_dot_vec4_i32(~(~(-vec4<i32>(u_input.e, u_input.d, -9068i, -2147483647i))), ~_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.d, 0i, u_input.d, -6370i), ~vec4<i32>(5760i, u_input.e, 17582i, u_input.d))), func_4(Struct_4(~4294967295u, func_1(_wgslsmith_f_op_f32(238f * 1026f))), -vec3<i32>(firstTrailingBit(47256i), i32(-1i) * -1i, ~0i), 1231f, u_input.b), Struct_3(u_input.b.xxx));
    var var_2 = Struct_2(vec3<i32>(47490i, -_wgslsmith_mod_i32(9504i, -u_input.d), u_input.e), global2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1663f, -647f)) + -1043f), var_1.b.x))));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.x)));
    var var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1099f, 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3))) + 547f), _wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(abs(var_3))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1257f, -834f, -684f, 1907f) - vec4<f32>(var_3, -184f, var_1.b.x, 1412f)) * vec4<f32>(-1011f, _wgslsmith_f_op_f32(round(var_3)), _wgslsmith_f_op_f32(-var_3), var_2.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(693f, 1369f, -703f, 173f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(550f, var_1.b.x, 699f, 366f) + vec4<f32>(-375f, -1742f, var_3, var_3))))));
    var_1 = Struct_1(select(select(!var_1.a, select(vec3<bool>(var_2.b, var_1.a.x, global2.x), select(var_1.a, vec3<bool>(true, false, true), vec3<bool>(var_1.a.x, true, false)), !vec3<bool>(var_2.b, true, var_2.b)), true), var_1.a, select(vec3<bool>(all(var_1.a), all(vec4<bool>(global0[_wgslsmith_index_u32(var_1.c, 18u)], global2.x, false, var_1.a.x)), true), !(!var_1.a), select(!vec3<bool>(false, var_2.b, var_1.a.x), select(vec3<bool>(true, var_2.b, true), vec3<bool>(false, true, var_2.b), false), all(vec2<bool>(global2.x, var_1.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, 2067f, var_4.x) * var_1.b), vec3<f32>(var_3, 135f, 1214f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(646f, var_3, var_4.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, -1000f, var_1.b.x))))), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(-61213i, var_1.c, _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.c, _wgslsmith_mod_u32(4294967295u, ~global1[_wgslsmith_index_u32(45640u, 5u)]), 5581u), u_input.b.wyw));
}

