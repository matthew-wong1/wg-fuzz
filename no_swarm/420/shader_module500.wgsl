struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 25> = array<bool, 25>(true, false, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, true, true, true, true);

var<private> global2: array<u32, 1> = array<u32, 1>(4294967295u);

var<private> global3: f32 = 1030f;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(abs(1659f));
    global3 = var_0;
    global3 = _wgslsmith_f_op_f32(-1130f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - -615f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - 512f) + _wgslsmith_f_op_f32(floor(1374f)))) + _wgslsmith_f_op_f32(f32(-1f) * -490f)));
    global2 = array<u32, 1>();
    global2 = array<u32, 1>();
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1693f - _wgslsmith_f_op_f32(var_0 - var_0))), var_0, 1245f);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1842f, _wgslsmith_f_op_f32(-206f - 152f), _wgslsmith_f_op_f32(abs(817f)), -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())))));
    global0 = Struct_1(select(!global0.a, select(vec2<bool>(global0.c, arg_1.a.x), !(!global0.a), true), all(select(vec3<bool>(true, true, true), vec3<bool>(arg_1.c, false, false), select(vec3<bool>(arg_1.a.x, false, global0.a.x), vec3<bool>(true, global0.a.x, true), true)))), -3536i, true | arg_0.a.x);
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1639f))), var_0.x)))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + -1437f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x)), -1652f)));
    global3 = 1299f;
    global2 = array<u32, 1>();
    return Struct_1(global0.a, -1i, !any(global0.a));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    global0 = arg_1;
    let var_0 = 57367u;
    global1 = array<bool, 25>();
    global1 = array<bool, 25>();
    let var_1 = arg_1;
    return Struct_1(select(vec2<bool>(!(false && global1[_wgslsmith_index_u32(1u, 25u)]), false), !var_1.a, true), 12119i, global0.c);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = abs(~_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, global0.b), vec2<i32>(2147483647i, arg_2.b)), -vec2<i32>(u_input.b.x, arg_2.b))) >> (_wgslsmith_sub_vec2_u32(~(~vec2<u32>(43684u, 4294967295u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(0u, global2[_wgslsmith_index_u32(1u, 1u)]), ~(~vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 1u)])))) % vec2<u32>(32u));
    global3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3()).x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))))));
    let var_1 = global0.b;
    let var_2 = !vec3<bool>(arg_0.x, select(any(vec4<bool>(arg_2.a.x, false, global0.a.x, arg_0.x)), true, !(!global0.a.x)), any(!vec3<bool>(arg_0.x, false, arg_2.a.x)));
    var var_3 = true;
    return Struct_1(arg_0, ~select(1i, -54649i, abs(var_0.x) > _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_0.x, 1i, 12340i, -45124i))), _wgslsmith_div_i32(-u_input.b.x, arg_2.b) == (~global0.b >> ((global2[_wgslsmith_index_u32(select(12139u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(69395u, 1u)], 1u)], 1u)], false), 1u)] | global2[_wgslsmith_index_u32(countOneBits(global2[_wgslsmith_index_u32(92458u, 1u)]), 1u)]) % 32u)));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = arg_0.a;
    let var_1 = _wgslsmith_clamp_vec3_u32(~(~abs(vec3<u32>(48323u, global2[_wgslsmith_index_u32(39248u, 1u)], 109277u)) >> (vec3<u32>(~arg_1.x, ~1u, 103218u) % vec3<u32>(32u))), select(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1.x, arg_1.x, arg_1.x), vec3<u32>(0u, arg_1.x, arg_1.x) << (vec3<u32>(arg_1.x, 57983u, global2[_wgslsmith_index_u32(12081u, 1u)]) % vec3<u32>(32u))), ~min(vec3<u32>(global2[_wgslsmith_index_u32(arg_1.x, 1u)], 62547u, 8867u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], arg_1.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)]))), _wgslsmith_add_vec3_u32(vec3<u32>(~0u, ~1u, 21675u), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x, 54727u, 84274u) & vec3<u32>(24520u, arg_1.x, 5266u), abs(vec3<u32>(arg_1.x, arg_1.x, arg_1.x)))), select(select(!vec3<bool>(false, arg_0.a.x, false), select(vec3<bool>(arg_0.a.x, global0.a.x, true), vec3<bool>(arg_2, global0.a.x, false), var_0.x), vec3<bool>(false, global1[_wgslsmith_index_u32(71602u, 25u)], false)), !select(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 25u)], true), vec3<bool>(var_0.x, var_0.x, arg_2), vec3<bool>(false, true, true)), arg_0.a.x)), vec3<u32>(~(~arg_1.x | _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(66359u, 1u)], arg_1.x)), ~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10810u, 1u)], 1u)] | 32009u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 0u, 6197u), vec3<u32>(28796u, 4294967295u, arg_1.x))), global2[_wgslsmith_index_u32(firstLeadingBit(1u), 1u)] << ((_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(56841u, 1u)], 1u)], global2[_wgslsmith_index_u32(48944u, 1u)], arg_1.x), vec3<u32>(37902u, 27661u, 1u)) & select(arg_1.x, arg_1.x, global1[_wgslsmith_index_u32(91715u, 25u)])) % 32u)));
    return func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(1402f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-858f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1903f, 1429f)), _wgslsmith_f_op_f32(f32(-1f) * -782f)), -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-670f, 913f, _wgslsmith_f_op_f32(abs(-709f)), _wgslsmith_f_op_f32(-161f * -1305f))), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1.x, 25u)], false, global1[_wgslsmith_index_u32(126261u, 25u)]), select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(true, arg_0.a.x, true, global0.c), vec4<bool>(global1[_wgslsmith_index_u32(1u, 25u)], true, false, true)), vec4<bool>(false, arg_0.a.x, arg_0.c, global0.a.x)), select(select(vec4<bool>(true, global0.c, global1[_wgslsmith_index_u32(11809u, 25u)], arg_2), vec4<bool>(false, global0.a.x, global0.c, false), vec4<bool>(global0.a.x, global1[_wgslsmith_index_u32(4294967295u, 25u)], global0.c, var_0.x)), select(vec4<bool>(arg_2, global1[_wgslsmith_index_u32(66249u, 25u)], true, global0.c), vec4<bool>(true, global0.a.x, false, arg_0.a.x), arg_2), true), select(select(vec4<bool>(true, false, false, arg_2), vec4<bool>(false, var_0.x, false, global1[_wgslsmith_index_u32(var_1.x, 25u)]), vec4<bool>(var_0.x, true, var_0.x, true)), vec4<bool>(arg_0.a.x, false, true, true), true)))), Struct_1(select(arg_0.a, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1753f, 1650f, 1772f, -1462f)), Struct_1(arg_0.a, arg_3.x, true)).a, vec2<bool>(any(arg_0.a), true)), -15186i, true));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-197f, 1741f), vec2<f32>(-345f, 1000f), arg_0)) - _wgslsmith_div_vec2_f32(vec2<f32>(-1933f, 617f), vec2<f32>(119f, -146f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1692f, 1438f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-291f, -1525f) - vec2<f32>(-1000f, 1563f))))));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1403f, 1395f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), true)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-580f, var_0.x), vec2<f32>(-1144f, var_0.x))))))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(~(26013u << (global2[_wgslsmith_index_u32(4294967295u, 1u)] % 32u)) & ~global2[_wgslsmith_index_u32(abs(34903u), 1u)], 1u)], reverseBits(~0u))), 1u)];
    global0 = func_6(func_5(global0.a, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - 1000f), var_0.x, -532f))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(671f, -1612f, 1488f, var_0.x) * vec4<f32>(-708f, var_0.x, var_0.x, 192f))), func_2(Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 25u)], global0.c), 2147483647i, false), Struct_1(global0.a, global0.b, true)))), vec2<u32>(~1u, ~firstLeadingBit(select(0u, 0u, false))), !any(!select(vec3<bool>(true, arg_0, true), vec3<bool>(global0.c, global0.c, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 25u)]), true)), reverseBits(firstLeadingBit(_wgslsmith_mod_vec4_i32(abs(u_input.b), abs(u_input.b)))));
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(func_3()), func_6(Struct_1(global0.a, _wgslsmith_dot_vec2_i32(min(u_input.b.xy, u_input.b.zy), u_input.b.zz), global2[_wgslsmith_index_u32(1u, 1u)] != ~0u), ~(~vec2<u32>(1u, 1u)), !(831f <= var_0.x), firstLeadingBit(_wgslsmith_div_vec4_i32(-u_input.b, vec4<i32>(-1i, -9582i, 76447i, 0i) ^ u_input.b))));
    return Struct_1(select(vec2<bool>(global0.c, any(select(vec4<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 25u)], var_2.a.x, true, false), vec4<bool>(true, false, global0.c, false), vec4<bool>(global0.c, true, false, var_2.c)))), func_2(func_5(vec2<bool>(global0.a.x, var_2.a.x), vec3<f32>(774f, var_0.x, var_0.x), func_5(vec2<bool>(arg_0, arg_0), vec3<f32>(749f, var_0.x, -1115f), var_2)), Struct_1(func_4(vec4<f32>(478f, var_0.x, var_0.x, var_0.x), var_2).a, firstLeadingBit(global0.b), global2[_wgslsmith_index_u32(24444u, 1u)] > 15956u)).a, !(!(!global0.a))), -_wgslsmith_dot_vec2_i32(min(u_input.b.yx ^ u_input.b.wx, u_input.b.ww), firstTrailingBit(reverseBits(u_input.b.yy))), true);
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(global0.a, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1384f, _wgslsmith_f_op_f32(max(arg_0, 707f))))) != _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-396f, _wgslsmith_f_op_f32(arg_3 * arg_3)))));
    var var_1 = select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(all(!global0.a) && arg_1.a.x, -714f == arg_0, true | global1[_wgslsmith_index_u32(1u, 25u)], false), !vec4<bool>(all(vec3<bool>(true, true, true)), arg_1.a.x, global1[_wgslsmith_index_u32(15364u, 25u)], select(true, all(vec4<bool>(arg_1.a.x, global0.a.x, var_0.c, arg_1.c)), true)));
    let var_2 = Struct_1(func_5(vec2<bool>(true, arg_0 < -366f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(arg_3, arg_3, var_1.x)), _wgslsmith_div_f32(-1448f, 1000f), arg_3))), arg_1).a, arg_1.b, true);
    return arg_1;
}

fn func_8(arg_0: vec2<u32>, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global0 = func_7(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1112f * 1149f), _wgslsmith_f_op_f32(floor(-428f)))))), arg_3, 1i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 488f)), 168f)));
    let var_0 = vec4<bool>(true, false, !func_2(Struct_1(global0.a, arg_2, !global0.c), arg_3).c, false);
    var var_1 = var_0;
    let var_2 = vec3<i32>(-1i | _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b, arg_1, u_input.b.x), vec3<i32>(arg_3.b, u_input.a, arg_2)), _wgslsmith_sub_i32(func_7(726f, arg_3, -29862i, 500f).b, _wgslsmith_sub_i32(-7174i, 5513i)), select(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_2, -38839i), vec3<i32>(41713i, 32423i, 18996i)), true)), _wgslsmith_mod_i32(func_7(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(653f * 1262f), -1057f)), Struct_1(!arg_3.a, 1i, var_0.x), ~_wgslsmith_mod_i32(u_input.b.x, -1i), -1000f).b, func_1(func_7(-892f, func_6(Struct_1(global0.a, arg_2, true), vec2<u32>(global2[_wgslsmith_index_u32(arg_0.x, 1u)], arg_0.x), global0.a.x, u_input.b), -1i, _wgslsmith_div_f32(-568f, -674f)).c).b), _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(firstLeadingBit(u_input.b), vec4<i32>(2147483647i, u_input.b.x, 56820i, arg_2)), vec4<i32>(-1i, 0i, -global0.b, firstTrailingBit(arg_1)))));
    let var_3 = reverseBits(-var_2);
    return func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -698f)) * 565f)), Struct_1(vec2<bool>(!(!var_1.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(arg_0.x, 1u)], 4294967295u, 0u, global2[_wgslsmith_index_u32(20745u, 1u)]), _wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(2595u, 1u)], 1u, 4294967295u, 0u), vec4<u32>(global2[_wgslsmith_index_u32(61465u, 1u)], 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 1u)], 1u)], global2[_wgslsmith_index_u32(arg_0.x, 1u)]))), 25u)]), func_7(_wgslsmith_f_op_f32(step(-475f, 705f)), func_5(!vec2<bool>(arg_3.a.x, arg_3.c), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1229f, 575f, 911f))), Struct_1(arg_3.a, 1i, false)), _wgslsmith_sub_i32(~global0.b, func_5(vec2<bool>(arg_3.c, global0.a.x), vec3<f32>(1418f, 391f, 1000f), arg_3).b), 674f).b, false), u_input.a, _wgslsmith_f_op_f32(-913f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, -1134f)))))));
}

fn func_9(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(!global0.a, -10512i, global0.c);
    var_0 = arg_1;
    var_0 = arg_1;
    return func_2(func_5(!(!arg_1.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2052f, 775f, -306f)), vec3<f32>(arg_0.x, -1346f, arg_0.x), vec3<bool>(false, arg_1.a.x, true))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(468f, arg_0.x, 103f), vec3<f32>(530f, 1139f, arg_0.x))))), Struct_1(var_0.a, -abs(global0.b), func_7(_wgslsmith_f_op_f32(913f + -1000f), Struct_1(vec2<bool>(true, var_0.c), u_input.a, arg_1.c), func_7(1055f, arg_1, -4822i, -158f).b, -1000f).a.x)), func_2(arg_1, Struct_1(!var_0.a, ~(~(-1i)), true)));
}

fn func_10(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: f32) -> f32 {
    var var_0 = -42299i;
    var var_1 = true;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1639f))))))));
    let var_2 = global0.b;
    var var_3 = select(~_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_0.b, -18954i), u_input.b.x), u_input.b.xy, _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.ww, u_input.b.wz), _wgslsmith_mod_vec2_i32(vec2<i32>(3499i, 2147483647i), vec2<i32>(5904i, -2147483647i)))), min(abs(_wgslsmith_div_vec2_i32(u_input.b.wy, u_input.b.xx)), select(vec2<i32>(2147483647i, u_input.a >> (0u % 32u)), u_input.b.xx, global0.a.x)), func_4(vec4<f32>(-987f, arg_2.x, _wgslsmith_f_op_f32(abs(arg_2.x)), arg_3), arg_0).a);
    return _wgslsmith_f_op_f32(abs(arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(1320f + 797f);
    var var_1 = 4294967295u;
    global3 = _wgslsmith_f_op_f32(func_10(func_9(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1664f), -611f))), func_8(vec2<u32>(1u, 4294967295u), _wgslsmith_mult_i32(u_input.b.x, -1i ^ global0.b), ~firstTrailingBit(1i), func_7(_wgslsmith_f_op_f32(f32(-1f) * -2433f), func_1(global0.c), global0.b, _wgslsmith_f_op_f32(-713f + -1000f))), u_input.b.xxx), countOneBits(reverseBits(vec3<u32>(79282u, global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 1u)], 1u)])) & _wgslsmith_add_vec3_u32(vec3<u32>(1u, global2[_wgslsmith_index_u32(0u, 1u)], 0u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 1u)], global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(67710u, 1u)]))) ^ min(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(global2[_wgslsmith_index_u32(1u, 1u)], 1u, global2[_wgslsmith_index_u32(5103u, 1u)]), vec3<u32>(61821u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 56706u)), _wgslsmith_div_vec3_u32(vec3<u32>(35828u, global2[_wgslsmith_index_u32(4294967295u, 1u)], 1u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18440u, 1u)], 1u)], 1u)], 1u)], 1u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 4294967295u)), ~vec3<u32>(1u, 20551u, 37739u)), _wgslsmith_add_vec3_u32(abs(vec3<u32>(56153u, 27564u, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 1u)], 1u)], 5181u), vec3<u32>(20775u, global2[_wgslsmith_index_u32(13328u, 1u)], 4835u)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-685f - -1000f), _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(807f + 976f)), vec3<f32>(625f, _wgslsmith_f_op_f32(f32(-1f) * -109f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-775f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-957f + -884f)))));
    var var_2 = -654f;
    let var_3 = true;
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1021f * _wgslsmith_div_f32(-632f, _wgslsmith_f_op_f32(min(-275f, -664f))))));
    let var_5 = var_4;
    var var_6 = var_5;
    var var_7 = vec4<bool>((51403u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 1u)] % 32u)) <= 0u, var_3, true, -1i >= ((select(u_input.a, global0.b, global0.c) ^ 2147483647i) >> (0u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

