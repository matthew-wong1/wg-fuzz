struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(true, true, false, false, false, false, true, false, true, false, false, true, true, true);

var<private> global1: array<bool, 20> = array<bool, 20>(true, false, false, true, true, false, false, false, true, true, false, false, true, true, true, true, false, false, true, true);

var<private> global2: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-14541i, -42120i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-55440i, -26488i), vec2<i32>(1i, -18450i), vec2<i32>(1i, 28496i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, 2147483647i), vec2<i32>(-570i, 50845i), vec2<i32>(30210i, -28363i), vec2<i32>(-5464i, -1i), vec2<i32>(23323i, 5906i), vec2<i32>(0i, -2444i), vec2<i32>(-6061i, 1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(1i, -17030i), vec2<i32>(44870i, -32423i), vec2<i32>(6358i, 33230i), vec2<i32>(0i, 1i), vec2<i32>(-1i, -80747i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(4080i, -11155i), vec2<i32>(-1i, -65556i), vec2<i32>(-19593i, -42828i), vec2<i32>(41711i, i32(-2147483648)), vec2<i32>(-13238i, 0i), vec2<i32>(i32(-2147483648), 51173i), vec2<i32>(23215i, -39169i), vec2<i32>(-9794i, i32(-2147483648)), vec2<i32>(-27272i, 35225i), vec2<i32>(i32(-2147483648), i32(-2147483648)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.x)), arg_0.x), 1i), -666f, ~_wgslsmith_dot_vec2_u32(max(vec2<u32>(48097u, 5524u), ~vec2<u32>(1u, 0u)), vec2<u32>(~1u, 4294967295u)), Struct_1(1u, arg_0.x, u_input.a), ~(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 76973u)), _wgslsmith_div_u32(78627u, 63397u))));
    let var_1 = Struct_2(var_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(675f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1499f - 609f) + arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_0.x, 657f, true)), _wgslsmith_div_f32(1330f, 488f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1869f, arg_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -760f))), false)), ~36449u, var_0.d, var_0.d.a);
    var var_2 = !all(select(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(16175u, 14u)], global1[_wgslsmith_index_u32(var_0.c, 20u)], true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(var_1.d.a, 20u)], true), global0[_wgslsmith_index_u32(var_0.a.a, 14u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.e, 14u)], global1[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(var_1.e, 14u)], true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(var_0.c, 20u)], false, global0[_wgslsmith_index_u32(var_0.e, 14u)]), global0[_wgslsmith_index_u32(24991u, 14u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.c, 20u)], global0[_wgslsmith_index_u32(6662u, 14u)], global0[_wgslsmith_index_u32(var_0.d.a, 14u)], true), !vec4<bool>(global1[_wgslsmith_index_u32(var_1.d.a, 20u)], global0[_wgslsmith_index_u32(34371u, 14u)], global0[_wgslsmith_index_u32(var_0.c, 14u)], global0[_wgslsmith_index_u32(var_1.a.a, 14u)]), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(var_1.e, 14u)], global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_1.a.a, 20u)], false, global1[_wgslsmith_index_u32(var_1.d.a, 20u)], true), global1[_wgslsmith_index_u32(0u, 20u)]))));
    var var_3 = -(~u_input.a);
    let var_4 = 0i;
    return firstTrailingBit(countOneBits(firstTrailingBit(min(vec3<u32>(var_0.a.a, var_0.e, var_1.e), vec3<u32>(23793u, var_1.d.a, 4294967295u))) << (~vec3<u32>(0u, var_0.c, 1u) % vec3<u32>(32u))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> vec3<u32> {
    global2 = array<vec2<i32>, 31>();
    global1 = array<bool, 20>();
    var var_0 = arg_1.a;
    global1 = array<bool, 20>();
    global1 = array<bool, 20>();
    return ~_wgslsmith_add_vec3_u32(~(~(~vec3<u32>(arg_1.e, var_0.a, arg_1.a.a))), func_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, -349f), vec2<f32>(var_0.b, arg_1.d.b)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.b, 2843f)))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    var var_0 = vec2<bool>(false, select(true, (_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 36337i, u_input.a), vec4<i32>(arg_0.x, 1i, -8999i, arg_2.a.c)) >> (0u % 32u)) < _wgslsmith_clamp_i32(~u_input.a, abs(u_input.a), -2147483647i), any(!vec2<bool>(arg_3, arg_3))));
    var var_1 = reverseBits(max(~(~vec3<u32>(19885u, 4294967295u, arg_2.d.a)) ^ func_2(~vec3<i32>(u_input.a, u_input.a, arg_2.d.c), arg_2), ~vec3<u32>(~64841u, arg_2.d.a | 0u, 4294967295u)));
    let var_2 = vec2<bool>(true, true);
    return Struct_2(Struct_1(var_1.x, _wgslsmith_f_op_f32(388f * _wgslsmith_f_op_f32(-513f * _wgslsmith_f_op_f32(arg_2.d.b * arg_1))), -56532i), -466f, 0u, arg_2.d, 54355u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    var var_0 = arg_0;
    global0 = array<bool, 14>();
    var var_1 = func_1(-max(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(global2[_wgslsmith_index_u32(arg_1.a.a, 31u)], vec2<i32>(28576i, 0i)), vec2<i32>(19561i, arg_0.a.c)), global2[_wgslsmith_index_u32(min(1u, var_0.a.a) >> (arg_1.c % 32u), 31u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1044f)) + _wgslsmith_f_op_f32(abs(arg_0.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.d.b))) - var_0.b))), Struct_2(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.d.b, arg_1.b))), 1u, Struct_1(arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b) + _wgslsmith_f_op_f32(f32(-1f) * -3460f)), var_0.a.c), func_1(global2[_wgslsmith_index_u32(var_0.d.a, 31u)], -428f, func_1(countOneBits(global2[_wgslsmith_index_u32(var_0.a.a, 31u)]), _wgslsmith_f_op_f32(-1258f * 667f), Struct_2(arg_0.a, -1333f, arg_0.c, var_0.d, 30023u), true), global1[_wgslsmith_index_u32(arg_0.a.a, 20u)]).d.a), arg_2);
    var_0 = Struct_2(Struct_1(~(~var_0.a.a), _wgslsmith_f_op_f32(arg_1.a.b * 511f), ~(-1i)), _wgslsmith_f_op_f32(var_1.d.b * func_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(61614u, var_1.d.a, arg_0.c, 23402u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 607u, arg_0.c, 3129u), vec4<u32>(1u, 4294967295u, var_0.e, 27179u))), 31u)], _wgslsmith_f_op_f32(-var_0.d.b), Struct_2(func_1(global2[_wgslsmith_index_u32(17504u, 31u)], arg_1.a.b, arg_0, arg_2).d, _wgslsmith_f_op_f32(-1000f - var_1.b), ~var_1.d.a, Struct_1(arg_1.e, arg_1.d.b, arg_1.a.c), 52048u), abs(0i) > (u_input.a ^ 2147483647i)).d.b), 57611u, Struct_1(79210u, _wgslsmith_f_op_f32(f32(-1f) * -159f), max(select(min(-40847i, 96951i), var_1.d.c >> (33690u % 32u), arg_2), -2147483647i)), _wgslsmith_add_u32(arg_1.c, 4294967295u));
    var_1 = Struct_2(func_1(global2[_wgslsmith_index_u32(var_1.a.a, 31u)] >> (_wgslsmith_div_vec2_u32(~vec2<u32>(var_0.a.a, arg_1.d.a), ~vec2<u32>(153463u, arg_1.a.a)) % vec2<u32>(32u)), -373f, arg_0, (_wgslsmith_f_op_f32(arg_1.d.b * -866f) >= _wgslsmith_f_op_f32(-arg_0.d.b)) & true).d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.b + 1000f) * _wgslsmith_f_op_f32(min(var_0.d.b, arg_1.d.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-518f, -219f, global1[_wgslsmith_index_u32(arg_0.c, 20u)] && global0[_wgslsmith_index_u32(21057u, 14u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.b * var_1.a.b) + var_1.d.b))), func_1(reverseBits(_wgslsmith_sub_vec2_i32(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)])) << (vec2<u32>(~59503u, ~8910u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0.a.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b))))), func_1(~(global2[_wgslsmith_index_u32(4294967295u, 31u)] & global2[_wgslsmith_index_u32(arg_1.e, 31u)]), _wgslsmith_div_f32(arg_1.a.b, -1245f), func_1(-vec2<i32>(-7663i, var_1.a.c), arg_0.a.b, Struct_2(var_0.a, var_0.a.b, arg_0.e, Struct_1(arg_0.d.a, var_1.d.b, u_input.a), var_1.a.a), !global0[_wgslsmith_index_u32(var_0.a.a, 14u)]), _wgslsmith_f_op_f32(abs(var_1.b)) > var_0.b), all(select(select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2)), vec2<bool>(true, true), false && global1[_wgslsmith_index_u32(arg_1.a.a, 20u)]))).e, Struct_1(0u, arg_1.a.b, _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_clamp_i32(var_1.a.c, 18447i, -5002i)), -82174i)), ~(~24383u));
    return Struct_1(_wgslsmith_mult_u32(arg_0.e, arg_1.c) >> (firstTrailingBit(arg_1.e) % 32u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_1.d.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.a, 2147483647i), var_0.a.b, arg_0, global0[_wgslsmith_index_u32(0u, 14u)]).d.b * _wgslsmith_f_op_f32(arg_0.d.b - -508f)), -663f))), arg_1.a.c);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-func_4(Struct_2(func_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a, arg_3.a), vec2<u32>(4294967295u, arg_3.a)), 31u)], _wgslsmith_f_op_f32(f32(-1f) * -184f), Struct_2(arg_3, 193f, arg_3.a, Struct_1(arg_3.a, 407f, u_input.a), arg_3.a), all(arg_2.wz)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))), _wgslsmith_div_u32(~2673u, 4294967295u >> (arg_3.a % 32u)), arg_3, 1u ^ ~arg_3.a), func_1(vec2<i32>(u_input.a, countOneBits(u_input.a)), -828f, func_1(-global2[_wgslsmith_index_u32(arg_3.a, 31u)], _wgslsmith_f_op_f32(-arg_3.b), Struct_2(Struct_1(3984u, -1444f, u_input.a), arg_0.x, arg_3.a, arg_3, arg_3.a), 0u > arg_3.a), select(global0[_wgslsmith_index_u32(arg_3.a, 14u)], true, true)), true).b);
    global1 = array<bool, 20>();
    global1 = array<bool, 20>();
    let var_1 = ~(~33755u);
    global1 = array<bool, 20>();
    return _wgslsmith_f_op_f32(exp2(arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-54718i, 1i);
    global2 = array<vec2<i32>, 31>();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1866f), _wgslsmith_f_op_f32(step(881f, -622f)), global1[_wgslsmith_index_u32(70590u, 20u)] || global1[_wgslsmith_index_u32(23057u, 20u)])) + 169f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-680f - _wgslsmith_f_op_f32(f32(-1f) * -1367f)), 1000f), _wgslsmith_f_op_f32(trunc(-625f)), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(-491f, -2816f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(605f, -902f) * vec2<f32>(-168f, 1736f))), !(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(1u, 20u)])), vec4<bool>(true, global0[_wgslsmith_index_u32(59823u, 14u)] && global1[_wgslsmith_index_u32(83631u, 20u)], !global0[_wgslsmith_index_u32(32219u, 14u)], !global0[_wgslsmith_index_u32(72239u, 14u)]), func_4(Struct_2(Struct_1(37114u, 1672f, var_0.x), 334f, 1u, Struct_1(0u, -2316f, var_0.x), 0u), func_1(vec2<i32>(3162i, u_input.a), 325f, Struct_2(Struct_1(85376u, -614f, u_input.a), -1102f, 4294967295u, Struct_1(12544u, -628f, var_0.x), 83970u), global0[_wgslsmith_index_u32(20378u, 14u)]), true)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(159f, -831f) * _wgslsmith_f_op_f32(f32(-1f) * -1033f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(714f)), _wgslsmith_f_op_f32(1000f - 582f))), func_1(select(vec2<i32>(1i, 3407i), vec2<i32>(0i, u_input.a), vec2<bool>(true, true)), -1933f, func_1(vec2<i32>(-20281i, u_input.a), 1313f, Struct_2(Struct_1(54034u, -214f, u_input.a), -321f, 4294967295u, Struct_1(0u, -834f, -1i), 1u), global0[_wgslsmith_index_u32(0u, 14u)]), true).d.b, -125f))));
    var var_2 = Struct_2(func_1(_wgslsmith_mod_vec2_i32(select(vec2<i32>(var_0.x, -47132i), vec2<i32>(var_0.x, u_input.a), vec2<bool>(true, false)) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), global2[_wgslsmith_index_u32(936u, 31u)]), _wgslsmith_f_op_f32(-var_1.x), Struct_2(func_4(func_1(var_0, 1449f, Struct_2(Struct_1(0u, var_1.x, var_0.x), var_1.x, 64699u, Struct_1(1u, var_1.x, var_0.x), 56493u), true), func_1(vec2<i32>(-1i, 38072i), var_1.x, Struct_2(Struct_1(1u, var_1.x, u_input.a), 587f, 32841u, Struct_1(49098u, -1863f, var_0.x), 4294967295u), global1[_wgslsmith_index_u32(1u, 20u)]), global1[_wgslsmith_index_u32(0u, 20u)] && true), _wgslsmith_f_op_f32(-402f * _wgslsmith_f_op_f32(var_1.x + 702f)), reverseBits(1u), func_1(select(global2[_wgslsmith_index_u32(59165u, 31u)], var_0, vec2<bool>(true, global1[_wgslsmith_index_u32(25881u, 20u)])), var_1.x, func_1(var_0, -193f, Struct_2(Struct_1(28994u, -309f, -23122i), var_1.x, 78431u, Struct_1(0u, -2025f, -20267i), 24133u), false), any(vec2<bool>(true, false))).d, ~countOneBits(1061u)), false).a, var_1.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(reverseBits(vec4<u32>(1u, 43222u, 8851u, 0u))), vec4<u32>(1u, 1u, 1u, 1u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(select(1u, 0u, global0[_wgslsmith_index_u32(4623u, 14u)]), 1u, _wgslsmith_mult_u32(0u, 15075u), _wgslsmith_mult_u32(80172u, 23717u)), firstTrailingBit(~vec4<u32>(30091u, 54425u, 4294967295u, 4294967295u))), Struct_1(func_1(firstTrailingBit(global2[_wgslsmith_index_u32(0u, 31u)]) & _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, u_input.a), global2[_wgslsmith_index_u32(18209u, 31u)], global2[_wgslsmith_index_u32(45217u, 31u)]), _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_div_f32(430f, -1042f))), func_1(vec2<i32>(var_0.x, var_0.x), var_1.x, func_1(vec2<i32>(1i, u_input.a), 661f, Struct_2(Struct_1(1u, var_1.x, 2147483647i), -1422f, 91042u, Struct_1(1u, 965f, u_input.a), 44369u), true), var_1.x == -118f), all(vec2<bool>(true, global0[_wgslsmith_index_u32(72351u, 14u)]))).c, 397f, u_input.a), 1u);
    var var_3 = var_2.d;
    let var_4 = func_1(~(-(~_wgslsmith_div_vec2_i32(vec2<i32>(var_3.c, -33142i), global2[_wgslsmith_index_u32(var_2.e, 31u)]))), var_3.b, func_1(~vec2<i32>(~2147483647i, -5264i), _wgslsmith_f_op_f32(sign(164f)), func_1(~_wgslsmith_mult_vec2_i32(var_0, vec2<i32>(1i, var_3.c)), -526f, Struct_2(Struct_1(1u, var_1.x, var_3.c), var_3.b, ~0u, var_2.d, ~1u), true), true), all(vec2<bool>(false, true)));
    var var_5 = Struct_2(func_4(func_1(select(abs(vec2<i32>(var_4.a.c, 22814i)), ~vec2<i32>(-47521i, var_2.d.c), select(vec2<bool>(true, global0[_wgslsmith_index_u32(var_2.c, 14u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], true), global0[_wgslsmith_index_u32(var_3.a, 14u)])), _wgslsmith_f_op_f32(max(-617f, _wgslsmith_f_op_f32(-var_4.d.b))), var_4, global0[_wgslsmith_index_u32(~(~var_2.c), 14u)]), func_1(~var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_4.a.b)) * -703f), Struct_2(var_4.d, _wgslsmith_f_op_f32(f32(-1f) * -314f), var_2.c, Struct_1(var_4.d.a, var_4.a.b, u_input.a), var_3.a), false), all(!select(vec4<bool>(global1[_wgslsmith_index_u32(87652u, 20u)], false, global1[_wgslsmith_index_u32(var_4.c, 20u)], global0[_wgslsmith_index_u32(var_3.a, 14u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_4.c, 20u)], false, false, global1[_wgslsmith_index_u32(var_4.a.a, 20u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_4.e, 20u)], false, false, global0[_wgslsmith_index_u32(11175u, 14u)])))), -796f, 92774u, Struct_1(~var_4.a.a, _wgslsmith_f_op_f32(-361f * var_4.a.b), var_2.d.c), _wgslsmith_dot_vec4_u32(firstLeadingBit(~(~vec4<u32>(var_4.e, var_2.c, var_4.a.a, 1u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 118150u, var_2.e, 24741u), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, var_2.d.a, var_2.d.a, var_4.a.a)), ~vec4<u32>(2869u, var_4.c, var_4.c, var_2.d.a)), ~reverseBits(vec4<u32>(102587u, 4294967295u, var_2.a.a, 1u)))));
    global1 = array<bool, 20>();
    let var_6 = Struct_2(var_5.a, _wgslsmith_f_op_f32(abs(func_4(Struct_2(func_1(vec2<i32>(1i, 26200i), var_4.d.b, var_4, false).a, 668f, ~var_4.a.a, func_1(var_0, var_3.b, var_4, false).a, 0u), var_4, global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_5.e, 4294967295u), vec2<u32>(var_2.d.a, 4362u))), 20u)]).b)), 1u, func_4(func_1(countOneBits(var_0 >> (vec2<u32>(124747u, 34868u) % vec2<u32>(32u))), 2149f, Struct_2(var_5.a, _wgslsmith_f_op_f32(-var_5.b), firstTrailingBit(1u), Struct_1(var_5.a.a, var_4.a.b, 44425i), func_4(Struct_2(Struct_1(var_4.d.a, 1901f, var_2.a.c), -1000f, 1u, Struct_1(48255u, var_3.b, 1i), var_4.a.a), var_4, true).a), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.a.a, var_4.c, 18740u, 1u), vec4<u32>(var_3.a, 0u, var_5.c, 101168u)), ~var_4.e), 14u)]), Struct_2(var_5.d, _wgslsmith_f_op_f32(min(424f, _wgslsmith_f_op_f32(sign(-1638f)))), min(0u << (0u % 32u), ~4294967295u), var_2.a, ~1u), true && all(vec4<bool>(true, global1[_wgslsmith_index_u32(var_5.e, 20u)], global1[_wgslsmith_index_u32(var_4.d.a, 20u)], global0[_wgslsmith_index_u32(var_2.e, 14u)]))), 35136u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.b, var_4.b, _wgslsmith_f_op_f32(-var_4.d.b)), _wgslsmith_f_op_vec3_f32(-var_1.zxz)))));
}

