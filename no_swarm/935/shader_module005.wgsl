struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: Struct_2,
    d: i32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_4,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(1000f, -739f, -151f, 716f, 107f, 1000f, -395f, -1000f, -2142f, 1000f, -274f, -655f, -307f, -449f, -170f, 218f, -1536f);

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<f32>, 15>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstLeadingBit(~0u), 17u)]))));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-579f, 728f, 1346f, arg_0))) * _wgslsmith_div_vec4_f32(vec4<f32>(439f, 1381f, 1000f, 832f), vec4<f32>(arg_0, global0[_wgslsmith_index_u32(83266u, 17u)], arg_0, 949f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-197f, arg_0, arg_0, arg_0))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1848f + -341f)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(abs(66871u), 17u)], -1550f), 462f, _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-140f, -356f)))));
    let var_1 = abs(-_wgslsmith_mult_i32(~_wgslsmith_add_i32(-2147483647i, u_input.a), -u_input.a));
    global1 = select(vec4<bool>(true, false, !global1.x, global1.x), select(!vec4<bool>(false, true, all(global1.wy), global1.x | false), !vec4<bool>(false, !global1.x, all(vec4<bool>(true, false, global1.x, global1.x)), global1.x), false), any(vec2<bool>(false, !(false || global1.x))));
    var var_2 = Struct_2(Struct_1(1u ^ ~select(0u, 10082u, global1.x)), Struct_1(1u << (1u % 32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -624f))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~4294967295u, ~1u), 25182u), 17u)])), global1.x);
    global1 = vec4<bool>(!all(vec3<bool>(var_2.d == true, true, false == global1.x)), !var_2.d, any(vec3<bool>(false, true, true)), true & any(global1.xx));
    return Struct_4(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 17u)], arg_0)) * var_2.c), 946f), arg_0, _wgslsmith_f_op_f32(-var_0.a.x), 2832f), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-866f)))))), arg_0));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_5) -> Struct_1 {
    global0 = array<f32, 17>();
    let var_0 = Struct_1(4294967295u);
    let var_1 = arg_2;
    global1 = !(!vec4<bool>(true, true, global1.x, true));
    let var_2 = Struct_3(var_1.a.x <= _wgslsmith_dot_vec2_u32(~arg_2.a.wx ^ firstTrailingBit(vec2<u32>(1u, 1u)), var_1.a.zz ^ arg_1.xz), vec3<bool>(all(vec3<bool>(true, global1.x | true, !global1.x)), true, true), Struct_2(var_0, var_0, _wgslsmith_f_op_f32(-arg_2.d.a.x), -1i < (_wgslsmith_clamp_i32(64783i, -2147483647i, arg_0.x) >> (1u % 32u))), arg_0.x, vec4<bool>(global1.x, true, arg_2.a.x >= 1u, true));
    return var_2.c.b;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = func_4(-vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, u_input.a), 20463i), -73547i), ~abs(~vec4<u32>(49383u, 0u, 21330u, 4294967295u)) << (~(~abs(vec4<u32>(arg_1.a, 4294967295u, arg_1.a, 4294967295u))) % vec4<u32>(32u)), Struct_5(~(~firstTrailingBit(vec4<u32>(0u, 0u, arg_1.a, 0u))), Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1070f, global0[_wgslsmith_index_u32(4294967295u, 17u)], -661f, 306f) + vec4<f32>(-433f, 1277f, -1948f, 1938f)), vec2<f32>(_wgslsmith_f_op_f32(trunc(511f)), _wgslsmith_f_op_f32(sign(509f)))), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(15129u, 17u)], -559f, 1779f, global0[_wgslsmith_index_u32(arg_1.a, 17u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-467f, global0[_wgslsmith_index_u32(103206u, 17u)]) + vec2<f32>(arg_0, 765f)))), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 17u)] * -671f), -715f), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a, -26462i, u_input.a), vec3<i32>(u_input.a, u_input.a, 1i)))));
    global2 = array<vec3<f32>, 15>();
    global0 = array<f32, 17>();
    return arg_1.a << (1u % 32u);
}

fn func_5(arg_0: vec3<f32>) -> vec3<u32> {
    let var_0 = (abs(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(9351u, 62307u), vec2<u32>(95245u, 57097u), vec2<bool>(global1.x, false)), vec2<u32>(0u, 13529u), vec2<u32>(11931u, 0u))) & ~(~firstTrailingBit(vec2<u32>(69049u, 318u)))) ^ max(~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 12726u)), vec2<u32>(1u, 1u)), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(30167u, 4294967295u, 19648u), vec3<u32>(1483u, 79179u, 4294967295u)), 1u << (0u % 32u)));
    global0 = array<f32, 17>();
    var var_1 = vec4<i32>(-28160i, 6474i, -u_input.a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) & vec4<i32>(u_input.a, 82524i, -1i, -1i)), u_input.a, firstTrailingBit(2147483647i))) | (firstTrailingBit(vec4<i32>(-1i, 21435i, ~2147483647i, ~u_input.a)) & vec4<i32>(_wgslsmith_div_i32(-2147483647i, 78412i << (var_0.x % 32u)), ~abs(u_input.a), -u_input.a, ~(-29332i)));
    var var_2 = Struct_1(var_0.x);
    var var_3 = _wgslsmith_clamp_u32(countOneBits(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.x, 0u), abs(var_0.x))), ~(~_wgslsmith_mod_u32(0u | var_0.x, var_0.x & 20996u)), ~var_2.a);
    return ~vec3<u32>(firstTrailingBit(var_0.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, var_0.x, 1u), abs(vec3<u32>(49355u, var_2.a, var_2.a))), ~(~func_4(var_1.zz, vec4<u32>(var_2.a, var_2.a, 4294967295u, var_2.a), Struct_5(vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x), Struct_4(vec4<f32>(-343f, 897f, -620f, -765f), vec2<f32>(global0[_wgslsmith_index_u32(5375u, 17u)], arg_0.x)), Struct_4(vec4<f32>(global0[_wgslsmith_index_u32(22629u, 17u)], 1315f, global0[_wgslsmith_index_u32(44311u, 17u)], arg_0.x), arg_0.yy), Struct_4(vec4<f32>(-1137f, 1000f, 449f, -678f), arg_0.xy))).a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(53679u, ~0u >> (1u % 32u), ~1u), _wgslsmith_mod_vec3_u32(func_5(global2[_wgslsmith_index_u32(func_1(global0[_wgslsmith_index_u32(4888u, 17u)], Struct_1(4294967295u)) ^ ~0u, 15u)]), firstLeadingBit(vec3<u32>(~86731u, min(4294967295u, 19604u), ~0u))));
    var_0 = countOneBits(reverseBits(~max(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(0u, var_0.x, 127757u)) & vec3<u32>(var_0.x & 1u, _wgslsmith_add_u32(var_0.x, var_0.x), var_0.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1596f, 1029f), vec2<f32>(-1692f, -366f), global1.x))))));
    let var_2 = vec4<i32>(firstTrailingBit(reverseBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -25102i, 41709i), vec3<i32>(-33877i, -18537i, u_input.a)))), 2147483647i, 2147483647i, u_input.a);
    let var_3 = _wgslsmith_f_op_f32(1644f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(round(-634f))))) < var_1.x;
    var_0 = abs(~(~(~vec3<u32>(1u, 36741u, var_0.x) << (abs(vec3<u32>(var_0.x, var_0.x, 21223u)) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~func_5(vec3<f32>(global0[_wgslsmith_index_u32(84221u, 17u)], -111f, -417f)).x), ~var_0.x), 17u)], vec4<i32>(-2147483647i, firstLeadingBit(select(0i, u_input.a, var_3)) & _wgslsmith_add_i32(-27867i, abs(var_2.x)), u_input.a, _wgslsmith_sub_i32(_wgslsmith_add_i32(var_2.x, 55982i), var_2.x) ^ -32221i));
}

