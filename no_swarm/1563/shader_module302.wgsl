struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -281f;

var<private> global1: array<bool, 25> = array<bool, 25>(false, false, true, false, true, false, false, true, false, false, false, true, false, true, false, true, true, true, false, true, false, true, false, true, true);

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_3, 25>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_3 {
    global3 = array<Struct_3, 25>();
    let var_0 = vec4<u32>(max(~7872u, _wgslsmith_clamp_u32(max(max(8970u, u_input.b.x), _wgslsmith_mult_u32(u_input.d.x, 1u)), 3712u, firstLeadingBit(~12240u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(min(u_input.b.x, 44767u), countOneBits(4294967295u), 4294967295u), _wgslsmith_div_vec3_u32(u_input.d.yyy, vec3<u32>(u_input.d.x, 0u, u_input.b.x) & u_input.d.wyx)), 29335u, 4294967295u);
    global1 = array<bool, 25>();
    var var_1 = _wgslsmith_f_op_f32(abs(1193f));
    let var_2 = u_input.c.x;
    return global3[_wgslsmith_index_u32(1u, 25u)];
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: Struct_3, arg_3: vec2<i32>) -> i32 {
    let var_0 = u_input.a.x;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1276f, -614f)), _wgslsmith_f_op_f32(arg_2.c.c - _wgslsmith_f_op_f32(-arg_2.c.c)), global1[_wgslsmith_index_u32(~u_input.d.x, 25u)])))));
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(f32(-1f) * -1191f)) - _wgslsmith_f_op_f32(trunc(global2.x))), 766f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-578f + arg_2.c.c), arg_2.c.c) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(884f, -742f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, arg_2.c.c))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -501f) * vec2<f32>(1833f, global2.x)))))));
    global1 = array<bool, 25>();
    let var_1 = firstTrailingBit(func_2().c.d);
    return arg_2.b.x;
}

fn func_1() -> vec2<f32> {
    let var_0 = true;
    var var_1 = Struct_2(-1i, _wgslsmith_mult_vec2_i32(u_input.c.xz, vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 23901i), u_input.a.yy), abs(vec2<i32>(0i, u_input.c.x))), func_3(Struct_5(u_input.b.x), -17956i, func_2(), vec2<i32>(u_input.c.x, u_input.a.x) | vec2<i32>(u_input.c.x, u_input.c.x)))), _wgslsmith_f_op_f32(-global2.x));
    var var_2 = var_1.a;
    var var_3 = Struct_2(1i, var_1.b, _wgslsmith_f_op_f32(-var_1.c));
    var var_4 = 51833u;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_1.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    global3 = array<Struct_3, 25>();
    global2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-475f * _wgslsmith_div_f32(global2.x, global2.x)), _wgslsmith_f_op_f32(730f + 641f))), -1346f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1739f, global2.x) - vec2<f32>(357f, -700f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2432f, global2.x))) * _wgslsmith_f_op_vec2_f32(func_1())) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-201f, 486f), vec2<f32>(global2.x, global2.x)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.x, global2.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 1214f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1359f, global2.x)))))));
    var var_1 = global1[_wgslsmith_index_u32(1u, 25u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-200f)) + _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(select(global2.x, -200f, true))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1()).x))));
    var var_3 = -u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(select(global2.x, 1f, global1[_wgslsmith_index_u32(~u_input.b.x, 25u)]))), var_3.yz, ~var_0, _wgslsmith_clamp_vec4_u32(u_input.d, abs(vec4<u32>(28192u, var_0 & var_0, min(6595u, 29114u), 14119u)), _wgslsmith_div_vec4_u32(firstLeadingBit(~u_input.d), vec4<u32>(_wgslsmith_mult_u32(4294967295u, var_0), 1u, ~4294967295u, ~u_input.b.x))));
}

