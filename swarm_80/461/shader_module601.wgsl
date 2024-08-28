struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: f32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<bool>(false, true, false), vec3<i32>(16955i, 2147483647i, 2147483647i), 317f, 39817i, 980f), Struct_1(vec3<bool>(false, true, false), vec3<i32>(24712i, 25457i, 27291i), 1000f, 14318i, -621f), Struct_1(vec3<bool>(false, false, true), vec3<i32>(-17907i, 1i, 6402i), -526f, i32(-2147483648), -1914f), Struct_1(vec3<bool>(false, false, true), vec3<i32>(-9605i, i32(-2147483648), 8939i), 1016f, -5611i, -1469f), Struct_1(vec3<bool>(false, true, false), vec3<i32>(12528i, 2147483647i, 2147483647i), 1154f, -25373i, 477f), Struct_1(vec3<bool>(false, true, false), vec3<i32>(0i, 2147483647i, 1i), 174f, -26072i, 564f), Struct_1(vec3<bool>(false, true, true), vec3<i32>(4472i, -11972i, -16769i), -1219f, 2147483647i, 235f), Struct_1(vec3<bool>(false, true, true), vec3<i32>(2147483647i, 22795i, i32(-2147483648)), -353f, -1i, -128f), Struct_1(vec3<bool>(true, true, true), vec3<i32>(-63938i, -28966i, 1i), 266f, 26125i, 339f), Struct_1(vec3<bool>(false, false, false), vec3<i32>(-9228i, i32(-2147483648), 29733i), 450f, -23950i, 1039f), Struct_1(vec3<bool>(true, false, false), vec3<i32>(2147483647i, -55139i, 0i), 206f, 1i, -977f), Struct_1(vec3<bool>(true, true, false), vec3<i32>(-39545i, i32(-2147483648), -17052i), -367f, -33277i, -2133f), Struct_1(vec3<bool>(false, false, false), vec3<i32>(-1i, -1i, -1i), 1208f, 2147483647i, 413f), Struct_1(vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), 0i, 20662i), -367f, 0i, -1304f), Struct_1(vec3<bool>(true, true, true), vec3<i32>(0i, 1i, 1i), 326f, 2147483647i, -1808f), Struct_1(vec3<bool>(true, false, true), vec3<i32>(-37757i, -61607i, i32(-2147483648)), -315f, -68026i, -167f), Struct_1(vec3<bool>(true, true, false), vec3<i32>(9770i, i32(-2147483648), 19312i), -1212f, -38783i, 1000f), Struct_1(vec3<bool>(true, false, false), vec3<i32>(-85652i, 2147483647i, 7025i), 861f, i32(-2147483648), 371f), Struct_1(vec3<bool>(false, true, false), vec3<i32>(-1288i, 2147483647i, 0i), 2214f, 10421i, -473f), Struct_1(vec3<bool>(true, false, true), vec3<i32>(24792i, -6848i, 43812i), 2174f, 2711i, -1480f), Struct_1(vec3<bool>(true, false, false), vec3<i32>(1i, -1529i, 0i), 1818f, -35288i, -1000f), Struct_1(vec3<bool>(false, true, false), vec3<i32>(-1i, 0i, -35449i), 177f, -31662i, 138f));

var<private> global1: bool;

var<private> global2: vec2<u32>;

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 31890u, 0u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<u32>) -> bool {
    var var_0 = Struct_1(select(vec3<bool>(true, false, true), select(vec3<bool>(!arg_0, select(arg_0, arg_0, arg_0), arg_0), select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, false, true), !vec3<bool>(arg_0, arg_0, true)), ~u_input.a.x <= ~u_input.a.x), ~(u_input.a.x ^ -1i) > 45243i), _wgslsmith_sub_vec3_i32(firstLeadingBit(u_input.a) >> (((arg_2 | arg_2) >> (vec3<u32>(51620u, global2.x, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(u_input.a, -u_input.a | -vec3<i32>(7254i, 2147483647i, u_input.a.x))), _wgslsmith_div_f32(635f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(153f, _wgslsmith_f_op_f32(-1213f + 101f)))))), (_wgslsmith_mult_i32(1i, u_input.a.x << (global2.x % 32u)) ^ -9779i) << (_wgslsmith_clamp_u32(firstLeadingBit(0u) ^ (arg_2.x | u_input.d), countOneBits(~64247u), 1u) % 32u), _wgslsmith_f_op_f32(-372f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1212f) + _wgslsmith_f_op_f32(round(-216f))), _wgslsmith_f_op_f32(-2345f + arg_1.x)))));
    var_0 = global0[_wgslsmith_index_u32(arg_2.x, 22u)];
    var var_1 = any(vec4<bool>(!(!all(vec2<bool>(false, var_0.a.x))), true, 1585f == _wgslsmith_f_op_f32(sign(709f)), true));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(432f, 172f, true)), -170f)))));
    var var_3 = Struct_1(vec3<bool>(any(vec2<bool>(false, all(vec4<bool>(var_0.a.x, arg_0, false, var_0.a.x)))), select(!(!var_0.a.x), all(vec4<bool>(true, arg_0, false, false)), u_input.d <= min(85721u, u_input.d)), true), select(-firstLeadingBit(u_input.a), var_0.b, var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - -1255f), ~(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_0.d, var_0.b.x, u_input.a.x)), firstLeadingBit(var_0.b)) | u_input.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.x, -499f)), _wgslsmith_f_op_f32(-arg_1.x)));
    return !any(!vec2<bool>(var_3.a.x, true)) || true;
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(265f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))) * arg_2.e)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(729f, arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.e, arg_2.c) * vec2<f32>(arg_1, arg_1)), false)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -1000f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(428f, arg_2.e)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1899f, -1000f), vec2<f32>(arg_2.c, arg_2.c)))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1088f))) * 2182f)));
    let var_2 = u_input.a.xx | ~countOneBits(vec2<i32>(u_input.a.x, -14946i));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-961f, -1078f, arg_2.e) * vec3<f32>(arg_2.e, arg_2.e, -556f)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_1, -1648f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2243f, -750f, -1237f)))))));
    var var_4 = arg_2.a.x;
    return ~(-10741i);
}

fn func_2(arg_0: f32, arg_1: i32) -> bool {
    let var_0 = vec3<i32>(1i, func_4(vec4<u32>(27241u, 21223u, global2.x, abs(~global3.x)), _wgslsmith_f_op_f32(ceil(arg_0)), Struct_1(vec3<bool>(true, true, any(vec3<bool>(true, false, true))), _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(arg_1, -1i, u_input.a.x)) >> ((vec3<u32>(47425u, 4294967295u, 26442u) << (u_input.b.zww % vec3<u32>(32u))) % vec3<u32>(32u)), 801f, _wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(-2147483647i, u_input.a.x), ~arg_1), _wgslsmith_f_op_f32(-616f + -722f)), vec4<bool>(true, func_3(true, vec3<f32>(1000f, arg_0, arg_0), vec3<u32>(global3.x, global3.x, global3.x)) | true, false, any(vec4<bool>(false, false, true, false)))), 2147483647i);
    global1 = true;
    global0 = array<Struct_1, 22>();
    let var_1 = true;
    global1 = all(!select(select(select(vec3<bool>(true, false, true), vec3<bool>(var_1, false, var_1), vec3<bool>(true, true, false)), vec3<bool>(var_1, false, true), !vec3<bool>(var_1, var_1, var_1)), select(!vec3<bool>(true, var_1, var_1), !vec3<bool>(false, var_1, var_1), vec3<bool>(true, true, true)), !var_1));
    return var_1;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: f32) -> Struct_1 {
    global2 = global3.zy;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1583f + _wgslsmith_f_op_f32(step(-482f, arg_3)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(468f)) * _wgslsmith_div_f32(arg_3, arg_3)), 416f, global2.x < 13039u)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(757f - 1168f), arg_3)), _wgslsmith_f_op_f32(arg_3 - arg_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3)) * _wgslsmith_f_op_f32(trunc(arg_3))), _wgslsmith_f_op_f32(-1254f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + arg_3)))));
    global1 = all(select(!vec3<bool>(all(vec2<bool>(false, false)), func_2(634f, -50627i), true), select(!vec3<bool>(arg_2, false, true), select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(arg_2, arg_2, arg_2), select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, arg_2, arg_2), false)), arg_2), select(vec3<bool>(false, any(vec4<bool>(arg_2, arg_2, arg_2, true)), true), vec3<bool>(arg_2, arg_2, arg_2), true)));
    global3 = (abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, global2.x, 33274u), vec3<u32>(arg_0, global2.x, 0u))) & _wgslsmith_mod_vec3_u32(abs(abs(u_input.b.zwx)), ~select(vec3<u32>(arg_0, 7955u, global3.x), u_input.b.wyz, arg_2))) << (u_input.b.zyz % vec3<u32>(32u));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), var_0.x, _wgslsmith_f_op_f32(trunc(178f)), arg_3);
    return Struct_1(select(select(select(select(vec3<bool>(arg_2, false, false), vec3<bool>(arg_2, true, arg_2), true), vec3<bool>(true, false, true), select(vec3<bool>(false, arg_2, true), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, arg_2, arg_2))), select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, false, true), func_2(var_0.x, u_input.a.x)), false), vec3<bool>(true, any(vec2<bool>(arg_2, arg_2)), arg_2 && !arg_2), !select(!vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, true, false), !arg_2)), ~u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3 + 532f), _wgslsmith_f_op_f32(-177f + -1915f))))), u_input.a.x, _wgslsmith_f_op_f32(-var_0.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: f32) -> bool {
    let var_0 = !(!vec3<bool>(true || (arg_0.e == arg_1.x), true, true));
    let var_1 = !(!(!vec4<bool>(var_0.x, false, arg_0.a.x | arg_0.a.x, arg_0.a.x)));
    let var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x >> (global3.x % 32u), reverseBits(global2.x), global2.x, global2.x), u_input.b) << (1u % 32u);
    let var_3 = ~global3.x;
    var var_4 = countOneBits(select(countOneBits(u_input.b), vec4<u32>(1u, 0u, global2.x, var_2), any(!arg_0.a))) | firstTrailingBit(vec4<u32>(firstLeadingBit(abs(global2.x)), global2.x, ~8180u, ~_wgslsmith_mult_u32(0u, global3.x)));
    return !func_1(global2.x, _wgslsmith_clamp_i32(58225i, arg_2.x, _wgslsmith_sub_i32(arg_2.x, reverseBits(u_input.a.x))), all(!var_1.xx), -1063f).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(vec4<bool>(true, true, true, true));
    let var_1 = true;
    let var_2 = Struct_1(select(!vec3<bool>(any(vec2<bool>(var_1, false)), false | var_1, var_1), vec3<bool>(func_5(func_1(u_input.d, u_input.a.x, var_1, -634f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-404f, -486f, -533f, 359f), vec4<f32>(-963f, 100f, -663f, -437f))), vec3<i32>(u_input.a.x, -14229i, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -780f)), var_1, 4294967295u != ~global3.x), var_1), abs(u_input.a), _wgslsmith_f_op_f32(floor(1000f)), -u_input.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1123f - 341f), _wgslsmith_f_op_f32(sign(-182f)))))))));
    var var_3 = Struct_1(!func_1(select(countOneBits(global2.x), global3.x, true), ~2147483647i | _wgslsmith_mod_i32(-2147483647i, u_input.a.x), _wgslsmith_f_op_f32(-1245f * var_2.e) <= -1472f, 1256f).a, -u_input.a >> (~(~u_input.b.wxx) % vec3<u32>(32u)), var_2.c, -2147483647i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_2.e, var_2.c)), _wgslsmith_f_op_f32(-var_2.c))) * -1000f))));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(~select(_wgslsmith_add_vec2_u32(global3.yx, vec2<u32>(global2.x, u_input.b.x)), vec2<u32>(global3.x, global3.x) ^ vec2<u32>(44951u, 0u), !var_3.a.x), _wgslsmith_add_vec2_u32(global3.yz, global3.xy))), 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(69817u ^ global3.x, ~(~0i), global3.x);
}

