struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec3<bool>;

var<private> global2: i32 = -7191i;

var<private> global3: array<u32, 12> = array<u32, 12>(65929u, 5996u, 31046u, 4294967295u, 1u, 1u, 40064u, 0u, 19533u, 25250u, 1u, 9328u);

var<private> global4: array<f32, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<bool> {
    var var_0 = Struct_1(vec3<bool>(false, 33744i >= arg_1.b, !(!all(vec4<bool>(true, false, arg_1.a.x, true)))), ~((-45217i ^ arg_1.b) >> (_wgslsmith_mult_u32(4294967295u, arg_2.x) % 32u)) ^ 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, 2541f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(185f - 1102f), _wgslsmith_f_op_f32(sign(global0.x)))) * -749f), all(vec2<bool>(false, false)), reverseBits(i32(-1i) * -_wgslsmith_div_i32(u_input.a.x, -10426i)));
    let var_1 = Struct_1(vec3<bool>(true, arg_1.a.x, false), 0i, _wgslsmith_f_op_f32(sign(-600f)), all(vec2<bool>(global3[_wgslsmith_index_u32(~arg_2.x, 12u)] >= ~98859u, all(!vec4<bool>(false, arg_0.d, true, arg_1.d)))), select(_wgslsmith_add_i32(-firstLeadingBit(0i), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-1i, arg_0.e, 0i)), _wgslsmith_clamp_vec3_i32(u_input.a.wxx, u_input.a.xzw, u_input.a.xwx))), arg_0.e, false));
    let var_2 = arg_1;
    var var_3 = _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(min(~vec4<u32>(37534u, arg_2.x, arg_2.x, global3[_wgslsmith_index_u32(7002u, 12u)]), arg_2), ~arg_2), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 0u, 4294967295u, global3[_wgslsmith_index_u32(0u, 12u)]) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2.x, 12u)], 12u)], arg_2.x, 256u, 1u), arg_2, vec4<u32>(arg_2.x, arg_2.x, 166333u, arg_2.x)) % vec4<u32>(32u)), arg_2), global3[_wgslsmith_index_u32(arg_2.x, 12u)]), 12u)], _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(global3[_wgslsmith_index_u32(16525u, 12u)], arg_2.x, 0u, arg_2.x)), arg_2)));
    global4 = array<f32, 2>();
    return select(select(!vec4<bool>(any(vec3<bool>(global1.x, arg_1.a.x, global1.x)), -2147483647i < var_2.e, true, false & var_2.d), select(!(!vec4<bool>(true, var_1.a.x, var_2.a.x, false)), select(vec4<bool>(var_2.a.x, false, global1.x, false), select(vec4<bool>(false, arg_0.d, arg_0.d, var_1.a.x), vec4<bool>(var_1.d, true, arg_0.a.x, false), vec4<bool>(var_0.a.x, var_1.d, false, true)), true), true), true), select(!(!select(vec4<bool>(true, true, true, arg_1.d), vec4<bool>(arg_0.d, global1.x, true, true), arg_1.a.x)), vec4<bool>(false, false, arg_0.d, !var_2.d), (i32(-1i) * -arg_1.b) > -u_input.a.x), select(select(select(!vec4<bool>(true, false, arg_0.d, var_0.d), vec4<bool>(arg_1.a.x, false, var_1.a.x, var_2.d), !vec4<bool>(var_2.a.x, false, var_0.a.x, false)), vec4<bool>(true, !var_2.a.x, var_1.c == arg_1.c, true), !(!vec4<bool>(false, false, arg_0.d, false))), vec4<bool>(all(vec3<bool>(global1.x, var_1.a.x, global1.x)), var_2.d, var_2.d, any(vec4<bool>(var_2.d, false, arg_0.a.x, arg_0.a.x))), vec4<bool>(!(!global1.x), false, true, var_2.c <= _wgslsmith_f_op_f32(exp2(var_0.c)))));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(select(select(vec3<bool>(true, false, true), vec3<bool>(true, !global1.x, true), select(!vec3<bool>(global1.x, false, false), !vec3<bool>(true, false, global1.x), !vec3<bool>(global1.x, global1.x, global1.x))), select(!select(vec3<bool>(true, false, global1.x), vec3<bool>(true, global1.x, true), global1.x), vec3<bool>(true, true, all(vec3<bool>(true, true, true))), !select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(false, true, global1.x), global1.x)), true), u_input.b, -1000f, false, -u_input.c);
    var var_1 = (false & (var_0.d | all(!vec4<bool>(global1.x, global1.x, false, var_0.a.x)))) | all(!func_3(Struct_1(var_0.a, u_input.b, 1972f, true, u_input.a.x), Struct_1(vec3<bool>(false, false, var_0.a.x), -22859i, 203f, true, var_0.e), vec4<u32>(38354u, 0u, 50694u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(61357u, 12u)], 12u)], 12u)], 12u)])));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(580f, global0.x, var_0.c) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1218f, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(54737u, 12u)], 2u)], -1142f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 2u)], var_0.c, -308f), vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 2u)], -220f, -974f), true)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-680f, -1369f, 1000f) + vec3<f32>(global0.x, 1275f, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)], 2u)]))), var_0.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(776f, -553f, _wgslsmith_f_op_f32(step(-725f, _wgslsmith_f_op_f32(-970f + var_0.c))))));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1701f - var_0.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(828f, global0.x, global1.x)), _wgslsmith_div_f32(140f, 1000f)))), _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -167f)))))));
    var var_3 = 0u;
    return var_0.a;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(abs(1135f));
    return Struct_1(func_2(), -2147483647i, _wgslsmith_div_f32(arg_2.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1058f, global0.x) + _wgslsmith_f_op_f32(step(-151f, arg_2.c)))), global1.x, i32(-1i) * -66308i);
}

fn func_1() -> Struct_1 {
    let var_0 = 6136u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-194f)) + global0.x);
    var var_2 = func_4(_wgslsmith_mult_i32(~53023i, _wgslsmith_add_i32(firstLeadingBit(-u_input.b), -1i)), all(!select(select(vec2<bool>(global1.x, global1.x), global1.yz, vec2<bool>(false, true)), !vec2<bool>(false, global1.x), true)), Struct_1(vec3<bool>(global1.x, false, all(func_2())), -abs(u_input.a.x), var_1, any(func_3(Struct_1(vec3<bool>(global1.x, false, global1.x), -57054i, -458f, true, u_input.c), Struct_1(vec3<bool>(false, true, global1.x), u_input.c, global0.x, global1.x, u_input.b), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)], 4294967295u, 56954u, 62000u) ^ vec4<u32>(13077u, global3[_wgslsmith_index_u32(var_0, 12u)], 1u, 4294967295u))), u_input.c ^ (~u_input.c << (4294967295u % 32u))), ~vec3<i32>(-2147483647i, ~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -46775i, u_input.c), vec3<i32>(u_input.a.x, u_input.a.x, -9561i)) & u_input.b));
    global2 = firstTrailingBit(1i ^ ~u_input.a.x);
    let var_3 = ~(~(~(_wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(var_0, 12u)], global3[_wgslsmith_index_u32(var_0, 12u)], 30280u, 40772u), vec4<u32>(18320u, 0u, var_0, 56245u)) >> (vec4<u32>(global3[_wgslsmith_index_u32(var_0, 12u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(42891u, 12u)], 12u)], 46376u, var_0) % vec4<u32>(32u)))));
    return Struct_1(func_2(), -u_input.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1f)))), true, _wgslsmith_dot_vec2_i32(~abs(select(vec2<i32>(-1i, 6805i), vec2<i32>(var_2.e, var_2.e), var_2.d)), -firstTrailingBit(reverseBits(vec2<i32>(var_2.b, u_input.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_2();
    var var_2 = min(~(~14298u), 16199u);
    var_2 = global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14842u, 12u)], 12u)];
    let var_3 = func_1();
    let var_4 = global0.xx;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~u_input.b)), max(countOneBits(~reverseBits(46586u)), firstLeadingBit(global3[_wgslsmith_index_u32(1u, 12u)])), ~func_1().e, u_input.c, -1i);
}

