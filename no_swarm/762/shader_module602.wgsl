struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(1i, vec4<bool>(false, false, false, true), vec2<u32>(4294967295u, 19697u)), Struct_1(2147483647i, vec4<bool>(false, true, false, false), vec2<u32>(1u, 4294967295u)), Struct_1(27811i, vec4<bool>(true, false, true, true), vec2<u32>(0u, 1u)), Struct_1(2147483647i, vec4<bool>(false, true, true, true), vec2<u32>(0u, 0u)), Struct_1(0i, vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, 4294967295u)), Struct_1(26798i, vec4<bool>(true, false, true, false), vec2<u32>(1u, 0u)), Struct_1(1i, vec4<bool>(true, true, false, false), vec2<u32>(1u, 36188u)));

var<private> global3: array<u32, 14> = array<u32, 14>(33180u, 0u, 807u, 1u, 27425u, 1u, 0u, 0u, 1u, 9589u, 1u, 1u, 9245u, 30886u);

var<private> global4: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(-35736i, Struct_1(32020i, vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, 9330u)), -383f, vec4<i32>(30796i, 2147483647i, 1i, -1i)), Struct_2(0i, Struct_1(2147483647i, vec4<bool>(false, true, false, false), vec2<u32>(4294967295u, 87895u)), 1207f, vec4<i32>(i32(-2147483648), 2147483647i, -8279i, -2696i)), Struct_2(-23788i, Struct_1(40077i, vec4<bool>(true, true, true, false), vec2<u32>(40969u, 49516u)), -153f, vec4<i32>(-67568i, -30129i, -8085i, 2147483647i)), Struct_2(i32(-2147483648), Struct_1(79408i, vec4<bool>(true, false, true, false), vec2<u32>(1u, 27735u)), -542f, vec4<i32>(-10886i, -95896i, -38234i, 9786i)), Struct_2(-5460i, Struct_1(1i, vec4<bool>(false, true, false, false), vec2<u32>(0u, 0u)), 1000f, vec4<i32>(-16338i, 7113i, -55876i, -1i)), Struct_2(-1i, Struct_1(-25627i, vec4<bool>(false, true, false, false), vec2<u32>(4294967295u, 15720u)), 842f, vec4<i32>(-33179i, 1i, 14377i, 0i)), Struct_2(26860i, Struct_1(-5074i, vec4<bool>(false, false, true, true), vec2<u32>(4294967295u, 25168u)), 1000f, vec4<i32>(18258i, 17827i, -1i, 0i)), Struct_2(-55934i, Struct_1(47534i, vec4<bool>(true, true, true, false), vec2<u32>(6624u, 1u)), 422f, vec4<i32>(0i, -53820i, 22414i, 1421i)), Struct_2(-1i, Struct_1(12769i, vec4<bool>(false, true, true, true), vec2<u32>(8517u, 14074u)), -956f, vec4<i32>(7614i, i32(-2147483648), 44i, 56906i)), Struct_2(0i, Struct_1(2147483647i, vec4<bool>(true, true, true, true), vec2<u32>(1u, 33828u)), 1348f, vec4<i32>(1i, 5450i, 0i, 0i)), Struct_2(6269i, Struct_1(-614i, vec4<bool>(true, true, false, true), vec2<u32>(0u, 4294967295u)), 1468f, vec4<i32>(-61481i, 1i, 38970i, 1i)), Struct_2(-31385i, Struct_1(i32(-2147483648), vec4<bool>(false, true, true, false), vec2<u32>(18790u, 0u)), -1103f, vec4<i32>(-5596i, 1i, 10012i, i32(-2147483648))), Struct_2(-47340i, Struct_1(0i, vec4<bool>(false, false, false, true), vec2<u32>(0u, 16622u)), -923f, vec4<i32>(-1i, -46861i, 89851i, 1i)), Struct_2(2147483647i, Struct_1(-22985i, vec4<bool>(false, false, true, false), vec2<u32>(1u, 4294967295u)), 278f, vec4<i32>(-15091i, 34022i, -36786i, 1i)), Struct_2(-1i, Struct_1(0i, vec4<bool>(true, false, true, false), vec2<u32>(1u, 195u)), -1008f, vec4<i32>(i32(-2147483648), -10023i, i32(-2147483648), 2147483647i)), Struct_2(0i, Struct_1(2147483647i, vec4<bool>(true, false, false, true), vec2<u32>(1u, 77205u)), -987f, vec4<i32>(48067i, 1i, -1i, -30197i)), Struct_2(1i, Struct_1(-1i, vec4<bool>(true, false, true, false), vec2<u32>(24294u, 11151u)), -1214f, vec4<i32>(22908i, -7522i, i32(-2147483648), 55i)), Struct_2(1i, Struct_1(i32(-2147483648), vec4<bool>(true, true, false, true), vec2<u32>(105654u, 1u)), 1000f, vec4<i32>(48803i, 2690i, 41158i, 1i)), Struct_2(0i, Struct_1(i32(-2147483648), vec4<bool>(true, false, true, false), vec2<u32>(5468u, 1u)), 1431f, vec4<i32>(-14358i, -29626i, 19647i, 44680i)), Struct_2(-29871i, Struct_1(-1i, vec4<bool>(true, false, false, true), vec2<u32>(33976u, 112875u)), -1226f, vec4<i32>(48950i, -15004i, 0i, 1i)), Struct_2(26667i, Struct_1(-16398i, vec4<bool>(true, false, true, false), vec2<u32>(12350u, 4294967295u)), -925f, vec4<i32>(1i, 64291i, 988i, -1i)), Struct_2(21930i, Struct_1(36363i, vec4<bool>(true, true, false, false), vec2<u32>(33562u, 31930u)), -838f, vec4<i32>(31063i, 1i, -35286i, -24973i)), Struct_2(50482i, Struct_1(-28295i, vec4<bool>(true, false, true, false), vec2<u32>(1u, 4294967295u)), -2448f, vec4<i32>(0i, 47102i, 1i, i32(-2147483648))));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: bool) -> u32 {
    let var_0 = -1i << (~max(~(u_input.d & 1u), u_input.a) % 32u);
    global0 = !(!(!select(!vec4<bool>(arg_0, false, true, arg_1), vec4<bool>(arg_0, false, false, global1.b.b.x), select(vec4<bool>(false, arg_0, true, false), global1.b.b, global1.b.b))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.c - global1.c)))))) + _wgslsmith_f_op_f32(-297f * global1.c));
    let var_2 = vec4<bool>(!(!(arg_1 && false)) == all(!(!vec3<bool>(global1.b.b.x, global0.x, false))), true, any(vec4<bool>(false, arg_1, true, any(global1.b.b))), _wgslsmith_f_op_f32(floor(625f)) > global1.c);
    let var_3 = Struct_1(-(_wgslsmith_sub_i32(1i, ~15228i) << (~4294967295u % 32u)), !vec4<bool>(true, any(vec3<bool>(global0.x, true, false)), global1.b.b.x, false), reverseBits(vec2<u32>(global3[_wgslsmith_index_u32(~0u, 14u)] & global1.b.c.x, abs(_wgslsmith_sub_u32(u_input.d, global1.b.c.x)))));
    return 43788u;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> bool {
    var var_0 = arg_2.c;
    global3 = array<u32, 14>();
    var_0 = arg_2.c;
    var_0 = _wgslsmith_f_op_f32(min(global1.c, 940f));
    var var_1 = Struct_1(_wgslsmith_mult_i32(arg_1.a, _wgslsmith_dot_vec3_i32(-arg_2.d.yyy, countOneBits(~global1.d.xxx))), !vec4<bool>(arg_1.b.x, any(!global0.yy), any(select(vec4<bool>(global1.b.b.x, false, false, false), global1.b.b, false)), true), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(~arg_2.b.c.x, arg_3.x), vec2<u32>(arg_3.x, firstTrailingBit(arg_1.c.x)))));
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: f32) -> i32 {
    global2 = array<Struct_1, 7>();
    global2 = array<Struct_1, 7>();
    let var_0 = 832f;
    var var_1 = global4[_wgslsmith_index_u32(0u, 23u)];
    let var_2 = vec3<bool>(func_4(vec3<u32>(var_1.b.c.x, ~var_1.b.c.x, var_1.b.c.x ^ (0u | var_1.b.c.x)), Struct_1(arg_1.x, var_1.b.b, abs(vec2<u32>(0u, 98208u) ^ u_input.b.zw)), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_3(false, var_1.b.c.x > 1u), ~select(u_input.b.x, 29167u, var_1.b.b.x), ~select(37991u, 61468u, false)), 23u)], u_input.b.xw), u_input.d < global1.b.c.x, true);
    return global1.d.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(~abs(10123u), 7u)];
    var var_1 = u_input.b.xyx;
    var var_2 = Struct_2(~_wgslsmith_sub_i32(56115i, _wgslsmith_add_i32(global1.d.x, global1.a >> (u_input.b.x % 32u))), Struct_1(max(-(2147483647i << (var_1.x % 32u)), 0i), vec4<bool>(any(!vec2<bool>(arg_1.b.b.x, true)), select(false != global1.b.b.x, global1.b.b.x, all(vec2<bool>(arg_2.b.x, global0.x))), !global1.b.b.x, true), global1.b.c), -783f, vec4<i32>(reverseBits(countOneBits(func_2(arg_1.d, global1.d, -454f))), (1i << (arg_2.c.x % 32u)) ^ firstTrailingBit(var_0.a), select(~(-54542i), -1i, !func_4(vec3<u32>(53152u, 0u, 12093u), Struct_1(34597i, vec4<bool>(true, arg_2.b.x, arg_1.b.b.x, global0.x), vec2<u32>(u_input.b.x, arg_2.c.x)), Struct_2(arg_1.d.x, global1.b, -341f, global1.d), var_0.c)), ~(-1i)));
    var var_3 = Struct_2(u_input.c, global1.b, _wgslsmith_f_op_f32(ceil(global1.c)), vec4<i32>(-2147483647i, ~arg_2.a, _wgslsmith_clamp_i32(-1i, 54691i, i32(-1i) * -arg_1.d.x), arg_2.a));
    var var_4 = var_0.b.x;
    return !(!var_2.b.b.x) || (!var_3.b.b.x && (global0.x || !(global1.c <= -538f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = -global1.d.xz;
    global0 = vec4<bool>(!(!global1.b.b.x), !func_1(~firstLeadingBit(vec4<u32>(4294967295u, 1u, 4294967295u, global1.b.c.x)), Struct_2(_wgslsmith_sub_i32(28526i, global1.b.a), global2[_wgslsmith_index_u32(40480u, 7u)], _wgslsmith_f_op_f32(exp2(global1.c)), global1.d), global1.b), false, all(select(select(vec3<bool>(global0.x, global1.b.b.x, global0.x), !global1.b.b.zyz, select(vec3<bool>(global1.b.b.x, true, global1.b.b.x), vec3<bool>(global0.x, false, true), vec3<bool>(global1.b.b.x, global0.x, global1.b.b.x))), select(global1.b.b.zyw, global0.yzx, vec3<bool>(false, global0.x, global0.x)), vec3<bool>(true, global1.b.b.x && false, true))));
    let var_2 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.c.x, -min(vec2<i32>(func_2(global1.d, vec4<i32>(global1.d.x, global1.b.a, var_0, global1.b.a), -203f), -19342i), vec2<i32>(var_1.x, 35734i)), var_2.a, abs(abs(_wgslsmith_sub_u32(global1.b.c.x, 4294967295u))));
}

