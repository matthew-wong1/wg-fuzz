struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 77871u;

var<private> global1: array<u32, 5>;

var<private> global2: array<bool, 8>;

var<private> global3: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global4: array<u32, 21>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec2<bool>) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(119470u, 5u)] >> (~u_input.c % 32u), 8u)];
    let var_1 = true;
    global0 = ~(~arg_1);
    global0 = min(~global1[_wgslsmith_index_u32(reverseBits(arg_1), 5u)], _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), _wgslsmith_add_vec2_u32(select(~vec2<u32>(arg_1, 43249u), ~vec2<u32>(0u, 4294967295u), u_input.d.x != u_input.b), reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 33330u), vec2<u32>(3910u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(55338u, 21u)], 21u)]))))));
    var var_2 = -9556i;
    return _wgslsmith_sub_u32(~(~u_input.a), ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c, 57374u, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 5u)], 78594u), vec3<u32>(17349u, global4[_wgslsmith_index_u32(arg_1, 21u)], u_input.c)))) ^ ((_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(1u, u_input.c) >> (vec2<u32>(61035u, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_1, 21u)], 5u)]) % vec2<u32>(32u))) ^ _wgslsmith_div_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(1u, 5u)], arg_1), arg_1)) << (~(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_1, 21u)], 5u)], 5u)], 5u)])) % 32u));
}

fn func_2() -> Struct_1 {
    global4 = array<u32, 21>();
    let var_0 = ~33007u;
    var var_1 = Struct_3(Struct_1((~vec4<u32>(0u, 15227u, 1u, 0u) ^ vec4<u32>(21067u, global4[_wgslsmith_index_u32(var_0, 21u)], 0u, 21384u)) << (min(vec4<u32>(global4[_wgslsmith_index_u32(9342u, 21u)], 4294967295u, 19461u, global1[_wgslsmith_index_u32(61662u, 5u)]) | vec4<u32>(1u, 4294967295u, var_0, 0u), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0, 21u)], 21u)], 4294967295u, 4294967295u, global1[_wgslsmith_index_u32(var_0, 5u)])) % vec4<u32>(32u)), select(vec3<bool>(!global3.x, global2[_wgslsmith_index_u32(var_0, 8u)] | global2[_wgslsmith_index_u32(9438u, 8u)], global3.x), !vec3<bool>(true, global3.x, global2[_wgslsmith_index_u32(16737u, 8u)]), global3.wwx)));
    let var_2 = _wgslsmith_mult_u32(~_wgslsmith_mult_u32(1u, u_input.a), func_3(~2147483647i, 4294967295u, vec2<bool>(false, !all(vec2<bool>(var_1.a.b.x, false)))));
    global1 = array<u32, 5>();
    return Struct_1(_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(abs(var_1.a.a), vec4<u32>(4294967295u, 101787u, 0u, 46600u) & var_1.a.a), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 1u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34540u, 5u)], 5u)]) ^ var_1.a.a, vec4<u32>(u_input.c, ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 23143u, 4294967295u), vec3<u32>(41953u, var_2, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2, 0u), vec2<u32>(global4[_wgslsmith_index_u32(28481u, 21u)], 1u))), ~vec4<u32>(global4[_wgslsmith_index_u32(var_1.a.a.x, 21u)], var_1.a.a.x, var_1.a.a.x, global1[_wgslsmith_index_u32(1u, 5u)]) | var_1.a.a)), var_1.a.b);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = !global2[_wgslsmith_index_u32(5019u, 8u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 611f, -220f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(649f, -438f, -1175f) + vec3<f32>(-319f, -1762f, 966f))))));
    var var_2 = Struct_3(arg_0);
    global3 = vec4<bool>(arg_0.b.x, true, arg_0.a.x == 8691u, false);
    global0 = reverseBits(min(1u, 14031u));
    return Struct_3(func_2());
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = func_4(func_2());
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1258f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 715f, _wgslsmith_f_op_f32(floor(604f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(289f + -1398f), 675f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-918f, 766f, -546f, -1566f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(118f, 596f, -1492f, 1000f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(351f, 366f, 738f, 382f), vec4<f32>(1033f, -394f, -3365f, -476f), any(var_0.a.b.yx)))), 644f != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1038f, 2581f, false)), _wgslsmith_f_op_f32(round(-1653f))))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), var_1.x)));
    global1 = array<u32, 5>();
    var_2 = var_1.xxw;
    return vec4<bool>(!(!(!all(vec4<bool>(var_0.a.b.x, arg_1.b.x, false, false)))), global2[_wgslsmith_index_u32(1u, 8u)], func_2().b.x, true);
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    global3 = !vec4<bool>(global3.x, all(global3.xzz) & true, false, true);
    global2 = array<bool, 8>();
    global3 = select(!(!(!(!vec4<bool>(false, true, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.b.x, 21u)], 8u)], arg_0.a)))), select(func_5(firstLeadingBit(vec4<i32>(-8127i, 2147483647i, u_input.d.x, 2147483647i) | vec4<i32>(u_input.b, -13724i, u_input.b, -1i)), Struct_1(select(vec4<u32>(30350u, global4[_wgslsmith_index_u32(0u, 21u)], 12763u, 74642u), vec4<u32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 21u)], 5u)], 21u)], global1[_wgslsmith_index_u32(u_input.a, 5u)], 29185u, 54279u), vec4<bool>(global2[_wgslsmith_index_u32(85990u, 8u)], false, arg_0.a, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(43365u, 21u)], 8u)])), vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8683u, 5u)], 8u)], false, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.b.x, 21u)], 21u)], 8u)])), func_4(func_2())), vec4<bool>(false, any(!vec2<bool>(false, global3.x)), global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 57501u) & firstTrailingBit(4294967295u), 21u)], 5u)], 21u)], 8u)], !any(vec4<bool>(arg_0.a, true, global3.x, true))), true), global2[_wgslsmith_index_u32(145u, 8u)]);
    let var_0 = !(_wgslsmith_add_u32(~10601u, 0u) > _wgslsmith_dot_vec3_u32(arg_0.b.wwz, func_4(func_4(Struct_1(arg_0.b, vec3<bool>(true, true, true))).a).a.a.wxz));
    let var_1 = vec2<bool>(func_5(vec4<i32>(_wgslsmith_sub_i32(max(0i, u_input.d.x), 1i), _wgslsmith_dot_vec2_i32(u_input.d.yy, u_input.d.yx) >> ((arg_0.b.x & 4294967295u) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b) << (vec4<u32>(arg_0.b.x, 64470u, global1[_wgslsmith_index_u32(5402u, 5u)], 4294967295u) % vec4<u32>(32u)), max(vec4<i32>(u_input.d.x, -2147483647i, -1i, -14183i), vec4<i32>(u_input.b, -1i, u_input.b, u_input.b))), i32(-1i) * -u_input.d.x), Struct_1(arg_0.b, vec3<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 8u)], var_0, var_0, arg_0.a)), !global2[_wgslsmith_index_u32(17721u, 8u)], any(global3.zy))), func_4(func_4(func_4(Struct_1(vec4<u32>(u_input.a, 25573u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.b.x, 21u)], 21u)], 4294967295u), global3.xyw)).a).a)).x, false);
    return Struct_2(min(u_input.d, u_input.d));
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(abs(firstTrailingBit(reverseBits(vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(arg_3, 5u)], u_input.a, 8158u)))), select(global3.xwy, global3.zyw, global3.x)));
    var var_1 = u_input.c;
    let var_2 = Struct_1(var_0.a.a, func_4(Struct_1(vec4<u32>(62331u, _wgslsmith_mod_u32(13621u, global4[_wgslsmith_index_u32(13874u, 21u)]), ~17291u, var_0.a.a.x), global3.zxw)).a.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(abs(-257f)), -138f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-568f, 1947f, 1617f)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1591f, 117f, -858f), vec3<f32>(-896f, 1215f, -448f), global3.x))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-114f, -1048f, 1727f)))));
    let var_4 = func_2().b;
    return func_2();
}

fn func_7(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> vec4<u32> {
    let var_0 = 9574u | arg_0.a.x;
    var var_1 = Struct_4(arg_1, ~(~(firstLeadingBit(arg_0.a) | ~vec4<u32>(4294967295u, 29694u, 86808u, var_0))));
    global0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(func_6(arg_2, abs(min(var_1.b.x, global1[_wgslsmith_index_u32(0u, 5u)])), Struct_2(reverseBits(u_input.d)), _wgslsmith_div_u32(arg_0.a.x, func_2().a.x)).a.x, 5u)], _wgslsmith_dot_vec2_u32(vec2<u32>(6126u, _wgslsmith_div_u32(25442u, 77483u)), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.b.x, global1[_wgslsmith_index_u32(2026u, 5u)]), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 0u), var_1.b.xy, var_1.b.yx)))), func_6(-2147483647i, u_input.a, func_1(Struct_4(true, firstLeadingBit(arg_0.a))), _wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(~var_0, 21u)], _wgslsmith_clamp_u32(arg_0.a.x, var_1.b.x, u_input.c), firstTrailingBit(u_input.c)), ~vec3<u32>(53928u, 0u, 1u))).a.x);
    var var_2 = Struct_2(u_input.d);
    var var_3 = Struct_3(func_2());
    return var_3.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_vec4_u32(func_7(func_6(u_input.b, ~global1[_wgslsmith_index_u32(0u, 5u)], func_1(Struct_4(global2[_wgslsmith_index_u32(4294967295u, 8u)], vec4<u32>(1u, 4294967295u, 1u, 68568u))), 3409u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 21u)], global4[_wgslsmith_index_u32(1u, 21u)]) << (vec2<u32>(u_input.c, u_input.a) % vec2<u32>(32u))), 8u)], ~(-u_input.b)), vec4<u32>(~global1[_wgslsmith_index_u32(u_input.c, 5u)] ^ u_input.c, reverseBits(abs(global1[_wgslsmith_index_u32(0u, 5u)])), 0u, ~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 5u)], 21u)], 5u)], 5u)] | global1[_wgslsmith_index_u32(4294967295u, 5u)]))), global3.xxw);
    var var_1 = min(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(var_0.a.x, 5u)], firstTrailingBit(4294967295u)), 40692u);
    let var_2 = vec2<u32>(~func_6(u_input.d.x, u_input.a, Struct_2(u_input.d), u_input.a).a.x >> (var_0.a.x % 32u), var_0.a.x);
    var var_3 = Struct_4(!global3.x, ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(2994u, 0u, var_0.a.x, 16778u), ~vec4<u32>(u_input.a, 84706u, global4[_wgslsmith_index_u32(50323u, 21u)], global4[_wgslsmith_index_u32(u_input.a, 21u)])), vec4<u32>(72199u, u_input.a << (global1[_wgslsmith_index_u32(0u, 5u)] % 32u), abs(var_0.a.x), ~10683u)));
    let var_4 = var_3.a;
    global0 = 1u;
    var_3 = Struct_4(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1u, 5u)], ~reverseBits(var_2.x)) > countOneBits(~func_2().a.x), _wgslsmith_mod_vec4_u32(~(~(var_0.a & var_3.b)), ~((var_0.a & vec4<u32>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 5u)], 127436u, 0u, global1[_wgslsmith_index_u32(var_2.x, 5u)])) >> (~var_3.b % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-748f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1118f - _wgslsmith_f_op_f32(step(-1000f, -919f))))), -abs(_wgslsmith_clamp_i32(~u_input.b, ~u_input.d.x, -2147483647i)));
}

