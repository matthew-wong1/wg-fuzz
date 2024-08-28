struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<i32>(29255i, 42168i), false, 1u, 34490i), Struct_1(vec2<i32>(31866i, 12824i), true, 4294967295u, 1i), Struct_1(vec2<i32>(-47038i, 33151i), true, 4294967295u, -42267i), Struct_1(vec2<i32>(2147483647i, 19986i), true, 0u, i32(-2147483648)), Struct_1(vec2<i32>(32802i, 2147483647i), false, 0u, 12369i), Struct_1(vec2<i32>(4764i, 31346i), false, 44321u, 40128i), Struct_1(vec2<i32>(-1i, 3036i), false, 8779u, -47651i), Struct_1(vec2<i32>(0i, 17011i), false, 10955u, i32(-2147483648)), Struct_1(vec2<i32>(-1i, 26379i), false, 13421u, 1i), Struct_1(vec2<i32>(0i, -15295i), false, 51832u, 2987i), Struct_1(vec2<i32>(2806i, -29670i), false, 4294967295u, -1i), Struct_1(vec2<i32>(1i, 0i), true, 76099u, i32(-2147483648)), Struct_1(vec2<i32>(32450i, 0i), false, 0u, -44986i), Struct_1(vec2<i32>(-1064i, 58965i), false, 16146u, -1i), Struct_1(vec2<i32>(-1i, 1i), true, 0u, -1i), Struct_1(vec2<i32>(51991i, 16464i), true, 4294967295u, -5327i), Struct_1(vec2<i32>(-1i, 20886i), false, 16011u, 2147483647i), Struct_1(vec2<i32>(2147483647i, 34504i), false, 82961u, -29578i), Struct_1(vec2<i32>(-1i, i32(-2147483648)), true, 0u, i32(-2147483648)), Struct_1(vec2<i32>(-1i, -21369i), false, 37623u, 28725i), Struct_1(vec2<i32>(97168i, -25783i), false, 4294967295u, i32(-2147483648)), Struct_1(vec2<i32>(1i, 2147483647i), false, 0u, 0i), Struct_1(vec2<i32>(11669i, 0i), true, 1u, 12888i), Struct_1(vec2<i32>(0i, 13765i), false, 20573u, i32(-2147483648)));

var<private> global3: Struct_3 = Struct_3(4294967295u, Struct_2(vec4<bool>(true, false, true, false), 0u, false, 488f, Struct_1(vec2<i32>(i32(-2147483648), -49726i), true, 68753u, -1i)), 1138f, -37138i);

var<private> global4: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<bool>(true, false, true, true), 34862u, true, -572f, Struct_1(vec2<i32>(1i, 63894i), true, 1u, 7948i)), Struct_2(vec4<bool>(true, false, false, false), 1u, true, 1079f, Struct_1(vec2<i32>(-7495i, 6573i), false, 55078u, 18237i)), Struct_2(vec4<bool>(false, false, true, true), 1u, true, 406f, Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), false, 0u, -7403i)), Struct_2(vec4<bool>(true, true, true, true), 33933u, true, -640f, Struct_1(vec2<i32>(38495i, 0i), true, 1u, -11350i)), Struct_2(vec4<bool>(false, true, false, false), 0u, true, 447f, Struct_1(vec2<i32>(0i, -5708i), false, 1u, -51187i)), Struct_2(vec4<bool>(true, false, true, true), 1u, true, -524f, Struct_1(vec2<i32>(0i, -1i), false, 42815u, -7737i)), Struct_2(vec4<bool>(false, true, false, false), 7022u, false, -1000f, Struct_1(vec2<i32>(14350i, 0i), false, 29788u, 2147483647i)), Struct_2(vec4<bool>(true, true, true, true), 1u, true, -1585f, Struct_1(vec2<i32>(24667i, -40681i), true, 0u, 0i)), Struct_2(vec4<bool>(true, false, true, true), 36441u, false, -1291f, Struct_1(vec2<i32>(2147483647i, 0i), false, 4294967295u, 23829i)), Struct_2(vec4<bool>(true, true, true, true), 4294967295u, false, -1216f, Struct_1(vec2<i32>(1i, -5830i), true, 28831u, -30824i)), Struct_2(vec4<bool>(false, false, true, false), 108727u, true, 259f, Struct_1(vec2<i32>(21889i, 6057i), true, 1u, -9176i)), Struct_2(vec4<bool>(false, false, true, false), 4294967295u, false, 172f, Struct_1(vec2<i32>(-1i, 30548i), true, 34460u, -22558i)), Struct_2(vec4<bool>(false, true, false, false), 0u, false, 1209f, Struct_1(vec2<i32>(-44935i, 421i), false, 0u, i32(-2147483648))), Struct_2(vec4<bool>(true, false, false, false), 1946u, false, 951f, Struct_1(vec2<i32>(-19187i, 2147483647i), false, 5668u, -33491i)), Struct_2(vec4<bool>(false, false, true, true), 1u, false, -129f, Struct_1(vec2<i32>(24396i, i32(-2147483648)), true, 1u, i32(-2147483648))), Struct_2(vec4<bool>(true, true, true, true), 1u, false, -621f, Struct_1(vec2<i32>(41216i, -1i), false, 0u, 78698i)), Struct_2(vec4<bool>(true, true, false, true), 25748u, true, -1000f, Struct_1(vec2<i32>(5429i, -4597i), false, 29746u, i32(-2147483648))), Struct_2(vec4<bool>(true, true, true, false), 17928u, false, -463f, Struct_1(vec2<i32>(-47720i, 1i), false, 4294967295u, -74850i)), Struct_2(vec4<bool>(true, true, true, true), 0u, true, -1502f, Struct_1(vec2<i32>(87037i, 0i), true, 55404u, 1i)), Struct_2(vec4<bool>(true, false, false, false), 49273u, false, -2430f, Struct_1(vec2<i32>(i32(-2147483648), -29135i), false, 0u, 2147483647i)), Struct_2(vec4<bool>(true, true, true, true), 51294u, true, 1080f, Struct_1(vec2<i32>(1476i, -18504i), true, 44615u, -43829i)), Struct_2(vec4<bool>(true, true, false, false), 4294967295u, true, 710f, Struct_1(vec2<i32>(-28821i, -1i), true, 1u, 0i)), Struct_2(vec4<bool>(true, false, false, true), 2976u, false, -932f, Struct_1(vec2<i32>(-16787i, 4287i), false, 0u, -1i)), Struct_2(vec4<bool>(false, false, true, false), 7437u, false, -2755f, Struct_1(vec2<i32>(-1i, 6296i), false, 0u, -3112i)), Struct_2(vec4<bool>(false, true, true, true), 26035u, false, -1351f, Struct_1(vec2<i32>(26063i, -29937i), false, 5556u, -44334i)), Struct_2(vec4<bool>(true, true, true, false), 4294967295u, true, -128f, Struct_1(vec2<i32>(-1i, -79298i), false, 4294967295u, -41245i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = max(arg_2.a, ~global3.b.e.a);
    global3 = Struct_3(~26324u, global3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-184f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(575f - global3.c) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-323f, arg_3) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 1i);
    let var_1 = u_input.a;
    var_0 = arg_2.a | arg_2.a;
    let var_2 = vec3<u32>(countOneBits(~_wgslsmith_sub_u32(u_input.b, reverseBits(1u))), arg_1.c, _wgslsmith_mult_u32(67411u, arg_2.c) << ((reverseBits(15698u >> (arg_2.c % 32u)) << (0u % 32u)) % 32u));
    return ~(-2493i);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> bool {
    let var_0 = -select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, 71417i, 29197i, 1i), vec4<i32>(arg_2.d, -23548i, arg_2.a.x, 2147483647i)), vec4<i32>(16579i, arg_2.a.x, ~global3.b.e.d, -global3.b.e.a.x), global3.b.a) & -abs(-(vec4<i32>(-1i, global3.d, 1i, 0i) << (vec4<u32>(1u, 40537u, 0u, 0u) % vec4<u32>(32u))));
    global4 = array<Struct_2, 26>();
    global1 = vec3<bool>(!((~arg_2.d >> (reverseBits(61832u) % 32u)) <= (abs(0i) >> (~global3.b.b % 32u))), global3.b.a.x, true);
    var var_1 = Struct_1(max(vec2<i32>(func_3(global3.d, global2[_wgslsmith_index_u32(111563u, 24u)], global3.b.e, global3.c), 0i), arg_2.a) & vec2<i32>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(26556u, global3.a, global3.a, 4294967295u), vec4<u32>(u_input.b, 14937u, 12283u, arg_2.c)), 22u)], func_3(-1169i, Struct_1(var_0.yx, true, 14285u, var_0.x), Struct_1(global3.b.e.a, false, 32206u, -1i), global3.b.d)), true, 81697u, global3.b.e.a.x);
    let var_2 = Struct_2(vec4<bool>(arg_2.b, var_1.d < firstLeadingBit(var_0.x), false, global1.x), 1u, all(select(!vec2<bool>(arg_2.b, false), global3.b.a.wx, global1.yx)), -507f, Struct_1(~vec2<i32>(u_input.a, -2147483647i) ^ _wgslsmith_mult_vec2_i32(var_1.a, vec2<i32>(var_1.d, var_1.a.x)), any(global3.b.a.zww), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(60131u, 20736u, u_input.b, 61307u) | vec4<u32>(1u, var_1.c, global3.a, global3.b.b), ~vec4<u32>(14765u, var_1.c, 1u, u_input.b)), ~20108u), global3.b.e.d));
    return select(true, -748f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) - var_2.d), global3.b.c);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_3 {
    return Struct_3(global3.b.b, Struct_2(!vec4<bool>(true, true, true, func_2(false, -987f, arg_0)), _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(global3.b.e.c, u_input.b, 116891u)), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(arg_0.c, 29849u, 34000u)), reverseBits(vec3<u32>(global3.a, 42834u, arg_0.c)))), !all(vec3<bool>(false, global1.x, false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global3.c)), Struct_1(-(~arg_0.a), any(global3.b.a), global3.a, ~1i)), _wgslsmith_f_op_f32(-global3.b.d), firstLeadingBit(~_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -2147483647i), reverseBits(global3.b.e.a))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(arg_1.b.d - _wgslsmith_f_op_f32(step(914f, _wgslsmith_f_op_f32(453f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var_0 = -419f;
    global2 = array<Struct_1, 24>();
    global1 = vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.d, arg_2.c))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(func_1(arg_0, vec2<bool>(false, true)).b.d))), all(vec4<bool>(true, !(!global3.b.e.b), !(true || global1.x), 1u > max(arg_2.a, global3.b.b))));
    var var_1 = _wgslsmith_f_op_f32(arg_2.b.d - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -444f), 279f, !arg_0.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1195f * arg_1.b.d)))) + 1941f));
    return _wgslsmith_f_op_f32(min(-797f, arg_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 26>();
    var var_0 = Struct_2(select(!select(global3.b.a, !vec4<bool>(true, false, global3.b.a.x, false), any(global3.b.a.xxz)), vec4<bool>(all(global3.b.a), ~global3.a <= _wgslsmith_mult_u32(1u, u_input.b), u_input.a < reverseBits(u_input.c), global1.x), global3.b.a), ~37355u, !(!all(global3.b.a.zxz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global3.b.e, func_1(Struct_1(global3.b.e.a, global3.b.a.x, 38819u, global0[_wgslsmith_index_u32(1u, 22u)]), !global3.b.a.zx), Struct_3(~global3.a, Struct_2(vec4<bool>(false, true, true, global3.b.c), u_input.b, global1.x, global3.b.d, Struct_1(global3.b.e.a, global1.x, 57020u, -1i)), func_1(global2[_wgslsmith_index_u32(5149u, 24u)], global1.xx).b.d, abs(global0[_wgslsmith_index_u32(40789u, 22u)])), ~vec2<i32>(global3.b.e.d, global0[_wgslsmith_index_u32(57725u, 22u)])))), Struct_1(global3.b.e.a, global3.b.a.x, ~(~(~u_input.b)), 1i));
    var var_1 = Struct_3(39164u, Struct_2(!select(!vec4<bool>(var_0.e.b, global3.b.e.b, false, global3.b.a.x), vec4<bool>(global1.x, false, true, var_0.c), true), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(global3.b.b, 3624u), ~vec2<u32>(global3.b.e.c, var_0.e.c)), vec2<u32>(var_0.b, var_0.e.c & global3.b.e.c)), !(var_0.d <= -234f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -455f)))), func_1(func_1(func_1(Struct_1(global3.b.e.a, false, global3.a, var_0.e.a.x), vec2<bool>(global1.x, global3.b.a.x)).b.e, select(vec2<bool>(true, global3.b.c), vec2<bool>(global1.x, global3.b.c), vec2<bool>(var_0.c, true))).b.e, !(!var_0.a.zy)).b.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(657f, _wgslsmith_f_op_f32(-global3.c))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -184f) * global3.b.d), var_0.d)), -2147483647i);
    var var_2 = Struct_3(41808u, func_1(func_1(Struct_1(var_1.b.e.a, true, var_1.a << (80247u % 32u), _wgslsmith_mult_i32(40156i, var_1.b.e.d)), global1.zy).b.e, var_0.a.wy).b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-284f, _wgslsmith_f_op_f32(f32(-1f) * -1803f)) * _wgslsmith_f_op_f32(-var_1.b.d)))), firstTrailingBit(countOneBits(var_0.e.a.x >> (~var_0.e.c % 32u))));
    let var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(-func_1(Struct_1(global3.b.e.a, false, var_0.e.c, -1i), select(vec2<bool>(global3.b.c, true), vec2<bool>(var_0.c, var_2.b.a.x), false)).b.d), _wgslsmith_f_op_f32(f32(-1f) * -692f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-787f, global3.b.d, var_1.c) * vec3<f32>(-528f, global3.c, var_0.d)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.b.d, global3.c, global3.c)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(117f, var_2.b.d, var_1.b.d), vec3<f32>(-1377f, 514f, var_1.c), var_1.b.a.wxy)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.d, 768f, global3.c)))), !var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global3.a), vec2<u32>(var_2.a, 1u) << (vec2<u32>(4644u, u_input.b) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b, 1u), vec2<u32>(var_1.a, 12602u))), vec2<u32>(countOneBits(u_input.b), 4294967295u)), vec3<i32>(-abs(2147483647i >> (var_2.a % 32u)), -12416i, 1i), _wgslsmith_clamp_vec2_i32(global3.b.e.a, _wgslsmith_div_vec2_i32(reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.d, global0[_wgslsmith_index_u32(var_1.b.e.c, 22u)]), vec2<i32>(21058i, -47534i))), vec2<i32>(var_0.e.a.x, var_1.d)), firstTrailingBit(var_1.b.e.a)));
}

