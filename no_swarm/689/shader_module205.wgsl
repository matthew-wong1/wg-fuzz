struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_2,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec3<bool> {
    var var_0 = 0i ^ _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, -1i, -1i, -1i), u_input.a), vec4<i32>(-11915i, _wgslsmith_sub_i32(u_input.e.x, u_input.e.x), u_input.d, -2680i)), vec4<i32>(min(-2147483647i, abs(1i)), u_input.e.x, u_input.d, -max(22605i, 44830i)));
    let var_1 = Struct_4(Struct_2(vec2<bool>(all(arg_0.a.zxz), true)), Struct_3(Struct_2(select(global1.yz, arg_0.a.ww, false)), Struct_2(!global1.xz), Struct_2(arg_0.a.zw)), Struct_2(vec2<bool>(arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1000f, -879f, global1.x)))))), Struct_3(Struct_2(select(select(global1.zx, vec2<bool>(false, false), vec2<bool>(arg_0.a.x, true)), !arg_0.a.zw, true)), Struct_2(arg_0.a.zx), Struct_2(global1.zy)));
    var_0 = abs(min(29102i, ~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.e, u_input.a.zy), max(u_input.a.x, -2147483647i))));
    return vec3<bool>(arg_0.a.x, !(!any(select(arg_0.a.zwy, arg_0.a.wxy, arg_0.a.wxw))), all(vec4<bool>(true, !var_1.e.a.a.x, global1.x, select(true, var_1.a.a.x, !var_1.e.b.a.x))));
}

fn func_2() -> Struct_3 {
    global1 = !func_3(Struct_1(!vec4<bool>(global1.x, true, false, false)), global1.x);
    let var_0 = ~_wgslsmith_mod_vec4_i32(u_input.a, ~_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -1i, 0i), vec4<i32>(u_input.d, u_input.e.x, 67917i, u_input.e.x), vec4<i32>(2147483647i, 1i, u_input.a.x, 7943i)) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 30686u, 4294967295u, global0.x), u_input.c), _wgslsmith_sub_vec4_u32(u_input.c, u_input.c), max(vec4<u32>(13208u, global0.x, 0u, global0.x), u_input.c)) % vec4<u32>(32u)));
    let var_1 = global0.x;
    global1 = !select(!(!vec3<bool>(global1.x, true, global1.x)), vec3<bool>(1i <= (u_input.e.x >> (28827u % 32u)), !global1.x, global1.x), !vec3<bool>(false, global1.x, global1.x));
    global1 = !(!select(vec3<bool>(!global1.x, global1.x && global1.x, true | global1.x), vec3<bool>(true, u_input.a.x >= var_0.x, true), !global1.x));
    return Struct_3(Struct_2(global1.yx), Struct_2(!vec2<bool>(all(vec3<bool>(true, global1.x, global1.x)), global1.x || true)), Struct_2(global1.zz));
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1000f, -1577f))))))));
    var var_1 = func_2();
    var var_2 = func_2().b;
    global1 = !vec3<bool>(global1.x && (_wgslsmith_f_op_f32(f32(-1f) * -986f) == _wgslsmith_f_op_f32(round(-1150f))), var_1.b.a.x, !var_1.b.a.x);
    var_1 = func_2();
    return Struct_3(func_2().b, Struct_2(func_3(Struct_1(!vec4<bool>(var_1.b.a.x, false, var_2.a.x, global1.x)), any(vec3<bool>(var_1.c.a.x, var_2.a.x, true))).zy), Struct_2(func_2().b.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1525f - 2993f), _wgslsmith_f_op_f32(round(-719f))) + vec2<f32>(_wgslsmith_f_op_f32(select(-180f, 650f, global1.x)), -1081f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-603f, -555f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-349f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1055f, 156f))), 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + -878f)))))));
    let var_2 = ~1i | _wgslsmith_div_i32(_wgslsmith_mult_i32(65915i, u_input.e.x), -(~(u_input.e.x & u_input.e.x)));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(round(-2590f)))), -466f))));
    var var_4 = func_1(global0.xz);
    global0 = max(~u_input.c.yzw, vec3<u32>(global0.x, u_input.b, 28436u));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2087f, _wgslsmith_f_op_f32(trunc(var_1.x)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f * var_3), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, var_3)), _wgslsmith_f_op_f32(-var_3))))), -859f);
    var var_5 = Struct_3(Struct_2(!(!func_1(global0.zy).a.a)), Struct_2(func_3(Struct_1(!vec4<bool>(var_4.b.a.x, true, false, global1.x)), select(var_4.c.a.x, any(vec3<bool>(false, var_4.a.a.x, global1.x)), var_2 >= 2147483647i)).yz), var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<u32>(_wgslsmith_mod_u32(select(u_input.c.x, 1u, false), _wgslsmith_mod_u32(0u, u_input.b)), 48735u, u_input.c.x)), select(~(~global0.x ^ 31292u), _wgslsmith_mod_u32(global0.x, u_input.c.x), all(select(select(vec4<bool>(true, false, true, global1.x), vec4<bool>(true, global1.x, var_4.b.a.x, false), vec4<bool>(var_5.b.a.x, false, false, var_5.b.a.x)), vec4<bool>(true, global1.x, false, var_4.b.a.x), vec4<bool>(true, true, true, true)))));
}

