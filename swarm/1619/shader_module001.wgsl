struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(67555i, Struct_1(1i, vec3<bool>(false, false, true)), vec4<bool>(true, true, false, false));

var<private> global1: bool = false;

var<private> global2: Struct_4 = Struct_4(vec3<u32>(4294967295u, 0u, 4294967295u), true, false);

var<private> global3: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, arg_0))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, arg_0)))))))));
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1580f + 338f) * 124f) * arg_0.b))));
    global2 = Struct_4(arg_0.c, any(!vec4<bool>(true, global2.b, true, all(vec4<bool>(false, global0.c.x, global0.c.x, global0.b.b.x)))), arg_0.a.b.x);
    var var_1 = vec3<f32>(-308f, -2298f, _wgslsmith_div_f32(-2267f, arg_0.b));
    let var_2 = ~_wgslsmith_sub_u32(~1u, arg_0.c.x >> (arg_0.c.x % 32u));
    var var_3 = _wgslsmith_sub_i32(-66782i, -2147483647i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -598f)) - var_0.x);
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(global0.a, vec3<bool>(true, global2.b, global2.b)), 353f, global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1760f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(-1255f)).x - -501f), 1000f))));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_vec2_f32(func_3(-206f)).x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(-402f, var_0.x)), vec2<f32>(1115f, var_0.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zx) + _wgslsmith_f_op_vec2_f32(var_0.yx - var_0.xy)))));
    return Struct_4(select(abs(reverseBits(~vec3<u32>(global2.a.x, global2.a.x, 60925u))), vec3<u32>(global2.a.x >> (_wgslsmith_dot_vec2_u32(global2.a.xy, global2.a.zy) % 32u), reverseBits(_wgslsmith_mult_u32(94233u, 0u)), global2.a.x), select(global0.c.yxx, select(select(global0.c.yxz, vec3<bool>(global2.b, global0.b.b.x, global2.b), false), vec3<bool>(true, true, global0.c.x), false), var_0.x > var_1.x)), !(-453f >= _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(trunc(var_1.x)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(324f, _wgslsmith_f_op_f32(f32(-1f) * -128f));
    var var_1 = !(2147483647i != _wgslsmith_div_i32(countOneBits(u_input.a.x) << (global2.a.x % 32u), _wgslsmith_sub_i32(2147483647i, countOneBits(-2147483647i))));
    let var_2 = func_1();
    var_1 = _wgslsmith_dot_vec2_i32(~(-vec2<i32>(global0.b.a, global0.b.a)), u_input.a) >= firstLeadingBit(-10734i);
    global2 = func_1();
    let var_3 = vec3<i32>(u_input.a.x, countOneBits(global0.b.a), global0.a);
    let var_4 = Struct_3(1i, Struct_1(~(-2147483647i), vec3<bool>(true, var_2.b, !any(global0.c.yyw))), vec4<bool>(all(global0.c.xyx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))) == var_0.x, var_2.c, func_1().b));
    global0 = var_4;
    let var_5 = !((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1326f) + _wgslsmith_f_op_f32(-var_0.x)) >= var_0.x) && any(!(!vec2<bool>(var_4.b.b.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(u_input.a.x, 52057i, 0i, 2147483647i)), select(select(vec4<i32>(-2424i, 0i, 6590i, var_3.x), vec4<i32>(0i, 459i, global0.b.a, global0.b.a), vec4<bool>(true, true, false, var_2.c)), vec4<i32>(1i, var_4.b.a, u_input.a.x, global0.b.a), var_2.c))), _wgslsmith_f_op_f32(-var_0.x));
}

