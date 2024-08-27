struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(18012u, 0u, 4901u, 9011u, 0u, 23967u, 71488u, 25753u, 17399u, 97318u, 16126u, 27078u, 4294967295u, 0u, 106052u, 23622u, 1u, 69482u, 1u, 20146u, 4294967295u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<bool>) -> bool {
    var var_0 = vec4<i32>(~(~2939i), -_wgslsmith_clamp_i32(select(u_input.b.x, u_input.a, arg_0.x) & -2147483647i, u_input.a, u_input.a), u_input.b.x, 19833i);
    var_0 = vec4<i32>(-43927i, -2147483647i, u_input.a, var_0.x);
    let var_1 = _wgslsmith_dot_vec3_u32(u_input.d | u_input.d, ~u_input.e.xwz) & global0[_wgslsmith_index_u32(4497u, 21u)];
    let var_2 = Struct_3(!vec4<bool>(any(arg_0.xy), true, arg_0.x, true));
    global0 = array<u32, 21>();
    return var_2.a.x;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1314f * _wgslsmith_div_f32(1043f, _wgslsmith_f_op_f32(f32(-1f) * -516f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-185f, -444f) - _wgslsmith_f_op_f32(368f + 1370f)), 1851f)), !((true || arg_2) | true))), arg_0);
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    var var_1 = arg_3.a.xzx;
    return vec4<bool>(any(arg_3.a), var_1.x && (_wgslsmith_add_u32(_wgslsmith_sub_u32(6717u, arg_0.x), var_0.b.x & 13723u) <= u_input.e.x), !arg_2, true);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> Struct_1 {
    let var_0 = arg_2.a.wwx;
    global0 = array<u32, 21>();
    var var_1 = u_input.e;
    var_1 = ~(~vec4<u32>(1u, u_input.e.x, 22942u, global0[_wgslsmith_index_u32(22639u << (var_1.x % 32u), 21u)]));
    let var_2 = Struct_3(arg_2.a);
    return Struct_1(_wgslsmith_f_op_f32(-525f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-431f)), _wgslsmith_div_f32(649f, 649f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-713f + -1339f) + -115f))), abs(max(u_input.e.wyx, abs(vec3<u32>(4294967295u, 1u, var_1.x)))));
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    let var_0 = ~(~u_input.d.x & u_input.e.x);
    var var_1 = func_4(all(!vec4<bool>(all(vec4<bool>(false, true, false, false)), select(false, false, true), true, func_2(vec4<bool>(true, false, false, false)))), _wgslsmith_div_i32(29474i, -2147483647i), Struct_3(select(!func_3(u_input.d, vec4<i32>(u_input.a, 6213i, u_input.b.x, u_input.b.x), false, Struct_3(vec4<bool>(false, false, false, true))), vec4<bool>(true, false, all(vec3<bool>(true, true, true)), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), func_3(u_input.d, vec4<i32>(u_input.a, -2147483647i, u_input.a, -2147483647i), true, Struct_3(vec4<bool>(true, false, false, false)))))));
    var var_2 = arg_0.xy;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1293f, 1037f, var_2.x) + vec4<f32>(-1108f, arg_0.x, var_2.x, 384f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(143f, arg_0.x, var_1.a, arg_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, arg_0.x, var_2.x, -409f) - vec4<f32>(1000f, arg_0.x, -1462f, 1288f))))), vec4<f32>(-1547f, arg_0.x, 398f, _wgslsmith_f_op_f32(floor(var_1.a))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(815f, var_1.a, 543f, 1119f))) + _wgslsmith_div_vec4_f32(vec4<f32>(942f, arg_0.x, var_2.x, var_2.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1200f, var_2.x, arg_0.x, arg_0.x)))))));
    var var_4 = func_4(all(func_3(_wgslsmith_mult_vec3_u32(u_input.e.yzx >> (vec3<u32>(32940u, 4294967295u, 11936u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(u_input.e.xzx, vec3<u32>(4294967295u, var_0, 47130u))), _wgslsmith_sub_vec4_i32(u_input.b, abs(vec4<i32>(-9240i, 5822i, 2147483647i, u_input.c))), true, Struct_3(vec4<bool>(true, true, true, true))).wy), _wgslsmith_add_i32(52489i, -1i), Struct_3(func_3(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(57593u, var_0, var_0)), func_4(true, u_input.b.x, Struct_3(vec4<bool>(true, false, false, true))).b), vec4<i32>(_wgslsmith_mult_i32(u_input.a, u_input.c), 7604i, ~(-23644i), 2147483647i >> (u_input.d.x % 32u)), !all(vec4<bool>(false, false, false, true)), Struct_3(vec4<bool>(true, true, true, true)))));
    return firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -1i) | u_input.b.zw, u_input.b.wy), vec2<i32>(_wgslsmith_clamp_i32(u_input.b.x, 6995i, u_input.b.x), -1i)), -2147483647i));
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_1 {
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    let var_0 = u_input.b.zy;
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))), vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 21u)], 21u)], 1u, 54001u), vec4<u32>(arg_2.a.b.x, 44562u, 44917u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 21u)], 21u)])), min(arg_2.b.x, arg_2.b.x))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.e.x, 0u, u_input.e.x), ~u_input.d, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 21u)], 21u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], firstTrailingBit(26991u)))));
    var var_2 = ~firstLeadingBit(abs(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], u_input.e.x, 1u, 5600u)));
    return Struct_1(arg_2.a.a, vec3<u32>(~var_1.a.b.x, ~(~0u), 23163u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 21>();
    var var_0 = Struct_2(func_5(_wgslsmith_f_op_f32(-1721f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1448f) + -354f)), vec2<i32>(~func_1(vec3<f32>(-956f, -709f, 543f)), 1i), Struct_2(func_4(true, -18354i | u_input.b.x, Struct_3(vec4<bool>(false, false, false, true))), select(u_input.d | u_input.e.zzw, u_input.e.xxx, true))), ~(vec3<u32>(select(54278u, u_input.d.x, false), ~u_input.e.x, ~0u) & ~firstLeadingBit(u_input.e.yzx)));
    let var_1 = Struct_4(Struct_2(func_5(-1000f, vec2<i32>(1i, ~u_input.c), Struct_2(Struct_1(var_0.a.a, u_input.e.zyx), ~vec3<u32>(86767u, 0u, 49980u))), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.d.yy, vec2<u32>(0u, u_input.d.x)), 1u), ~(40979u ^ u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.b.x, var_0.b.x, 41801u, 4294967295u), ~u_input.e))));
    var_0 = Struct_2(var_1.a.a, _wgslsmith_clamp_vec3_u32(var_0.a.b, vec3<u32>(abs(44624u), var_1.a.a.b.x, ~(~global0[_wgslsmith_index_u32(u_input.e.x, 21u)])), vec3<u32>(abs(var_0.b.x), 42989u, u_input.d.x)));
    global0 = array<u32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.e, abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.b.x, 50217u, global0[_wgslsmith_index_u32(u_input.d.x, 21u)], var_1.a.a.b.x), u_input.e))), u_input.e), _wgslsmith_clamp_u32(abs(abs(~0u)), countOneBits(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e) >> (firstTrailingBit(global0[_wgslsmith_index_u32(39281u, 21u)]) % 32u)), 0u));
}

