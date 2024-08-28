struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(12800i, 0i, true, vec2<i32>(3363i, i32(-2147483648)), vec3<bool>(false, false, false)), Struct_1(i32(-2147483648), i32(-2147483648), true, vec2<i32>(1i, 37461i), vec3<bool>(false, false, true)), Struct_1(0i, i32(-2147483648), false, vec2<i32>(0i, -4783i), vec3<bool>(true, false, true)), Struct_1(-31863i, 0i, true, vec2<i32>(2147483647i, -1i), vec3<bool>(true, true, true)), Struct_1(35274i, -2898i, true, vec2<i32>(2147483647i, -29404i), vec3<bool>(false, false, true)), Struct_1(-16037i, 2147483647i, false, vec2<i32>(-1i, 2768i), vec3<bool>(false, false, true)), Struct_1(1i, 44396i, false, vec2<i32>(-25054i, -19746i), vec3<bool>(true, true, false)), Struct_1(3887i, -29136i, false, vec2<i32>(15594i, 1i), vec3<bool>(true, false, false)), Struct_1(34014i, 9282i, false, vec2<i32>(0i, 17499i), vec3<bool>(false, false, false)), Struct_1(0i, -28383i, true, vec2<i32>(-1i, -2136i), vec3<bool>(true, false, false)), Struct_1(2147483647i, -1i, true, vec2<i32>(2147483647i, -20944i), vec3<bool>(true, true, false)), Struct_1(-39123i, -1i, false, vec2<i32>(7191i, i32(-2147483648)), vec3<bool>(true, true, false)), Struct_1(8024i, -8420i, false, vec2<i32>(-13746i, 3155i), vec3<bool>(true, true, true)), Struct_1(23612i, 2594i, true, vec2<i32>(-3243i, 10502i), vec3<bool>(false, false, false)), Struct_1(4896i, i32(-2147483648), true, vec2<i32>(-18565i, -15685i), vec3<bool>(false, true, false)), Struct_1(2147483647i, 23717i, true, vec2<i32>(8193i, 1i), vec3<bool>(false, true, true)), Struct_1(-5513i, 2147483647i, false, vec2<i32>(0i, 0i), vec3<bool>(true, false, false)), Struct_1(-21133i, -25032i, false, vec2<i32>(37842i, -51194i), vec3<bool>(false, false, false)), Struct_1(-1i, i32(-2147483648), false, vec2<i32>(42655i, 0i), vec3<bool>(false, false, true)), Struct_1(27839i, -1i, false, vec2<i32>(0i, 23325i), vec3<bool>(false, false, true)), Struct_1(43313i, -5217i, false, vec2<i32>(0i, -57091i), vec3<bool>(false, false, true)), Struct_1(-13307i, 31192i, true, vec2<i32>(-23275i, 0i), vec3<bool>(true, false, false)), Struct_1(1i, 2147483647i, true, vec2<i32>(i32(-2147483648), -7115i), vec3<bool>(true, true, false)), Struct_1(-1i, 0i, true, vec2<i32>(-26282i, -1i), vec3<bool>(true, false, true)), Struct_1(-14569i, i32(-2147483648), false, vec2<i32>(28527i, 25144i), vec3<bool>(true, false, true)), Struct_1(36344i, -42291i, true, vec2<i32>(-1i, 2147483647i), vec3<bool>(true, true, false)), Struct_1(i32(-2147483648), 5687i, true, vec2<i32>(60908i, 1i), vec3<bool>(true, true, false)), Struct_1(22257i, i32(-2147483648), false, vec2<i32>(2147483647i, 44038i), vec3<bool>(true, false, false)), Struct_1(10307i, -2940i, false, vec2<i32>(5386i, 24407i), vec3<bool>(false, false, true)), Struct_1(-30755i, 0i, false, vec2<i32>(-62115i, 22811i), vec3<bool>(false, false, true)), Struct_1(0i, -1i, true, vec2<i32>(-1i, 21138i), vec3<bool>(false, false, false)), Struct_1(-1i, 2147483647i, false, vec2<i32>(-1i, i32(-2147483648)), vec3<bool>(true, true, false)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>) -> f32 {
    global0 = array<Struct_1, 32>();
    let var_0 = !(!(true & select(any(vec2<bool>(false, false)), true, all(vec3<bool>(true, false, true)))));
    var var_1 = Struct_1(u_input.a.x, max(u_input.a.x, _wgslsmith_sub_i32(firstTrailingBit(0i), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-14926i, -68991i, u_input.a.x, u_input.a.x), vec4<i32>(1i, -7251i, 2147483647i, u_input.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(338i, -29761i, 852i, u_input.d.x), u_input.d)))), var_0, u_input.d.wy, !vec3<bool>(all(vec2<bool>(true, true)), var_0, !(!var_0)));
    global0 = array<Struct_1, 32>();
    var var_2 = ~(_wgslsmith_sub_vec4_u32(vec4<u32>(68973u, reverseBits(u_input.c.x), 4294967295u, 1u >> (u_input.b.x % 32u)), select(~vec4<u32>(23109u, 1u, 31407u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(38396u, 4294967295u, u_input.c.x, 1u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.b.x)), true)) & vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b, u_input.c.xz), u_input.c.x | u_input.b.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(10810u, 37913u, 14817u, 0u), ~vec4<u32>(44600u, u_input.b.x, 49725u, 106761u)), 49018u | (u_input.c.x ^ 4294967295u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.x * arg_0.x), _wgslsmith_f_op_f32(arg_1.x + 1377f))), -482f)));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1340f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x), -861f) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-426f, var_0.x, var_0.x, -566f), vec4<f32>(var_0.x, 1000f, -1057f, var_0.x), true)) - vec4<f32>(var_0.x, -823f, var_0.x, var_0.x))))));
    var var_1 = -arg_0.d.x;
    var var_2 = 169f;
    var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1365f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(-1364f, var_0.x, 1000f), vec3<f32>(1542f, 2212f, 172f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(321f)), -324f))));
    return arg_0.c;
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    var var_0 = reverseBits(-18384i);
    let var_1 = select(select(select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), func_2(global0[_wgslsmith_index_u32(arg_0.x, 32u)], 9631u)), vec2<bool>(true, any(vec4<bool>(true, true, true, true))), any(vec3<bool>(true, true, true))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), true), vec2<bool>(false, select(_wgslsmith_add_i32(u_input.d.x, 1i), abs(-23445i), false) > -reverseBits(75646i)), true && !all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-428f)), -693f, _wgslsmith_f_op_f32(step(-371f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(273f, -1281f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1186f))))));
    var var_3 = ~reverseBits(26361u);
    var_0 = -23475i;
    return StorageBuffer(_wgslsmith_clamp_vec2_i32(u_input.a, select(vec2<i32>(firstTrailingBit(2147483647i), _wgslsmith_add_i32(10048i, u_input.a.x)), vec2<i32>(~2147483647i, 2147483647i), !select(var_1.x, false, true)), u_input.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.zz + var_2.xy) - var_2.xy) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.xz) - vec2<f32>(var_2.x, 1347f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(2013f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(~(vec3<u32>(21406u << (u_input.c.x % 32u), u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(0u, u_input.c.x, 1u))) ^ ~vec3<u32>(9149u, u_input.b.x, 18729u)));
}

