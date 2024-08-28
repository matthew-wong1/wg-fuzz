struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: i32) -> u32 {
    var var_0 = !(!(!(!(!vec2<bool>(false, arg_0.b)))));
    var_0 = !select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(var_0.x, true), vec2<bool>(arg_0.b, var_0.x)), reverseBits(arg_0.c) != arg_0.c);
    var_0 = vec2<bool>(true, !arg_0.b);
    let var_1 = arg_2.x;
    var_0 = select(select(select(!vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(any(vec2<bool>(arg_0.b, var_0.x)), any(vec4<bool>(var_0.x, var_0.x, true, var_0.x))), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(arg_0.b, var_0.x), vec2<bool>(false, arg_0.b))), select(select(!vec2<bool>(var_0.x, true), vec2<bool>(false, false), vec2<bool>(false, arg_0.b)), vec2<bool>(any(vec4<bool>(arg_0.b, false, var_0.x, arg_0.b)), var_0.x), vec2<bool>(any(vec3<bool>(false, false, true)), true)), vec2<bool>(all(vec2<bool>(false, false)), true)), select(vec2<bool>(var_0.x, false), vec2<bool>(true, true), false), !select(!(!vec2<bool>(true, arg_0.b)), vec2<bool>(false && arg_0.b, true), all(vec4<bool>(var_0.x, true, true, false)) || true));
    return ~u_input.a.x | 25986u;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(1000f, true, Struct_1(firstTrailingBit(~_wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(-37350i, u_input.b.x, u_input.d.x, u_input.b.x), u_input.d)), true, 33593u), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2020f * -1010f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(359f, 731f, false)) + _wgslsmith_f_op_f32(f32(-1f) * -2938f))), vec2<f32>(1f, 1f)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.d.x)), var_0.a);
    let var_2 = var_0.c;
    var_0 = Struct_2(var_1, false, Struct_1(~var_2.a, !var_2.b, ~func_3(var_0.c, Struct_3(var_0.c.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(425f, var_0.a, -267f) * vec3<f32>(var_0.d.x, var_0.d.x, var_1)), _wgslsmith_div_i32(-2147483647i, 15298i))), var_0.d);
    let var_3 = var_2.b;
    return Struct_2(1000f, false, var_0.c, var_0.d);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-arg_1.a), func_2().a < arg_1.d.x));
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = u_input.a;
    var var_1 = i32(-1i) * -13751i;
    var_1 = arg_2.c.a.x;
    let var_2 = arg_0.a;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(round(arg_0.d.x)), false, arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_2.d.x)), -324f), func_2().d, false))));
    return vec2<bool>(arg_1.b, func_2().a == 688f);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec3<i32>) -> bool {
    let var_0 = !func_5(func_4(~4294967295u < select(u_input.c.x, 16588u, arg_2.c.b), func_2()), arg_2.c, func_2());
    var var_1 = vec3<bool>(any(func_5(func_4(arg_1.x < 17846i, Struct_2(arg_0.x, false, Struct_1(arg_2.c.a, arg_2.c.b, 69954u), vec2<f32>(-362f, arg_0.x))), arg_2.c, Struct_2(_wgslsmith_f_op_f32(exp2(arg_0.x)), true, arg_2.c, arg_0.xy))), true, !var_0.x);
    var_1 = !(!vec3<bool>(false, arg_2.c.b || (true & arg_2.c.b), !any(vec3<bool>(false, true, false))));
    var var_2 = !var_0;
    var var_3 = func_2().c;
    return _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-func_2().a), func_4(func_4(true & var_1.x, Struct_2(-257f, arg_2.c.b, Struct_1(var_3.a, arg_2.c.b, 0u), arg_2.a.yw)).c.b, Struct_2(_wgslsmith_f_op_f32(arg_2.a.x + -1055f), func_5(Struct_2(1000f, var_0.x, arg_2.c, vec2<f32>(arg_2.a.x, -1070f)), Struct_1(vec4<i32>(22849i, arg_1.x, u_input.d.x, arg_2.c.a.x), true, var_3.c), Struct_2(1917f, true, arg_2.c, arg_0.yz)).x, arg_2.c, _wgslsmith_f_op_vec2_f32(step(arg_0.xy, vec2<f32>(arg_2.a.x, 1000f))))).c.b)) >= _wgslsmith_f_op_f32(-396f * arg_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), !select(vec4<bool>(func_1(vec3<f32>(-405f, -762f, 1245f), u_input.d.wz, Struct_4(vec4<f32>(2105f, 738f, 1000f, -1221f), vec2<u32>(49865u, u_input.a.x), Struct_1(u_input.d, false, u_input.c.x)), vec3<i32>(-1i, 2444i, u_input.d.x)), true, true, true), vec4<bool>(all(vec4<bool>(true, true, false, false)), true, true, -52725i > u_input.b.x), vec4<bool>(true, true, true, true)), false);
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(679f + _wgslsmith_f_op_f32(f32(-1f) * -219f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -291f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-838f)), _wgslsmith_f_op_f32(f32(-1f) * -1241f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1161f, -951f))))) - vec4<f32>(func_2().a, -181f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1459f - -600f) - _wgslsmith_f_op_f32(450f + 544f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -318f))))), abs(vec2<u32>(_wgslsmith_div_u32(~u_input.a.x, 0u), _wgslsmith_sub_u32(~u_input.a.x, 40265u))), Struct_1(vec4<i32>(~_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), -1i, _wgslsmith_mod_i32(u_input.d.x, u_input.b.x) | _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, -26330i, 0i, u_input.b.x)), 34618i), min(select(u_input.d.x, u_input.d.x, false), u_input.b.x) < ~60228i, ~(1u | u_input.c.x)));
    var var_2 = func_2();
    var var_3 = var_1.a.www;
    var_0 = !select(select(vec4<bool>(func_2().c.b, func_5(Struct_2(var_3.x, false, Struct_1(var_2.c.a, true, 0u), vec2<f32>(-460f, var_1.a.x)), Struct_1(vec4<i32>(-2147483647i, 2147483647i, var_2.c.a.x, u_input.b.x), true, 90255u), Struct_2(-1061f, true, Struct_1(u_input.d, false, 1u), vec2<f32>(var_3.x, -904f))).x, var_2.b, func_2().c.b), vec4<bool>(true, var_1.c.c < 2815u, var_0.x & true, !var_2.b), !any(vec3<bool>(false, var_0.x, true))), !vec4<bool>(all(vec3<bool>(var_0.x, var_1.c.b, false)), var_2.c.c != 19572u, false, func_4(var_2.b, Struct_2(-438f, var_2.b, var_2.c, var_2.d)).b), !vec4<bool>(true, true, var_1.a.x <= var_3.x, var_2.b));
    var var_4 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x);
}

