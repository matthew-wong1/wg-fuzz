struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<bool>,
    e: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(-1447f, 1219f, 783f, 103f), vec4<f32>(162f, 1124f, 1640f, -1000f), vec4<f32>(2538f, 333f, 242f, -1000f), vec4<f32>(528f, -483f, -179f, 586f), vec4<f32>(-2136f, 350f, 1000f, -858f), vec4<f32>(1515f, 1000f, 950f, -1406f), vec4<f32>(1025f, 1525f, 1080f, 584f), vec4<f32>(-925f, -1220f, 128f, -722f), vec4<f32>(-723f, 1000f, 214f, -388f), vec4<f32>(-555f, 640f, 641f, 211f), vec4<f32>(-363f, 112f, -1000f, -1677f), vec4<f32>(1383f, -827f, -1579f, -1000f), vec4<f32>(892f, -489f, -186f, -1012f), vec4<f32>(292f, -277f, 492f, -213f), vec4<f32>(550f, 1000f, 308f, -1693f), vec4<f32>(1357f, -1485f, -129f, -363f), vec4<f32>(181f, -1000f, 247f, -664f));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<u32>) -> f32 {
    global0 = array<vec4<f32>, 17>();
    global0 = array<vec4<f32>, 17>();
    global0 = array<vec4<f32>, 17>();
    let var_0 = -1i;
    global0 = array<vec4<f32>, 17>();
    return -1948f;
}

fn func_3() -> vec4<f32> {
    var var_0 = ~(~u_input.c.x);
    var var_1 = _wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(abs(~(-u_input.c.x)), -2147483647i, abs(abs(~u_input.c.x)), -reverseBits(abs(23684i))));
    var var_2 = Struct_2(select(select(vec4<bool>(true, true, false, all(vec2<bool>(true, true))), vec4<bool>(all(vec3<bool>(true, false, true)), var_1.x > var_1.x, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), true), abs(abs(u_input.c.ywz)), Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.b, u_input.b), ~vec4<u32>(0u, 1u, u_input.b, 4294967295u)), u_input.c.x), select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, false, false), u_input.c.x > -23980i), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), all(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), all(vec3<bool>(false, false, false))))), !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) < 732f));
    var var_3 = var_2.c;
    return global0[_wgslsmith_index_u32(max(0u, ~_wgslsmith_clamp_u32(var_2.c.a.x, 60528u, var_2.c.a.x)), 17u)];
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(640f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(934f * -1136f)))) - vec2<f32>(_wgslsmith_f_op_f32(func_2(abs(_wgslsmith_sub_u32(4409u, arg_0.c.a.x)), select(select(arg_0.d.zz, vec2<bool>(false, arg_0.a.x), vec2<bool>(arg_0.a.x, arg_0.d.x)), vec2<bool>(true, true), arg_0.e), ~(~vec3<u32>(13487u, 0u, 99293u)))), _wgslsmith_f_op_f32(f32(-1f) * -1978f)));
    var var_1 = arg_0;
    global0 = array<vec4<f32>, 17>();
    var var_2 = var_1.d.xz;
    let var_3 = 25161u;
    return Struct_3(~abs(_wgslsmith_mod_vec4_i32(u_input.c, u_input.c)), _wgslsmith_f_op_vec4_f32(func_3()), arg_0, -18117i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-653f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2428f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 971f) * _wgslsmith_f_op_f32(194f + 930f)))), 187f);
    let var_1 = func_1(Struct_2(!vec4<bool>(false, u_input.b < u_input.a, u_input.a < u_input.b, true), u_input.c.xyw, Struct_1(vec4<u32>(13163u, u_input.b, 0u, 4294967295u), ~(-9985i)), vec3<bool>(true, true, true), false), -1i);
    global0 = array<vec4<f32>, 17>();
    var var_2 = var_1.c.c;
    let var_3 = func_1(Struct_2(!select(var_1.c.a, !var_1.c.a, u_input.c.x != var_2.b), -var_1.a.ywx, var_1.c.c, vec3<bool>(true, var_1.c.d.x, !(false | var_1.c.a.x)), var_1.c.a.x), _wgslsmith_clamp_i32(1i, -select(2147483647i, ~2147483647i, false), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_3.b.x, var_3.b.x)), func_1(Struct_2(var_3.c.a, vec3<i32>(-35308i, var_1.d, var_2.b), Struct_1(var_1.c.c.a, 1i), vec3<bool>(var_3.c.e, var_1.c.e, var_3.c.e), var_3.c.a.x), -27587i).b.ywx)))), var_1.b.zxw)), i32(-1i) * -1799i, _wgslsmith_mult_i32(reverseBits(var_3.d), func_1(Struct_2(!vec4<bool>(var_3.c.e, var_3.c.d.x, false, var_1.c.e), select(var_3.c.b, vec3<i32>(var_1.d, var_3.c.b.x, var_1.a.x), vec3<bool>(false, var_3.c.a.x, false)), Struct_1(var_2.a, 2147483647i), var_3.c.d, false), -21806i).d));
}

