struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, true, false));

var<private> global1: array<i32, 5>;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, true)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = !(!vec3<bool>(true, any(select(vec3<bool>(true, false, global0.a.x), global0.a, global0.a)), false));
    var_0 = select(!select(global0.a, global0.a, global0.a), select(!(!(!vec3<bool>(global0.a.x, false, global0.a.x))), vec3<bool>(!(u_input.c.x != u_input.b), var_0.x, (global0.a.x & false) == var_0.x), vec3<bool>(_wgslsmith_f_op_f32(min(1000f, 313f)) == _wgslsmith_f_op_f32(trunc(681f)), global0.a.x, var_0.x)), var_0.x);
    var var_1 = vec4<i32>(firstTrailingBit(abs(~select(1i, u_input.a, false))), select(firstTrailingBit(~(10886i & global1[_wgslsmith_index_u32(40739u, 5u)])), u_input.a, !global0.a.x), _wgslsmith_dot_vec4_i32(~min(vec4<i32>(0i, u_input.a, 2147483647i, -22729i), vec4<i32>(global1[_wgslsmith_index_u32(1u, 5u)], u_input.a, global1[_wgslsmith_index_u32(u_input.b, 5u)], 13798i)), -_wgslsmith_mult_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 5u)], global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(93760u, 5u)], -29398i), vec4<i32>(0i, u_input.a, 15372i, 2147483647i))), _wgslsmith_dot_vec3_i32(max(~(~vec3<i32>(u_input.a, -11478i, u_input.a)), vec3<i32>(~global1[_wgslsmith_index_u32(47490u, 5u)], ~12124i, -2147483647i)), abs(-vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 5u)], u_input.a))));
    global2 = array<Struct_1, 5>();
    global1 = array<i32, 5>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1433f))))), _wgslsmith_f_op_f32(abs(779f))));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: bool) -> u32 {
    var var_0 = 48545u;
    global1 = array<i32, 5>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(-1186f, -658f, global0.a.x)), _wgslsmith_f_op_f32(-arg_0), 344f, _wgslsmith_f_op_f32(-arg_0)))))));
    let var_2 = arg_1.x;
    var_1 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(func_3()), arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1472f, var_2), -964f, arg_2))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) - 1308f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - arg_1.x))), -1674f);
    return ~(~_wgslsmith_add_u32(max(~u_input.b, ~0u), ~_wgslsmith_add_u32(u_input.b, u_input.b)));
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<i32>(1i, -1i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(func_2(-494f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-558f, 1000f, -1443f))), global0.a.x), 5u)], 1i), -_wgslsmith_sub_i32(-1i << (1u % 32u), u_input.a));
    var var_1 = -20312i;
    var_1 = _wgslsmith_sub_i32(2147483647i, _wgslsmith_add_i32(i32(-1i) * -min(u_input.a, 2147483647i), -(~(-5281i))));
    var var_2 = -1000f;
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x | 83402u, ~select(~0u, ~u_input.c.x, global0.a.x)), 5u)];
    return Struct_1(global0.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.b, 5u)], _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 5u)], 1228i, global1[_wgslsmith_index_u32(37560u, 5u)], global1[_wgslsmith_index_u32(u_input.b, 5u)]), vec4<i32>(-2147483647i, -1i, u_input.a, u_input.a))), u_input.a | ~u_input.a), 1i) >> (u_input.c.x % 32u);
    global1 = array<i32, 5>();
    global2 = array<Struct_1, 5>();
    let var_1 = Struct_1(!vec3<bool>(any(vec4<bool>(false, global0.a.x, true, false)) & select(true, false, arg_1.x), all(vec3<bool>(arg_0.a.x, arg_0.a.x, true)), true));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1025f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(500f, 641f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2))), _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, u_input.b)) > _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, u_input.c.x), firstLeadingBit(u_input.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 5>();
    global1 = array<i32, 5>();
    let var_0 = global2[_wgslsmith_index_u32(25483u << (u_input.b % 32u), 5u)];
    var var_1 = max(countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(25396u, u_input.c.x), u_input.c)), _wgslsmith_add_u32(~select(u_input.b, u_input.b, true), ~(~(86u | u_input.c.x))));
    let var_2 = global2[_wgslsmith_index_u32(54377u, 5u)];
    global0 = global2[_wgslsmith_index_u32(~(~min(~23273u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.b), u_input.c)) << (42883u % 32u)), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(), select(var_2.a.zy, global0.a.xy, false))))));
}

