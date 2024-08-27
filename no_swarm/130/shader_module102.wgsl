struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool;

var<private> global2: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(4294967295u, 25599u, 1u, 0u), vec4<u32>(35839u, 46613u, 101654u, 33993u), vec4<u32>(6035u, 1u, 4294967295u, 0u), vec4<u32>(1u, 1u, 0u, 42832u), vec4<u32>(19809u, 8482u, 1u, 4294967295u), vec4<u32>(2057u, 11786u, 0u, 51817u), vec4<u32>(0u, 1u, 81978u, 0u), vec4<u32>(48507u, 80183u, 4294967295u, 1u), vec4<u32>(85146u, 1u, 4294967295u, 1734u), vec4<u32>(14263u, 1u, 24873u, 4254u), vec4<u32>(58014u, 1u, 4294967295u, 51044u), vec4<u32>(1u, 4294967295u, 1u, 1u), vec4<u32>(15611u, 1u, 4294967295u, 44640u), vec4<u32>(38891u, 9755u, 0u, 65493u), vec4<u32>(24820u, 57062u, 279u, 95679u), vec4<u32>(4294967295u, 40216u, 39762u, 1u), vec4<u32>(1u, 15027u, 86567u, 134032u), vec4<u32>(32901u, 43712u, 73102u, 90686u), vec4<u32>(0u, 21933u, 53158u, 6911u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u));

var<private> global3: f32;

var<private> global4: array<vec4<i32>, 29>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    global0 = _wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(0i, 15118i)) <= u_input.c;
    var var_0 = select(select(select(vec4<bool>(arg_0, true, arg_0, any(vec4<bool>(arg_0, arg_0, true, false))), select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), all(vec2<bool>(arg_0, true))), vec4<bool>(true, false, any(vec4<bool>(false, true, arg_0, arg_0)), arg_0)), select(!vec4<bool>(false, arg_0, true, true), vec4<bool>(!arg_0, arg_0, all(vec4<bool>(true, true, false, arg_0)), true), select(vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(arg_0, arg_0, true, true), true)), 83481u < _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(5797u, u_input.b, 4349u), vec3<u32>(134266u, 48730u, 814u)), ~vec3<u32>(64511u, u_input.b, u_input.b))), vec4<bool>(arg_0, all(select(vec2<bool>(true, true), !vec2<bool>(false, arg_0), !vec2<bool>(arg_0, arg_0))), arg_0, false), !(!(!select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(true, false, false, true)))));
    let var_1 = arg_1;
    var var_2 = var_1;
    let var_3 = arg_1;
    return vec2<f32>(var_1.a.x, arg_1.a.x);
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = vec4<i32>(reverseBits(-12850i), max(firstTrailingBit(_wgslsmith_div_i32(u_input.c, 1i)), min(_wgslsmith_add_i32(u_input.c, u_input.d), 1i)), _wgslsmith_add_i32(-_wgslsmith_add_i32(-6691i, 0i), arg_0.b.x), -3335i) | vec4<i32>(21391i, arg_0.b.x, 1i << ((u_input.b | max(u_input.a.x, u_input.b)) % 32u), arg_0.b.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -349f), 1652f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(true, arg_0, arg_0))));
    let var_2 = arg_0;
    global4 = array<vec4<i32>, 29>();
    let var_3 = true;
    return firstLeadingBit(~global2[_wgslsmith_index_u32(select(~0u, ~u_input.a.x >> (~u_input.b % 32u), any(select(vec3<bool>(false, var_3, var_3), vec3<bool>(false, false, false), var_3))), 20u)]);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(816u, 0u, u_input.b, 79972u) ^ select(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), func_2(arg_0), arg_0.a.x < arg_0.a.x), vec4<u32>(u_input.b & _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), _wgslsmith_mod_u32(~33847u, 4294967295u ^ u_input.b), u_input.a.x, 1u)) >= _wgslsmith_add_u32(u_input.b, 3246u);
    var var_0 = _wgslsmith_f_op_vec4_f32(select(arg_0.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 389f))), arg_0.a, select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a))))), -u_input.c < u_input.c));
    global2 = array<vec4<u32>, 20>();
    var var_1 = ~(~_wgslsmith_mod_i32(arg_0.b.x, countOneBits(firstTrailingBit(-1i))));
    global3 = 188f;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3(true, Struct_1(vec4<f32>(982f, arg_0.a.x, 1000f, arg_0.a.x), vec2<i32>(u_input.c, 1i)), arg_0)).x, _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x), _wgslsmith_f_op_f32(-var_0.x), -733f), vec2<i32>(~24936i, 2147483647i | _wgslsmith_dot_vec2_i32(-arg_0.b, -arg_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2019f, 381f, -586f, -402f), vec4<f32>(-743f, 808f, -319f, 451f)))), -_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.c, u_input.c), vec2<i32>(2147483647i, u_input.d) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))));
    global2 = array<vec4<u32>, 20>();
    let var_1 = vec3<i32>(select(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, var_0.b.x), (var_0.b >> (vec2<u32>(u_input.a.x, 27616u) % vec2<u32>(32u))) ^ -var_0.b), ~var_0.b.x, true), -var_0.b.x, countOneBits(11739i));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(var_0.a + var_0.a)), ~func_1(func_1(func_1(Struct_1(var_0.a, var_0.b)))).b);
    let var_3 = _wgslsmith_clamp_vec3_i32(-_wgslsmith_clamp_vec3_i32(~reverseBits(vec3<i32>(0i, 2147483647i, -31623i)), vec3<i32>(1i, 1i, 1i) >> (vec3<u32>(u_input.b, 1u, 1u) % vec3<u32>(32u)), reverseBits(-var_1)), ~(~vec3<i32>(var_1.x, u_input.c, var_2.b.x)) << (vec3<u32>(~_wgslsmith_mod_u32(4294967295u, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(109481u, 23701u, u_input.a.x), vec3<u32>(1u, 40270u, u_input.b)) & _wgslsmith_dot_vec4_u32(vec4<u32>(26822u, u_input.b, 1u, 4294967295u), global2[_wgslsmith_index_u32(1u, 20u)]), u_input.b) % vec3<u32>(32u)), var_1 | select(select(var_1 << (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u)), vec3<i32>(u_input.d, var_1.x, var_0.b.x), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), var_1 ^ ~var_1, any(vec3<bool>(true, true, true))));
    let var_4 = min(min(vec3<i32>(abs(34155i), -(22139i | var_3.x), var_0.b.x ^ var_3.x), vec3<i32>((i32(-1i) * -2147483647i) & var_3.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.d, 2147483647i), var_1.x), firstTrailingBit(0i))), vec3<i32>(~firstLeadingBit(firstLeadingBit(var_2.b.x)), var_1.x, -(~(-13758i)) & (min(var_0.b.x, -29301i) & abs(0i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(919f, _wgslsmith_div_f32(315f, 439f)), _wgslsmith_f_op_vec2_f32(func_3(!all(vec3<bool>(true, true, true)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(-187f)), _wgslsmith_f_op_f32(-var_0.a.x), -125f, var_0.a.x), vec2<i32>(-1i) * -var_2.b), func_1(func_1(Struct_1(var_0.a, vec2<i32>(12289i, -73885i)))))).x, min(vec2<i32>(~(-2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_4.yz, vec2<i32>(-25975i, var_1.x)), ~var_0.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_3.x, _wgslsmith_clamp_i32(var_3.x, var_4.x, var_2.b.x)), vec2<i32>(var_1.x, u_input.d << (14237u % 32u)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.a.x - var_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1178f), 478f, -178f)), var_0.a));
}

