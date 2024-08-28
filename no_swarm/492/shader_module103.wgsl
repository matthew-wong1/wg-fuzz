struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_1(i32(-2147483648), vec2<i32>(-8908i, 0i), vec4<i32>(-1i, 16502i, -1i, i32(-2147483648)), 0u, true), Struct_1(2508i, vec2<i32>(0i, 2147483647i), vec4<i32>(44219i, 8886i, 2147483647i, i32(-2147483648)), 1u, false), 1u), Struct_3(Struct_1(0i, vec2<i32>(i32(-2147483648), -61528i), vec4<i32>(-73820i, 8320i, 0i, 1i), 0u, false), Struct_1(41477i, vec2<i32>(11277i, -1i), vec4<i32>(1768i, 0i, -45429i, -5835i), 4294967295u, true), 27385u), Struct_3(Struct_1(-1i, vec2<i32>(6876i, 1i), vec4<i32>(31037i, -47974i, -1i, 1i), 28107u, true), Struct_1(-27387i, vec2<i32>(-25130i, -24824i), vec4<i32>(1i, 2147483647i, 27908i, 8228i), 0u, false), 1u), Struct_3(Struct_1(70939i, vec2<i32>(2147483647i, 16330i), vec4<i32>(-25269i, 0i, i32(-2147483648), i32(-2147483648)), 1u, false), Struct_1(-8838i, vec2<i32>(1i, 634i), vec4<i32>(-1i, 7760i, 20493i, 0i), 71911u, false), 56223u), Struct_3(Struct_1(1i, vec2<i32>(2147483647i, 0i), vec4<i32>(31382i, 0i, 21764i, 21082i), 1u, true), Struct_1(1i, vec2<i32>(-87119i, 0i), vec4<i32>(i32(-2147483648), -1i, 1i, -26948i), 1u, true), 8929u), Struct_3(Struct_1(2147483647i, vec2<i32>(2147483647i, 2147483647i), vec4<i32>(i32(-2147483648), 1i, -9877i, 1i), 4294967295u, true), Struct_1(-1i, vec2<i32>(i32(-2147483648), 1i), vec4<i32>(-55500i, 1i, -7792i, 2147483647i), 22046u, true), 1u), Struct_3(Struct_1(-9609i, vec2<i32>(-46998i, i32(-2147483648)), vec4<i32>(1i, 0i, i32(-2147483648), 1i), 5642u, true), Struct_1(2147483647i, vec2<i32>(i32(-2147483648), 2147483647i), vec4<i32>(-24765i, 1905i, -7716i, -38841i), 4294967295u, false), 73094u), Struct_3(Struct_1(50640i, vec2<i32>(20106i, 34070i), vec4<i32>(48376i, -1i, i32(-2147483648), i32(-2147483648)), 1u, false), Struct_1(-32185i, vec2<i32>(1i, 0i), vec4<i32>(i32(-2147483648), -33059i, 22612i, 2147483647i), 1u, false), 34163u), Struct_3(Struct_1(-1i, vec2<i32>(i32(-2147483648), -26413i), vec4<i32>(-27853i, 0i, i32(-2147483648), 27263i), 1u, false), Struct_1(-7979i, vec2<i32>(4393i, -1i), vec4<i32>(21945i, 42620i, 2147483647i, 14349i), 8212u, true), 18795u), Struct_3(Struct_1(50666i, vec2<i32>(-779i, i32(-2147483648)), vec4<i32>(-6718i, 25121i, -15217i, 67690i), 70979u, false), Struct_1(2147483647i, vec2<i32>(1i, 0i), vec4<i32>(-31695i, 29681i, 0i, 1i), 0u, true), 4294967295u), Struct_3(Struct_1(-41266i, vec2<i32>(-32574i, -1i), vec4<i32>(1i, 25758i, 6903i, 8840i), 0u, false), Struct_1(-9680i, vec2<i32>(-52522i, -8975i), vec4<i32>(2147483647i, -1i, -71542i, i32(-2147483648)), 16159u, false), 1u), Struct_3(Struct_1(0i, vec2<i32>(i32(-2147483648), 2188i), vec4<i32>(12630i, -30700i, -15237i, 1i), 4294967295u, true), Struct_1(43333i, vec2<i32>(1165i, 27686i), vec4<i32>(-20728i, 1i, i32(-2147483648), 9601i), 2869u, true), 4294967295u), Struct_3(Struct_1(0i, vec2<i32>(3203i, i32(-2147483648)), vec4<i32>(-32381i, -12025i, 0i, 25072i), 0u, true), Struct_1(39297i, vec2<i32>(1i, 1i), vec4<i32>(1i, -8481i, 6073i, 975i), 12500u, true), 93692u), Struct_3(Struct_1(2147483647i, vec2<i32>(-28611i, -3743i), vec4<i32>(-3767i, -1i, 0i, 43777i), 0u, false), Struct_1(-1i, vec2<i32>(-39192i, -12040i), vec4<i32>(2147483647i, -5105i, 0i, 2147483647i), 4294967295u, true), 86845u), Struct_3(Struct_1(i32(-2147483648), vec2<i32>(-66862i, 0i), vec4<i32>(15848i, 37242i, 1i, 959i), 12072u, true), Struct_1(2147483647i, vec2<i32>(30676i, i32(-2147483648)), vec4<i32>(-6048i, 1i, -11967i, -1i), 35788u, false), 4294967295u), Struct_3(Struct_1(2147483647i, vec2<i32>(-1i, 0i), vec4<i32>(-1i, 2147483647i, -16723i, -5970i), 4294967295u, true), Struct_1(1i, vec2<i32>(25653i, 45329i), vec4<i32>(2147483647i, 2147483647i, -1i, 1i), 4294967295u, false), 34775u), Struct_3(Struct_1(-6637i, vec2<i32>(53852i, 34528i), vec4<i32>(1818i, 2147483647i, 28851i, -26685i), 1u, false), Struct_1(1i, vec2<i32>(-59957i, 13071i), vec4<i32>(0i, 1i, 2147483647i, 13464i), 55242u, false), 55007u), Struct_3(Struct_1(2147483647i, vec2<i32>(11258i, -24661i), vec4<i32>(1i, 62480i, i32(-2147483648), 0i), 1u, false), Struct_1(-245i, vec2<i32>(12160i, 0i), vec4<i32>(24883i, 16549i, -2455i, 0i), 465u, true), 53389u), Struct_3(Struct_1(-5739i, vec2<i32>(i32(-2147483648), 2147483647i), vec4<i32>(23803i, -56673i, 2481i, -1i), 1u, false), Struct_1(0i, vec2<i32>(i32(-2147483648), 182i), vec4<i32>(50659i, 2147483647i, 28568i, i32(-2147483648)), 29020u, false), 39350u), Struct_3(Struct_1(14587i, vec2<i32>(i32(-2147483648), 28045i), vec4<i32>(2147483647i, -42388i, 22696i, i32(-2147483648)), 1u, false), Struct_1(46398i, vec2<i32>(901i, -1i), vec4<i32>(2147483647i, 2147483647i, 20459i, 1i), 36521u, true), 53259u), Struct_3(Struct_1(0i, vec2<i32>(40073i, 34936i), vec4<i32>(-21217i, 27145i, 1i, 17597i), 28831u, false), Struct_1(49145i, vec2<i32>(41210i, -6073i), vec4<i32>(-113985i, i32(-2147483648), 0i, 0i), 0u, false), 4294967295u), Struct_3(Struct_1(7071i, vec2<i32>(-43064i, 43273i), vec4<i32>(1i, -67802i, 2147483647i, 0i), 4294967295u, true), Struct_1(1i, vec2<i32>(27899i, 2234i), vec4<i32>(-72427i, 1i, 60688i, -4657i), 4294967295u, true), 4294967295u), Struct_3(Struct_1(61277i, vec2<i32>(31103i, 0i), vec4<i32>(-1i, 1i, 39836i, 20475i), 4294967295u, true), Struct_1(i32(-2147483648), vec2<i32>(-15421i, -1i), vec4<i32>(i32(-2147483648), 2147483647i, -28790i, 2147483647i), 2371u, true), 45407u), Struct_3(Struct_1(2147483647i, vec2<i32>(3940i, -48691i), vec4<i32>(i32(-2147483648), -1i, -34063i, -5550i), 0u, true), Struct_1(92728i, vec2<i32>(-1615i, 0i), vec4<i32>(-34492i, -19587i, 42318i, 0i), 13659u, false), 12848u), Struct_3(Struct_1(-16943i, vec2<i32>(-32107i, 22602i), vec4<i32>(3523i, 37829i, -28722i, -14491i), 54127u, true), Struct_1(i32(-2147483648), vec2<i32>(1i, i32(-2147483648)), vec4<i32>(0i, -1i, i32(-2147483648), 1i), 8974u, false), 18104u), Struct_3(Struct_1(1i, vec2<i32>(-1i, 1i), vec4<i32>(17905i, -1i, -1i, 1i), 2080u, true), Struct_1(2147483647i, vec2<i32>(1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -30274i, -24075i, i32(-2147483648)), 4294967295u, true), 20401u), Struct_3(Struct_1(12618i, vec2<i32>(1i, 22240i), vec4<i32>(i32(-2147483648), 2147483647i, 17722i, -1i), 4294967295u, true), Struct_1(0i, vec2<i32>(i32(-2147483648), -11053i), vec4<i32>(-39204i, 1i, 2147483647i, -26404i), 4294967295u, false), 11221u), Struct_3(Struct_1(0i, vec2<i32>(-98832i, 0i), vec4<i32>(-23384i, 2147483647i, 0i, -19935i), 51205u, true), Struct_1(0i, vec2<i32>(19516i, 0i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, i32(-2147483648)), 31020u, true), 0u), Struct_3(Struct_1(37174i, vec2<i32>(27983i, -1i), vec4<i32>(46795i, 1i, -1i, 4040i), 34182u, false), Struct_1(-1i, vec2<i32>(-1i, -33841i), vec4<i32>(-1i, 0i, 1i, -11805i), 31122u, false), 112040u), Struct_3(Struct_1(-49311i, vec2<i32>(-48760i, i32(-2147483648)), vec4<i32>(-9528i, 1i, -17365i, -31258i), 0u, true), Struct_1(i32(-2147483648), vec2<i32>(-5283i, 5702i), vec4<i32>(-1i, 0i, 13589i, 1i), 37813u, false), 1u), Struct_3(Struct_1(1i, vec2<i32>(i32(-2147483648), 0i), vec4<i32>(-29504i, 8193i, 1i, -1693i), 46435u, true), Struct_1(-11369i, vec2<i32>(2147483647i, 40449i), vec4<i32>(i32(-2147483648), i32(-2147483648), -25507i, -1i), 0u, false), 7452u), Struct_3(Struct_1(-1i, vec2<i32>(-9413i, -33127i), vec4<i32>(-1i, 2147483647i, -43297i, 48598i), 4294967295u, true), Struct_1(i32(-2147483648), vec2<i32>(i32(-2147483648), 0i), vec4<i32>(2147483647i, -48156i, 37845i, 9960i), 4294967295u, true), 100709u));

var<private> global1: f32 = -1324f;

var<private> global2: array<vec4<f32>, 19>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec3<i32>(2147483647i, ~(~u_input.c.x), ~reverseBits(1i));
    let var_1 = abs(~abs(-_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, var_0.x, var_0.x, 28104i), vec4<i32>(-2147483647i, -1i, 2147483647i, -2147483647i))));
    var var_2 = !select(select(vec3<bool>(all(vec4<bool>(false, true, false, false)), all(vec3<bool>(true, false, true)), true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false))), vec3<bool>(true, false, select(false, true, any(vec4<bool>(true, false, false, false)))), false);
    let var_3 = global0[_wgslsmith_index_u32(~1u ^ _wgslsmith_sub_u32(_wgslsmith_mult_u32(abs(0u), u_input.b), ~94704u), 32u)];
    var_0 = var_1.zyy;
    var var_4 = vec3<bool>(var_2.x, false, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2450f, 1500f, -175f)))))))), _wgslsmith_div_i32(u_input.c.x, i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a.x), vec2<i32>(-1i, var_3.a.c.x))), _wgslsmith_add_vec2_u32(min(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.b, var_3.c)), vec2<u32>(4294967295u, var_3.c)) ^ reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.b, u_input.b))), ~abs(~vec2<u32>(52375u, 1u))));
}

