struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(10009i, 47063i, 2147483647i);

var<private> global1: vec4<u32> = vec4<u32>(0u, 1u, 0u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: f32, arg_3: u32) -> bool {
    let var_0 = arg_1.a.wwx;
    global1 = arg_0;
    let var_1 = !vec4<bool>(!all(vec3<bool>(true, true, true)), !(arg_0.x < ~4294967295u), true, false);
    global0 = array<i32, 3>();
    let var_2 = select(u_input.b.yzx, _wgslsmith_div_vec3_u32(arg_0.wwy, ~vec3<u32>(1u, ~arg_3, _wgslsmith_clamp_u32(34638u, arg_3, arg_0.x))), select(!select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, var_1.x, var_1.x), var_1.x), vec3<bool>(false, false, var_1.x), var_1.wxy), !(!var_1.xyy), !(!(var_1.x != false))));
    return var_1.x;
}

fn func_2() -> Struct_1 {
    var var_0 = select(select(vec4<bool>(true & func_3(vec4<u32>(global1.x, u_input.b.x, 32300u, u_input.b.x), Struct_3(vec4<f32>(771f, 1000f, -943f, -1107f), Struct_2(Struct_1(-122f), Struct_1(680f), u_input.b.x), -583f), -108f, 4294967295u), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false)), all(vec4<bool>(false, true, true, true)) & any(vec2<bool>(true, false)), any(vec2<bool>(true, true))), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, true, true), true);
    var_0 = select(select(!(!(!vec4<bool>(var_0.x, false, var_0.x, var_0.x))), vec4<bool>(!select(var_0.x, true, var_0.x), var_0.x == true, _wgslsmith_sub_i32(1i, u_input.d.x) >= _wgslsmith_mod_i32(u_input.d.x, -1i), !(global1.x < u_input.b.x)), select(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(true, true, var_0.x, true)), select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), true)), select(select(!vec4<bool>(var_0.x, true, var_0.x, false), select(vec4<bool>(true, true, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), false), var_0.x == var_0.x), vec4<bool>(true, true, var_0.x, all(select(var_0.yy, var_0.wz, var_0.x))), vec4<bool>(true, true, true, var_0.x)), select(!select(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), !vec4<bool>(true, false, var_0.x, false), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(false, false, var_0.x, var_0.x), false)), !vec4<bool>(true, !var_0.x, true, false), vec4<bool>(var_0.x, true, !select(true, var_0.x, false), !(81541i != u_input.a.x))));
    let var_1 = -243f;
    var var_2 = vec3<bool>(select(false, select(false, true, true), true), (-158f > var_1) != all(!(!var_0.xw)), true);
    global1 = ~vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b) & max(firstTrailingBit(4294967295u), max(u_input.b.x, global1.x)), ~countOneBits(_wgslsmith_mod_u32(u_input.b.x, 59100u)), firstTrailingBit(1u));
    return Struct_1(_wgslsmith_f_op_f32(-210f * var_1));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1303f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-862f)))))));
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(floor(840f));
    var var_3 = firstLeadingBit(_wgslsmith_div_vec4_i32(~(_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], u_input.d.x, -1i), vec4<i32>(-1i, 37325i, u_input.c, global0[_wgslsmith_index_u32(global1.x, 3u)])) << (firstLeadingBit(u_input.b) % vec4<u32>(32u))), vec4<i32>(-51960i, -13756i, u_input.a.x, i32(-1i) * -18993i) & ~(~vec4<i32>(58916i, -1i, -2147483647i, -25912i))));
    global1 = u_input.b;
    return Struct_2(var_1, var_1, u_input.b.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = 1083f;
    var_0 = _wgslsmith_f_op_f32(-arg_1.a);
    var_0 = -771f;
    var var_1 = !select(vec2<bool>(all(vec4<bool>(true, true, false, false)) != false, func_3(vec4<u32>(113867u, 38697u, 3758u, u_input.b.x), Struct_3(arg_0.a, arg_0.b, arg_0.a.x), _wgslsmith_f_op_f32(max(arg_1.a, 149f)), 26545u)), select(vec2<bool>(true, true), vec2<bool>(-9152i > u_input.c, any(vec2<bool>(false, true))), select(true, true, true)), -133f >= _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.a.x, arg_1.a), arg_0.c));
    var_0 = 2458f;
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32) -> Struct_2 {
    global1 = _wgslsmith_mod_vec4_u32(max(~_wgslsmith_clamp_vec4_u32(u_input.b, ~vec4<u32>(u_input.b.x, 4294967295u, global1.x, global1.x), u_input.b), u_input.b), vec4<u32>(u_input.b.x, reverseBits(_wgslsmith_mult_u32(global1.x, u_input.b.x) ^ 64947u), ~_wgslsmith_clamp_u32(1u, ~32028u, global1.x), ~(4294967295u >> (abs(global1.x) % 32u))));
    var var_0 = vec3<bool>(-1i == _wgslsmith_clamp_i32(abs(_wgslsmith_div_i32(u_input.c, u_input.a.x)), global0[_wgslsmith_index_u32(~u_input.b.x, 3u)], global0[_wgslsmith_index_u32(max(global1.x, global1.x), 3u)]), !all(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), select(true, true, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 1u), 3u)], -47929i) == abs(-global0[_wgslsmith_index_u32(4294967295u, 3u)])));
    var var_1 = select(var_0.xy, vec2<bool>(true, false), vec2<bool>(false, any(select(!var_0.yz, vec2<bool>(var_0.x, true), var_0.x))));
    var var_2 = vec2<i32>(min(_wgslsmith_mod_i32(1i, firstLeadingBit(_wgslsmith_clamp_i32(u_input.a.x, -2147483647i, u_input.c))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_div_u32(u_input.b.x, 69896u), _wgslsmith_dot_vec3_u32(firstLeadingBit(global1.xzw), _wgslsmith_div_vec3_u32(u_input.b.wxy, global1.yxw))), 3u)]), u_input.a.x);
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2 * arg_2), _wgslsmith_div_f32(arg_2, -201f), arg_1.x, _wgslsmith_f_op_f32(1168f * -502f)), vec4<f32>(-1014f, arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -727f), _wgslsmith_f_op_f32(-arg_1.x)))), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x))))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1299f, -602f, 385f))), func_1(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1437f * -681f) - -1422f)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(940f))))), func_1().b, reverseBits(vec3<i32>(1i, u_input.c, 19069i))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1230f, 1561f, -987f) + vec3<f32>(1887f, -895f, 1499f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1613f, 1425f, -234f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(141f, _wgslsmith_f_op_f32(ceil(-231f)), 1000f))))), _wgslsmith_f_op_f32(-319f * _wgslsmith_f_op_f32(abs(-429f))));
    global1 = vec4<u32>(21266u, 60895u, ~_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.b.zy, vec2<u32>(global1.x, global1.x)), ~(global1.zz >> (u_input.b.yz % vec2<u32>(32u)))), global1.x);
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -494f)) + -1796f)), var_0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(~global1.x, firstLeadingBit(func_5(Struct_1(var_0.b.a), vec3<f32>(var_0.b.a, -198f, -1143f), -1333f).c), u_input.b.x | global1.x, ~global1.x ^ var_0.c), ~_wgslsmith_add_vec4_u32(select(u_input.b, u_input.b, vec4<bool>(true, false, true, false)), ~u_input.b)));
    let var_1 = Struct_3(vec4<f32>(-533f, var_0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.a, _wgslsmith_f_op_f32(max(1000f, var_0.a.a)))), 1000f), Struct_2(var_0.b, var_0.b, 66089u), -1024f);
    var var_2 = var_0.b;
    let var_3 = func_3(_wgslsmith_div_vec4_u32(min(u_input.b, u_input.b) & u_input.b, vec4<u32>(_wgslsmith_dot_vec2_u32(global1.wy & global1.yx, ~u_input.b.ww), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, var_0.c, global1.x, var_0.c), select(vec4<u32>(var_1.b.c, 69879u, 0u, 21092u), u_input.b, true)), firstLeadingBit(~1u), ~27974u)), Struct_3(vec4<f32>(var_0.a.a, -694f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -1018f), true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_2.a))))), var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.b.a.a, 188f)), _wgslsmith_f_op_f32(f32(-1f) * -231f))), -449f, 0u);
    let var_4 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4206u, 21684u, 76480u), u_input.b & u_input.b), ~func_5(Struct_1(1748f), vec3<f32>(1262f, 1186f, var_0.b.a), 1000f).c, 17822u), ~vec3<u32>(_wgslsmith_sub_u32(global1.x, 2475u), ~46666u, var_0.c)) ^ ~(~vec3<u32>(var_1.b.c << (var_1.b.c % 32u), global1.x ^ 33390u, reverseBits(6125u)));
    let var_5 = !select(vec4<bool>(var_0.b.a >= func_1().a.a, false, true, true), select(!select(vec4<bool>(true, var_3, var_3, var_3), vec4<bool>(var_3, true, var_3, var_3), var_3), !select(vec4<bool>(false, var_3, true, true), vec4<bool>(false, true, var_3, var_3), vec4<bool>(var_3, true, var_3, var_3)), true), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-230f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a)))), _wgslsmith_f_op_f32(round(-432f))));
}

