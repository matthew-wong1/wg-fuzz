struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(max(reverseBits(1i), 1i), -16172i), -26541i, -7569i), min(_wgslsmith_clamp_vec3_i32(~(-vec3<i32>(2059i, 28409i, 2147483647i)), abs(~vec3<i32>(-2147483647i, 35779i, -52307i)), ~(~vec3<i32>(5008i, 0i, 0i))), abs(abs(vec3<i32>(-21526i, 1i, 77574i) >> (u_input.c.zxz % vec3<u32>(32u))))));
    let var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c.wxw, firstTrailingBit(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(1u, u_input.a, u_input.a)), ~u_input.c.zwy))), u_input.c.wzw);
    var var_3 = _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i), vec3<i32>(min(-26913i, -24351i), 1i, _wgslsmith_mod_i32(16865i, 68655i)) & vec3<i32>(-27790i, 4295i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -18775i, 27786i, -5472i), vec4<i32>(-39852i, 13908i, 0i, -2147483647i)))), ~(~abs(-vec3<i32>(1i, 17322i, -52050i))));
    var_1 = var_3.x;
    return _wgslsmith_div_i32(-1i, -2147483647i);
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> f32 {
    var var_0 = Struct_3(!(!global0[_wgslsmith_index_u32(~(u_input.c.x | u_input.c.x), 4u)]), Struct_2(Struct_1(~62860u), func_3(), vec3<u32>(firstLeadingBit(~94116u), arg_1.x, ~(4294967295u | arg_1.x))), 0u, _wgslsmith_mod_vec3_u32(max(arg_1.xzw, ~vec3<u32>(4294967295u, arg_1.x, u_input.c.x)), vec3<u32>(1u, u_input.c.x, arg_1.x)), 0i);
    var var_1 = -_wgslsmith_mult_vec4_i32(-vec4<i32>(arg_0, -22288i, var_0.e, var_0.b.b) | (_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 0i, -11353i, 0i), vec4<i32>(var_0.b.b, var_0.b.b, -68478i, arg_0)) << ((vec4<u32>(var_0.d.x, var_0.d.x, 1498u, arg_1.x) >> (vec4<u32>(u_input.b, 15334u, var_0.d.x, u_input.c.x) % vec4<u32>(32u))) % vec4<u32>(32u))), select(reverseBits(firstTrailingBit(vec4<i32>(var_0.e, arg_0, -3645i, var_0.b.b))), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.e, arg_0, arg_0, 2147483647i), vec4<i32>(-27292i, -1i, 0i, 63409i)) << (vec4<u32>(var_0.d.x, 74527u, 0u, 8863u) % vec4<u32>(32u)), !(!vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x))));
    global0 = array<vec2<bool>, 4>();
    let var_2 = var_0.b;
    var var_3 = select(!vec4<bool>(select(true, true, arg_1.x == 4294967295u), true, (var_0.a.x | false) && true, !var_0.a.x), !vec4<bool>(var_0.a.x, any(vec3<bool>(false, false, var_0.a.x)) && var_0.a.x, !var_0.a.x, false), vec4<bool>(var_0.a.x, (all(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)) || true) && var_0.a.x, true, true));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(756f)) + _wgslsmith_f_op_f32(263f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1481f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-2150f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: u32) -> i32 {
    var var_0 = all(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.a, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(arg_0.a, 88277u, u_input.a, 4294967295u)), _wgslsmith_mod_vec4_u32(u_input.c ^ vec4<u32>(arg_3, 4294967295u, u_input.b, u_input.a), ~u_input.c))), 4u)]);
    var var_1 = min(-1i, ~(~1i));
    var var_2 = vec3<f32>(arg_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(firstTrailingBit(7335i), vec4<u32>(_wgslsmith_div_u32(110607u, 1u), arg_3, _wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(u_input.c.x, 436u)), _wgslsmith_div_u32(arg_0.a, u_input.b)))))), _wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(1i, -39342i, 2147483647i), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -63367i), vec2<i32>(-2147483647i, 29594i))), -vec3<i32>(27221i, -27726i, -2147483647i)), ~(u_input.c | ~vec4<u32>(u_input.c.x, u_input.c.x, 44022u, 1u)))));
    var var_3 = arg_3;
    let var_4 = select(4294967295u, ~arg_3, true);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 4>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1405f);
    let var_1 = firstTrailingBit(func_1(Struct_1(~(u_input.b ^ u_input.a)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 - var_0), var_0))), u_input.c.x));
    global0 = array<vec2<bool>, 4>();
    global0 = array<vec2<bool>, 4>();
    global0 = array<vec2<bool>, 4>();
    var var_2 = 1u;
    var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_clamp_vec4_i32((_wgslsmith_mod_vec4_i32(vec4<i32>(var_1, var_1, var_1, 1i), vec4<i32>(0i, var_1, 37636i, 1i)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(var_1, -42244i, 2147483647i, -2147483647i), vec4<i32>(var_1, 22398i, var_1, var_1))) >> (u_input.c % vec4<u32>(32u)), select(vec4<i32>(0i >> (1u % 32u), -8807i, ~var_1, 47439i), min(abs(vec4<i32>(var_1, -15738i, 25767i, 22078i)), ~vec4<i32>(2147483647i, var_1, -2147483647i, 0i)), vec4<bool>(true, true, true, false)), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(var_1, 0i, var_1, -3458i) & vec4<i32>(var_1, -30521i, var_1, 2147483647i)), vec4<i32>(-1i) * -vec4<i32>(var_1, var_1, 2147483647i, var_1))), ~reverseBits(vec2<u32>(4294967295u, u_input.b)) << (u_input.c.xy % vec2<u32>(32u)), ~(~57315u) | min((u_input.a >> (u_input.a % 32u)) >> (0u % 32u), _wgslsmith_add_u32(4294967295u, _wgslsmith_add_u32(4294967295u, u_input.a))));
}

