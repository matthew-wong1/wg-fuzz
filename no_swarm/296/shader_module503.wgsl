struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(19034u, 2042u, 1u, 33621u);

var<private> global1: u32;

var<private> global2: array<Struct_2, 22>;

var<private> global3: bool = false;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> f32 {
    let var_0 = 1f;
    global1 = 4294967295u;
    var var_1 = global2[_wgslsmith_index_u32(~21521u, 22u)];
    var var_2 = var_1.a.x >= (~_wgslsmith_add_u32(arg_1, 21178u) & 1u);
    var var_3 = Struct_2(_wgslsmith_clamp_vec4_u32(var_1.a, min(vec4<u32>(0u, _wgslsmith_mod_u32(11012u, 51127u), var_1.a.x, ~arg_1), ~vec4<u32>(1u, arg_2.a.x, 6555u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, select(101471u, 4294967295u, false), 0u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u) << (vec4<u32>(1u, var_1.a.x, 9278u, arg_0.a.x) % vec4<u32>(32u)))));
    return _wgslsmith_f_op_f32(round(var_0));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    global0 = countOneBits(firstLeadingBit(~firstLeadingBit(vec4<u32>(3422u, 15618u, global0.x, arg_1.a) >> (vec4<u32>(arg_1.a, global0.x, global0.x, 4294967295u) % vec4<u32>(32u)))));
    var var_0 = _wgslsmith_mult_u32(global0.x, 1u);
    global3 = any(vec3<bool>(!(!(u_input.a <= u_input.a)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, true, false))), any(vec4<bool>(true, true, false, all(vec3<bool>(false, true, true))))));
    var var_1 = vec4<bool>(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a) == reverseBits(1i), !(_wgslsmith_f_op_f32(func_2(Struct_3(vec3<u32>(84210u, 18385u, global0.x)), 5096u, Struct_3(global0.wwy))) <= arg_0), any(vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true)), true & all(vec2<bool>(true, true)), true)), true);
    let var_2 = ~vec3<i32>(i32(-1i) * -28758i, _wgslsmith_add_i32(35711i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2215i, u_input.a, -7488i), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -47829i, -2147483647i), vec4<i32>(-6080i, u_input.a, u_input.a, u_input.a)))), u_input.a);
    return arg_1.a;
}

fn func_1(arg_0: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1283f, -1000f, 838f, -305f)))))));
    var var_1 = func_3(_wgslsmith_f_op_f32(func_2(Struct_3(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, global0.x), global0.zwx)), select(~4294967295u, 0u, arg_0) ^ reverseBits(_wgslsmith_mult_u32(4294967295u, 0u)), Struct_3(~(~vec3<u32>(global0.x, 74837u, global0.x))))), Struct_1(~1u));
    var var_2 = select(~(~(~(vec4<u32>(global0.x, global0.x, 4294967295u, global0.x) & vec4<u32>(global0.x, global0.x, 4294967295u, global0.x)))), abs(~(~vec4<u32>(8822u, 7953u, 6824u, global0.x)) & ~(vec4<u32>(global0.x, 19594u, 0u, global0.x) << (vec4<u32>(global0.x, 31569u, 11685u, global0.x) % vec4<u32>(32u)))), !(!(!vec4<bool>(arg_0, true, true, true))));
    let var_3 = vec3<bool>(all(select(!select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(true, false, arg_0, false), false), !vec4<bool>(arg_0, arg_0, true, true), !any(vec3<bool>(true, false, true)))), arg_0, _wgslsmith_div_f32(-1349f, _wgslsmith_f_op_f32(-var_0.x)) > var_0.x);
    var var_4 = global2[_wgslsmith_index_u32(firstLeadingBit(var_2.x), 22u)];
    return var_3.zx;
}

fn func_4(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_1(1u);
    var var_1 = Struct_3(global0.xww);
    var var_2 = (_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(30134i, u_input.a, 29152i), vec3<i32>(2147483647i, -10449i, -16139i)), u_input.a, -u_input.a), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, 23550i), vec3<i32>(u_input.a, -11090i, -25104i)), vec3<i32>(u_input.a, 31241i, -28204i), reverseBits(vec3<i32>(u_input.a, -2147483647i, 2147483647i)))) & 0i) >> ((_wgslsmith_sub_u32(_wgslsmith_add_u32(~var_0.a, 0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, 745u, global0.x, global0.x), vec4<u32>(1u, 39474u, 0u, 69684u))) ^ ~(0u ^ arg_0.x)) % 32u);
    let var_3 = var_0;
    var_1 = Struct_3(~(vec3<u32>(var_0.a, _wgslsmith_sub_u32(4294967295u, 1u), 26475u) | select(vec3<u32>(4294967295u, var_3.a, arg_0.x), vec3<u32>(var_1.a.x, 0u, 4294967295u), vec3<bool>(true, true, true))));
    return Struct_3(vec3<u32>(27932u, 0u, ~var_3.a) ^ global0.xzw);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1112f)) < _wgslsmith_f_op_f32(floor(1376f)), true, !all(vec2<bool>(true, true)));
    let var_0 = func_4(~(~select(~global0.zy, ~vec2<u32>(global0.x, 73436u), func_1(false))));
    var var_1 = ~(var_0.a.x | _wgslsmith_add_u32(max(4294967295u, global0.x), ~(~global0.x)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-767f - -294f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1500f - 687f) * 641f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-354f - _wgslsmith_f_op_f32(func_2(Struct_3(vec3<u32>(4294967295u, 31496u, global0.x)), global0.x, var_0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-886f, -582f, false)), _wgslsmith_f_op_f32(f32(-1f) * -309f))))))));
    global2 = array<Struct_2, 22>();
    let var_3 = Struct_3(var_0.a);
    let var_4 = ~(~vec4<u32>(select(firstLeadingBit(global0.x), abs(var_0.a.x), func_1(true).x), ~max(70942u, var_3.a.x), reverseBits(var_0.a.x), var_3.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(398f, select(firstLeadingBit(min(-vec3<i32>(2147483647i, -15661i, -2147483647i), vec3<i32>(u_input.a, u_input.a, -16845i) & vec3<i32>(1i, 2147483647i, u_input.a))), vec3<i32>(0i, ~min(u_input.a, -69343i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -2147483647i, 30688i), vec3<i32>(u_input.a, u_input.a, 1i)))), !(0u > _wgslsmith_add_u32(34288u, var_4.x))), 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, var_2.x, -110f, 848f), vec4<f32>(-347f, -707f, -1000f, var_2.x), true))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-138f, -1000f, 757f, var_2.x) * vec4<f32>(var_2.x, 1286f, -548f, var_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, 541f, -962f, var_2.x), vec4<f32>(-1014f, 213f, -864f, var_2.x)))), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-445f, var_2.x, -412f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x), vec3<f32>(1000f, var_2.x, var_2.x))))));
}

