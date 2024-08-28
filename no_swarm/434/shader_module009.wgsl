struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec2<bool>, 14>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32, arg_3: u32) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global0.x)))), _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(973f, global0.x), vec2<f32>(global0.x, global0.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1011f, 1119f) + vec2<f32>(global0.x, 550f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x))));
    global1 = array<vec2<bool>, 14>();
    var var_0 = ~_wgslsmith_add_vec4_i32(vec4<i32>(-22901i, arg_1.x, ~arg_1.x, ~(1i >> (arg_2 % 32u))), ~abs(vec4<i32>(2379i, u_input.a.x, 2147483647i, u_input.a.x)));
    global1 = array<vec2<bool>, 14>();
    var var_1 = Struct_4(~arg_0.a ^ max(arg_0.a, vec4<u32>(arg_0.a.x, 4294967295u, 1u, 4294967295u) | select(vec4<u32>(arg_2, arg_2, arg_2, 603u), vec4<u32>(arg_0.a.x, arg_3, arg_3, 1u), false)), arg_0);
    return var_1.b.a.x;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec2<f32>, arg_3: vec2<bool>) -> vec4<f32> {
    var var_0 = u_input.a.x ^ 2147483647i;
    var_0 = ~u_input.a.x;
    let var_1 = _wgslsmith_sub_vec2_u32(~(~vec2<u32>(1u, 1u)), firstTrailingBit(~select(vec2<u32>(1u, 118134u), vec2<u32>(35434u, 4294967295u), arg_3.x) & max(vec2<u32>(1u, 1u), vec2<u32>(45261u, 67679u))));
    let var_2 = vec3<f32>(2593f, -303f, 784f);
    let var_3 = select(vec4<bool>(arg_0, _wgslsmith_dot_vec2_i32(~u_input.a.xy, abs(u_input.a.xx)) <= -5772i, !all(vec4<bool>(false, arg_0, true, true)), arg_1), select(!vec4<bool>(true, false, false, arg_1), vec4<bool>(!(1u <= var_1.x), any(select(vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(arg_0, true, false, arg_3.x), false)), arg_0, !(arg_3.x | arg_3.x)), false), any(!(!(!vec3<bool>(true, arg_0, arg_0)))));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1090f, arg_2.x, arg_2.x, 676f), vec4<f32>(var_2.x, global0.x, -1044f, -998f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1374f, 462f, -917f, -1789f)))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(569f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(floor(-1051f)))), arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), all(vec2<bool>(!any(vec3<bool>(true, true, arg_1)), true))));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_3, arg_3: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(!(func_3(Struct_2(vec4<u32>(0u, 15821u, 1u, 4294967295u)), vec4<i32>(u_input.a.x, -10563i, u_input.a.x, -20219i) & vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), abs(1u), 1u) == firstTrailingBit(1u)), !(!(!(2147483647i <= u_input.a.x))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-268f, -468f) * _wgslsmith_div_vec2_f32(vec2<f32>(466f, global0.x), vec2<f32>(arg_3.x, global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.zx)))), vec2<bool>(!any(vec3<bool>(true, true, true)), false)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_f_op_f32(global0.x + arg_2.a.x), arg_1, _wgslsmith_f_op_f32(select(1000f, arg_3.x, false)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-213f, arg_2.a.x) * arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1289f, arg_2.a.x)) - _wgslsmith_f_op_f32(floor(arg_2.a.x))), var_0.x, arg_1)));
    let var_2 = Struct_4(firstTrailingBit(abs(vec4<u32>(9980u, 28396u, 0u, 17549u)) ^ ~select(vec4<u32>(37186u, 4294967295u, 62743u, 4294967295u), vec4<u32>(77909u, 4294967295u, 4294967295u, 39637u), vec4<bool>(true, false, true, true))), Struct_2(vec4<u32>(abs(_wgslsmith_div_u32(1u, 15039u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(76618u, 0u, 55705u, 1u), vec4<u32>(0u, 62702u, 104498u, 13114u)), _wgslsmith_clamp_u32(1u, select(4294967295u, 21450u, true), ~4294967295u), 6545u)));
    var_1 = Struct_3(arg_2.a);
    global1 = array<vec2<bool>, 14>();
    return _wgslsmith_sub_i32(firstLeadingBit(-_wgslsmith_add_i32(1i, _wgslsmith_mult_i32(u_input.a.x, -1i))), -u_input.a.x);
}

fn func_1() -> f32 {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(~4441u, 14u)]);
    let var_1 = !all(vec4<bool>(false, var_0.a.x || any(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true)), true && var_0.a.x, func_2(vec3<f32>(global0.x, global0.x, global0.x), -1408f, Struct_3(vec4<f32>(722f, -817f, -162f, 521f)), vec3<f32>(global0.x, 2514f, -647f)) != u_input.a.x));
    var var_2 = 2001f;
    var var_3 = u_input.a.x | -2147483647i;
    var var_4 = vec2<f32>(global0.x, -1686f);
    return 2191f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(global0.x + 755f))))))));
    global1 = array<vec2<bool>, 14>();
    global1 = array<vec2<bool>, 14>();
    global1 = array<vec2<bool>, 14>();
    let var_0 = _wgslsmith_div_i32(max(_wgslsmith_dot_vec3_i32(abs(select(u_input.a, vec3<i32>(u_input.a.x, 20790i, u_input.a.x), vec3<bool>(true, true, false))), select(firstLeadingBit(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), -vec3<i32>(2147483647i, 0i, u_input.a.x), any(vec3<bool>(true, true, false)))), firstLeadingBit(_wgslsmith_add_i32(-u_input.a.x, -43621i | u_input.a.x))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(u_input.a), u_input.a), _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), vec3<i32>(u_input.a.x, ~(~u_input.a.x), countOneBits(-2147483647i) ^ max(u_input.a.x, u_input.a.x))));
    global1 = array<vec2<bool>, 14>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(any(vec3<bool>(true, false, false)), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1561f, 529f) - vec2<f32>(-368f, global0.x)), global1[_wgslsmith_index_u32(0u, 14u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 199f, 258f, global0.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, -1950f, 147f, global0.x), vec4<f32>(global0.x, 931f, global0.x, global0.x))), vec4<bool>(true, true, true, false))))));
    let var_2 = Struct_5(vec3<u32>(_wgslsmith_add_u32(~(~13315u), min(1u, ~1u)), ~firstLeadingBit(1u) >> (~(~1u) % 32u), 4294967295u), Struct_2(~vec4<u32>(1u, 1u, 1u, 1u)), 22786i);
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -667f)));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

