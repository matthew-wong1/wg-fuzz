struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(8623i, 1i, -1i), vec3<i32>(8119i, -40561i, 1i), vec3<i32>(0i, -1i, 1i), vec3<i32>(-35553i, -1i, 1i), vec3<i32>(-38385i, -20058i, 2147483647i), vec3<i32>(0i, 8263i, -1037i), vec3<i32>(-1i, -24217i, 26124i), vec3<i32>(2147483647i, -21813i, 24153i), vec3<i32>(i32(-2147483648), -52897i, -32018i), vec3<i32>(-20317i, 1i, 2147483647i), vec3<i32>(1i, -43464i, 382i), vec3<i32>(2147483647i, 1i, 34018i), vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec3<i32>(2147483647i, -16378i, -48146i), vec3<i32>(10356i, 41214i, -27454i), vec3<i32>(-15108i, 13665i, 1i), vec3<i32>(-28206i, -34868i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), 1i), vec3<i32>(-1i, -19101i, 0i), vec3<i32>(1i, -1i, 1i), vec3<i32>(i32(-2147483648), 0i, 2521i), vec3<i32>(-1i, 1i, 18249i), vec3<i32>(-14673i, 0i, 36943i), vec3<i32>(0i, -55474i, 15101i), vec3<i32>(i32(-2147483648), -102654i, 25220i), vec3<i32>(34244i, -39740i, -70599i), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(1i, -5169i, 0i), vec3<i32>(4714i, 5252i, -1i), vec3<i32>(-9632i, 51828i, -1i), vec3<i32>(-1i, i32(-2147483648), -5961i), vec3<i32>(-8944i, -1i, 2147483647i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = Struct_5(Struct_3(Struct_2(global1[_wgslsmith_index_u32(u_input.b, 32u)] & vec3<i32>(-13710i, -2925i, 32841i), true, _wgslsmith_mult_i32(-37702i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -63366i), vec2<i32>(10630i, -46750i))), Struct_1(1i, vec2<f32>(-865f, -1132f)), Struct_1(1i, _wgslsmith_f_op_vec2_f32(vec2<f32>(168f, 197f) * vec2<f32>(-260f, 1540f)))), _wgslsmith_mult_i32(~(-1i), min(1i, -1i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1218f - -274f)), -1491f)), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a, 4294967295u, u_input.a) & vec4<u32>(u_input.a, 0u, 20783u, 4294967295u), select(vec4<u32>(33511u, u_input.b, 1u, u_input.b), vec4<u32>(u_input.b, 102774u, 42967u, 0u), vec4<bool>(false, true, false, true)), ~vec4<u32>(6825u, u_input.b, 18368u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u), max(vec4<u32>(16916u, 1u, 0u, 85875u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a))), select(true, any(vec2<bool>(true, false)), false))), false);
    let var_1 = (var_0.a.d >> ((~vec4<u32>(var_0.a.d.x, var_0.a.d.x, var_0.a.d.x, var_0.a.d.x) << (var_0.a.d % vec4<u32>(32u))) % vec4<u32>(32u))) ^ ~(var_0.a.d >> (abs(~var_0.a.d) % vec4<u32>(32u)));
    let var_2 = var_0.a.a.d;
    let var_3 = 11616i;
    let var_4 = abs(_wgslsmith_mod_u32(1u, abs(_wgslsmith_clamp_u32(var_0.a.d.x, var_1.x | 0u, abs(var_1.x)))));
    return var_3;
}

fn func_2() -> bool {
    var var_0 = Struct_3(Struct_2(vec3<i32>(min(2147483647i, 39813i), 1i, -1i), true, _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-4578i, 7413i, -1i), global1[_wgslsmith_index_u32(u_input.a, 32u)]), _wgslsmith_add_i32(-53477i, 2147483647i)), func_3() >> (17543u % 32u)), Struct_1(1i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1593f, 724f), vec2<f32>(1333f, -364f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-397f, -1687f)))), Struct_1(reverseBits(1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-683f, 768f) * vec2<f32>(807f, -1419f)) - vec2<f32>(-294f, 2202f)))), -_wgslsmith_sub_i32(1i, 28409i), -183f, max(~firstTrailingBit(~vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.b)), vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(u_input.a), u_input.a ^ u_input.a), u_input.a, u_input.a ^ u_input.b, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(22153u, 21007u, 22148u), vec3<u32>(u_input.a, u_input.b, u_input.a), vec3<u32>(75023u, 59184u, 4294967295u)), vec3<u32>(1u, 4294967295u, 1u)))));
    let var_1 = vec4<u32>(var_0.d.x, ~abs(~u_input.a), (var_0.d.x ^ ~(~4294967295u)) ^ u_input.a, u_input.b & _wgslsmith_add_u32(~(var_0.d.x | var_0.d.x), _wgslsmith_sub_u32(var_0.d.x, u_input.a)));
    let var_2 = var_0.a.e;
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 32u)], true, _wgslsmith_div_i32(1i, ~(-10536i)), Struct_1(_wgslsmith_dot_vec3_i32((global1[_wgslsmith_index_u32(var_1.x, 32u)] | global1[_wgslsmith_index_u32(var_0.d.x, 32u)]) ^ (vec3<i32>(var_2.a, 2147483647i, var_2.a) ^ var_0.a.a), _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(56685i, var_2.a, var_0.a.c)), _wgslsmith_mult_vec3_i32(var_0.a.a, global1[_wgslsmith_index_u32(106990u, 32u)]))), vec2<f32>(840f, _wgslsmith_div_f32(-190f, _wgslsmith_f_op_f32(-var_0.c)))), Struct_1(var_2.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.a.d.b.x)), _wgslsmith_f_op_f32(-1162f - var_0.c)))));
    var_0 = Struct_3(var_0.a, ~(-1i ^ var_2.a) & (i32(-1i) * -min(var_3.e.a, var_0.b)), var_0.c, var_1);
    return any(!vec3<bool>(any(vec3<bool>(false, var_3.b, true)), !var_0.a.b, any(select(vec2<bool>(var_3.b, var_3.b), vec2<bool>(true, var_3.b), true))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = !select(vec3<bool>(arg_0.x, func_2(), true), select(vec3<bool>(true, true, true), vec3<bool>(true, !arg_0.x, func_2()), true), !any(vec2<bool>(true, true)));
    let var_1 = Struct_4(Struct_3(arg_2, _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, arg_2.e.a) & -arg_1.x, _wgslsmith_div_i32(arg_2.a.x, arg_2.a.x) >> (14693u % 32u)), arg_2.d.b.x, select(vec4<u32>(u_input.b, 47566u, 1u, u_input.a) >> ((vec4<u32>(u_input.b, 2339u, u_input.a, u_input.a) >> (vec4<u32>(1u, u_input.a, 34344u, 29884u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(~u_input.b, 29355u, u_input.b, 1u & u_input.b), vec4<bool>(false, arg_0.x, var_0.x, true))));
    var var_2 = vec3<bool>(all(var_0.zz), true, all(arg_0));
    let var_3 = _wgslsmith_sub_i32(~(~var_1.a.b >> (var_1.a.d.x % 32u)), arg_1.x | _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_2.a.x, var_1.a.b, arg_1.x, var_1.a.b), abs(-vec4<i32>(-1i, arg_2.c, -1i, -2147483647i))));
    let var_4 = select(var_2.zz, select(vec2<bool>(arg_0.x, !(!arg_2.b)), select(!select(vec2<bool>(var_2.x, true), var_0.yx, true), arg_0, !(arg_2.e.b.x == var_1.a.c)), all(!(!vec4<bool>(var_1.a.a.b, true, false, false)))), select(!arg_0, vec2<bool>(arg_2.b, var_2.x), !vec2<bool>(false, !arg_2.b)));
    return var_1.a;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = func_1(!vec2<bool>(func_1(!arg_2.zx, global1[_wgslsmith_index_u32(4294967295u << (arg_1.a.d.x % 32u), 32u)], Struct_2(vec3<i32>(arg_1.a.b, -75180i, -6814i), false, arg_1.a.a.e.a, Struct_1(-2147483647i, arg_0.zz), global0[_wgslsmith_index_u32(4294967295u, 12u)])).a.b, true), vec3<i32>(func_3(), -arg_1.a.b, -(-357i | _wgslsmith_clamp_i32(0i, -1i, 0i))), arg_1.a.a).a;
    var var_1 = Struct_3(Struct_2(~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.e.a, -2147483647i, -1946i), vec3<i32>(12955i, 18868i, 2523i), vec3<i32>(var_0.c, 38190i, 31918i))), var_0.b, -func_1(arg_2.xy, arg_1.a.a.a, arg_1.a.a).b | 1i, func_1(vec2<bool>(true, true), var_0.a, func_1(select(vec2<bool>(false, false), arg_2.yy, var_0.b), arg_1.a.a.a, arg_1.a.a).a).a.e, global0[_wgslsmith_index_u32(~arg_1.a.d.x, 12u)]), _wgslsmith_sub_i32(-40415i, var_0.a.x), arg_0.x, arg_1.a.d);
    var var_2 = Struct_4(Struct_3(func_1(arg_2.zz, firstTrailingBit(max(vec3<i32>(0i, -1i, var_0.c), global1[_wgslsmith_index_u32(59033u, 32u)])), var_1.a).a, min(_wgslsmith_div_i32(func_3(), arg_1.a.a.d.a), -1i), func_1(select(select(arg_2.yy, vec2<bool>(arg_1.b, var_1.a.b), arg_1.b), select(arg_2.xz, arg_2.yy, arg_2.yy), arg_1.b), var_1.a.a, func_1(select(arg_2.xx, vec2<bool>(false, arg_1.b), vec2<bool>(var_0.b, true)), ~arg_1.a.a.a, Struct_2(var_0.a, arg_2.x, var_1.b, Struct_1(48901i, vec2<f32>(-1016f, 940f)), Struct_1(-1i, vec2<f32>(1607f, var_0.e.b.x)))).a).a.e.b.x, _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(arg_1.a.d, ~vec4<u32>(1u, 1u, 1u, 11286u)), vec4<u32>(1u, u_input.a >> (66953u % 32u), 53479u, ~var_1.d.x))));
    let var_3 = 7904u;
    var var_4 = arg_1;
    return func_1(arg_2.zx, ~(~max(vec3<i32>(-2147483647i, var_2.a.a.a.x, var_4.a.b), vec3<i32>(2147483647i, 43292i, -41747i)) >> (var_4.a.d.wwx % vec3<u32>(32u))), Struct_2(var_2.a.a.a, arg_2.x & !func_1(vec2<bool>(false, var_4.a.a.b), vec3<i32>(var_2.a.b, var_1.b, var_2.a.b), Struct_2(var_4.a.a.a, var_0.b, -2147483647i, arg_1.a.a.d, Struct_1(13615i, vec2<f32>(1400f, arg_1.a.c)))).a.b, -22298i, func_1(vec2<bool>(var_4.b & false, var_0.b), var_0.a, func_1(select(arg_2.zx, vec2<bool>(arg_1.b, true), vec2<bool>(arg_2.x, arg_2.x)), var_4.a.a.a, Struct_2(vec3<i32>(2999i, var_1.a.e.a, -32877i), true, -1i, global0[_wgslsmith_index_u32(var_2.a.d.x, 12u)], arg_1.a.a.e)).a).a.e, global0[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(var_3, 14172u) >> (1u % 32u)), 12u)])).a.d;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = vec4<bool>(any(select(select(!vec4<bool>(arg_2.x, false, true, arg_3.a.b), !vec4<bool>(arg_3.a.b, true, false, arg_2.x), all(vec3<bool>(true, false, arg_3.a.b))), vec4<bool>(true, false, true, !arg_1.a.b), true)), 1811u == ~reverseBits(arg_3.d.x), true, !(!(-2147483647i < arg_0.a)) | false);
    var var_1 = vec4<bool>(false, select(true & arg_1.a.b, func_2() || !any(var_0.xww), arg_1.a.b), !arg_2.x, func_2());
    let var_2 = arg_1.a;
    var_0 = !(!(!(!vec4<bool>(var_0.x, arg_2.x, arg_1.a.b, arg_3.a.b))));
    var var_3 = true;
    return Struct_3(func_1(select(select(vec2<bool>(var_2.b, var_2.b), select(vec2<bool>(true, true), vec2<bool>(arg_1.a.b, false), false), true), vec2<bool>(true, true), false), ~(vec3<i32>(32301i, var_2.c, -1i) | vec3<i32>(arg_3.b, 17146i, -1i)), Struct_2(select(global1[_wgslsmith_index_u32(1u, 32u)] | var_2.a, arg_1.a.a, vec3<bool>(var_0.x, var_1.x, var_2.b)), all(vec3<bool>(false, arg_3.a.b, var_2.b)), 2147483647i, func_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1048f, 438f, 567f))), Struct_5(Struct_3(Struct_2(vec3<i32>(arg_1.b, -1i, arg_1.b), true, -1i, Struct_1(-1i, vec2<f32>(450f, var_2.d.b.x)), Struct_1(arg_1.a.e.a, vec2<f32>(-1164f, 1000f))), -2147483647i, arg_0.b.x, arg_1.d), var_2.b), vec3<bool>(true, true, true)), Struct_1(32505i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(750f, -337f))))).a, arg_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(sign(2009f))))), _wgslsmith_f_op_f32(trunc(arg_3.c)))), max(vec4<u32>(arg_1.d.x, 1u, _wgslsmith_div_u32(arg_3.d.x, _wgslsmith_clamp_u32(49287u, 2359u, 2077u)), 6829u), ~vec4<u32>(4294967295u, 4294967295u, 4294967295u, _wgslsmith_dot_vec2_u32(arg_3.d.xy, vec2<u32>(u_input.b, u_input.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(1i, 9561i);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -373f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -586f) + 131f), 499f)));
    global1 = array<vec3<i32>, 32>();
    let var_2 = Struct_5(func_5(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, -534f, -1000f))) - vec3<f32>(var_1.x, 358f, 1000f)), Struct_5(func_1(vec2<bool>(true, true), vec3<i32>(var_0, -43731i, -2147483647i), Struct_2(vec3<i32>(var_0, 34999i, var_0), true, var_0, global0[_wgslsmith_index_u32(u_input.a, 12u)], Struct_1(-2147483647i, vec2<f32>(1000f, var_1.x)))), any(vec3<bool>(false, false, false))), vec3<bool>(true, true, true)), Struct_3(func_1(vec2<bool>(true, false), func_1(vec2<bool>(false, false), vec3<i32>(-1i, var_0, var_0), Struct_2(vec3<i32>(var_0, var_0, var_0), false, var_0, Struct_1(var_0, vec2<f32>(1428f, var_1.x)), global0[_wgslsmith_index_u32(0u, 12u)])).a.a, Struct_2(global1[_wgslsmith_index_u32(u_input.b, 32u)], false, var_0, Struct_1(24217i, var_1.yx), Struct_1(1i, vec2<f32>(var_1.x, 606f)))).a, firstLeadingBit(-1i), _wgslsmith_f_op_f32(-1142f - var_1.x), vec4<u32>(1u, u_input.b, 49484u, 32692u)), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, true), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), func_1(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), _wgslsmith_sub_vec3_i32(global1[_wgslsmith_index_u32(u_input.b, 32u)], global1[_wgslsmith_index_u32(u_input.b, 32u)]) >> (vec3<u32>(u_input.b, u_input.a, u_input.a) % vec3<u32>(32u)), Struct_2(-global1[_wgslsmith_index_u32(u_input.b, 32u)], false, min(var_0, var_0), func_1(vec2<bool>(false, true), vec3<i32>(-2147483647i, -2147483647i, 0i), Struct_2(global1[_wgslsmith_index_u32(4294967295u, 32u)], true, 33386i, global0[_wgslsmith_index_u32(1u, 12u)], Struct_1(var_0, vec2<f32>(var_1.x, 1000f)))).a.e, func_4(vec3<f32>(-897f, -1165f, -510f), Struct_5(Struct_3(Struct_2(vec3<i32>(var_0, -1i, 37337i), false, var_0, global0[_wgslsmith_index_u32(u_input.a, 12u)], Struct_1(-1i, vec2<f32>(var_1.x, -1518f))), -13541i, -1597f, vec4<u32>(4294967295u, u_input.a, u_input.b, 46673u)), false), vec3<bool>(true, true, false))))), false);
    var var_3 = countOneBits(vec2<u32>(firstTrailingBit(0u) | abs(3557u), ~(0u >> (var_2.a.d.x % 32u))) >> (~vec2<u32>(9460u, min(46241u, var_2.a.d.x)) % vec2<u32>(32u)));
    global0 = array<Struct_1, 12>();
    var var_4 = select(vec2<bool>(true, true), vec2<bool>(!any(vec4<bool>(var_2.a.a.b, var_2.a.a.b, true, true)), true || !var_2.a.a.b), !any(vec4<bool>(var_2.a.a.b && false, false, func_1(vec2<bool>(true, var_2.b), vec3<i32>(var_0, var_2.a.b, 2147483647i), Struct_2(vec3<i32>(-77972i, var_2.a.b, -56890i), var_2.a.a.b, 30658i, Struct_1(0i, var_1.xx), Struct_1(var_2.a.b, vec2<f32>(1078f, 1644f)))).a.b, !var_2.b)));
    let var_5 = var_2;
    var var_6 = !vec4<bool>(!all(select(vec4<bool>(var_2.b, var_5.b, var_2.b, var_2.b), vec4<bool>(false, var_2.a.a.b, var_5.b, true), vec4<bool>(var_5.a.a.b, false, var_5.a.a.b, var_4.x))), var_4.x, select(var_5.b || all(vec3<bool>(var_2.a.a.b, true, var_2.a.a.b)), var_4.x, any(select(vec4<bool>(var_5.b, var_2.a.a.b, var_4.x, false), vec4<bool>(false, true, true, var_4.x), var_4.x))), !(!all(vec2<bool>(var_2.a.a.b, true))));
    let x = u_input.a;
    s_output = StorageBuffer(5945u >> (_wgslsmith_div_u32(0u << (func_5(global0[_wgslsmith_index_u32(10729u, 12u)], var_5.a, vec2<bool>(var_2.a.a.b, var_6.x), Struct_3(Struct_2(vec3<i32>(var_5.a.a.a.x, var_2.a.a.c, var_0), false, var_0, Struct_1(14258i, vec2<f32>(var_2.a.c, 805f)), Struct_1(1i, vec2<f32>(var_2.a.a.e.b.x, 1628f))), -10093i, -1133f, var_5.a.d)).d.x % 32u), _wgslsmith_mult_u32(4294967295u, 0u)) % 32u), abs(var_5.a.a.a), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_2.a.d.x, var_2.a.d.x, var_2.a.d.x, 34558u)), ~(~abs(var_5.a.d))));
}

