struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(0u, 0u), vec2<u32>(0u, 30468u), vec2<u32>(70318u, 4294967295u), vec2<u32>(13844u, 1u), vec2<u32>(51703u, 0u), vec2<u32>(107011u, 0u), vec2<u32>(1u, 102112u), vec2<u32>(16470u, 0u), vec2<u32>(3734u, 0u), vec2<u32>(23692u, 0u), vec2<u32>(9001u, 56825u), vec2<u32>(15425u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(6669u, 22061u), vec2<u32>(0u, 4294967295u), vec2<u32>(10662u, 4294967295u));

var<private> global1: i32;

var<private> global2: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> vec3<bool> {
    global2 = min(arg_0.a ^ _wgslsmith_clamp_i32(max(arg_0.a, arg_0.a), 29101i, abs(~arg_0.a)), ~_wgslsmith_clamp_i32(firstLeadingBit(1i), _wgslsmith_sub_i32(arg_0.a << (u_input.b % 32u), arg_0.a >> (31050u % 32u)), abs(~(-1i))));
    global0 = array<vec2<u32>, 16>();
    global0 = array<vec2<u32>, 16>();
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b + -1132f), 1f, -288f)));
    let var_1 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, 1i), _wgslsmith_clamp_i32(arg_0.a, countOneBits(~arg_0.a), -_wgslsmith_add_i32(11810i, -22916i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - -1000f))), select(any(arg_1), arg_0.a < countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, arg_0.a), vec2<i32>(10385i, arg_0.a))), arg_1.x));
    return select(!vec3<bool>(true, !var_1.c, arg_1.x), !vec3<bool>(arg_0.c, false, arg_0.c), !vec3<bool>(!any(vec3<bool>(false, arg_1.x, false)), (true || arg_1.x) || all(vec3<bool>(arg_1.x, arg_0.c, false)), any(select(arg_1, vec2<bool>(var_1.c, arg_0.c), vec2<bool>(true, arg_0.c)))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_u32(max(~((global0[_wgslsmith_index_u32(0u, 16u)] | vec2<u32>(u_input.a, u_input.b)) & (global0[_wgslsmith_index_u32(u_input.b, 16u)] & vec2<u32>(0u, u_input.b))), ~countOneBits(global0[_wgslsmith_index_u32(countOneBits(40787u), 16u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(countOneBits(vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.a))), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a) ^ vec4<u32>(u_input.b, u_input.b, u_input.a, 15188u)), 16u)] >> (_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(select(global0[_wgslsmith_index_u32(u_input.b, 16u)], vec2<u32>(u_input.b, 0u), true), global0[_wgslsmith_index_u32(u_input.a, 16u)]), _wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 16u)], vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(88783u, 1u) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    var var_1 = !(!all(func_3(arg_0, vec2<bool>(arg_3, false))));
    let var_2 = _wgslsmith_f_op_f32(min(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1)))));
    let var_3 = Struct_1(abs(arg_0.a) ^ arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2)) - _wgslsmith_f_op_f32(exp2(arg_1)))), -491f), true);
    var_1 = true;
    return Struct_1(12354i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(854f)) + _wgslsmith_f_op_f32(max(arg_1, 515f))), !arg_3);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = any(vec2<bool>(false, arg_0.b <= _wgslsmith_f_op_f32(f32(-1f) * -1366f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), 1344f, 934f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -548f) * -643f), _wgslsmith_f_op_f32(1106f + -1504f)))));
    var var_2 = select(select(func_3(arg_0, vec2<bool>(true, any(vec3<bool>(false, false, true)))), select(!(!vec3<bool>(var_0, arg_0.c, true)), vec3<bool>(true, arg_0.c, true), select(!vec3<bool>(var_0, false, arg_0.c), select(vec3<bool>(true, var_0, false), vec3<bool>(arg_0.c, var_0, arg_0.c), true), !vec3<bool>(arg_0.c, true, arg_0.c))), select(!select(vec3<bool>(arg_0.c, var_0, true), vec3<bool>(false, var_0, false), vec3<bool>(var_0, true, false)), !vec3<bool>(arg_0.c, false, arg_0.c), select(func_3(arg_0, vec2<bool>(arg_0.c, true)), select(vec3<bool>(false, arg_0.c, var_0), vec3<bool>(true, var_0, var_0), false), select(arg_0.c, false, false)))), !vec3<bool>(!all(vec4<bool>(false, false, var_0, true)), _wgslsmith_add_i32(arg_0.a, arg_0.a) != arg_0.a, all(vec3<bool>(var_0, false, var_0))), !(!(!select(vec3<bool>(false, true, true), vec3<bool>(arg_0.c, var_0, true), true))));
    var var_3 = ~(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(16506u, 37467u, 4294967295u, u_input.b)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 25242u, u_input.a, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(49217u, 16333u, 20609u, u_input.b), vec4<u32>(u_input.b, 4863u, 35216u, u_input.a), vec4<u32>(0u, 4294967295u, u_input.a, 10700u)))) | ~min(~vec4<u32>(u_input.a, 4294967295u, 1u, 31061u), ~vec4<u32>(7536u, 1u, 0u, 4294967295u)));
    var var_4 = vec2<bool>(!var_2.x, !(!(select(false, arg_0.c, true) & (arg_0.a <= 0i))));
    return Struct_1(abs(firstTrailingBit(_wgslsmith_mult_i32(558i, _wgslsmith_div_i32(16599i, 2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), false);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> i32 {
    var var_0 = arg_0;
    global2 = ~select(arg_0.a, arg_0.a, any(!vec3<bool>(arg_2.c, true, arg_0.c)));
    global1 = _wgslsmith_add_i32(2147483647i, -(-2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, -1i, -43931i, -2147483647i) >> (vec4<u32>(arg_3.x, u_input.b, 15155u, arg_3.x) % vec4<u32>(32u)), vec4<i32>(arg_0.a, 1i, arg_0.a, 0i) & vec4<i32>(var_0.a, arg_2.a, arg_2.a, -32915i))));
    global1 = ~arg_1.a;
    var_0 = arg_1;
    return func_2(Struct_1(_wgslsmith_mod_i32(arg_0.a, ~arg_0.a), -591f, true), -1835f, firstTrailingBit(1i) << (53769u % 32u), true).a;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    global2 = _wgslsmith_dot_vec2_i32(vec2<i32>(~1i, func_5(func_4(func_2(Struct_1(-1287i, 614f, true), 1112f, -1i, false)), func_2(Struct_1(16252i, 2441f, false), _wgslsmith_f_op_f32(floor(-286f)), 10448i >> (u_input.a % 32u), func_2(Struct_1(-1i, -248f, true), 254f, 1i, true).c), func_4(Struct_1(0i, 941f, true)), select(reverseBits(vec3<u32>(1u, u_input.a, 1u)), ~vec3<u32>(4294967295u, u_input.a, u_input.b), vec3<bool>(arg_1.x, arg_1.x, true)))), select(vec2<i32>(i32(-1i) * -13668i, _wgslsmith_div_i32(~(-3607i), countOneBits(-28587i))), vec2<i32>(-1i) * -vec2<i32>(1i, 1i), true));
    let var_1 = countOneBits(vec4<i32>(min(1i, -9144i), _wgslsmith_mult_i32(~1i, -35575i), func_4(func_2(Struct_1(-1i, 1000f, true), -1064f, -5693i, true)).a & max(func_2(Struct_1(2147483647i, -502f, arg_1.x), -873f, -5642i, false).a, min(-53042i, -28168i)), 1i));
    global0 = array<vec2<u32>, 16>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(255f)) + _wgslsmith_f_op_f32(1430f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-293f, -288f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(func_4(Struct_1(var_1.x, 262f, false)).b)), -1000f)));
    return 1584f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(u_input.b, u_input.b);
    global1 = ~(-46760i);
    global1 = -44331i;
    let var_1 = vec2<bool>(true, false);
    var var_2 = Struct_1(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, var_1.x, true), vec3<bool>(false, true, var_1.x)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(var_1.x, var_1.x, false, true)))) - 607f)), !var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-4401i, -35853i, -2147483647i, -1i), vec4<i32>(var_2.a, var_2.a, var_2.a, 2147483647i)), -28506i), vec3<i32>(1i, -2147483647i, var_2.a) ^ (vec3<i32>(41442i, -10946i, var_2.a) & vec3<i32>(2147483647i, -44668i, var_2.a))));
}

