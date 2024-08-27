struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: Struct_4 = Struct_4(Struct_2(vec2<bool>(false, true), Struct_1(0i, vec3<f32>(-1943f, 1000f, 1175f), true, vec3<i32>(-30402i, -1i, -1i)), vec4<bool>(false, true, false, false), 4294967295u), 4683i);

var<private> global2: array<vec2<i32>, 31>;

var<private> global3: u32 = 69165u;

var<private> global4: u32 = 38920u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>) -> f32 {
    let var_0 = Struct_2(!select(global1.a.a, !select(global1.a.a, vec2<bool>(false, global1.a.a.x), false), arg_0.a), global1.a.b, vec4<bool>(arg_0.a, true, true, true), global1.a.d);
    var var_1 = vec3<u32>(4294967295u ^ (var_0.d >> (56580u % 32u)), arg_1.x, abs(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, var_0.d, 66933u), ~vec3<u32>(var_0.d, arg_1.x, 1u)), firstTrailingBit(1u))));
    var var_2 = Struct_4(Struct_2(global1.a.a, Struct_1(~global1.b, _wgslsmith_div_vec3_f32(global1.a.b.b, global1.a.b.b), false, var_0.b.d), global1.a.c, 79479u), -max(~abs(1623i), 17719i));
    global3 = var_2.a.d;
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_0.b.xx, ~u_input.a.yx), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, global1.a.d), vec3<u32>(arg_1.x, var_2.a.d, var_0.d)), firstLeadingBit(firstTrailingBit(var_2.a.d)), 0u, var_1.x), vec4<u32>(abs(4294967295u), _wgslsmith_div_u32(var_1.x, var_0.d >> (3259u % 32u)), firstTrailingBit(1u) ^ max(var_2.a.d, global1.a.d), 0u)));
    return var_2.a.b.b.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>) -> f32 {
    global0 = array<Struct_1, 23>();
    let var_0 = !all(global1.a.a);
    global2 = array<vec2<i32>, 31>();
    let var_1 = _wgslsmith_f_op_f32(max(-218f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(func_2(Struct_3(true, u_input.a, global1.a.d, global1.a.b.b), u_input.c.zx)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1063f))))))));
    global0 = array<Struct_1, 23>();
    return global1.a.b.b.x;
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> vec4<u32> {
    let var_0 = global1.a;
    var var_1 = Struct_2(var_0.a, global0[_wgslsmith_index_u32(52804u, 23u)], var_0.c, var_0.d);
    let var_2 = !select(select(var_0.c, !select(vec4<bool>(global1.a.c.x, true, true, var_1.a.x), vec4<bool>(global1.a.a.x, global1.a.a.x, false, true), vec4<bool>(var_1.a.x, false, var_0.b.c, true)), false), vec4<bool>(global1.a.c.x, true, !var_1.a.x, !all(vec3<bool>(global1.a.a.x, true, true))), vec4<bool>(true, false, true, false));
    let var_3 = Struct_3(var_0.a.x, vec4<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(4294967295u, var_0.d, 0u, 0u))), 95428u, 0u, _wgslsmith_div_u32(min(~var_0.d, 11419u), global1.a.d)), var_1.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.b.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -644f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b.x)))));
    global4 = ~arg_1;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_div_f32(global1.a.b.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.a.b.b.x - 1081f)))) >= _wgslsmith_f_op_f32(round(-310f)), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.a.b.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1801f), _wgslsmith_f_op_f32(func_1(global1.a.b.b, vec2<u32>(1u, global1.a.d))))), 4294967295u), 1u, global1.a.b.b);
    global4 = var_0.b.x;
    var var_1 = all(!global1.a.c.yz);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global1.a.b.b.x)))));
    var_1 = (_wgslsmith_mult_i32(global1.b, u_input.e.x) << (~min(_wgslsmith_add_u32(var_0.b.x, global1.a.d), ~66168u) % 32u)) > 41102i;
    let var_3 = global1.a.d;
    let var_4 = 52871u >= func_3(var_0.d, ~(~_wgslsmith_mult_u32(global1.a.d, var_0.c))).x;
    let var_5 = Struct_3(true, vec4<u32>(firstTrailingBit(select(min(1u, 4294967295u), ~var_0.b.x, true)), u_input.d, global1.a.d, 1u), 56243u, var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.xyy, global1.b ^ u_input.e.x, global1.a.b.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.b.b.x), 609f, _wgslsmith_f_op_f32(var_0.d.x + var_5.d.x)), ~_wgslsmith_div_vec2_u32(var_5.b.zw, var_0.b.zx))), global1.a.b.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_5.d), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_5.d * vec3<f32>(var_5.d.x, var_0.d.x, 659f))))));
}

