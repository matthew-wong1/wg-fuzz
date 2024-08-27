struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = 4294967295u;
    let var_1 = true;
    let var_2 = Struct_1(u_input.b.zz << (abs(_wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.d), ~u_input.e.zx)) % vec2<u32>(32u)));
    let var_3 = Struct_3(_wgslsmith_div_f32(855f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -654f)), 1020f))), var_2, select(vec2<bool>(var_1, true), select(select(!vec2<bool>(var_1, arg_0), !vec2<bool>(var_1, true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(var_1, arg_0), true)), vec2<bool>(true, true), vec2<bool>(true, true)), true), var_2);
    var_0 = u_input.d.x;
    return _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_3(-289f, Struct_1(vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), u_input.b.x)), vec2<bool>(true, true), Struct_1(~(~_wgslsmith_add_vec2_i32(u_input.b.zx, u_input.b.zy))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(932f, _wgslsmith_f_op_f32(floor(-755f))))), var_0.b, vec2<bool>(~select(-1i, -17540i, true) >= ~select(var_0.d.a.x, 2147483647i, true), false), Struct_1((var_0.d.a ^ var_0.b.a) & var_0.d.a));
    var var_1 = _wgslsmith_div_u32(~max(59447u, 39267u), _wgslsmith_mod_u32(~(~1u << (u_input.d.x % 32u)), u_input.a));
    let var_2 = _wgslsmith_f_op_f32(func_3(true));
    var var_3 = var_0.c.x;
    return Struct_3(var_0.a, var_0.b, select(vec2<bool>(any(vec2<bool>(true, true)), !var_0.c.x), var_0.c, var_0.c.x), Struct_1(var_0.b.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = reverseBits(1u);
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 428f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -709f), _wgslsmith_f_op_f32(exp2(arg_0.a))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-293f, -442f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(333f, -141f)), _wgslsmith_f_op_f32(arg_0.a * func_2(vec2<f32>(349f, 295f)).a)))));
    let var_2 = ~vec2<u32>(min(_wgslsmith_div_u32(~96492u, max(u_input.a, u_input.c)), 1u), ~u_input.a);
    var var_3 = arg_0.c.x;
    var_3 = false;
    return func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(var_1, _wgslsmith_div_vec2_f32(var_1, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(218f, var_1.x), var_1)))))))).c;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -198f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(131f)) * _wgslsmith_f_op_f32(f32(-1f) * -666f)))))));
    return Struct_3(1000f, Struct_1(vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(3i, 1i, u_input.b.x), u_input.b), _wgslsmith_mod_i32(39216i & u_input.b.x, _wgslsmith_div_i32(-53206i, -1i)))), select(vec2<bool>(true, u_input.d.x >= firstLeadingBit(89236u)), vec2<bool>(true, true), !func_4(func_2(vec2<f32>(839f, -410f)), Struct_1(vec2<i32>(-1i, u_input.b.x)))), Struct_1(u_input.b.yx << ((max(u_input.e.yy, vec2<u32>(1u, u_input.e.x)) ^ ~vec2<u32>(u_input.d.x, u_input.a)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(-819f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -267f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-167f - -905f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-546f, -253f))))))));
    var var_1 = -588f;
    var var_2 = ~vec2<u32>(u_input.c, 0u);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -620f);
    let var_5 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, _wgslsmith_f_op_f32(-var_3.x), 511f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(269f, var_0, var_3.x)))))))));
    let var_6 = func_1();
    let var_7 = select(vec3<bool>(var_6.c.x, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_5.xz, vec2<f32>(var_3.x, -119f))))).c.x, u_input.a != 0u), vec3<bool>(var_6.c.x, false, true), !vec3<bool>(!(!var_6.c.x), !var_6.c.x, true));
    let var_8 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(func_2(var_5.zy).a, 2168f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-986f + -1446f)))), -655f), func_2(var_5.yy).b, !vec4<bool>(!(!var_7.x), true, true, !(false | var_7.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~vec2<i32>(abs(u_input.b.x), _wgslsmith_sub_i32(1188i, var_6.b.a.x)), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(38417u, var_2.x) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(76608u, var_2.x, var_2.x, 7159u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.d.x, var_2.x, 1u), vec4<u32>(var_2.x, 0u, u_input.d.x, u_input.a))) % 32u), countOneBits(u_input.d.x)), _wgslsmith_sub_vec3_i32(~u_input.b, vec3<i32>(func_1().b.a.x >> (~u_input.c % 32u), 34824i, _wgslsmith_mod_i32(1i, -1901i))), var_2.x);
}

