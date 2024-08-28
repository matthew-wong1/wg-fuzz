struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<u32>(1872u, 35653u, 73755u), -171f, -8030i, -267f);

var<private> global1: vec2<f32> = vec2<f32>(-1796f, 706f);

var<private> global2: u32;

var<private> global3: f32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-global1.x);
    global2 = _wgslsmith_mod_u32(max(u_input.e.x, 1u), 0u);
    return -_wgslsmith_sub_vec4_i32(vec4<i32>(~countOneBits(-44135i), abs(~u_input.d), _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0, 10769i), -u_input.c.xy), _wgslsmith_clamp_i32(~u_input.c.x, _wgslsmith_mod_i32(1011i, u_input.d), reverseBits(38207i))), ~(vec4<i32>(-1i) * -vec4<i32>(global0.c, arg_0, 1i, global0.c)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> bool {
    global3 = -1000f;
    var var_0 = all(select(vec4<bool>(!arg_1.x, any(vec2<bool>(arg_1.x, arg_1.x)), !arg_1.x, all(!arg_1.wzy)), select(!(!vec4<bool>(true, false, arg_1.x, arg_1.x)), !select(arg_1, vec4<bool>(arg_1.x, false, false, arg_1.x), true), -37728i <= min(u_input.d, u_input.d)), true));
    var var_1 = abs(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(global0.a.x, arg_0, 1u, arg_0)), vec4<u32>(36283u, 1u, global0.a.x, 41227u)) >> (vec4<u32>(~global0.a.x, _wgslsmith_mult_u32(4294967295u, ~arg_0), global0.a.x, abs(u_input.b) | 21879u) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-627f, global1.x, global1.x) * vec3<f32>(-1948f, 1685f, global0.d))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x), vec3<f32>(-600f, global0.d, global1.x))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1756f, -1789f, global1.x)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -223f))), global0.d) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1270f - global1.x), global0.d, global1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, global1.x, global0.d) * vec3<f32>(global1.x, global1.x, -567f)) * vec3<f32>(358f, global1.x, 954f))))));
    var var_3 = _wgslsmith_add_vec4_i32(~(reverseBits(-vec4<i32>(24004i, -2147483647i, u_input.c.x, u_input.a)) ^ (_wgslsmith_div_vec4_i32(vec4<i32>(-9347i, global0.c, global0.c, 2147483647i), vec4<i32>(global0.c, global0.c, global0.c, global0.c)) | reverseBits(vec4<i32>(u_input.d, global0.c, global0.c, u_input.d)))), -countOneBits(~_wgslsmith_sub_vec4_i32(vec4<i32>(global0.c, 2266i, global0.c, global0.c), vec4<i32>(1516i, global0.c, 2147483647i, 11256i))));
    return !all(select(arg_1.wz, arg_1.zz, all(arg_1.zzx)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec3<i32>) -> u32 {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) - -636f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) - _wgslsmith_f_op_f32(min(-1000f, global0.d))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f)))), vec3<bool>(false, false, func_3(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, global0.a.x, u_input.e.x, 0u)), ~vec4<u32>(4294967295u, 4294967295u, 16161u, arg_0)), vec4<bool>(true, true, global1.x <= 353f, 46528u == u_input.e.x))), Struct_1(global0.a.x, !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), select(vec3<bool>(true, false, false), vec3<bool>(4294967295u == u_input.b, all(vec3<bool>(true, true, true)), select(false, true, false)), _wgslsmith_f_op_f32(global1.x - -1014f) == _wgslsmith_f_op_f32(f32(-1f) * -934f)), u_input.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x * global1.x)))), -917f);
    global2 = ~1u;
    let var_1 = Struct_4(var_0.c.b.zy, all(!select(!vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.c.b.x), select(vec4<bool>(true, var_0.c.b.x, var_0.b.x, var_0.c.c.x), vec4<bool>(var_0.c.b.x, var_0.b.x, var_0.b.x, var_0.c.b.x), vec4<bool>(var_0.b.x, var_0.b.x, true, false)), all(var_0.c.c))));
    global1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.e, 977f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.d, global0.d))))))))));
    var var_2 = -reverseBits(u_input.a);
    return ~(~abs(abs(34352u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -563f;
    var var_0 = vec2<u32>(u_input.e.x, 24411u);
    let var_1 = ~func_1(u_input.d);
    let var_2 = select(vec4<u32>(func_2(~(~0u), -(~global0.c), reverseBits(-u_input.c)), ~_wgslsmith_div_u32(1u, u_input.e.x) ^ select(abs(global0.a.x), ~u_input.e.x, all(vec2<bool>(true, true))), ~(~_wgslsmith_clamp_u32(u_input.b, 32323u, 438u)), 10286u), ~vec4<u32>(0u, reverseBits(max(global0.a.x, 36911u)), 1u, 1u), vec4<bool>(true, !func_3(4294967295u, vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), u_input.d < global0.c)), -37889i < select(~1i, i32(-1i) * -19777i, any(vec2<bool>(true, false)))));
    global2 = u_input.e.x | 1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.wx, vec2<u32>(countOneBits(~abs(4294967295u)), ~global0.a.x));
}

