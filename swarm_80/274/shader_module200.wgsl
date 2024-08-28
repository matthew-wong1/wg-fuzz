struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(89010u, 4294967295u, 4294967295u, 16110u), vec4<u32>(34132u, 7802u, 0u, 1u), vec4<u32>(0u, 59511u, 1u, 58221u), vec4<u32>(3678u, 4294967295u, 5069u, 23320u), vec4<u32>(1u, 1u, 31553u, 1u), vec4<u32>(4294967295u, 31076u, 37412u, 1u), vec4<u32>(92662u, 1u, 28501u, 0u), vec4<u32>(14593u, 16477u, 48074u, 31402u), vec4<u32>(26409u, 1u, 4294967295u, 15613u), vec4<u32>(4294967295u, 27934u, 1u, 45216u), vec4<u32>(1u, 1u, 21602u, 0u), vec4<u32>(4294967295u, 58349u, 18167u, 39494u), vec4<u32>(19429u, 2523u, 18184u, 0u), vec4<u32>(51854u, 1u, 1u, 4294967295u), vec4<u32>(30518u, 86988u, 4294967295u, 22770u), vec4<u32>(1u, 98880u, 1u, 1u), vec4<u32>(8349u, 71122u, 30269u, 36516u), vec4<u32>(4294967295u, 0u, 0u, 46170u), vec4<u32>(1u, 0u, 27969u, 1u), vec4<u32>(31845u, 11095u, 55803u, 0u), vec4<u32>(32325u, 4294967295u, 8805u, 1u));

var<private> global1: Struct_2;

var<private> global2: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(43483u, 49555u), vec2<u32>(59690u, 36224u), vec2<u32>(6108u, 52141u), vec2<u32>(19882u, 84429u), vec2<u32>(0u, 4294967295u), vec2<u32>(9766u, 7735u), vec2<u32>(0u, 23402u), vec2<u32>(9116u, 72245u), vec2<u32>(21571u, 31075u), vec2<u32>(51831u, 1u), vec2<u32>(41310u, 15690u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 21099u), vec2<u32>(60772u, 0u), vec2<u32>(26603u, 27784u), vec2<u32>(52862u, 0u));

var<private> global3: bool = false;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> bool {
    global1 = Struct_2(~((0i & (arg_0.a ^ -11460i)) << (_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, global1.d), 17u)], countOneBits(vec2<u32>(u_input.a, 560u))) % 32u)), _wgslsmith_div_vec4_u32(vec4<u32>(global1.e ^ arg_0.c.x, ~4294967295u, firstTrailingBit(0u), 9687u) << (global1.b % vec4<u32>(32u)), vec4<u32>(countOneBits(global1.c.x), global1.b.x & _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(1u, 17u)], global1.c), _wgslsmith_mod_u32(1473u, u_input.a), firstLeadingBit(_wgslsmith_div_u32(53009u, arg_0.e)))), _wgslsmith_div_vec2_u32(global1.b.xw, vec2<u32>(17598u, ~max(u_input.a, u_input.a))), global1.c.x, (~arg_0.c.x << (~global1.d % 32u)) | ~(~_wgslsmith_mod_u32(144u, 75142u)));
    var var_0 = Struct_2(i32(-1i) * -1i, ~select(vec4<u32>(1u, u_input.a, 48232u, global1.e), ~vec4<u32>(u_input.a, 50504u, 21491u, global1.d), arg_0.d >= u_input.a) & vec4<u32>(u_input.a, ~firstTrailingBit(arg_0.c.x), global1.b.x, ~1944u), ~select(global1.c, _wgslsmith_mod_vec2_u32(select(global1.c, vec2<u32>(u_input.a, u_input.a), vec2<bool>(false, true)), ~vec2<u32>(global1.c.x, 4294967295u)), vec2<bool>(u_input.a < arg_0.c.x, true)), ~abs(abs(_wgslsmith_clamp_u32(global1.d, arg_0.b.x, global1.e))), _wgslsmith_dot_vec2_u32(~(~(vec2<u32>(u_input.a, 1u) >> (global1.c % vec2<u32>(32u)))), abs(~global1.b.yz)));
    var var_1 = _wgslsmith_div_i32(i32(-1i) * -1i, ~_wgslsmith_sub_i32(1i, u_input.b));
    global3 = any(vec4<bool>(all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), !(!all(vec3<bool>(true, true, false))), select(true, !(arg_0.a <= arg_0.a), true), select(true, true, var_0.a > 1i) | any(vec3<bool>(false, false, true))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(576f)))) * _wgslsmith_f_op_f32(select(-961f, _wgslsmith_div_f32(799f, 1000f), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(314f))))));
    return any(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), any(vec3<bool>(true, false, false))), vec3<bool>(true, all(vec4<bool>(true, false, true, true)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(false, false, false))));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = !vec4<bool>(!(!(var_0 == 1u)), func_3(Struct_2(firstTrailingBit(global1.a), ~vec4<u32>(u_input.a, 4294967295u, var_0, u_input.a), vec2<u32>(1u, u_input.a) | global1.c, global1.d, var_0)), true, !all(vec4<bool>(true, true, true, true)));
    let var_2 = vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(-448i, -1i, -1i, u_input.b)), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(53466i, global1.a, global1.a, u_input.b), vec4<i32>(5279i, global1.a, -2147483647i, 1i)), min(vec4<i32>(u_input.b, u_input.b, u_input.b, global1.a), vec4<i32>(u_input.b, 2147483647i, -10284i, u_input.b))))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, -3511i), _wgslsmith_mod_i32(u_input.b | global1.a, -(~u_input.b))), _wgslsmith_div_i32(1i, ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.a, global1.a, 0i), vec3<i32>(global1.a, u_input.b, u_input.b)), vec3<i32>(1i, 1i, 1i))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(abs(-856f)), -1343f, 1f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    var var_4 = Struct_2(1i, global1.b, _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(global1.b.wz, global1.b.wz << ((global1.c | global2[_wgslsmith_index_u32(57318u, 17u)]) % vec2<u32>(32u))), global1.b.xw), var_0, ~((var_0 ^ var_0) & 4294967295u) ^ _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global1.b.xyy ^ global1.b.xzz, vec3<u32>(51601u, var_0, 4294967295u)), min(global1.b.wyx, vec3<u32>(u_input.a, var_0, var_0)) | global1.b.xzy));
    return Struct_1(!vec4<bool>(!(!var_1.x), any(!vec2<bool>(var_1.x, var_1.x)), false, !(var_4.a < global1.a)), select(vec3<bool>((var_3.x == var_3.x) | (var_3.x != var_3.x), !var_1.x, true), !select(var_1.yzw, !vec3<bool>(var_1.x, false, var_1.x), true), select(any(var_1.zz), all(select(vec3<bool>(true, false, false), var_1.xwx, vec3<bool>(true, true, var_1.x))), false)));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    global0 = array<vec4<u32>, 22>();
    let var_0 = !(select(false, false, true) | !arg_1.a.x);
    var var_1 = var_0;
    let var_2 = func_2().b.x;
    let var_3 = ~firstTrailingBit(0u);
    return Struct_2(firstTrailingBit(global1.a), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(~global2[_wgslsmith_index_u32(reverseBits(3381u), 17u)], abs(~global2[_wgslsmith_index_u32(u_input.a, 17u)])), var_3, _wgslsmith_add_u32(~(~global1.e), var_3)), global1.b.zw, 3106u >> (_wgslsmith_add_u32(u_input.a, 24418u) % 32u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(33892u, 22u)], abs(global0[_wgslsmith_index_u32(4294967295u, 22u)])), _wgslsmith_dot_vec4_u32(firstTrailingBit(global1.b), global0[_wgslsmith_index_u32(~global1.e, 22u)])) | global1.d);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32) -> Struct_5 {
    let var_0 = _wgslsmith_div_i32(arg_2 ^ _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, arg_1.a, u_input.b, -39230i), vec4<i32>(2147483647i, global1.a, 0i, global1.a)), -23999i), (_wgslsmith_dot_vec3_i32(vec3<i32>(42340i, 9150i, -11336i) | vec3<i32>(global1.a, 15716i, arg_2), abs(vec3<i32>(global1.a, global1.a, 2147483647i))) ^ -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, 5197i), vec3<i32>(-5228i, u_input.b, 0i))) | global1.a);
    var var_1 = vec2<i32>(max(arg_2, 55041i), firstLeadingBit(var_0) ^ -49496i);
    var var_2 = Struct_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(1f + -217f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(395f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-253f)), _wgslsmith_f_op_f32(round(186f))))))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1631f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1244f)))), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(func_4(2228f, Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(true, false, true))).c, global2[_wgslsmith_index_u32(arg_1.c.x, 17u)]), ~(~arg_1.c))), select(select(func_2().a.zwy, select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, all(vec4<bool>(false, true, true, true)), all(vec2<bool>(false, false)))), func_2().b, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, _wgslsmith_f_op_f32(-189f + 1148f))))));
    var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a, 1399f)))))), Struct_4(var_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_2.b.a)))), var_2.a), var_2.b.c ^ countOneBits(~vec2<u32>(46706u, var_2.b.c.x))), vec3<bool>((arg_1.a << (_wgslsmith_mod_u32(arg_0.x, 0u) % 32u)) >= abs(i32(-1i) * -1i), _wgslsmith_add_i32(firstTrailingBit(arg_2), 2147483647i) <= -64062i, all(vec3<bool>(true, true, false))), var_2.d);
    let var_3 = vec4<i32>(-(~_wgslsmith_sub_i32(global1.a, var_1.x)), u_input.b, -59667i, 39897i);
    return Struct_5(_wgslsmith_f_op_f32(-var_2.d.x), var_2.b, var_2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-476f, var_2.b.b)), var_2.d)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.b.a, 1184f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.x, var_2.d.x))), true)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-639f, var_2.d.x))))))));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> f32 {
    let var_0 = func_5(~vec2<u32>(~min(1u, global1.c.x), u_input.a), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -339f))), func_2()), _wgslsmith_div_i32(u_input.b, 22629i));
    var var_1 = countOneBits(countOneBits(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(~u_input.a, 22u)], firstLeadingBit(~global0[_wgslsmith_index_u32(4294967295u, 22u)]))));
    let var_2 = vec4<bool>(true, -arg_1.x >= -11785i, var_0.c.x, !func_2().a.x);
    var var_3 = func_2();
    global0 = array<vec4<u32>, 22>();
    return _wgslsmith_f_op_f32(f32(-1f) * -914f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1578f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(step(1105f, 1136f)), vec4<i32>(global1.a, u_input.b, u_input.b, -57162i) >> (global0[_wgslsmith_index_u32(0u, 22u)] % vec4<u32>(32u))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(834f + -498f)) - _wgslsmith_f_op_f32(step(490f, _wgslsmith_f_op_f32(round(-524f)))))));
    global1 = Struct_2(~firstTrailingBit(~_wgslsmith_sub_i32(1i, 4044i)), vec4<u32>(reverseBits(_wgslsmith_mod_u32(global1.e, ~33460u)), reverseBits(_wgslsmith_add_u32(min(u_input.a, 4294967295u), global1.e)), 1u, ~(~(u_input.a | 13870u))), firstTrailingBit(~(~func_5(vec2<u32>(global1.e, 4560u), Struct_2(0i, global0[_wgslsmith_index_u32(u_input.a, 22u)], global1.c, 0u, u_input.a), u_input.b).b.c)), u_input.a | 17950u, global1.e);
    var_0 = func_5(func_4(_wgslsmith_f_op_f32(floor(906f)), Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(true, true, true))).c, Struct_2(-2147483647i, max(vec4<u32>(15358u, global1.d, 27187u, 0u) | global0[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.e, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, 12458u, 95087u, 4190u), vec4<u32>(global1.c.x, global1.c.x, 0u, u_input.a))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.d, global1.e, 0u, 62652u), global1.b, vec4<u32>(global1.d, 4294967295u, u_input.a, 16830u)) % vec4<u32>(32u)), ~global1.b.zy, u_input.a & ~global1.b.x, ~(~_wgslsmith_div_u32(75041u, 4294967295u))), 2147483647i).d.x;
    var var_1 = func_2();
    var var_2 = Struct_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1409f + _wgslsmith_f_op_f32(1927f - _wgslsmith_f_op_f32(f32(-1f) * -1467f))))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(524f + _wgslsmith_f_op_f32(f32(-1f) * -1109f))), 1096f, max(vec2<u32>(0u, func_5(global1.c, Struct_2(-21032i, vec4<u32>(global1.c.x, global1.b.x, u_input.a, 0u), global2[_wgslsmith_index_u32(global1.b.x, 17u)], 73511u, 11312u), u_input.b).b.c.x), global2[_wgslsmith_index_u32(~global1.c.x, 17u)])), vec3<bool>(false && var_1.a.x, (func_2().a.x && any(vec2<bool>(true, var_1.a.x))) && true, any(vec4<bool>(false, var_1.b.x, all(vec2<bool>(false, true)), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(2061f)), _wgslsmith_f_op_f32(floor(-2524f))))));
    var_0 = var_2.b.b;
    global3 = true;
    var_2 = func_5(~abs(_wgslsmith_clamp_vec2_u32(min(vec2<u32>(u_input.a, 1u), global1.b.yx), max(vec2<u32>(u_input.a, global1.b.x), var_2.b.c), select(vec2<u32>(10316u, global1.c.x), var_2.b.c, false))), func_4(627f, func_2()), -1646i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -vec3<i32>(2147483647i, global1.a, _wgslsmith_clamp_i32(0i, -2147483647i, u_input.b)), vec4<i32>(select(~u_input.b, -1i << (var_2.b.c.x % 32u), !func_5(var_2.b.c, Struct_2(1i, vec4<u32>(u_input.a, var_2.b.c.x, var_2.b.c.x, 31364u), var_2.b.c, var_2.b.c.x, global1.d), -1i).c.x), 20836i, -2147483647i, u_input.b << (56366u % 32u)), _wgslsmith_clamp_i32(-(~_wgslsmith_add_i32(u_input.b, u_input.b)), 2126i, global1.a));
}

