struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<i32>(-26229i, -47568i, -1052i, 92i)), Struct_1(vec4<i32>(2147483647i, -1i, 9060i, -1i)), Struct_1(vec4<i32>(-3124i, 1i, 24412i, 31299i)), Struct_1(vec4<i32>(12499i, -1i, 1i, 0i)), Struct_1(vec4<i32>(0i, -71191i, i32(-2147483648), 1i)), Struct_1(vec4<i32>(-17516i, -19826i, i32(-2147483648), 1i)), Struct_1(vec4<i32>(-30973i, 1i, i32(-2147483648), 10033i)), Struct_1(vec4<i32>(-132i, -1i, i32(-2147483648), 35679i)), Struct_1(vec4<i32>(-2813i, -10837i, -36445i, 14134i)), Struct_1(vec4<i32>(i32(-2147483648), 48834i, 0i, 1i)), Struct_1(vec4<i32>(-37605i, 0i, i32(-2147483648), 30807i)), Struct_1(vec4<i32>(11031i, -1i, 1i, -1i)), Struct_1(vec4<i32>(-59429i, 1i, -44196i, -6848i)), Struct_1(vec4<i32>(-51077i, 1i, 70305i, 14775i)), Struct_1(vec4<i32>(-42628i, -1i, 2147483647i, i32(-2147483648))), Struct_1(vec4<i32>(i32(-2147483648), -1i, -1i, -1i)), Struct_1(vec4<i32>(-1i, 2147483647i, i32(-2147483648), 1i)), Struct_1(vec4<i32>(1i, 2147483647i, -9555i, -41659i)), Struct_1(vec4<i32>(1i, 1i, 0i, -1i)), Struct_1(vec4<i32>(2147483647i, 9616i, 38622i, -21884i)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec4<i32>) -> i32 {
    var var_0 = Struct_1(vec4<i32>(firstTrailingBit(abs(~arg_3.x)), _wgslsmith_sub_i32(-(2147483647i >> (u_input.a % 32u)), min(2147483647i, abs(arg_3.x))), arg_3.x, -_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, arg_3.x, arg_3.x, -2147483647i), arg_3)));
    let var_1 = ~(~(~u_input.a));
    var_0 = global0[_wgslsmith_index_u32(1u, 20u)];
    global0 = array<Struct_1, 20>();
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~1u, 0u, var_1, _wgslsmith_mod_u32(1u, var_1)) & vec4<u32>(1u, 992u, 1u, _wgslsmith_mod_u32(var_1, u_input.a)), min(min(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1, var_1, var_1, u_input.a), vec4<u32>(u_input.a, var_1, u_input.a, var_1)), vec4<u32>(3120u, 71533u, u_input.a, var_1)), vec4<u32>(var_1, ~var_1, 0u, _wgslsmith_mod_u32(u_input.a, 20614u)))), select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1, 1u, abs(4294967295u), ~u_input.a), _wgslsmith_sub_vec4_u32(max(vec4<u32>(var_1, 60384u, var_1, 46460u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_1, u_input.a, u_input.a), vec4<u32>(19645u, 8564u, 27914u, 1u)))), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(0u, var_1, 39344u, 3496u)), (vec4<u32>(u_input.a, 13093u, u_input.a, u_input.a) | vec4<u32>(u_input.a, 8427u, var_1, u_input.a)) << (_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 3363u, var_1), vec4<u32>(27187u, var_1, 4294967295u, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(~u_input.a, 1u, u_input.a & 4294967295u, ~71199u)), !all(vec4<bool>(true, true, true, true))));
    return _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_mult_i32(arg_3.x, 0i), _wgslsmith_mod_i32(arg_3.x, 66173i)), abs(var_0.a.wy ^ ~vec2<i32>(67069i, 34899i))) | -2147483647i;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    global0 = array<Struct_1, 20>();
    let var_0 = -908f;
    global0 = array<Struct_1, 20>();
    let var_1 = _wgslsmith_f_op_f32(-var_0);
    let var_2 = Struct_3(arg_1);
    return _wgslsmith_div_f32(var_0, 2116f);
}

fn func_2(arg_0: i32) -> Struct_5 {
    let var_0 = all(!vec4<bool>(false, any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), min(-13299i, arg_0) > -10543i, any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))));
    var var_1 = _wgslsmith_mod_vec2_u32(min(min(~vec2<u32>(0u, 1u), vec2<u32>(u_input.a, 0u)), ~(~vec2<u32>(u_input.a, 1u))) >> ((firstTrailingBit(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(41426u, 4294967295u), false)) >> (vec2<u32>(4294967295u, countOneBits(15116u)) % vec2<u32>(32u))) % vec2<u32>(32u)), reverseBits(_wgslsmith_add_vec2_u32(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 0u))), reverseBits(abs(vec2<u32>(u_input.a, 22770u))))));
    let var_2 = ~(~vec3<u32>(45243u, var_1.x, firstTrailingBit(~74597u)));
    var var_3 = _wgslsmith_f_op_f32(func_4(vec3<i32>(arg_0, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(arg_0, 2147483647i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, 50939i, arg_0), vec3<i32>(arg_0, arg_0, -2147483647i))), vec3<i32>(reverseBits(arg_0), ~(-56202i), func_3(vec2<f32>(-972f, -1129f), 1258f, vec4<f32>(1380f, 1203f, 188f, -218f), vec4<i32>(-1650i, arg_0, 19013i, arg_0)))), ~(-48635i)), Struct_2(global0[_wgslsmith_index_u32(var_2.x, 20u)]), select(vec4<i32>(-arg_0, ~arg_0, 7311i, 2147483647i) | vec4<i32>(arg_0, ~arg_0, ~(-52005i), 1i), reverseBits(firstTrailingBit(~vec4<i32>(-2447i, 0i, -2147483647i, -60666i))), select(!vec4<bool>(var_0, true, false, var_0), !select(vec4<bool>(var_0, true, true, true), vec4<bool>(false, true, var_0, var_0), false), var_0)), Struct_1(((vec4<i32>(arg_0, arg_0, arg_0, -1i) | vec4<i32>(1i, -28848i, 0i, -1799i)) ^ ~vec4<i32>(-1i, arg_0, -14865i, arg_0)) | vec4<i32>(-2147483647i ^ arg_0, arg_0 | 52857i, firstLeadingBit(2147483647i), -1i))));
    global0 = array<Struct_1, 20>();
    return Struct_5(Struct_3(Struct_2(Struct_1(vec4<i32>(47709i, 49433i, arg_0, arg_0)))), ~firstLeadingBit(firstLeadingBit(~4294967295u)), max((vec3<u32>(79679u, u_input.a, u_input.a) << (firstLeadingBit(vec3<u32>(0u, var_2.x, var_2.x)) % vec3<u32>(32u))) >> (countOneBits(abs(var_2)) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, var_2.x, u_input.a), ~vec3<u32>(var_2.x, var_2.x, var_2.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1216f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -330f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1604f))))));
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = func_2(~(-countOneBits(-arg_0)));
    global0 = array<Struct_1, 20>();
    var var_1 = vec3<u32>(~80988u, 20333u, (1u & ~select(u_input.a, var_0.b, true)) & func_2(arg_0).b);
    var var_2 = -1949f;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(var_0.d.x)), var_0.d.x, var_0.d.x, _wgslsmith_f_op_f32(-var_0.d.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1011f, -985f, -745f, var_0.d.x), vec4<f32>(1000f, 1873f, var_0.d.x, var_0.d.x)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(2578f, -353f, -536f, 1275f) + vec4<f32>(var_0.d.x, var_0.d.x, 308f, var_0.d.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-177f, var_0.d.x, var_0.d.x, var_0.d.x), vec4<f32>(434f, 736f, var_0.d.x, var_0.d.x)))))))));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 20>();
    let var_0 = all(!vec2<bool>(true & any(vec2<bool>(true, false)), !all(vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-964f, -2729f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(2147483647i)) - 275f), _wgslsmith_f_op_f32(select(142f, _wgslsmith_f_op_f32(func_1(0i)), false))), false)));
    var var_2 = -(~(~firstLeadingBit(vec2<i32>(-2147483647i, 0i))));
    let var_3 = 4294967295u;
    global0 = array<Struct_1, 20>();
    var var_4 = var_1;
    var var_5 = global0[_wgslsmith_index_u32(~(u_input.a ^ (u_input.a | 73899u)), 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1171f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_4.x)), _wgslsmith_f_op_f32(f32(-1f) * -1011f)), _wgslsmith_dot_vec3_i32(var_5.a.ywx, vec3<i32>(5959i, -2147483647i, -504i)) < -var_2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(502f - var_1.x) + 415f)), var_4.x), _wgslsmith_mult_vec2_i32(select(-abs(var_5.a.zx), var_5.a.zz, (var_0 && false) && true), -vec2<i32>(~(-24174i), var_2.x)));
}

