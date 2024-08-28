struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1() -> i32 {
    var var_0 = u_input.c;
    return _wgslsmith_add_i32(~2147483647i, countOneBits(u_input.d | 29821i));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = Struct_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true, vec4<u32>(0u, _wgslsmith_mult_u32(select(reverseBits(1u), u_input.c, true), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(30925u, u_input.a.x, u_input.c, u_input.a.x), u_input.a), ~26341u)), ~1u | _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(~u_input.a, u_input.a)));
    let var_1 = all(select(select(select(vec3<bool>(false, var_0.b, true), vec3<bool>(true, var_0.a, false), var_0.a), select(vec3<bool>(var_0.b, var_0.b, var_0.a), vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(var_0.b, var_0.a, var_0.a)), select(vec3<bool>(false, true, var_0.b), vec3<bool>(true, var_0.a, false), vec3<bool>(var_0.a, true, var_0.a))), select(vec3<bool>(var_0.b, var_0.a, true), !vec3<bool>(false, var_0.b, var_0.b), all(vec3<bool>(false, false, false))), vec3<bool>(all(vec3<bool>(false, false, true)), false, var_0.a))) & true;
    let var_2 = Struct_3(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.d, -1i, -2147483647i, -1i), max(vec4<i32>(u_input.b, -71679i, 1847i, u_input.b), vec4<i32>(u_input.b, -7332i, -2147483647i, -6493i))), vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-15065i, 0i, u_input.d), vec3<i32>(u_input.b, u_input.b, -27512i)), func_1(), abs(-2147483647i))), 1i, 0i, _wgslsmith_mod_i32(23651i, max(u_input.b, u_input.d)) << (_wgslsmith_dot_vec4_u32(u_input.a, firstTrailingBit(vec4<u32>(4294967295u, 0u, var_0.c.x, 28402u))) % 32u)), ~vec3<u32>(var_0.c.x, var_0.c.x, ~(~52099u)), ~u_input.b, Struct_1(false, all(select(select(vec2<bool>(var_1, var_1), vec2<bool>(false, var_1), vec2<bool>(var_0.b, true)), vec2<bool>(true, true), !vec2<bool>(var_1, true))), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c.x, u_input.c, var_0.c.x, var_0.c.x), max(vec4<u32>(4294967295u, var_0.c.x, 51361u, u_input.a.x) | var_0.c, u_input.a), vec4<u32>(u_input.a.x << (14561u % 32u), 1u, 60153u, u_input.c))));
    let var_3 = var_2.a.xwz;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - -616f) + _wgslsmith_f_op_f32(-arg_0))) * arg_0), arg_0, arg_0);
    return !var_1;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.a.wyz, ~max(abs(u_input.a.wxy), select(u_input.a.zzx, vec3<u32>(u_input.a.x, 0u, 1u), true))), _wgslsmith_sub_u32(88929u, 1u), u_input.c);
    var var_1 = Struct_3(vec4<i32>(u_input.d, select(~(u_input.b ^ 0i), abs(abs(-60160i)), func_3(_wgslsmith_div_f32(1601f, 137f))), ~func_1() >> (var_0 % 32u), -1i), u_input.a.xyw, u_input.d, Struct_1(true, true, ~(~(~vec4<u32>(38267u, 1u, 17259u, 1u)))));
    var var_2 = -355f;
    var var_3 = var_1.d.b;
    var_3 = var_1.d.b;
    return Struct_2(-1000f, Struct_1(any(!(!vec3<bool>(var_1.d.b, var_1.d.a, true))), (firstTrailingBit(var_0) >> (~var_1.b.x % 32u)) != select(u_input.a.x, 44938u, var_1.d.a), vec4<u32>(~(~u_input.a.x), min(u_input.a.x, 14636u & u_input.c), var_0, max(reverseBits(1u), 42127u))), _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_div_i32(-1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, var_1.c, -17826i), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, var_1.a.x, -43796i), vec4<i32>(var_1.c, u_input.d, u_input.b, u_input.b)))), Struct_1(true, all(vec4<bool>(!var_1.d.a, 1i >= var_1.c, true, true)), _wgslsmith_mult_vec4_u32(var_1.d.c ^ var_1.d.c, ~var_1.d.c) | _wgslsmith_add_vec4_u32(~vec4<u32>(8593u, 1u, var_1.d.c.x, var_1.b.x), vec4<u32>(6193u, 45987u, u_input.a.x, u_input.c))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_3 {
    var var_0 = -13864i;
    let var_1 = select(!(!(!vec2<bool>(arg_0.e.a, arg_1.d.a))), vec2<bool>(true && !all(vec4<bool>(arg_0.b.a, arg_1.d.a, arg_0.b.b, arg_0.b.b)), func_3(651f)), func_2().b.b);
    let var_2 = func_2();
    var var_3 = vec4<bool>(any(select(!select(vec3<bool>(arg_0.e.a, true, true), vec3<bool>(arg_1.d.a, var_1.x, var_2.b.b), arg_1.d.a), vec3<bool>(!arg_1.d.b, var_2.e.b, true), vec3<bool>(arg_2.x > 36652u, arg_0.a != arg_0.a, !arg_1.d.a))), any(select(vec3<bool>(true, true, arg_0.b.a), vec3<bool>(func_3(-270f), select(arg_1.d.b, true, false), func_2().b.b), var_2.e.a)), all(select(!select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, false, true), var_2.b.a), !vec3<bool>(arg_0.e.a, var_1.x, false), arg_1.d.b)), true);
    var_3 = !select(!select(vec4<bool>(true, false, var_2.b.b, true), !vec4<bool>(var_3.x, arg_0.e.a, var_1.x, true), var_1.x || arg_1.d.b), vec4<bool>(all(!var_1), false, var_1.x, all(vec2<bool>(true, true)) || true), select(select(vec4<bool>(false, false, var_2.b.a, arg_1.d.b), select(vec4<bool>(var_2.e.a, true, false, true), vec4<bool>(arg_1.d.a, arg_0.b.a, true, arg_0.b.b), arg_0.b.a), true), vec4<bool>(var_1.x, !arg_1.d.b, true, u_input.b <= 2147483647i), func_2().b.a | select(var_1.x, false, true)));
    return Struct_3(max(arg_1.a, ~arg_1.a), select(~vec3<u32>(arg_0.b.c.x, 1u, 4294967295u), vec3<u32>(var_2.e.c.x, 50606u, select(var_2.e.c.x, arg_1.b.x, arg_1.d.a) & 1u), !var_3.xxz), arg_1.c, var_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-267f, 929f, -1241f), vec3<f32>(285f, -1054f, -519f), vec3<bool>(true, true, false))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(543f, -331f, 182f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(338f, 1093f, -412f), vec3<f32>(1000f, -627f, 102f))))) + vec3<f32>(1f, 1f, 1f)));
    let var_1 = max(~(~vec3<i32>(-2147483647i >> (1u % 32u), _wgslsmith_add_i32(8866i, u_input.b), 2147483647i)), vec3<i32>(~func_1(), max(u_input.d, -u_input.b), 6651i ^ u_input.b));
    let var_2 = func_4(func_2(), Struct_3(-vec4<i32>(var_1.x, u_input.d, var_1.x, _wgslsmith_add_i32(-3058i, 6835i)), vec3<u32>(u_input.a.x, 24663u, _wgslsmith_add_u32(0u, ~0u)), _wgslsmith_div_i32(~(~0i), func_1()), func_2().b), vec3<u32>(~u_input.a.x, ~(~u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.xwz, u_input.a.zwz), firstLeadingBit(1u)), firstTrailingBit(~u_input.a.yy))));
    var_0 = vec3<f32>(742f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), var_0.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) - 1687f) - var_0.x);
    let var_4 = select(select(select(vec4<bool>(var_2.d.b, u_input.d >= var_2.a.x, !var_2.d.b, var_2.d.a), vec4<bool>(!var_2.d.b, true, var_2.d.b, false), !select(var_2.d.b, var_2.d.a, false)), select(select(vec4<bool>(true, var_2.d.b, var_2.d.b, var_2.d.a), !vec4<bool>(var_2.d.b, true, false, false), select(vec4<bool>(true, var_2.d.a, false, var_2.d.a), vec4<bool>(false, true, var_2.d.b, var_2.d.b), var_2.d.a)), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, var_2.d.b, var_2.d.a, true), vec4<bool>(var_2.d.a, false, false, true), false)), !vec4<bool>(true, true, all(vec2<bool>(true, var_2.d.a)), var_0.x <= 662f)), vec4<bool>(!all(!vec2<bool>(var_2.d.b, var_2.d.b)), (countOneBits(u_input.a.x) ^ u_input.c) <= u_input.c, var_2.d.b, all(vec2<bool>(true, true))), func_4(Struct_2(_wgslsmith_f_op_f32(-906f + var_0.x), func_2().e, var_0.x, ~_wgslsmith_sub_i32(2147483647i, 1i), func_2().b), Struct_3(var_2.a, vec3<u32>(u_input.c, var_2.b.x, 1u), ~(-2147483647i >> (1u % 32u)), Struct_1(true, var_2.d.a, select(vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(var_2.b.x, 83821u, u_input.c, u_input.a.x), vec4<bool>(false, true, true, false)))), select(vec3<u32>(5429u ^ u_input.a.x, ~50051u, ~u_input.c), max(~vec3<u32>(24732u, u_input.a.x, var_2.b.x), u_input.a.wwy), true)).d.a);
    var var_5 = _wgslsmith_clamp_u32(var_2.b.x, _wgslsmith_sub_u32(~(~reverseBits(var_2.d.c.x)), var_2.b.x), 20429u);
    var_5 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.b, u_input.d), max(vec2<i32>(2147483647i, var_1.x), vec2<i32>(-16787i, 2147483647i) << (var_2.b.zy % vec2<u32>(32u))), ~(-vec2<i32>(1i, var_1.x))), _wgslsmith_mod_vec2_i32(~abs(var_1.yz), _wgslsmith_mult_vec2_i32(vec2<i32>(var_2.a.x, -2147483647i), -vec2<i32>(-1i, -965i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 1371f) * -413f) >= _wgslsmith_f_op_f32(-func_2().c)), ~_wgslsmith_mod_u32(u_input.a.x << (0u % 32u), var_2.d.c.x), vec3<u32>(~0u, var_2.b.x, u_input.a.x));
}

