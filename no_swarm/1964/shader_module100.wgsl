struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(-17558i, 2147483647i), Struct_1(32190i, 2147483647i));

var<private> global1: f32;

var<private> global2: array<i32, 2>;

var<private> global3: Struct_1 = Struct_1(i32(-2147483648), 2147483647i);

var<private> global4: Struct_1 = Struct_1(-1i, 3325i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> bool {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~min(_wgslsmith_add_u32(1u, 54082u), countOneBits(91485u)), _wgslsmith_mod_u32(1u, ~1u)), 2u)];
    global4 = Struct_1(global2[_wgslsmith_index_u32(~(~(~countOneBits(1u))), 2u)], ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(global4.b, -11990i, -26447i) >> (vec3<u32>(0u, 1u, 25483u) % vec3<u32>(32u))), vec3<i32>(16517i, ~var_0.a, _wgslsmith_sub_i32(global3.a, u_input.a))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-538f + -495f))) + _wgslsmith_f_op_f32(trunc(1153f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 1589f)) - -421f), 841f));
    var var_1 = _wgslsmith_add_u32(~abs(_wgslsmith_mult_u32(12616u, 37970u)), 81009u) << ((1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))) % 32u);
    let var_2 = Struct_1(~global4.b, select(global2[_wgslsmith_index_u32(abs(1247u), 2u)], -1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-3767i, u_input.a, 68590i), max(vec3<i32>(0i, u_input.a, -40779i), vec3<i32>(69166i, 2147483647i, 27836i))), true));
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = 0u;
    let var_1 = global0[_wgslsmith_index_u32(5437u, 2u)];
    global0 = array<Struct_1, 2>();
    var var_2 = !(~var_0 <= ~3574u);
    global3 = Struct_1(arg_2.x, ~arg_1.b | ~arg_3.a);
    return var_0;
}

fn func_2() -> Struct_1 {
    global3 = global0[_wgslsmith_index_u32(abs(0u), 2u)];
    let var_0 = Struct_1(-20492i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~max(vec4<u32>(36288u, 44146u, 23605u, 4294967295u), vec4<u32>(1788u, 10201u, 29937u, 4239u))) % 32u), -2147483647i);
    let var_1 = global0[_wgslsmith_index_u32(func_4(vec3<bool>(false, func_3(), true), global0[_wgslsmith_index_u32(~(~abs(1u)), 2u)], -_wgslsmith_add_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(global3.b, 18205i), vec2<i32>(global4.b, -2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(global3.b, 0i), _wgslsmith_mod_vec2_i32(vec2<i32>(582i, -63152i), vec2<i32>(105502i, var_0.a)))), var_0), 2u)];
    let var_2 = vec3<i32>(global3.a & global2[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(0u, 73869u, 1u) | ~1u), 2u)], global4.b, global3.a);
    let var_3 = ~4294967295u;
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<i32>) -> u32 {
    global3 = func_2();
    let var_0 = global0[_wgslsmith_index_u32(0u, 2u)];
    global3 = func_2();
    let var_1 = !vec2<bool>(arg_1.x == arg_1.x, select(895u, abs(0u), true) < 1u);
    var var_2 = func_2();
    return firstTrailingBit(func_4(!vec3<bool>(select(true, arg_1.x, false), true, var_1.x), Struct_1(_wgslsmith_add_i32(-57084i >> (1u % 32u), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(58455u, 2u)], global2[_wgslsmith_index_u32(11578u, 2u)])), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~4294967295u), 2u)]), vec2<i32>(arg_0.a, firstLeadingBit(var_0.a)), Struct_1(~func_2().a, (-1i >> (1u % 32u)) | global2[_wgslsmith_index_u32(abs(0u), 2u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(max(72992u, 10628u), 55393u, 10391u, ~4294967295u), vec4<u32>(select(1u, ~6263u, all(vec4<bool>(true, false, false, false))), func_1(global0[_wgslsmith_index_u32(abs(48098u), 2u)], vec2<bool>(true, true), abs(vec2<i32>(global2[_wgslsmith_index_u32(63986u, 2u)], 8987i))), ~_wgslsmith_div_u32(1u, 1u), 1u)), 65815u), 2u)];
    let var_1 = func_2();
    let var_2 = global0[_wgslsmith_index_u32(1u, 2u)];
    let var_3 = select(any(vec4<bool>(!(-1i >= var_2.b), select(true, true, func_3()), true, !all(vec3<bool>(true, true, false)))), all(select(vec2<bool>(any(vec3<bool>(false, true, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, false)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)))), all(vec4<bool>(true, global2[_wgslsmith_index_u32(2128u, 2u)] >= var_2.a, true, true)) & true);
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_add_i32(~32713i, (min(var_1.b, 1i) >> (~4294967295u % 32u)) << (~0u % 32u)), abs(1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(165f, -1151f))))))), _wgslsmith_f_op_f32(482f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1000f, -362f)))))));
}

