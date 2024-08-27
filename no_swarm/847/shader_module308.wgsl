struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(false, -1i), Struct_1(false, 2147483647i), Struct_1(true, i32(-2147483648)), Struct_1(true, 54058i), Struct_1(false, -1i), Struct_1(true, -1i));

var<private> global3: array<vec4<f32>, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-169f, -951f, 259f) * vec3<f32>(-1000f, 1740f, -610f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(555f, 796f, -2178f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1236f, -1192f, 595f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(322f, -1492f, -881f), vec3<f32>(-1000f, 2065f, 1513f)))))));
    var var_1 = ~reverseBits(~(vec4<u32>(11934u, arg_2, u_input.a.x, 9587u) | vec4<u32>(u_input.b, 4294967295u, u_input.a.x, 0u)));
    global0 = arg_2;
    var var_2 = global2[_wgslsmith_index_u32(7462u, 6u)];
    var var_3 = Struct_2(Struct_1(arg_0, var_2.b), _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(47262u, u_input.b, arg_2, 0u)), ~select(vec4<u32>(var_1.x, arg_2, var_1.x, 20827u), vec4<u32>(var_1.x, 80303u, arg_2, u_input.a.x), false)), 5u)] * _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(0u, 5u)] * vec4<f32>(-1770f, _wgslsmith_f_op_f32(-157f - 404f), _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(select(677f, 1094f, var_2.a))))), Struct_1(var_2.a, ~(i32(-1i) * -1i) & _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b, global1.b), vec2<i32>(var_2.b, global1.b)), _wgslsmith_clamp_i32(0i, 24009i, 24423i))), _wgslsmith_add_vec2_u32(select(~select(vec2<u32>(arg_2, 4294967295u), var_1.wy, arg_3.zw), _wgslsmith_mult_vec2_u32(u_input.a, _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(0u, 1u))), !arg_3.xx), firstLeadingBit(u_input.a)), _wgslsmith_mult_i32(var_2.b, var_2.b & ~_wgslsmith_mult_i32(0i, 21315i)));
    return firstTrailingBit(var_3.a.b);
}

fn func_1() -> bool {
    var var_0 = Struct_1(all(!(!(!vec3<bool>(global1.a, global1.a, global1.a)))), func_2(true, false, _wgslsmith_mult_u32(0u, u_input.b), !vec4<bool>(global1.a, false, global1.a, global1.a)) << (u_input.c % 32u));
    var var_1 = Struct_1(global1.a, ~global1.b);
    let var_2 = ~21166i;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1245f, -235f, _wgslsmith_f_op_f32(select(-245f, 1348f, false)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(881f, 709f, -214f) + vec3<f32>(1f, 1f, 1f))))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1307f)) - _wgslsmith_f_op_f32(547f - -1585f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(799f, -171f) + -479f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -913f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-155f, -372f, 342f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2383f, 452f, 1246f), vec3<f32>(-2464f, 911f, -964f), vec3<bool>(true, false, true))), vec3<bool>(true, true, true)))))));
    global2 = array<Struct_1, 6>();
    return any(!vec3<bool>(true, _wgslsmith_sub_i32(var_0.b, var_0.b) < reverseBits(-1i), any(!vec4<bool>(true, true, false, var_1.a))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    global3 = array<vec4<f32>, 5>();
    global1 = Struct_1(global1.a, min(_wgslsmith_mod_i32(global1.b | ~global1.b, ~arg_0.b), ~(-1738i)));
    var var_0 = arg_0;
    var var_1 = Struct_2(Struct_1(true & global1.a, global1.b), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1546f, _wgslsmith_f_op_f32(floor(-226f)), 1355f, arg_1.x), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(527f)), -1144f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(-777f, -1620f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(global3[_wgslsmith_index_u32(u_input.a.x, 5u)], vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 123f), vec4<bool>(global1.a, true, true, false)))))))), Struct_1(!all(vec2<bool>(false, false)), var_0.b), u_input.a, -2147483647i);
    var var_2 = ~(select(vec3<u32>(1u, _wgslsmith_clamp_u32(var_1.d.x, 43272u, 22377u), 4294967295u), vec3<u32>(0u, ~var_1.d.x, _wgslsmith_div_u32(65379u, u_input.d)), !all(vec3<bool>(false, var_1.a.a, var_0.a))) ^ _wgslsmith_sub_vec3_u32(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 78722u, var_1.d.x), vec3<u32>(u_input.c, 44885u, 5018u))), ~vec3<u32>(var_1.d.x, 4294967295u, u_input.d) | vec3<u32>(1u, 1u, 61891u)));
    return select(any(!vec4<bool>(var_1.c.a & false, all(vec3<bool>(true, arg_0.a, false)), arg_0.a != false, all(vec3<bool>(var_1.c.a, var_0.a, true)))), !(var_1.c.a != var_0.a) | var_1.c.a, !all(select(vec2<bool>(false, true), vec2<bool>(false, var_1.a.a), arg_0.a)) && false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(-523f, all(vec4<bool>(true, !func_1(), select(func_3(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], vec3<f32>(1571f, -914f, -536f)), true, func_3(Struct_1(true, global1.b), vec3<f32>(-1469f, -331f, -749f))), !global1.a)));
    global2 = array<Struct_1, 6>();
    var var_1 = _wgslsmith_f_op_f32(691f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, 196f) * _wgslsmith_f_op_f32(1823f - -1009f))))));
    let var_2 = vec2<bool>(true, all(!vec4<bool>(var_0.b, !global1.a, !var_0.b, !var_0.b)));
    let var_3 = global2[_wgslsmith_index_u32(u_input.a.x, 6u)];
    var var_4 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(4294967295u, ~64403u), _wgslsmith_mod_vec4_i32(~(~(-vec4<i32>(58859i, global1.b, 2147483647i, -2147483647i))), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_3.b, global1.b), -19533i, var_3.b, _wgslsmith_add_i32(0i, -2973i)), -(~vec4<i32>(57988i, var_3.b, -48659i, var_3.b)))), -965f, 1i, global1.b);
}

