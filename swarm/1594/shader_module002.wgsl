struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2 = Struct_2(vec2<u32>(1u, 4294967295u), vec2<bool>(false, true), Struct_1(vec2<u32>(1u, 14836u), 20761u, vec2<bool>(true, false), 74952i, true));

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec2<u32>(0u, 0u), vec2<bool>(true, false), Struct_1(vec2<u32>(53706u, 16565u), 82708u, vec2<bool>(false, true), i32(-2147483648), true)), Struct_2(vec2<u32>(39289u, 118850u), vec2<bool>(false, true), Struct_1(vec2<u32>(0u, 4294967295u), 4294967295u, vec2<bool>(false, false), 0i, false)), Struct_2(vec2<u32>(1u, 13663u), vec2<bool>(false, false), Struct_1(vec2<u32>(4294967295u, 1u), 96447u, vec2<bool>(false, true), i32(-2147483648), true)), Struct_2(vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, true), Struct_1(vec2<u32>(21359u, 0u), 1u, vec2<bool>(true, false), -1i, false)), Struct_2(vec2<u32>(25936u, 28583u), vec2<bool>(true, false), Struct_1(vec2<u32>(1u, 0u), 0u, vec2<bool>(true, true), 1i, false)), Struct_2(vec2<u32>(0u, 24437u), vec2<bool>(false, false), Struct_1(vec2<u32>(0u, 18599u), 1u, vec2<bool>(true, false), 64686i, true)), Struct_2(vec2<u32>(8299u, 1u), vec2<bool>(true, false), Struct_1(vec2<u32>(13208u, 1u), 4294967295u, vec2<bool>(false, true), i32(-2147483648), false)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    global1 = Struct_2(firstTrailingBit(global1.a), global1.c.c, global1.c);
    global0 = 158f;
    let var_0 = vec3<bool>(all(select(!select(vec3<bool>(global1.b.x, global1.c.c.x, true), vec3<bool>(true, global1.b.x, true), global1.c.e), select(!vec3<bool>(global1.c.e, true, false), vec3<bool>(global1.c.e, global1.b.x, global1.b.x), false), select(vec3<bool>(global1.c.c.x, true, true), vec3<bool>(global1.c.e, global1.b.x, true), false))), false, false);
    global2 = array<Struct_2, 7>();
    global2 = array<Struct_2, 7>();
    return _wgslsmith_div_i32(~(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(58712i, global1.c.d), 10730i)), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.c.d, -19277i), vec2<i32>(global1.c.d, global1.c.d)) ^ _wgslsmith_add_i32(2147483647i, ~(~global1.c.d)));
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = Struct_5(Struct_3(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(global1.c.d, u_input.a.x), u_input.a.x), arg_0, false, countOneBits(arg_0.a.x), arg_0.c));
    var_0 = Struct_5(var_0.a);
    global2 = array<Struct_2, 7>();
    let var_1 = vec3<i32>(global1.c.d, -32957i, ~select(global1.c.d, func_3(), true));
    let var_2 = -1i;
    return vec4<bool>(true, true, true, true);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = func_2(global2[_wgslsmith_index_u32(global1.a.x, 7u)]);
    let var_1 = ~4294967295u;
    global0 = -1697f;
    var var_2 = Struct_3(_wgslsmith_clamp_i32(36358i, -47600i, 5733i), global2[_wgslsmith_index_u32(u_input.b.x, 7u)], !var_0.x, var_1, Struct_1(u_input.b, ~62493u, vec2<bool>(true && any(vec4<bool>(false, false, global1.b.x, false)), true), ~_wgslsmith_mult_i32(~global1.c.d, ~u_input.a.x), true));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)) - _wgslsmith_div_f32(1118f, _wgslsmith_f_op_f32(max(arg_0, 1185f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(476f * _wgslsmith_f_op_f32(-464f + arg_0)))), _wgslsmith_f_op_f32(round(896f))));
    return var_2.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<u32>(_wgslsmith_clamp_u32(~(2798u >> (u_input.b.x % 32u)), ~25386u, ~global1.c.b), u_input.b.x), vec2<bool>(global1.c.c.x, -802f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-121f)))), func_1(-609f, ((global1.c.e | global1.b.x) | all(vec3<bool>(true, global1.b.x, false))) | !(!global1.c.c.x), 1i, u_input.a.yx));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -400f)) - -500f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(498f, 1444f))))))));
    var_1 = Struct_2(abs(vec2<u32>(u_input.b.x, func_1(1f, var_0.b.x, ~(-53151i), vec2<i32>(13390i, 13894i)).b)), select(!var_1.c.c, vec2<bool>(true, !(true || global1.b.x)), any(!select(vec4<bool>(global1.c.c.x, global1.b.x, global1.c.c.x, true), vec4<bool>(global1.c.c.x, true, var_0.b.x, global1.b.x), false))), func_1(1f, any(!vec4<bool>(false, global1.c.e, false, true)), var_1.c.d, vec2<i32>(-1i) * -u_input.a.yy));
    let var_3 = Struct_3(reverseBits(4336i), var_0, (true | global1.b.x) || all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, var_1.c.e), var_0.c.c.x), !vec3<bool>(false, var_0.b.x, false), !vec3<bool>(var_1.c.e, global1.b.x, false))), _wgslsmith_dot_vec2_u32(vec2<u32>(0u << (u_input.b.x % 32u), _wgslsmith_add_u32(var_1.a.x, var_0.a.x) & global1.c.b), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, u_input.b.x, 0u), vec3<u32>(var_1.a.x, var_1.c.a.x, var_0.a.x)), 4294967295u) ^ u_input.b), func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2330f)), _wgslsmith_f_op_f32(1942f + -946f))), var_1.c.c.x, -2147483647i, u_input.a.zy));
    var_1 = Struct_2(min(vec2<u32>(_wgslsmith_mult_u32(var_1.a.x ^ var_1.a.x, u_input.b.x), abs(33320u)), var_0.a), vec2<bool>(select(true, true, all(func_2(global2[_wgslsmith_index_u32(var_1.c.b, 7u)]).zy)), global1.b.x && any(!vec2<bool>(var_0.c.c.x, var_0.c.e))), func_1(-1000f, var_0.c.e, 2147483647i, u_input.a.xz));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mult_u32(~func_1(1603f, var_1.c.c.x, 43015i, vec2<i32>(-69621i, -6769i)).a.x, 40403u)), var_3.e.b);
}

