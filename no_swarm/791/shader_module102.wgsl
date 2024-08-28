struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: vec3<u32> = vec3<u32>(8504u, 176u, 16170u);

var<private> global2: Struct_1;

var<private> global3: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(38003u, 55701u, 1u, 0u), vec4<u32>(1u, 1u, 6933u, 3839u), vec4<u32>(4294967295u, 41684u, 4294967295u, 9246u), vec4<u32>(1u, 4294967295u, 35888u, 1u), vec4<u32>(20845u, 2524u, 1u, 116249u), vec4<u32>(5321u, 20197u, 7785u, 53690u), vec4<u32>(19280u, 0u, 0u, 0u), vec4<u32>(1u, 1u, 19553u, 0u), vec4<u32>(53454u, 1u, 6252u, 0u), vec4<u32>(1u, 0u, 25616u, 36458u), vec4<u32>(1u, 4294967295u, 4294967295u, 25837u), vec4<u32>(1u, 1u, 1944u, 5949u), vec4<u32>(1283u, 4294967295u, 11019u, 61206u), vec4<u32>(0u, 1u, 57719u, 4294967295u), vec4<u32>(19212u, 0u, 12641u, 1u), vec4<u32>(1u, 0u, 17477u, 18106u), vec4<u32>(1u, 7984u, 4294967295u, 64972u), vec4<u32>(8579u, 4294967295u, 1u, 1u), vec4<u32>(1u, 4045u, 0u, 37124u), vec4<u32>(7109u, 57824u, 21650u, 75133u));

var<private> global4: array<i32, 14> = array<i32, 14>(-5097i, -11423i, 2147483647i, 13465i, -1i, 2044i, 2147483647i, 2147483647i, -2890i, 2147483647i, -1i, 58721i, 1i, -1909i);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    global1 = _wgslsmith_add_vec3_u32(~(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 8u), vec2<u32>(18268u, 11232u)), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global1.x, u_input.b.x), vec3<u32>(global2.b, 0u, 0u)), ~u_input.a) << (min(vec3<u32>(u_input.a, 23028u, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(global2.b, 24937u, global1.x), vec3<u32>(u_input.b.x, 19763u, 1u))) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a >> (779u % 32u), ~global2.b, u_input.b.x), _wgslsmith_mult_vec3_u32(~vec3<u32>(4484u, 103516u, 4294967295u), abs(vec3<u32>(u_input.a, global1.x, u_input.a)))), _wgslsmith_mod_vec3_u32(~vec3<u32>(global1.x, 4294967295u, 18886u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, 4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, 39550u)), ~(vec3<u32>(global1.x, global2.b, 0u) << (vec3<u32>(global2.b, 4424u, 23502u) % vec3<u32>(32u))))));
    global1 = ~vec3<u32>(~(~0u), 1u, 0u);
    global3 = array<vec4<u32>, 21>();
    global3 = array<vec4<u32>, 21>();
    var var_0 = vec3<u32>(15079u, _wgslsmith_mod_u32(global1.x, global2.b), 0u);
    return -267f;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(min(162f, arg_0.c));
    global4 = array<i32, 14>();
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-165f, arg_1), 305f, false))), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.c), 911f)), _wgslsmith_f_op_f32(global2.a.x + -554f)), _wgslsmith_div_u32(max(arg_0.b, 0u), 53508u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-2450f + arg_0.c)))));
    global3 = array<vec4<u32>, 21>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global2.c - global2.a.x), 562f, var_1.a.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + arg_0.c);
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<u32>(global1.x, 1u, _wgslsmith_add_u32(~_wgslsmith_mod_u32(global1.x, 2425u), ~(~2096u))) & vec3<u32>(1u, u_input.b.x, u_input.a);
    let var_1 = Struct_1(global2.a, ~min(0u, ~16035u), _wgslsmith_f_op_f32(sign(1926f)));
    let var_2 = true;
    let var_3 = Struct_1(global2.a, var_0.x, global2.a.x);
    global1 = ~(~(~vec3<u32>(global1.x, 59898u >> (global1.x % 32u), ~92495u)));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.a.x))) - var_1.c), _wgslsmith_f_op_f32(f32(-1f) * -814f), _wgslsmith_f_op_f32(func_2(var_3, var_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1247f))), global2.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), global2.c), -391f, all(vec4<bool>(true, global0.x, true, var_2)))))));
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = 13096u;
    var var_1 = u_input.c;
    return global4[_wgslsmith_index_u32(0u, 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.b.x, global1.x), ~global1.x & ~_wgslsmith_add_u32(47464u, global1.x)), vec2<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(global1.x, global2.b)), global1.x));
    let var_1 = global3[_wgslsmith_index_u32(~u_input.b.x, 21u)];
    var var_2 = abs(func_4(func_1()));
    let var_3 = ~select(reverseBits(select(~vec4<u32>(29276u, u_input.b.x, 1u, global1.x), ~global3[_wgslsmith_index_u32(4294967295u, 21u)], true)), vec4<u32>(select(global1.x & global2.b, 31421u, true), 0u, ~19964u | ~global1.x, _wgslsmith_sub_u32(4294967295u, ~1u)), true);
    let var_4 = !(!vec3<bool>(global0.x, (global0.x | global0.x) | global0.x, !(global2.c >= 2735f)));
    let var_5 = any(select(select(!select(vec4<bool>(true, true, true, var_4.x), vec4<bool>(var_4.x, false, global0.x, false), vec4<bool>(global0.x, var_4.x, true, global0.x)), select(select(vec4<bool>(true, false, var_4.x, global0.x), vec4<bool>(false, var_4.x, var_4.x, true), false), select(vec4<bool>(true, var_4.x, true, global0.x), vec4<bool>(var_4.x, false, var_4.x, var_4.x), vec4<bool>(global0.x, var_4.x, var_4.x, var_4.x)), true), vec4<bool>(select(false, global0.x, global0.x), true, true | global0.x, u_input.b.x < 0u)), vec4<bool>(true, true, global0.x, var_4.x), !(!vec4<bool>(false, var_4.x, false, true))));
    let var_6 = func_1();
    var var_7 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(735f)) + _wgslsmith_f_op_f32(global2.c - var_6.a.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1().c + _wgslsmith_f_op_f32(f32(-1f) * -785f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_6.c))))), _wgslsmith_f_op_f32(1304f + 1338f), var_6.a.x), func_1().b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.a.x, var_6.c)))) + func_1().a.x));
    var var_8 = (max(_wgslsmith_mult_u32(~14206u, _wgslsmith_mod_u32(27752u, global2.b)), (global2.b << (12867u % 32u)) << (firstTrailingBit(1u) % 32u)) ^ global2.b) | var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(46975i | u_input.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f - func_1().a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1796f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_6.c, -156f) + var_6.a.yz)));
}

