struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 9044u;

var<private> global1: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(4294967295u, 32856u, 1u), vec3<u32>(60447u, 31876u, 20318u), vec3<u32>(70122u, 0u, 58688u), vec3<u32>(1u, 31758u, 4294967295u), vec3<u32>(0u, 4858u, 62437u), vec3<u32>(79270u, 6283u, 43785u), vec3<u32>(42090u, 39110u, 4294967295u), vec3<u32>(35732u, 6562u, 14299u));

var<private> global2: vec2<i32>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_3) -> f32 {
    let var_0 = countOneBits(arg_0.c);
    let var_1 = u_input.c;
    let var_2 = Struct_1(1u);
    let var_3 = u_input.a << (var_1 % 32u);
    var var_4 = Struct_3(arg_0.c, true, _wgslsmith_mult_vec4_i32(~((arg_2.c ^ arg_2.c) << (abs(vec4<u32>(arg_2.d, arg_2.d, 0u, 4294967295u)) % vec4<u32>(32u))), ~abs(arg_0.b.c)), _wgslsmith_add_u32(~abs(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(73297u, arg_0.a), _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(arg_2.d, 52982u)))) << (1u % 32u));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2258f)) - _wgslsmith_f_op_f32(sign(157f))) - _wgslsmith_f_op_f32(f32(-1f) * -891f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(196f * 878f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1546f, 914f)) * _wgslsmith_f_op_f32(select(-1147f, 163f, true))), _wgslsmith_f_op_f32(1727f * _wgslsmith_f_op_f32(591f - -1164f)))))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: i32) -> u32 {
    var var_0 = ~arg_2.x;
    var var_1 = !all(select(select(!vec2<bool>(arg_1.b, true), !vec2<bool>(arg_1.b, true), all(vec3<bool>(false, true, arg_1.b))), vec2<bool>(true, true), vec2<bool>(true, arg_1.b)));
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-611f * -726f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-248f, arg_1.a))) + vec2<f32>(_wgslsmith_f_op_f32(round(arg_1.a)), -305f))))));
    var var_4 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~50064u, u_input.c), 8u)];
    return var_4.x;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> vec4<i32> {
    let var_0 = Struct_4(func_4(2147483647i | u_input.a, Struct_2(_wgslsmith_f_op_f32(func_3(Struct_4(51914u, Struct_3(0i, false, vec4<i32>(global2.x, 2147483647i, -2147483647i, -1i), 83018u), 24664i), any(arg_1), Struct_3(-1i, arg_0, vec4<i32>(-4339i, 8597i, u_input.a, global2.x), 32599u))), any(vec4<bool>(true, true, true, false))), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, global2.x, global2.x), vec3<i32>(19387i, 1i, 1i) & vec3<i32>(global2.x, 1i, global2.x)), abs(-vec3<i32>(global2.x, 9789i, global2.x)), vec3<i32>(min(u_input.a, 42366i), -2147483647i, _wgslsmith_mod_i32(global2.x, 15059i))), -(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-1i, global2.x, global2.x)) ^ 0i)), Struct_3(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, -15826i, global2.x)), firstTrailingBit(vec3<i32>(0i, u_input.a, global2.x))), vec3<i32>(abs(u_input.a), 1i, 2147483647i)), _wgslsmith_mod_i32(u_input.a >> (22227u % 32u), global2.x) != _wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, global2.x), _wgslsmith_div_i32(global2.x, 0i)), -vec4<i32>(global2.x << (0u % 32u), _wgslsmith_add_i32(-2147483647i, 74649i), -9437i | global2.x, _wgslsmith_div_i32(2147483647i, -2147483647i)), ~countOneBits(~u_input.c)), _wgslsmith_dot_vec3_i32(select(~abs(vec3<i32>(u_input.a, global2.x, 76923i)), ~(vec3<i32>(49280i, u_input.a, 0i) >> (global1[_wgslsmith_index_u32(u_input.c, 8u)] % vec3<u32>(32u))), select(!arg_1.wwx, select(vec3<bool>(false, true, false), arg_1.yxy, vec3<bool>(arg_0, false, arg_0)), vec3<bool>(arg_0, true, arg_0))), vec3<i32>(min(~(-51830i), ~48510i), abs(_wgslsmith_add_i32(u_input.a, u_input.a)), u_input.a >> (15467u % 32u))));
    return var_0.b.c;
}

fn func_1() -> i32 {
    global0 = 4294967295u;
    var var_0 = Struct_3(reverseBits(~(_wgslsmith_sub_i32(-1i, global2.x) | ~global2.x)), true, -_wgslsmith_sub_vec4_i32(func_2(all(vec3<bool>(true, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), select(-vec4<i32>(10932i, 0i, 34399i, -18574i), ~vec4<i32>(global2.x, -2147483647i, u_input.a, 28778i), vec4<bool>(false, false, true, false))), ~_wgslsmith_div_u32(4294967295u, u_input.c));
    var var_1 = !(!vec4<bool>(true, true, var_0.b && true, !var_0.b));
    global0 = var_0.d;
    var var_2 = Struct_1(~_wgslsmith_div_u32(_wgslsmith_mod_u32(firstTrailingBit(4294967295u), _wgslsmith_div_u32(1u, 4294967295u)), 0u));
    return _wgslsmith_div_i32(var_0.c.x, -countOneBits(countOneBits(i32(-1i) * -73709i)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_4) -> Struct_5 {
    var var_0 = Struct_3(~(-1i), all(select(!select(vec2<bool>(false, true), vec2<bool>(arg_1.b.b, false), arg_1.b.b), vec2<bool>(true, !arg_1.b.b), vec2<bool>(any(vec3<bool>(false, false, false)), arg_1.b.b))), vec4<i32>(_wgslsmith_dot_vec4_i32(-(arg_1.b.c << (vec4<u32>(4294967295u, 30895u, 927u, 1u) % vec4<u32>(32u))), arg_1.b.c | _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, global2.x), arg_1.b.c)), 2147483647i ^ _wgslsmith_clamp_i32(20316i, _wgslsmith_mult_i32(1i, global2.x), 1i), 32156i, u_input.a), 1u);
    let var_1 = Struct_5(arg_1.a >> (1u % 32u), var_0.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1307f, -1545f, -2424f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1129f, 525f, -268f) - vec3<f32>(458f, -2356f, -901f))) - vec3<f32>(_wgslsmith_div_f32(-511f, 372f), _wgslsmith_f_op_f32(abs(214f)), -1285f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(626f, -986f, 1476f)), true)), select(!(!vec2<bool>(var_0.b, var_0.b)), vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, arg_1.b.b, false), arg_1.b.b)), all(!vec2<bool>(var_0.b, var_0.b))), select(select(!vec2<bool>(arg_1.b.b, var_0.b), vec2<bool>(true, var_0.b), !var_0.b), vec2<bool>(false, true), select(!vec2<bool>(arg_1.b.b, false), vec2<bool>(true, true), vec2<bool>(true, true)))), 23891i);
    var var_2 = Struct_5(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.d, 0u) | 32288u, 15781u), _wgslsmith_add_u32(~reverseBits(~0u), 31629u), _wgslsmith_f_op_vec3_f32(min(var_1.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(1000f - -1000f), var_1.c.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(var_1.c, vec3<f32>(-227f, var_1.c.x, var_1.c.x))))), var_0.b)))), !select(!select(vec2<bool>(true, true), vec2<bool>(false, var_1.d.x), var_0.b), vec2<bool>(true, arg_0.x >= global2.x), all(!vec4<bool>(var_0.b, false, true, var_1.d.x))), global2.x);
    let var_3 = Struct_5(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, 1u, 4294967295u, var_1.a) | vec4<u32>(arg_1.b.d, var_2.a, var_0.d, u_input.b.x)), ~(vec4<u32>(29796u, var_0.d, var_1.a, u_input.c) & vec4<u32>(2509u, u_input.b.x, 40492u, 4294967295u)))), _wgslsmith_add_u32(_wgslsmith_mod_u32(reverseBits(~u_input.b.x), ~u_input.b.x), ~firstLeadingBit(arg_1.b.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.c.x, -1269f, -1211f), _wgslsmith_f_op_vec3_f32(select(var_1.c, vec3<f32>(var_1.c.x, -2410f, 2458f), vec3<bool>(false, true, var_0.b))), vec3<bool>(true, true, true))))), select(select(select(!var_1.d, var_2.d, !vec2<bool>(arg_1.b.b, false)), select(select(var_1.d, var_1.d, arg_1.b.b), !var_2.d, all(vec3<bool>(arg_1.b.b, var_1.d.x, var_0.b))), select(!var_1.d, !var_2.d, arg_1.b.b != true)), select(!select(vec2<bool>(false, var_0.b), vec2<bool>(true, true), var_0.b), !vec2<bool>(var_2.d.x, true), select(select(var_1.d, vec2<bool>(var_1.d.x, false), true), select(vec2<bool>(true, var_2.d.x), vec2<bool>(false, var_2.d.x), var_2.d.x), !var_1.d.x)), select(vec2<bool>(any(var_1.d), false || var_2.d.x), select(!var_1.d, vec2<bool>(true, false), false), all(vec2<bool>(var_1.d.x, false)) != all(vec2<bool>(var_2.d.x, arg_1.b.b)))), ~abs(27328i ^ u_input.a));
    var var_4 = -1561f;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec3<bool>(true, all(vec3<bool>(true, true, false)), true), vec3<bool>(true, true, true), false);
    var var_1 = u_input.b.x;
    let var_2 = u_input.b;
    let var_3 = Struct_3(~_wgslsmith_div_i32(-_wgslsmith_sub_i32(1i, 19653i), -13045i), any(vec4<bool>(!var_0.x, select(false, false, true), true, false)) | true, vec4<i32>(-1i, ~(-27886i), global2.x, u_input.a), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(var_2.x, 8u)], ~_wgslsmith_div_vec3_u32(global1[_wgslsmith_index_u32(58529u, 8u)], vec3<u32>(var_2.x, var_2.x, 10695u))), countOneBits(countOneBits(0u))));
    let var_4 = global2.x;
    var var_5 = !var_3.b;
    global1 = array<vec3<u32>, 8>();
    let var_6 = func_5(vec4<i32>(func_1(), var_3.a, countOneBits(min(u_input.a, ~var_3.a)), u_input.a), Struct_4(_wgslsmith_mod_u32(70884u, _wgslsmith_dot_vec2_u32(var_2, vec2<u32>(1u, 1u))), Struct_3(-1i, _wgslsmith_clamp_u32(var_3.d, var_2.x, var_2.x) == _wgslsmith_sub_u32(4294967295u, 1u), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 34167i, var_3.c.x, global2.x) << (vec4<u32>(var_3.d, var_2.x, 0u, u_input.c) % vec4<u32>(32u)), -var_3.c, _wgslsmith_mult_vec4_i32(var_3.c, var_3.c)), var_3.d), 8053i));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(68920u, 32877u), 4294967295u >> (var_3.d % 32u))), vec2<f32>(-851f, _wgslsmith_f_op_f32(-var_6.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -vec2<i32>(var_3.c.x, var_6.e), func_5(vec4<i32>(~_wgslsmith_mod_i32(u_input.a, 51209i), _wgslsmith_mult_i32(_wgslsmith_div_i32(-35711i, 22830i), -var_6.e), _wgslsmith_sub_i32(global2.x, 422i) & -var_3.c.x, ~31615i), Struct_4(0u, Struct_3(~(-1i), any(vec2<bool>(false, true)), var_3.c, var_6.b), 0i)).c);
}

