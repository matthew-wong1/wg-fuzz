struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -885f;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(29926u, 75638u, 4294967295u), 2479f, 4294967295u, vec3<u32>(77073u, 27068u, 9573u), vec3<i32>(11900i, 1i, -28746i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    let var_0 = !select(0u < _wgslsmith_add_u32(global1.a.x, global1.c), true, all(vec3<bool>(false, false, false)) & all(vec4<bool>(false, true, true, false))) & ((0i << ((_wgslsmith_dot_vec2_u32(global1.d.zz, vec2<u32>(global1.c, 0u)) | (global1.a.x & global1.d.x)) % 32u)) <= _wgslsmith_div_i32(-6509i, -67658i));
    global0 = _wgslsmith_f_op_f32(round(1330f));
    let var_1 = Struct_1(firstTrailingBit(vec3<u32>(33608u, global1.a.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(104019u, 1u, global1.d.x, 23247u), vec4<u32>(global1.a.x, global1.a.x, 73979u, 4294967295u)), 1u))), -1563f, global1.a.x >> (0u % 32u), ~(~reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(8747u, global1.a.x, 35924u), vec3<u32>(global1.a.x, global1.a.x, global1.a.x)))), global1.e);
    let var_2 = _wgslsmith_div_i32(abs(-(~min(-2147483647i, var_1.e.x))), _wgslsmith_dot_vec4_i32(-(-vec4<i32>(u_input.a, 0i, 21250i, var_1.e.x) | firstLeadingBit(vec4<i32>(var_1.e.x, 2147483647i, global1.e.x, u_input.b))), vec4<i32>(~(global1.e.x >> (62196u % 32u)), reverseBits(1i) ^ var_1.e.x, -18646i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, u_input.a), -global1.e))));
    var var_3 = var_1;
    return _wgslsmith_f_op_f32(trunc(-280f));
}

fn func_2() -> Struct_2 {
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(-336f - _wgslsmith_f_op_f32(func_3())), ~_wgslsmith_mod_u32(global1.a.x, ~1u), global1.d, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-u_input.b, -42622i, u_input.a | global1.e.x), 763i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, u_input.b), -1364i << (global1.a.x % 32u))), global1.e >> (~select(global1.d, global1.a, vec3<bool>(true, true, false)) % vec3<u32>(32u))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-205f, global1.b, -282f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.b, -363f, global1.b))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(117f, global1.b, -749f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(global1.b, global1.b, global1.b), vec3<f32>(global1.b, global1.b, -1604f))))))));
    var var_1 = Struct_3(select(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true))), vec4<bool>(all(vec2<bool>(false, true)), true, u_input.b > u_input.b, true), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), any(vec3<bool>(false, true, true))), abs(global1.d.x) != global1.d.x)), Struct_2(Struct_1(select(abs(vec3<u32>(global1.d.x, global1.c, 42327u)), max(vec3<u32>(global1.c, global1.a.x, 36985u), global1.d), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(789f + var_0.x), global1.a.x, vec3<u32>(0u, abs(1u), 40787u), vec3<i32>(-1i, u_input.b, global1.e.x) ^ global1.e), _wgslsmith_f_op_f32(-var_0.x)));
    var var_2 = Struct_4(var_1.b.a, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(select(20008i, global1.e.x, var_1.a.x), 63769i), global1.e.x, -1i & -u_input.b, _wgslsmith_div_i32(~(-6773i), _wgslsmith_dot_vec2_i32(var_1.b.a.e.yx, var_1.b.a.e.xy))), ~_wgslsmith_mult_vec4_i32(min(vec4<i32>(u_input.a, -34450i, var_1.b.a.e.x, global1.e.x), vec4<i32>(2147483647i, 1i, -14363i, 0i)), ~vec4<i32>(-62983i, global1.e.x, global1.e.x, global1.e.x))), -(vec2<i32>(var_1.b.a.e.x ^ u_input.a, global1.e.x) << (_wgslsmith_add_vec2_u32(global1.a.xx, vec2<u32>(global1.a.x, 0u)) % vec2<u32>(32u))), var_1.b, _wgslsmith_f_op_f32(-global1.b));
    var var_3 = var_2.a;
    return var_2.d;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> bool {
    let var_0 = firstLeadingBit(max(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(arg_0.d.x, 1u)), min(vec2<u32>(global1.a.x, global1.a.x), max(vec2<u32>(0u, arg_0.d.x), vec2<u32>(4294967295u, arg_1)))), arg_3.a.d.yz));
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec4_i32(countOneBits(min(vec4<i32>(global1.e.x, arg_0.e.x, u_input.a, -30622i), vec4<i32>(0i, 1i, 0i, arg_3.a.e.x))), vec4<i32>(_wgslsmith_mod_i32(global1.e.x, -1i), arg_3.a.e.x, -global1.e.x, 22739i >> (var_0.x % 32u)))), _wgslsmith_dot_vec2_i32(vec2<i32>(~_wgslsmith_mult_i32(u_input.a, u_input.b), abs(abs(u_input.a))), vec2<i32>(i32(-1i) * -global1.e.x, -(3275i | arg_0.e.x))));
    let var_2 = func_2().a;
    var var_3 = Struct_3(!(!(!(!vec4<bool>(arg_2, false, arg_2, arg_2)))), Struct_2(arg_3.a, _wgslsmith_f_op_f32(-arg_3.b)));
    let var_4 = var_3.b.a;
    return var_3.a.x;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32) -> bool {
    let var_0 = -countOneBits(vec2<i32>(abs(global1.e.x) << (_wgslsmith_sub_u32(57417u, global1.d.x) % 32u), 1i));
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(var_0.x >> (~_wgslsmith_mult_u32(1u, 100606u) % 32u), abs(~global1.e.x) >> ((~global1.d.x ^ global1.d.x) % 32u)));
    var var_2 = Struct_3(vec4<bool>(true, !func_4(Struct_1(vec3<u32>(0u, 101888u, 28290u), global1.b, global1.d.x, global1.a, vec3<i32>(-36460i, -13778i, 14225i)), 23685u, true, func_2()), any(vec4<bool>(true, true, true, true)), func_4(Struct_1(vec3<u32>(1u, 18712u, 1u), global1.b, global1.c, vec3<u32>(global1.c, global1.d.x, global1.c), global1.e), global1.d.x, func_4(Struct_1(global1.d, arg_2, 0u, global1.a, vec3<i32>(0i, -1i, global1.e.x)), global1.d.x, true, Struct_2(Struct_1(vec3<u32>(8186u, 4294967295u, global1.a.x), 1611f, global1.a.x, global1.a, global1.e), global1.b)), Struct_2(Struct_1(global1.d, arg_2, global1.a.x, vec3<u32>(global1.c, global1.a.x, global1.a.x), vec3<i32>(1i, -2147483647i, global1.e.x)), -962f)) == ((global1.b <= -1398f) | all(vec2<bool>(false, true)))), Struct_2(Struct_1(~global1.a >> (global1.d % vec3<u32>(32u)), arg_2, func_2().a.a.x, global1.a, abs(global1.e)), global1.b));
    var var_3 = var_2.a.xzy;
    global1 = Struct_1(firstLeadingBit(_wgslsmith_mult_vec3_u32(global1.d, vec3<u32>(1u, var_2.b.a.a.x, 7744u))) & vec3<u32>(~reverseBits(global1.c), 5007u, ~global1.c ^ var_2.b.a.c), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_2.b.b, 1474f)), -1255f, -1457f > global1.b))))), abs(_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(4294967295u, abs(4294967295u)))), vec3<u32>(_wgslsmith_sub_u32(0u, global1.a.x), 73269u, _wgslsmith_sub_u32(15490u, select(~29799u, 0u, !var_2.a.x))), -_wgslsmith_sub_vec3_i32(global1.e, global1.e));
    return var_2.a.x & true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(true, true, true), vec3<bool>(!(!any(vec3<bool>(true, false, true))), func_1(u_input.a, firstTrailingBit(abs(2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(925f * 1067f))), -1242f >= _wgslsmith_f_op_f32(abs(global1.b))), any(vec2<bool>(_wgslsmith_f_op_f32(259f + 182f) >= _wgslsmith_f_op_f32(-global1.b), true)));
    let var_1 = select(!var_0.yx, vec2<bool>(-1000f == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(605f, global1.b)), all(!var_0.xz)), false);
    var var_2 = Struct_4(func_2().a, _wgslsmith_mod_i32(-(~firstTrailingBit(global1.e.x)), ~global1.e.x), abs(global1.e.zz), Struct_2(func_2().a, global1.b), 856f);
    let var_3 = 1u;
    var var_4 = vec4<i32>(~1i, -16361i, var_2.a.e.x, u_input.a & 42159i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(5740u, 77792u, var_2.d.a.a.x, 32656u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.c, 6001u, 4294967295u, 14330u) >> (vec4<u32>(0u, var_2.a.c, 1u, 53617u) % vec4<u32>(32u)), ~vec4<u32>(1u, var_3, 1u, 4294967295u), vec4<u32>(60256u, global1.d.x, 4294967295u, 1u) >> (vec4<u32>(1u, 1u, 51019u, var_2.d.a.d.x) % vec4<u32>(32u)))), vec4<u32>(~(~var_3), var_3, countOneBits(_wgslsmith_mult_u32(31333u, var_3)), 0u), select(vec4<u32>(0u, 0u, 1u, 0u), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global1.a.x, 21290u, var_3), vec4<u32>(0u, global1.a.x, var_3, global1.c))), vec4<bool>(var_0.x, func_4(var_2.d.a, 0u, true, var_2.d), all(vec2<bool>(true, var_1.x)), var_1.x))), abs(var_4.x), countOneBits(71467u), _wgslsmith_div_i32(select(var_4.x, ~var_4.x, max(var_3, 4294967295u) < 14354u), var_2.c.x));
}

