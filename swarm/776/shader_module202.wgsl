struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_2;

var<private> global2: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> bool {
    let var_0 = select(select(~u_input.b, vec4<u32>(u_input.a.x, 4294967295u, u_input.b.x, global0.x) << (vec4<u32>(0u, 55833u, u_input.e, 0u) % vec4<u32>(32u)), !vec4<bool>(false, false, true, global1.a.x)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(43323u, global0.x, global0.x, u_input.e), _wgslsmith_mult_vec4_u32(u_input.b, u_input.b), max(vec4<u32>(u_input.b.x, 1u, 28860u, global0.x), u_input.b)), vec4<u32>(countOneBits(u_input.d.x), 1151u, 4294967295u, global0.x), select(vec4<bool>(false, false, true, !global1.b.x), vec4<bool>(true, any(vec4<bool>(global1.b.x, false, false, true)), !global1.a.x, global1.a.x), !vec4<bool>(true, global1.b.x, global1.b.x, false))) | ~vec4<u32>(~_wgslsmith_div_u32(global0.x, u_input.d.x), ~_wgslsmith_mult_u32(0u, 4294967295u), firstLeadingBit(global0.x), max(1u << (global0.x % 32u), ~u_input.d.x));
    global0 = vec3<u32>(u_input.a.x, global0.x, global0.x);
    let var_1 = global1.b;
    global2 = array<vec2<bool>, 17>();
    global2 = array<vec2<bool>, 17>();
    return var_1.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_5, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = u_input.c.zzx;
    var var_1 = Struct_3(Struct_2(!select(select(global1.a, global2[_wgslsmith_index_u32(global0.x, 17u)], global1.b.yz), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(global1.a.x, arg_0.x)), vec3<bool>(arg_0.x, all(vec4<bool>(global1.a.x, arg_0.x, global1.a.x, false)), true)), arg_3, global1.a.x, arg_1);
    global1 = var_1.a;
    let var_2 = !vec3<bool>(!var_1.a.a.x == var_1.a.a.x, true, select(all(!arg_0), true || global1.b.x, func_3()));
    var var_3 = _wgslsmith_f_op_f32(floor(arg_1));
    return Struct_2(select(select(!vec2<bool>(true, var_1.a.b.x), !(!var_1.a.a), any(!arg_0.wx)), select(!var_2.yz, !global1.a, var_1.a.a), u_input.c.x >= u_input.c.x), var_2);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<f32> {
    let var_0 = Struct_3(func_2(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(global1.a.x, global1.b.x, global1.a.x, false), false), select(vec4<bool>(global1.a.x, false, global1.a.x, false), vec4<bool>(false, true, true, global1.a.x), vec4<bool>(global1.a.x, global1.a.x, global1.b.x, global1.a.x)), global1.b.x), -652f, Struct_5(~arg_0.x), vec3<f32>(626f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-366f * 578f)), 1000f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-813f, -2074f, 284f))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-509f, arg_1.a.x, arg_1.a.x), vec3<f32>(1038f, -1000f, arg_1.a.x)))))))), global1.b.x && true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1827f, arg_1.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))));
    var var_1 = arg_1;
    var var_2 = vec4<u32>(0u, u_input.a.x << (8165u % 32u), 1u, ~15210u);
    global0 = ~vec3<u32>(_wgslsmith_mult_u32(10206u, u_input.b.x), 86490u, arg_2.x);
    global0 = _wgslsmith_div_vec3_u32(~(~vec3<u32>(_wgslsmith_clamp_u32(arg_2.x, u_input.e, global0.x), max(76558u, 1u), global0.x)), _wgslsmith_add_vec3_u32(var_2.zxz, u_input.b.wyx));
    return _wgslsmith_f_op_vec3_f32(var_0.b + var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(-26290i, global0.yy, ~(~reverseBits(u_input.b)));
    global2 = array<vec2<bool>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-158f, -1306f, 183f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, -1i), Struct_1(vec2<f32>(-150f, 434f)), u_input.d)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1085f, -888f, -1665f))))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -516f), -2487f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2033f + -1999f), 482f)), !global1.b)), var_0.a, -vec4<i32>(-65267i, -40553i, var_0.a, _wgslsmith_mod_i32(var_0.a, u_input.c.x) >> (var_0.c.x % 32u)), _wgslsmith_f_op_vec3_f32(func_1(vec4<i32>(39422i, firstTrailingBit(-1i << (global0.x % 32u)), countOneBits(90412i), var_0.a), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 967f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1043f, 392f))))), var_0.c.yzw)).x);
}

