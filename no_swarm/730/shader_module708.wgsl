struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_5, 28> = array<Struct_5, 28>(Struct_5(vec4<u32>(101043u, 0u, 0u, 23550u), Struct_1(vec3<u32>(52072u, 1u, 4294967295u), 1u, -942f, vec2<u32>(4294967295u, 4294967295u), vec3<bool>(true, true, false)), -26522i, 1i), Struct_5(vec4<u32>(4294967295u, 65054u, 57965u, 20639u), Struct_1(vec3<u32>(1u, 68593u, 26533u), 15457u, 1070f, vec2<u32>(15691u, 65518u), vec3<bool>(false, true, false)), -1i, -19924i), Struct_5(vec4<u32>(0u, 34474u, 1u, 26938u), Struct_1(vec3<u32>(24374u, 0u, 79353u), 37697u, -1185f, vec2<u32>(0u, 43742u), vec3<bool>(true, false, true)), -5806i, -38284i), Struct_5(vec4<u32>(4294967295u, 4294967295u, 1u, 6313u), Struct_1(vec3<u32>(16762u, 0u, 12859u), 1u, -1243f, vec2<u32>(0u, 0u), vec3<bool>(true, true, true)), 0i, i32(-2147483648)), Struct_5(vec4<u32>(3918u, 4294967295u, 55661u, 1u), Struct_1(vec3<u32>(856u, 4294967295u, 7095u), 0u, 2380f, vec2<u32>(13829u, 1u), vec3<bool>(true, true, true)), 75644i, -77325i), Struct_5(vec4<u32>(64355u, 1u, 17290u, 4294967295u), Struct_1(vec3<u32>(56146u, 4294967295u, 7322u), 3910u, -1000f, vec2<u32>(109416u, 12987u), vec3<bool>(false, false, true)), 0i, -1i), Struct_5(vec4<u32>(22950u, 1u, 19279u, 4294967295u), Struct_1(vec3<u32>(1u, 104174u, 1u), 0u, 975f, vec2<u32>(8023u, 1u), vec3<bool>(false, false, true)), 26180i, 32375i), Struct_5(vec4<u32>(4294967295u, 18432u, 54079u, 73067u), Struct_1(vec3<u32>(1u, 7570u, 4294967295u), 74724u, -962f, vec2<u32>(25568u, 4294967295u), vec3<bool>(false, false, false)), 1i, -12605i), Struct_5(vec4<u32>(3938u, 27203u, 16979u, 4294967295u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 20948u), 1u, 982f, vec2<u32>(1u, 112483u), vec3<bool>(false, true, true)), 13615i, 4564i), Struct_5(vec4<u32>(1u, 0u, 1u, 1u), Struct_1(vec3<u32>(4294967295u, 1u, 9684u), 1u, -1363f, vec2<u32>(1u, 972u), vec3<bool>(false, false, true)), 0i, 0i), Struct_5(vec4<u32>(125038u, 1u, 12936u, 4294967295u), Struct_1(vec3<u32>(15685u, 8145u, 1u), 60974u, 239f, vec2<u32>(7858u, 3353u), vec3<bool>(true, false, false)), 2147483647i, -6223i), Struct_5(vec4<u32>(4294967295u, 9345u, 81131u, 57470u), Struct_1(vec3<u32>(22015u, 36212u, 1u), 49664u, 478f, vec2<u32>(1u, 0u), vec3<bool>(false, false, false)), 19505i, 0i), Struct_5(vec4<u32>(0u, 7546u, 4294967295u, 1u), Struct_1(vec3<u32>(1u, 4294967295u, 0u), 4294967295u, 550f, vec2<u32>(63857u, 0u), vec3<bool>(false, false, true)), -45419i, 0i), Struct_5(vec4<u32>(1u, 4294967295u, 0u, 1u), Struct_1(vec3<u32>(0u, 1u, 1u), 4294967295u, 1000f, vec2<u32>(4294967295u, 108u), vec3<bool>(true, true, true)), i32(-2147483648), 1i), Struct_5(vec4<u32>(34170u, 27161u, 22653u, 37911u), Struct_1(vec3<u32>(25107u, 0u, 4294967295u), 19611u, -816f, vec2<u32>(0u, 4294967295u), vec3<bool>(true, true, true)), 0i, 10513i), Struct_5(vec4<u32>(1u, 1u, 4294967295u, 0u), Struct_1(vec3<u32>(26193u, 73807u, 17509u), 75008u, 926f, vec2<u32>(0u, 1u), vec3<bool>(true, true, false)), 69761i, i32(-2147483648)), Struct_5(vec4<u32>(27439u, 21936u, 53573u, 0u), Struct_1(vec3<u32>(0u, 1u, 83824u), 1u, 238f, vec2<u32>(59448u, 29539u), vec3<bool>(false, true, true)), 1i, -66873i), Struct_5(vec4<u32>(36279u, 24907u, 0u, 28923u), Struct_1(vec3<u32>(4294967295u, 0u, 12948u), 4294967295u, 146f, vec2<u32>(0u, 1u), vec3<bool>(true, false, false)), 47331i, 40654i), Struct_5(vec4<u32>(1742u, 22226u, 1u, 4294967295u), Struct_1(vec3<u32>(1u, 29041u, 0u), 57513u, -1000f, vec2<u32>(4294967295u, 1u), vec3<bool>(false, false, false)), -18279i, 4554i), Struct_5(vec4<u32>(47302u, 44541u, 22459u, 310u), Struct_1(vec3<u32>(1u, 1u, 2986u), 8303u, -1068f, vec2<u32>(4294967295u, 1u), vec3<bool>(false, false, true)), 1i, 0i), Struct_5(vec4<u32>(1u, 42445u, 0u, 23028u), Struct_1(vec3<u32>(0u, 0u, 11010u), 1u, -253f, vec2<u32>(5629u, 0u), vec3<bool>(false, true, true)), 26293i, -1i), Struct_5(vec4<u32>(16562u, 7153u, 40723u, 4294967295u), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), 1u, -2130f, vec2<u32>(8687u, 0u), vec3<bool>(true, false, false)), -15550i, 1i), Struct_5(vec4<u32>(35489u, 76786u, 1u, 5245u), Struct_1(vec3<u32>(95236u, 4294967295u, 0u), 45729u, 152f, vec2<u32>(1u, 1u), vec3<bool>(false, true, false)), -26728i, -18638i), Struct_5(vec4<u32>(1u, 55107u, 4294967295u, 123035u), Struct_1(vec3<u32>(85758u, 4294967295u, 1u), 55476u, -1428f, vec2<u32>(4294967295u, 57658u), vec3<bool>(true, true, true)), 1i, 2147483647i), Struct_5(vec4<u32>(19425u, 11530u, 46330u, 78241u), Struct_1(vec3<u32>(17536u, 53352u, 35144u), 0u, -1486f, vec2<u32>(0u, 1u), vec3<bool>(true, false, false)), 44212i, 0i), Struct_5(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), Struct_1(vec3<u32>(1u, 0u, 0u), 0u, -834f, vec2<u32>(1007u, 4294967295u), vec3<bool>(false, false, false)), 98406i, 0i), Struct_5(vec4<u32>(1u, 28544u, 4294967295u, 4294967295u), Struct_1(vec3<u32>(30090u, 20031u, 112216u), 1u, 1306f, vec2<u32>(4294967295u, 0u), vec3<bool>(true, false, true)), 0i, 0i), Struct_5(vec4<u32>(4294967295u, 10429u, 29279u, 55657u), Struct_1(vec3<u32>(1u, 56591u, 48529u), 21224u, 245f, vec2<u32>(0u, 90959u), vec3<bool>(true, true, true)), 1i, 11535i));

var<private> global2: vec3<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_5, arg_3: Struct_4) -> f32 {
    var var_0 = -firstLeadingBit(vec2<i32>(~(u_input.a.x >> (3317u % 32u)), _wgslsmith_add_i32(firstLeadingBit(0i), -62044i)));
    var var_1 = false;
    var var_2 = Struct_2(Struct_1(firstTrailingBit(firstTrailingBit(abs(arg_3.c.d.a))), 4294967295u, arg_3.c.a, arg_3.c.d.d, !vec3<bool>(all(arg_1.b.e), false, arg_3.c.e.e.e.x)), ~(~(arg_1.b.b | _wgslsmith_clamp_u32(arg_3.c.e.e.a.x, 1u, 4294967295u))), select(vec3<bool>(true, any(!vec4<bool>(true, false, global2.x, arg_0.e.e.x)), all(!vec4<bool>(false, true, false, arg_0.e.e.x))), !(!arg_2.b.e), !(u_input.a.x <= var_0.x) || any(vec2<bool>(true, true))), ~(~arg_3.b.x), Struct_1(firstTrailingBit(arg_3.c.e.e.a), arg_3.b.x, 1176f, vec2<u32>(4294967295u, 0u), select(select(select(arg_2.b.e, vec3<bool>(arg_1.b.e.x, true, true), true), vec3<bool>(arg_0.e.e.x, false, false), 1065f > arg_1.b.c), vec3<bool>(arg_3.c.d.e.x, true, true), ~arg_2.d > -1i)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2061f, arg_2.b.c, 1759f) * vec3<f32>(149f, global0.x, global0.x)) * vec3<f32>(1626f, var_2.e.c, -216f)))));
    global2 = arg_0.a.e;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-995f, arg_0.a.c)) - _wgslsmith_f_op_f32(-var_2.e.c))))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec3<u32>(51337u, ~arg_0, arg_0) & ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 70583u, arg_1), vec3<u32>(arg_0, arg_0, arg_1), vec3<u32>(arg_0, 32615u, 4294967295u)), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec3<u32>(arg_0, arg_1, arg_0), 30435u, global0.x, vec2<u32>(1u, 4294967295u), vec3<bool>(true, false, global2.x)), 38850u, vec3<bool>(global2.x, global2.x, global2.x), 4294967295u, Struct_1(vec3<u32>(1u, 25334u, arg_1), 0u, -1187f, vec2<u32>(0u, 5239u), vec3<bool>(false, false, true))), global1[_wgslsmith_index_u32(55553u & arg_0, 28u)], Struct_5(vec4<u32>(arg_0, arg_0, arg_1, 4294967295u), Struct_1(vec3<u32>(arg_1, arg_0, 4294967295u), 4294967295u, arg_2.x, vec2<u32>(4294967295u, 56873u), vec3<bool>(true, true, false)), 0i, -1i), Struct_4(vec2<f32>(global0.x, arg_2.x), vec3<u32>(arg_1, arg_1, arg_0), Struct_3(global0.x, true, u_input.a.zx, Struct_1(vec3<u32>(arg_0, 0u, arg_0), 35917u, 2370f, vec2<u32>(75815u, 0u), vec3<bool>(global2.x, false, global2.x)), Struct_2(Struct_1(vec3<u32>(4294967295u, arg_1, 60773u), 24305u, arg_2.x, vec2<u32>(arg_0, 42912u), vec3<bool>(global2.x, false, true)), 43973u, vec3<bool>(global2.x, global2.x, global2.x), arg_1, Struct_1(vec3<u32>(arg_1, 39914u, 1u), 44860u, 529f, vec2<u32>(0u, arg_1), vec3<bool>(true, false, true))))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1939f, 574f, false)), _wgslsmith_f_op_f32(-arg_2.x))), ~vec2<u32>(~48147u, arg_0), select(!vec3<bool>(global2.x, false, true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, global2.x), vec3<bool>(false, global2.x, global2.x)), select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, false, global2.x)), vec3<bool>(global2.x, true, global2.x)))), ~31415u, vec3<bool>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-31696i, -1i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -25377i)), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, 3030i, -35880i))) == -select(u_input.a.x, u_input.a.x, global2.x), global2.x, true), abs(~0u), Struct_1(vec3<u32>(1u, _wgslsmith_clamp_u32(arg_1, 32341u, arg_0) & (arg_0 >> (57047u % 32u)), firstLeadingBit(countOneBits(arg_1))), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -598f)), abs(vec2<u32>(arg_0, arg_0) & vec2<u32>(23u, arg_1)) ^ ~vec2<u32>(60460u, 4294967295u), select(select(select(vec3<bool>(true, true, global2.x), vec3<bool>(global2.x, false, global2.x), false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(false, false, false), global2.x), !vec3<bool>(global2.x, true, global2.x), global2.x | true), vec3<bool>(true, global2.x, 65634u >= arg_0))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_2.zz * _wgslsmith_f_op_vec2_f32(arg_2.xz - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c, -1000f)))))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.c), 418f), var_0.a.e.zx));
    var_0 = Struct_2(var_0.e, arg_1, select(select(!(!var_0.c), var_0.e.e, var_0.e.e), vec3<bool>(false, var_0.a.e.x, !var_0.e.e.x || global2.x), select(vec3<bool>(global2.x, any(vec3<bool>(false, var_0.a.e.x, global2.x)), true), var_0.a.e, !(!vec3<bool>(var_0.e.e.x, global2.x, false)))), _wgslsmith_dot_vec3_u32(var_0.a.a, vec3<u32>(~_wgslsmith_sub_u32(arg_0, arg_0), ~firstTrailingBit(arg_0), countOneBits(4577u))), var_0.a);
    var var_2 = Struct_2(var_0.e, _wgslsmith_dot_vec3_u32(~vec3<u32>(firstLeadingBit(var_0.d), ~arg_0, 4294967295u), vec3<u32>(arg_1, _wgslsmith_dot_vec3_u32(var_0.a.a, ~vec3<u32>(24871u, arg_1, arg_0)), abs(_wgslsmith_mod_u32(arg_0, arg_1)))), !select(!vec3<bool>(false, global2.x, var_0.c.x), !select(vec3<bool>(global2.x, global2.x, false), var_0.a.e, true), global2.x), var_0.e.a.x, var_0.e);
    var var_3 = Struct_2(Struct_1(~max(var_0.e.a, vec3<u32>(45304u, var_0.e.d.x, var_2.e.b)), 60130u, _wgslsmith_f_op_f32(abs(-950f)), var_0.e.a.xx, select(vec3<bool>(true, true, !var_2.e.e.x), !select(vec3<bool>(false, var_2.c.x, false), var_0.c, false), select(select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(true, var_0.c.x, true), var_0.c), !vec3<bool>(var_0.c.x, false, var_2.a.e.x), var_0.a.e))), firstTrailingBit(arg_0), select(select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, global2.x, true), vec3<bool>(var_0.c.x, true, global2.x), var_0.a.e.x), true), vec3<bool>(true, var_0.a.e.x, !var_2.c.x), (u_input.a.x <= u_input.a.x) || any(var_2.e.e)), vec3<bool>(true, true, global2.x), vec3<bool>(var_0.a.e.x, true, (var_2.c.x == var_2.a.e.x) & var_0.a.e.x)), 0u | var_2.b, Struct_1(vec3<u32>(1u, arg_1, arg_0), ~arg_0, var_2.e.c, _wgslsmith_mod_vec2_u32(var_0.a.d, ~vec2<u32>(1u, var_2.b)), var_0.c));
    return var_0.e;
}

fn func_1(arg_0: i32, arg_1: Struct_5) -> f32 {
    let var_0 = Struct_5(vec4<u32>(arg_1.b.a.x, abs(select(0u, 1u, global2.x) >> (max(arg_1.a.x, arg_1.b.d.x) % 32u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(15425u, 4294967295u, arg_1.a.x, 0u)), _wgslsmith_sub_vec4_u32(~arg_1.a, arg_1.a)), countOneBits(_wgslsmith_dot_vec4_u32(arg_1.a, vec4<u32>(arg_1.a.x, arg_1.b.b, 0u, arg_1.b.d.x)))), func_2(arg_1.b.b, 59351u, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), vec3<f32>(1480f, global0.x, arg_1.b.c)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(2409f, arg_1.b.c, arg_1.b.c) - vec3<f32>(-808f, global0.x, -196f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-382f, global0.x, -284f)))))), ~(-9594i), arg_1.c ^ u_input.a.x);
    let var_1 = Struct_2(var_0.b, ~68609u, vec3<bool>(!(!any(vec3<bool>(false, false, true))), var_0.b.e.x, var_0.b.e.x), var_0.b.a.x, Struct_1(vec3<u32>(var_0.a.x << (firstLeadingBit(var_0.b.a.x) % 32u), ~1u, countOneBits(~var_0.a.x)), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-507f - 444f)), vec2<u32>(_wgslsmith_mult_u32(arg_1.a.x, 21524u), arg_1.b.a.x), !var_0.b.e));
    let var_2 = ~reverseBits(~vec4<i32>(var_0.d, arg_0, u_input.a.x, -53447i)) << (abs(_wgslsmith_add_vec4_u32(~arg_1.a, vec4<u32>(arg_1.b.d.x, _wgslsmith_dot_vec3_u32(arg_1.a.xzx, vec3<u32>(1u, var_0.a.x, var_0.b.a.x)), 6490u, arg_1.b.b))) % vec4<u32>(32u));
    global1 = array<Struct_5, 28>();
    var var_3 = Struct_4(global0.xz, min(_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.a.x, 0u, 1u), ~(~vec3<u32>(var_0.a.x, 102245u, arg_1.b.b))), abs(_wgslsmith_add_vec3_u32(var_0.a.xyy, arg_1.a.wyz))), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.b.c)) * global0.x), arg_1.b.c), !all(var_0.b.e.zx), var_2.zz >> (~func_2(var_0.b.d.x, 18734u, vec3<f32>(290f, -483f, -2126f)).a.yy % vec2<u32>(32u)), func_2(select(arg_1.a.x, ~1u, global2.x), arg_1.a.x << ((var_1.a.b ^ 45523u) % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -589f, var_1.a.c))) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b.c, 126f, arg_1.b.c), vec3<f32>(156f, var_1.a.c, 1000f)))), Struct_2(arg_1.b, select(var_1.b, ~var_1.a.b, false), select(arg_1.b.e, vec3<bool>(true, var_0.b.e.x, true), var_0.b.e), 1u, func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 66167u, var_0.b.a.x), var_0.b.a), var_1.e.b, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-766f, -2275f, -806f)))))));
    return _wgslsmith_f_op_f32(sign(223f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(firstLeadingBit(~vec3<u32>(1u, 1u, 1u)), vec3<u32>(1604u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(13060u, 1u), vec2<u32>(1u, 83814u)), firstLeadingBit(1849u)), 86453u), vec3<bool>(global2.x, false, false)), _wgslsmith_clamp_u32(~1u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(39236u, 14675u, 4294967295u), vec3<u32>(12091u, 0u, 3501u), vec3<bool>(false, global2.x, false)) ^ reverseBits(vec3<u32>(11109u, 4294967295u, 5737u)), ~vec3<u32>(35274u, 2950u, 0u)), 43624u), _wgslsmith_f_op_f32(func_1(-_wgslsmith_mod_i32(-7065i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 25038i, -5118i, 20682i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 3501i))), global1[_wgslsmith_index_u32(reverseBits(~(~108987u)), 28u)])), firstLeadingBit(func_2(7848u, _wgslsmith_add_u32(~68928u, firstLeadingBit(0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1612f, -715f, global0.x), vec3<f32>(global0.x, 203f, global0.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -1132f, -422f), vec3<f32>(global0.x, 109f, 226f)))).a.zy), vec3<bool>(!(!global2.x), func_2(firstLeadingBit(~11477u), ~50031u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, -829f, global0.x), vec3<f32>(global0.x, global0.x, 387f), true)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(151f, -230f, global0.x), vec3<f32>(global0.x, global0.x, global0.x), global2.x)))).e.x, !global2.x));
    let var_1 = Struct_5(abs(~vec4<u32>(var_0.d.x, var_0.a.x, 28248u, var_0.a.x)) & (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.d.x, 11222u, 20160u), ~vec4<u32>(0u, 0u, var_0.d.x, 4294967295u)) >> (vec4<u32>(var_0.a.x ^ 56405u, ~820u, ~42072u, _wgslsmith_sub_u32(var_0.a.x, var_0.b)) % vec4<u32>(32u))), func_2(reverseBits(var_0.b), firstTrailingBit(~(~0u)), vec3<f32>(-1004f, var_0.c, var_0.c)), 0i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(227f, var_1.b.c, -871f, -1079f)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.c, var_0.c, 1407f))))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 297f, 262f, var_1.b.c))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-734f, var_1.b.c, global0.x, -194f), vec4<f32>(var_1.b.c, 134f, -1673f, 497f))))), select(select(vec4<bool>(true, false, global2.x, var_0.e.x), vec4<bool>(true, true, var_0.e.x, var_1.b.e.x), var_1.b.e.x), select(vec4<bool>(global2.x, false, var_0.e.x, global2.x), vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(true, false, var_1.b.e.x, var_0.e.x)), 1852f > var_0.c))))));
    var_0 = func_2(firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(var_1.a, vec4<u32>(0u, var_0.b, var_0.a.x, var_0.a.x)), vec4<u32>(71399u, var_1.a.x, var_1.a.x, 25289u) | var_1.a), var_1.a << (abs(var_1.a) % vec4<u32>(32u)))), _wgslsmith_div_u32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_vec3_f32(select(var_2.wxy, var_2.zwy, true)));
    let var_3 = _wgslsmith_mod_vec2_u32(abs(firstTrailingBit(_wgslsmith_div_vec2_u32(var_1.b.a.yz, vec2<u32>(var_0.b, var_0.d.x)))) << (var_1.b.d % vec2<u32>(32u)), vec2<u32>(~abs(4294967295u << (var_0.d.x % 32u)), ~countOneBits(abs(4294967295u))));
    let var_4 = _wgslsmith_f_op_f32(global0.x * var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(var_2.x, var_0.c), 1000f, _wgslsmith_f_op_f32(var_1.b.c + var_2.x), _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_4, -1849f, var_4, 1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_0.c, var_4, -291f) * vec4<f32>(var_2.x, global0.x, 503f, -1165f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b.c, -1676f, var_1.b.c, var_2.x)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -205f), var_0.c, _wgslsmith_f_op_f32(-var_1.b.c), global0.x)))), -286f, var_3.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -328f, 1024f, var_2.x) * vec4<f32>(var_1.b.c, var_2.x, -329f, -1145f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, var_0.c, 1403f, global0.x), vec4<f32>(-395f, var_4, var_1.b.c, -1280f), false)))) - vec4<f32>(786f, var_2.x, -2358f, _wgslsmith_f_op_f32(func_1(u_input.a.x, Struct_5(vec4<u32>(3277u, var_3.x, 4294967295u, 0u), var_1.b, var_1.c, var_1.c))))), ~vec3<u32>(1u, ~1u, _wgslsmith_mod_u32(var_3.x, 1u)));
}

