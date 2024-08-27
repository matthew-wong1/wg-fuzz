struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = 19115i;

var<private> global2: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(17743i, -30158i), vec2<i32>(-40293i, -27170i), vec2<i32>(-39987i, 12803i), vec2<i32>(-63306i, -34279i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, -2813i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(max(~global0.a, abs(arg_0)), vec2<i32>(countOneBits(-u_input.b.x), select(-2147483647i, 47622i, true)), 51637u, true, _wgslsmith_f_op_f32(select(1323f, -199f, global0.d)));
    var var_1 = select(!vec2<bool>(!(var_0.d | true), false), !(!select(vec2<bool>(global0.d, true), select(vec2<bool>(true, global0.d), vec2<bool>(false, true), vec2<bool>(global0.d, true)), !vec2<bool>(arg_2.d, true))), !(!(!select(vec2<bool>(var_0.d, true), vec2<bool>(arg_2.d, false), vec2<bool>(global0.d, var_0.d)))));
    global1 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b.x, arg_2.b.x, u_input.b.x), u_input.b.zyw), u_input.b.x, arg_2.b.x, u_input.b.x) & firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(global0.b.x, -1i, -27208i, var_0.b.x), vec4<i32>(u_input.b.x, -60053i, var_0.b.x, arg_2.b.x)))), select(select(~u_input.b, vec4<i32>(global0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-40267i, arg_2.b.x, -26454i), u_input.b.www), var_0.b.x, arg_2.b.x), select(vec4<bool>(var_0.d, false, true, true), !vec4<bool>(arg_2.d, var_0.d, arg_1, false), select(vec4<bool>(arg_1, global0.d, arg_2.d, false), vec4<bool>(var_1.x, arg_2.d, arg_2.d, var_1.x), vec4<bool>(var_0.d, true, false, true)))), u_input.b << ((_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.c, 3992u, 6189u, u_input.c.x), arg_2.a) << (var_0.a % vec4<u32>(32u))) % vec4<u32>(32u)), all(select(select(vec2<bool>(true, arg_2.d), vec2<bool>(true, false), var_0.d), vec2<bool>(true, true), false))));
    global0 = var_0;
    var var_2 = firstTrailingBit(select(vec4<u32>(_wgslsmith_sub_u32(arg_2.c, global0.c), ~var_0.c, arg_0.x & 25562u, 1u) & arg_2.a, _wgslsmith_mod_vec4_u32(global0.a, ~(arg_2.a ^ global0.a)), !vec4<bool>(any(vec4<bool>(false, false, false, global0.d)), false, global0.e < 875f, all(vec2<bool>(arg_2.d, global0.d)))));
    return select(vec4<bool>(any(!select(vec3<bool>(false, true, false), vec3<bool>(var_1.x, arg_2.d, false), var_0.d)), false, var_0.d, all(vec2<bool>(true, false))), !select(vec4<bool>(any(vec4<bool>(global0.d, var_0.d, false, false)), true, true, !var_0.d), select(select(vec4<bool>(arg_1, arg_1, var_0.d, false), vec4<bool>(false, arg_1, arg_1, var_1.x), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, arg_1, true, global0.d), vec4<bool>(false, false, false, var_0.d), false), true), !(!arg_2.d)), !(!(!select(vec4<bool>(var_0.d, true, var_1.x, true), vec4<bool>(global0.d, var_1.x, false, true), vec4<bool>(arg_2.d, true, true, false)))));
}

fn func_2(arg_0: vec3<bool>) -> bool {
    var var_0 = firstTrailingBit(min(select(u_input.c.x, 31831u, false), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 41988u, global0.c, 11809u), global0.a))));
    var var_1 = global0.c;
    var var_2 = -reverseBits(~vec3<i32>(global0.b.x, global0.b.x, -1i | global0.b.x));
    var var_3 = select(arg_0.yz, select(arg_0.xy, select(select(arg_0.xz, select(vec2<bool>(true, global0.d), arg_0.yy, vec2<bool>(false, false)), select(arg_0.yz, arg_0.yy, arg_0.x)), arg_0.xz, select(arg_0.zx, arg_0.zx, global0.d)), !(!arg_0.zy)), select(vec2<bool>(_wgslsmith_add_i32(1i, global0.b.x) >= _wgslsmith_add_i32(-21373i, var_2.x), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), vec2<i32>(u_input.b.x, -1i)) <= (global0.b.x ^ var_2.x)), !vec2<bool>(arg_0.x, global0.e < 783f), all(arg_0)));
    let var_4 = Struct_1(select(vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(37814u, 16541u)), _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c.x, u_input.a), 59544u), 42129u, ~firstLeadingBit(9144u)), vec4<u32>(_wgslsmith_clamp_u32(5686u, global0.c, 35079u), u_input.c.x, 1u, global0.c) & global0.a, !func_3(~vec4<u32>(global0.c, 56363u, 31004u, 1u), var_3.x, Struct_1(vec4<u32>(1u, global0.a.x, global0.c, 80249u), global2[_wgslsmith_index_u32(u_input.c.x, 6u)], 15386u, false, 878f))), global0.b, u_input.a, func_3(vec4<u32>(1u | ~global0.a.x, min(4294967295u, 4294967295u), abs(_wgslsmith_div_u32(47531u, 5138u)), firstTrailingBit(56558u) | _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, global0.c))), all(arg_0.zz) & false, Struct_1(~(~global0.a), -(~global2[_wgslsmith_index_u32(u_input.a, 6u)]), 38785u, 307f != _wgslsmith_f_op_f32(select(220f, 1816f, true)), _wgslsmith_f_op_f32(-global0.e))).x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1530f - global0.e))), _wgslsmith_f_op_f32(global0.e * _wgslsmith_f_op_f32(abs(global0.e))))), global0.e)));
    return global0.d;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = ~arg_1.b.x;
    let var_1 = arg_1;
    return !(!select(select(select(vec4<bool>(arg_1.d, var_1.d, true, true), vec4<bool>(arg_1.d, true, false, global0.d), vec4<bool>(global0.d, global0.d, arg_1.d, false)), !vec4<bool>(false, var_1.d, var_1.d, global0.d), false), !(!vec4<bool>(true, global0.d, true, false)), func_2(vec3<bool>(global0.d, arg_1.d, false))));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<bool>, arg_3: vec2<i32>) -> bool {
    global0 = Struct_1(~(~min(global0.a, ~global0.a)), firstLeadingBit(~_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(global0.b.x, -1i)), vec2<i32>(u_input.b.x, arg_3.x) | vec2<i32>(global0.b.x, -15625i))), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, global0.c), global0.a.yzw), global0.d, _wgslsmith_f_op_f32(floor(global0.e)));
    var var_0 = global0.e;
    var_0 = global0.e;
    var var_1 = Struct_1(global0.a, vec2<i32>(~(~(-38123i)), u_input.b.x), max(1u, 1u), func_3(~global0.a, (-1854f <= _wgslsmith_f_op_f32(global0.e + 527f)) || !global0.d, Struct_1(global0.a, min(reverseBits(vec2<i32>(u_input.b.x, -30551i)), ~vec2<i32>(-11758i, 27319i)), ~23400u, arg_2.x, global0.e)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) + _wgslsmith_f_op_f32(global0.e + 1096f))));
    let var_2 = Struct_1(abs(global0.a), ~_wgslsmith_add_vec2_i32(reverseBits(~vec2<i32>(-1i, var_1.b.x)), countOneBits(-arg_3)), ~_wgslsmith_dot_vec3_u32((vec3<u32>(global0.a.x, 4294967295u, var_1.c) << (vec3<u32>(5791u, 14347u, var_1.a.x) % vec3<u32>(32u))) >> (~vec3<u32>(global0.c, arg_0.x, arg_0.x) % vec3<u32>(32u)), arg_0), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global0.e)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec3<bool>(func_4(~global0.a.yyx, ~4294967295u, func_1(-496f, Struct_1(vec4<u32>(u_input.a, global0.c, 82774u, 4294967295u), vec2<i32>(global0.b.x, 2147483647i), 20208u, global0.d, -487f)), select(vec2<i32>(0i, global0.b.x), u_input.b.xz, true)), 0i > ~global0.b.x, any(vec4<bool>(false, false, global0.d, global0.d))), vec3<bool>(global0.d, all(func_1(-118f, Struct_1(global0.a, vec2<i32>(-2147483647i, 1i), 11250u, false, global0.e)).zy), true), vec3<bool>(!((global0.a.x | 6648u) >= 30467u), all(vec3<bool>(any(vec2<bool>(global0.d, global0.d)), true, global0.d)), any(!vec4<bool>(false, global0.d, global0.d, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-460f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e)))), _wgslsmith_div_i32(abs(1i), firstLeadingBit(_wgslsmith_mult_i32(countOneBits(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, u_input.b.x, 2147483647i, global0.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -30679i, -438i))))), ~min(abs(global0.b.x ^ u_input.b.x), 0i), ~u_input.c);
}

