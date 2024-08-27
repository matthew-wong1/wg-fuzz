struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec2<u32>,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 29>;

var<private> global1: array<Struct_4, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4) -> Struct_1 {
    let var_0 = ~0u >> (_wgslsmith_div_u32(arg_1.b, ~abs(80188u)) % 32u);
    global0 = array<vec3<f32>, 29>();
    var var_1 = true;
    var var_2 = ~vec2<u32>(~0u, 0u);
    return arg_1.d.a;
}

fn func_3() -> u32 {
    let var_0 = !(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(46060i, -1i, -52878i, 2147483647i), vec4<i32>(-1i, -61671i, 44754i, 1i)), 1i | -u_input.a) >= _wgslsmith_div_i32(u_input.a, 0i));
    var var_1 = !any(vec2<bool>(true, var_0));
    global0 = array<vec3<f32>, 29>();
    var var_2 = max(vec4<i32>(~(u_input.a << (30411u % 32u)) ^ u_input.a, -43964i, ~u_input.a ^ ((u_input.a & 1i) | (u_input.a >> (0u % 32u))), 1i), firstLeadingBit(vec4<i32>(u_input.a, -(~u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(u_input.a, u_input.a, 1i, 35371i)), 33189i)));
    var var_3 = vec4<bool>(var_0, true, var_0, var_0 != (!select(var_0, var_0, false) | (all(vec3<bool>(var_0, var_0, var_0)) | (var_0 & var_0))));
    return ~select(~68869u, 34795u, true);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = vec3<u32>(~(~_wgslsmith_mult_u32(0u, 1u)), select(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 10003u), 1u), ~1u, arg_1.d), ~(~(~1u))) ^ vec3<u32>(func_3(), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(20751u, 1u)), ~1u << (0u % 32u));
    var var_1 = ~0i <= -u_input.a;
    var var_2 = !select(!select(vec3<bool>(arg_1.a.a, true, false), vec3<bool>(true, false, true), false & arg_1.c), select(vec3<bool>(arg_1.d, true, arg_1.b.x || false), !select(vec3<bool>(false, arg_1.b.x, true), vec3<bool>(true, true, arg_1.a.a), arg_1.c), !vec3<bool>(arg_1.b.x, true, false)), vec3<bool>(arg_1.a.a, arg_1.b.x, all(!vec4<bool>(arg_1.c, arg_1.b.x, arg_1.a.a, arg_1.a.a))));
    let var_3 = func_1(arg_1, global1[_wgslsmith_index_u32(var_0.x, 20u)]);
    let var_4 = vec2<i32>(1i, _wgslsmith_mult_i32(reverseBits(_wgslsmith_clamp_i32(1i, -11312i, -61990i)), u_input.a));
    return vec2<bool>(false, func_1(arg_1, Struct_4(!(var_2.x | false), 26449u, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.c, -980f, arg_0.x, arg_0.x), vec4<f32>(var_3.c, 2212f, var_3.c, 2006f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.c, 450f, 2094f, arg_1.a.c) * vec4<f32>(972f, -277f, -368f, -608f))), arg_1)).a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 20>();
    global1 = array<Struct_4, 20>();
    let var_0 = select(func_2(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(1u, 29u)]), Struct_2(func_1(Struct_2(Struct_1(true, 1707f, 1555f, vec4<i32>(31148i, u_input.a, 1i, 1i)), vec2<bool>(true, false), false, true), Struct_4(false, 0u, vec4<f32>(199f, -2745f, -1119f, -255f), Struct_2(Struct_1(false, 301f, 1348f, vec4<i32>(-25176i, 26986i, u_input.a, 2147483647i)), vec2<bool>(true, true), true, true))), vec2<bool>(true, true), true, false)), !vec2<bool>(_wgslsmith_mod_i32(u_input.a, 37277i) < u_input.a, true), true);
    let var_1 = firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(~30419u, 1u, ~4294967295u >> (firstLeadingBit(1u) % 32u)), vec3<u32>(~func_3(), 1u, ~(~19561u))));
    var var_2 = Struct_2(func_1(Struct_2(Struct_1(var_0.x, 273f, _wgslsmith_f_op_f32(f32(-1f) * -1263f), max(vec4<i32>(u_input.a, 0i, u_input.a, -1i), vec4<i32>(u_input.a, -456i, 20637i, -1i))), vec2<bool>(select(true, false, false), var_0.x), var_0.x, var_0.x), Struct_4(all(vec3<bool>(var_0.x, true, true)), abs(~var_1), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1722f, 411f, -1000f, -244f), vec4<f32>(1276f, -898f, 1571f, 2059f), var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-978f, -1497f, -1832f, -433f))), Struct_2(Struct_1(true, 1189f, 1404f, vec4<i32>(14166i, -1i, 0i, -29504i)), select(var_0, vec2<bool>(var_0.x, true), true), any(vec3<bool>(var_0.x, false, false)), var_0.x))), !vec2<bool>(var_0.x || var_0.x, true), all(var_0), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-184f, -571f)), var_2.a.b)) * _wgslsmith_f_op_f32(837f + _wgslsmith_f_op_f32(-2518f * var_2.a.c))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(countOneBits(max(vec3<u32>(var_1, 25920u, 1u), vec3<u32>(var_1, 13923u, var_1))), vec3<u32>(firstTrailingBit(var_1), var_1, var_1)), vec3<u32>(4294967295u, ~(~var_1), _wgslsmith_sub_u32(countOneBits(var_1), 0u))));
}

