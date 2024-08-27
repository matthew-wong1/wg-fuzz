struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1i);

var<private> global1: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(1i, -1i), vec2<i32>(6890i, 11046i), vec2<i32>(0i, -33i), vec2<i32>(20171i, -1i), vec2<i32>(-1i, 20921i), vec2<i32>(-61389i, 36187i), vec2<i32>(28591i, 18344i));

var<private> global2: array<Struct_3, 11>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> i32 {
    global1 = array<vec2<i32>, 7>();
    return u_input.d;
}

fn func_1() -> vec4<u32> {
    let var_0 = -_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(global0.a, -1i), func_2() << (_wgslsmith_add_u32(u_input.c, u_input.b.x) % 32u), u_input.a, ~(-global0.a)), vec4<i32>(~(~1i), -2147483647i, _wgslsmith_mult_i32(-2147483647i, u_input.d), u_input.a));
    global0 = Struct_2(~0i);
    global0 = Struct_2(-2147483647i);
    var var_1 = any(!vec3<bool>((2147483647i << (u_input.e.x % 32u)) == _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0.a, -56469i), var_0.wzz), !select(true, false, true), all(vec4<bool>(false, false, false, false))));
    var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(select(global0.a | var_0.x, 1i, false), 1i, 0i, 0i), var_0) | ~vec4<i32>(u_input.a, 5918i, ~var_0.x << (~110661u % 32u), 14471i);
    return vec4<u32>(u_input.b.x, abs(u_input.e.x), u_input.c, ~u_input.e.x);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec3<bool>, arg_3: u32) -> u32 {
    var var_0 = Struct_3(0i, Struct_2(14826i), Struct_2(-47422i), vec2<bool>(global0.a == u_input.a, false));
    global2 = array<Struct_3, 11>();
    global0 = var_0.b;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1068f + 1597f), _wgslsmith_f_op_f32(round(-612f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-382f, 557f)) + _wgslsmith_div_vec2_f32(vec2<f32>(624f, -1021f), vec2<f32>(837f, 323f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-359f, -778f)))));
    let var_1 = Struct_2(u_input.a);
    var var_2 = func_1();
    global2 = array<Struct_3, 11>();
    let var_3 = global2[_wgslsmith_index_u32(1u, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_3.c.a, -2147483647i, ~25629i), -_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_3.a, var_1.a, global0.a, -1i), vec4<i32>(5854i, -2147483647i, global0.a, u_input.a), vec4<i32>(var_3.b.a, -12068i, -40363i, 2147483647i) << (vec4<u32>(0u, var_2.x, 1u, 0u) % vec4<u32>(32u))) | (-_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, global0.a, -22459i, -26578i), vec4<i32>(1i, 1i, global0.a, 1i)) & (abs(vec4<i32>(-78557i, global0.a, 2147483647i, global0.a)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.d, global0.a, 37276i), vec4<i32>(var_1.a, 2147483647i, global0.a, global0.a)))), ~vec4<u32>(_wgslsmith_mod_u32(u_input.e.x, var_2.x), max(func_3(-1289f, var_0.x, vec3<bool>(true, true, var_3.d.x), 23299u), _wgslsmith_mod_u32(var_2.x, 1u)), ~u_input.e.x, u_input.e.x));
}

