struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: vec2<u32>,
    d: Struct_2,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> vec4<bool> {
    global0 = max(4294967295u, u_input.c.x);
    global0 = ~u_input.a;
    return vec4<bool>(all(vec3<bool>(true, true, true)), !all(vec3<bool>(true, true, true)), any(select(vec3<bool>(all(vec4<bool>(false, true, true, false)), any(vec2<bool>(true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, false, u_input.d.x == 2147483647i))), true);
}

fn func_2() -> Struct_1 {
    var var_0 = 1f;
    var var_1 = Struct_4(vec4<f32>(-582f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-514f * 128f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -193f) - _wgslsmith_f_op_f32(f32(-1f) * -741f))), i32(-1i) * -2147483647i);
    var var_2 = firstLeadingBit(u_input.b.x);
    var_2 = 15032u;
    var_0 = -394f;
    return Struct_1(vec2<bool>(false, 2147483647i >= ((u_input.d.x | u_input.d.x) << (reverseBits(15634u) % 32u))), ~u_input.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x) * _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x)), var_1.a.x)), var_1.a, vec3<i32>(var_1.b, 3795i, -67849i));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3) -> i32 {
    global0 = ~_wgslsmith_mult_u32(0u, 68194u);
    global0 = 44373u;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -497f))));
    var var_1 = Struct_2(1i, Struct_1(!func_2().a, 53750u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2398f, 539f) - _wgslsmith_f_op_f32(1201f - 739f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2187f, -728f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1037f, 182f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -696f) - _wgslsmith_f_op_f32(-1025f * -180f)), 541f, -1042f), vec3<i32>(0i, countOneBits(arg_0.x), u_input.d.x)));
    var_1 = Struct_2(2147483647i, Struct_1(vec2<bool>(false, !var_1.b.a.x | !arg_1.a), u_input.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.c) + _wgslsmith_f_op_vec2_f32(-var_1.b.c)), var_1.b.d, ~(-vec3<i32>(-32909i, var_1.b.e.x, -2147483647i)) ^ arg_0.xyw));
    return _wgslsmith_mult_i32(abs(~0i), firstLeadingBit(select(var_1.a, 1i, var_1.b.a.x))) << ((func_2().b | _wgslsmith_div_u32(var_1.b.b, max(u_input.b.x, _wgslsmith_add_u32(u_input.a, 2022u)))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_2(46393i, func_2());
    var var_2 = -_wgslsmith_clamp_i32(func_3(vec4<i32>(u_input.d.x, -1i, _wgslsmith_mult_i32(11306i, var_1.a), firstTrailingBit(var_1.b.e.x)), Struct_3(true, vec2<i32>(u_input.d.x, -11354i), u_input.d.x >> (var_1.b.b % 32u))), _wgslsmith_dot_vec2_i32(var_1.b.e.xz, max(vec2<i32>(-10540i, var_1.a), vec2<i32>(u_input.d.x, u_input.d.x))), -u_input.d.x);
    let var_3 = vec4<bool>(true, var_1.b.a.x, var_0.x, !select(!var_1.b.a.x, ~var_1.b.b > ~var_1.b.b, var_1.b.a.x));
    var_0 = vec4<bool>(!(!any(vec2<bool>(false, var_0.x))), !(var_0.x & !var_1.b.a.x), all(vec4<bool>(true & func_1().x, any(!var_3.yyw), true, !var_0.x)), !all(!vec3<bool>(var_0.x, false, false)));
    var var_4 = firstTrailingBit(var_1.b.e.x);
    global0 = var_1.b.b;
    var var_5 = var_1.b.e.xy;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(504f, _wgslsmith_f_op_f32(ceil(var_1.b.d.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(187f, var_1.b.c.x)))))), reverseBits(-2147483647i & u_input.d.x), var_1.b.c.x);
}

