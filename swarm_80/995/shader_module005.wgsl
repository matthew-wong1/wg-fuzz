struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_4,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16>;

var<private> global1: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-437f, -1000f), vec2<f32>(1141f, 1000f), vec2<f32>(314f, -206f));

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<i32>(34783i, 23501i), vec2<i32>(15743i, i32(-2147483648)), vec3<bool>(false, false, true), vec4<u32>(28544u, 1u, 0u, 43540u)), Struct_1(vec2<i32>(-16089i, -1i), vec2<i32>(11791i, 43512i), vec3<bool>(true, true, true), vec4<u32>(1u, 107678u, 1u, 32904u)), Struct_1(vec2<i32>(i32(-2147483648), 36830i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<bool>(false, false, true), vec4<u32>(2762u, 75582u, 32877u, 4294967295u)), Struct_1(vec2<i32>(-1i, -42070i), vec2<i32>(21614i, -65346i), vec3<bool>(true, true, false), vec4<u32>(21171u, 4294967295u, 4294967295u, 0u)), Struct_1(vec2<i32>(0i, -37460i), vec2<i32>(2147483647i, 0i), vec3<bool>(false, false, false), vec4<u32>(32872u, 1u, 0u, 30156u)), Struct_1(vec2<i32>(26081i, 47362i), vec2<i32>(1456i, -34995i), vec3<bool>(true, false, true), vec4<u32>(33930u, 1u, 38551u, 49034u)), Struct_1(vec2<i32>(-13633i, 2147483647i), vec2<i32>(2147483647i, -18782i), vec3<bool>(false, true, true), vec4<u32>(4294967295u, 12716u, 29572u, 21188u)), Struct_1(vec2<i32>(1583i, 2147483647i), vec2<i32>(38814i, 1i), vec3<bool>(false, true, true), vec4<u32>(64350u, 9219u, 4294967295u, 7038u)), Struct_1(vec2<i32>(27218i, 12182i), vec2<i32>(2147483647i, 2147483647i), vec3<bool>(true, false, true), vec4<u32>(81645u, 85654u, 1u, 0u)), Struct_1(vec2<i32>(2723i, 19657i), vec2<i32>(0i, 1i), vec3<bool>(true, true, false), vec4<u32>(22219u, 29124u, 7060u, 4294967295u)), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(1i, 3426i), vec3<bool>(false, false, true), vec4<u32>(79010u, 0u, 1u, 4294967295u)), Struct_1(vec2<i32>(0i, -26792i), vec2<i32>(0i, i32(-2147483648)), vec3<bool>(true, true, false), vec4<u32>(15150u, 4294967295u, 53519u, 1u)), Struct_1(vec2<i32>(52997i, -57752i), vec2<i32>(-61851i, -45665i), vec3<bool>(false, true, true), vec4<u32>(30902u, 4294967295u, 4294967295u, 4294967295u)), Struct_1(vec2<i32>(2147483647i, -1i), vec2<i32>(2147483647i, 7056i), vec3<bool>(true, false, true), vec4<u32>(1u, 34511u, 14731u, 45245u)), Struct_1(vec2<i32>(54177i, 0i), vec2<i32>(54026i, -7260i), vec3<bool>(false, false, true), vec4<u32>(20350u, 0u, 6016u, 1u)), Struct_1(vec2<i32>(38538i, 24702i), vec2<i32>(31783i, i32(-2147483648)), vec3<bool>(false, true, false), vec4<u32>(19159u, 0u, 4294967295u, 4294967295u)), Struct_1(vec2<i32>(1091i, i32(-2147483648)), vec2<i32>(24746i, 0i), vec3<bool>(false, false, false), vec4<u32>(12109u, 4294967295u, 4294967295u, 6818u)), Struct_1(vec2<i32>(23545i, 2147483647i), vec2<i32>(-1i, -26424i), vec3<bool>(false, true, false), vec4<u32>(0u, 0u, 12748u, 18388u)), Struct_1(vec2<i32>(1i, -1i), vec2<i32>(-24598i, -2144i), vec3<bool>(false, false, true), vec4<u32>(0u, 66295u, 31983u, 39705u)), Struct_1(vec2<i32>(5701i, -27173i), vec2<i32>(-34734i, 29580i), vec3<bool>(false, true, true), vec4<u32>(19225u, 1u, 72422u, 16381u)), Struct_1(vec2<i32>(52439i, 2147483647i), vec2<i32>(-1i, -8302i), vec3<bool>(true, true, true), vec4<u32>(47088u, 1u, 4294967295u, 8810u)), Struct_1(vec2<i32>(-28522i, 2147483647i), vec2<i32>(1i, 0i), vec3<bool>(false, false, true), vec4<u32>(17041u, 1u, 1u, 1u)), Struct_1(vec2<i32>(21150i, 0i), vec2<i32>(-1i, 12772i), vec3<bool>(false, false, false), vec4<u32>(20692u, 74026u, 31666u, 7726u)));

var<private> global3: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(4294967295u, 0u, 0u, 67652u), vec4<u32>(1u, 1u, 0u, 15540u));

var<private> global4: array<f32, 12>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>) -> bool {
    var var_0 = Struct_1(-_wgslsmith_mult_vec2_i32(vec2<i32>(-13066i, _wgslsmith_dot_vec4_i32(vec4<i32>(-524i, u_input.a, -15283i, -1i), vec4<i32>(103930i, u_input.a, u_input.a, -2147483647i))), vec2<i32>(-u_input.a, 0i)), select(-(~vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.a, ~(-u_input.a)), select(vec2<bool>(all(vec2<bool>(false, true)), u_input.a <= -36991i), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), !select(true, true, true))), select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(40350u, 12u)])) < -813f, any(!global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), 14542i != _wgslsmith_dot_vec4_i32(vec4<i32>(-38381i, u_input.a, u_input.a, u_input.a), vec4<i32>(-54341i, u_input.a, -13516i, u_input.a))), select(global0[_wgslsmith_index_u32(max(u_input.b.x << (0u % 32u), _wgslsmith_mult_u32(u_input.c.x, 20362u)), 16u)], select(select(global0[_wgslsmith_index_u32(73185u, 16u)], vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(0u, 16u)]), !global0[_wgslsmith_index_u32(0u, 16u)], select(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], true)), any(select(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(4294967295u, 16u)])))), vec4<u32>(~_wgslsmith_clamp_u32(~u_input.b.x, abs(u_input.b.x), ~u_input.c.x), 29800u, _wgslsmith_clamp_u32(u_input.c.x, 0u, 25833u), _wgslsmith_add_u32(u_input.b.x, select(u_input.b.x, _wgslsmith_mult_u32(51792u, u_input.b.x), true))));
    global3 = array<vec4<u32>, 2>();
    var var_1 = Struct_4(vec3<u32>((~4294967295u ^ select(0u, u_input.c.x, var_0.c.x)) >> (_wgslsmith_div_u32(0u, 94688u) % 32u), _wgslsmith_dot_vec2_u32(var_0.d.xy, var_0.d.xz), abs(u_input.c.x >> (reverseBits(var_0.d.x) % 32u))), ~var_0.d.x);
    var var_2 = Struct_2(!vec3<bool>(all(vec3<bool>(var_0.c.x, true, false)), var_0.c.x, !all(var_0.c)), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_div_i32(var_0.b.x, 24674i)), -var_0.a << ((vec2<u32>(var_1.a.x, var_1.a.x) ^ vec2<u32>(u_input.b.x, 4294967295u)) % vec2<u32>(32u)))), ~var_1.a.zz);
    let var_3 = select(vec4<i32>(~1i, var_0.b.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(var_0.a), vec2<i32>(-27074i ^ u_input.a, -23718i)), _wgslsmith_sub_i32(1i, min(155i << (var_0.d.x % 32u), 57280i))), vec4<i32>(var_0.b.x, -var_0.a.x >> (abs(726u) % 32u), i32(-1i) * -2147483647i, u_input.a), vec4<bool>(all(select(var_2.a, select(global0[_wgslsmith_index_u32(1u, 16u)], vec3<bool>(true, true, false), false), var_2.a.x & var_2.a.x)), !any(vec3<bool>(false, false, true)), var_2.a.x == ((var_0.a.x << (var_0.d.x % 32u)) < min(var_2.b, 1i)), true));
    return all(var_2.a.yz);
}

fn func_2(arg_0: bool) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~((global3[_wgslsmith_index_u32(u_input.c.x, 2u)] << (vec4<u32>(46290u, 2467u, 61269u, u_input.b.x) % vec4<u32>(32u))) ^ ~global3[_wgslsmith_index_u32(13297u, 2u)]), select(vec4<u32>(u_input.b.x << (u_input.b.x % 32u), u_input.c.x ^ 4294967295u, u_input.c.x, ~1u), (global3[_wgslsmith_index_u32(4294967295u, 2u)] | global3[_wgslsmith_index_u32(4294967295u, 2u)]) ^ firstTrailingBit(global3[_wgslsmith_index_u32(4294967295u, 2u)]), select(false, 8743u < u_input.b.x, func_3(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], vec3<f32>(1300f, -452f, global4[_wgslsmith_index_u32(u_input.c.x, 12u)]))))), 12u)] * global4[_wgslsmith_index_u32(u_input.c.x, 12u)]);
    var var_1 = ~_wgslsmith_mult_i32(-48044i, 27198i);
    var var_2 = Struct_2(vec3<bool>(any(global0[_wgslsmith_index_u32(u_input.c.x, 16u)]), arg_0, false), -26398i, reverseBits(~u_input.b));
    let var_3 = var_2.a;
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(78012u, 12u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(u_input.b.x, 12u)])), global4[_wgslsmith_index_u32(var_2.c.x, 12u)])), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, countOneBits(1u)), 12u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -630f) + _wgslsmith_f_op_f32(f32(-1f) * -1595f)));
    return Struct_5(Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global4[_wgslsmith_index_u32(25709u, 12u)], var_4.x, -882f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 12u)], 1000f, global4[_wgslsmith_index_u32(18775u, 12u)]) - vec3<f32>(global4[_wgslsmith_index_u32(0u, 12u)], global4[_wgslsmith_index_u32(var_2.c.x, 12u)], -717f))), vec3<f32>(-683f, var_4.x, _wgslsmith_f_op_f32(min(1000f, -2065f)))), global2[_wgslsmith_index_u32(~1u & u_input.c.x, 23u)], u_input.b.x & 1u, Struct_2(!global0[_wgslsmith_index_u32(u_input.c.x << (4294967295u % 32u), 16u)], u_input.a, vec2<u32>(max(var_2.c.x, u_input.b.x), u_input.b.x))), select(firstTrailingBit(_wgslsmith_div_vec4_i32(abs(vec4<i32>(var_2.b, -2147483647i, 2147483647i, u_input.a)), -vec4<i32>(u_input.a, 1i, 30218i, var_2.b))), vec4<i32>(49791i, max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b, u_input.a, -81202i, 73976i), vec4<i32>(42607i, 34138i, 0i, 60595i)), _wgslsmith_mult_i32(-68493i, var_2.b)), abs(-var_2.b), -firstTrailingBit(u_input.a)), !(!(!vec4<bool>(false, var_2.a.x, true, var_2.a.x)))), Struct_4(u_input.c, _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(41942u, u_input.c.x), vec2<u32>(10200u, 1u)), var_2.c)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-156f, 1000f, -392f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, 1095f, -115f) - vec3<f32>(var_4.x, 179f, -483f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-337f, -710f, var_4.x), vec3<f32>(-335f, 1626f, global4[_wgslsmith_index_u32(24146u, 12u)]))), vec3<f32>(-952f, global4[_wgslsmith_index_u32(62743u, 12u)], 550f))))), firstLeadingBit(u_input.c));
}

fn func_4(arg_0: Struct_5) -> Struct_3 {
    global2 = array<Struct_1, 23>();
    var var_0 = vec2<bool>(all(vec3<bool>(true, arg_0.a.b.c.x, arg_0.a.d.a.x)) || true, any(select(global0[_wgslsmith_index_u32(arg_0.e.x, 16u)], vec3<bool>(all(vec2<bool>(true, arg_0.a.b.c.x)), !arg_0.a.d.a.x, select(arg_0.a.d.a.x, true, true)), global0[_wgslsmith_index_u32(1u, 16u)])));
    let var_1 = _wgslsmith_f_op_f32(abs(-789f));
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(665f, 484f, global4[_wgslsmith_index_u32(1u, 12u)]), vec3<f32>(global4[_wgslsmith_index_u32(arg_0.e.x, 12u)], var_2.d.x, -964f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-391f, -2044f, global4[_wgslsmith_index_u32(0u, 12u)]) - vec3<f32>(1000f, -695f, global4[_wgslsmith_index_u32(u_input.c.x, 12u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.d) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1058f, global4[_wgslsmith_index_u32(32539u, 12u)], 730f) + vec3<f32>(-260f, 292f, 517f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.d) + vec3<f32>(-261f, -821f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(93719u, 12u)])))));
    return arg_0.a;
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = func_4(func_2(true));
    let var_1 = func_2(!(!var_0.d.a.x)).c;
    global0 = array<vec3<bool>, 16>();
    let var_2 = _wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(abs(~(~(u_input.b.x >> (var_0.c % 32u)))), 12u)]));
    let var_3 = ~var_0.d.b;
    return func_4(Struct_5(Struct_3(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(var_0.a + var_0.a)), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(var_3, u_input.a), vec2<i32>(22925i, var_3)), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 17304i), var_0.b.a), select(vec3<bool>(true, var_0.d.a.x, true), global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(0u, 16u)]), firstLeadingBit(var_0.b.d)), 0u, func_4(func_2(true)).d), vec4<i32>(-496i, var_3, ~(-2147483647i), ~u_input.a), Struct_4(vec3<u32>(78292u, ~u_input.b.x, _wgslsmith_div_u32(var_0.b.d.x, var_1.b)), var_1.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(808f, -676f, global4[_wgslsmith_index_u32(65971u, 12u)]), vec3<f32>(global4[_wgslsmith_index_u32(var_1.a.x, 12u)], global4[_wgslsmith_index_u32(0u, 12u)], var_0.a.x))), var_0.a)) - var_0.a), ~(vec3<u32>(arg_0.x, 0u, 4294967295u) ^ vec3<u32>(4294967295u, 0u, u_input.b.x)))).d;
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(-150f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(48833u, 12u)])), _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(0u, 12u)]))), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(arg_0.c.x, 12u)] * global4[_wgslsmith_index_u32(23644u, 12u)])), func_2(false).a.a), global2[_wgslsmith_index_u32(func_1(~u_input.b).c.x, 23u)], firstLeadingBit((func_1(vec2<u32>(u_input.b.x, 123537u)).c.x | min(arg_0.c.x, 51541u)) << (reverseBits(1u) % 32u)), Struct_2(func_4(Struct_5(Struct_3(vec3<f32>(global4[_wgslsmith_index_u32(53254u, 12u)], -473f, global4[_wgslsmith_index_u32(u_input.c.x, 12u)]), global2[_wgslsmith_index_u32(5718u, 23u)], arg_0.c.x, Struct_2(vec3<bool>(true, arg_0.a.x, arg_0.a.x), arg_0.b, vec2<u32>(u_input.b.x, u_input.b.x))), vec4<i32>(-17743i, -45982i, -52769i, arg_0.b), func_2(arg_0.a.x).c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(40018u, 12u)], global4[_wgslsmith_index_u32(5542u, 12u)], -2097f)), _wgslsmith_add_vec3_u32(u_input.c, u_input.c))).b.c, arg_0.b, ~vec2<u32>(min(u_input.b.x, arg_0.c.x), u_input.b.x)));
    global3 = array<vec4<u32>, 2>();
    var var_1 = Struct_5(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(-1302f, 1355f, 439f)) * _wgslsmith_f_op_vec3_f32(-var_0.a))), Struct_1(var_0.b.b, vec2<i32>(~arg_0.b, arg_0.b >> (u_input.b.x % 32u)), global0[_wgslsmith_index_u32(firstTrailingBit(0u >> (var_0.b.d.x % 32u)), 16u)], vec4<u32>(~0u, func_2(false).e.x, 59952u, u_input.b.x | u_input.c.x)), ~func_1(~vec2<u32>(var_0.d.c.x, var_0.c)).c.x, func_4(Struct_5(Struct_3(vec3<f32>(global4[_wgslsmith_index_u32(var_0.d.c.x, 12u)], 649f, 1000f), Struct_1(var_0.b.a, vec2<i32>(arg_0.b, var_0.d.b), global0[_wgslsmith_index_u32(arg_0.c.x, 16u)], var_0.b.d), arg_0.c.x, Struct_2(vec3<bool>(true, true, var_0.b.c.x), -33755i, vec2<u32>(4294967295u, u_input.c.x))), -vec4<i32>(-4241i, u_input.a, arg_0.b, -31350i), Struct_4(vec3<u32>(1u, 94481u, u_input.c.x), 0u), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a.x, -1091f, 965f), var_0.a)), ~u_input.c)).d), abs(vec4<i32>(func_2(any(vec2<bool>(var_0.b.c.x, arg_0.a.x))).a.d.b, _wgslsmith_mod_i32(reverseBits(arg_0.b), 1i), ~abs(arg_0.b), _wgslsmith_add_i32(_wgslsmith_div_i32(-5198i, var_0.b.a.x), ~(-1i)))), Struct_4(vec3<u32>(_wgslsmith_mult_u32(var_0.b.d.x, 0u), 16404u, 0u) & countOneBits(max(var_0.b.d.wzx, vec3<u32>(arg_0.c.x, arg_0.c.x, 0u))), select(arg_0.c.x, max(4294967295u >> (arg_0.c.x % 32u), arg_0.c.x), var_0.b.c.x)), var_0.a, vec3<u32>(var_0.c, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, 82517u, u_input.c.x, 1u), global3[_wgslsmith_index_u32(1u, 2u)] ^ global3[_wgslsmith_index_u32(var_0.d.c.x, 2u)])), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(34200u, arg_0.c.x), vec2<u32>(arg_0.c.x, arg_0.c.x)), arg_0.c.x, var_0.d.c.x)));
    global4 = array<f32, 12>();
    var var_2 = func_2(var_0.b.c.x);
    return func_2(var_0.d.a.x).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 16>();
    var var_0 = u_input.a;
    var var_1 = func_5(func_1(u_input.b));
    var_1 = Struct_3(vec3<f32>(global4[_wgslsmith_index_u32(var_1.b.d.x, 12u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -2121f), func_4(Struct_5(Struct_3(vec3<f32>(var_1.a.x, var_1.a.x, global4[_wgslsmith_index_u32(49977u, 12u)]), global2[_wgslsmith_index_u32(13795u, 23u)], var_1.c, var_1.d), vec4<i32>(var_1.b.b.x, -1i, 0i, -1i), Struct_4(var_1.b.d.zyz, 1u), var_1.a, vec3<u32>(u_input.b.x, var_1.b.d.x, var_1.b.d.x))).b.c.x)), _wgslsmith_f_op_f32(round(1055f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(659f)) - -556f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-972f * -296f) - func_2(var_1.b.c.x).a.a.x)))), Struct_1(var_1.b.b, _wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.a, var_1.b.b.x)) | select(vec2<i32>(var_1.b.a.x, 0i), vec2<i32>(u_input.a, 63304i), false), vec2<i32>(func_2(var_1.d.a.x).b.x, var_1.b.a.x)), !global0[_wgslsmith_index_u32(~1u, 16u)], ~global3[_wgslsmith_index_u32(~3497u, 2u)]), ~var_1.c, var_1.d);
    var var_2 = _wgslsmith_add_u32(4294967295u, ~min(1u, func_1(func_4(Struct_5(Struct_3(vec3<f32>(var_1.a.x, 937f, global4[_wgslsmith_index_u32(u_input.c.x, 12u)]), Struct_1(var_1.b.a, var_1.b.a, global0[_wgslsmith_index_u32(var_1.c, 16u)], vec4<u32>(var_1.d.c.x, 19355u, 0u, u_input.b.x)), 10399u, var_1.d), vec4<i32>(u_input.a, var_1.d.b, 28223i, 0i), Struct_4(var_1.b.d.xxw, 34758u), var_1.a, var_1.b.d.zzy)).d.c).c.x));
    var var_3 = _wgslsmith_add_i32(~(-58080i), -_wgslsmith_mod_i32(var_1.b.a.x, _wgslsmith_mod_i32(var_1.b.b.x, 1i)) & ~2147483647i);
    var var_4 = false;
    let var_5 = _wgslsmith_f_op_f32(min(func_5(func_4(func_2(true)).d).a.x, 1f));
    let var_6 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(440f, -1072f, 1000f, var_5))) + vec4<f32>(global4[_wgslsmith_index_u32(var_1.d.c.x, 12u)], -725f, 212f, global4[_wgslsmith_index_u32(var_1.b.d.x, 12u)])))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(func_5(Struct_2(vec3<bool>(var_1.d.a.x, var_1.d.a.x, var_1.b.c.x), 35606i, u_input.c.xx)).a.x, -1451f, func_4(Struct_5(Struct_3(var_1.a, Struct_1(vec2<i32>(0i, -39075i), vec2<i32>(var_1.d.b, u_input.a), global0[_wgslsmith_index_u32(1u, 16u)], vec4<u32>(var_1.c, u_input.c.x, u_input.b.x, 49953u)), u_input.c.x, Struct_2(vec3<bool>(var_1.d.a.x, var_1.b.c.x, true), -13354i, vec2<u32>(66133u, 1u))), vec4<i32>(var_1.d.b, -39768i, -1i, -55767i), Struct_4(vec3<u32>(var_1.c, 28211u, 1961u), var_1.d.c.x), vec3<f32>(var_5, 1079f, 167f), vec3<u32>(24824u, u_input.c.x, 4294967295u))).a.x, _wgslsmith_f_op_f32(-var_5)), vec4<f32>(func_5(Struct_2(vec3<bool>(false, var_1.d.a.x, true), var_1.d.b, var_1.d.c)).a.x, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.b.x, 12u)]), _wgslsmith_f_op_f32(f32(-1f) * -1126f), _wgslsmith_div_f32(-298f, -398f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-893f)), _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(u_input.b.x, 12u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5 - var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -935f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.c);
}

