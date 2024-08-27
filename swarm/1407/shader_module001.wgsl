struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
    d: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(4294967295u, 1u, 23854u, 1u));

var<private> global2: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    return 796f;
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> bool {
    global0 = vec3<i32>(1i, -1i, -(~(-24378i)));
    let var_0 = min(_wgslsmith_mult_vec2_i32(-vec2<i32>(firstLeadingBit(u_input.b), 2147483647i ^ u_input.b), min(abs(firstLeadingBit(vec2<i32>(global0.x, u_input.b))), countOneBits(vec2<i32>(u_input.b, 1i) & vec2<i32>(u_input.b, -28098i)))), min(reverseBits(-_wgslsmith_mod_vec2_i32(global0.zx, vec2<i32>(u_input.c, -2147483647i))), vec2<i32>(-1i) * -global0.yy));
    var var_1 = true;
    let var_2 = _wgslsmith_add_u32(~17901u, reverseBits(~1u >> (_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1.x, global1.a.x), 18360u) % 32u)));
    var var_3 = select(vec2<bool>(true, false), !select(vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(true, true), any(global2[_wgslsmith_index_u32(34284u, 9u)])), all(vec3<bool>(_wgslsmith_f_op_f32(step(arg_0, arg_0)) == _wgslsmith_f_op_f32(-arg_0), (-323f == arg_0) != true, var_2 < var_2)));
    return true;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(global1.a, vec4<u32>(global1.a.x, 4294967295u, global1.a.x, global1.a.x)), global1.a | vec4<u32>(0u, 28846u, u_input.a, 0u))), firstTrailingBit(global1.a)));
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(global1.a.x, 0u, u_input.a, 0u)), vec4<u32>(~4294967295u, ~global1.a.x, firstLeadingBit(u_input.a), 28786u | var_0.a.x)) & ~abs(_wgslsmith_mod_vec4_u32(var_0.a, vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a))));
    var var_2 = Struct_5(~global0.x, !vec4<bool>(true, true, all(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), true));
    global1 = Struct_1(select(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 65009u, var_1.a.x, 5115u) & global1.a, _wgslsmith_div_vec4_u32(vec4<u32>(1u, 6580u, 68087u, 37858u), var_0.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(~0u, 4294967295u, ~1u, firstLeadingBit(0u)), ~vec4<u32>(4294967295u, 48372u, u_input.a, 4294967295u)), select(!select(vec4<bool>(var_2.b.x, false, var_2.b.x, var_2.b.x), vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, true), vec4<bool>(var_2.b.x, true, false, var_2.b.x)), select(!vec4<bool>(var_2.b.x, true, var_2.b.x, false), vec4<bool>(false, var_2.b.x, false, true), !vec4<bool>(false, var_2.b.x, var_2.b.x, var_2.b.x)), any(select(vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x), var_2.b, vec4<bool>(var_2.b.x, var_2.b.x, false, var_2.b.x))))));
    var var_3 = Struct_2(vec3<bool>(all(var_2.b.wy), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -921f)), var_1.a.yz ^ vec2<u32>(45187u, global1.a.x)), var_2.b.x), _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(~vec4<i32>(-2147483647i, -17434i, -39089i, var_2.a), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, var_2.a, global0.x, global0.x), vec4<i32>(var_2.a, 1i, 20669i, var_2.a))), vec4<i32>(-(i32(-1i) * -60603i), _wgslsmith_sub_i32(u_input.c, abs(var_2.a)), global0.x, reverseBits(var_2.a | u_input.c))), false, select(!var_2.b.x, true, !var_2.b.x), ~(~_wgslsmith_dot_vec3_u32(~global1.a.zyw, vec3<u32>(u_input.a, 1u, global1.a.x) >> (vec3<u32>(4294967295u, 4294967295u, var_1.a.x) % vec3<u32>(32u)))));
    return var_1.a.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: f32) -> Struct_1 {
    global1 = Struct_1(global1.a >> (global1.a % vec4<u32>(32u)));
    let var_0 = arg_1.b;
    global1 = Struct_1(~vec4<u32>(1u ^ select(44937u, arg_1.b.e, false), 77643u, ~func_2(), 105689u));
    var var_1 = Struct_1(select(select(~(vec4<u32>(48011u, arg_1.b.e, 1u, arg_1.c) & vec4<u32>(u_input.a, global1.a.x, 4294967295u, global1.a.x)), vec4<u32>(~global1.a.x, u_input.a & 5524u, ~var_0.e, arg_1.b.e), true), vec4<u32>(~(arg_1.b.e ^ 1u), ~select(global1.a.x, arg_1.b.e, var_0.d), 22363u, arg_1.c & 0u), arg_1.d));
    var var_2 = arg_1.b.b;
    return Struct_1(max(select(~(~vec4<u32>(4294967295u, 63280u, var_1.a.x, var_0.e)), vec4<u32>(var_1.a.x, 32748u, 0u, 1u) ^ min(vec4<u32>(4294967295u, u_input.a, arg_1.c, arg_1.b.e), var_1.a), false), ~global1.a << (vec4<u32>(1u, ~1u, u_input.a, 17742u) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, false);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-713f, 1136f)))))))));
    global1 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, _wgslsmith_f_op_f32(-var_1)) - vec2<f32>(-207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))), Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(910f, var_1) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, var_1), _wgslsmith_div_vec2_f32(vec2<f32>(var_1, 345f), vec2<f32>(var_1, var_1)), true))), Struct_2(vec3<bool>(true, true, var_0.x), ~1i, any(vec2<bool>(var_0.x, var_0.x)), min(u_input.c, -30177i) <= _wgslsmith_mod_i32(0i, global0.x), func_2()), ~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), global1.a.zy)), vec4<bool>(select(all(var_0.yz), var_0.x & false, false), any(!global2[_wgslsmith_index_u32(4294967295u, 9u)]), all(vec4<bool>(true, true, true, var_0.x)), false)), _wgslsmith_f_op_f32(-1050f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), var_1)))));
    var_0 = vec3<bool>(all(select(!(!vec3<bool>(var_0.x, var_0.x, true)), vec3<bool>(true, !var_0.x, true), select(vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(false, false, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false)), all(var_0.zy)))), !var_0.x && ((-514f > _wgslsmith_f_op_f32(724f * var_1)) || any(vec4<bool>(false, var_0.x, var_0.x, true))), var_0.x);
    global2 = array<vec4<bool>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(global1.a & global1.a, ~global1.a), 23576i, reverseBits(~firstLeadingBit(global1.a.ww)), firstTrailingBit(4294967295u), abs(_wgslsmith_mod_vec2_u32(~firstLeadingBit(global1.a.yw), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(global1.a.zx, global1.a.yy, global1.a.yx), max(global1.a.zx, global1.a.zx)))));
}

