struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(52553i, 64683i, -1i, 31249i, -1i, 0i, 57217i, 7633i, -48125i, 1i, -13320i, -1i, 1i, 0i, 1i, -4268i, -2140i, -59924i);

var<private> global1: Struct_1 = Struct_1(644f, vec2<i32>(-1i, 21247i), vec2<f32>(1267f, 1221f), true, true);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    global1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1046f), reverseBits(vec2<i32>(global1.b.x, -global1.b.x)) ^ (-(~vec2<i32>(global1.b.x, -1i)) << (~(~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), vec2<f32>(-1000f, 425f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))) > global1.a, global1.e);
    let var_0 = Struct_1(global1.c.x, reverseBits(vec2<i32>(-2147483647i << ((u_input.a & 55275u) % 32u), abs(global0[_wgslsmith_index_u32(u_input.a, 18u)]) & -global0[_wgslsmith_index_u32(0u, 18u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(global1.a, global1.a)), _wgslsmith_f_op_f32(-1847f - -1130f)), vec2<f32>(global1.a, 1f))), all(select(select(!vec3<bool>(global1.e, true, global1.d), select(vec3<bool>(false, true, true), vec3<bool>(true, global1.d, global1.d), false), global1.e), !(!vec3<bool>(true, false, global1.d)), vec3<bool>(true, all(vec2<bool>(global1.d, global1.d)), true))), !all(vec3<bool>(any(vec2<bool>(global1.d, global1.d)), select(false, global1.e, true), true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1500f, 881f) * _wgslsmith_div_f32(var_0.c.x, 993f)) * _wgslsmith_f_op_f32(step(global1.a, _wgslsmith_f_op_f32(abs(global1.a))))), _wgslsmith_f_op_f32(round(497f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1200f), _wgslsmith_f_op_f32(abs(-1209f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1507f, _wgslsmith_f_op_f32(min(-752f, 332f)))), (global0[_wgslsmith_index_u32(reverseBits(u_input.a), 18u)] <= (var_0.b.x & global1.b.x)) || ((global1.b.x & global1.b.x) != -13333i))));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global1.c - var_0.c))) - _wgslsmith_f_op_vec2_f32(global1.c * global1.c)) + _wgslsmith_f_op_vec2_f32(var_0.c * global1.c))));
    var_1 = vec2<f32>(-679f, var_0.c.x);
    return _wgslsmith_dot_vec2_u32(countOneBits(max(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(56487u, 52788u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(4294967295u, 75930u)), min(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 78115u)))), ~countOneBits(~(vec2<u32>(1u, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = Struct_1(global1.a, _wgslsmith_add_vec2_i32(-(arg_0.b & arg_1.b), arg_1.b) << (~vec2<u32>(_wgslsmith_mod_u32(u_input.a, 4294967295u), 4294967295u) % vec2<u32>(32u)), _wgslsmith_div_vec2_f32(global1.c, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(529f, arg_1.c.x)))))), false, false);
    let var_0 = !vec4<bool>(false, all(!select(vec3<bool>(false, arg_0.e, false), vec3<bool>(global1.e, global1.d, global1.d), vec3<bool>(arg_1.e, arg_1.d, false))), false, all(vec4<bool>(true, arg_0.e, !global1.d, true)));
    global0 = array<i32, 18>();
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(0u, _wgslsmith_sub_u32(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 1u))), ~(u_input.a ^ u_input.a)) >> (~(~vec3<u32>(u_input.a, 3402u, u_input.a)) % vec3<u32>(32u)), ~(abs(vec3<u32>(0u, 7483u, 2019u)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))));
    var_1 = _wgslsmith_add_vec3_u32(~firstTrailingBit(vec3<u32>(countOneBits(1u), _wgslsmith_add_u32(var_1.x, 1u), func_3())), min((vec3<u32>(var_1.x, 1u, 0u) & vec3<u32>(4294967295u, var_1.x, 0u)) & ~vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(u_input.a, 86283u >> (u_input.a % 32u), 35636u)) & select(~(~vec3<u32>(var_1.x, u_input.a, var_1.x)), abs(abs(vec3<u32>(99918u, u_input.a, 4294967295u))), !global1.d));
    return Struct_1(_wgslsmith_div_f32(225f, -1609f), ~arg_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global1.c))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_1.c))) - _wgslsmith_f_op_vec2_f32(-arg_0.c))), var_0.x, true);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: vec3<u32>) -> f32 {
    let var_0 = vec4<bool>(true, true, true, true);
    let var_1 = ~vec3<u32>(1u, firstTrailingBit(28011u), min(arg_3.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(74563u, arg_2.x), arg_2.x)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -922f), global1.a)), 1226f, false)))), 1f, -321f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a, global1.a))));
    let var_3 = func_2(arg_0, Struct_1(-191f, -(~vec2<i32>(-8487i, global0[_wgslsmith_index_u32(var_1.x, 18u)])) & ~reverseBits(vec2<i32>(global1.b.x, -9952i)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(639f, -669f)))), !(!any(vec2<bool>(false, true))), !(!arg_0.d) || ((0u > var_1.x) && true)));
    let var_4 = var_3;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(ceil(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) - 1568f) * 1000f) + var_4.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 18>();
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(global1.a, _wgslsmith_div_f32(292f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) - _wgslsmith_f_op_f32(ceil(-180f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.c.x), global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(-434f, global1.b, vec2<f32>(-918f, global1.a), true, global1.d), vec2<f32>(1000f, global1.a), vec3<u32>(u_input.a, 5960u, u_input.a), vec3<u32>(u_input.a, 41517u, 4294967295u))) - _wgslsmith_f_op_f32(f32(-1f) * -2009f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-327f, global1.c.x, global1.c.x, 1360f) + vec4<f32>(-650f, global1.c.x, 1000f, -1029f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(675f, global1.c.x, 1000f, global1.a))))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0.wyx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, global1.a)), _wgslsmith_f_op_vec3_f32(-var_0.yyy)))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1.c.x, 779f))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(max(reverseBits(u_input.a) << (u_input.a % 32u), ~u_input.a ^ _wgslsmith_sub_u32(570u, 0u)), u_input.a, 46954u, u_input.a), ~vec4<u32>(_wgslsmith_sub_u32(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(4294967295u, 0u, u_input.a, u_input.a))), _wgslsmith_dot_vec3_u32(vec3<u32>(57440u, u_input.a, u_input.a), vec3<u32>(64627u, u_input.a, u_input.a)), u_input.a, func_3()));
    let var_3 = u_input.a;
    var var_4 = ~(-_wgslsmith_mult_vec3_i32(vec3<i32>(~(-33542i), countOneBits(global1.b.x), global0[_wgslsmith_index_u32(firstTrailingBit(0u), 18u)]), vec3<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(1u, 18u)], global1.b.x), global1.b.x, ~global1.b.x)));
    var var_5 = select(select(select(vec3<bool>(false, true, !global1.d), vec3<bool>(global1.d, any(vec2<bool>(false, true)), any(vec4<bool>(global1.e, false, global1.e, true))), false), !(!vec3<bool>(true, global1.d, false)), vec3<bool>(!(!global1.e), true, global1.e)), !select(!select(vec3<bool>(true, global1.d, false), vec3<bool>(false, global1.e, true), vec3<bool>(true, false, false)), select(select(vec3<bool>(global1.e, false, true), vec3<bool>(global1.d, global1.e, global1.d), true), select(vec3<bool>(global1.e, false, global1.e), vec3<bool>(global1.d, true, false), vec3<bool>(global1.e, false, global1.e)), vec3<bool>(false, false, global1.e)), vec3<bool>(false && global1.e, true, true)), all(vec4<bool>(func_2(Struct_1(var_0.x, var_4.zz, vec2<f32>(590f, -233f), true, global1.e), func_2(Struct_1(var_0.x, vec2<i32>(global1.b.x, -1i), var_1.yx, global1.d, global1.e), Struct_1(var_0.x, vec2<i32>(var_4.x, global0[_wgslsmith_index_u32(19748u, 18u)]), global1.c, global1.d, global1.d))).d, false, global1.b.x <= (-1i << (var_2 % 32u)), 1u <= var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1578f), vec2<u32>(~12825u, var_2) << (vec2<u32>(u_input.a, var_2) % vec2<u32>(32u)));
}

