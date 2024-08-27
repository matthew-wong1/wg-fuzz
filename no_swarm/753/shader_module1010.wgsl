struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = vec2<f32>(arg_0.a.x, arg_0.d);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1562f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d + var_0.x) + _wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, -724f), arg_0.a.yz)))))));
    var var_1 = 0i;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(floor(702f)));
    return -1354f;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(vec3<f32>(-398f, 494f, -488f), -1000f, -21715i, -243f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -605f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-894f + -1650f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-358f, 481f, 1650f))), _wgslsmith_div_vec3_f32(vec3<f32>(1287f, -433f, -606f), vec3<f32>(244f, -406f, -554f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -476f) + 1175f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_4(vec3<f32>(904f, -1234f, -118f), -838f, u_input.a, -2297f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1251f - -2608f))))), abs(_wgslsmith_mod_i32(u_input.a, -u_input.a ^ -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -389f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1239f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -219f), _wgslsmith_f_op_f32(f32(-1f) * -361f), any(vec2<bool>(true, false)))))));
    let var_1 = Struct_2(abs(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, -1i), vec4<i32>(29525i, u_input.a, 2147483647i, -2147483647i)), -14443i, u_input.a)), -1i, true, Struct_1(-min(-vec3<i32>(var_0.c, u_input.a, 41922i), -vec3<i32>(var_0.c, 2147483647i, var_0.c)), var_0.b, _wgslsmith_f_op_f32(var_0.b * var_0.b), any(vec2<bool>(any(vec4<bool>(false, true, true, true)), false))));
    let var_2 = _wgslsmith_f_op_f32(round(var_0.a.x));
    var var_3 = var_0;
    var_3 = var_0;
    return vec3<bool>(false, any(vec2<bool>(false, any(select(vec3<bool>(var_1.c, var_1.d.d, var_1.d.d), vec3<bool>(var_1.d.d, var_1.d.d, true), var_1.d.d)))), _wgslsmith_f_op_f32(-var_1.d.c) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * 118f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-935f, var_0.a.x)) + _wgslsmith_f_op_f32(-var_1.d.b))));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_3(!(!func_2()), Struct_2(min(reverseBits(vec3<i32>(-1i, 2147483647i, u_input.a)) & vec3<i32>(u_input.a, u_input.a, 20191i), -vec3<i32>(24336i, -35615i, u_input.a)), u_input.a, all(vec4<bool>(false, true, true, true)), Struct_1(_wgslsmith_add_vec3_i32(-vec3<i32>(251i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(u_input.a, u_input.a, -8580i)), _wgslsmith_div_f32(_wgslsmith_div_f32(-671f, 215f), _wgslsmith_f_op_f32(round(143f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-418f)) - _wgslsmith_f_op_f32(max(-336f, -1457f))), false)), vec4<f32>(1505f, _wgslsmith_f_op_f32(func_3(Struct_4(_wgslsmith_div_vec3_f32(vec3<f32>(-203f, 1593f, 854f), vec3<f32>(1169f, -837f, -1000f)), -331f, -20493i, -830f))), -488f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(139f, 997f)), _wgslsmith_f_op_f32(f32(-1f) * -1391f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(236f, 1171f))))), min(vec4<u32>(max(u_input.b, 4294967295u), _wgslsmith_add_u32(u_input.c.x, u_input.c.x), u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(1u, u_input.b, u_input.b))) << (~vec4<u32>(u_input.b, 45433u, u_input.b, 4294967295u) % vec4<u32>(32u)), abs(~(~vec4<u32>(82444u, 0u, 26527u, u_input.b)))));
    var var_1 = -u_input.a;
    var_1 = -((_wgslsmith_mult_i32(u_input.a ^ -11640i, -196i) ^ var_0.b.b) | 30860i);
    var_1 = var_0.b.a.x;
    var var_2 = vec4<bool>(all(select(var_0.a.zy, vec2<bool>(!var_0.b.d.d, var_0.a.x), true)), true & all(!select(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.b.c), vec4<bool>(false, true, var_0.a.x, false), var_0.b.c)), var_0.b.d.d, all(!var_0.a));
    return Struct_2(var_0.b.d.a, 2147483647i, !(var_0.c.x >= _wgslsmith_f_op_f32(-333f - _wgslsmith_f_op_f32(-var_0.b.d.b))), Struct_1(~firstTrailingBit(reverseBits(vec3<i32>(1i, -2147483647i, -42909i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_4(vec3<f32>(274f, 874f, var_0.b.d.c), var_0.c.x, -41565i, var_0.b.d.b))), _wgslsmith_f_op_f32(var_0.c.x - 698f)) * _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(abs(var_0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.d.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.d.b))), var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = select(select(!select(func_2(), vec3<bool>(true, var_0.d.d, var_0.d.d), any(vec4<bool>(var_0.d.d, false, var_0.d.d, var_0.d.d))), !select(vec3<bool>(true, true, var_0.c), vec3<bool>(var_0.d.d, var_0.d.d, var_0.d.d), vec3<bool>(false, true, true)), !select(!vec3<bool>(var_0.c, true, true), vec3<bool>(var_0.c, var_0.c, var_0.d.d), select(vec3<bool>(true, true, var_0.d.d), vec3<bool>(true, var_0.c, false), false))), func_2(), true);
    var var_2 = reverseBits(vec2<u32>(0u, _wgslsmith_add_u32(~(~4294967295u), 0u)));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -vec4<i32>(0i, 2147483647i, _wgslsmith_div_i32(5472i, u_input.a) | -32801i, var_0.d.a.x), _wgslsmith_dot_vec2_i32(var_0.d.a.xy & select(reverseBits(vec2<i32>(-35521i, u_input.a)), _wgslsmith_add_vec2_i32(var_0.a.xz, vec2<i32>(-1i, u_input.a)), vec2<bool>(true, true)), ~(~vec2<i32>(1i, 38134i))), var_0.b);
}

