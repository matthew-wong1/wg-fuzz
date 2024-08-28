struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec2<bool>,
    e: f32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: f32 = 669f;

var<private> global2: vec4<f32> = vec4<f32>(-270f, -304f, 440f, -309f);

var<private> global3: vec3<f32> = vec3<f32>(-633f, -1346f, 860f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = _wgslsmith_mod_vec2_u32(select(~u_input.d.yy, vec2<u32>(597u, abs(38085u)) << (vec2<u32>(_wgslsmith_div_u32(u_input.b.x, 4324u), u_input.b.x) % vec2<u32>(32u)), select(select(vec2<bool>(arg_0, true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), vec2<bool>(false, arg_0)), vec2<bool>(true, arg_0)), vec2<bool>(all(vec2<bool>(arg_0, true)), true), vec2<bool>(true, !arg_0))), u_input.b.yw);
    var var_1 = abs(~(~16340i) & (u_input.e.x ^ u_input.a)) ^ _wgslsmith_mult_i32(u_input.e.x, -_wgslsmith_mod_i32(0i | u_input.c.x, 1i));
    var_1 = 2368i;
    var var_2 = vec2<bool>(all(vec3<bool>((0i << (u_input.d.x % 32u)) < firstTrailingBit(1i), any(vec4<bool>(arg_0, false, arg_0, false)), false)), all(!(!select(vec3<bool>(true, true, arg_0), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))));
    var var_3 = Struct_4(u_input.e.yz, !(!vec2<bool>(false, all(vec3<bool>(arg_0, false, false)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -228f) + global3.x) * _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(1348f - global3.x)))))), abs(u_input.b.yz));
    return var_3.b.x;
}

fn func_2() -> vec2<f32> {
    let var_0 = select(vec4<bool>(true, true, true, u_input.d.x == u_input.d.x), select(!vec4<bool>(all(vec2<bool>(true, false)), true, true, 753f == global3.x), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true), true && !all(vec4<bool>(false, false, false, true))), !all(vec3<bool>(true, true, true)));
    let var_1 = Struct_5(-u_input.c.xzy, Struct_1(vec4<bool>(true, true, func_3(true), false), select(var_0, select(var_0, select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true), var_0.x), true), !all(var_0.zzw))), global2.x);
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-733f)))))));
    let var_3 = vec4<u32>(~(~u_input.b.x), _wgslsmith_div_u32(u_input.d.x & _wgslsmith_mult_u32(0u, u_input.d.x), _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.b.x, 10307u, 0u) | u_input.b.zwz, ~u_input.d.yxw), select(u_input.b.zxx, ~vec3<u32>(u_input.b.x, 13941u, 36699u), var_1.b.a.zwx))), u_input.b.x, u_input.d.x);
    let var_4 = Struct_5(var_1.a, Struct_1(var_0, vec4<bool>((var_3.x << (27590u % 32u)) < min(var_3.x, u_input.d.x), ~u_input.b.x == 4294967295u, var_0.x, var_1.b.b.x)), _wgslsmith_f_op_f32(round(global2.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global3.zz, _wgslsmith_f_op_vec2_f32(min(global3.xy, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global3.zz - global2.wx))))), !vec2<bool>(!var_4.b.b.x, !var_0.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>) -> Struct_5 {
    global2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), 2100f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), false)), global3.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2()).x), 2082f, _wgslsmith_f_op_vec2_f32(func_2()).x, global2.x)));
    var var_0 = firstLeadingBit(u_input.e.x);
    var var_1 = Struct_4(u_input.c.yz, select(vec2<bool>(~62830u >= (98396u | u_input.b.x), _wgslsmith_add_u32(1u, u_input.d.x) > 37123u), vec2<bool>(true, all(vec3<bool>(true, false, true))), u_input.d.x < u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-416f, arg_0.x, false)))), _wgslsmith_f_op_f32(sign(arg_1.x)))), u_input.b.wx);
    let var_2 = false;
    var var_3 = _wgslsmith_clamp_i32(i32(-1i) * -55178i, var_1.a.x, u_input.e.x);
    return Struct_5(vec3<i32>(-1i, 0i, ~1i), Struct_1(vec4<bool>(true, true, _wgslsmith_f_op_f32(round(var_1.c)) > _wgslsmith_f_op_f32(-global3.x), false), !vec4<bool>(true, true, u_input.b.x < var_1.d.x, u_input.e.x > u_input.e.x)), _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2273f + _wgslsmith_f_op_f32(sign(1000f))), var_1.c, false))));
}

fn func_1() -> Struct_1 {
    let var_0 = 4294967295u;
    let var_1 = func_4(global2.ywx, _wgslsmith_f_op_vec2_f32(func_2()));
    let var_2 = Struct_4(vec2<i32>(u_input.c.x, 2147483647i), !vec2<bool>(func_4(global2.wwz, global3.yz).b.a.x, true), 1941f, ~vec2<u32>(u_input.d.x, _wgslsmith_sub_u32(var_0, 603u)));
    var var_3 = -2147483647i;
    var var_4 = var_1.a >> (countOneBits(u_input.d.zwx) % vec3<u32>(32u));
    return Struct_1(select(func_4(global2.zxx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, 1207f)) * global2.yx)).b.b, var_1.b.a, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, var_2.c, 1949f)), _wgslsmith_f_op_vec2_f32(-global2.yx)).b.b), !select(vec4<bool>(var_2.b.x, global2.x != -1006f, select(false, true, var_1.b.b.x), all(var_1.b.a.xz)), var_1.b.b, true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.x, -260f, global3.x, global3.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(687f, -744f, -747f, -841f) + vec4<f32>(global3.x, 728f, -1508f, global3.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 227f, 992f, global2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global3.x, global3.x, global3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global2.x, -2077f, global2.x) + vec4<f32>(global3.x, -1809f, 492f, global2.x)))), vec4<bool>(true, true, true, all(vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, global2.x, global3.x, global3.x))))))), _wgslsmith_f_op_f32(ceil(2132f)) > _wgslsmith_f_op_f32(408f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -479f) * _wgslsmith_f_op_f32(-693f - 829f)))));
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-201f - _wgslsmith_f_op_f32(-global3.x))))));
    var var_1 = func_1();
    let var_2 = 1443f;
    let var_3 = u_input.b;
    let var_4 = Struct_1(!var_1.a, var_1.a);
    var var_5 = vec2<f32>(_wgslsmith_f_op_f32(-919f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -559f), -858f, all(select(vec2<bool>(false, false), vec2<bool>(false, var_1.b.x), var_4.b.zy))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-248f, -301f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zyx);
}

