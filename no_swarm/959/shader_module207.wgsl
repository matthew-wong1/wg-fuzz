struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

var<private> global1: bool;

var<private> global2: Struct_2;

var<private> global3: array<vec3<i32>, 7>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(sign(global2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * _wgslsmith_f_op_f32(-global2.a.x))))));
    global3 = array<vec3<i32>, 7>();
    var var_1 = reverseBits(global0[_wgslsmith_index_u32(abs(min(u_input.a, u_input.a)), 5u)]);
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -246f)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global2.a * global2.a)))) * vec2<f32>(_wgslsmith_f_op_f32(exp2(global2.a.x)), 364f)), true);
    global3 = array<vec3<i32>, 7>();
    return 0i;
}

fn func_4(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = firstLeadingBit(~(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 1u), ~vec2<u32>(u_input.b, 31834u), firstTrailingBit(vec2<u32>(u_input.a, u_input.a)))));
    let var_1 = min(_wgslsmith_div_u32(~countOneBits(~u_input.b), var_0.x), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.a, var_0.x) >> (vec3<u32>(var_0.x, 1u, u_input.a) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 68076u, 121117u), vec3<u32>(var_0.x, var_0.x, u_input.a), vec3<u32>(var_0.x, 10485u, 137048u))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 62672u, var_0.x), vec3<u32>(1u, 1u, u_input.b)), var_0.x, u_input.b)), ~(var_0.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(13017u, 3197u, 1u), vec3<u32>(1u, u_input.a, 997u)) % 32u))));
    let var_2 = _wgslsmith_mult_vec4_i32(-vec4<i32>(-(arg_0.a >> (u_input.a % 32u)), -arg_0.a | -arg_0.a, reverseBits(max(2147483647i, 55646i)), -23935i | arg_0.a), max(abs(min(vec4<i32>(21695i, arg_0.a, 1i, -31842i), ~vec4<i32>(0i, 2147483647i, 0i, -24364i))), ~(~vec4<i32>(arg_0.a, 2147483647i, arg_0.a, arg_0.a) ^ _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a, 7366i, arg_0.a, 0i), vec4<i32>(arg_0.a, 0i, arg_0.a, arg_0.a)))));
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(-global2.a), all(select(vec3<bool>(global2.b, global2.b, arg_0.c.b), vec3<bool>(476f > global2.a.x, true, any(vec2<bool>(false, true))), !any(vec3<bool>(true, global2.b, global2.b)))));
    var var_3 = max(var_1, firstTrailingBit(var_0.x));
    return _wgslsmith_div_vec2_f32(global2.a, arg_0.c.a);
}

fn func_2() -> Struct_3 {
    var var_0 = global2.a.x;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(func_4(Struct_3(_wgslsmith_add_i32(_wgslsmith_sub_i32(-13072i, 0i), func_3(0i, Struct_1(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.a.x)) - _wgslsmith_f_op_f32(trunc(global2.a.x))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, -1177f) * global2.a), global2.b)))), false);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1721f));
    var var_2 = Struct_3(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(25841u, 5u)]), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, ~0i), _wgslsmith_mult_vec2_i32(-vec2<i32>(-34813i, -5381i), global0[_wgslsmith_index_u32(u_input.a, 5u)]))), -1000f, Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-267f, var_1.a.x)), vec2<f32>(var_1.a.x, var_1.a.x), true)), !any(select(vec4<bool>(false, var_1.b, global2.b, global2.b), vec4<bool>(false, false, true, var_1.b), vec4<bool>(global2.b, var_1.b, true, true)))));
    let var_3 = reverseBits(u_input.a);
    return Struct_3(2147483647i, global2.a.x, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1234f) * _wgslsmith_f_op_f32(select(-1000f, 1015f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.x, 281f)) * _wgslsmith_f_op_f32(global2.a.x - global2.a.x))), global2.b));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-521f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-269f)) + arg_0.b) * _wgslsmith_f_op_f32(ceil(arg_0.b))) - 753f));
    let var_1 = arg_0;
    global1 = var_1.c.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.c.a.x, -1702f, !all(arg_1))), arg_0.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1051f, var_0), arg_0.b)))));
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(arg_0.c.a)), var_1.c.b);
    return var_1.c;
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> bool {
    global2 = func_5(func_2(), vec4<bool>(func_2().c.b, all(select(vec4<bool>(global2.b, arg_1.b, global2.b, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, arg_1.b, global2.b), arg_1.b), global2.b)), !(all(vec3<bool>(global2.b, false, global2.b)) != arg_1.b), any(select(!vec3<bool>(false, arg_1.b, arg_1.b), select(vec3<bool>(global2.b, global2.b, arg_1.b), vec3<bool>(global2.b, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, true, arg_1.b)), !vec3<bool>(arg_1.b, arg_1.b, arg_1.b)))), -66174i);
    let var_0 = true;
    global3 = array<vec3<i32>, 7>();
    let var_1 = select(!(!select(vec2<bool>(arg_1.b, false), select(vec2<bool>(false, true), vec2<bool>(false, arg_1.b), vec2<bool>(global2.b, global2.b)), true)), vec2<bool>(true, false), global2.b);
    let var_2 = -countOneBits(arg_0);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a.x;
    var var_1 = vec2<bool>(false, !(!(!global2.b)) & (true && (global2.b == !global2.b)));
    var_1 = select(!select(vec2<bool>(func_1(18668i, Struct_2(global2.a, global2.b), 4294967295u), func_5(Struct_3(1i, -258f, Struct_2(global2.a, var_1.x)), vec4<bool>(true, false, global2.b, true), 47700i).b), !vec2<bool>(global2.b, true), var_1.x), select(!select(select(vec2<bool>(false, false), vec2<bool>(global2.b, false), vec2<bool>(true, true)), select(vec2<bool>(var_1.x, true), vec2<bool>(true, false), var_1.x), !vec2<bool>(var_1.x, false)), select(vec2<bool>(true, true), !select(vec2<bool>(false, var_1.x), vec2<bool>(false, var_1.x), global2.b), global2.b), !(!select(vec2<bool>(var_1.x, global2.b), vec2<bool>(var_1.x, true), var_1.x))), !(!select(vec2<bool>(global2.b, false), select(vec2<bool>(var_1.x, global2.b), vec2<bool>(false, var_1.x), var_1.x), select(vec2<bool>(false, true), vec2<bool>(var_1.x, global2.b), var_1.x))));
    global3 = array<vec3<i32>, 7>();
    let var_2 = Struct_3(-16947i, -844f, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1442f, global2.a.x))))), false));
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.c.a.x, _wgslsmith_f_op_f32(-global2.a.x))));
    var var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(332f, var_2.c.a.x, 1748f, -2196f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1351f, -1235f, var_3.x, 1093f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, -1925f, var_3.x, 1744f) * vec4<f32>(-262f, 1668f, global2.a.x, var_2.b))), vec4<f32>(399f, -1131f, _wgslsmith_f_op_f32(1134f + global2.a.x), var_3.x), !(!vec4<bool>(global2.b, false, var_2.c.b, true))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(346f, _wgslsmith_f_op_f32(f32(-1f) * -589f), _wgslsmith_f_op_f32(global2.a.x - 859f), var_2.c.a.x)), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_3.x, 1677f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(158f - var_2.b) + var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -180f) * _wgslsmith_f_op_f32(round(1513f))), var_2.b), u_input.a <= 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.b, u_input.b, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 34343u, 9730u), vec3<u32>(u_input.a, u_input.b, u_input.b)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.x, var_4.x, var_2.c.a.x))), var_4.wwx, !vec3<bool>(false, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.b, -1328f, -526f), var_4.xwx))))))), func_2().b, firstTrailingBit(firstTrailingBit(vec4<i32>(firstTrailingBit(var_2.a), _wgslsmith_add_i32(-33451i, var_2.a), abs(var_2.a), ~var_2.a))));
}

