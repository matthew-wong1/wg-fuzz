struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<u32>(8934u, 1u, 8086u, 81786u), vec2<i32>(-59046i, -642i), -24860i, vec2<i32>(6474i, -40224i)), Struct_1(vec4<u32>(1u, 62359u, 56747u, 1u), vec2<i32>(22586i, 1i), -20517i, vec2<i32>(-42632i, -12193i)), Struct_1(vec4<u32>(103560u, 45521u, 957u, 4294967295u), vec2<i32>(-4744i, 1i), -42855i, vec2<i32>(-6816i, 27711i)), Struct_1(vec4<u32>(40553u, 1u, 22874u, 34200u), vec2<i32>(2147483647i, i32(-2147483648)), -6277i, vec2<i32>(23720i, 2147483647i)), Struct_1(vec4<u32>(0u, 24418u, 1u, 4469u), vec2<i32>(0i, -9605i), i32(-2147483648), vec2<i32>(0i, -34282i)), Struct_1(vec4<u32>(1u, 35498u, 63815u, 12070u), vec2<i32>(-4792i, i32(-2147483648)), 1i, vec2<i32>(6171i, 0i)), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 0u), vec2<i32>(1i, -9509i), 1i, vec2<i32>(7573i, -99530i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec2<i32>(0i, -41676i), i32(-2147483648), vec2<i32>(-7695i, -8924i)), Struct_1(vec4<u32>(19226u, 768u, 2370u, 0u), vec2<i32>(-11884i, 1i), 1i, vec2<i32>(17049i, 56773i)), Struct_1(vec4<u32>(0u, 4294967295u, 5686u, 8879u), vec2<i32>(-28124i, -94352i), 2147483647i, vec2<i32>(-1i, 2147483647i)), Struct_1(vec4<u32>(34636u, 1u, 6124u, 59348u), vec2<i32>(-1i, -1i), -22i, vec2<i32>(11979i, 19371i)), Struct_1(vec4<u32>(4294967295u, 11660u, 1u, 8675u), vec2<i32>(-1i, 2147483647i), 17305i, vec2<i32>(i32(-2147483648), -36029i)), Struct_1(vec4<u32>(33194u, 11613u, 4294967295u, 1u), vec2<i32>(-46380i, 0i), -6646i, vec2<i32>(1i, 2147483647i)), Struct_1(vec4<u32>(28777u, 4294967295u, 4294967295u, 28236u), vec2<i32>(2147483647i, 34727i), -8889i, vec2<i32>(-1i, 1i)), Struct_1(vec4<u32>(4441u, 1u, 0u, 66142u), vec2<i32>(2147483647i, -38542i), -5178i, vec2<i32>(0i, 2147483647i)), Struct_1(vec4<u32>(4294967295u, 16442u, 9942u, 35928u), vec2<i32>(-36795i, -42508i), 2147483647i, vec2<i32>(-6852i, -1i)));

var<private> global1: f32;

var<private> global2: vec3<f32> = vec3<f32>(-266f, -1000f, 1279f);

var<private> global3: vec4<f32> = vec4<f32>(194f, 158f, -305f, 954f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: u32) -> f32 {
    global2 = arg_1;
    let var_0 = vec4<bool>(true, true, true, true);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1761f))) * _wgslsmith_f_op_f32(max(762f, global2.x)));
    global1 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_2 = select(min(~1i, 0i), ~(-(~(i32(-1i) * -1i))), true);
    return 662f;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3) -> bool {
    global1 = -1542f;
    var var_0 = ~(~1u);
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(828f + 1227f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-898f - global2.x), _wgslsmith_f_op_f32(-global2.x)))), -222f));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(13255u, arg_0.x), 16u)];
    let var_2 = vec3<u32>(reverseBits(_wgslsmith_sub_u32(u_input.a, 1u)), ~(u_input.c << (1u % 32u)), var_1.a.x);
    return !(false == any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec2<i32>) -> u32 {
    global2 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-278f)))), -1980f, arg_1)))), global3.x, global2.x);
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(571f * global3.x), _wgslsmith_f_op_f32(step(global2.x, -602f))), 1045f, _wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-561f)) - global3.x)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(305f, -270f, global3.x, -331f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -243f, 548f, global3.x)))))), Struct_1(vec4<u32>(~u_input.b.x << (u_input.a % 32u), 104904u, u_input.b.x, 11279u), arg_2, 0i & (arg_2.x << (reverseBits(0u) % 32u)), ~select(arg_2 & vec2<i32>(31197i, 18611i), vec2<i32>(1i, arg_0), !vec2<bool>(arg_1, arg_1))), all(vec3<bool>(min(-1i, arg_0) != firstTrailingBit(-45409i), 0u < _wgslsmith_clamp_u32(u_input.b.x, 0u, 0u), all(vec2<bool>(arg_1, arg_1)))));
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -933f), global3.x)))), -315f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -886f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global3.x)))))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-522f, _wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(global3.x * 1384f), false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(1856f, global3.x), var_0.c)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.x)))))));
    let var_1 = Struct_3(global2.x, Struct_1(_wgslsmith_sub_vec4_u32(var_0.b.a, ~reverseBits(vec4<u32>(1u, 4294967295u, u_input.a, var_0.b.a.x))), ~(var_0.b.b ^ var_0.b.b), -2147483647i, arg_2));
    let var_2 = var_0.b;
    return u_input.a;
}

fn func_2(arg_0: f32) -> Struct_1 {
    global2 = global3.zxx;
    global0 = array<Struct_1, 16>();
    global1 = arg_0;
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-global3.x), global0[_wgslsmith_index_u32(func_4(~(~1i) & _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-19968i, 2147483647i, 20204i, 43180i), vec4<i32>(2147483647i, -2147483647i, 0i, -2147483647i)), 1i, ~0i), func_3(~(~vec4<u32>(26363u, u_input.b.x, 4294967295u, 60845u)), Struct_3(-514f, global0[_wgslsmith_index_u32(1u, 16u)])), select(max(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -14779i), vec2<i32>(1261i, -1i)), ~vec2<i32>(-33710i, 0i)), abs(firstLeadingBit(vec2<i32>(-20655i, -62175i))), true)), 16u)]);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -1437f, global3.x, 1660f), vec4<f32>(global3.x, global2.x, -483f, -315f), vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, 808f, 1049f, -1285f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -145f, arg_0, arg_0) + vec4<f32>(-3751f, -1836f, global2.x, -1158f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1025f, arg_0, var_0.a, 265f) + vec4<f32>(1136f, var_0.a, 617f, -609f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, var_0.a, -1138f, 981f) - vec4<f32>(-244f, global2.x, 517f, var_0.a))))), global0[_wgslsmith_index_u32(22031u, 16u)], all(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true))));
    return global0[_wgslsmith_index_u32(~select(36149u, countOneBits(countOneBits(9429u & u_input.a)), any(!vec3<bool>(var_1.c, true, var_1.c))), 16u)];
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<u32>) -> vec2<i32> {
    var var_0 = Struct_3(118f, Struct_1(vec4<u32>(abs(4294967295u), u_input.a, 0u, arg_2.x), arg_1.b.d, 1i, arg_1.b.d));
    var var_1 = arg_1.b;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(339f - 1345f), 17974i == var_0.b.b.x))) - global2.x));
    global3 = _wgslsmith_f_op_vec4_f32(arg_1.a + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(946f, var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), var_0.a))));
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(arg_1.a));
    return var_1.b;
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> Struct_3 {
    global1 = 1071f;
    global0 = array<Struct_1, 16>();
    global2 = vec3<f32>(global3.x, -2036f, global2.x);
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(arg_2.a, _wgslsmith_div_vec4_f32(arg_2.a, _wgslsmith_f_op_vec4_f32(round(arg_2.a))))), arg_2.a, any(select(!vec4<bool>(arg_2.c, arg_2.c, arg_0, arg_2.c), select(vec4<bool>(arg_0, arg_2.c, arg_2.c, false), vec4<bool>(arg_0, false, arg_2.c, arg_0), arg_2.c), !vec4<bool>(arg_0, arg_2.c, arg_2.c, false))))));
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1717f, 741f)), _wgslsmith_f_op_f32(select(-309f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(-arg_2.a.x)), false)), arg_2.a.x, _wgslsmith_f_op_f32(max(-1000f, global2.x))));
    return Struct_3(_wgslsmith_f_op_f32(func_1(abs(vec3<u32>(4294967295u, arg_2.b.a.x, 4294967295u) | _wgslsmith_sub_vec3_u32(arg_1.a.wwx, vec3<u32>(23421u, 4294967295u, 1u))), arg_2.a.wzy, arg_2.b.a.x)), Struct_1(vec4<u32>(4294967295u, ~u_input.b.x, select(func_4(arg_1.c, false, vec2<i32>(-19073i, arg_1.c)), ~arg_1.a.x, all(vec2<bool>(arg_2.c, false))), 0u), -vec2<i32>(59340i, arg_2.b.c ^ 0i), 0i, arg_2.b.d));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(func_1(countOneBits(~vec3<u32>(1u, 1u, 1u) >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c, u_input.c, 63862u), vec3<u32>(u_input.b.x, u_input.c, 0u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.wzx)), 21381u));
    let var_0 = func_6(!(select(all(vec4<bool>(false, false, false, true)), true, true) | true), Struct_1(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(0u, 4294967295u, 13422u, u_input.a) ^ vec4<u32>(u_input.a, u_input.b.x, u_input.c, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.c, u_input.c), vec4<u32>(u_input.a, 0u, u_input.a, u_input.c))), func_5(u_input.b, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1343f, global3.x, global2.x, 944f)), func_2(-283f), all(vec4<bool>(false, true, false, false))), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.c, 1u, u_input.b.x, 22224u)), ~vec4<u32>(u_input.b.x, 39480u, u_input.a, u_input.b.x))), func_2(514f).d.x, vec2<i32>(1i, ~(-2147483647i))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-668f, global2.x, -1004f, global2.x), vec4<f32>(433f, global2.x, global3.x, global2.x), vec4<bool>(true, false, true, true)))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, -272f, -1481f, global3.x)))), Struct_1((vec4<u32>(18544u, u_input.b.x, u_input.b.x, 71884u) & vec4<u32>(8165u, 1u, 58568u, u_input.a)) ^ firstTrailingBit(vec4<u32>(u_input.c, 1u, u_input.b.x, 1u)), vec2<i32>(1i, 1i), ~(~(-1i)), vec2<i32>(abs(-13316i), 1i)), !(u_input.c == 43538u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -768f, var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-134f + global2.x) * _wgslsmith_f_op_f32(f32(-1f) * -625f)))), select(~(~vec2<u32>(126905u, u_input.b.x)), var_0.b.a.wy, select(vec2<bool>(all(vec3<bool>(true, true, true)), true), vec2<bool>(true, true), true)), vec3<f32>(-1416f, 1046f, global3.x), vec3<i32>(var_0.b.d.x, ~var_0.b.d.x, ~0i ^ var_0.b.b.x), 61044u);
}

