struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<f32, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> bool {
    global0 = _wgslsmith_div_vec2_i32(u_input.a.xx << (vec2<u32>(8655u, ~1u) % vec2<u32>(32u)), ~(~_wgslsmith_sub_vec2_i32(-vec2<i32>(-14662i, global0.x), vec2<i32>(-47944i, -32315i) ^ arg_2.c.xy)));
    var var_0 = vec2<u32>(select(1u, ~(~(~1u)), true), ~1u);
    let var_1 = !select(!(!vec2<bool>(arg_0, arg_0)), !select(vec2<bool>(true, true), vec2<bool>(false, false), !vec2<bool>(false, arg_0)), all(vec2<bool>(true, any(vec2<bool>(arg_0, arg_0)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(511f, arg_1, -2099f, 664f), vec4<f32>(global1[_wgslsmith_index_u32(62269u, 4u)], arg_1, arg_2.b, 1991f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_2.a, arg_2.b, arg_2.b) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 1509f, global1[_wgslsmith_index_u32(26238u, 4u)], arg_1))))) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(abs(1038f)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_2.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(22958u, 4u)], arg_1, 1171f, global1[_wgslsmith_index_u32(23704u, 4u)])))))));
    let var_3 = 3212i;
    return all(vec3<bool>(var_1.x, false, all(vec3<bool>(all(vec2<bool>(var_1.x, true)), true, var_1.x))));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_3(0u, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(max(1u, arg_1.a), 4u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-745f, arg_1.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-232f)) * _wgslsmith_f_op_f32(-arg_1.c.a))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(319f, 1940f, 931f)))))), true, true);
    var_0 = Struct_3(var_0.a, vec3<f32>(var_0.b.x, -2377f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.c.b, -1353f) + arg_1.c.a) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_1.c.a, arg_0)))))), func_3(true, -3095f, arg_1.c), !any(!(!vec3<bool>(var_0.c, true, false))));
    var_0 = Struct_3((4294967295u ^ arg_1.a) & abs(arg_1.b.x), vec3<f32>(global1[_wgslsmith_index_u32(~1u, 4u)], arg_1.c.a, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-224f * var_0.b.x), _wgslsmith_f_op_f32(var_0.b.x - 1566f), var_0.d)))), all(select(!vec4<bool>(var_0.c, true, true, var_0.d), !(!vec4<bool>(true, var_0.c, var_0.c, false)), select(!vec4<bool>(var_0.d, var_0.c, var_0.c, var_0.c), select(vec4<bool>(false, var_0.c, var_0.c, var_0.c), vec4<bool>(var_0.d, true, true, var_0.c), false), true))), false);
    let var_1 = !vec3<bool>(false, false, any(!(!vec3<bool>(var_0.d, true, true))));
    let var_2 = Struct_5(arg_1.c.c.yy, 4294967295u);
    return max(abs(firstTrailingBit(min(arg_1.a, 24407u) << (var_2.b % 32u))), firstLeadingBit(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 1u, arg_1.a, arg_1.b.x)), vec4<u32>(reverseBits(1u), 1u, var_2.b, 0u))));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_2) -> vec2<bool> {
    return !(!vec2<bool>(arg_0, true));
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec3_u32(min(firstTrailingBit(~vec3<u32>(arg_2.a, 0u, 28996u)), vec3<u32>(~0u, 4294967295u, select(arg_2.a, arg_2.a, true))) & (max(vec3<u32>(15899u, arg_2.a, arg_2.b.x), ~arg_2.b) | arg_2.b), select(arg_2.b, max(~arg_2.b, vec3<u32>(arg_2.b.x, arg_2.b.x, arg_2.a) ^ arg_2.b), vec3<bool>(arg_0.x, false & arg_0.x, true)) ^ arg_2.b);
    var var_1 = Struct_3(var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-332f, -270f, 335f)))), false, any(vec3<bool>(true, arg_2.c.c.x < 1i, true)) == arg_0.x);
    let var_2 = func_3(var_1.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -133f))), Struct_1(1f, arg_2.c.b, vec3<i32>(36191i, -1i, global0.x)));
    let var_3 = _wgslsmith_dot_vec4_u32(~select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a, 61867u, arg_2.b.x, var_1.a) << (vec4<u32>(0u, 19699u, var_1.a, var_1.a) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(79764u, var_1.a, 0u, arg_2.a), vec4<u32>(arg_2.a, arg_2.b.x, var_0, arg_2.a), vec4<u32>(9203u, var_0, var_0, arg_2.a))), ~vec4<u32>(var_1.a, var_1.a, 7809u, arg_2.a) << (abs(vec4<u32>(20917u, arg_2.a, var_1.a, 4294967295u)) % vec4<u32>(32u)), 1i <= select(u_input.a.x, u_input.a.x, arg_0.x)), abs(vec4<u32>(1u ^ var_1.a, arg_2.b.x, ~1u, ~firstTrailingBit(4294967295u))));
    var_1 = Struct_3(~max(_wgslsmith_mult_u32(func_2(global1[_wgslsmith_index_u32(arg_2.b.x, 4u)], arg_2), ~var_3), arg_2.b.x), var_1.b, true, !all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(var_1.c, arg_0.x, var_2, arg_0.x), vec4<bool>(var_2, var_1.d, true, arg_0.x)), select(vec4<bool>(true, true, true, arg_0.x), vec4<bool>(true, var_1.d, true, var_1.c), vec4<bool>(true, var_1.c, true, true)), true)));
    return Struct_2(max(min(~_wgslsmith_mod_u32(arg_2.a, var_1.a), 41876u), ~((4294967295u << (var_0 % 32u)) & (1u ^ var_3))), ~max(vec3<u32>(var_0 ^ 1u, _wgslsmith_mod_u32(var_3, 1u), _wgslsmith_div_u32(var_3, 21093u)), vec3<u32>(46457u, ~var_1.a, var_1.a)), Struct_1(-190f, -831f, _wgslsmith_mult_vec3_i32(-abs(vec3<i32>(u_input.a.x, -1i, u_input.a.x)), vec3<i32>(global0.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), u_input.a.x))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_3((_wgslsmith_clamp_u32(_wgslsmith_mod_u32(21743u, 54235u), firstLeadingBit(68940u), 61231u) & 0u) & 38684u, arg_2.xxy, false, !select(true | !arg_0, any(vec3<bool>(arg_0, arg_0, arg_0)) == true, arg_0));
    var var_1 = vec3<i32>(2147483647i, u_input.a.x, -1i);
    var_1 = ~u_input.a.xxw;
    global0 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(2147483647i, var_1.x), -2147483647i) & abs(u_input.a.xy), max(~var_1.yz, -var_1.yz) ^ vec2<i32>(1i, 1i)), var_1.x);
    global1 = array<f32, 4>();
    return func_5(func_4(all(vec4<bool>(var_0.c, true, true, arg_0)), vec3<u32>(var_0.a, min(func_2(var_0.b.x, Struct_2(var_0.a, vec3<u32>(var_0.a, var_0.a, var_0.a), Struct_1(-2210f, -1449f, u_input.a.yyz))), 1u), _wgslsmith_mult_u32(var_0.a, _wgslsmith_mod_u32(51884u, 12826u))), Struct_2(var_0.a, vec3<u32>(~44367u, _wgslsmith_add_u32(var_0.a, var_0.a), 4294967295u), Struct_1(_wgslsmith_div_f32(739f, 667f), _wgslsmith_f_op_f32(f32(-1f) * -1538f), u_input.a.zyw))), 1105f, Struct_2(~reverseBits(1u) & ~(~var_0.a), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.a, var_0.a, var_0.a), vec3<u32>(1u, var_0.a, var_0.a) | vec3<u32>(286u, var_0.a, 21567u)), max(vec3<u32>(var_0.a, 18452u, 15271u) >> (vec3<u32>(10655u, var_0.a, var_0.a) % vec3<u32>(32u)), ~vec3<u32>(78339u, 4294967295u, 1u))), Struct_1(681f, arg_2.x, _wgslsmith_mult_vec3_i32(u_input.a.wwz, ~vec3<i32>(global0.x, u_input.a.x, var_1.x)))));
}

fn func_6(arg_0: Struct_4, arg_1: u32) -> bool {
    global0 = vec2<i32>(i32(-1i) * -2147483647i, u_input.a.x & global0.x);
    var var_0 = vec3<bool>(any(select(!(!vec4<bool>(true, true, true, arg_0.e)), !vec4<bool>(arg_0.e, arg_0.e, arg_0.e, arg_0.e), select(select(vec4<bool>(false, arg_0.e, arg_0.e, arg_0.e), vec4<bool>(true, arg_0.e, true, true), vec4<bool>(arg_0.e, true, arg_0.e, arg_0.e)), !vec4<bool>(false, true, arg_0.e, false), global0.x >= -2147483647i))), arg_0.e, true);
    let var_1 = arg_1;
    global1 = array<f32, 4>();
    var var_2 = func_5(vec2<bool>(false, true), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~0u), 4u)]), func_5(!vec2<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(false, true, arg_0.e, var_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(34179u, 4u)], -469f)))))), arg_0.a)).c;
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(vec3<bool>(true, true, true));
    let var_1 = vec4<bool>(func_6(Struct_4(func_1(any(vec2<bool>(var_0, true)), _wgslsmith_dot_vec2_i32(u_input.a.wx, u_input.a.yy), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 4u)], -496f, 544f, global1[_wgslsmith_index_u32(1u, 4u)]) + vec4<f32>(1490f, global1[_wgslsmith_index_u32(19290u, 4u)], global1[_wgslsmith_index_u32(73763u, 4u)], -1748f))), countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_clamp_vec3_i32(~u_input.a.zyw, vec3<i32>(2147483647i, global0.x, u_input.a.x), _wgslsmith_add_vec3_i32(u_input.a.zyz, u_input.a.yxy)), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.xx, vec2<i32>(-2147483647i, 2147483647i)), abs(u_input.a.yy)), (1267f < global1[_wgslsmith_index_u32(1u, 4u)]) || var_0), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(23097u, 4294967295u), vec2<u32>(0u, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(81810u, 0u), vec2<u32>(0u, 1u), vec2<u32>(7223u, 4294967295u))), vec2<u32>(abs(31756u), 28122u))), var_0, var_0 & all(!(!vec2<bool>(var_0, true))), select(!(_wgslsmith_mult_i32(1i, u_input.a.x) <= (global0.x | 0i)), !var_0, var_0));
    global0 = vec2<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(u_input.a, abs(vec4<i32>(-32613i, u_input.a.x, 45030i, global0.x))), countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.ww, vec2<i32>(38459i, global0.x)), 1i, -27121i, 1i))), 0i);
    global1 = array<f32, 4>();
    let var_2 = vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~reverseBits(4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~3928u, countOneBits(37203u), 14258u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), func_1(var_0, -13716i, vec4<f32>(global1[_wgslsmith_index_u32(57635u, 4u)], 443f, global1[_wgslsmith_index_u32(4294967295u, 4u)], 273f)).b))), 4u)], 690f, -2044f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_5(!var_1.yy, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)]), func_5(vec2<bool>(true, false), global1[_wgslsmith_index_u32(50788u, 4u)], Struct_2(4294967295u, vec3<u32>(18645u, 17846u, 4294967295u), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(51217u, 4u)], vec3<i32>(global0.x, u_input.a.x, global0.x))))).c.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1171f), global1[_wgslsmith_index_u32(0u, 4u)])));
    var var_3 = abs(vec3<u32>(1u, 1u, 1u));
    global1 = array<f32, 4>();
    let var_4 = Struct_4(func_5(vec2<bool>(true, var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2.x)), -1295f), func_1(var_1.x, ~(u_input.a.x & u_input.a.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-827f, -862f, var_2.x, -870f))))))), ~vec4<u32>(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(20295u, 0u)), _wgslsmith_mult_u32(~var_3.x, _wgslsmith_mult_u32(49510u, 1u)), firstTrailingBit(~var_3.x), _wgslsmith_add_u32(var_3.x, ~91881u)), u_input.a.wxw, u_input.a.xw & vec2<i32>(global0.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -31119i, global0.x, global0.x), vec4<i32>(-2147483647i, global0.x, 13730i, u_input.a.x))), true);
    var var_5 = !vec3<bool>(false, true & var_4.e, !func_3(true, var_4.a.c.a, Struct_1(2299f, var_2.x, vec3<i32>(global0.x, u_input.a.x, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(-13230i, -26751i, var_4.c.x), -max(~vec3<i32>(global0.x, global0.x, var_4.d.x), var_4.c)), vec4<f32>(331f, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -485f)), _wgslsmith_f_op_f32(abs(var_2.x))), vec2<u32>(var_3.x | (countOneBits(31941u) << (countOneBits(var_4.a.a) % 32u)), countOneBits(firstTrailingBit(12514u) >> (var_4.a.a % 32u))), _wgslsmith_f_op_f32(step(-1467f, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_4.a.c.a)) + 945f)))));
}

