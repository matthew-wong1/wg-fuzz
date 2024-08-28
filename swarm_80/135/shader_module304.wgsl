struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
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

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-1430f, -748f, 546f), 622f, Struct_1(vec4<i32>(-72219i, 35116i, -1i, 22078i)), Struct_1(vec4<i32>(68314i, -1i, -62835i, -20795i)), false);

var<private> global1: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(1877f, -232f), vec2<f32>(-167f, 309f), vec2<f32>(-1287f, -367f), vec2<f32>(280f, -1000f), vec2<f32>(-1441f, -546f), vec2<f32>(793f, -712f));

var<private> global2: Struct_1 = Struct_1(vec4<i32>(29357i, -5378i, 2147483647i, -39539i));

var<private> global3: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: u32) -> f32 {
    global1 = array<vec2<f32>, 6>();
    global2 = global3.d;
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.b)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(-715f + arg_0.a.x)) + global0.a.zz);
    var_0 = _wgslsmith_div_vec2_f32(global3.a.zx, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(global1[_wgslsmith_index_u32(~countOneBits(arg_3), 6u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-137f, 299f) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1026f, -951f)))))))));
    var var_1 = global0.d;
    return global0.b;
}

fn func_2() -> bool {
    let var_0 = global0.c;
    global3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a * global0.a) * _wgslsmith_f_op_vec3_f32(sign(global0.a))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, 308f, global0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(ceil(global0.a)), global0.a.x, global0.d, global0.c, false), u_input.c.x, 1778f, ~1u))), Struct_1(countOneBits(vec4<i32>(var_0.a.x, global2.a.x ^ global0.d.a.x, firstTrailingBit(-2147483647i), ~32182i))), Struct_1(~abs(global3.c.a)), true);
    let var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(~max(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.d.x, 4294967295u)), _wgslsmith_add_vec2_u32(vec2<u32>(9898u, 11882u), u_input.d.xy >> (vec2<u32>(0u, 53331u) % vec2<u32>(32u)))), abs(countOneBits(9036u)), 4294967295u | u_input.a, 34775u) & u_input.d;
    global1 = array<vec2<f32>, 6>();
    global1 = array<vec2<f32>, 6>();
    return any(select(select(select(vec4<bool>(false, global3.e, global0.e, true), vec4<bool>(global3.e, false, false, true), global0.e), select(select(vec4<bool>(global3.e, global0.e, global0.e, true), vec4<bool>(global0.e, false, global3.e, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(global3.e, false, true, true), vec4<bool>(false, global0.e, global3.e, true), false), true), vec4<bool>(!global0.e, any(vec2<bool>(true, false)), true, !global0.e)), select(select(vec4<bool>(true, true, global3.e, global3.e), vec4<bool>(true, false, global0.e, global3.e), global3.e), !(!vec4<bool>(global0.e, global0.e, global0.e, global0.e)), true), select(vec4<bool>(!global0.e, true, -301f >= global0.a.x, false), vec4<bool>(all(vec2<bool>(false, global3.e)), any(vec4<bool>(global3.e, global0.e, true, global0.e)), select(false, global3.e, global0.e), false), vec4<bool>(true, !global0.e, true, global3.e || global0.e))));
}

fn func_1() -> Struct_2 {
    var var_0 = select(vec2<bool>(global3.e | func_2(), all(select(vec3<bool>(global0.e, global3.e, global0.e), vec3<bool>(true, true, false), true)) | true), vec2<bool>(false, all(select(select(vec4<bool>(global0.e, false, false, global3.e), vec4<bool>(true, global3.e, global3.e, false), vec4<bool>(false, global0.e, global3.e, global3.e)), vec4<bool>(global0.e, false, global0.e, global3.e), select(vec4<bool>(global3.e, global0.e, global0.e, false), vec4<bool>(true, global3.e, global3.e, true), false)))), select(vec2<bool>(!global3.e, true), select(vec2<bool>(u_input.b.x >= global0.d.a.x, true), select(vec2<bool>(false, false), select(vec2<bool>(global0.e, false), vec2<bool>(global3.e, global0.e), global0.e), vec2<bool>(global0.e, global3.e)), global3.e), select(select(vec2<bool>(true, true), vec2<bool>(global0.e, global0.e), all(vec3<bool>(true, false, global0.e))), select(vec2<bool>(false, global3.e), select(vec2<bool>(global3.e, false), vec2<bool>(global3.e, global3.e), global3.e), select(vec2<bool>(global3.e, false), vec2<bool>(global0.e, true), true)), select(vec2<bool>(global0.e, global0.e), vec2<bool>(false, false), false))));
    var var_1 = countOneBits(-3229i >> (abs(_wgslsmith_sub_u32(37526u, u_input.a) & firstTrailingBit(1u)) % 32u));
    var var_2 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(global0.c.a.x, -93367i), i32(-1i) * -27591i, -1i, global3.c.a.x << (0u % 32u)) ^ vec4<i32>(u_input.b.x, -15450i << (1u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0.d.a.x), u_input.b.xx), -u_input.c.x), abs(vec4<i32>(1i, global3.c.a.x, global3.d.a.x, -74230i))));
    let var_3 = !any(vec3<bool>(true, true, 4294967295u > max(30341u, u_input.a)));
    var var_4 = !(!select(!select(vec3<bool>(var_0.x, global3.e, var_3), vec3<bool>(var_3, false, global0.e), vec3<bool>(true, false, false)), select(!vec3<bool>(global3.e, var_3, true), !vec3<bool>(var_3, global0.e, true), vec3<bool>(global0.e, false, true)), true == !global3.e));
    return Struct_2(global3.a, -684f, global0.d, global0.d, !any(!var_4.zx));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 6>();
    global0 = func_1();
    global0 = func_1();
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(global3.b + global3.a.x), u_input.b.x != _wgslsmith_mod_i32(u_input.b.x, 1i))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2136f + -916f) - _wgslsmith_f_op_f32(f32(-1f) * -253f)) + _wgslsmith_f_op_f32(func_1().b - _wgslsmith_f_op_f32(round(-684f))))), func_1().d, Struct_1(vec4<i32>(53757i, _wgslsmith_add_i32(_wgslsmith_sub_i32(3051i, 13730i), u_input.b.x), 17934i, 2147483647i)), global3.e | true);
    let var_0 = u_input.a;
    var var_1 = !(!vec4<bool>(true, !(!global3.e), (-546f <= global0.b) & any(vec4<bool>(true, true, global3.e, global3.e)), global3.e));
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(var_2.a, global0.a.x, Struct_1(global0.d.a), Struct_1(vec4<i32>(global3.d.a.x, 0i, 66916i, u_input.c.x)), var_2.e), -1i, var_2.b, 0u)) - _wgslsmith_f_op_f32(339f * var_2.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x - var_2.a.x) + -286f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1479f)) * -392f), _wgslsmith_f_op_f32(-var_2.b), true))));
}

