struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 33901u, vec2<bool>(false, true), vec2<bool>(true, true), i32(-2147483648));

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(true, 1u, vec2<bool>(true, false), vec2<bool>(false, true), 9765i));

var<private> global2: Struct_1 = Struct_1(false, 1u, vec2<bool>(true, false), vec2<bool>(true, false), 2147483647i);

var<private> global3: vec4<f32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<f32>) -> vec4<u32> {
    var var_0 = abs(~reverseBits(max(vec2<u32>(u_input.a, global0.b) | vec2<u32>(global2.b, arg_1.b), vec2<u32>(global0.b, 24717u))));
    var var_1 = 0u;
    let var_2 = true && (any(select(vec2<bool>(true, global2.c.x), arg_0.d, any(vec3<bool>(false, false, global2.d.x)))) == (global2.a & true));
    let var_3 = 4294967295u;
    var var_4 = arg_3.x;
    return ~vec4<u32>(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(var_0.x, 114869u)) >> (countOneBits(~var_3) % 32u), _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_1.b, ~var_3), 1u), 1u);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool, arg_3: i32) -> u32 {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, _wgslsmith_clamp_u32(select(2912u, 42115u, global0.d.x) >> (0u % 32u), reverseBits(u_input.b), 0u)) ^ u_input.a, 1u)];
    var var_0 = arg_0;
    global3 = vec4<f32>(_wgslsmith_f_op_f32(global3.x * 1383f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(886f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-369f * -416f)), _wgslsmith_f_op_f32(ceil(-1195f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2267f)))) * -548f), _wgslsmith_f_op_f32(global3.x * global3.x));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(select(-137f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.x), -925f)))), any(vec4<bool>(false, false, arg_2, global0.d.x)) | (global0.c.x && all(vec3<bool>(arg_0.c.x, var_0.d.x, false))))), _wgslsmith_f_op_f32(global3.x - -2426f), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global3.x)))))));
    let var_1 = -_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(~23683i, -1i, arg_0.e)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-13647i, -32737i, var_0.e), vec3<i32>(var_0.e, ~var_0.e, 22524i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global2.e, 1i, global2.e), firstLeadingBit(vec3<i32>(global2.e, -2147483647i, arg_0.e)), ~vec3<i32>(23328i, var_0.e, arg_0.e)) & _wgslsmith_mod_vec3_i32(abs(vec3<i32>(21797i, 1i, var_0.e)), firstLeadingBit(vec3<i32>(-43463i, arg_0.e, -39512i))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(19398u, global0.b), func_3(Struct_1(!(arg_1.x < arg_1.x), arg_0.b, vec2<bool>(global3.x <= global3.x, var_1.x <= 45182i), select(vec2<bool>(true, var_0.a), select(vec2<bool>(arg_2, global0.a), vec2<bool>(global0.d.x, arg_0.c.x), global0.c.x), var_0.d.x), _wgslsmith_sub_i32(arg_0.e, -10624i)), Struct_1(arg_0.d.x, ~u_input.a, arg_0.c, global2.d, _wgslsmith_dot_vec3_i32(var_1, abs(var_1))), _wgslsmith_mult_vec2_i32(~abs(var_1.yy), vec2<i32>(min(global2.e, global2.e), -5287i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(2649f, global3.x, global3.x), vec3<f32>(global3.x, -1000f, 672f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global3.yzy, global3.yyx))))).wz);
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> u32 {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, arg_1), 1u)];
    var var_0 = abs(_wgslsmith_add_u32(111802u, ~global0.b));
    let var_1 = global1[_wgslsmith_index_u32(u_input.a, 1u)];
    let var_2 = global1[_wgslsmith_index_u32(global2.b & ~(4294967295u << (firstTrailingBit(46813u) % 32u)), 1u)];
    global0 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(var_2.b, global2.b, ~func_4(Struct_1(var_2.a, 14065u, vec2<bool>(var_2.d.x, var_1.a), var_1.d, 1i), func_3(global1[_wgslsmith_index_u32(global0.b, 1u)], Struct_1(var_1.a, 101802u, vec2<bool>(global2.d.x, global0.c.x), global0.c, global2.e), vec2<i32>(global0.e, 2147483647i), global3.wwx), true, 41079i)), 1u)];
    return ~40796u;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global2 = Struct_1(all(select(!vec3<bool>(arg_3.a, false, true), select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_3.d.x, true, arg_3.d.x), vec3<bool>(false, global2.a, false)), vec3<bool>(false, global0.c.x, true))) || false, countOneBits(4294967295u), select(select(!vec2<bool>(global2.d.x, arg_3.d.x), vec2<bool>(any(vec3<bool>(arg_1, arg_2.d.x, global0.a)), true), arg_2.c.x), !select(vec2<bool>(true, false), vec2<bool>(true, true), arg_3.d), true), !(!select(select(vec2<bool>(true, true), global2.c, global2.a), !vec2<bool>(arg_2.a, arg_3.d.x), true)), _wgslsmith_mod_i32(1i, 4884i));
    return Struct_1(any(vec4<bool>(select(false, 1095f <= global3.x, arg_3.c.x != arg_1), arg_2.a, true, all(!global0.c))), global2.b, vec2<bool>(true, global0.e > 7250i), arg_3.d, -25522i);
}

fn func_1() -> bool {
    var var_0 = vec2<bool>(false, global0.a);
    var var_1 = 0u;
    global0 = func_5(~func_2(vec3<i32>(-1i) * -vec3<i32>(global0.e, -1i, global2.e), 4294967295u), !global0.a, Struct_1(global0.d.x | !all(vec3<bool>(var_0.x, false, false)), 1u, global2.c, select(global2.d, select(vec2<bool>(true, true), select(vec2<bool>(false, var_0.x), global0.c, true), -408f <= global3.x), vec2<bool>(!global2.c.x, var_0.x)), global0.e), global1[_wgslsmith_index_u32(72484u, 1u)]);
    let var_2 = func_5(_wgslsmith_div_u32(~(min(global2.b, 101803u) ^ firstTrailingBit(1u)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, 4294967295u, global2.b, global0.b) & vec4<u32>(global2.b, 4294967295u, u_input.b, u_input.a), abs(vec4<u32>(1u, 0u, 4175u, 11785u))), _wgslsmith_sub_u32(74327u, 33520u))), !(1i < global0.e), Struct_1(!(2147483647i >= global2.e), abs(abs(1u) & u_input.a), select(global2.c, global2.c, !select(global0.d, global0.d, false)), !(!global2.d), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(0i, global0.e, 0i, 12017i)), vec4<i32>(global0.e, global2.e, -5368i, global2.e)), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-1i, global2.e, global0.e, global2.e)), -vec4<i32>(-1i, -7941i, 1i, global0.e)))), global1[_wgslsmith_index_u32(func_5(~4294967295u, !any(!vec4<bool>(true, global0.c.x, false, true)), Struct_1(false, _wgslsmith_sub_u32(global2.b, ~4294967295u), !select(vec2<bool>(false, global2.c.x), global0.c, global2.d), vec2<bool>(global0.d.x, var_0.x && var_0.x), -57417i), global1[_wgslsmith_index_u32(global2.b, 1u)]).b, 1u)]);
    var var_3 = func_5(firstTrailingBit(global2.b), global2.a, var_2, global1[_wgslsmith_index_u32(~abs(24795u), 1u)]);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 1>();
    global0 = global1[_wgslsmith_index_u32(41413u, 1u)];
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 1281f, -399f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 867f, global3.x, global3.x) + vec4<f32>(-1000f, -494f, 1879f, global3.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(448f, global3.x, global3.x, -354f) + vec4<f32>(global3.x, -417f, -413f, -327f)))))), vec4<f32>(-904f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * global3.x)), 309f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.x, global3.x)) * _wgslsmith_f_op_f32(floor(global3.x))))));
    global0 = Struct_1(!func_1(), max(global2.b, global2.b | ~global2.b), vec2<bool>(false, true | any(vec3<bool>(false, false, false))), global0.c, -_wgslsmith_clamp_i32(_wgslsmith_mod_i32(reverseBits(global2.e), func_5(global2.b, true, global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(u_input.b, 1u)]).e), 2147483647i, max(global2.e, global0.e)));
    global2 = Struct_1(!global2.d.x, 4294967295u, func_5(global0.b, false, func_5(4294967295u, global2.d.x, Struct_1(all(vec4<bool>(global2.c.x, global2.a, global2.d.x, false)), 4294967295u, global0.d, !vec2<bool>(global0.d.x, global0.d.x), 1i), Struct_1(func_5(global2.b, global0.a, global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(global0.b, 1u)]).d.x, 4294967295u, select(global2.c, global2.c, global0.d), select(global0.c, vec2<bool>(true, global0.a), true), -21022i >> (0u % 32u))), global1[_wgslsmith_index_u32(0u, 1u)]).d, vec2<bool>(false, !(global2.c.x && true)), global2.e);
    var var_1 = func_5(_wgslsmith_dot_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(8722u, global0.b, 1u) | vec3<u32>(16678u, 4294967295u, 56569u), vec3<u32>(global2.b, 1u, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(global0.b, global2.b, u_input.a) << (vec3<u32>(global2.b, 7318u, 0u) % vec3<u32>(32u)), vec3<u32>(global0.b, global2.b, global0.b)), vec3<bool>(!global0.a, global2.c.x || false, global0.c.x)), ~firstLeadingBit(~vec3<u32>(u_input.b, u_input.b, 4823u))), false, Struct_1(any(vec3<bool>(var_0.x < global3.x, all(vec4<bool>(global0.d.x, global0.a, true, false)), true)), firstTrailingBit(~global2.b | global2.b), func_5(max(u_input.a, global0.b ^ u_input.a), any(select(vec3<bool>(global0.a, true, global0.c.x), vec3<bool>(false, global0.d.x, true), vec3<bool>(false, global2.c.x, global0.d.x))), global1[_wgslsmith_index_u32(~32222u << (global0.b % 32u), 1u)], Struct_1(global0.d.x, 4294967295u & global0.b, select(vec2<bool>(false, true), vec2<bool>(global2.c.x, global2.c.x), true), vec2<bool>(global2.c.x, true), -1i)).c, select(!(!vec2<bool>(false, global2.c.x)), select(!global0.d, func_5(global2.b, true, global1[_wgslsmith_index_u32(28310u, 1u)], Struct_1(global2.d.x, u_input.b, global2.d, global2.c, global0.e)).c, all(vec4<bool>(global0.c.x, global0.a, global2.a, true))), true), global2.e), Struct_1(false, ~max(52113u, global2.b), !vec2<bool>(var_0.x >= -752f, true), func_5(firstTrailingBit(min(22034u, 12012u)), global0.c.x, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.b, 5795u | global0.b, 28264u), 1u)], Struct_1(any(vec4<bool>(false, true, true, true)), ~u_input.b, !vec2<bool>(global2.a, global0.d.x), !global0.d, firstLeadingBit(18386i))).d, _wgslsmith_div_i32(93i, -31367i)));
    global2 = Struct_1(global2.c.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(global2.b, ~869u), _wgslsmith_sub_u32(global2.b, ~1u)), var_1.c, global0.c, ~global0.e);
    let var_2 = func_5(~abs(~global0.b), true, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.b, global0.b), 1u)], Struct_1(global0.a, ~14988u, !(!vec2<bool>(true, global0.c.x)), vec2<bool>(global0.e > 2147483647i, !any(vec4<bool>(true, false, true, true))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-8817i, global2.e, 39309i, -2147483647i), vec4<i32>(var_1.e, global2.e, var_1.e, global2.e)) << (abs(global2.b) % 32u), -1i)));
    let var_3 = ~(vec3<i32>(1i, ~global0.e, global2.e) | -(~(~vec3<i32>(2147483647i, global2.e, -42327i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(var_3, vec3<i32>(-1i) * -var_3), _wgslsmith_f_op_f32(f32(-1f) * -1298f), ~(-_wgslsmith_sub_vec2_i32(var_3.zx, var_3.xz) | var_3.xz), firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(u_input.a, global0.b | global2.b), global0.b >> (26709u % 32u), ~(~24365u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.xyz)) * global3.xzw))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1083f, -1311f, -198f), global3.ywy)), global3.xxx, false)), _wgslsmith_f_op_vec3_f32(-var_0.yzx), true))));
}

