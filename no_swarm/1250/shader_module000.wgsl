struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: i32;

var<private> global2: vec2<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-122f, -250f, 956f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-591f, _wgslsmith_f_op_f32(sign(188f)))))));
    var var_1 = max(~(u_input.d & u_input.d), u_input.d);
    var_1 = abs(18908u);
    let var_2 = i32(-1i) * -1i;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), var_0.x)), var_0.x)), var_0.x) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x * 1000f), -1000f)));
    return global2.x ^ ~26961i;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: bool) -> i32 {
    var var_0 = u_input.d;
    let var_1 = abs(u_input.d);
    let var_2 = -vec2<i32>(global2.x, reverseBits(select(_wgslsmith_mult_i32(u_input.b.x, 18105i), 52209i | arg_1.x, true)));
    var_0 = _wgslsmith_clamp_u32(40481u, _wgslsmith_sub_u32(firstTrailingBit(100261u), u_input.d), var_1);
    let var_3 = vec4<u32>(~(~abs(38871u)), u_input.d, 1u, var_1 >> (_wgslsmith_add_u32(var_1 | u_input.d, 23377u) % 32u)) >> (reverseBits(~vec4<u32>(~1425u, 85433u, reverseBits(u_input.d), 5489u)) % vec4<u32>(32u));
    return reverseBits(~_wgslsmith_clamp_i32(-7354i, u_input.c | _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, -7162i), vec2<i32>(global2.x, -2954i)), -1i));
}

fn func_2(arg_0: u32) -> vec2<u32> {
    var var_0 = u_input.d;
    let var_1 = Struct_2(u_input.a, vec3<i32>(func_3(vec3<f32>(_wgslsmith_f_op_f32(-487f + 757f), -1512f, 1f), ~vec2<i32>(-1i, u_input.b.x), false), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(33679i, u_input.c), -23983i), max(max(u_input.c, -85825i), abs(u_input.a.x))), u_input.b.x), !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), global2.x);
    var var_2 = countOneBits(~(~arg_0 & ~42426u) << (_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(1u, u_input.d, 13769u, u_input.d)), vec4<u32>(1u, u_input.d, arg_0, 19237u) << (vec4<u32>(6987u, arg_0, 79001u, arg_0) % vec4<u32>(32u))) % 32u));
    var_2 = ~min(~1u << (firstLeadingBit(reverseBits(arg_0)) % 32u), ~0u);
    global0 = 1u;
    return ~(~countOneBits(vec2<u32>(u_input.d, u_input.d)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> vec3<i32> {
    let var_0 = _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(reverseBits(arg_1.x), arg_1.x, 4294967295u)) | vec3<u32>(func_2(4294967295u).x >> (_wgslsmith_div_u32(arg_1.x, 10255u) % 32u), 1u, ~1u), _wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(52156u), 14595u, 41271u << (arg_1.x % 32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, arg_1.x, 0u) & vec3<u32>(arg_1.x, u_input.d, u_input.d), vec3<u32>(u_input.d, 20726u, arg_1.x) << (vec3<u32>(4294967295u, 0u, 0u) % vec3<u32>(32u)), vec3<u32>(4294967295u, 4294967295u, 36942u))) & vec3<u32>(_wgslsmith_add_u32(~u_input.d, 0u), 1u, _wgslsmith_mod_u32(u_input.d, u_input.d)));
    var var_1 = _wgslsmith_f_op_f32(min(1612f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-477f)) * _wgslsmith_f_op_f32(min(1780f, -1000f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-998f * -956f) - 154f), _wgslsmith_f_op_f32(f32(-1f) * -750f)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1345f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(166f - 944f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-477f * -1624f))))));
    let var_2 = u_input.a;
    let var_3 = max(_wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, ~(-2147483647i), global2.x << (var_0.x % 32u), _wgslsmith_div_i32(-832i, 1i)), vec4<i32>(reverseBits(var_2.x), _wgslsmith_sub_i32(global2.x, -global2.x), u_input.c, select(_wgslsmith_mod_i32(global2.x, var_2.x), global2.x, false))), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(global2.x, firstLeadingBit(global2.x), _wgslsmith_add_i32(arg_0.a.x, var_2.x), 1517i)), select(vec4<i32>(~(-1i), -71074i, _wgslsmith_mod_i32(15232i, -2147483647i), var_2.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, u_input.e.x, 2147483647i, 2147483647i), u_input.a) ^ vec4<i32>(u_input.c, 0i, var_2.x, 45291i), select(!vec4<bool>(arg_0.c.x, false, arg_0.c.x, arg_0.c.x), arg_0.c, select(vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, true), arg_0.c, arg_0.c)))));
    return abs(-firstLeadingBit(~(-var_2.wyw)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_mod_vec2_i32(~u_input.b.yz, vec2<i32>(func_1(vec4<i32>(1i, global2.x, 1i, i32(-1i) * -1i)), -2147483647i));
    let var_0 = -select(func_4(Struct_2(u_input.a, u_input.a.zxy >> (vec3<u32>(0u, 1u, 0u) % vec3<u32>(32u)), vec4<bool>(true, true, true, true), u_input.c), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(17597u, u_input.d)), func_2(7942u))), vec3<i32>(global2.x, u_input.e.x, min(u_input.a.x, global2.x)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.d, u_input.d), vec3<u32>(0u, u_input.d, u_input.d), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.d, 20989u), vec3<u32>(5079u, u_input.d, u_input.d))) % vec3<u32>(32u)), vec3<bool>(!select(false, false, false), all(vec3<bool>(true, false, true)) | true, true));
    let var_1 = all(select(vec2<bool>(false, all(vec4<bool>(true, true, true, true))), vec2<bool>(_wgslsmith_f_op_f32(floor(2044f)) <= _wgslsmith_f_op_f32(-983f + 1961f), true), !(-1i < -u_input.c)));
    let var_2 = Struct_3(Struct_1(var_0.x, select(vec4<bool>(var_1, true, var_0.x < u_input.a.x, var_1 && var_1), vec4<bool>(true, !var_1, var_1, var_1), true), select(vec2<i32>(19575i, var_0.x) << (vec2<u32>(0u, u_input.d) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(u_input.a.wy, u_input.e.zz | u_input.b.zx), false), var_1), vec3<i32>(-abs(_wgslsmith_add_i32(-2147483647i, global2.x)), 8932i, -272i), Struct_2(abs(vec4<i32>(-1i) * -u_input.a), vec3<i32>(-1i, -(global2.x ^ -2147483647i), var_0.x), select(select(select(vec4<bool>(var_1, var_1, false, false), vec4<bool>(true, var_1, true, var_1), var_1), select(vec4<bool>(false, false, var_1, var_1), vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, var_1, var_1, true)), select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(false, var_1, false, var_1), false)), !(!vec4<bool>(var_1, true, true, var_1)), var_1), -9913i), reverseBits(4294967295u), select(!(!vec2<bool>(var_1, var_1)), vec2<bool>(select(var_1, false == var_1, false), any(!vec4<bool>(false, var_1, var_1, var_1))), !vec2<bool>(u_input.d == u_input.d, var_1)));
    let var_3 = _wgslsmith_clamp_u32(var_2.d, 1u, ~abs(~4294967295u)) << (var_2.d % 32u);
    global1 = countOneBits(reverseBits(2147483647i));
    global2 = select(_wgslsmith_add_vec2_i32(vec2<i32>(-var_0.x, countOneBits(firstLeadingBit(2147483647i))), abs(var_2.b.zy)), -((u_input.e.yz | -vec2<i32>(1i, 50725i)) & firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, var_0.x), var_0.xz))), any(select(!var_2.e, !select(var_2.a.b.yz, vec2<bool>(false, var_2.c.c.x), vec2<bool>(var_2.c.c.x, false)), any(!var_2.c.c.zw))));
    let var_4 = i32(-1i) * -(~min(-1i, _wgslsmith_dot_vec3_i32(var_0, var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xz);
}

