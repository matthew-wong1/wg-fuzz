struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30>;

var<private> global1: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(-269f), Struct_3(-2163f), Struct_3(819f), Struct_3(1661f));

var<private> global2: vec3<f32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: u32, arg_3: i32) -> vec2<i32> {
    var var_0 = Struct_4((vec2<i32>(u_input.e, -1i) << (~_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(arg_1.x, u_input.d)) % vec2<u32>(32u))) ^ select(~(-vec2<i32>(arg_3, u_input.e)), countOneBits(-vec2<i32>(arg_3, arg_3)), vec2<bool>(arg_1.x < arg_2, true)), !any(vec3<bool>(true, true, true)), Struct_1(984f, min(~(~vec4<i32>(35481i, u_input.e, 1i, arg_3)), reverseBits(~vec4<i32>(u_input.b, 21368i, 0i, u_input.e))), vec2<bool>(any(vec3<bool>(false, false, true)), any(vec3<bool>(true, true, true))), true, firstLeadingBit(~(vec4<u32>(0u, arg_2, arg_2, arg_1.x) << (arg_1 % vec4<u32>(32u))))), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_0)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1805f, -768f) - _wgslsmith_f_op_f32(-global2.x))), global2.x, global2.x), max(_wgslsmith_div_vec2_i32(vec2<i32>(abs(arg_3), 6294i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e, 4630i), vec2<i32>(1i, -36518i), vec2<i32>(1i, 18180i)) << (vec2<u32>(arg_2, 64824u) % vec2<u32>(32u))), -min(vec2<i32>(2147483647i, 2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(arg_3, 21396i)))));
    var_0 = Struct_4(-_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.e, vec2<i32>(var_0.a.x, -33314i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 2147483647i), var_0.a, var_0.a) | vec2<i32>(77913i, var_0.a.x), (var_0.c.b.yw | vec2<i32>(2147483647i, 2147483647i)) & var_0.a), false, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-134f * arg_0)) + 1785f), abs(var_0.c.b), select(select(var_0.c.c, var_0.c.c, !var_0.c.c), !var_0.c.c, all(select(vec4<bool>(var_0.b, true, true, true), vec4<bool>(true, false, false, var_0.b), vec4<bool>(true, false, var_0.c.c.x, var_0.c.d)))), var_0.b == var_0.c.d, ~vec4<u32>(var_0.c.e.x, 12596u, u_input.d, max(4294967295u, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x))), _wgslsmith_div_f32(-882f, var_0.c.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, var_0.d.x)))), select(-(~vec2<i32>(arg_3, -25606i)), vec2<i32>(_wgslsmith_div_i32(arg_3, arg_3) >> (~8179u % 32u), _wgslsmith_mult_i32(-16178i, arg_3) ^ _wgslsmith_mod_i32(arg_3, var_0.c.b.x)), var_0.b));
    var var_1 = arg_2 >> (abs(4294967295u) % 32u);
    var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(arg_1, ~_wgslsmith_clamp_vec4_u32(~arg_1, arg_1, arg_1)), var_0.c.e);
    global2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -661f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global2.x))))), _wgslsmith_f_op_f32(abs(-485f))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 + 1795f))))), _wgslsmith_f_op_f32(-663f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) + global2.x)), _wgslsmith_div_f32(-2418f, global2.x)), var_0.c.c.x));
    return vec2<i32>(~max(-33405i, _wgslsmith_div_i32(-arg_3, abs(2147483647i))), _wgslsmith_dot_vec3_i32(vec3<i32>(~firstTrailingBit(18949i), 2147483647i, _wgslsmith_dot_vec4_i32(var_0.c.b, ~vec4<i32>(-37505i, arg_3, arg_3, -64623i))), vec3<i32>(_wgslsmith_clamp_i32(arg_3, 74092i, var_0.c.b.x), -1i, -u_input.e) & ~vec3<i32>(arg_3, 1i, 1i)));
}

fn func_2() -> u32 {
    var var_0 = -2289i;
    var var_1 = global1[_wgslsmith_index_u32(~u_input.a.x, 4u)];
    let var_2 = -u_input.b;
    let var_3 = global0[_wgslsmith_index_u32(1152u, 30u)];
    let var_4 = Struct_4(func_3(_wgslsmith_f_op_f32(floor(134f)), var_3.c.e, var_3.c.e.x, abs(var_3.a.x) >> (~(~1u) % 32u)), var_3.b, Struct_1(var_3.c.a, _wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(var_2), func_3(var_1.a, vec4<u32>(28319u, 4294967295u, u_input.a.x, var_3.c.e.x), 1u, 29819i).x, -u_input.e, var_3.c.b.x), vec4<i32>(0i, 0i, select(var_3.a.x, u_input.c, var_3.b), var_2)), !var_3.c.c, any(!vec4<bool>(var_3.c.d, true, true, var_3.c.d)), var_3.c.e), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1394f, _wgslsmith_f_op_f32(global2.x + var_3.c.a))), 1036f, _wgslsmith_f_op_f32(max(global2.x, -596f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.a, global2.x)) + _wgslsmith_f_op_f32(abs(var_1.a))))), var_3.a);
    return var_3.c.e.x;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(global2.x);
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(198f - 1f), _wgslsmith_f_op_f32(global2.x - 1f)), -_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.b, u_input.b, -2147483647i, 8793i)), ~vec4<i32>(-5164i, 29607i, -23604i, -2147483647i)), vec4<i32>(~u_input.e, u_input.e >> (u_input.a.x % 32u), u_input.c >> (4294967295u % 32u), ~(-4247i))), select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), select(false, true, false)), vec2<bool>(true, true), true), vec2<bool>(true, false), !select(vec2<bool>(true, true), vec2<bool>(false, true), true)), _wgslsmith_f_op_f32(select(var_0.a, -271f, false)) != global2.x, _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(11536u, _wgslsmith_clamp_u32(21123u, u_input.d, 17642u), u_input.d, u_input.a.x)), vec4<u32>(u_input.a.x, func_2(), 1u, min(52827u, u_input.d)) ^ ~vec4<u32>(72457u, 30296u, 10596u, 15244u)));
    var var_2 = global0[_wgslsmith_index_u32(u_input.d, 30u)];
    let var_3 = reverseBits(vec4<u32>(abs(~31233u), 0u, firstLeadingBit(reverseBits(~var_1.e.x)), u_input.d));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_2.d.zx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.d.xz, var_2.d.yw))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-753f, var_1.a)), var_2.c.d)));
    return Struct_1(var_0.a, _wgslsmith_mult_vec4_i32(~vec4<i32>(firstLeadingBit(var_1.b.x), ~582i, u_input.c & 0i, _wgslsmith_mod_i32(32799i, var_2.a.x)), firstTrailingBit(var_2.c.b | _wgslsmith_mult_vec4_i32(var_1.b, vec4<i32>(19932i, var_1.b.x, 1i, -1i)))), var_1.c, !any(!vec3<bool>(true, var_1.d, true)), vec4<u32>(var_2.c.e.x, ~var_2.c.e.x, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.e.x, var_1.e.x, 0u), vec3<u32>(1u, 0u, var_3.x)) << (0u % 32u)) >> (var_1.e % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 4>();
    global1 = array<Struct_3, 4>();
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, -1752f, -2224f, -582f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(984f, -1000f, 1353f, global2.x) * vec4<f32>(-1000f, -437f, 501f, 1078f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -391f, global2.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, global2.x, 865f, global2.x), vec4<f32>(global2.x, 1103f, global2.x, 477f), true))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1627f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-150f))), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(trunc(global2.x))))), global2.x, -408f), all(vec2<bool>(any(vec2<bool>(true, true)), true))));
    var var_1 = vec4<bool>(true, true, true, true);
    var var_2 = func_1();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), vec4<i32>(-select(func_3(-162f, vec4<u32>(11454u, 1u, var_2.e.x, u_input.d), 1u, -1304i).x, u_input.b, all(vec2<bool>(false, var_1.x))), 0i, u_input.e, -u_input.c), var_2.c, all(select(!(!var_1.yx), var_1.wz, !var_2.d)), select(var_2.e, var_2.e ^ vec4<u32>(32219u, reverseBits(1u), var_2.e.x, 8008u), select(!vec4<bool>(false, true, var_2.c.x, true), select(!vec4<bool>(false, var_1.x, var_1.x, false), !vec4<bool>(true, false, var_1.x, var_2.d), vec4<bool>(var_2.c.x, false, var_1.x, false)), false)));
    let var_4 = Struct_1(-418f, ~countOneBits(-(vec4<i32>(-33711i, 25503i, -11902i, 1i) >> (var_2.e % vec4<u32>(32u)))), !(!var_3.c), true, vec4<u32>(u_input.a.x, ~29721u, _wgslsmith_dot_vec2_u32(var_3.e.xw, max(~var_3.e.zy, var_2.e.zx << (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), ~4294967295u));
    var var_5 = !vec2<bool>(true, (!var_1.x || var_4.c.x) & false);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(-1i, ~u_input.b) & _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c << (4294967295u % 32u), _wgslsmith_div_i32(u_input.b, var_3.b.x)), abs(vec2<i32>(-1i, var_2.b.x))), vec2<u32>(~22781u, reverseBits(48825u)) | var_4.e.xw, vec4<f32>(617f, _wgslsmith_f_op_f32(min(336f, var_2.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-150f, 1000f) + _wgslsmith_f_op_f32(global2.x - -1655f)))), _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_4.a, global2.x, var_1.x)) * -1693f))), _wgslsmith_mod_i32(-_wgslsmith_mod_i32(u_input.c, firstTrailingBit(var_4.b.x)), 1i));
}

