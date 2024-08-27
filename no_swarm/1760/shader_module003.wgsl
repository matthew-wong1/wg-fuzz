struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(1u, 0u, 5442u, 66450u), vec4<u32>(1u, 1u, 4294967295u, 53108u), vec4<u32>(1u, 0u, 82263u, 30916u), vec4<u32>(1057u, 19330u, 43021u, 4294967295u), vec4<u32>(0u, 1u, 78018u, 4294967295u), vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(119012u, 1u, 44706u, 1u), vec4<u32>(4294967295u, 0u, 0u, 42675u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    let var_0 = 23711i;
    let var_1 = Struct_1(select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 447f)))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(var_0), _wgslsmith_mult_i32(-40769i, 0i), -21646i), _wgslsmith_add_vec3_i32(u_input.a.wyy, u_input.a.xwz)), _wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.a.x >> (1u % 32u), (var_0 & u_input.a.x) << (43655u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, var_0), -vec3<i32>(2147483647i, u_input.a.x, var_0)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-35179i, 2147483647i, var_0), u_input.a.wyw), u_input.a.x ^ -17290i)), u_input.a, ~vec4<i32>(65260i, -27643i, ~var_0, 0i)));
    var var_2 = var_1;
    return -457f;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_1(!(!select(vec2<bool>(arg_0.x, true), !arg_0, vec2<bool>(false, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1016f * arg_1.x), arg_1.x, false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.x, arg_1.x))), _wgslsmith_div_u32(22710u, u_input.c.x) <= _wgslsmith_mod_u32(u_input.c.x, u_input.d))))), _wgslsmith_dot_vec4_i32(-vec4<i32>(countOneBits(16929i), _wgslsmith_mult_i32(u_input.a.x, 30903i), min(27082i, -34514i), ~u_input.a.x), vec4<i32>(u_input.a.x, 1i, -2147483647i, -(i32(-1i) * -1i))), u_input.a);
    var_0 = Struct_1(vec2<bool>(true || !arg_0.x, any(select(vec3<bool>(true, arg_0.x, true), vec3<bool>(var_0.a.x, arg_0.x, true), vec3<bool>(false, false, var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_1.x)), var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(767f * -1895f))))), -_wgslsmith_mult_i32(var_0.d.x, 2147483647i), vec4<i32>(u_input.a.x, 22348i, 24232i, -2147483647i));
    let var_1 = arg_1;
    global0 = array<vec4<u32>, 8>();
    let var_2 = arg_0.x;
    return Struct_2(!all(select(vec4<bool>(false, true, var_2, false), !vec4<bool>(false, true, arg_0.x, false), var_0.a.x)), 42366i, ~(~(31519u << (0u % 32u))) << (u_input.c.x % 32u), _wgslsmith_mult_vec4_u32(max(u_input.b, ~(~u_input.c)), ~select(min(vec4<u32>(7118u, 0u, 27364u, u_input.c.x), vec4<u32>(4294967295u, 61964u, u_input.c.x, u_input.b.x)), firstLeadingBit(vec4<u32>(30986u, u_input.b.x, 2694u, u_input.d)), vec4<bool>(false, true, var_0.a.x, false))));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -163f), _wgslsmith_f_op_f32(f32(-1f) * -672f), 1307f, _wgslsmith_f_op_f32(-1f)))));
    var var_1 = Struct_1(!select(vec2<bool>(arg_1.a, false), !vec2<bool>(arg_1.a, false), !select(vec2<bool>(true, false), vec2<bool>(arg_1.a, false), true)), var_0.x, ~0i, ~firstTrailingBit(u_input.a >> (arg_1.d % vec4<u32>(32u))));
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(452f, var_1.b), -553f))) + -718f), var_1.c, ~(-_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(-2147483647i, arg_0, arg_0, arg_0)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 0i, -1i, 1i), vec4<i32>(arg_0, 2147483647i, var_1.c, arg_0)))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.b)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(-590f, var_0.x)), var_0.x, 1502f);
    let var_3 = vec4<bool>(var_1.a.x, any(vec3<bool>(var_1.a.x, any(vec4<bool>(true, arg_1.a, var_1.a.x, var_1.a.x)), select(true, true, !arg_1.a))), all(vec4<bool>(true, true, arg_1.a | true, 1u <= ~arg_1.c)), true);
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = Struct_1(!select(vec2<bool>(!arg_0.a, true), !select(vec2<bool>(arg_1.a, true), vec2<bool>(arg_1.a, false), vec2<bool>(false, false)), select(select(vec2<bool>(arg_0.a, false), vec2<bool>(true, false), vec2<bool>(arg_1.a, arg_1.a)), vec2<bool>(arg_1.a, false), vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-121f - -133f) - -714f) * _wgslsmith_f_op_f32(-1f)), 18575i, vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a.x, arg_1.b), ~u_input.a.xx), firstLeadingBit(u_input.a.xz)), 2147483647i, abs(arg_1.b), i32(-1i) * -7620i));
    global0 = array<vec4<u32>, 8>();
    var var_1 = !var_0.a;
    var var_2 = true;
    var_1 = select(vec2<bool>(var_0.a.x, true), vec2<bool>(true, true), 4294967295u == u_input.b.x);
    return !var_0.a;
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.b.zy;
    var var_1 = Struct_2(!(!any(vec4<bool>(false, false, true, false))), 46661i, var_0.x, u_input.b);
    let var_2 = Struct_1(func_5(func_4(u_input.a.x | (u_input.a.x >> (1u % 32u)), func_2(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-877f, 524f)))), Struct_2(false, ~(-75465i), func_4(-2147483647i, func_4(11645i, Struct_2(var_1.a, var_1.b, var_0.x, vec4<u32>(3480u, u_input.d, var_0.x, var_1.c)))).c, var_1.d)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1321f))), _wgslsmith_f_op_f32(-203f + _wgslsmith_f_op_f32(sign(1000f))))), -64031i, _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(1i, u_input.a.x, 10736i, 40445i))), var_1.b, _wgslsmith_clamp_i32(u_input.a.x ^ 34036i, _wgslsmith_dot_vec2_i32(vec2<i32>(36852i, -2147483647i), vec2<i32>(22672i, var_1.b)), abs(u_input.a.x)), i32(-1i) * -14527i), vec4<i32>(-u_input.a.x, abs(-var_1.b), 6979i, -(-38607i | u_input.a.x)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(5649i, 1i, u_input.a.x, 3447i), vec4<i32>(var_1.b, u_input.a.x, -1i, 0i), vec4<bool>(var_1.a, false, var_1.a, true)), u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, var_1.b, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, -6665i, u_input.a.x, var_1.b)))));
    var var_3 = u_input.c.ww;
    var var_4 = (select(select(vec4<u32>(58044u, 0u, var_0.x, var_3.x), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, 55380u, 46144u), u_input.b), !vec4<bool>(var_1.a, true, false, var_1.a)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.d.x, var_0.x, 0u, u_input.d), vec4<u32>(u_input.b.x, var_1.d.x, var_3.x, 1u)), any(!vec2<bool>(var_1.a, var_1.a))) | ~reverseBits(~global0[_wgslsmith_index_u32(var_1.c, 8u)])) << (vec4<u32>(_wgslsmith_mult_u32((0u >> (var_0.x % 32u)) >> (_wgslsmith_mult_u32(12479u, var_1.c) % 32u), _wgslsmith_div_u32(var_1.d.x, 47446u) & 33500u), min(max(16663u << (var_1.d.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, 4294967295u, var_1.d.x), u_input.c.xyx)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(793u, 4294967295u), var_0), ~4294967295u)), var_1.d.x, 1u) % vec4<u32>(32u));
    return func_2(vec2<bool>(var_2.a.x, func_4(_wgslsmith_add_i32(u_input.a.x, var_1.b), Struct_2(true, var_1.b, var_4.x, vec4<u32>(1u, var_4.x, u_input.b.x, 41588u))).c >= ~_wgslsmith_mod_u32(4294967295u, 7325u)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(685f, -388f, var_2.a.x)), _wgslsmith_f_op_f32(var_2.b * 470f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(200f, -841f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 5012i;
    global0 = array<vec4<u32>, 8>();
    var var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32((vec3<i32>(40701i, u_input.a.x, u_input.a.x) ^ ~u_input.a.xyz) & firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, -33389i)), ~_wgslsmith_mult_vec3_i32(u_input.a.yyz, u_input.a.wwy >> (u_input.b.wyw % vec3<u32>(32u)))), max(min(-countOneBits(vec3<i32>(-1i, u_input.a.x, u_input.a.x)), u_input.a.yzz), u_input.a.zyx));
    var var_2 = func_1();
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1316f, 526f, 3033f)))))) + vec4<f32>(772f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -572f), -587f)), -1033f, 1000f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(1074f)), _wgslsmith_f_op_f32(559f + 1580f), -1168f, _wgslsmith_f_op_f32(-2441f + 761f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-911f, 1264f, 751f, -1250f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(102f, 1060f, 1327f, -201f), vec4<f32>(988f, 872f, -636f, 324f))), !vec4<bool>(false, var_2.a, var_2.a, true))))));
    let var_4 = vec4<bool>(true, !(!var_2.a != func_1().a), !var_2.a, var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3()), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(4565u, 25104u)), var_2.d.yw), u_input.c.wy));
}

