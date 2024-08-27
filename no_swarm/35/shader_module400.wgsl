struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, 0i);

var<private> global1: array<vec4<u32>, 30>;

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec3<u32>(3713u, 1u, 0u), Struct_1(vec3<i32>(3048i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, -1i, 16591i, 1i), vec3<u32>(0u, 4294967295u, 4003u), 1251f), false), Struct_2(vec3<u32>(4294967295u, 12148u, 87241u), Struct_1(vec3<i32>(27930i, -1i, -20143i), vec4<i32>(1i, 3710i, 0i, 9961i), vec3<u32>(0u, 83751u, 32693u), 1000f), true), Struct_2(vec3<u32>(63912u, 1u, 1u), Struct_1(vec3<i32>(64165i, 2147483647i, -23023i), vec4<i32>(i32(-2147483648), -18364i, -35042i, -66730i), vec3<u32>(52448u, 0u, 85846u), 381f), false), Struct_2(vec3<u32>(1u, 4294967295u, 41962u), Struct_1(vec3<i32>(17439i, -1i, 28986i), vec4<i32>(-11014i, -1i, 15471i, -5053i), vec3<u32>(4294967295u, 15802u, 96401u), 1049f), true), Struct_2(vec3<u32>(122960u, 1845u, 1u), Struct_1(vec3<i32>(-18188i, 1i, 0i), vec4<i32>(-14557i, 2355i, i32(-2147483648), -1i), vec3<u32>(4294967295u, 38774u, 1u), 435f), false), Struct_2(vec3<u32>(4294967295u, 61480u, 0u), Struct_1(vec3<i32>(55816i, 1i, 23575i), vec4<i32>(2147483647i, i32(-2147483648), 1i, 1i), vec3<u32>(48424u, 4294967295u, 4294967295u), 405f), true), Struct_2(vec3<u32>(23565u, 4294967295u, 4294967295u), Struct_1(vec3<i32>(65611i, -1i, -26365i), vec4<i32>(-1i, 0i, i32(-2147483648), 2147483647i), vec3<u32>(33849u, 30494u, 9991u), -463f), false), Struct_2(vec3<u32>(17237u, 31700u, 58095u), Struct_1(vec3<i32>(-22670i, -11401i, 17421i), vec4<i32>(-8872i, -24251i, -1i, 0i), vec3<u32>(46881u, 7717u, 79098u), -125f), true), Struct_2(vec3<u32>(37957u, 18594u, 4294967295u), Struct_1(vec3<i32>(-1i, -34628i, -1i), vec4<i32>(12944i, 1i, -51964i, 1i), vec3<u32>(31036u, 1u, 0u), 1932f), true), Struct_2(vec3<u32>(107226u, 61975u, 4294967295u), Struct_1(vec3<i32>(-1i, 1i, -1i), vec4<i32>(0i, -6958i, i32(-2147483648), -52102i), vec3<u32>(1u, 0u, 24724u), -215f), true), Struct_2(vec3<u32>(1u, 1u, 4294967295u), Struct_1(vec3<i32>(-24372i, i32(-2147483648), 8043i), vec4<i32>(-3700i, -12651i, i32(-2147483648), 0i), vec3<u32>(4294967295u, 1u, 25744u), -838f), true), Struct_2(vec3<u32>(16856u, 1u, 7296u), Struct_1(vec3<i32>(i32(-2147483648), 16985i, -5972i), vec4<i32>(1i, 37284i, 36544i, 2147483647i), vec3<u32>(3345u, 91841u, 4294967295u), -421f), false), Struct_2(vec3<u32>(1u, 1u, 22045u), Struct_1(vec3<i32>(i32(-2147483648), 1i, 0i), vec4<i32>(i32(-2147483648), -13654i, 12579i, 1i), vec3<u32>(4294967295u, 74621u, 32600u), 255f), false), Struct_2(vec3<u32>(28790u, 2921u, 4294967295u), Struct_1(vec3<i32>(-1i, -14014i, 2147483647i), vec4<i32>(0i, 10275i, -1i, i32(-2147483648)), vec3<u32>(123811u, 70685u, 63667u), 119f), true), Struct_2(vec3<u32>(4294967295u, 4294967295u, 12928u), Struct_1(vec3<i32>(0i, -40562i, 2147483647i), vec4<i32>(71636i, -1i, -3210i, 41802i), vec3<u32>(1u, 50103u, 4294967295u), 225f), false), Struct_2(vec3<u32>(1u, 55538u, 69075u), Struct_1(vec3<i32>(41194i, i32(-2147483648), 2147483647i), vec4<i32>(2147483647i, 2785i, 2147483647i, 1i), vec3<u32>(16193u, 0u, 1u), 1084f), false), Struct_2(vec3<u32>(43945u, 0u, 20918u), Struct_1(vec3<i32>(i32(-2147483648), 1i, -73383i), vec4<i32>(-1i, i32(-2147483648), -1i, i32(-2147483648)), vec3<u32>(4294967295u, 0u, 4294967295u), 993f), false), Struct_2(vec3<u32>(1u, 1u, 4294967295u), Struct_1(vec3<i32>(-18284i, -36463i, -60976i), vec4<i32>(39237i, 29108i, -48329i, i32(-2147483648)), vec3<u32>(10032u, 0u, 33504u), 455f), false), Struct_2(vec3<u32>(1u, 34564u, 1630u), Struct_1(vec3<i32>(-34896i, -25894i, i32(-2147483648)), vec4<i32>(-9370i, 2147483647i, -37213i, 8562i), vec3<u32>(4294967295u, 13146u, 19041u), -1491f), false), Struct_2(vec3<u32>(10850u, 1u, 34362u), Struct_1(vec3<i32>(0i, 7059i, -10560i), vec4<i32>(16647i, 2147483647i, -6919i, -1i), vec3<u32>(8429u, 1u, 1u), -2490f), false), Struct_2(vec3<u32>(4294967295u, 13556u, 11415u), Struct_1(vec3<i32>(2147483647i, -1i, 67701i), vec4<i32>(1i, -22195i, -1i, 38215i), vec3<u32>(4294967295u, 1u, 0u), -1862f), false), Struct_2(vec3<u32>(42326u, 4294967295u, 0u), Struct_1(vec3<i32>(-13172i, 2147483647i, -51183i), vec4<i32>(-1i, 0i, 68427i, -11744i), vec3<u32>(26673u, 48682u, 77973u), 247f), true), Struct_2(vec3<u32>(0u, 41484u, 1u), Struct_1(vec3<i32>(26796i, 1i, -12873i), vec4<i32>(-13166i, 10814i, 2147483647i, 0i), vec3<u32>(52755u, 1u, 0u), -778f), false), Struct_2(vec3<u32>(1u, 23294u, 0u), Struct_1(vec3<i32>(0i, 31466i, -1i), vec4<i32>(-25439i, -21389i, -1i, 44255i), vec3<u32>(4294967295u, 18341u, 4294967295u), -1204f), false), Struct_2(vec3<u32>(12838u, 46969u, 4294967295u), Struct_1(vec3<i32>(-1i, 11974i, 1i), vec4<i32>(14737i, i32(-2147483648), 2147483647i, 1i), vec3<u32>(26797u, 1u, 54228u), -909f), false));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_1(-_wgslsmith_clamp_vec3_i32(~_wgslsmith_mult_vec3_i32(arg_0.b.b.xwy, vec3<i32>(-50423i, -29725i, arg_0.a.b.b.x)), (vec3<i32>(28810i, 1i, 2147483647i) & arg_0.b.a) << (arg_0.b.c % vec3<u32>(32u)), abs(vec3<i32>(global0.x, u_input.d.x, u_input.a.x))), vec4<i32>(select(45284i, _wgslsmith_mult_i32(global0.x | 14782i, select(global0.x, arg_0.a.b.a.x, arg_0.a.c)), ~4294967295u > u_input.e), abs(u_input.c.x), global0.x, -arg_0.b.a.x), _wgslsmith_sub_vec3_u32(arg_0.b.c, vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(arg_0.a.b.c.xy, _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.b.c.x, 4294967295u), vec2<u32>(arg_0.a.b.c.x, 4294967295u), u_input.b)), min(u_input.e, ~13911u))), 844f);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2411f)));
    var var_2 = countOneBits(-1i);
    var var_3 = ~arg_0.a.b.b.wz;
    let var_4 = Struct_3(arg_0.a, arg_0.b, vec2<u32>(1u, arg_0.b.c.x));
    return _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(18758u, var_0.c.x), 40542u), 53102u);
}

fn func_2() -> Struct_2 {
    let var_0 = any(vec3<bool>(any(vec3<bool>(all(vec4<bool>(true, true, true, false)), u_input.c.x > u_input.d.x, true)), true, true));
    var var_1 = ~(~min(vec4<u32>(1u >> (u_input.b.x % 32u), func_3(Struct_3(global2[_wgslsmith_index_u32(15834u, 25u)], Struct_1(u_input.d, u_input.a, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), 1515f), u_input.b)), u_input.e, 1u), ~vec4<u32>(23071u, 19822u, 4294967295u, u_input.b.x)));
    global0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(global0.x, global0.x) >> (firstLeadingBit(u_input.b) % vec2<u32>(32u))), vec2<i32>(-(~(-2147483647i)), -54477i)), ~u_input.d.xz, vec2<i32>(firstTrailingBit(u_input.c.x >> (u_input.b.x % 32u)), select(countOneBits(-global0.x), _wgslsmith_mult_i32(1i, reverseBits(-1i)), var_0)));
    let var_2 = (u_input.a & _wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(1i, -2147483647i & global0.x, global0.x ^ u_input.a.x, 1i >> (u_input.e % 32u)))) << ((vec4<u32>(~u_input.b.x, ~(~u_input.e), var_1.x, countOneBits(4294967295u)) & ~vec4<u32>(u_input.e, _wgslsmith_mod_u32(96302u, var_1.x), u_input.b.x | var_1.x, 1u)) % vec4<u32>(32u));
    var var_3 = var_2;
    return Struct_2(~(~vec3<u32>(_wgslsmith_mod_u32(u_input.e, 1545u), 1u, ~8137u)), Struct_1(vec3<i32>(-1i) * -vec3<i32>(var_2.x, -1i, 17335i), vec4<i32>(var_3.x, -min(global0.x, u_input.c.x), _wgslsmith_dot_vec2_i32(-var_3.zz, vec2<i32>(var_3.x, var_3.x) & u_input.a.zy), ~global0.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, ~4294967295u, 4294967295u), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 0u, 9939u), ~vec3<u32>(var_1.x, 4294967295u, u_input.e))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-285f * 462f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(795f)))))), false);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    global1 = array<vec4<u32>, 30>();
    var var_0 = arg_1.c;
    global0 = func_2().b.a.xz;
    let var_1 = func_2().b;
    global1 = array<vec4<u32>, 30>();
    return Struct_1(~select(-vec3<i32>(-2147483647i, arg_0.b.b.x, 0i), vec3<i32>(1i, 69005i, var_1.a.x), true), -(_wgslsmith_clamp_vec4_i32(arg_0.b.b, vec4<i32>(0i, 2147483647i, 42643i, u_input.a.x), vec4<i32>(0i, u_input.d.x, var_1.a.x, global0.x)) >> (vec4<u32>(firstLeadingBit(u_input.e), u_input.b.x << (1u % 32u), countOneBits(41522u), 35853u) % vec4<u32>(32u))), arg_0.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.d) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_1.b.d)), _wgslsmith_div_f32(192f, arg_1.b.d)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(175f * arg_1.b.d), _wgslsmith_f_op_f32(f32(-1f) * -678f)))));
}

fn func_5(arg_0: Struct_1) -> bool {
    let var_0 = ~u_input.b.x;
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.d + 703f), _wgslsmith_f_op_f32(sign(arg_0.d)))))))));
    var var_3 = func_4(global2[_wgslsmith_index_u32(~arg_0.c.x, 25u)], global2[_wgslsmith_index_u32(~firstLeadingBit(1u), 25u)], true);
    global0 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(~var_3.a.x, 0i), 1i), countOneBits(var_3.b.x));
    return select(false, true, arg_0.c.x >= _wgslsmith_sub_u32(var_3.c.x, max(u_input.b.x, var_3.c.x)));
}

fn func_1() -> Struct_3 {
    var var_0 = select(vec3<bool>(false, true != !any(vec4<bool>(false, false, true, true)), !all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true))), vec3<bool>(true, true, true), func_5(func_4(func_2(), global2[_wgslsmith_index_u32(97808u, 25u)], true)));
    global0 = u_input.a.wy;
    global0 = -(~u_input.c) ^ firstTrailingBit((vec2<i32>(global0.x, 2147483647i) << (u_input.b % vec2<u32>(32u))) ^ u_input.d.xy);
    global2 = array<Struct_2, 25>();
    var var_1 = !vec3<bool>(any(select(vec4<bool>(true, var_0.x, true, false), vec4<bool>(true, true, true, true), var_0.x)) | (u_input.c.x <= 0i), true, true);
    return Struct_3(Struct_2(vec3<u32>(u_input.b.x, u_input.b.x, ~(45625u >> (u_input.e % 32u))), func_4(func_2(), Struct_2(vec3<u32>(0u, 29997u, u_input.b.x) | vec3<u32>(0u, u_input.e, u_input.e), func_4(Struct_2(vec3<u32>(6040u, 34258u, u_input.e), Struct_1(vec3<i32>(u_input.a.x, 0i, u_input.c.x), vec4<i32>(2147483647i, u_input.c.x, global0.x, u_input.d.x), vec3<u32>(4294967295u, u_input.e, 4072u), 1208f), false), Struct_2(vec3<u32>(u_input.b.x, 9755u, u_input.b.x), Struct_1(vec3<i32>(u_input.c.x, u_input.a.x, 2147483647i), vec4<i32>(global0.x, -1i, 0i, -1i), vec3<u32>(u_input.e, u_input.e, u_input.e), -2603f), false), var_0.x), func_5(Struct_1(vec3<i32>(u_input.d.x, u_input.d.x, u_input.a.x), u_input.a, vec3<u32>(u_input.e, 93250u, 2137u), -829f))), true), all(!(!vec4<bool>(var_1.x, false, true, false)))), func_4(func_2(), Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], vec4<u32>(20510u, u_input.e, 0u, u_input.b.x)), reverseBits(22322u), select(0u, u_input.e, var_0.x)), func_2().b, !(global0.x == u_input.a.x)), var_0.x), vec2<u32>(~firstLeadingBit(1u), ~43753u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 25>();
    var var_0 = select(any(vec3<bool>(true, false, true)), any(!select(vec2<bool>(true, false), vec2<bool>(false, true), false)), true) || !(_wgslsmith_clamp_i32(global0.x, 33827i, -u_input.c.x) < ~(~(-2147483647i)));
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(max(1i, func_1().b.a.x), var_1.b.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-589f, var_1.b.d, -569f, var_1.a.b.d))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b.d, var_1.b.d, var_1.a.b.d, var_1.b.d) + vec4<f32>(var_1.b.d, var_1.a.b.d, var_1.a.b.d, 451f)))))), vec4<u32>(select(u_input.e, firstTrailingBit(56961u) << (27472u % 32u), !all(vec2<bool>(false, var_1.a.c))), u_input.e, _wgslsmith_div_u32(u_input.b.x, 4294967295u), func_3(Struct_3(var_1.a, var_1.a.b, vec2<u32>(42895u, 4294967295u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.b.d, 182f))))));
}

