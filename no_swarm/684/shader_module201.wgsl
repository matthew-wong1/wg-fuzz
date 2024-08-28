struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: bool,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(-351f, 1969f, 453f, 294f, -1371f, 864f, -1108f, 473f, 1000f, 1167f, -1262f, -640f, 110f, 1000f, 1462f, 1000f, -577f, 503f, -173f, 482f);

var<private> global1: vec2<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> i32 {
    let var_0 = -373f;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(floor(-269f)), -925f);
    var var_1 = _wgslsmith_add_u32(countOneBits(~(~(arg_1 & arg_1))), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.b << (vec2<u32>(4294967295u, 36648u) % vec2<u32>(32u)), max(u_input.b, u_input.b)), u_input.b));
    global1 = _wgslsmith_div_vec2_f32(arg_2.b.yy, vec2<f32>(1f, _wgslsmith_div_f32(var_0, global0[_wgslsmith_index_u32(~(~17338u), 20u)])));
    let var_2 = arg_2;
    return 0i;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>) -> vec3<i32> {
    var var_0 = ~arg_0;
    let var_1 = vec2<i32>(~469i, 90698i);
    let var_2 = vec4<u32>(_wgslsmith_clamp_u32(var_0.x, ~min(70923u, var_0.x), 0u), _wgslsmith_div_u32(_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mod_u32(27581u, 14950u)), ~20905u), arg_0.x), u_input.a, 4294967295u);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1709f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 20u)] - _wgslsmith_f_op_f32(1647f - global0[_wgslsmith_index_u32(arg_0.x, 20u)]))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_0.x, 20u)], global1.x)), vec2<f32>(-361f, global0[_wgslsmith_index_u32(11552u, 20u)]))))));
    global0 = array<f32, 20>();
    return select(vec3<i32>(~var_1.x | -17560i, func_2(global0[_wgslsmith_index_u32(74789u, 20u)], var_0.x, Struct_3(u_input.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-521f, 337f, global0[_wgslsmith_index_u32(var_0.x, 20u)], global0[_wgslsmith_index_u32(0u, 20u)])))), reverseBits(-firstTrailingBit(-2147483647i))), vec3<i32>(var_1.x, firstTrailingBit(_wgslsmith_mod_i32(-30484i, u_input.c)), var_1.x) | vec3<i32>(u_input.c, select(_wgslsmith_sub_i32(var_1.x, u_input.d), u_input.d & var_1.x, false), var_1.x), all(vec2<bool>(false, arg_1.x)));
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> i32 {
    let var_0 = 2435f;
    let var_1 = -vec3<i32>(~u_input.d, -1i, min(u_input.d, func_2(-496f, 8850u, arg_1)));
    global0 = array<f32, 20>();
    global0 = array<f32, 20>();
    let var_2 = Struct_3(var_1.x ^ -1i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-798f, arg_1.b.x, arg_1.b.x, var_0) + arg_1.b)))), arg_1.b)));
    return _wgslsmith_dot_vec3_i32(firstTrailingBit(~func_3(vec4<u32>(u_input.a, 4294967295u, u_input.a, 45360u), vec4<bool>(false, false, arg_0, true)) & (~var_1 << (abs(vec3<u32>(13863u, 17234u, 0u)) % vec3<u32>(32u)))), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, -289f, countOneBits(u_input.d) <= reverseBits(u_input.d))) + _wgslsmith_f_op_f32(f32(-1f) * -1197f)), func_1(!(!(-46386i != u_input.d)), Struct_3(~(~u_input.c), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, 1994f) * vec4<f32>(global1.x, -1167f, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global1.x)))))), true, _wgslsmith_clamp_vec4_u32(~countOneBits(firstLeadingBit(vec4<u32>(1u, 54541u, u_input.a, 43880u))), select(vec4<u32>(1u, u_input.b.x, ~u_input.a, 28102u), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, 23402u, u_input.a), vec4<u32>(87768u, u_input.b.x, 4294967295u, 27580u))), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), all(vec3<bool>(true, true, true)))), _wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.b.x, u_input.b.x, 33444u, u_input.b.x) >> (vec4<u32>(1u, u_input.a, u_input.b.x, 0u) % vec4<u32>(32u))), ~vec4<u32>(0u, u_input.b.x, 4294967295u, 2974u))), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.c), abs(_wgslsmith_add_i32(-1i, u_input.d)), 28661i, reverseBits(-u_input.c)), max(vec4<i32>(u_input.d, u_input.d, 2800i, 56723i) << ((vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.a) << (vec4<u32>(u_input.b.x, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(u_input.d, 23396i, u_input.d, 66118i))));
    var var_1 = Struct_2(-927f, 48850i, true, var_0.d, _wgslsmith_div_vec4_i32(-select(countOneBits(vec4<i32>(22280i, var_0.b, var_0.e.x, var_0.b)), abs(var_0.e), true || var_0.c), _wgslsmith_div_vec4_i32(abs(var_0.e | vec4<i32>(u_input.c, u_input.c, u_input.d, u_input.d)), vec4<i32>(740i, ~var_0.e.x, -2147483647i, reverseBits(u_input.d)))));
    var var_2 = vec3<i32>(var_0.e.x, reverseBits(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_1.e.xz, var_1.e.zz), -var_1.e.x, ~u_input.d)), _wgslsmith_clamp_i32(-2147483647i, ~(~1i), var_1.e.x));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * global1.x)))), var_1.a);
    var_2 = vec3<i32>(~(~22699i), ~(i32(-1i) * -var_0.b), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_2.x, ~var_1.e.x), vec3<i32>(-1i) * -vec3<i32>(-21829i, -27453i, var_2.x)));
    let var_3 = abs(var_0.d.xw);
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 20u)]), var_1.a)) - global1.x)), ~2147483647i, true, _wgslsmith_div_vec4_u32(select(vec4<u32>(~71401u, reverseBits(4294967295u), var_3.x, _wgslsmith_mult_u32(u_input.a, var_3.x)), abs(~var_1.d), vec4<bool>(var_0.c != var_1.c, false, true, true)), _wgslsmith_div_vec4_u32(~vec4<u32>(var_3.x, 60671u, var_1.d.x, var_3.x), max(var_1.d, var_1.d)) << (var_0.d % vec4<u32>(32u))), vec4<i32>(var_2.x, _wgslsmith_sub_i32(~u_input.c, _wgslsmith_div_i32(0i, -2147483647i)) >> (~1u % 32u), var_1.b, -2147483647i));
    let var_4 = ~(vec4<u32>(abs(_wgslsmith_div_u32(var_0.d.x, 4294967295u)), u_input.a << (var_0.d.x % 32u), _wgslsmith_sub_u32(select(38962u, var_1.d.x, var_1.c), 71425u), countOneBits(~u_input.b.x)) << ((vec4<u32>(48819u, ~1u, u_input.a, 1u) << (min(vec4<u32>(20596u, 4294967295u, 0u, 43703u) | vec4<u32>(var_3.x, 4294967295u, 1u, 1u), countOneBits(var_0.d)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global0 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(-353f, countOneBits((reverseBits(vec2<u32>(101288u, var_1.d.x)) & abs(vec2<u32>(4294967295u, 72255u))) >> (u_input.b % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1228f, -1000f)) * _wgslsmith_f_op_f32(abs(2922f))), var_1.c))), 689f);
}

