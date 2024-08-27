struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19>;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<bool>(true, false), vec2<bool>(false, true), 6148u, 45668u, -4495i), Struct_1(vec2<bool>(false, true), vec2<bool>(true, true), 4294967295u, 1u, 0i), Struct_1(vec2<bool>(true, false), vec2<bool>(false, true), 48460u, 18052u, -23817i), Struct_1(vec2<bool>(true, true), vec2<bool>(false, false), 4294967295u, 0u, -720i), Struct_1(vec2<bool>(true, false), vec2<bool>(false, true), 1u, 2744u, 0i), Struct_1(vec2<bool>(true, false), vec2<bool>(false, true), 61735u, 9093u, -57264i), Struct_1(vec2<bool>(true, true), vec2<bool>(false, false), 6727u, 1u, -1i), Struct_1(vec2<bool>(false, true), vec2<bool>(false, true), 4294967295u, 25085u, -14096i), Struct_1(vec2<bool>(true, false), vec2<bool>(false, false), 4531u, 24978u, 12655i), Struct_1(vec2<bool>(false, false), vec2<bool>(true, true), 0u, 65840u, i32(-2147483648)), Struct_1(vec2<bool>(true, false), vec2<bool>(false, true), 4294967295u, 7985u, 0i), Struct_1(vec2<bool>(true, false), vec2<bool>(false, true), 76474u, 4294967295u, 1i), Struct_1(vec2<bool>(true, false), vec2<bool>(false, false), 0u, 4294967295u, 8781i), Struct_1(vec2<bool>(false, true), vec2<bool>(true, true), 33178u, 1u, -9180i), Struct_1(vec2<bool>(true, false), vec2<bool>(true, false), 0u, 31203u, 4694i), Struct_1(vec2<bool>(false, true), vec2<bool>(false, false), 1u, 48921u, -12062i), Struct_1(vec2<bool>(false, false), vec2<bool>(true, false), 1u, 54038u, -1i), Struct_1(vec2<bool>(false, true), vec2<bool>(true, true), 4294967295u, 18886u, -46751i), Struct_1(vec2<bool>(true, false), vec2<bool>(true, true), 40337u, 34668u, 1i), Struct_1(vec2<bool>(true, true), vec2<bool>(true, false), 32801u, 1u, -1i), Struct_1(vec2<bool>(false, false), vec2<bool>(false, true), 1u, 1u, 2147483647i), Struct_1(vec2<bool>(true, false), vec2<bool>(false, false), 0u, 27392u, 0i), Struct_1(vec2<bool>(false, false), vec2<bool>(true, false), 1u, 45825u, i32(-2147483648)), Struct_1(vec2<bool>(false, false), vec2<bool>(false, true), 4294967295u, 4294967295u, 21553i), Struct_1(vec2<bool>(false, true), vec2<bool>(false, false), 4294967295u, 1u, -1i), Struct_1(vec2<bool>(false, false), vec2<bool>(false, true), 19593u, 4294967295u, 0i), Struct_1(vec2<bool>(false, true), vec2<bool>(false, false), 1u, 1u, 9290i), Struct_1(vec2<bool>(false, true), vec2<bool>(true, false), 72365u, 4294967295u, -17763i), Struct_1(vec2<bool>(true, true), vec2<bool>(false, false), 19766u, 1u, -1i), Struct_1(vec2<bool>(true, false), vec2<bool>(false, true), 0u, 38963u, 3560i), Struct_1(vec2<bool>(true, false), vec2<bool>(true, true), 74227u, 1u, i32(-2147483648)), Struct_1(vec2<bool>(true, true), vec2<bool>(false, false), 25842u, 1187u, 2147483647i));

var<private> global2: array<f32, 14>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> vec2<bool> {
    global1 = array<Struct_1, 32>();
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 32u)];
    global0 = array<vec2<u32>, 19>();
    let var_1 = var_0.e;
    global0 = array<vec2<u32>, 19>();
    return select(vec2<bool>(var_0.a.x, true || !all(var_0.a)), var_0.b, var_0.b.x);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32) -> u32 {
    global2 = array<f32, 14>();
    global2 = array<f32, 14>();
    global2 = array<f32, 14>();
    var var_0 = Struct_3(65122u, arg_1, true);
    var var_1 = arg_1;
    return var_0.b.a.d;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> bool {
    global1 = array<Struct_1, 32>();
    let var_0 = arg_1;
    let var_1 = false != !(!(global2[_wgslsmith_index_u32(func_3(u_input.a, Struct_2(Struct_1(vec2<bool>(false, true), arg_1.xy, 0u, 1u, u_input.b), true, Struct_1(var_0.xz, vec2<bool>(false, true), u_input.a.x, 0u, u_input.b), global1[_wgslsmith_index_u32(1u, 32u)]), 180f), 14u)] <= global2[_wgslsmith_index_u32(1u, 14u)]));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(0u), _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(abs(63359u), 0u), 4294967295u, 80259u)), 32u)];
    global1 = array<Struct_1, 32>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), false), !(1i > u_input.c.x)), select(select(vec2<bool>(true, true), func_1(Struct_3(1u, Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], true, Struct_1(vec2<bool>(false, true), vec2<bool>(false, false), 1u, 24636u, u_input.c.x), global1[_wgslsmith_index_u32(0u, 32u)]), true), u_input.b), true), vec2<bool>(-1000f <= global2[_wgslsmith_index_u32(u_input.a.x, 14u)], true), func_2(false, vec3<bool>(true, true, true))), false), !(!vec2<bool>(true, any(vec4<bool>(false, true, true, true)))), vec2<bool>(!(u_input.c.x >= ~u_input.c.x), true));
    let var_1 = vec4<bool>(true, !var_0.x, abs(_wgslsmith_clamp_u32(~20746u, abs(4294967295u), u_input.a.x)) > 0u, true);
    global0 = array<vec2<u32>, 19>();
    let var_2 = _wgslsmith_mult_i32(-24315i, u_input.b);
    var var_3 = Struct_1(func_1(Struct_3(u_input.a.x, Struct_2(Struct_1(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, var_0.x), u_input.a.x, 4294967295u, -2147483647i), var_0.x, Struct_1(var_0, vec2<bool>(true, var_0.x), u_input.a.x, 1u, -26354i), global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), !var_1.x), _wgslsmith_clamp_i32(abs(~7125i), -15365i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(-29251i, 1i, -1i), u_input.c), u_input.c))), !vec2<bool>(true, !func_1(Struct_3(u_input.a.x, Struct_2(Struct_1(var_1.zy, var_0, u_input.a.x, u_input.a.x, u_input.b), var_1.x, global1[_wgslsmith_index_u32(37461u, 32u)], global1[_wgslsmith_index_u32(150818u, 32u)]), var_1.x), -2147483647i).x), u_input.a.x, 0u, _wgslsmith_dot_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2, 19824i, 23627i, u_input.c.x), vec4<i32>(var_2, u_input.c.x, u_input.b, u_input.b), vec4<i32>(-1173i, 24820i, u_input.c.x, var_2)), vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b), !var_1.x) ^ ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -35460i, -2147483647i, 1i), vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, -47752i)), vec4<i32>(-2147483647i, firstTrailingBit(~0i), u_input.b, 22271i)));
    global0 = array<vec2<u32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1294f, 624f))), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_3.d & 27473u, 14u)], _wgslsmith_f_op_f32(149f + global2[_wgslsmith_index_u32(var_3.d, 14u)])))));
}

