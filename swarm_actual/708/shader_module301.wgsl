struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -282f)));
    var var_0 = !(!vec3<bool>(_wgslsmith_f_op_f32(round(-1446f)) >= _wgslsmith_f_op_f32(-1000f - arg_0), any(vec4<bool>(true, true, true, true)), true));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -743f), arg_0));
    let var_1 = Struct_1(arg_0, u_input.c ^ vec4<i32>(2147483647i, global0.x, -u_input.c.x, -1i));
    var var_2 = vec2<u32>(u_input.b.x & ~(~4294967295u), 1u);
    return Struct_2(Struct_1(var_1.a, var_1.b));
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = 766f;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-114f, -625f, -517f, -738f) + vec4<f32>(255f, -250f, 247f, 545f)) - vec4<f32>(-431f, 1201f, -1296f, -214f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-103f, -2506f, -633f, 912f) * vec4<f32>(1000f, -1943f, -1195f, -1000f))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
    let var_2 = arg_0.zz | vec2<u32>(_wgslsmith_sub_u32(reverseBits(76622u), 0u >> ((u_input.b.x << (arg_0.x % 32u)) % 32u)), min(_wgslsmith_div_u32(~0u, max(43178u, 0u)), u_input.b.x));
    var var_3 = _wgslsmith_sub_i32(~(~_wgslsmith_div_i32(~global0.x, _wgslsmith_add_i32(-1i, global0.x))), -_wgslsmith_mult_i32(u_input.c.x, global0.x));
    return func_2(-168f, u_input.c.x);
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> f32 {
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.b, -309f)));
    let var_0 = Struct_3(any(vec2<bool>(select(true, all(vec2<bool>(true, false)), true), true)), Struct_1(arg_0.a.x, u_input.c));
    let var_1 = var_0.b.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.a), var_1, true)) * _wgslsmith_f_op_f32(-func_1(u_input.b).a.a)) * _wgslsmith_f_op_f32(var_0.b.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.b);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(vec4<f32>(var_0.a.a, -2060f, var_0.a.a, 2114f), var_0.a.a), 0u)) + var_0.a.a), _wgslsmith_f_op_f32(-func_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)).a.a))), _wgslsmith_f_op_f32(round(var_0.a.a)))), vec4<i32>(global0.x, ~(-2147483647i), i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-29920i, -2147483647i), vec2<i32>(u_input.a, 0i))) >> (vec4<u32>(reverseBits(0u), u_input.b.x, ~(~1566u), 0u) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.a + var_1.a), var_1.a), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-729f, -125f))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -745f), func_1(~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)).a.a), vec2<bool>(_wgslsmith_f_op_f32(floor(var_0.a.a)) <= _wgslsmith_f_op_f32(-var_1.a), any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false))))));
}

