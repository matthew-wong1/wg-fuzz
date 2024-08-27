struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool, arg_3: vec2<u32>) -> u32 {
    var var_0 = arg_2;
    var var_1 = true;
    var_0 = arg_2;
    var var_2 = 273f;
    var_0 = false;
    return 1u;
}

fn func_2() -> Struct_4 {
    let var_0 = (~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 26985u, 4294967295u), vec4<u32>(17586u, 44851u, 4294967295u, 44589u)) >> (_wgslsmith_mult_u32(1u, func_3(global0[_wgslsmith_index_u32(~7799u, 29u)], ~vec4<u32>(2961u, 10678u, 34029u, 0u), any(vec4<bool>(true, true, false, true)), ~vec2<u32>(10132u, 4294967295u))) % 32u)) | abs(_wgslsmith_sub_u32(_wgslsmith_sub_u32(4154u, firstTrailingBit(0u)), ~(~478u)));
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    var var_1 = vec4<u32>(var_0, ~38304u, abs(_wgslsmith_clamp_u32(13024u, _wgslsmith_clamp_u32(func_3(global0[_wgslsmith_index_u32(114192u, 29u)], vec4<u32>(var_0, 1u, var_0, var_0), false, vec2<u32>(var_0, var_0)), var_0 ^ var_0, ~var_0), ~var_0 & _wgslsmith_clamp_u32(1u, var_0, 13632u))), min(_wgslsmith_sub_u32(var_0 >> (32454u % 32u), 0u), 4294967295u));
    return Struct_4(Struct_2(vec2<bool>(true, false), abs(vec2<u32>(var_1.x, ~var_0))), (var_1.x | max(var_1.x, var_0 & var_1.x)) < var_1.x, _wgslsmith_mod_vec2_i32(~(-(~vec2<i32>(u_input.b.x, u_input.a.x))), firstLeadingBit(u_input.a.xy)));
}

fn func_4(arg_0: Struct_4) -> Struct_5 {
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    let var_0 = _wgslsmith_f_op_f32(-1087f + _wgslsmith_f_op_f32(f32(-1f) * -1840f));
    let var_1 = select(_wgslsmith_div_u32(abs(~(arg_0.a.b.x >> (26280u % 32u))), arg_0.a.b.x), abs(6569u), _wgslsmith_dot_vec3_i32(~(~u_input.a), u_input.a << ((vec3<u32>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x) & vec3<u32>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x)) % vec3<u32>(32u))) == 6847i);
    let var_2 = Struct_4(arg_0.a, arg_0.b, vec2<i32>(u_input.b.x, 1i));
    return Struct_5(func_2().a, abs(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_0.a.b.x, 28464u) >> (vec3<u32>(4404u, 0u, var_2.a.b.x) % vec3<u32>(32u)), vec3<u32>(16200u, var_2.a.b.x, var_1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0, 1000f)), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(455f)))), _wgslsmith_f_op_f32(ceil(-1739f)), _wgslsmith_f_op_f32(-1f)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -954f), -1883f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-271f)), _wgslsmith_f_op_f32(min(var_0, 262f)))), var_0)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<i32>) -> u32 {
    let var_0 = func_4(func_2());
    global0 = array<Struct_1, 29>();
    var var_1 = var_0.b;
    var var_2 = any(select(vec4<bool>(any(select(vec4<bool>(var_0.a.a.x, arg_1.a.x, true, arg_1.a.x), vec4<bool>(arg_1.a.x, arg_0.x, false, true), vec4<bool>(var_0.a.a.x, arg_1.a.x, true, true))), arg_1.a.x, arg_0.x, true | func_4(Struct_4(var_0.a, arg_0.x, vec2<i32>(arg_2.x, 0i))).a.a.x), select(vec4<bool>(arg_1.a.x, true, select(false, false, false), arg_1.b.x >= 4294967295u), !(!vec4<bool>(true, true, var_0.a.a.x, true)), select(vec4<bool>(arg_1.a.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), select(vec4<bool>(arg_0.x, arg_1.a.x, false, true), vec4<bool>(var_0.a.a.x, var_0.a.a.x, true, true), true), arg_0.x)), any(select(select(vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(false, arg_0.x, false, var_0.a.a.x), false), !vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_1.a.x), u_input.a.x < -12010i))));
    let var_3 = -664f;
    return _wgslsmith_add_u32(~(~min(abs(0u), var_1.x)), 4294967295u & _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_1.b.x, 4294967295u), ~arg_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    let var_0 = vec2<bool>(true, true || (1u < firstLeadingBit(func_1(vec2<bool>(false, false), Struct_2(vec2<bool>(true, false), vec2<u32>(4294967295u, 111642u)), vec4<i32>(u_input.a.x, 2147483647i, u_input.b.x, u_input.a.x)))));
    global0 = array<Struct_1, 29>();
    let var_1 = vec2<f32>(func_4(Struct_4(func_2().a, true, vec2<i32>(-u_input.a.x, u_input.a.x))).c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -772f)))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec2<i32>(u_input.b.x, select(~(-1i) & u_input.b.x, ~u_input.a.x >> (_wgslsmith_mod_u32(4294967295u, 39003u) % 32u), any(func_4(Struct_4(Struct_2(var_0, vec2<u32>(7004u, 1u)), false, u_input.a.yz)).a.a))), _wgslsmith_f_op_f32(-289f - var_1.x), abs(-2147483647i), 1u);
}

