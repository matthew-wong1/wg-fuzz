struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: array<vec3<i32>, 26>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_1(vec2<i32>(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 30361i, -41766i), select(u_input.e, global1[_wgslsmith_index_u32(u_input.b, 26u)], true))), u_input.e.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2117f, _wgslsmith_f_op_f32(ceil(-1000f))))))), ~(~countOneBits(vec2<i32>(arg_0.x, 8793i)) & (~arg_0.xy >> ((vec2<u32>(1965u, 76502u) << (vec2<u32>(global0[_wgslsmith_index_u32(0u, 11u)], u_input.d) % vec2<u32>(32u))) % vec2<u32>(32u)))), ~_wgslsmith_mult_u32(u_input.d, ~u_input.d));
    let var_1 = Struct_2(true, var_0, ~(17690u << (~firstTrailingBit(57392u) % 32u)));
    let var_2 = vec2<f32>(1423f, 110f);
    let var_3 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0.d, u_input.b, _wgslsmith_clamp_u32(var_1.c | 24524u, ~var_0.d, ~0u)), var_0.d), var_1.b.d, firstTrailingBit(~4294967295u));
    var var_4 = _wgslsmith_f_op_f32(exp2(var_2.x));
    return abs(~vec4<u32>(_wgslsmith_sub_u32(122397u, u_input.b), global0[_wgslsmith_index_u32(var_1.b.d ^ u_input.b, 11u)], 18605u, _wgslsmith_mod_u32(var_3.x, 4294967295u))) | select(vec4<u32>(var_3.x, 0u, ~var_0.d << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.x, 11u)], 11u)] % 32u), 7467u), select(vec4<u32>(1u, var_1.c, _wgslsmith_dot_vec4_u32(vec4<u32>(10046u, 4294967295u, var_3.x, var_1.c), vec4<u32>(0u, 4294967295u, var_0.d, var_0.d)), 93822u), select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b.d, u_input.b, var_3.x, var_0.d), vec4<u32>(var_3.x, u_input.d, global0[_wgslsmith_index_u32(36189u, 11u)], var_0.d)), vec4<u32>(4294967295u, 1u, u_input.b, u_input.d) & vec4<u32>(global0[_wgslsmith_index_u32(var_1.b.d, 11u)], 1u, 1u, 0u), !vec4<bool>(var_1.a, var_1.a, false, true)), vec4<bool>(true, all(vec3<bool>(var_1.a, var_1.a, true)), var_1.a, false)), !(!var_1.a) & (true || any(vec4<bool>(var_1.a, true, var_1.a, false))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = arg_3.b.b.x;
    var var_1 = firstTrailingBit(reverseBits(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, arg_2.x, arg_1.a, arg_2.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 53792i, arg_2.x, -41396i), vec4<i32>(-40878i, 8127i, arg_2.x, u_input.e.x)), abs(vec4<i32>(arg_3.b.c.x, u_input.c.x, u_input.e.x, arg_2.x)))));
    var_0 = _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.b.x + arg_3.b.b.x) - arg_3.b.b.x))));
    var var_2 = Struct_4(true, ~firstLeadingBit(vec2<i32>(55479i, _wgslsmith_sub_i32(1i, var_1.x))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x));
    return vec4<u32>(arg_3.b.d, countOneBits(global0[_wgslsmith_index_u32(abs(select(32463u, u_input.b, true)), 11u)]), 1u | (~global0[_wgslsmith_index_u32(u_input.b, 11u)] ^ max(34767u, global0[_wgslsmith_index_u32(arg_0.x, 11u)])), ~35645u) | func_3(((vec4<i32>(24655i, var_2.b.x, arg_2.x, -50259i) >> (vec4<u32>(u_input.b, u_input.d, 64495u, 14316u) % vec4<u32>(32u))) ^ select(vec4<i32>(1451i, -1i, u_input.a.x, arg_1.a), vec4<i32>(5905i, 2147483647i, var_1.x, -2147483647i), vec4<bool>(arg_3.a, var_2.a, arg_3.a, arg_3.a))) << (vec4<u32>(1u, ~21402u, 0u, ~0u) % vec4<u32>(32u)));
}

fn func_1(arg_0: u32) -> vec3<u32> {
    var var_0 = abs(vec4<u32>(41335u, arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0, 27121u, 4294967295u), vec4<u32>(u_input.d, arg_0, 26342u, arg_0)), ~(~arg_0)) >> (reverseBits(min(vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31606u, 11u)], 11u)], 69335u, 21720u), vec4<u32>(global0[_wgslsmith_index_u32(62711u, 11u)], 13334u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 11u)], 11u)])) << (_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 11u)], 1u, 4294967295u, 10111u), vec4<u32>(0u, 95876u, arg_0, global0[_wgslsmith_index_u32(44279u, 11u)])) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(0u, arg_0, 0u, arg_0)), firstTrailingBit(vec4<u32>(23637u, 32936u, 57101u, global0[_wgslsmith_index_u32(41982u, 11u)]))), vec4<u32>(11948u, ~var_0.x, u_input.b, global0[_wgslsmith_index_u32(u_input.b, 11u)])) ^ (_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0, 4294967295u, global0[_wgslsmith_index_u32(4228u, 11u)]), ~vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], var_0.x, global0[_wgslsmith_index_u32(arg_0, 11u)])) & (~vec4<u32>(4294967295u, arg_0, arg_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12302u, 11u)], 11u)]) >> (countOneBits(vec4<u32>(22605u, 54672u, 31424u, 1u)) % vec4<u32>(32u)))), ~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(52224u, 11u)], arg_0, arg_0, arg_0), vec4<u32>(arg_0, 4294967295u, 19637u, global0[_wgslsmith_index_u32(var_0.x, 11u)])))));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-743f))))));
    var var_2 = Struct_3(~(-(2545i ^ u_input.c.x) << (~(~var_0.x) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(609f, -439f, 459f, 316f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-574f, -1000f, -1129f, -945f))))));
    let var_3 = ~vec4<i32>(~(-8680i), 61263i & u_input.a.x, countOneBits(-1i), -1i);
    return vec3<u32>(arg_0, _wgslsmith_sub_u32(4294967295u, 1u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(func_2(vec2<u32>(33203u, 4294967295u), Struct_3(var_2.a, vec4<f32>(244f, var_2.b.x, var_2.b.x, var_2.b.x)), var_3.zzz, Struct_2(true, Struct_1(vec2<i32>(-1i, var_3.x), vec2<f32>(-762f, var_2.b.x), vec2<i32>(-2147483647i, var_2.a), 8594u), 4294967295u)), firstTrailingBit(vec4<u32>(6606u, u_input.d, u_input.d, 4294967295u))), min(71932u, u_input.d) >> ((var_0.x & 16973u) % 32u)), ~(~max(50168u, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 26>();
    var var_0 = -1325f;
    global1 = array<vec3<i32>, 26>();
    var var_1 = ~func_1(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.d, 11u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 11u)], 11u)], 64686u), 11u)], 11u)]));
    var var_2 = Struct_2(true, Struct_1(_wgslsmith_clamp_vec2_i32(~vec2<i32>(1i, u_input.e.x), u_input.a.xx, _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a.x, 1i), _wgslsmith_add_vec2_i32(u_input.c.yx, vec2<i32>(u_input.c.x, u_input.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(741f, -597f))), countOneBits(-vec2<i32>(u_input.c.x, u_input.e.x)), global0[_wgslsmith_index_u32(firstLeadingBit(~1u), 11u)] ^ abs(var_1.x)), ~_wgslsmith_mod_u32(~u_input.d, u_input.d) << (global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, _wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(2464u, global0[_wgslsmith_index_u32(15640u, 11u)], 1u), vec3<u32>(4294967295u, var_1.x, 41317u)))), 11u)] % 32u));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -589f) * _wgslsmith_f_op_f32(select(-668f, var_2.b.b.x, var_2.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b.b.x))) - 807f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(369f, -2026f, var_2.b.b.x) + vec3<f32>(var_2.b.b.x, var_2.b.b.x, var_2.b.b.x)))) - vec3<f32>(var_2.b.b.x, 136f, 599f))));
    var var_4 = Struct_2(all(vec4<bool>(true, true, !any(vec2<bool>(true, var_2.a)), var_2.a)), Struct_1(-u_input.e.yx ^ (var_2.b.c << (vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 11u)], u_input.d) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_2.b.b + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1611f, -746f)))), vec2<f32>(1042f, _wgslsmith_f_op_f32(exp2(var_3.x))))), -vec2<i32>(-227i, u_input.c.x << (1u % 32u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(var_1.xx), var_1.yx), ~countOneBits(vec2<u32>(110624u, 5148u)))), _wgslsmith_dot_vec4_u32(~(~select(vec4<u32>(30220u, var_2.c, 54464u, 1u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(45338u, 11u)], global0[_wgslsmith_index_u32(361u, 11u)], u_input.d), vec4<bool>(var_2.a, false, true, true))), vec4<u32>(var_2.b.d, firstLeadingBit(_wgslsmith_mult_u32(var_1.x, 22802u)), 1u << (_wgslsmith_mod_u32(var_2.b.d, var_1.x) % 32u), max(_wgslsmith_add_u32(5302u, u_input.d), 1u))));
    var var_5 = Struct_4(33459u >= var_1.x, _wgslsmith_clamp_vec2_i32(var_2.b.c ^ vec2<i32>(u_input.e.x, var_2.b.a.x), vec2<i32>(~var_4.b.c.x, -2147483647i), var_4.b.c) ^ reverseBits(vec2<i32>(_wgslsmith_add_i32(-1763i, 67085i), -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-378f - 710f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_4.b.b.x, var_4.b.b.x, var_3.x, -173f), vec4<f32>(var_4.b.b.x, -121f, var_4.b.b.x, -1132f)))))));
}

