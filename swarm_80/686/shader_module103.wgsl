struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1000f, -224f, 1390f);

var<private> global1: array<i32, 17> = array<i32, 17>(-1377i, -1i, -1i, -1i, 0i, -1i, i32(-2147483648), 2147483647i, -16566i, 16270i, 25031i, 1i, 1i, 34073i, -41942i, i32(-2147483648), 891i);

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(i32(-2147483648), vec4<u32>(47798u, 0u, 8448u, 0u), vec4<f32>(-721f, -340f, 581f, -1185f), 0i), Struct_1(-39204i, vec4<u32>(1u, 4294967295u, 35632u, 1u), vec4<f32>(1874f, -2107f, -1038f, 1184f), i32(-2147483648)), Struct_1(35536i, vec4<u32>(24908u, 4294967295u, 4294967295u, 23234u), vec4<f32>(272f, -1450f, -703f, -586f), 0i), Struct_1(2147483647i, vec4<u32>(26890u, 7212u, 4294967295u, 3835u), vec4<f32>(-1117f, 1000f, 1296f, -1203f), i32(-2147483648)), Struct_1(-69241i, vec4<u32>(1u, 4294967295u, 0u, 39076u), vec4<f32>(-2126f, 288f, -628f, 1047f), -5268i), Struct_1(-1583i, vec4<u32>(4294967295u, 72803u, 1u, 4294967295u), vec4<f32>(1064f, 428f, 1064f, -211f), -5938i), Struct_1(-20830i, vec4<u32>(86810u, 17418u, 0u, 1604u), vec4<f32>(445f, 1319f, -388f, -240f), -1i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(~(~u_input.a), 7u)];
    var var_1 = Struct_1(global1[_wgslsmith_index_u32(~var_0.b.x, 17u)], ~max(var_0.b, countOneBits(vec4<u32>(1u, 6965u, 1u, 78358u)) | var_0.b), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), 792f, -514f, 278f)))), -_wgslsmith_clamp_i32(-45422i, -1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(55857i, global1[_wgslsmith_index_u32(0u, 17u)], -78675i, 1i), vec4<i32>(var_0.d, global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(18726u, 17u)], var_0.a))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.c.yzw, vec3<f32>(global0.x, 705f, global0.x)));
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, -898f, true)), -1235f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_2.x))))), var_0.c.wyx);
    var_1 = Struct_1(_wgslsmith_clamp_i32(-25273i, -var_1.d, 45556i), ~var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.c, vec4<f32>(-658f, var_0.c.x, 1254f, -1000f), arg_0))) - _wgslsmith_f_op_vec4_f32(-var_1.c))), -19406i);
    return abs(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.a) ^ max(-vec2<i32>(-13190i, 0i), firstTrailingBit(vec2<i32>(var_1.a, global1[_wgslsmith_index_u32(1u, 17u)]))), -vec2<i32>(-var_0.d, 16743i)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-121f, 775f, 1683f)))))));
    let var_0 = !vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + 432f) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1825f * global0.x))), true | (arg_0.d < func_3(true)), ((arg_0.c.x < 815f) || (global1[_wgslsmith_index_u32(0u, 17u)] <= arg_0.d)) | !all(vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_dot_vec3_i32(select(-reverseBits(vec3<i32>(-10590i, arg_0.d, 18124i)), -vec3<i32>(arg_0.a, 20651i, global1[_wgslsmith_index_u32(1u, 17u)]), !var_0) | firstLeadingBit(abs(vec3<i32>(-80966i, global1[_wgslsmith_index_u32(arg_0.b.x, 17u)], arg_0.d))), select(_wgslsmith_mod_vec3_i32(vec3<i32>(-39176i, global1[_wgslsmith_index_u32(~10887u, 17u)], arg_0.d), _wgslsmith_sub_vec3_i32(min(vec3<i32>(0i, arg_0.d, -37909i), vec3<i32>(1i, -2147483647i, arg_0.d)), vec3<i32>(global1[_wgslsmith_index_u32(101999u, 17u)], arg_0.a, -28005i))), _wgslsmith_mod_vec3_i32(min(vec3<i32>(-21550i, 7685i, 27983i), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a, 17u)], arg_0.d), vec3<i32>(-78969i, global1[_wgslsmith_index_u32(78210u, 17u)], -15444i))), countOneBits(vec3<i32>(arg_0.a, global1[_wgslsmith_index_u32(71686u, 17u)], 1i)) << (u_input.b % vec3<u32>(32u))), !(true != !var_0.x)));
    var var_2 = var_0.yx;
    var var_3 = ~0u;
    return _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(max(vec4<i32>(arg_0.a, arg_0.a, arg_0.a, global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), vec4<i32>(-2147483647i, 1i, 4873i, arg_0.d)), vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 17u)], 0i, -13885i, -1i), !vec4<bool>(var_2.x, var_0.x, var_0.x, var_2.x)), -vec4<i32>(arg_0.a, arg_0.a, global1[_wgslsmith_index_u32(arg_0.b.x, 17u)], -78008i)) >> (vec4<u32>(~_wgslsmith_mult_u32(1u, u_input.b.x), u_input.a, u_input.b.x, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(~34386i << (u_input.a % 32u), arg_0.a | arg_0.a, _wgslsmith_add_i32(-2147483647i, global1[_wgslsmith_index_u32(4260u, 17u)]), i32(-1i) * -arg_0.a));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(select(-1486f, arg_1.c.x, false & !any(vec2<bool>(true, false))));
    let var_1 = abs(arg_0 ^ firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(arg_1.b.x, 17u)], -18147i, -2147483647i, -1i), arg_0)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(243f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1172f)) - -640f))));
    let var_3 = global2[_wgslsmith_index_u32(~countOneBits(1u), 7u)];
    var_0 = arg_1.c.x;
    return var_3.b.x;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    global2 = array<Struct_1, 7>();
    let var_0 = func_4(vec4<i32>(arg_2.a, -15982i, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_2.d, 0i, arg_1.x) >> (vec4<u32>(arg_3.x, 86260u, 0u, 1u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(arg_3.x, 17u)], 1i, arg_2.a, -54090i), vec4<i32>(-2147483647i, 1i, arg_1.x, arg_2.a))) << (~9201u % 32u)), Struct_1(1i, vec4<u32>(14045u, 7391u, ~arg_3.x, 0u) >> (~_wgslsmith_add_vec4_u32(arg_3, vec4<u32>(u_input.b.x, 1u, arg_2.b.x, arg_3.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.c), vec4<f32>(global0.x, 1185f, arg_0, 1000f))), -(22230i >> (_wgslsmith_div_u32(1u, arg_3.x) % 32u))), select(!vec4<bool>(true, true, true, any(vec4<bool>(false, false, false, true))), vec4<bool>(all(vec2<bool>(true, true)), 1i != func_2(arg_2), (1000f > arg_2.c.x) != true, true), vec4<bool>(true, true, true, false)));
    let var_1 = 1u;
    var var_2 = _wgslsmith_f_op_f32(step(1380f, _wgslsmith_f_op_f32(select(arg_0, global0.x, true))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-952f, -1000f)), _wgslsmith_f_op_f32(-global0.x)) + arg_2.c.x), -505f)), 1336f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(588f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-615f, _wgslsmith_f_op_f32(abs(arg_2.c.x))))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1050f)) + 682f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(global0.x, vec3<i32>(global1[_wgslsmith_index_u32(74410u, 17u)], global1[_wgslsmith_index_u32(u_input.c, 17u)], global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), global2[_wgslsmith_index_u32(1u, 7u)], vec4<u32>(4294967295u, 0u, 0u, 0u)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1010f))), -626f) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-438f - _wgslsmith_f_op_f32(-415f - 477f))), -554f, -216f));
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_add_u32(0u, _wgslsmith_mod_u32((u_input.c | 40524u) ^ 1u, ~(~4294967295u)))), 7u)];
    let var_1 = Struct_1(i32(-1i) * -16916i, var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 1146f, 727f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(var_0.c, var_0.c))))) - var_0.c), 2147483647i);
    var var_2 = Struct_1(-61579i, ~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(var_0.b | vec4<u32>(var_0.b.x, u_input.b.x, var_1.b.x, var_1.b.x), var_1.b ^ var_0.b), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 4294967295u, var_0.b.x, var_0.b.x), var_1.b)), var_0.c, _wgslsmith_div_i32(0i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a, var_1.a), vec2<i32>(0i, 0i)), _wgslsmith_sub_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], -2147483647i), vec2<i32>(var_0.d, global1[_wgslsmith_index_u32(var_0.b.x, 17u)]))), vec2<i32>(1i, 1i))));
    var var_3 = vec3<u32>(var_2.b.x, _wgslsmith_dot_vec4_u32(var_1.b, max(vec4<u32>(_wgslsmith_sub_u32(u_input.c, 37588u), 0u, 4294967295u, abs(var_2.b.x)), vec4<u32>(~u_input.c, var_1.b.x, var_2.b.x >> (var_2.b.x % 32u), 4294967295u))), ~_wgslsmith_clamp_u32(1u, 4294967295u, var_0.b.x));
    var var_4 = var_1;
    let var_5 = _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -325f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5))), global0.x));
}

