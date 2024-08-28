struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true));

var<private> global1: array<Struct_3, 21>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(false));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = Struct_3(true);
    global0 = array<Struct_3, 15>();
    var var_1 = _wgslsmith_div_u32(max(1u, 0u), countOneBits(firstTrailingBit(u_input.a)));
    global0 = array<Struct_3, 15>();
    global1 = array<Struct_3, 21>();
    return ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.d.x), select(~reverseBits(u_input.c.zy), select(vec2<u32>(1u, 0u) | u_input.d, abs(vec2<u32>(1u, 4747u)), arg_2), vec2<bool>(var_0.a, arg_1.b.x)));
}

fn func_2() -> Struct_2 {
    global1 = array<Struct_3, 21>();
    global2 = Struct_2(global2.a);
    let var_0 = abs(abs(u_input.b.x)) != countOneBits(_wgslsmith_clamp_u32(1u, 1u, ~func_3(0i, Struct_1(vec4<bool>(global2.a.a.x, false, global2.a.a.x, false), global2.a.a), global2.a.b.x)));
    global0 = array<Struct_3, 15>();
    global2 = Struct_2(global2.a);
    return Struct_2(Struct_1(vec4<bool>(false, true, false, !(global2.a.b.x != global2.a.b.x)), !vec4<bool>(any(global2.a.b), true, global2.a.b.x == global2.a.a.x, 48927u > u_input.d.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -655f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-376f - 1000f)) * _wgslsmith_f_op_f32(ceil(-490f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1952f)))));
    global1 = array<Struct_3, 21>();
    let var_2 = global2.a.a.wxz;
    global0 = array<Struct_3, 15>();
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(func_1());
    let var_0 = u_input.b.xy;
    var var_1 = false;
    var_1 = all(!select(!vec3<bool>(false, global2.a.a.x, global2.a.b.x), global2.a.a.yxy, global2.a.a.xzz));
    var var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0.x, u_input.a, var_0.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(22767u >> (var_0.x % 32u), 0u, 39699u), ~(~u_input.c), ~vec3<u32>(var_0.x, 81287u, 46471u)), u_input.b), u_input.b);
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(510f, 1057f, 1575f)))), vec3<f32>(_wgslsmith_f_op_f32(-418f - 659f), _wgslsmith_div_f32(-950f, -554f), _wgslsmith_f_op_f32(f32(-1f) * -1753f)))) + _wgslsmith_div_vec3_f32(vec3<f32>(-1884f, _wgslsmith_f_op_f32(max(595f, -577f)), _wgslsmith_f_op_f32(1716f * 870f)), vec3<f32>(-1350f, -1108f, -407f))), _wgslsmith_mod_u32(u_input.d.x, ~(~u_input.b.x >> (4294967295u % 32u))));
}

