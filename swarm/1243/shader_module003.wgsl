struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(false, 168f, 567f, true, vec4<i32>(0i, 26512i, -1i, 26312i)), Struct_1(false, -621f, 909f, false, vec4<i32>(-10530i, 13806i, 2147483647i, 16912i)), Struct_1(true, -408f, 768f, false, vec4<i32>(-11543i, 81817i, -50529i, 48867i)), Struct_1(true, 1109f, -508f, true, vec4<i32>(14553i, 26034i, 71584i, i32(-2147483648))), Struct_1(false, 1045f, -338f, false, vec4<i32>(-41400i, 2147483647i, 1048i, 2147483647i)), Struct_1(true, -450f, 1187f, false, vec4<i32>(49066i, -51821i, i32(-2147483648), 0i)), Struct_1(false, 173f, -543f, false, vec4<i32>(70122i, 1i, 2147483647i, i32(-2147483648))), Struct_1(true, -165f, -584f, true, vec4<i32>(2147483647i, -1i, 37185i, i32(-2147483648))), Struct_1(false, 915f, 167f, false, vec4<i32>(1i, -8369i, 8112i, 1i)), Struct_1(true, 291f, 1210f, false, vec4<i32>(-25950i, 0i, -34813i, -52010i)), Struct_1(false, 333f, -1151f, false, vec4<i32>(-3262i, -41031i, 55061i, 35043i)), Struct_1(false, -1356f, 214f, true, vec4<i32>(i32(-2147483648), 2147483647i, -25269i, 59444i)), Struct_1(true, 636f, -1918f, false, vec4<i32>(0i, -1i, -45213i, i32(-2147483648))), Struct_1(true, 939f, -2087f, true, vec4<i32>(-54955i, i32(-2147483648), i32(-2147483648), 1i)), Struct_1(true, -746f, 1000f, true, vec4<i32>(-59258i, 59408i, -23275i, 24142i)), Struct_1(true, 418f, -382f, false, vec4<i32>(-29356i, 0i, 2147483647i, 1i)), Struct_1(false, 445f, -680f, false, vec4<i32>(17837i, 15348i, -1i, 1i)), Struct_1(true, 1103f, 121f, true, vec4<i32>(0i, 40603i, -26980i, -72256i)), Struct_1(false, 1649f, 433f, false, vec4<i32>(15078i, -7547i, -7186i, 0i)), Struct_1(false, -711f, 713f, true, vec4<i32>(-1i, 2147483647i, 2147483647i, -57223i)), Struct_1(true, 1995f, 1032f, false, vec4<i32>(33777i, i32(-2147483648), 1i, 37752i)), Struct_1(true, 1000f, 565f, true, vec4<i32>(-3602i, 1i, i32(-2147483648), 52358i)), Struct_1(false, -1166f, 310f, false, vec4<i32>(0i, 33244i, 1i, -1i)), Struct_1(true, 132f, -1149f, true, vec4<i32>(i32(-2147483648), -27925i, 1i, 1i)), Struct_1(false, -519f, 360f, true, vec4<i32>(1i, 2147483647i, 1i, i32(-2147483648))), Struct_1(true, 1116f, 402f, false, vec4<i32>(i32(-2147483648), 2147483647i, -5300i, 0i)), Struct_1(false, 938f, -1010f, false, vec4<i32>(-1i, -58874i, 21921i, -2857i)), Struct_1(false, -1411f, -996f, true, vec4<i32>(2147483647i, 1i, 7926i, -35614i)), Struct_1(false, -631f, -1762f, true, vec4<i32>(-29197i, -1i, -33265i, 9742i)));

var<private> global2: array<vec4<bool>, 31>;

var<private> global3: array<Struct_1, 9>;

var<private> global4: array<vec3<i32>, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> bool {
    global2 = array<vec4<bool>, 31>();
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_1.xy + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.wy)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.ww)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.x, 1000f))), arg_1.xw, !vec2<bool>(arg_2, arg_0.d))))))));
    global0 = ~global4[_wgslsmith_index_u32(_wgslsmith_div_u32(90761u, u_input.b.x), 20u)];
    let var_1 = Struct_1(true, -491f, arg_0.c, !(!select(arg_0.d, all(global2[_wgslsmith_index_u32(1u, 31u)]), arg_0.d)), _wgslsmith_div_vec4_i32(~vec4<i32>(arg_0.e.x, countOneBits(global0.x), -arg_0.e.x, -u_input.a.x), arg_0.e));
    var var_2 = Struct_1(false, _wgslsmith_f_op_f32(trunc(-566f)), _wgslsmith_f_op_f32(floor(arg_1.x)), var_1.d, vec4<i32>(-31763i, _wgslsmith_add_i32(var_1.e.x, -abs(18894i)), ~(-33260i), countOneBits(~var_1.e.x)));
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<f32>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.b.x & 11327u, 9u)];
    global1 = array<Struct_1, 29>();
    let var_1 = all(select(!vec4<bool>(func_3(global1[_wgslsmith_index_u32(58337u, 29u)], vec4<f32>(-903f, -1290f, var_0.b, -398f), arg_1), var_0.c != -1000f, var_0.d, false || arg_0.x), arg_3, global2[_wgslsmith_index_u32(u_input.b.x, 31u)]));
    global4 = array<vec3<i32>, 20>();
    global2 = array<vec4<bool>, 31>();
    return global3[_wgslsmith_index_u32(countOneBits(countOneBits(~u_input.b.x)), 9u)];
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    let var_0 = ~(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(16210i, 2147483647i, 2147483647i, -2147483647i), -vec4<i32>(0i, -4011i, global0.x, -35544i)));
    var var_1 = Struct_1(any(select(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], vec4<bool>(arg_2.a, true, true, all(vec3<bool>(false, false, arg_2.a))), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.xx), 31u)])), 206f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1879f * arg_3.x) - _wgslsmith_f_op_f32(select(-583f, -337f, true))), _wgslsmith_f_op_f32(arg_3.x + -1701f), true)) - arg_2.c), false && (((global0.x >> (8335u % 32u)) | ~arg_2.e.x) >= -1i), vec4<i32>(1i, 634i, arg_2.e.x, _wgslsmith_add_i32(~(-1i), abs(countOneBits(-1i)))));
    let var_2 = global3[_wgslsmith_index_u32(reverseBits(min(_wgslsmith_div_u32(1u, reverseBits(_wgslsmith_clamp_u32(1u, 0u, u_input.b.x))), _wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(4294967295u, ~1u)))), 9u)];
    global0 = func_2(vec2<bool>(all(select(select(global2[_wgslsmith_index_u32(0u, 31u)], vec4<bool>(var_2.a, var_2.d, false, false), arg_2.a), vec4<bool>(var_2.d, true, true, var_2.a), !var_1.a)), var_1.a), false, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.c)), 521f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.c, var_1.b)) + _wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-141f - arg_2.c), func_2(vec2<bool>(var_1.a, false), true, vec3<f32>(arg_2.b, arg_2.c, var_1.c), vec4<bool>(var_2.d, arg_2.a, false, arg_2.d)).c)), _wgslsmith_f_op_f32(-var_2.b)), !vec4<bool>(func_2(vec2<bool>(true, true), false, vec3<f32>(var_2.c, arg_3.x, 1000f), vec4<bool>(false, true, false, arg_2.d)).d & all(vec2<bool>(var_2.a, arg_2.d)), func_2(vec2<bool>(arg_2.d, false), true, _wgslsmith_div_vec3_f32(arg_0.xzy, vec3<f32>(230f, arg_3.x, var_2.b)), global2[_wgslsmith_index_u32(0u, 31u)]).d, true, true)).e.zwz;
    let var_3 = arg_1;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(25955u), 12432u), ~u_input.b.yz);
}

fn func_1(arg_0: bool, arg_1: i32) -> bool {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1536f, 925f, -724f, -469f), vec4<f32>(1194f, 190f, 973f, -440f)))))), 10155u, func_2(vec2<bool>(true, true), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(227f, 920f, -1000f)))), vec4<bool>(any(vec3<bool>(true, arg_0, false)), 4294967295u < u_input.b.x, !arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-771f, -545f) * vec2<f32>(-1132f, 1013f)))) * vec2<f32>(1f, 1f))) <= ~(~0u);
    var_0 = all(select(!select(vec2<bool>(arg_0, false), !vec2<bool>(true, arg_0), vec2<bool>(true, true)), vec2<bool>(true, false), arg_0));
    let var_1 = u_input.a.xy;
    global4 = array<vec3<i32>, 20>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1063f - 365f) + _wgslsmith_f_op_f32(ceil(-910f))))))));
    return global0.x == arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 29>();
    let var_0 = Struct_1(all(!vec4<bool>(true, select(true, true, true), all(vec2<bool>(false, false)), true)), -1516f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-413f - -691f))))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(54635u, 0u, 93353u, 29647u), abs(vec4<u32>(33862u, u_input.b.x, u_input.b.x, u_input.b.x))) <= ~36364u, -abs(~(vec4<i32>(0i, 44731i, u_input.a.x, 2147483647i) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 3903u) % vec4<u32>(32u)))));
    let var_1 = ~firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 31864u, 4294967295u, u_input.b.x)))) & vec4<u32>(select(_wgslsmith_add_u32(min(4294967295u, u_input.b.x), u_input.b.x), _wgslsmith_add_u32(~u_input.b.x, u_input.b.x), var_0.a), 83115u, 0u | _wgslsmith_div_u32(u_input.b.x, u_input.b.x & u_input.b.x), 4294967295u);
    let var_2 = !(!func_1(any(vec4<bool>(true, false, false, var_0.a)), -22966i)) || var_0.d;
    var var_3 = func_2(vec2<bool>(var_0.a, func_3(global1[_wgslsmith_index_u32(firstLeadingBit(~57355u), 29u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-198f, -716f, var_0.c, 1000f)))), !select(var_0.a, true, var_2))), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(480f, var_0.c, var_0.c) + vec3<f32>(101f, -132f, var_0.c)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-585f, var_0.c, var_0.b))))), select(vec4<bool>(func_1(true, 1i), true, false, true), global2[_wgslsmith_index_u32(~(~abs(9159u)), 31u)], any(global2[_wgslsmith_index_u32(~4294967295u, 31u)]) | (firstLeadingBit(1u) < _wgslsmith_mult_u32(var_1.x, 38058u))));
    var var_4 = func_2(!select(!(!vec2<bool>(true, var_3.d)), !(!vec2<bool>(true, var_2)), func_3(func_2(vec2<bool>(true, var_0.a), var_2, vec3<f32>(var_3.c, -1214f, 1895f), vec4<bool>(true, true, true, var_0.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b, 1191f, 1121f, var_0.c) + vec4<f32>(206f, var_0.c, -618f, var_0.b)), all(vec3<bool>(var_2, var_2, true)))), true, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(381f * var_0.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(var_3.b - 134f), !var_3.d)))), var_3.c, _wgslsmith_f_op_f32(-var_3.b)), select(!vec4<bool>(false, select(var_3.a, var_3.d, true), true, all(global2[_wgslsmith_index_u32(var_1.x, 31u)])), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(var_1.xy, ~vec2<u32>(u_input.b.x, u_input.b.x)), 31u)], select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(59939u, u_input.b.x), vec2<u32>(1u, 19571u)) | func_4(vec4<f32>(-256f, var_3.c, var_0.b, var_3.b), u_input.b.x, global3[_wgslsmith_index_u32(var_1.x, 9u)], vec2<f32>(515f, var_3.c)), 31u)], select(select(vec4<bool>(var_2, true, var_3.a, true), vec4<bool>(true, true, var_2, false), var_2), !vec4<bool>(var_0.d, var_0.a, var_3.d, var_0.d), select(global2[_wgslsmith_index_u32(var_1.x, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)], var_3.a)), (u_input.b.x << (u_input.b.x % 32u)) > 81670u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-var_3.e.x, countOneBits(7611i), ~(~(var_4.e.x >> (4042u % 32u)))), u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(-func_2(vec2<bool>(var_2, true), var_2, vec3<f32>(1045f, var_4.c, var_4.c), vec4<bool>(var_0.a, var_2, var_3.d, var_4.d)).e.x, _wgslsmith_dot_vec4_i32(var_4.e, var_3.e)), var_0.e.x));
}

