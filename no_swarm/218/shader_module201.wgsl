struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 4294967295u, 12967u, 4294967295u);

var<private> global1: bool = true;

var<private> global2: array<vec4<i32>, 26>;

var<private> global3: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(31969u), Struct_4(0u), Struct_4(26027u), Struct_4(28864u), Struct_4(0u), Struct_4(4294967295u), Struct_4(1u), Struct_4(110566u), Struct_4(32104u), Struct_4(0u), Struct_4(1u), Struct_4(18983u), Struct_4(12740u), Struct_4(0u), Struct_4(217u));

var<private> global4: array<i32, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> vec4<u32> {
    return ~firstTrailingBit(~vec4<u32>(u_input.c.x, min(u_input.d.x, global0.x), ~global0.x, ~0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec2<f32>) -> vec4<u32> {
    let var_0 = u_input.b.xz;
    let var_1 = -(~(-_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(67310u, 18u)], var_0.x, 1i, u_input.b.x), u_input.b))));
    var var_2 = ~_wgslsmith_mult_i32(var_1, min(u_input.b.x, _wgslsmith_clamp_i32(~2147483647i, 0i, max(7179i, -81312i))));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(1u, max(30851u, u_input.d.x), 15181u, _wgslsmith_mult_u32(global0.x, 1u))), select(firstLeadingBit(vec4<u32>(arg_0.x, arg_0.x, 96759u, u_input.d.x) ^ vec4<u32>(arg_0.x, 0u, u_input.a.x, 4294967295u)), u_input.c | ~u_input.c, false)) << (~(~(~global0.x)) % 32u), 15u)];
    var var_4 = !select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false), arg_1.x > -2898f), true), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(false, true), all(vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), true);
    return _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(var_3.a, ~u_input.a.x, 30169u, var_3.a), u_input.c, !(!vec4<bool>(var_4.x, false, true, true))), func_2()), u_input.c);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> f32 {
    global0 = ~func_3(func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(720f, arg_0, 816f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1440f), _wgslsmith_div_f32(141f, arg_0), -321f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    let var_0 = vec4<bool>(select(false, all(vec2<bool>(true, true)), (_wgslsmith_f_op_f32(round(arg_0)) > _wgslsmith_f_op_f32(arg_0 - -1000f)) | true), !(global4[_wgslsmith_index_u32(func_3(~u_input.c, _wgslsmith_div_vec3_f32(vec3<f32>(-1943f, 373f, -617f), vec3<f32>(arg_0, -1036f, arg_0)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-859f, arg_0)))).x, 18u)] > arg_1.x), false, false);
    let var_1 = vec3<f32>(-1000f, arg_0, -302f);
    global1 = !var_0.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-783f, -1456f, arg_0) + var_1) - vec3<f32>(-415f, 150f, var_1.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(var_1, var_1)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(454f, arg_0))) - _wgslsmith_f_op_f32(select(1202f, arg_0, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1228f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1000f)))), arg_0), -11285i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - 349f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 2905u, u_input.d.x, u_input.a.x), u_input.c), ~u_input.c), ~(~4294967295u)) <= (40608u >> (global0.x % 32u));
    global3 = array<Struct_4, 15>();
    global3 = array<Struct_4, 15>();
    global2 = array<vec4<i32>, 26>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2014f, -358f, -1702f, -1000f) - vec4<f32>(1101f, -207f, -120f, -1012f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(557f, -1870f, 273f, 669f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1526f, 434f, 879f, -436f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-110f, -1444f, -218f, 820f) + vec4<f32>(2089f, 328f, 534f, -1057f)) + vec4<f32>(1f, 1f, 1f, 1f))) + vec4<f32>(-359f, _wgslsmith_f_op_f32(func_1(-577f, ~u_input.b.xw)), -387f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(942f)), _wgslsmith_f_op_f32(trunc(-1840f)), !var_0)))));
    let var_2 = !all(select(vec3<bool>(var_0, !var_0, true), vec3<bool>(true, true, true), !(global0.x > 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(~global0.x, 0u, 1u)), var_1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1089f)), -521f, _wgslsmith_f_op_f32(min(var_1.x, -157f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.zzz, vec3<f32>(var_1.x, -250f, var_1.x), vec3<bool>(false, var_2, var_2))), var_1.xyw)))), global0.x);
}

