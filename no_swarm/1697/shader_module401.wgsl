struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(2147483647i, -1i, -23847i), vec3<i32>(0i, -42947i, 8640i), vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(-28163i, 2147483647i, -22529i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> bool {
    let var_0 = Struct_2(66622u, vec4<u32>(~u_input.a, 0u, ~4294967295u, 19086u), Struct_1(-1345f, vec4<u32>(~(u_input.c | u_input.c), u_input.a, 78962u, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(0u ^ u_input.c, 1u), ~vec2<u32>(7169u, 4294967295u)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-633f, _wgslsmith_f_op_f32(floor(600f)), _wgslsmith_div_f32(396f, 569f))))), -2147483647i, vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(-40039i, -45377i), vec2<i32>(u_input.b, 15256i), arg_1), ~vec2<i32>(-17349i, -20299i)), vec2<i32>(-1i & u_input.b, ~2147483647i)), u_input.b, ~(-u_input.b), u_input.b));
    var var_1 = var_0.c;
    var var_2 = vec2<u32>(var_1.c.x, var_0.b.x);
    var var_3 = Struct_1(var_0.c.d.x, (vec4<u32>(0u, 83887u, 1u, 52629u) ^ (~vec4<u32>(19272u, 26664u, var_1.c.x, 0u) & ~vec4<u32>(var_0.b.x, 1244u, u_input.c, var_0.a))) ^ var_0.c.b, var_0.b.wy, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -280f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-2385f, var_0.c.a))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - -969f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), var_0.c.d.x))));
    var var_4 = ~_wgslsmith_mult_i32(-792i, _wgslsmith_mod_i32(var_0.e.x, _wgslsmith_dot_vec4_i32(var_0.e << (vec4<u32>(var_3.b.x, 6625u, 23548u, var_3.c.x) % vec4<u32>(32u)), ~vec4<i32>(var_0.d, var_0.d, 9186i, u_input.b))));
    return -22262i > var_0.d;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> u32 {
    global0 = select(39702u, firstTrailingBit(_wgslsmith_add_u32(u_input.c, u_input.c) & arg_1), arg_2.d >= -1i);
    var var_0 = ~_wgslsmith_div_vec2_i32(arg_2.e.wx, arg_2.e.wx | _wgslsmith_add_vec2_i32(vec2<i32>(arg_2.d, -2147483647i), arg_0.e.ww));
    var var_1 = vec3<bool>(!(!(arg_0.d < arg_0.d)), func_3(select(select(vec4<bool>(arg_3, arg_3, arg_3, true), vec4<bool>(true, true, false, false), vec4<bool>(true, arg_3, arg_3, arg_3)), !select(vec4<bool>(true, true, arg_3, arg_3), vec4<bool>(arg_3, arg_3, true, true), arg_3), select(select(vec4<bool>(arg_3, false, false, false), vec4<bool>(arg_3, true, false, arg_3), vec4<bool>(false, true, false, arg_3)), !vec4<bool>(arg_3, false, arg_3, true), !vec4<bool>(false, true, true, arg_3))), arg_3), any(select(!(!vec3<bool>(arg_3, arg_3, true)), vec3<bool>(true, true, true), select(!vec3<bool>(false, false, arg_3), !vec3<bool>(arg_3, false, arg_3), false))));
    global1 = array<vec3<i32>, 4>();
    let var_2 = _wgslsmith_f_op_f32(1947f * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.c.a)), _wgslsmith_f_op_f32(trunc(arg_2.c.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.d.x) * arg_0.c.a)));
    return ~_wgslsmith_dot_vec3_u32(~countOneBits(arg_2.c.b.yxw), firstTrailingBit(~vec3<u32>(u_input.a, arg_1, 4294967295u))) | ~max(1u, _wgslsmith_dot_vec2_u32(arg_0.b.zx, ~vec2<u32>(16898u, 62784u)));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_2(func_4(Struct_2(select(~0u, u_input.c, func_3(vec4<bool>(false, false, true, true), false)), abs(max(vec4<u32>(u_input.a, 31678u, u_input.c, u_input.c), vec4<u32>(u_input.a, u_input.c, 0u, u_input.c))), Struct_1(arg_1.x, select(vec4<u32>(28482u, 35463u, 0u, 2819u), vec4<u32>(4294967295u, 11280u, 4651u, u_input.c), true), vec2<u32>(87708u, u_input.a), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, 1212f, arg_1.x), vec3<f32>(arg_1.x, arg_1.x, -627f))), ~reverseBits(arg_0), select(firstTrailingBit(vec4<i32>(-4547i, u_input.b, -13053i, 1i)), firstLeadingBit(vec4<i32>(-2147483647i, 5271i, u_input.b, u_input.b)), arg_1.x < arg_2.x)), 14754u, Struct_2(~(u_input.a >> (u_input.a % 32u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, 50662u, 1u), vec4<u32>(u_input.a, 6894u, 24605u, u_input.c)), _wgslsmith_sub_u32(u_input.a, 4294967295u), reverseBits(u_input.c), ~0u), Struct_1(arg_2.x, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, 19023u, 6349u), vec4<u32>(0u, u_input.a, u_input.c, u_input.c)), ~vec2<u32>(28430u, u_input.a), vec3<f32>(arg_2.x, arg_2.x, 288f)), 2147483647i, vec4<i32>(-2147483647i, _wgslsmith_add_i32(1i, 0i), arg_0, firstLeadingBit(-1i))), _wgslsmith_clamp_u32(~u_input.c, 0u, 18339u) > 1u), select(vec4<u32>(~firstLeadingBit(u_input.a), ~(33014u & u_input.a), u_input.a, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(92588u ^ u_input.c, u_input.a ^ 4294967295u, func_4(Struct_2(19977u, vec4<u32>(u_input.c, 39335u, u_input.a, u_input.a), Struct_1(arg_1.x, vec4<u32>(u_input.c, 53626u, 1u, u_input.c), vec2<u32>(5785u, u_input.c), vec3<f32>(arg_1.x, arg_1.x, arg_1.x)), -35116i, vec4<i32>(-12066i, 1i, 2147483647i, arg_0)), 1u, Struct_2(u_input.a, vec4<u32>(31708u, u_input.c, u_input.c, 4294967295u), Struct_1(arg_1.x, vec4<u32>(u_input.c, u_input.c, u_input.a, 71318u), vec2<u32>(4294967295u, u_input.a), vec3<f32>(arg_2.x, 1608f, arg_1.x)), 1i, vec4<i32>(arg_0, -2147483647i, 26313i, 2147483647i)), false), 60705u), ~(~vec4<u32>(36454u, 0u, 37869u, u_input.a)), vec4<u32>(_wgslsmith_mod_u32(u_input.a, 0u), u_input.c, 1643u, u_input.a)), select(true, true, true)), Struct_1(arg_1.x, vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(50147u, 0u), vec2<u32>(u_input.c, 18089u)), min(max(u_input.c, u_input.a), reverseBits(u_input.a)), 1u, u_input.c), ~vec2<u32>(0u, u_input.c) | ~firstLeadingBit(vec2<u32>(4294967295u, u_input.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(715f, 420f, arg_2.x), vec3<f32>(-109f, arg_1.x, arg_1.x))))))), -_wgslsmith_add_i32(~arg_0 << (u_input.a % 32u), reverseBits(~(-1i))), firstTrailingBit(abs(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -1731i, arg_0, arg_0), vec4<i32>(arg_0, u_input.b, 8589i, arg_0)))));
    var_0 = Struct_2(countOneBits(abs(1u) >> (_wgslsmith_dot_vec4_u32(~var_0.c.b, ~vec4<u32>(95429u, var_0.b.x, u_input.c, 12130u)) % 32u)), vec4<u32>(38100u, _wgslsmith_div_u32(min(u_input.a | 0u, ~var_0.b.x), ~(var_0.b.x >> (44615u % 32u))), ~var_0.b.x, _wgslsmith_sub_u32(var_0.c.b.x, 0u)), var_0.c, max(i32(-1i) * -(i32(-1i) * -1i), countOneBits(_wgslsmith_mod_i32(-u_input.b, -25459i))), firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.e.xx, var_0.e.wz), countOneBits(19894i), firstLeadingBit(1i), _wgslsmith_add_i32(reverseBits(u_input.b), -3911i))));
    var var_1 = u_input.c;
    var_1 = var_0.b.x;
    var_0 = Struct_2(1u, _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(var_0.a, 55504u, 4294967295u, 4294967295u)) | var_0.b, var_0.b & var_0.b, reverseBits(~vec4<u32>(39619u, var_0.b.x, 4294967295u, var_0.c.c.x))) << (select(var_0.c.b, ~var_0.b ^ _wgslsmith_sub_vec4_u32(var_0.c.b, vec4<u32>(var_0.c.b.x, 1u, 0u, 4294967295u)), !(var_0.c.c.x > var_0.a)) % vec4<u32>(32u)), var_0.c, _wgslsmith_dot_vec4_i32(vec4<i32>((var_0.d >> (var_0.c.c.x % 32u)) << (1u % 32u), 63603i, ~1i, -19918i), firstTrailingBit(~var_0.e)), vec4<i32>(~1i, abs(firstLeadingBit(_wgslsmith_div_i32(arg_0, u_input.b))), abs((arg_0 & u_input.b) << (1u % 32u)), min(var_0.d, ~48686i)));
    return var_0.c;
}

fn func_1(arg_0: bool, arg_1: bool) -> vec4<bool> {
    var var_0 = func_2(-1i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1431f, 1190f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(193f, 651f), vec2<f32>(-1281f, -1781f)))), vec2<f32>(_wgslsmith_f_op_f32(abs(138f)), _wgslsmith_f_op_f32(542f - -618f)), arg_1)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1054f, -672f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1128f, -1000f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-830f, 403f)))))));
    var var_1 = -max(vec2<i32>(abs(u_input.b), 42156i) & select(~vec2<i32>(u_input.b, u_input.b), vec2<i32>(0i, u_input.b) | vec2<i32>(u_input.b, u_input.b), arg_1), vec2<i32>(u_input.b, _wgslsmith_mod_i32(abs(u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -41857i), vec2<i32>(u_input.b, 0i)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(178f)))))))), var_0.b, (~(vec2<u32>(var_0.b.x, 36377u) >> (vec2<u32>(var_0.b.x, 57998u) % vec2<u32>(32u))) << (var_0.b.zx % vec2<u32>(32u))) ^ _wgslsmith_sub_vec2_u32(select(var_0.c, vec2<u32>(var_0.c.x, var_0.b.x) >> (vec2<u32>(u_input.a, var_0.c.x) % vec2<u32>(32u)), !vec2<bool>(arg_1, true)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), var_0.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_0.a) - vec3<f32>(var_0.a, -522f, 1000f)) + var_0.d), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(var_0.d, var_0.d, vec3<bool>(true, arg_1, true))), vec3<f32>(var_0.a, var_0.d.x, var_0.d.x))))));
    var var_3 = true;
    var_1 = vec2<i32>(~(_wgslsmith_add_i32(countOneBits(-14821i), firstTrailingBit(2147483647i)) ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(-18186i, var_1.x, -68760i, var_1.x), min(vec4<i32>(1255i, 29319i, var_1.x, 29897i), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)))), _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.b, u_input.b, u_input.b) & global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~45609u, _wgslsmith_add_u32(1u, 67514u), 13381u), 4u)], abs(-_wgslsmith_clamp_vec3_i32(global1[_wgslsmith_index_u32(u_input.a, 4u)], vec3<i32>(0i, var_1.x, var_1.x), global1[_wgslsmith_index_u32(0u, 4u)]))));
    return !(!(!vec4<bool>(true, arg_0 && false, !arg_1, false && arg_1)));
}

fn func_5(arg_0: vec4<bool>) -> Struct_2 {
    global1 = array<vec3<i32>, 4>();
    global0 = ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(~_wgslsmith_add_u32(1u, 1u), u_input.c), 52229u);
    var var_0 = func_2(u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -590f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 1126f), vec2<f32>(-1073f, 1990f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-118f + 1967f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1342f)) - _wgslsmith_f_op_f32(1154f - 983f)))));
    var var_1 = ~global1[_wgslsmith_index_u32(u_input.c, 4u)] ^ ~vec3<i32>(u_input.b, -2147483647i, u_input.b);
    let var_2 = ~vec4<u32>(abs(17274u) & countOneBits(u_input.c), ~max(~1u, ~var_0.c.x), 50239u, var_0.b.x);
    return Struct_2(~(~var_2.x), vec4<u32>(var_2.x, abs(~4294967295u), 45414u, firstTrailingBit(4294967295u)), func_2(~u_input.b, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-178f, _wgslsmith_f_op_f32(661f - var_0.d.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-514f, var_0.a), var_0.d.zx, false)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.d.xx))))), _wgslsmith_mult_i32(-select(abs(0i), 1i, -66402i > u_input.b), u_input.b ^ _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_1.yy, var_1.zx), var_1.zy)), vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, -64750i, firstTrailingBit(var_1.x)), abs(22983i), abs(43996i), _wgslsmith_clamp_i32(~2147483647i, var_1.x, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1238f, vec4<u32>(u_input.a >> ((firstLeadingBit(u_input.c) >> (u_input.a % 32u)) % 32u), 4294967295u, 65482u, 0u), _wgslsmith_div_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.a, u_input.c) | vec2<u32>(59746u, 0u)), min(~vec2<u32>(41743u, 1u), ~vec2<u32>(0u, u_input.c) | (vec2<u32>(u_input.c, 56081u) << (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1487f, 1f, -274f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(399f, -1399f, 192f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -443f), 862f, _wgslsmith_f_op_f32(982f * -867f)))));
    global1 = array<vec3<i32>, 4>();
    var var_1 = u_input.b ^ (i32(-1i) * -17925i);
    var_1 = _wgslsmith_mod_i32(u_input.b, 0i);
    let var_2 = func_5(func_1(true, !(!(var_0.a < var_0.a))));
    let var_3 = var_2;
    var var_4 = 70240u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(var_2.e.ywx, ~select(var_3.e.wxy, -var_3.e.xwz, true), _wgslsmith_add_vec3_i32(~vec3<i32>(var_2.d, 2147483647i, -17198i), vec3<i32>(_wgslsmith_sub_i32(-4010i, var_3.d), var_2.e.x, var_3.e.x))), _wgslsmith_mult_vec4_i32(firstTrailingBit(-var_2.e) << (var_0.b % vec4<u32>(32u)), var_2.e));
}

