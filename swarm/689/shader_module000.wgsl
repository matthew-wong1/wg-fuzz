struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(true, false, false, false, false, true, true, false, true, false, false, true, false, true, false, true, true, false, false, false, true);

var<private> global1: array<vec3<i32>, 13>;

var<private> global2: vec3<i32>;

var<private> global3: array<f32, 12> = array<f32, 12>(-2015f, -1367f, 2000f, -205f, 192f, -566f, -1456f, -615f, -1633f, 806f, 1000f, -1181f);

var<private> global4: array<Struct_1, 32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(1f));
    var var_1 = 0u;
    var_1 = firstTrailingBit(_wgslsmith_mult_u32(26045u, u_input.a.x | firstTrailingBit(u_input.a.x)));
    let var_2 = select(~u_input.a.wz, u_input.a.xy, select(select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), global0[_wgslsmith_index_u32(4294967295u, 21u)]), !global0[_wgslsmith_index_u32(u_input.c, 21u)]), !select(vec2<bool>(global0[_wgslsmith_index_u32(33769u, 21u)], false), vec2<bool>(true, false), true), global0[_wgslsmith_index_u32(~1u >> (_wgslsmith_clamp_u32(0u, u_input.a.x, 0u) % 32u), 21u)]), select(vec2<bool>(true, true), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 21u)])), select(select(vec2<bool>(global0[_wgslsmith_index_u32(26693u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(1u, 21u)]), global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), select(vec2<bool>(true, true), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 21u)]), global0[_wgslsmith_index_u32(32624u, 21u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 21u)], false))), vec2<bool>(false, all(!vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 21u)], false)))));
    global1 = array<vec3<i32>, 13>();
    return ~_wgslsmith_div_u32(~abs(111664u), u_input.c);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(~(1i >> (func_3(vec3<f32>(global3[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(25667u, 12u)], 674f)) % 32u)), ~_wgslsmith_sub_i32(51665i, -global2.x)), arg_2, ~_wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(arg_2), -arg_2), ~vec2<i32>(26724i, arg_1.x)), 1i);
    global3 = array<f32, 12>();
    let var_1 = vec3<i32>(-1i, _wgslsmith_mod_i32(select(~(~var_0.x), ~arg_2, arg_0.b.x), global2.x), (i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(48501i, global2.x), vec2<i32>(-2147483647i, var_0.x))) & _wgslsmith_clamp_i32(_wgslsmith_mult_i32(select(0i, -1i, global0[_wgslsmith_index_u32(4294967295u, 21u)]), -12667i), _wgslsmith_mod_i32(28699i, -global2.x), var_0.x));
    var var_2 = ~func_3(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(u_input.a.x, 12u)], global3[_wgslsmith_index_u32(u_input.a.x, 12u)])))), global3[_wgslsmith_index_u32(u_input.a.x, 12u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-653f, -259f))));
    let var_3 = !global0[_wgslsmith_index_u32(max(firstTrailingBit(u_input.a.x), 1388u) | ~(~64671u), 21u)];
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(u_input.c, u_input.a.x, (_wgslsmith_sub_u32(1u, u_input.c) | min(4294967295u, ~0u)) ^ (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) | min(u_input.a.x, u_input.a.x)));
    let var_1 = ~(vec2<i32>(25980i, u_input.d) & vec2<i32>(_wgslsmith_mult_i32(~global2.x, u_input.d >> (u_input.c % 32u)), global2.x));
    let var_2 = var_1;
    var var_3 = func_2(func_2(Struct_1(func_2(Struct_1(arg_3.a, arg_0.b), _wgslsmith_mod_vec2_i32(var_1, global2.xz), var_2.x ^ 2147483647i).a, vec2<bool>(!global0[_wgslsmith_index_u32(71891u, 21u)], true)), -u_input.e, abs(firstLeadingBit(1i))), _wgslsmith_clamp_vec2_i32(var_2, var_2, _wgslsmith_mult_vec2_i32(var_2 & vec2<i32>(67570i, var_2.x), u_input.e)), 2147483647i);
    let var_4 = var_2.x | max(var_1.x, -var_1.x);
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: u32) -> u32 {
    global2 = ((firstTrailingBit(-global1[_wgslsmith_index_u32(u_input.a.x, 13u)]) | vec3<i32>(19446i, -16984i, u_input.e.x)) ^ select(global1[_wgslsmith_index_u32(37007u, 13u)], ~(~global1[_wgslsmith_index_u32(51558u, 13u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], true))) | vec3<i32>(u_input.d, u_input.b.x >> (1u % 32u), abs(global2.x));
    let var_0 = func_4(func_2(global4[_wgslsmith_index_u32(21438u, 32u)], countOneBits(-u_input.e), -global2.x), vec2<bool>(true, any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 21u)], true, false, global0[_wgslsmith_index_u32(arg_1, 21u)])) | any(vec2<bool>(false, false))), vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(54180u, 12u)]), -1104f, 334f), Struct_1(vec3<bool>(true, false, global0[_wgslsmith_index_u32(firstTrailingBit(~arg_1), 21u)]), !vec2<bool>(global0[_wgslsmith_index_u32(45664u, 21u)], true)));
    var var_1 = 75920u;
    var var_2 = func_2(Struct_1(!(!func_4(Struct_1(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 21u)], true), var_0.a.xx), var_0.b, vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 12u)], arg_0, arg_0), Struct_1(vec3<bool>(var_0.b.x, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(arg_1, 21u)]), vec2<bool>(true, var_0.b.x))).a), func_4(func_4(var_0, vec2<bool>(true, global0[_wgslsmith_index_u32(45466u, 21u)]), vec3<f32>(261f, arg_0, global3[_wgslsmith_index_u32(arg_1, 12u)]), func_4(global4[_wgslsmith_index_u32(arg_1, 32u)], vec2<bool>(false, global0[_wgslsmith_index_u32(32222u, 21u)]), vec3<f32>(-1000f, 2358f, -811f), global4[_wgslsmith_index_u32(arg_1, 32u)])), func_2(func_4(Struct_1(var_0.a, var_0.a.zy), vec2<bool>(true, false), vec3<f32>(1322f, arg_0, global3[_wgslsmith_index_u32(arg_1, 12u)]), var_0), -global2.yz, _wgslsmith_add_i32(u_input.e.x, -1i)).b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-235f, 3589f, 995f)), vec3<f32>(global3[_wgslsmith_index_u32(arg_1, 12u)], arg_0, arg_0)), Struct_1(!var_0.a, vec2<bool>(true, global0[_wgslsmith_index_u32(19752u, 21u)]))).b), ~select(u_input.e ^ u_input.e, ~_wgslsmith_div_vec2_i32(global2.zx, vec2<i32>(u_input.e.x, 5144i)), vec2<bool>(true, false)), -3758i);
    var var_3 = !vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(3015u, ~u_input.c), 21u)], func_4(func_2(global4[_wgslsmith_index_u32(4294967295u, 32u)], vec2<i32>(31229i, global2.x), -68445i), !vec2<bool>(var_0.a.x, var_2.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-910f, 515f, -1686f)), Struct_1(var_0.a, var_2.b)).a.x == (func_4(var_0, var_2.a.xx, vec3<f32>(global3[_wgslsmith_index_u32(68342u, 12u)], -305f, -2138f), var_0).b.x || true), false, !select(true, true, global0[_wgslsmith_index_u32(72733u, 21u)]));
    return select(_wgslsmith_dot_vec2_u32(abs(u_input.a.xy << (vec2<u32>(33988u, arg_1) % vec2<u32>(32u))), u_input.a.xz), ~arg_1, any(vec3<bool>(true, true, true))) ^ ~_wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_sub_u32(abs(29574u), ~arg_1), ~(~u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(599f + global3[_wgslsmith_index_u32(~reverseBits(_wgslsmith_sub_u32(1u, u_input.a.x)), 12u)]), u_input.c >> (firstLeadingBit(1u) % 32u)), 32u)];
    let var_1 = Struct_1(!select(func_4(func_4(Struct_1(var_0.a, var_0.a.yz), vec2<bool>(true, true), vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 12u)], global3[_wgslsmith_index_u32(u_input.a.x, 12u)], global3[_wgslsmith_index_u32(u_input.a.x, 12u)]), Struct_1(var_0.a, vec2<bool>(var_0.a.x, false))), !var_0.a.yx, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(u_input.c, 12u)], global3[_wgslsmith_index_u32(u_input.c, 12u)], global3[_wgslsmith_index_u32(70446u, 12u)]), vec3<f32>(global3[_wgslsmith_index_u32(u_input.c, 12u)], 606f, 764f), var_0.a)), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.c), 32u)]).a, !var_0.a, var_0.a), !var_0.a.zx);
    global1 = array<vec3<i32>, 13>();
    let var_2 = u_input.b.x == ~_wgslsmith_sub_i32(abs(-11031i), select(u_input.b.x, _wgslsmith_clamp_i32(u_input.d, 27689i, u_input.b.x), true));
    let var_3 = u_input.a.x;
    global1 = array<vec3<i32>, 13>();
    let var_4 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(max(max(u_input.a, vec4<u32>(40016u, 1u, u_input.a.x, 1u)) << (firstLeadingBit(vec4<u32>(47305u, 0u, 0u, var_3)) % vec4<u32>(32u)), u_input.a), u_input.a), 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-784f, -541f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 12u)])) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c, 12u)] + 1000f)), 1371f))), ~_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(1u, 13u)], vec3<i32>(u_input.e.x, u_input.d, 2255i)) >> (func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(var_3, 12u)])))), ~_wgslsmith_clamp_u32(u_input.a.x, u_input.c, var_3)) % 32u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(1u, 12u)])) - _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(1u, 12u)], 106f))), _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(var_3, 12u)])), global3[_wgslsmith_index_u32(~u_input.a.x ^ func_1(753f, 0u), 12u)]) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(1u, 12u)], 1467f, _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(u_input.c, 12u)]))) - _wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.c, 12u)], 185f, -447f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(826f, -1000f, global3[_wgslsmith_index_u32(var_3, 12u)])))))));
}

