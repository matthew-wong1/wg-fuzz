struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_3,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: vec4<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = Struct_3(Struct_2(730f));
    var var_1 = global0[_wgslsmith_index_u32(~(~firstLeadingBit(~arg_0.a.x)), 11u)];
    var var_2 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c, _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, arg_0.a.x, var_1.a.x), arg_0.a.x)), ~abs(arg_0.a.x)), 11u)], -7810i, Struct_3(Struct_2(var_0.a.a)), _wgslsmith_f_op_vec3_f32(global1.ywz + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global1.yxx)) - vec3<f32>(927f, -1520f, var_0.a.a)), vec3<f32>(global1.x, 563f, _wgslsmith_f_op_f32(select(global1.x, global1.x, false))))));
    var_1 = arg_0;
    return vec4<bool>(!(arg_0.b.x < _wgslsmith_mod_i32(arg_0.b.x, u_input.a.x)) || !((var_2.b >= var_1.b.x) && all(vec4<bool>(false, true, true, true))), global1.x != _wgslsmith_f_op_f32(trunc(-608f)), true, var_0.a.a > -1672f);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: Struct_5) -> Struct_2 {
    let var_0 = u_input.a;
    let var_1 = arg_3;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(271f, arg_3.a.d.x, 487f, global1.x)))));
    let var_2 = Struct_1(select(select(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(35055u, arg_3.a.a.a.x, 1u, var_1.a.a.a.x), arg_3.a.a.a)), ~arg_3.a.a.a, func_3(Struct_1(vec4<u32>(var_1.a.a.a.x, var_1.a.a.a.x, 63678u, arg_3.a.a.a.x), arg_3.a.a.b))), firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_3.a.a.a.wy, vec2<u32>(0u, arg_1)), u_input.c, ~arg_3.a.a.a.x, 6991u)), select(select(select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, true, true, arg_0)), !vec4<bool>(false, false, arg_0, false), false), vec4<bool>(any(vec3<bool>(false, true, false)), false, arg_0, true), false & all(vec2<bool>(false, arg_0)))), _wgslsmith_add_vec3_i32(~firstTrailingBit(_wgslsmith_clamp_vec3_i32(arg_3.a.a.b, var_1.a.a.b, vec3<i32>(var_0.x, -887i, -5260i))), vec3<i32>(max(var_0.x ^ var_0.x, var_0.x), 2147483647i, _wgslsmith_div_i32(arg_3.a.a.b.x, min(var_0.x, 29721i)))));
    let var_3 = arg_3.a.d.x;
    return Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x + -878f), _wgslsmith_f_op_f32(min(470f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))))))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~(~(vec4<u32>(u_input.c, u_input.d, 51017u, u_input.c) >> (vec4<u32>(u_input.d, 4294967295u, u_input.d, 14231u) % vec4<u32>(32u))))), ~abs(vec4<u32>(reverseBits(u_input.d), _wgslsmith_div_u32(23891u, u_input.c), select(u_input.b, 97354u, false), 0u))), 11u)];
}

fn func_5(arg_0: u32, arg_1: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(1f)), -544f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(1162f)), _wgslsmith_div_f32(-770f, arg_1.d.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1210f, -138f), global1.wx) + arg_1.d.yy)))));
    let var_1 = Struct_5(arg_1);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2004f)), _wgslsmith_f_op_f32(-var_1.a.c.a.a), _wgslsmith_f_op_f32(-var_1.a.c.a.a), var_1.a.c.a.a));
    global0 = array<Struct_1, 11>();
    var var_3 = 20901i;
    return ~(arg_1.a.a.x >> (select(var_1.a.a.a.x, _wgslsmith_div_u32(~29188u, u_input.c), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)))) % 32u));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_div_vec4_u32(firstLeadingBit(arg_0.a.a.a), (arg_0.a.a.a >> (min(arg_0.a.a.a, ~arg_1.a) % vec4<u32>(32u))) >> (min(_wgslsmith_add_vec4_u32(arg_0.a.a.a, _wgslsmith_mod_vec4_u32(arg_1.a, vec4<u32>(u_input.b, 1u, 72612u, 4294967295u))), arg_0.a.a.a) % vec4<u32>(32u)));
    var_0 = arg_0.a.a.a;
    global0 = array<Struct_1, 11>();
    let var_1 = func_5(0u, Struct_4(func_4(func_2(true, ~u_input.c, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(0i, -51881i, -10503i, arg_0.a.b)), arg_0)), ~arg_0.a.b, arg_0.a.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.xyw))));
    var var_2 = _wgslsmith_f_op_f32(1558f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-171f + _wgslsmith_f_op_f32(sign(1133f))), _wgslsmith_f_op_f32(f32(-1f) * -743f)));
    return _wgslsmith_f_op_f32(exp2(arg_0.a.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) * -215f) - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_5(Struct_4(global0[_wgslsmith_index_u32(0u, 11u)], u_input.a.x, Struct_3(Struct_2(global1.x)), vec3<f32>(154f, global1.x, global1.x))), Struct_1(vec4<u32>(u_input.c, u_input.d, 13233u, u_input.c), u_input.a.yxz))) + -1111f)), _wgslsmith_f_op_f32(f32(-1f) * -609f), -563f);
    var var_0 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(9411u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), global1.x, 1165f), vec3<i32>(_wgslsmith_mod_i32(~u_input.a.x >> (func_5(0u, Struct_4(global0[_wgslsmith_index_u32(u_input.c, 11u)], -2147483647i, Struct_3(Struct_2(1859f)), vec3<f32>(-199f, global1.x, 1039f))) % 32u), i32(-1i) * -5801i), countOneBits(reverseBits(min(0i, u_input.a.x))), -1i), ~(_wgslsmith_mod_u32(u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(32500u, u_input.c, u_input.c, 1u), vec4<u32>(1u, 15932u, 4294967295u, 21834u))) & reverseBits(~0u)));
}

