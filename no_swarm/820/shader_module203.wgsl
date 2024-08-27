struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(-1013f, 950f, -194f, vec3<i32>(28327i, -18115i, 2147483647i)), Struct_1(-1664f, 577f, -868f, vec3<i32>(0i, 11858i, 7648i)), Struct_1(-201f, 1000f, 2113f, vec3<i32>(-25533i, 1i, -57508i)), Struct_1(-312f, -1000f, -285f, vec3<i32>(-84880i, 0i, 0i)), Struct_1(358f, 1055f, 333f, vec3<i32>(-28262i, -15603i, 7223i)), Struct_1(118f, 219f, -362f, vec3<i32>(0i, 0i, 1i)), Struct_1(-1000f, 998f, 232f, vec3<i32>(-9662i, 2147483647i, -21056i)), Struct_1(1431f, 1038f, -290f, vec3<i32>(44285i, i32(-2147483648), 48967i)), Struct_1(287f, -2274f, 844f, vec3<i32>(-21097i, 61011i, 0i)), Struct_1(234f, -964f, 785f, vec3<i32>(-14770i, 23716i, 2147483647i)), Struct_1(-1696f, -1000f, 806f, vec3<i32>(-4536i, 76329i, -11072i)), Struct_1(545f, 334f, 2529f, vec3<i32>(51189i, -1i, 1i)), Struct_1(-603f, 613f, -765f, vec3<i32>(2455i, i32(-2147483648), 1i)), Struct_1(-211f, 398f, -1318f, vec3<i32>(67499i, -16823i, 2147483647i)), Struct_1(-1979f, -284f, 659f, vec3<i32>(4646i, i32(-2147483648), i32(-2147483648))), Struct_1(117f, -427f, 153f, vec3<i32>(i32(-2147483648), 1i, 2147483647i)), Struct_1(-498f, -1000f, -630f, vec3<i32>(62518i, 70346i, -22659i)), Struct_1(1219f, -467f, -186f, vec3<i32>(18857i, -1i, 5568i)));

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(245f, -289f, 332f, vec3<i32>(24666i, i32(-2147483648), 1i)), Struct_1(338f, 557f, -1524f, vec3<i32>(0i, 20983i, 683i)));

var<private> global2: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global3: array<Struct_1, 5>;

var<private> global4: Struct_1 = Struct_1(-1000f, -345f, 1520f, vec3<i32>(i32(-2147483648), i32(-2147483648), 84911i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> vec4<u32> {
    var var_0 = global0[_wgslsmith_index_u32(1u, 18u)];
    var var_1 = global4.d.x;
    global2 = !vec4<bool>(true, any(global2.wx), any(!select(vec3<bool>(global2.x, global2.x, global2.x), global2.zxx, true)), all(global2.xw) || (!global2.x || !global2.x));
    let var_2 = arg_0.yxw;
    var var_3 = global1[_wgslsmith_index_u32(u_input.b, 2u)];
    return vec4<u32>(max(1u, firstLeadingBit(~u_input.a)), u_input.a, 1u, 1u);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<u32>) -> f32 {
    var var_0 = ~select(arg_3, vec3<u32>(~(~arg_0), 0u, _wgslsmith_dot_vec2_u32(countOneBits(arg_3.xy), vec2<u32>(1u, u_input.a) | arg_3.zz)), all(global2.zx));
    global2 = select(!select(vec4<bool>(true, arg_1.c != arg_1.c, global2.x, global4.d.x <= arg_1.d.x), vec4<bool>(global2.x, all(vec4<bool>(global2.x, true, arg_2, global2.x)), global2.x, true), (u_input.a >= 4294967295u) & global2.x), !select(vec4<bool>(true, select(false, arg_2, global2.x), any(vec3<bool>(global2.x, false, false)), true), select(vec4<bool>(false, false, arg_2, arg_2), !vec4<bool>(false, arg_2, true, false), true), vec4<bool>(true, true, !global2.x, arg_2)), select(!(!vec4<bool>(true, false, global2.x, true)), select(vec4<bool>(12711u >= u_input.b, -1125f == global4.c, 1013f == arg_1.a, all(global2.wy)), !(!vec4<bool>(false, true, false, global2.x)), global2.x), !any(vec2<bool>(arg_2, arg_2))));
    var_0 = _wgslsmith_add_vec3_u32(arg_3, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, 51509u, var_0.x), vec4<u32>(4294967295u, 35626u, var_0.x, arg_0)), max(4294967295u, 49264u), ~10664u) << (~firstLeadingBit(arg_3) % vec3<u32>(32u))) | arg_3;
    global3 = array<Struct_1, 5>();
    var var_1 = _wgslsmith_f_op_f32(min(675f, arg_1.c));
    return 1000f;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = arg_1;
    var var_1 = 2147483647i;
    let var_2 = (~(~select(vec4<u32>(6065u, 76532u, u_input.b, 52361u), vec4<u32>(1u, u_input.a, 74709u, u_input.b), true)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.b, u_input.a), max(0u, 36890u), 1u, u_input.b), reverseBits(~vec4<u32>(u_input.a, 7433u, u_input.b, 1u)))) & ~(~(reverseBits(vec4<u32>(u_input.b, 0u, 1u, 13266u)) >> (func_2(vec4<f32>(arg_0.b, 491f, var_0.x, arg_0.a), -990f) % vec4<u32>(32u))));
    var var_3 = var_2.x;
    var_1 = arg_3.d.x;
    return ~var_2;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, reverseBits(u_input.b), arg_1.x, 22015u >> (~arg_0 % 32u)), min(select(vec4<u32>(arg_1.x, 4294967295u, 1u, arg_0), vec4<u32>(50926u, 4294967295u, arg_1.x, 4294967295u), false) ^ ~vec4<u32>(4294967295u, arg_1.x, arg_0, 29157u), vec4<u32>(~arg_1.x, ~arg_1.x, _wgslsmith_add_u32(arg_0, arg_1.x), 0u))), _wgslsmith_mod_vec4_u32((firstLeadingBit(vec4<u32>(u_input.b, u_input.b, arg_0, u_input.b)) ^ vec4<u32>(3511u, u_input.a, arg_1.x, 1u)) & func_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1001f, global4.a, 851f, global4.b), vec4<f32>(global4.b, 825f, global4.a, 375f))), _wgslsmith_f_op_f32(-global4.c)), func_4(Struct_1(-1300f, _wgslsmith_f_op_f32(global4.b - -421f), -645f, vec3<i32>(-1i, global4.d.x, global4.d.x)), vec4<f32>(global4.a, global4.a, _wgslsmith_f_op_f32(func_3(u_input.b, global3[_wgslsmith_index_u32(u_input.a, 5u)], false, arg_1)), global4.b), select(!vec3<bool>(global2.x, false, false), vec3<bool>(true, true, true), global2.yzz), Struct_1(_wgslsmith_f_op_f32(max(global4.b, global4.a)), _wgslsmith_div_f32(386f, global4.a), _wgslsmith_f_op_f32(369f + -1175f), -global4.d))));
    global4 = global1[_wgslsmith_index_u32(func_4(Struct_1(global4.a, -461f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b * _wgslsmith_f_op_f32(-global4.a))), vec3<i32>(_wgslsmith_clamp_i32(global4.d.x, ~global4.d.x, global4.d.x & global4.d.x), -22416i, 1i)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1349f, global4.a, global4.b, global4.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2138f, global4.c, -1232f, global4.a)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1665f, global4.b, 671f, 1185f), vec4<f32>(global4.b, global4.a, global4.c, 1000f), false))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-931f, 705f, 525f, -1731f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-566f, global4.c, -1166f, 1254f), vec4<f32>(global4.a, global4.a, global4.b, -263f))))))), !global2.zxz, Struct_1(global4.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4.b, global4.c))) * global4.b), global4.a, global4.d)).x, 2u)];
    global0 = array<Struct_1, 18>();
    let var_1 = global0[_wgslsmith_index_u32(57851u, 18u)];
    global0 = array<Struct_1, 18>();
    return 1u >> (~4294967295u % 32u);
}

fn func_5(arg_0: u32) -> bool {
    let var_0 = global4.d.xx;
    global3 = array<Struct_1, 5>();
    global0 = array<Struct_1, 18>();
    var var_1 = global0[_wgslsmith_index_u32(~(~(~abs(u_input.b) & ~firstLeadingBit(u_input.a))), 18u)];
    var var_2 = global3[_wgslsmith_index_u32(arg_0, 5u)];
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 2>();
    global2 = select(!(!(!vec4<bool>(global2.x, global2.x, global2.x, true))), vec4<bool>(global2.x || false, func_5(func_1(firstTrailingBit(0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 1u, 0u), vec3<u32>(70733u, u_input.a, 9832u), vec3<u32>(4294967295u, u_input.a, u_input.a)))), false, true), true);
    let var_0 = vec2<u32>(1u, ~_wgslsmith_div_u32(~75356u, u_input.a) ^ func_1(~u_input.b << (_wgslsmith_mod_u32(4294967295u, u_input.a) % 32u), vec3<u32>(1u, ~22097u, 1u)));
    var var_1 = vec2<u32>(34847u, firstTrailingBit(_wgslsmith_add_u32(func_1(var_0.x, abs(vec3<u32>(61562u, u_input.b, var_0.x))), var_0.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -519f))) - global4.b), global4.a, 544f, vec3<i32>(-(~global4.d.x), -2147483647i, -firstLeadingBit(firstLeadingBit(-31600i))));
    let x = u_input.a;
    s_output = StorageBuffer(global4.b);
}

