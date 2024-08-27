struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<bool>) -> vec4<i32> {
    let var_0 = Struct_3(_wgslsmith_dot_vec2_i32(arg_1.b.b.yw, ~vec2<i32>(-arg_1.b.b.x, 0i)), Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(662f, -1937f), _wgslsmith_div_f32(379f, -782f))))), arg_1.b.b, _wgslsmith_add_u32(abs(111u), ~(~u_input.c.x))));
    var var_1 = arg_0.x > _wgslsmith_f_op_f32(floor(1f));
    var var_2 = vec2<bool>(!(select(true, arg_2.x, arg_2.x) || select(true, true, arg_2.x)), false);
    global0 = max(countOneBits(~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(18680u, 65546u, var_0.b.c), vec3<u32>(4294967295u, 4294967295u, var_0.b.c)), ~vec3<u32>(var_0.b.c, arg_1.b.c, 5017u))), vec3<u32>(4294967295u, 0u, u_input.b));
    let var_3 = any(vec3<bool>(!arg_2.x, ~1u == (var_0.b.c >> (global0.x % 32u)), arg_2.x));
    return -(~vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(22524i, -1i, u_input.d, arg_1.b.b.x), var_0.b.b), 0i), min(u_input.d, var_0.b.b.x ^ 2600i), ~_wgslsmith_dot_vec2_i32(var_0.b.b.zz, var_0.b.b.xw), -1i));
}

fn func_2(arg_0: i32) -> bool {
    global0 = ~firstLeadingBit(abs(vec3<u32>(global0.x, 22026u, u_input.c.x)) & ~(~vec3<u32>(97597u, 1u, global0.x)));
    var var_0 = Struct_2(-1024f, ~(-firstLeadingBit(max(vec4<i32>(u_input.d, -11295i, 2147483647i, -1i), vec4<i32>(-60386i, arg_0, 1i, 55578i)))), 0u);
    var var_1 = false;
    let var_2 = vec4<i32>(0i, u_input.a, 1i, _wgslsmith_div_i32(u_input.a, i32(-1i) * -2147483647i) >> (_wgslsmith_mod_u32(u_input.c.x ^ 31507u, select(global0.x, 0u, false)) % 32u)) | ~vec4<i32>(i32(-1i) * -31701i, arg_0, ~(arg_0 & -36991i), arg_0);
    let var_3 = select((-_wgslsmith_mod_vec4_i32(var_0.b, var_2) & -var_2) | _wgslsmith_add_vec4_i32(-abs(var_0.b), max(var_0.b, func_3(vec4<f32>(594f, var_0.a, var_0.a, -1162f), Struct_3(var_2.x, Struct_2(var_0.a, vec4<i32>(var_0.b.x, -1i, arg_0, arg_0), u_input.c.x)), vec2<bool>(false, true)))), vec4<i32>(arg_0, arg_0, -(~_wgslsmith_add_i32(-68803i, var_0.b.x)), 7661i), select(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(!(var_0.a > var_0.a), all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, false)), var_0.a != _wgslsmith_f_op_f32(ceil(-416f)))));
    return reverseBits((firstTrailingBit(1u) >> (abs(var_0.c) % 32u)) | 83138u) < global0.x;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -813f);
    var var_1 = select(select(!vec4<bool>(true, true, any(vec2<bool>(true, false)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), true)), !(true & (u_input.a >= -2147483647i))), vec4<bool>(u_input.c.x >= 66249u, false, true, true), false);
    var_1 = select(select(select(vec4<bool>(func_2(23783i), var_1.x, true, true), select(select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true), false), vec4<bool>(var_1.x, true, false, true), select(vec4<bool>(true, var_1.x, true, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, true))), !(!var_1.x)), vec4<bool>(false, var_1.x, var_1.x, var_1.x), all(select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), true), !vec4<bool>(true, var_1.x, true, false), vec4<bool>(true, true, true, true)))), select(select(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false), var_1.x), vec4<bool>(var_1.x, true, all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), var_1.x), select(select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(false, false, var_1.x, false)), vec4<bool>(var_1.x, var_1.x, false, var_1.x), true)), vec4<bool>(func_2(6167i), false, true, func_2(u_input.a) && true), !(!all(vec4<bool>(var_1.x, true, var_1.x, true)))), false);
    let var_2 = Struct_3(-countOneBits(min(-803i, u_input.a) & (-50904i | u_input.a)), Struct_2(var_0, _wgslsmith_sub_vec4_i32(firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.d, u_input.a, -10740i, 37084i))), firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(1i, -17468i, u_input.a, 98224i))), 51367u & global0.x));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.b.a, 123f), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1813f * var_0), var_0))));
    return Struct_3(-(i32(-1i) * -(~1i)), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = max(vec3<u32>(var_0.b.c, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, var_0.b.c, var_0.b.c, 0u) | vec4<u32>(global0.x, 1u, 112230u, u_input.b), countOneBits(vec4<u32>(u_input.c.x, 4294967295u, 74579u, var_0.b.c) >> (vec4<u32>(global0.x, global0.x, 0u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(max(29161u, 1465u), countOneBits(4294967295u), firstTrailingBit(1u)), ~u_input.b)), ~_wgslsmith_mod_vec3_u32(~(~vec3<u32>(54765u, 14989u, 4294967295u)), ~vec3<u32>(36981u, 59582u, 4294967295u) | reverseBits(vec3<u32>(1u, var_0.b.c, 0u))));
    var var_1 = var_0.b.b.x ^ (~u_input.a | _wgslsmith_clamp_i32(~max(71155i, -10056i), -(~2147483647i), u_input.d >> (u_input.c.x % 32u)));
    global0 = vec3<u32>(1178u, 1u, max(min(reverseBits(u_input.b), _wgslsmith_clamp_u32(1u, var_0.b.c, u_input.b)) >> ((58793u ^ u_input.c.x) % 32u), _wgslsmith_mod_u32(~(~0u), 1u)));
    global0 = vec3<u32>(countOneBits(reverseBits(global0.x) | ~global0.x), max(global0.x, min(global0.x, 0u)), 4294967295u);
    global0 = vec3<u32>(~u_input.b, 43630u, 0u & ~(~global0.x << (_wgslsmith_sub_u32(1814u, global0.x) % 32u)));
    var_1 = ~(~u_input.a);
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b.a, _wgslsmith_div_f32(var_0.b.a, var_0.b.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a, 394f) + vec2<f32>(var_0.b.a, 1000f)) - vec2<f32>(341f, var_0.b.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-777f, -1365f) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.a - var_2.a.x), 713f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-499f + -1785f), _wgslsmith_f_op_f32(min(-866f, var_0.b.a)))))), -839f, vec3<u32>(~max(u_input.c.x, global0.x), var_0.b.c, ~20600u), _wgslsmith_div_vec2_f32(vec2<f32>(1807f, _wgslsmith_div_f32(-2009f, -1087f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b.a, _wgslsmith_f_op_f32(-var_2.a.x))))));
}

