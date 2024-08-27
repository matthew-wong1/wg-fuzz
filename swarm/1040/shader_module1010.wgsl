struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<f32>, 11>;

var<private> global2: f32;

var<private> global3: vec2<u32> = vec2<u32>(1u, 57172u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec2<u32>) -> u32 {
    global2 = -402f;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(223f, 191f, true)))) + _wgslsmith_f_op_f32(f32(-1f) * -239f)));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -229f), 1f);
    let var_1 = arg_2.b;
    global1 = array<vec4<f32>, 11>();
    return 1u;
}

fn func_2(arg_0: bool) -> vec3<f32> {
    global1 = array<vec4<f32>, 11>();
    let var_0 = Struct_5(Struct_4(vec4<u32>(~global3.x, _wgslsmith_mult_u32(global3.x, ~0u), func_3(vec3<i32>(u_input.b, -1i, u_input.e) << (vec3<u32>(global3.x, 0u, global3.x) % vec3<u32>(32u)), Struct_2(vec3<bool>(arg_0, arg_0, arg_0)), Struct_4(vec4<u32>(global3.x, u_input.d.x, global3.x, 50410u), Struct_1(vec3<i32>(u_input.e, -4409i, -20209i), vec2<i32>(u_input.a, u_input.e), vec3<i32>(-36781i, u_input.e, u_input.e)), vec4<u32>(1u, global3.x, 1u, global3.x), true), _wgslsmith_mult_vec2_u32(vec2<u32>(global3.x, 1u), u_input.d.xx)), abs(global3.x)), Struct_1(vec3<i32>(u_input.e, ~(-1i), _wgslsmith_sub_i32(0i, u_input.b)), ~vec2<i32>(-15168i, 2147483647i), abs(vec3<i32>(u_input.e, -7693i, -1i))), vec4<u32>(~abs(18305u), firstLeadingBit(~1u), u_input.c, 46315u), any(select(vec2<bool>(arg_0, true), !vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0)))), select(all(vec2<bool>(true, true)), !any(vec3<bool>(arg_0, false, arg_0)), u_input.c < 4294967295u), 1u);
    var var_1 = select(abs(~_wgslsmith_clamp_vec3_u32(var_0.a.a.wxx, var_0.a.c.zxx, var_0.a.a.xyw)) ^ u_input.d, countOneBits(~(~var_0.a.a.xxy)), 1i >= (u_input.e >> (countOneBits(1u) % 32u)));
    global0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 52537u, var_0.a.c.x, u_input.c), vec4<u32>(var_1.x, 4294967295u, 0u, u_input.d.x)), vec4<u32>(global3.x, 2801u, global3.x, 82794u)), vec4<u32>(var_1.x | 1u, 1u >> (var_0.a.c.x % 32u), countOneBits(u_input.c), _wgslsmith_sub_u32(global3.x, var_0.a.c.x))), ~var_0.a.c), vec4<u32>(abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, 67754u), vec2<u32>(1u, var_1.x))), var_1.x, firstTrailingBit(0u) & ~12955u, 86488u));
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-622f))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-696f)) + 847f))));
}

fn func_1(arg_0: Struct_4) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-833f, _wgslsmith_f_op_f32(round(-110f)), _wgslsmith_f_op_f32(ceil(-328f))) + _wgslsmith_f_op_vec3_f32(func_2(arg_0.d))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(sign(-403f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f))))));
    global3 = abs(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(65814u, arg_0.c.x)), arg_0.c.yz));
    let var_1 = vec2<u32>(114612u, 1u);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 961f))), var_0.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(1413f, var_0.x)))))));
    return _wgslsmith_dot_vec4_i32(~(-firstTrailingBit(vec4<i32>(u_input.e, 0i, 0i, u_input.a))), vec4<i32>(min(u_input.e, u_input.b) & (-83420i & u_input.b), u_input.e, arg_0.b.c.x, arg_0.b.a.x)) << (abs(firstTrailingBit(~var_1.x)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1550i, u_input.e, u_input.a), vec3<i32>(u_input.e, u_input.b, u_input.b) >> (u_input.d % vec3<u32>(32u))), i32(-1i) * -19653i), vec2<i32>(u_input.b, 1i)), vec2<i32>(func_1(Struct_4(vec4<u32>(global3.x, 4294967295u, 47304u, 1u), Struct_1(vec3<i32>(u_input.e, 14316i, 11978i), vec2<i32>(0i, -1460i), vec3<i32>(u_input.b, 2147483647i, 1i)), vec4<u32>(25982u, global3.x, global3.x, u_input.c), true)) & firstLeadingBit(i32(-1i) * -2147483647i), -(-24910i ^ -u_input.e)));
    let var_1 = Struct_3(~abs(i32(-1i) * -u_input.a), Struct_2(vec3<bool>(false, any(vec3<bool>(false, true, true)), true)));
    var var_2 = var_0.x;
    let var_3 = any(!vec2<bool>(!(var_1.b.a.x & var_1.b.a.x), !all(vec4<bool>(var_1.b.a.x, var_1.b.a.x, false, var_1.b.a.x))));
    let var_4 = _wgslsmith_f_op_vec3_f32(func_2(all(!vec4<bool>(true, var_3, var_1.b.a.x, true)))).x;
    global0 = ~(countOneBits(18631u) >> (~(~_wgslsmith_dot_vec3_u32(u_input.d, u_input.d)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(max(~vec2<u32>(4294967295u, u_input.c), _wgslsmith_mod_vec2_u32(vec2<u32>(global3.x, 0u), vec2<u32>(61606u, global3.x))) & reverseBits(firstTrailingBit(vec2<u32>(4294967295u, 27242u))), ~abs(u_input.d.yy)), firstLeadingBit(_wgslsmith_dot_vec4_i32(abs(~vec4<i32>(u_input.e, 1i, -40270i, var_1.a)), vec4<i32>(countOneBits(u_input.e), var_1.a, u_input.a | u_input.e, ~u_input.e))), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 1i, -20692i, _wgslsmith_mod_i32(1i, -1i)), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 2147483647i, 1i, var_1.a), vec4<i32>(-40677i, 0i, var_0.x, -1i)), countOneBits(vec4<i32>(16839i, var_1.a, var_1.a, var_0.x)))));
}

