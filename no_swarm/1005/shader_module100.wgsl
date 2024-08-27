struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1 = Struct_1(1i, 4294967295u, vec4<i32>(0i, 2147483647i, i32(-2147483648), 28929i));

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(9217i, 0u, vec4<i32>(1i, 7456i, -57261i, -42808i)), Struct_1(-40293i, 4294967295u, vec4<i32>(24528i, 448i, -16702i, 0i)), Struct_1(24359i, 4294967295u, vec4<i32>(1i, i32(-2147483648), -35498i, -1i)), Struct_1(-4052i, 0u, vec4<i32>(0i, 6908i, 0i, 1i)), Struct_1(-45421i, 22361u, vec4<i32>(2147483647i, -4407i, 0i, i32(-2147483648))), Struct_1(-19841i, 1u, vec4<i32>(7154i, 2147483647i, -15339i, 1i)), Struct_1(-6630i, 45128u, vec4<i32>(0i, i32(-2147483648), 16853i, -24416i)), Struct_1(10722i, 0u, vec4<i32>(1i, -1i, -1i, 6735i)), Struct_1(51557i, 4294967295u, vec4<i32>(-58777i, 0i, -225i, i32(-2147483648))));

var<private> global3: i32;

var<private> global4: Struct_1 = Struct_1(-18232i, 61172u, vec4<i32>(-50189i, -21099i, 56493i, 0i));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    global2 = array<Struct_1, 9>();
    global3 = ~u_input.b;
    var var_1 = vec3<bool>(false, true, true);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -934f)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, -1501f), arg_0.x)))) - -2314f);
    return global2[_wgslsmith_index_u32(firstTrailingBit(global4.b), 9u)];
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 4294967295u, 34114u, 34372u) | vec4<u32>(arg_0.x, global4.b, global1.b, global0.x), vec4<u32>(global1.b, global1.b, global0.x, global0.x) ^ vec4<u32>(4294967295u, 4294967295u, global1.b, global0.x)))), 9u)];
    let var_1 = vec4<u32>(22210u, _wgslsmith_sub_u32(global4.b, reverseBits(firstLeadingBit(73610u))) & ~(~var_0.b >> (reverseBits(1u) % 32u)), countOneBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0.x, var_0.b) ^ global0.x, 4294967295u >> (select(0u, 58865u, false) % 32u))), ~(~(~(~global4.b))));
    var var_2 = select(select(select(vec4<bool>(true, true, select(true, false, true), true), vec4<bool>(true, all(vec4<bool>(true, false, true, true)), true, arg_1 >= u_input.b), select(-56086i == global1.a, select(false, false, false), select(true, false, true))), vec4<bool>(any(vec2<bool>(true, true)), max(global1.c.x, -1i) == -var_0.c.x, all(vec3<bool>(true, false, true)), true), true), vec4<bool>(true, min(1u, ~global1.b) > 1u, false, true), vec4<bool>(true, true, true, true));
    var_0 = global2[_wgslsmith_index_u32(reverseBits(abs(~global0.x) << (abs(~37083u) % 32u)), 9u)];
    var var_3 = !(!var_2.x) & select(var_2.x, any(vec4<bool>(var_2.x & var_2.x, true, var_2.x && false, select(var_2.x, var_2.x, false))), min(_wgslsmith_div_i32(arg_1, 2147483647i), _wgslsmith_mod_i32(global4.c.x, u_input.a)) == var_0.c.x);
    return Struct_1(min(reverseBits(~_wgslsmith_sub_i32(-52404i, 5719i)), var_0.c.x), 1u, _wgslsmith_clamp_vec4_i32(global4.c, vec4<i32>(global4.a, global4.a, abs(17018i), countOneBits(-1i)) | ~func_2(vec4<f32>(554f, 303f, 656f, 1905f)).c, global1.c));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_3(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.b, 6797u), ~global0.xy)) & vec2<u32>(_wgslsmith_sub_u32(14225u, countOneBits(99913u)), ~arg_1.b), _wgslsmith_dot_vec3_i32(-vec3<i32>(~(-2147483647i), _wgslsmith_mod_i32(u_input.b, 32300i), 1i), vec3<i32>(-1i) * -global1.c.xxz));
    var var_1 = Struct_1(countOneBits(_wgslsmith_div_i32(21552i, -11006i ^ (0i >> (global1.b % 32u)))), ~(~(~4294967295u)), _wgslsmith_clamp_vec4_i32(global1.c | vec4<i32>(arg_2.a, countOneBits(global4.a), -42390i >> (arg_2.b % 32u), -1i), -reverseBits(vec4<i32>(arg_1.c.x, -2147483647i, global4.a, u_input.a)), vec4<i32>((-40438i >> (var_0.b % 32u)) << (4294967295u % 32u), 1i, ~_wgslsmith_dot_vec3_i32(arg_1.c.wwx, vec3<i32>(arg_1.a, arg_2.c.x, 0i)), abs(45264i))));
    let var_2 = select(true, true, all(select(vec2<bool>(true, true), select(arg_0.xz, !arg_0.yz, arg_0.x), vec2<bool>(all(vec4<bool>(true, false, true, arg_0.x)), arg_0.x))));
    global3 = var_1.a;
    var_1 = func_3(vec2<u32>(firstLeadingBit(~4294967295u), 4294967295u) ^ ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.b, 57101u), ~vec2<u32>(0u, global4.b), abs(vec2<u32>(4294967295u, 74150u))), 1i);
    return Struct_1(0i, min(arg_2.b, global0.x), var_0.c);
}

fn func_1() -> Struct_1 {
    let var_0 = ~(~(~global0.xz));
    var var_1 = func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-764f, -248f, 1000f, 748f) - vec4<f32>(297f, 1365f, 263f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1409f, -117f, 610f, 1000f) - vec4<f32>(1244f, -1000f, 1530f, -1086f)), true)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-406f, 1693f, -1422f, 378f) * vec4<f32>(1188f, 1644f, -404f, 577f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-977f, -1614f, 118f, 744f) * vec4<f32>(1834f, -846f, 123f, -552f)), _wgslsmith_div_vec4_f32(vec4<f32>(287f, -505f, -447f, -743f), vec4<f32>(991f, -890f, -1349f, 223f))))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -487f), -1000f))));
    var var_3 = Struct_1(-1i, ~(~(~133526u)), var_1.c);
    let var_4 = vec2<bool>(true, true);
    return func_4(vec3<bool>(!(var_1.b > ~global1.b), all(!(!vec4<bool>(var_4.x, false, true, true))), true), func_3(~((vec2<u32>(16276u, 0u) ^ vec2<u32>(0u, var_1.b)) & global0.xz), 29324i), func_3(~(~(~var_0)), ~var_3.c.x));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_3(~_wgslsmith_sub_vec2_u32(~vec2<u32>(global0.x, 1u), countOneBits(vec2<u32>(67945u, global0.x))), func_3(~vec2<u32>(global0.x, 108070u), _wgslsmith_mult_i32(~arg_0.c.x, ~(-57092i))).a);
    global4 = arg_0;
    let var_1 = global2[_wgslsmith_index_u32(~(~arg_0.b) & global1.b, 9u)];
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(max(-1400f, -341f));
    return arg_0;
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1) -> vec4<i32> {
    global1 = arg_1;
    var var_0 = vec4<f32>(-157f, -687f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f)) + -188f), -315f);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1698f, 1093f, var_0.x, -880f), vec4<f32>(-694f, var_0.x, -2032f, var_0.x), vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1390f, -559f, 1613f, 549f)))) - vec4<f32>(-2634f, _wgslsmith_f_op_f32(-447f * 1353f), _wgslsmith_f_op_f32(-var_0.x), var_0.x))));
    let var_1 = ~vec4<u32>(1u, 1u, 46763u, 47106u);
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(687f, -329f, -619f, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + vec4<f32>(-246f, -1311f, var_0.x, 1000f))))))));
    return vec4<i32>(func_1().c.x, ~(-1i), -115911i, -(~(-firstTrailingBit(global4.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)));
    var var_1 = global0.xy;
    var var_2 = Struct_1(abs(select(select(global4.a, -43867i, var_0.x), -17643i, !var_0.x) << (27865u % 32u)), global0.x, ~vec4<i32>(1i, ~(~18320i), -34995i, ~0i & u_input.b));
    let var_3 = u_input.a;
    let var_4 = Struct_1(-4954i >> (1u % 32u), global4.b, func_6(~reverseBits(vec3<u32>(global4.b, 70840u, 1u) ^ vec3<u32>(1u, 0u, 0u)), func_5(func_1())));
    global2 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(-abs(vec4<i32>(-global4.a, var_4.a, -global1.c.x, 0i)), -2147483647i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1f)))), var_4.b);
}

