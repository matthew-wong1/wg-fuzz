struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3>;

var<private> global1: array<u32, 1>;

var<private> global2: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> i32 {
    global0 = array<vec2<i32>, 3>();
    let var_0 = Struct_3(2147483647i);
    var var_1 = var_0.a;
    global2 = true;
    var var_2 = Struct_4(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(select(select(vec4<i32>(var_0.a, 0i, -18850i, var_0.a), vec4<i32>(var_0.a, var_0.a, var_0.a, -8332i), true), _wgslsmith_sub_vec4_i32(vec4<i32>(-1720i, -22076i, 1i, -24483i), vec4<i32>(11070i, var_0.a, 0i, var_0.a)), var_0.a <= -48155i), -min(vec4<i32>(2147483647i, var_0.a, var_0.a, var_0.a), vec4<i32>(var_0.a, -1i, var_0.a, 10075i))), _wgslsmith_dot_vec4_i32(vec4<i32>(~var_0.a, var_0.a, var_0.a ^ -1i, 0i), -firstTrailingBit(vec4<i32>(2147483647i, 0i, -19945i, -47259i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(1398f)), _wgslsmith_f_op_f32(max(2627f, _wgslsmith_f_op_f32(177f * 1020f))), _wgslsmith_f_op_f32(trunc(-1020f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1055f + -1912f), _wgslsmith_f_op_f32(floor(-120f))))));
    return reverseBits(var_0.a);
}

fn func_2() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + -1731f))) + -1000f);
    let var_1 = func_3();
    var var_2 = Struct_3(-(~(-(~(-21777i)))));
    global0 = array<vec2<i32>, 3>();
    global1 = array<u32, 1>();
    return Struct_5(Struct_1(_wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-7125i, -70403i, 34786i), vec3<i32>(-29499i, var_2.a, var_2.a), vec3<i32>(var_1, -32061i, var_2.a)), -_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, var_2.a, 49506i), vec3<i32>(0i, 2147483647i, var_2.a))), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 42491u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), ~1u), vec2<u32>(u_input.a, u_input.a)), vec4<u32>(u_input.a, ~u_input.a, abs(u_input.a), abs(u_input.a)), true), false, max(_wgslsmith_sub_u32(u_input.a, 34501u), u_input.a), _wgslsmith_div_f32(1082f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-715f, _wgslsmith_f_op_f32(step(1297f, 2069f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(358f))))), ~abs(4294967295u) << (0u % 32u));
}

fn func_1() -> vec2<bool> {
    var var_0 = func_2();
    global1 = array<u32, 1>();
    var var_1 = -var_0.a.a;
    return !vec2<bool>(!var_0.a.d, true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = all(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true)));
    var var_0 = select(func_1(), !vec2<bool>(true, !(4294967295u < global1[_wgslsmith_index_u32(u_input.a, 1u)])), select(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), false)), !func_1(), vec2<bool>(true, true)));
    var var_1 = Struct_3(0i);
    var_1 = Struct_3(var_1.a);
    let var_2 = Struct_2(Struct_1(var_1.a, _wgslsmith_sub_vec2_u32(min(vec2<u32>(0u, 79128u), vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], 1u)) << (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<u32>(func_2().a.c.x, ~u_input.a)), vec4<u32>(func_2().e, abs(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(67250u, 1u)], 1u)], 1u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 10632u, 90133u), vec3<u32>(u_input.a, 38290u, u_input.a)) ^ select(4294967295u, u_input.a, var_0.x), select(_wgslsmith_add_u32(36460u, 11900u), _wgslsmith_clamp_u32(1u, u_input.a, 53867u), all(vec3<bool>(var_0.x, var_0.x, var_0.x)))), var_0.x), select(!vec3<bool>(false, true, var_0.x), !(!select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, var_0.x), false)), func_1().x), _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(-1675f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(835f - -1100f), 500f)))), func_2().a);
    var var_3 = ~0u;
    var var_4 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(select(13123u, var_4.b.x, var_0.x), 33619u, 0u, _wgslsmith_add_u32(var_4.c.x, 1u)), (var_2.d.c ^ vec4<u32>(1u, u_input.a, u_input.a, var_4.b.x)) << (vec4<u32>(48448u, 78516u, u_input.a, var_2.d.c.x) % vec4<u32>(32u))) ^ max(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, var_2.a.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(75215u, 1u)], 1u)], 1u)]), func_2().a.c), abs(reverseBits(vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(var_2.a.b.x, 1u)], var_4.b.x, 86324u)))));
}

