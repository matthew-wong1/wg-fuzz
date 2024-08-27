struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<bool>(true, true, false), Struct_3(11082u));

var<private> global1: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(vec3<bool>(false, false, true), Struct_3(1u)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1194f)), _wgslsmith_f_op_f32(floor(486f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(964f * -378f)), 1f))));
    var var_1 = arg_0;
    global0 = global1[_wgslsmith_index_u32(7378u, 1u)];
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1295f, -1037f) - vec2<f32>(426f, 972f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, var_0.x)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(466f, var_0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2186f))))));
    global1 = array<Struct_4, 1>();
    return _wgslsmith_div_f32(-1182f, var_0.x);
}

fn func_2() -> Struct_3 {
    var var_0 = !select(!global0.a, !(!vec3<bool>(global0.a.x, true, global0.a.x)), u_input.c.x >= ~reverseBits(16251i));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(true), Struct_4(vec3<bool>(false, var_0.x, true), global0.b))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1174f, 697f)) - _wgslsmith_f_op_f32(f32(-1f) * -448f))))));
    let var_2 = Struct_1(true);
    var var_3 = vec4<i32>(-2147483647i, u_input.c.x, firstTrailingBit(u_input.c.x), -u_input.c.x);
    var var_4 = _wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(select(~110438u | _wgslsmith_dot_vec4_u32(vec4<u32>(16839u, 29353u, 37429u, 94636u), vec4<u32>(0u, u_input.b, 8847u, u_input.a.x)), 1u, select(var_2.a, var_0.x, true) & var_0.x), _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.a, 68407u, global0.b.a), vec3<u32>(u_input.d, global0.b.a, 25362u)), 1u), (global0.b.a >> (0u % 32u)) | ~4294967295u)));
    return Struct_3(0u);
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_4, 1>();
    var var_0 = u_input.c.x;
    global0 = Struct_4(global0.a, global0.b);
    var var_1 = Struct_4(global0.a, func_2());
    let var_2 = global0.a.xx;
    return Struct_1(false);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(514f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_3)))));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(~u_input.c.x, _wgslsmith_mult_i32(-arg_2, ~arg_2)), _wgslsmith_dot_vec4_i32(-min(vec4<i32>(17490i, arg_2, 51300i, u_input.c.x), vec4<i32>(97645i, 2147483647i, arg_2, u_input.c.x) & vec4<i32>(-8397i, u_input.c.x, u_input.c.x, u_input.c.x)), vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x), vec3<i32>(-16857i, u_input.c.x, 2147483647i)), -arg_2, u_input.c.x) >> (firstLeadingBit(vec4<u32>(global0.b.a, global0.b.a, 1u, 0u) | vec4<u32>(45049u, 4294967295u, u_input.b, 15340u)) % vec4<u32>(32u))));
    var var_2 = Struct_2(24939i);
    let var_3 = select(vec4<bool>(func_1().a, !global0.a.x, global0.a.x, !global0.a.x), !select(vec4<bool>(all(arg_1.a), true, arg_0.a, !arg_0.a), select(vec4<bool>(true, global0.a.x, true, true), !vec4<bool>(arg_1.a.x, false, true, arg_0.a), true), arg_0.a), var_0 != -134f);
    var var_4 = -(select(_wgslsmith_mod_i32(~u_input.c.x, min(var_2.a, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a, var_2.a, -1i), vec3<i32>(var_2.a, u_input.c.x, u_input.c.x)) & 1i, any(select(vec2<bool>(var_3.x, true), vec2<bool>(false, false), vec2<bool>(false, global0.a.x)))) << (arg_1.b.a % 32u));
    return Struct_2(23091i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~(vec4<u32>(4294967295u, 0u, global0.b.a, u_input.b) >> (vec4<u32>(u_input.d, 61129u, global0.b.a, 2494u) % vec4<u32>(32u)))) << (vec4<u32>(39059u, _wgslsmith_dot_vec2_u32(~u_input.a, vec2<u32>(u_input.d, 2330u)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 0u, global0.b.a), vec4<u32>(u_input.b, global0.b.a, 32784u, global0.b.a), vec4<u32>(4976u, 0u, 4294967295u, 29283u)), firstLeadingBit(vec4<u32>(global0.b.a, 49328u, 38531u, global0.b.a))), 4294967295u) % vec4<u32>(32u)));
    global0 = global1[_wgslsmith_index_u32((_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(var_0.yw, var_0.yw), 40079u) >> (u_input.a.x % 32u)) ^ ~4294967295u, 1u)];
    let var_1 = u_input.a.x;
    global0 = global1[_wgslsmith_index_u32(10778u, 1u)];
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u | ~var_0.x, global0.b.a), 1u)];
    var var_2 = func_4(func_1(), global1[_wgslsmith_index_u32(u_input.a.x, 1u)], ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-41348i, -1i, 0i, 0i), vec4<i32>(_wgslsmith_sub_i32(-28335i, u_input.c.x), i32(-1i) * -2147483647i, u_input.c.x, select(u_input.c.x, 2147483647i, global0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-341f * _wgslsmith_f_op_f32(-205f + _wgslsmith_div_f32(-619f, -1000f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1014f)), 1835f, !global0.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<i32>(var_2.a, -79547i)), ~(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 4294967295u), vec2<u32>(var_0.x, 1u)) & vec2<u32>(var_0.x, ~1u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1107f, _wgslsmith_f_op_f32(f32(-1f) * -932f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-381f, -2061f) * _wgslsmith_f_op_f32(round(920f)))) - vec2<f32>(-839f, _wgslsmith_f_op_f32(-809f + _wgslsmith_f_op_f32(f32(-1f) * -2298f)))));
}

