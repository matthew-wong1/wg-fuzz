struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: Struct_5 = Struct_5(Struct_1(2312f, vec2<i32>(2147483647i, -2299i)), 4294967295u, vec2<u32>(0u, 118362u), vec2<bool>(true, true));

var<private> global2: Struct_4 = Struct_4(i32(-2147483648));

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: f32) -> f32 {
    global0 = array<vec2<bool>, 31>();
    global1 = Struct_5(Struct_1(316f, -vec2<i32>(1i, global1.a.b.x)), _wgslsmith_mult_u32(~global1.c.x, u_input.a), vec2<u32>(arg_0.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b, global1.c.x, arg_0.x, global1.b), u_input.b), reverseBits(8682u))) << (global1.c % vec2<u32>(32u)), vec2<bool>(!((global1.a.a >= arg_2) != (global2.a == -65225i)), true));
    global0 = array<vec2<bool>, 31>();
    var var_0 = vec3<bool>(false, false, true);
    global0 = array<vec2<bool>, 31>();
    return _wgslsmith_f_op_f32(step(-395f, arg_1));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.a + _wgslsmith_f_op_f32(func_3(u_input.b.ywy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a + 440f)), _wgslsmith_div_f32(global1.a.a, 226f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a.a))));
    let var_1 = vec4<bool>(false, global1.d.x, all(vec3<bool>(global1.d.x, any(select(vec3<bool>(false, global1.d.x, false), vec3<bool>(global1.d.x, global1.d.x, global1.d.x), vec3<bool>(global1.d.x, global1.d.x, global1.d.x))), true)), select(!global1.d.x, all(select(global0[_wgslsmith_index_u32(0u, 31u)], vec2<bool>(true, true), vec2<bool>(global1.d.x, global1.d.x))), !(4294967295u != global1.b)) && true);
    let var_2 = Struct_4(global2.a);
    let var_3 = any(select(global1.d, select(vec2<bool>(!global1.d.x, global1.d.x), global1.d, any(vec3<bool>(global1.d.x, var_1.x, global1.d.x))), !global1.d.x));
    var var_4 = Struct_2(!(!select(var_1, !var_1, any(vec3<bool>(var_3, var_1.x, var_3)))));
    return all(vec3<bool>(global1.d.x, u_input.a != firstLeadingBit(_wgslsmith_mult_u32(2216u, global1.c.x)), false));
}

fn func_4(arg_0: Struct_3) -> Struct_5 {
    global0 = array<vec2<bool>, 31>();
    var var_0 = Struct_1(-1121f, _wgslsmith_add_vec2_i32(global1.a.b, ~vec2<i32>(global1.a.b.x, 15363i) | vec2<i32>(global2.a, select(2147483647i, -62685i, true))));
    var var_1 = Struct_5(global1.a, ~(~global1.c.x & _wgslsmith_mult_u32(~u_input.a, _wgslsmith_mod_u32(3021u, u_input.a))), ~vec2<u32>(~u_input.a, global1.b) << (u_input.b.zz % vec2<u32>(32u)), arg_0.a);
    var var_2 = Struct_5(var_1.a, 39287u, vec2<u32>(var_1.b, 4294967295u), !(!vec2<bool>(arg_0.d.x > global2.a, true)));
    var_1 = Struct_5(var_1.a, u_input.a, vec2<u32>(global1.b, 0u), !(!global0[_wgslsmith_index_u32(var_1.c.x, 31u)]));
    return Struct_5(var_1.a, min(0u, ~(u_input.b.x << (1u % 32u))), ~(~var_1.c), var_2.d);
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    var var_0 = ~select(vec3<u32>(u_input.b.x, u_input.b.x, ~(u_input.a << (u_input.b.x % 32u))), _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(4294967295u, 12867u, global1.c.x)), vec3<u32>(u_input.a >> (1u % 32u), _wgslsmith_mult_u32(global1.c.x, 0u), u_input.b.x)), arg_0.a.zxz);
    global3 = abs(var_0.x);
    let var_1 = func_4(Struct_3(arg_0.a.zz, any(vec2<bool>(true, func_2(vec4<i32>(-1i, global1.a.b.x, 2147483647i, global2.a), vec3<i32>(-10775i, 27054i, global2.a)))), Struct_2(select(select(arg_0.a, vec4<bool>(arg_0.a.x, arg_0.a.x, global1.d.x, arg_0.a.x), arg_0.a.x), select(arg_0.a, arg_0.a, vec4<bool>(false, false, arg_0.a.x, arg_0.a.x)), vec4<bool>(true, true, arg_0.a.x, global1.d.x))), u_input.c.zx));
    let var_2 = Struct_3(select(vec2<bool>(global1.d.x, var_1.d.x), select(arg_0.a.wx, arg_0.a.wy, select(select(vec2<bool>(global1.d.x, true), vec2<bool>(global1.d.x, global1.d.x), vec2<bool>(true, var_1.d.x)), select(global1.d, global0[_wgslsmith_index_u32(u_input.b.x, 31u)], arg_0.a.wx), var_1.d.x)), global1.d.x), all(vec2<bool>((true && arg_0.a.x) && arg_0.a.x, true & any(arg_0.a))), Struct_2(vec4<bool>(false, _wgslsmith_f_op_f32(-global1.a.a) >= _wgslsmith_f_op_f32(sign(var_1.a.a)), !(global1.d.x && global1.d.x), global1.d.x)), -var_1.a.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a, global1.a.a)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global1.a.a, var_1.a.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.a)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.a, var_1.a.a)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(412f, var_1.a.a)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(242f, -773f)))))))));
    return var_2;
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_dot_vec2_i32(arg_0.d, abs(abs(u_input.c.yx)) & select(u_input.c.xx, vec2<i32>(u_input.c.x, 33525i), arg_0.c.a.x)));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(-118f, 2509f));
    var var_1 = Struct_5(func_5(func_1(Struct_2(!vec4<bool>(false, global1.d.x, global1.d.x, false))), global1.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -162f), -1531f))), 21759u, vec2<u32>(u_input.b.x >> (_wgslsmith_dot_vec3_u32(~u_input.b.ywz, u_input.b.zxw) % 32u), u_input.a ^ u_input.a), select(vec2<bool>(all(select(vec3<bool>(false, true, global1.d.x), vec3<bool>(global1.d.x, true, global1.d.x), global1.d.x)), global1.d.x), func_4(func_1(Struct_2(vec4<bool>(global1.d.x, global1.d.x, global1.d.x, false)))).d, select(func_1(Struct_2(vec4<bool>(global1.d.x, false, true, global1.d.x))).a, global1.d, vec2<bool>(any(vec3<bool>(false, global1.d.x, true)), !global1.d.x))));
    var var_2 = -31609i;
    let var_3 = Struct_4(-4041i >> (1u % 32u));
    var var_4 = _wgslsmith_add_i32(~2188i ^ var_3.a, ~(-_wgslsmith_mult_i32(reverseBits(59552i), var_3.a)));
    let var_5 = firstTrailingBit(u_input.c);
    var var_6 = global2.a;
    var var_7 = vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, var_3.a) & global1.a.b, func_4(Struct_3(global0[_wgslsmith_index_u32(var_1.b, 31u)], global1.d.x, Struct_2(vec4<bool>(false, global1.d.x, var_1.d.x, true)), vec2<i32>(-716i, 13307i))).a.b), -vec2<i32>(u_input.c.x, u_input.c.x)), min(_wgslsmith_add_i32(-29822i, abs(global1.a.b.x)), -1i)) & -firstLeadingBit(~var_1.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(firstLeadingBit(-vec4<i32>(var_5.x, var_3.a, 1i, -38942i))), _wgslsmith_f_op_f32(-var_1.a.a), vec2<u32>(~func_4(Struct_3(vec2<bool>(global1.d.x, global1.d.x), var_1.d.x, Struct_2(vec4<bool>(global1.d.x, var_1.d.x, true, var_1.d.x)), global1.a.b)).c.x, u_input.a), func_5(Struct_3(select(func_4(Struct_3(vec2<bool>(var_1.d.x, false), var_1.d.x, Struct_2(vec4<bool>(global1.d.x, global1.d.x, global1.d.x, false)), vec2<i32>(-8841i, global1.a.b.x))).d, vec2<bool>(global1.d.x, true), func_4(Struct_3(global1.d, true, Struct_2(vec4<bool>(var_1.d.x, false, true, true)), global1.a.b)).d), (global1.d.x || var_1.d.x) || true, func_1(func_1(Struct_2(vec4<bool>(var_1.d.x, var_1.d.x, global1.d.x, true))).c).c, reverseBits(min(vec2<i32>(global2.a, var_5.x), vec2<i32>(var_7.x, 2995i)))), 93361u <= _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b, 1u, var_1.c.x, 0u), firstTrailingBit(vec4<u32>(31108u, 12210u, global1.c.x, var_1.c.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.a * -701f), 298f)))).a);
}

