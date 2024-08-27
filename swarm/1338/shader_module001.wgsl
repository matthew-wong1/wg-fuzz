struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global1: vec4<u32> = vec4<u32>(1u, 1u, 55188u, 4294967295u);

var<private> global2: array<u32, 11>;

var<private> global3: array<vec2<u32>, 32>;

var<private> global4: array<vec2<i32>, 3>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_div_u32(global1.x, countOneBits(_wgslsmith_sub_u32(_wgslsmith_mod_u32(11714u, ~1u), 1u)));
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -32320i, u_input.a.x) ^ vec3<i32>(u_input.b.x, 8526i, u_input.a.x), -vec3<i32>(u_input.a.x, u_input.b.x, -2147483647i)), vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, 30611i), u_input.b.x, 1i));
    global2 = array<u32, 11>();
    global3 = array<vec2<u32>, 32>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-287f, 1384f), _wgslsmith_f_op_vec2_f32(vec2<f32>(900f, 974f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(792f, -1625f)))))))));
    return !select(select(select(!vec4<bool>(global0.x, true, false, global0.x), !vec4<bool>(true, global0.x, false, global0.x), global0.x), select(!vec4<bool>(global0.x, true, false, false), !vec4<bool>(global0.x, true, global0.x, global0.x), select(vec4<bool>(true, global0.x, false, true), vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(false, true, global0.x, false))), !all(global0.xz)), select(select(!vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(true, false, global0.x, global0.x), global0.x), select(!vec4<bool>(true, false, false, global0.x), vec4<bool>(false, true, global0.x, global0.x), true), vec4<bool>(!global0.x, global0.x, global0.x, global0.x == global0.x)), !(!select(vec4<bool>(false, false, false, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, false, false))));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: u32, arg_3: vec4<u32>) -> bool {
    var var_0 = vec4<bool>(all(select(func_3(), select(!vec4<bool>(global0.x, false, global0.x, global0.x), !vec4<bool>(false, global0.x, global0.x, true), !vec4<bool>(false, global0.x, true, global0.x)), true)), any(vec3<bool>(true, all(!vec4<bool>(true, global0.x, global0.x, true)), false)), global0.x, true);
    global3 = array<vec2<u32>, 32>();
    global0 = !vec4<bool>(all(func_3()), var_0.x, !(!(var_0.x != false)), true);
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(~(-_wgslsmith_sub_i32(7880i, -1i)), arg_0.x), ~(arg_1 | (~arg_1 >> ((arg_2 ^ 98892u) % 32u))));
    let var_2 = Struct_3(30882u > _wgslsmith_mult_u32(72956u & global2[_wgslsmith_index_u32(72652u << (0u % 32u), 11u)], 4294967295u), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-763f, -999f) - vec2<f32>(-2114f, -306f)))), vec2<f32>(1f, _wgslsmith_f_op_f32(1490f - -849f))))), u_input.b.x, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1187f + _wgslsmith_f_op_f32(f32(-1f) * -360f)) * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -636f))), (select(-26552i, 26313i, true) != ~0i) && true), select(!(!vec4<bool>(var_0.x, false, true, var_0.x)), vec4<bool>(true, global0.x, all(select(vec4<bool>(global0.x, var_0.x, false, false), vec4<bool>(var_0.x, global0.x, var_0.x, true), vec4<bool>(var_0.x, true, true, true))), true), global0.x));
    return all(select(vec2<bool>(!any(vec2<bool>(true, global0.x)), false), vec2<bool>(false, true), !(!var_2.e.xw)));
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: f32) -> f32 {
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.a - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a), -2230f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + -314f))), 532f));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-814f + -111f), _wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f) - -1000f)) - vec3<f32>(_wgslsmith_f_op_f32(func_4(func_2(vec4<i32>(-1i, u_input.a.x, -29125i, u_input.a.x), u_input.a.x, global2[_wgslsmith_index_u32(global1.x, 11u)], vec4<u32>(0u, global1.x, global2[_wgslsmith_index_u32(20847u, 11u)], global2[_wgslsmith_index_u32(17509u, 11u)])), vec3<i32>(u_input.a.x, u_input.a.x, 0i), Struct_2(-1163f, true), _wgslsmith_f_op_f32(trunc(1908f)))), _wgslsmith_f_op_f32(f32(-1f) * -2505f), -226f)));
    var var_1 = select(global1.x, 1u, all(arg_0.zwx));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(ceil(var_0.x)), !arg_0.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.zx))));
    var var_4 = Struct_3(true, Struct_1(var_0.yz), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -1i, _wgslsmith_add_i32(21658i, u_input.b.x), -1i), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -5400i, u_input.b.x, -7027i), ~vec4<i32>(18329i, u_input.b.x, u_input.a.x, u_input.b.x), ~vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -2147483647i)), max(vec4<i32>(17145i, u_input.a.x, u_input.b.x, 6018i), _wgslsmith_div_vec4_i32(vec4<i32>(-20686i, u_input.a.x, 1i, -15371i), vec4<i32>(u_input.a.x, 31030i, u_input.a.x, 2147483647i))))), Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, var_3.a.x, var_2.b))))), var_2.a >= -948f), !arg_0);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(global0.x == global0.x);
    global3 = array<vec2<u32>, 32>();
    let var_1 = ~15417u;
    global1 = firstTrailingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(98212u, 63808u, global2[_wgslsmith_index_u32(var_1, 11u)]), _wgslsmith_div_u32(global1.x, global1.x), ~global2[_wgslsmith_index_u32(global1.x, 11u)], var_1), _wgslsmith_sub_vec4_u32(select(vec4<u32>(global1.x, global1.x, global2[_wgslsmith_index_u32(var_1, 11u)], var_1), vec4<u32>(25308u, var_1, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 11u)], 11u)], 0u), vec4<bool>(true, var_0, false, var_0)), vec4<u32>(global1.x, 22281u, 4294967295u, 0u))), ~(~vec4<u32>(36444u, 1u, 1u, global1.x) | _wgslsmith_div_vec4_u32(vec4<u32>(var_1, global1.x, global2[_wgslsmith_index_u32(46347u, 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 11u)]), vec4<u32>(1u, var_1, global2[_wgslsmith_index_u32(0u, 11u)], global1.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-491f * -1504f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-362f)), 1f), _wgslsmith_f_op_f32(func_1(vec4<bool>(var_0, false, global0.x, var_0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1484f - -1000f))))));
    global4 = array<vec2<i32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, global0.x, -851f > var_2.x, any(vec4<bool>(global0.x, false, true, var_0))))) - var_2.x), abs(~(~(~vec4<u32>(var_1, global1.x, global2[_wgslsmith_index_u32(var_1, 11u)], global2[_wgslsmith_index_u32(90041u, 11u)])))), global3[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(global1.x >> (global1.x % 32u), _wgslsmith_mult_u32(10929u, var_1)) & global1.x), 32u)], var_2.wx, vec3<i32>(_wgslsmith_div_i32(~6278i, -2147483647i), ~u_input.b.x, -(~reverseBits(-64566i))));
}

