struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: f32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    global0 = array<Struct_1, 21>();
    var var_0 = global1.b.x;
    var var_1 = select(global1.a.zz, -(global1.a.xx | countOneBits(select(vec2<i32>(global1.d, global1.a.x), vec2<i32>(-26051i, -1i), global1.b.yz))), !global1.b.x);
    var var_2 = false;
    let var_3 = _wgslsmith_mod_vec2_u32(u_input.a.xy, vec2<u32>(69834u, (firstLeadingBit(u_input.a.x) & firstLeadingBit(u_input.a.x)) | _wgslsmith_clamp_u32(global1.e, 53798u, global1.e << (global1.e % 32u))));
    return 2147483647i;
}

fn func_4(arg_0: i32) -> u32 {
    global1 = Struct_2(~min(select(abs(global1.a), global1.a << (u_input.a.yxz % vec3<u32>(32u)), !global1.b), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(arg_0, 8615i, 49105i)), reverseBits(vec3<i32>(arg_0, -1i, global1.d)), global1.a)), vec3<bool>((true | global1.b.x) && any(global1.b), global1.b.x, all(global1.b) | any(vec4<bool>(true, global1.b.x, false, false))), 1704f, 2147483647i, global1.e);
    global1 = Struct_2(global1.a ^ vec3<i32>(-15952i, arg_0, ~(-47884i) | firstTrailingBit(-25506i)), !vec3<bool>(global1.b.x, true, false), global1.c, abs((_wgslsmith_clamp_i32(global1.d, arg_0, -55651i) | global1.a.x) >> (_wgslsmith_sub_u32(global1.e, ~2772u) % 32u)), ~(~18060u));
    let var_0 = u_input.a.x;
    var var_1 = 0u;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.c), -1000f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(393f, 1773f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, -2624f)), all(select(vec4<bool>(true, global1.b.x, global1.b.x, global1.b.x), vec4<bool>(true, global1.b.x, global1.b.x, true), !vec4<bool>(global1.b.x, false, global1.b.x, false))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, _wgslsmith_f_op_f32(f32(-1f) * -1110f))))));
    return ~1u;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    global0 = array<Struct_1, 21>();
    let var_0 = 1588f;
    let var_1 = 1335u;
    let var_2 = false;
    global1 = Struct_2(global1.a | vec3<i32>(2147483647i, func_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1815f, -1297f, arg_0, -198f), vec4<f32>(-779f, -560f, global1.c, global1.c)))), 0i), select(!vec3<bool>(1892f <= var_0, arg_3.a.x, any(vec4<bool>(arg_2.c.x, true, false, arg_1))), vec3<bool>(!arg_2.c.x, arg_1, !global1.b.x), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1193f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -809f) + -1088f)), 635f)), -14540i, var_1 ^ func_4(arg_2.b));
    return countOneBits(-max(vec3<i32>(-2147483647i, 21629i, i32(-1i) * -13870i), global1.a));
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    global0 = array<Struct_1, 21>();
    global1 = Struct_2(vec3<i32>(select(~1i, _wgslsmith_mod_i32(-8671i, -17740i), true) << (abs(~u_input.a.x) % 32u), 0i, _wgslsmith_add_i32(24391i, ~(-global1.d))), select(select(vec3<bool>(false, true, global1.b.x & global1.b.x), !global1.b, global1.b), vec3<bool>(_wgslsmith_f_op_f32(step(-906f, arg_0.x)) != arg_0.x, !(!global1.b.x), global1.b.x), true), 1183f, global1.a.x, _wgslsmith_clamp_u32(~0u, _wgslsmith_dot_vec4_u32(countOneBits(u_input.a), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(u_input.a.x, 1u, global1.e, global1.e), vec4<u32>(u_input.a.x, 0u, global1.e, 45322u)), u_input.a | vec4<u32>(global1.e, global1.e, 4294967295u, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, global1.e))), max(~(~global1.e), u_input.a.x)));
    global0 = array<Struct_1, 21>();
    let var_0 = u_input.a.x;
    var var_1 = global1.a.x;
    return Struct_2(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(504f, arg_0.x))) + global1.c), any(vec2<bool>(true, true)), Struct_1(select(!vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), select(vec4<bool>(false, true, global1.b.x, global1.b.x), vec4<bool>(global1.b.x, true, global1.b.x, false), global1.b.x), false | global1.b.x), global1.a.x, select(vec2<bool>(false, false), global1.b.zy, any(vec3<bool>(global1.b.x, global1.b.x, true)))), global0[_wgslsmith_index_u32(func_4(-func_3(arg_0)), 21u)]), !vec3<bool>(global1.b.x, true, !all(vec4<bool>(true, global1.b.x, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-362f)) + global1.c)), 1i, ~(4294967295u << (0u % 32u)));
}

fn func_1() -> Struct_2 {
    let var_0 = !all(vec4<bool>(true, true, true, true));
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(-17521i, global1.a.x), ~(-_wgslsmith_mod_vec2_i32(global1.a.xx, global1.a.yy ^ global1.a.zz)));
    global0 = array<Struct_1, 21>();
    let var_2 = _wgslsmith_mult_vec4_i32(~vec4<i32>(-(~var_1.x), ~(i32(-1i) * -8267i), global1.a.x, 0i), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(var_1.x, 1i, global1.a.x, 23513i) ^ vec4<i32>(var_1.x, 1i, var_1.x, var_1.x), vec4<i32>(-38013i, 2147483647i, -var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 45338i, var_1.x), vec3<i32>(79226i, -1i, -14212i)))), _wgslsmith_sub_vec4_i32(~vec4<i32>(global1.a.x, -2147483647i, 40013i, 34030i), ~(vec4<i32>(var_1.x, global1.d, 84170i, -1i) & vec4<i32>(global1.a.x, global1.d, global1.a.x, var_1.x))), vec4<i32>(var_1.x, -(-1i << (global1.e % 32u)), 18070i, var_1.x)));
    return func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1327f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) + global1.c), 1368f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - 1548f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    global0 = array<Struct_1, 21>();
    let var_0 = Struct_2(firstTrailingBit(-func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(552f, -392f, global1.c, global1.c), vec4<f32>(310f, global1.c, global1.c, 143f), vec4<bool>(false, global1.b.x, true, true)))).a), func_2(vec4<f32>(_wgslsmith_f_op_f32(func_2(vec4<f32>(361f, -423f, global1.c, -294f)).c - 2722f), _wgslsmith_f_op_f32(trunc(global1.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.c + global1.c), global1.c, any(vec4<bool>(false, global1.b.x, global1.b.x, global1.b.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.c))))).b, -1000f, global1.d >> (4294967295u % 32u), _wgslsmith_add_u32(17694u, ~global1.e) & reverseBits(0u));
    global1 = var_0;
    global1 = func_1();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(545f)) * _wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(1086f + var_0.c))))));
    let var_2 = Struct_2(firstTrailingBit(func_5(_wgslsmith_f_op_f32(-var_0.c), true, global0[_wgslsmith_index_u32(abs(24386u), 21u)], global0[_wgslsmith_index_u32(var_0.e, 21u)])) >> (vec3<u32>(24331u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.e, u_input.a.x), firstLeadingBit(vec3<u32>(var_0.e, 1931u, 11177u))), firstLeadingBit(~u_input.a.x)) % vec3<u32>(32u)), !vec3<bool>(false, any(func_1().b.xz), true), 762f, var_0.d, firstTrailingBit(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.d, var_2.c, _wgslsmith_sub_u32(abs(u_input.a.x), _wgslsmith_mult_u32(func_4(26823i) & ~1u, 7625u)), vec3<u32>(u_input.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e, 38571u, u_input.a.x) & u_input.a.zzw, reverseBits(vec3<u32>(46951u, 17769u, 17482u))), global1.e));
}

