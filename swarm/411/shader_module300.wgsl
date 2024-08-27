struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec2<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: Struct_3,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(1u, 0u), vec2<u32>(1u, 29209u), vec2<u32>(0u, 92155u), vec2<u32>(43514u, 1u), vec2<u32>(4294967295u, 84662u), vec2<u32>(0u, 0u), vec2<u32>(19230u, 69733u), vec2<u32>(49969u, 27722u), vec2<u32>(14271u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(48984u, 4294967295u), vec2<u32>(17893u, 30718u), vec2<u32>(9993u, 1444u), vec2<u32>(5874u, 4294967295u), vec2<u32>(28853u, 1u), vec2<u32>(1u, 4294967295u));

var<private> global2: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true));

var<private> global3: array<vec3<f32>, 27>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    global1 = array<vec2<u32>, 17>();
    var var_0 = ~max(reverseBits(-vec2<i32>(-15527i, 1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(-2124i, -1i), vec2<i32>(0i, 3414i))) << ((global1[_wgslsmith_index_u32(~u_input.a, 17u)] & global1[_wgslsmith_index_u32(u_input.a, 17u)]) % vec2<u32>(32u)));
    let var_1 = select(vec2<bool>(!all(vec4<bool>(true, true, true, true)), any(global2[_wgslsmith_index_u32(u_input.a, 24u)]) & true), vec2<bool>(true, true), true);
    global2 = array<vec3<bool>, 24>();
    var var_2 = global1[_wgslsmith_index_u32(u_input.a, 17u)];
    return _wgslsmith_dot_vec4_u32(select(vec4<u32>(~1u, _wgslsmith_add_u32(61952u, 57268u), countOneBits(var_2.x), 24439u) >> (select(~vec4<u32>(var_2.x, 1u, u_input.a, u_input.a), ~vec4<u32>(var_2.x, 0u, 4294967295u, u_input.a), var_1.x) % vec4<u32>(32u)), ~vec4<u32>(~4294967295u, 59840u, u_input.a | 52103u, select(var_2.x, 48360u, false)), any(var_1)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(58213u, 0u, u_input.a, 31105u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) | vec4<u32>(firstTrailingBit(16264u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(72803u, 17u)], vec2<u32>(10110u, 16486u)), ~0u), ~countOneBits(1u), ~(~u_input.a)));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: bool, arg_3: i32) -> u32 {
    global0 = firstTrailingBit(u_input.a);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -330f)), _wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1683f))));
    let var_1 = select(arg_3, _wgslsmith_sub_i32((i32(-1i) * -32056i) & abs(arg_3), reverseBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3, -1i), vec2<i32>(arg_3, arg_3)), 44086i))), arg_2);
    var var_2 = -arg_3;
    var var_3 = vec3<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-825f)))) < _wgslsmith_f_op_f32(f32(-1f) * -906f), any(!global2[_wgslsmith_index_u32(firstTrailingBit(~arg_1.x), 24u)]), 4294967295u != ~reverseBits(~arg_1.x));
    return select(arg_0, 0u, _wgslsmith_add_u32(_wgslsmith_div_u32(arg_1.x, abs(arg_1.x)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_1.x, arg_1.x, u_input.a)), ~vec3<u32>(10563u, 0u, u_input.a))) > _wgslsmith_mod_u32(u_input.a, 49536u));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: u32) -> vec3<u32> {
    global0 = abs(50451u);
    let var_0 = vec2<i32>(-18711i, _wgslsmith_add_i32(1i, abs(1i)));
    global0 = _wgslsmith_mod_u32(func_4(~_wgslsmith_sub_u32(arg_3, func_3()), _wgslsmith_add_vec2_u32(global1[_wgslsmith_index_u32(arg_3, 17u)], global1[_wgslsmith_index_u32(~64580u, 17u)]), any(vec3<bool>(true, all(global2[_wgslsmith_index_u32(10119u, 24u)]), !arg_2.x)), firstTrailingBit(countOneBits(firstTrailingBit(-2147483647i)))), select(~(~_wgslsmith_mult_u32(arg_3, arg_0)), 4294967295u, true));
    var var_1 = _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + -728f) - arg_1.x));
    let var_2 = ~0u;
    return ~(~vec3<u32>(func_4(~arg_0, global1[_wgslsmith_index_u32(arg_0, 17u)], false, var_0.x & var_0.x), 15131u, arg_0));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global3 = array<vec3<f32>, 27>();
    global3 = array<vec3<f32>, 27>();
    let var_0 = Struct_2(4294967295u, ~(~3331u), Struct_1(arg_0.a), arg_0, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1294f, 1344f) - _wgslsmith_f_op_f32(1276f - 249f)), _wgslsmith_div_f32(566f, _wgslsmith_f_op_f32(trunc(-103f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-386f * -1000f))))));
    let var_1 = var_0.c.a.wz;
    var var_2 = select(select(select(abs(countOneBits(vec3<u32>(0u, var_0.b, var_0.b))), select(vec3<u32>(125283u, var_0.b, 4294967295u), vec3<u32>(110524u, u_input.a, 4294967295u), true) & (vec3<u32>(u_input.a, u_input.a, var_0.b) & vec3<u32>(var_0.a, 1u, var_0.a)), vec3<bool>(var_0.e.x <= var_0.e.x, any(vec2<bool>(true, var_0.c.a.x)), var_0.e.x <= var_0.e.x)), _wgslsmith_sub_vec3_u32(~func_2(15435u, global3[_wgslsmith_index_u32(3928u, 27u)], vec4<bool>(false, true, var_1.x, var_0.d.a.x), 4294967295u), ~vec3<u32>(var_0.b, 4294967295u, 0u)), var_0.d.a.wxy), firstLeadingBit(~(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(var_0.a, 1u, var_0.a)) | (vec3<u32>(var_0.b, var_0.b, var_0.b) ^ vec3<u32>(var_0.b, var_0.a, 0u)))), arg_0.a.yyy);
    return _wgslsmith_div_i32(1i, ~_wgslsmith_clamp_i32(1i, 1i, ~_wgslsmith_clamp_i32(-2147483647i, -8444i, -9973i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~u_input.a);
    global1 = array<vec2<u32>, 17>();
    let var_0 = Struct_4(-func_1(Struct_1(vec4<bool>(false, true, true, true))) < -2147483647i);
    var var_1 = global1[_wgslsmith_index_u32(max(firstTrailingBit(~func_2(u_input.a, _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(u_input.a, 27u)]), vec4<bool>(var_0.a, false, var_0.a, var_0.a), _wgslsmith_sub_u32(u_input.a, 4294967295u)).x), ~u_input.a | (~1u >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 24110u)) % 32u))), 17u)];
    let var_2 = Struct_5(!var_0.a, global1[_wgslsmith_index_u32(u_input.a, 17u)], Struct_3(Struct_2(countOneBits(1u), _wgslsmith_div_u32(_wgslsmith_mult_u32(var_1.x, var_1.x), 0u), Struct_1(vec4<bool>(false, true, var_0.a, false)), Struct_1(select(vec4<bool>(true, false, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, false, true), vec4<bool>(false, var_0.a, true, false))), vec2<f32>(_wgslsmith_f_op_f32(min(655f, -1000f)), _wgslsmith_f_op_f32(select(940f, 347f, true)))), ~vec4<i32>(~1i, firstTrailingBit(-14038i), _wgslsmith_mod_i32(2147483647i, -58947i), -2147483647i), vec2<u32>(u_input.a, u_input.a & (u_input.a & 0u)), !all(select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, false, false), vec4<bool>(var_0.a, true, var_0.a, var_0.a))), Struct_1(select(select(vec4<bool>(false, false, true, var_0.a), vec4<bool>(var_0.a, true, true, true), vec4<bool>(var_0.a, false, var_0.a, false)), !vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), all(vec2<bool>(var_0.a, true))))), Struct_1(select(vec4<bool>(var_0.a || true, true || var_0.a, select(var_0.a, false, false), var_0.a), vec4<bool>(true, var_0.a & true, false, var_0.a), true)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-734f, _wgslsmith_f_op_f32(-1247f - -1045f))) + _wgslsmith_f_op_f32(f32(-1f) * -1328f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -950f))))));
    let var_3 = var_2.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~var_2.c.b.x, _wgslsmith_dot_vec3_i32(~var_2.c.b.xxz, var_2.c.b.zwz)), (-2582i >> (select(~var_3.a, var_3.a, var_3.d.a.x) % 32u)) << ((var_2.b.x & ~(~0u)) % 32u), ~33730u);
}

