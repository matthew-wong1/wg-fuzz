struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_4,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(2147483647i, 1i, 21061i, -49515i), vec4<i32>(-1i, 30150i, 1i, -1i), vec4<i32>(17096i, 2147483647i, 87480i, -48157i), vec4<i32>(19895i, 48606i, 14080i, 0i), vec4<i32>(7438i, 2147483647i, 17506i, -39271i), vec4<i32>(-41204i, 8992i, i32(-2147483648), -1i), vec4<i32>(-67467i, 0i, 1i, 70599i), vec4<i32>(-30689i, -14493i, 3250i, 54528i), vec4<i32>(-50741i, 6470i, i32(-2147483648), 1i), vec4<i32>(1i, 3365i, i32(-2147483648), 34341i), vec4<i32>(-1i, i32(-2147483648), 12539i, -10966i), vec4<i32>(1i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(-1i, 36104i, 2147483647i, 16836i), vec4<i32>(55059i, 47279i, 17454i, 2147483647i), vec4<i32>(-41076i, 2147483647i, -1999i, -33547i), vec4<i32>(0i, -47165i, i32(-2147483648), -8106i), vec4<i32>(2147483647i, 43115i, -19189i, 7932i), vec4<i32>(i32(-2147483648), 1i, -1i, 1i), vec4<i32>(2147483647i, -35404i, 1i, -1i), vec4<i32>(-41251i, 1i, -1i, -13148i), vec4<i32>(1i, i32(-2147483648), -43629i, 1i), vec4<i32>(49635i, -23784i, -35571i, -9149i), vec4<i32>(1i, 16649i, 29640i, 6729i), vec4<i32>(9226i, 2147483647i, 21756i, 0i), vec4<i32>(-20838i, -6975i, -16111i, i32(-2147483648)), vec4<i32>(-1i, 1i, -35550i, -89735i), vec4<i32>(-1i, 0i, 1i, 3723i), vec4<i32>(-6018i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(46572i, 2147483647i, 9946i, 7569i), vec4<i32>(-9536i, -10051i, i32(-2147483648), 1i), vec4<i32>(-3872i, -9628i, -1i, -62079i));

var<private> global1: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(Struct_1(vec2<i32>(449i, 2147483647i)), 1282f), Struct_4(Struct_1(vec2<i32>(1i, 20564i)), 718f), Struct_4(Struct_1(vec2<i32>(34599i, 29143i)), -576f), Struct_4(Struct_1(vec2<i32>(19693i, -8670i)), 986f), Struct_4(Struct_1(vec2<i32>(1i, 15371i)), 2462f), Struct_4(Struct_1(vec2<i32>(2147483647i, -78026i)), -1427f), Struct_4(Struct_1(vec2<i32>(64202i, -39932i)), 3172f), Struct_4(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i)), -138f), Struct_4(Struct_1(vec2<i32>(1763i, -28084i)), -505f), Struct_4(Struct_1(vec2<i32>(1i, 20659i)), -808f), Struct_4(Struct_1(vec2<i32>(-1i, 2147483647i)), -1933f));

var<private> global2: vec3<bool>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = u_input.b.x;
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(100f, -219f, -1055f), vec3<f32>(-162f, -1056f, 203f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(175f, -653f, 769f) + vec3<f32>(-362f, -664f, -155f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(759f, 1308f, -509f)))))));
    var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(276f + _wgslsmith_f_op_f32(-435f + _wgslsmith_f_op_f32(f32(-1f) * -2034f))), var_2.x, 1909f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, 802f, 2000f))))))));
    var_1 = ~abs(reverseBits(max(~vec3<i32>(-2147483647i, -2147483647i, -1i), -u_input.b)));
    return Struct_1(u_input.b.xy);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: u32) -> i32 {
    var var_0 = Struct_5(vec3<bool>(any(!vec4<bool>(global2.x, true, false, global2.x)), global2.x, !(!arg_1.x)), Struct_4(Struct_1(vec2<i32>(12979i ^ u_input.b.x, 39050i)), 829f), 170f, any(select(vec4<bool>(select(arg_1.x, false, true), u_input.b.x < u_input.b.x, !arg_1.x, any(vec3<bool>(false, true, false))), select(vec4<bool>(true, false, true, true), !vec4<bool>(arg_1.x, arg_1.x, global2.x, true), select(vec4<bool>(global2.x, false, global2.x, true), vec4<bool>(arg_1.x, true, arg_1.x, global2.x), vec4<bool>(false, arg_1.x, false, global2.x))), select(select(vec4<bool>(global2.x, true, true, arg_1.x), vec4<bool>(arg_1.x, true, true, arg_1.x), false), !vec4<bool>(false, global2.x, true, true), select(vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(false, global2.x, arg_1.x, false), vec4<bool>(global2.x, arg_1.x, arg_1.x, false))))));
    var var_1 = reverseBits(~u_input.a);
    global2 = vec3<bool>(any(!(!(!global2.zx))), any(arg_1), any(vec2<bool>(!(var_0.a.x == false), global2.x)));
    let var_2 = var_0.b;
    let var_3 = Struct_4(var_0.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x - var_0.c), _wgslsmith_f_op_f32(step(624f, -1000f)), true)), -411f, true)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.b, 1000f)), _wgslsmith_f_op_f32(142f + -688f)) + 1024f)));
    return select(-_wgslsmith_mod_i32(-2147483647i, u_input.b.x), _wgslsmith_dot_vec3_i32(~(-(u_input.b ^ u_input.b)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -19715i, 1i), u_input.b, vec3<i32>(-25647i, var_3.a.a.x, -19857i)), reverseBits(vec3<i32>(var_2.a.a.x, u_input.b.x, u_input.b.x)), all(var_0.a.zy)) | ~vec3<i32>(var_0.b.a.a.x, -2147483647i, 2147483647i)), all(select(arg_1, arg_1, arg_1)));
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-826f, -1796f, 373f) + vec3<f32>(-246f, -1332f, 1064f)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-235f, 996f, -1492f) * vec3<f32>(657f, 672f, 1851f)), vec3<f32>(-537f, -1000f, 484f)))))), vec2<bool>(false, u_input.b.x <= (u_input.b.x >> (_wgslsmith_add_u32(43381u, u_input.a) % 32u))), true, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -global0[_wgslsmith_index_u32(u_input.c, 31u)], _wgslsmith_sub_vec4_i32(reverseBits(global0[_wgslsmith_index_u32(u_input.c, 31u)]), vec4<i32>(u_input.b.x, 28981i, 1i, -2147483647i))), u_input.b.x));
    global1 = array<Struct_4, 11>();
    var var_1 = vec4<i32>(~(func_3(vec4<f32>(var_0.a.x, var_0.a.x, 664f, var_0.a.x), vec2<bool>(var_0.c, true), _wgslsmith_mult_u32(46889u, u_input.a)) | u_input.b.x), 14718i, u_input.b.x, i32(-1i) * -1i);
    var var_2 = Struct_5(select(select(select(select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, var_0.c, false), true), vec3<bool>(false, false, var_0.c), vec3<bool>(false, var_0.c, true)), vec3<bool>(true, true, true), !var_0.b.x), vec3<bool>(var_0.c, global2.x, var_0.c | (u_input.c == u_input.c)), _wgslsmith_dot_vec4_i32(~global0[_wgslsmith_index_u32(u_input.c, 31u)], _wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(u_input.c, 31u)], vec4<i32>(var_0.d, 11084i, -1i, 2147483647i), vec4<i32>(-1i, var_0.d, -2147483647i, 1i))) != -1i), global1[_wgslsmith_index_u32(77607u, 11u)], 1000f, !global2.x);
    var_2 = Struct_5(select(select(var_2.a, var_2.a, any(vec2<bool>(var_0.b.x, true)) || var_2.d), vec3<bool>(-359f > _wgslsmith_f_op_f32(-var_2.c), !global2.x, true), global2.x), Struct_4(var_2.b.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1557f), var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c - 1850f) + -1210f)) + var_2.c), var_2.d);
    return firstTrailingBit(vec2<u32>(1u, ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-30978i, Struct_1(min(min(-u_input.b.xx, u_input.b.zy), vec2<i32>(-1i) * -vec2<i32>(2147483647i, 2147483647i))), global2.x, func_1(-(~abs(-2147483647i))), vec2<bool>(true, global2.x));
    var var_1 = firstLeadingBit(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~(vec2<u32>(26030u, u_input.c) ^ vec2<u32>(36603u, 43999u)), vec2<u32>(60061u, 72338u) | (vec2<u32>(19286u, u_input.c) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), abs(~vec2<u32>(u_input.c, u_input.c))), _wgslsmith_mult_vec2_u32(max(vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(u_input.c, 20119u)), func_2() << ((vec2<u32>(13860u, 4294967295u) ^ vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32((vec4<u32>(var_1.x, var_1.x, var_1.x, u_input.c) << (select(vec4<u32>(1u, 95518u, u_input.c, 1u), vec4<u32>(4294967295u, var_1.x, 4294967295u, var_1.x), vec4<bool>(var_0.c, global2.x, false, true)) % vec4<u32>(32u))) << (~firstLeadingBit(vec4<u32>(45993u, u_input.c, 35880u, u_input.c)) % vec4<u32>(32u)), select(~(vec4<u32>(u_input.c, 1u, var_1.x, var_1.x) ^ vec4<u32>(41971u, 28758u, 26181u, 61672u)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 50431u, u_input.c, var_1.x), vec4<u32>(33829u, var_1.x, u_input.c, 3000u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 1u, 4294967295u), vec4<u32>(var_1.x, 4294967295u, var_1.x, 4294967295u), vec4<u32>(0u, 30583u, 4294967295u, u_input.a))), true & var_0.e.x)), firstTrailingBit(min(firstLeadingBit(min(vec2<u32>(5344u, u_input.a), vec2<u32>(u_input.c, u_input.c))), _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(0u, var_1.x)), ~vec2<u32>(1u, 0u), ~vec2<u32>(53108u, 15232u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -1533f)) * _wgslsmith_f_op_f32(abs(1068f))), 599f))), vec4<u32>(max(u_input.c, var_1.x), ~var_1.x, 0u, var_1.x) | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, ~u_input.c, countOneBits(12774u), ~u_input.c), ~(~vec4<u32>(34043u, var_1.x, u_input.a, 73783u)), reverseBits(vec4<u32>(60930u, 0u, 1u, u_input.a))));
}

