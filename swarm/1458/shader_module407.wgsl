struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: array<i32, 11> = array<i32, 11>(i32(-2147483648), -29901i, -1i, 2147483647i, 15653i, 2147483647i, 36526i, i32(-2147483648), -22783i, 6003i, 39899i);

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(1i, false), vec2<u32>(49924u, 30429u), Struct_1(-12661i, false)), Struct_2(Struct_1(2147483647i, true), vec2<u32>(17706u, 1u), Struct_1(2147483647i, true)), Struct_2(Struct_1(-516i, true), vec2<u32>(4294967295u, 1u), Struct_1(2426i, false)), Struct_2(Struct_1(53596i, true), vec2<u32>(33201u, 4294967295u), Struct_1(27977i, false)), Struct_2(Struct_1(-1i, true), vec2<u32>(0u, 735u), Struct_1(0i, false)), Struct_2(Struct_1(-18635i, false), vec2<u32>(4294967295u, 18044u), Struct_1(38051i, true)), Struct_2(Struct_1(4978i, true), vec2<u32>(42769u, 0u), Struct_1(12839i, false)), Struct_2(Struct_1(1i, true), vec2<u32>(2996u, 1u), Struct_1(-40456i, false)), Struct_2(Struct_1(-1i, false), vec2<u32>(0u, 0u), Struct_1(-15882i, true)), Struct_2(Struct_1(-15317i, false), vec2<u32>(54151u, 4294967295u), Struct_1(15319i, false)), Struct_2(Struct_1(-34734i, true), vec2<u32>(17827u, 1450u), Struct_1(0i, false)), Struct_2(Struct_1(2147483647i, true), vec2<u32>(43279u, 0u), Struct_1(0i, true)), Struct_2(Struct_1(-1i, true), vec2<u32>(70723u, 48277u), Struct_1(31402i, true)), Struct_2(Struct_1(17712i, true), vec2<u32>(4294967295u, 10663u), Struct_1(177i, false)), Struct_2(Struct_1(-6534i, false), vec2<u32>(1u, 32612u), Struct_1(-1i, false)), Struct_2(Struct_1(-1i, true), vec2<u32>(1u, 0u), Struct_1(-1i, false)), Struct_2(Struct_1(i32(-2147483648), true), vec2<u32>(1u, 18471u), Struct_1(0i, true)), Struct_2(Struct_1(-546i, true), vec2<u32>(1u, 16766u), Struct_1(i32(-2147483648), true)), Struct_2(Struct_1(2147483647i, false), vec2<u32>(4294967295u, 28686u), Struct_1(-1i, false)), Struct_2(Struct_1(0i, true), vec2<u32>(0u, 70611u), Struct_1(1i, false)), Struct_2(Struct_1(2147483647i, false), vec2<u32>(1u, 1u), Struct_1(-22937i, false)), Struct_2(Struct_1(2023i, true), vec2<u32>(0u, 4294967295u), Struct_1(20592i, true)), Struct_2(Struct_1(-43673i, false), vec2<u32>(110796u, 17742u), Struct_1(-14021i, true)), Struct_2(Struct_1(1i, true), vec2<u32>(1u, 1u), Struct_1(-11437i, true)), Struct_2(Struct_1(-4998i, true), vec2<u32>(0u, 4294967295u), Struct_1(i32(-2147483648), false)), Struct_2(Struct_1(32237i, false), vec2<u32>(0u, 62522u), Struct_1(2244i, true)), Struct_2(Struct_1(1i, true), vec2<u32>(1u, 1u), Struct_1(0i, true)), Struct_2(Struct_1(1i, false), vec2<u32>(47207u, 88856u), Struct_1(2270i, true)), Struct_2(Struct_1(-1i, true), vec2<u32>(4294967295u, 16717u), Struct_1(i32(-2147483648), false)), Struct_2(Struct_1(2147483647i, false), vec2<u32>(19459u, 1u), Struct_1(2147483647i, false)), Struct_2(Struct_1(-1i, true), vec2<u32>(74380u, 1u), Struct_1(-26748i, false)), Struct_2(Struct_1(i32(-2147483648), true), vec2<u32>(36220u, 4294967295u), Struct_1(-27785i, true)));

var<private> global3: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(33868i, global1[_wgslsmith_index_u32(u_input.a, 11u)]), ~vec2<i32>(global1[_wgslsmith_index_u32(22742u, 11u)], 0i))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(0u >= u_input.a, true, 1493f > global0[_wgslsmith_index_u32(6663u, 5u)], true), true)));
    var var_1 = Struct_1(~(-24909i), !var_0.b);
    let var_2 = vec2<f32>(global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, 1u, u_input.a), vec4<u32>(0u, u_input.a, 51612u, 46051u)), firstLeadingBit(vec4<u32>(4294967295u, 60654u, 4294967295u, 59504u))), firstTrailingBit(~vec4<u32>(0u, u_input.a, 1u, 33124u))), _wgslsmith_sub_u32(~1151u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 0u)))), 5u)], _wgslsmith_div_f32(314f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(120f * global0[_wgslsmith_index_u32(u_input.a, 5u)])) * 808f)));
    let var_3 = all(!(!vec2<bool>(false, all(vec2<bool>(var_0.b, var_0.b)))));
    var var_4 = ~(var_0.a >> (20540u % 32u));
    return !all(!select(!vec4<bool>(true, var_1.b, var_0.b, true), select(vec4<bool>(var_3, false, var_1.b, false), vec4<bool>(var_0.b, var_3, var_1.b, var_3), var_1.b), vec4<bool>(var_0.b, var_3, var_3, true)));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    var var_0 = any(vec3<bool>(func_3(), false, any(!vec3<bool>(true, arg_3.c.b, false)) != arg_1.c.b));
    var_0 = true;
    var var_1 = Struct_1(2147483647i, !arg_1.a.b);
    let var_2 = vec4<bool>(false | var_1.b, arg_1.c.b, arg_0 < _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1713f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(63531u, 5u)])))), func_3());
    let var_3 = Struct_1(-(global1[_wgslsmith_index_u32(select(~1u, countOneBits(u_input.a), true), 11u)] | -var_1.a), func_3() | (true && any(vec2<bool>(var_2.x, true))));
    return Struct_2(arg_3.a, firstTrailingBit(arg_1.b), Struct_1(global1[_wgslsmith_index_u32(arg_1.b.x, 11u)], true));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2) -> u32 {
    var var_0 = select(!select(arg_1, !arg_1, arg_0.c.b), arg_1, !vec4<bool>(true, arg_1.x, !(true | arg_1.x), arg_0.a.b));
    global2 = array<Struct_2, 32>();
    let var_1 = u_input.a > u_input.a;
    let var_2 = func_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(~5549u, _wgslsmith_mod_u32(arg_0.b.x, 62210u)), u_input.a, ~(~21194u)), 5u)], func_2(_wgslsmith_f_op_f32(f32(-1f) * -189f), Struct_2(arg_0.c, arg_2.b, arg_2.c), true, global2[_wgslsmith_index_u32(arg_0.b.x, 32u)]), all(select(select(select(var_0.xzw, arg_1.xxw, true), vec3<bool>(true, arg_0.c.b, true), !var_0.yyy), vec3<bool>(func_3(), -2147483647i <= global1[_wgslsmith_index_u32(arg_2.b.x, 11u)], var_0.x), (arg_0.b.x == 1u) || var_0.x)), arg_2);
    global2 = array<Struct_2, 32>();
    return _wgslsmith_div_u32(countOneBits(arg_2.b.x | _wgslsmith_mod_u32(_wgslsmith_mod_u32(7029u, 19690u), ~arg_0.b.x)), select(select(4294967295u, u_input.a, true), _wgslsmith_div_u32(~arg_0.b.x, _wgslsmith_add_u32(arg_2.b.x, arg_0.b.x)), !var_2.c.b) & u_input.a);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(func_4(Struct_2(Struct_1(4282i, arg_0.c.b), vec2<u32>(13017u, arg_0.b.x), Struct_1(-2147483647i, arg_3.b)), vec4<bool>(arg_3.b, false, false, arg_3.b), func_2(1000f, Struct_2(Struct_1(-2147483647i, arg_0.c.b), arg_0.b, Struct_1(arg_0.c.a, true)), arg_3.b, arg_0)), 36535u, 1u, ~firstTrailingBit(4294967295u)), vec4<u32>(arg_0.b.x, u_input.a, ~u_input.a, arg_0.b.x)));
    global0 = array<f32, 5>();
    var var_1 = !vec3<bool>(all(!global3[_wgslsmith_index_u32(0u, 15u)]) || true, !(!arg_3.b) && (arg_0.b.x <= 11591u), all(vec2<bool>(!arg_3.b, arg_3.b)));
    var var_2 = arg_3.a;
    global1 = array<i32, 11>();
    return Struct_1(arg_1, true);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: vec2<i32>) -> i32 {
    var var_0 = arg_3;
    var_0 = vec2<i32>(45605i, ~arg_0.a);
    let var_1 = -2147483647i;
    let var_2 = Struct_1(-30269i, func_3());
    var var_3 = Struct_2(func_1(Struct_2(func_2(global0[_wgslsmith_index_u32(4294967295u, 5u)], arg_2, false, func_2(global0[_wgslsmith_index_u32(4294967295u, 5u)], Struct_2(Struct_1(arg_3.x, arg_0.b), arg_2.b, arg_2.a), false, arg_2)).c, max(arg_2.b, arg_2.b ^ arg_2.b), func_1(Struct_2(Struct_1(arg_0.a, arg_2.a.b), vec2<u32>(4294967295u, arg_1), var_2), var_0.x, ~vec3<i32>(2147483647i, 15479i, arg_2.a.a), Struct_1(1i, arg_0.b))), i32(-1i) * -var_2.a, -max(vec3<i32>(2147483647i, var_0.x, global1[_wgslsmith_index_u32(arg_2.b.x, 11u)]), vec3<i32>(67207i, -1i, -15283i)) ^ ~reverseBits(vec3<i32>(1i, 0i, 0i)), Struct_1(arg_0.a, false)), ~arg_2.b, var_2);
    return 0i;
}

fn func_6(arg_0: vec3<i32>, arg_1: bool, arg_2: u32, arg_3: vec3<bool>) -> StorageBuffer {
    global3 = array<vec2<bool>, 15>();
    global0 = array<f32, 5>();
    var var_0 = Struct_1(_wgslsmith_add_i32(-_wgslsmith_div_i32(i32(-1i) * -7371i, arg_0.x), -1i), false);
    return StorageBuffer(abs(~firstLeadingBit(~arg_0.yy)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(199f, -1889f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1133f, global0[_wgslsmith_index_u32(arg_2, 5u)])))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_2, 5u)], 231f)), vec2<f32>(global0[_wgslsmith_index_u32(20632u, 5u)], -589f)))))), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0 ^ arg_0, select(vec3<i32>(1i, -2147483647i, 1i), vec3<i32>(16345i, -35598i, arg_0.x), vec3<bool>(true, arg_1, var_0.b))), vec3<i32>(~arg_0.x, -1i << (arg_2 % 32u), -arg_0.x)), ~arg_0, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec4<bool>(!(!all(vec3<bool>(false, true, true))), !(!all(global3[_wgslsmith_index_u32(u_input.a, 15u)])), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), ~u_input.a >= 4294967295u));
    global2 = array<Struct_2, 32>();
    var var_1 = Struct_1(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.a, 11u)], -35951i), false);
    var_0 = true;
    let x = u_input.a;
    s_output = func_6(_wgslsmith_mod_vec3_i32(vec3<i32>(func_5(func_1(global2[_wgslsmith_index_u32(u_input.a, 32u)], -26365i, vec3<i32>(global1[_wgslsmith_index_u32(0u, 11u)], 4981i, global1[_wgslsmith_index_u32(36978u, 11u)]), Struct_1(2147483647i, var_1.b)), _wgslsmith_sub_u32(4294967295u, u_input.a), func_2(global0[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(1u, 32u)], var_1.b, global2[_wgslsmith_index_u32(u_input.a, 32u)]), vec2<i32>(var_1.a, var_1.a)), _wgslsmith_mult_i32(-17837i, -var_1.a), -1i), vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(723i, -2147483647i, 0i, var_1.a), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], var_1.a, var_1.a, global1[_wgslsmith_index_u32(18764u, 11u)])), ~reverseBits(-39499i), abs(var_1.a << (u_input.a % 32u)))), !(-(~var_1.a) >= select(abs(-2147483647i), ~global1[_wgslsmith_index_u32(u_input.a, 11u)], !var_1.b)), u_input.a, vec3<bool>(true, _wgslsmith_add_i32(~global1[_wgslsmith_index_u32(u_input.a, 11u)], var_1.a) > ~global1[_wgslsmith_index_u32(abs(u_input.a), 11u)], true));
}

