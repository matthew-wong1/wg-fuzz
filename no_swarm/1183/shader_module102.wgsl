struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: u32) -> bool {
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    let var_0 = -u_input.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-848f, -670f) + _wgslsmith_f_op_f32(f32(-1f) * -415f)) + _wgslsmith_f_op_f32(step(-499f, _wgslsmith_f_op_f32(sign(-327f)))))));
    global0 = array<Struct_1, 3>();
    return true;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> vec2<bool> {
    var var_0 = ~4294967295u;
    var_0 = arg_2.c.a;
    var var_1 = arg_2;
    global0 = array<Struct_1, 3>();
    var var_2 = ~_wgslsmith_sub_vec2_i32(-u_input.b, min(vec2<i32>(arg_0, arg_0), u_input.b));
    return !arg_2.e.c.yw;
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<i32>) -> f32 {
    let var_0 = -(~(~(-(arg_2.yy ^ vec2<i32>(0i, -13986i)))));
    let var_1 = ~(~firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, -1i, var_0.x, arg_1), vec4<i32>(0i, u_input.d, -1i, arg_2.x))));
    var var_2 = _wgslsmith_mod_vec4_u32(abs(~abs(vec4<u32>(1u, 1u, 1u, 1u))), ~vec4<u32>(1u, 1u, 1u, 1u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1199f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(881f * -1254f)))) + _wgslsmith_f_op_f32(sign(1000f)));
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(func_5(select(func_4(-6985i, _wgslsmith_f_op_f32(max(1326f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_2(Struct_1(arg_0.a, arg_0.d.x, arg_0.c, vec2<bool>(true, false)), true, arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(962f, 791f)), Struct_1(arg_0.a, arg_0.d.x, arg_0.c, vec2<bool>(arg_0.c.x, arg_0.c.x))), func_3(u_input.d, ~(-31414i), 16508u << (0u % 32u))), vec2<bool>(false, func_3(u_input.b.x, reverseBits(u_input.d), 0u)), arg_0.d.x != true), u_input.d, firstLeadingBit(min(vec4<i32>(-1i) * -vec4<i32>(-1999i, 46007i, -37537i, u_input.b.x), vec4<i32>(~(-10335i), ~0i, u_input.a << (0u % 32u), u_input.d)))));
    var var_1 = false;
    global0 = array<Struct_1, 3>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(var_0, var_0)), var_0, _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-440f, var_0)))), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(func_5(select(!vec2<bool>(true, arg_0.d.x), vec2<bool>(arg_0.b, arg_0.b), arg_0.b), -2147483647i, ~(~vec4<i32>(-28496i, 0i, -31571i, u_input.c))))));
    var var_3 = -71855i;
    return arg_0.d.x;
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_1(1u, true, vec4<bool>(arg_2 | false, select(func_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(7632u, 1u), 3u)]), true, false), any(!(!vec3<bool>(arg_2, false, arg_2))), true), select(vec2<bool>(true, func_4(arg_0, arg_1.x, Struct_2(global0[_wgslsmith_index_u32(1u, 3u)], arg_2, Struct_1(35588u, arg_2, vec4<bool>(false, arg_2, arg_2, arg_2), vec2<bool>(arg_2, true)), vec2<f32>(arg_1.x, arg_1.x), Struct_1(0u, arg_2, vec4<bool>(arg_2, true, arg_2, arg_2), vec2<bool>(arg_2, true))), true).x), vec2<bool>(arg_2, arg_2 & arg_2), select(select(vec2<bool>(true, true), func_4(19529i, arg_1.x, Struct_2(Struct_1(0u, arg_2, vec4<bool>(true, true, false, false), vec2<bool>(true, false)), true, Struct_1(1u, false, vec4<bool>(arg_2, false, false, false), vec2<bool>(arg_2, true)), vec2<f32>(798f, 325f), global0[_wgslsmith_index_u32(4294967295u, 3u)]), arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, true), arg_2)), select(vec2<bool>(true, true), select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, true), vec2<bool>(arg_2, true)), true), !(!vec2<bool>(arg_2, arg_2)))));
    global0 = array<Struct_1, 3>();
    return Struct_1(min(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(var_0.a, var_0.a, 4294967295u, 0u), vec4<u32>(22664u, var_0.a, 26373u, 4735u)), firstLeadingBit(~vec4<u32>(var_0.a, 4294967295u, 60262u, var_0.a))), firstLeadingBit(_wgslsmith_mod_u32(0u, 4294967295u)) | _wgslsmith_clamp_u32(4294967295u, var_0.a, 30134u)), true & arg_2, select(select(select(select(var_0.c, vec4<bool>(false, false, arg_2, false), false), !vec4<bool>(false, true, var_0.b, arg_2), select(vec4<bool>(false, true, arg_2, true), var_0.c, vec4<bool>(arg_2, false, false, var_0.c.x))), select(select(vec4<bool>(true, false, arg_2, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, arg_2, var_0.d.x)), vec4<bool>(false, var_0.d.x, var_0.b, true), func_2(global0[_wgslsmith_index_u32(var_0.a, 3u)])), select(!vec4<bool>(var_0.b, var_0.b, var_0.c.x, arg_2), select(vec4<bool>(arg_2, arg_2, var_0.c.x, true), var_0.c, var_0.c.x), select(var_0.c, var_0.c, var_0.d.x))), vec4<bool>(true, arg_2, _wgslsmith_f_op_f32(-arg_1.x) > _wgslsmith_f_op_f32(1000f * -453f), true), all(select(var_0.c.zxz, vec3<bool>(var_0.b, var_0.c.x, true), arg_2))), select(vec2<bool>(var_0.d.x, arg_2), var_0.d, func_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(1u, var_0.a)), 3u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 3>();
    let var_0 = global0[_wgslsmith_index_u32(1u | _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 49043u, 4294967295u), vec3<u32>(1u, 0u, 0u)), vec3<u32>(1u, 1u, 1u)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(57387u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), 3u)];
    global0 = array<Struct_1, 3>();
    var var_1 = Struct_1(var_0.a, 769f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1091f, -1000f, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1177f * 1125f), _wgslsmith_f_op_f32(1241f * -498f)))), var_0.c, var_0.c.xw);
    let var_2 = func_1(-u_input.d | select(-2147483647i, reverseBits(firstTrailingBit(2147483647i)), var_0.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1012f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -264f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(933f * 445f))), 629f)), true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec4<i32>(-1i) * -firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.d, 2147483647i, u_input.c, u_input.d))), vec4<u32>(~(~6752u), _wgslsmith_clamp_u32(var_1.a, reverseBits(~var_0.a), 1u & _wgslsmith_dot_vec3_u32(vec3<u32>(16439u, var_2.a, var_0.a), vec3<u32>(18853u, var_0.a, var_0.a))), _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(var_2.a), ~var_1.a), _wgslsmith_div_vec2_u32(vec2<u32>(17443u, var_1.a), ~vec2<u32>(var_2.a, var_2.a))), var_0.a));
}

