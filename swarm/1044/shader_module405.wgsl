struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec3<i32>, 11>;

var<private> global2: f32 = -789f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> u32 {
    global0 = Struct_5(arg_3, u_input.b, _wgslsmith_add_vec2_u32(global0.c, select(reverseBits(global0.c), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.c.x, 70353u), global0.c), arg_0) << (vec2<u32>(abs(15716u), 52979u) % vec2<u32>(32u))));
    return global0.c.x;
}

fn func_3(arg_0: Struct_4) -> vec3<i32> {
    let var_0 = global0.b.x;
    global2 = arg_0.c.x;
    global1 = array<vec3<i32>, 11>();
    var var_1 = ~((vec3<u32>(global0.c.x, ~global0.c.x, 9926u) >> (~vec3<u32>(3228u, 1u, global0.c.x) % vec3<u32>(32u))) | abs(~(~vec3<u32>(0u, global0.c.x, 1u))));
    let var_2 = vec4<i32>(min(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -arg_0.a.b.c.yx, global0.b.xx), 0i), -1434i, _wgslsmith_clamp_i32(firstTrailingBit(global0.b.x), global0.b.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, u_input.a.x) | -vec2<i32>(33529i, 2147483647i), vec2<i32>(u_input.b.x, arg_0.a.a.a))), -2147483647i);
    return max(global0.b, vec3<i32>(arg_0.a.d.c.x, -34641i, ~(-2147483647i)));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: vec3<i32>) -> Struct_5 {
    var var_0 = !(false | !(!(5563u > arg_0)));
    global2 = -358f;
    let var_1 = vec3<bool>(((true & any(vec2<bool>(false, false))) && all(vec3<bool>(true, true, true))) & false, arg_0 != firstLeadingBit(func_2(all(vec3<bool>(true, true, false)), Struct_2(Struct_1(arg_2, -14900i, vec3<i32>(global0.b.x, -39198i, 22075i)), Struct_1(arg_2, arg_3.x, u_input.b), arg_3, Struct_1(55720i, 2147483647i, vec3<i32>(global0.b.x, 44597i, 0i)), global0.a), Struct_1(arg_3.x, -2147483647i, vec3<i32>(-2147483647i, 2147483647i, -2147483647i)), -1000f)), true);
    var var_2 = ~4294967295u;
    var var_3 = Struct_4(Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -4003i) & u_input.a, global0.b.yx), global0.b.x, func_3(Struct_4(Struct_2(Struct_1(arg_2, 0i, vec3<i32>(1i, arg_2, -1i)), Struct_1(arg_2, global0.b.x, vec3<i32>(-2147483647i, arg_2, u_input.a.x)), vec3<i32>(-1i, 0i, arg_3.x), Struct_1(-2147483647i, arg_2, arg_3), 300f), vec4<bool>(true, var_1.x, true, false), vec3<f32>(global0.a, -183f, global0.a)))), Struct_1(global0.b.x, 37521i, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 67961i, global0.b.x), global1[_wgslsmith_index_u32(4294967295u, 11u)]), arg_2, min(-13816i, 1i))), ~arg_3, Struct_1(u_input.a.x, 7120i, func_3(Struct_4(Struct_2(Struct_1(1i, -2147483647i, vec3<i32>(15187i, 0i, global0.b.x)), Struct_1(u_input.a.x, -56332i, vec3<i32>(0i, -1i, u_input.b.x)), vec3<i32>(global0.b.x, 42043i, 2147483647i), Struct_1(2147483647i, arg_3.x, global0.b), 1148f), vec4<bool>(true, false, true, false), vec3<f32>(-773f, global0.a, global0.a))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(49653u, 76262u, arg_0), vec3<u32>(1u, 1u, arg_1)) % vec3<u32>(32u))), -2508f), vec4<bool>(any(select(var_1.yy, vec2<bool>(var_1.x, true), var_1.x)), var_1.x, var_1.x | (var_1.x & false), !var_1.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.a, global0.a))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a, global0.a, 1915f), vec3<f32>(-303f, 1157f, global0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0.a, 754f)))), all(vec2<bool>(true, false)))))));
    return Struct_5(_wgslsmith_f_op_f32(select(-688f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.e - var_3.c.x)), var_1.x)), func_3(Struct_4(var_3.a, var_3.b, _wgslsmith_f_op_vec3_f32(-var_3.c))), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(403f))));
    var var_0 = ~global1[_wgslsmith_index_u32(min(_wgslsmith_clamp_u32(1u, global0.c.x, _wgslsmith_add_u32(global0.c.x << (83292u % 32u), global0.c.x)), global0.c.x), 11u)];
    global0 = func_1(~global0.c.x & global0.c.x, global0.c.x, -2147483647i, vec3<i32>(-2147483647i, countOneBits(var_0.x), (_wgslsmith_clamp_i32(var_0.x, var_0.x, 0i) | -15387i) >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(61212u, 16757u), vec2<u32>(1505u, 4294967295u)) ^ global0.c.x) % 32u)));
    var var_1 = ~vec2<u32>(~global0.c.x, _wgslsmith_mult_u32(global0.c.x, func_2(true, Struct_2(Struct_1(u_input.a.x, global0.b.x, global1[_wgslsmith_index_u32(global0.c.x, 11u)]), Struct_1(0i, -2147483647i, vec3<i32>(var_0.x, global0.b.x, -1i)), global0.b, Struct_1(0i, 2147483647i, global1[_wgslsmith_index_u32(global0.c.x, 11u)]), 723f), Struct_1(3135i, -14671i, vec3<i32>(u_input.a.x, u_input.b.x, global0.b.x)), global0.a)));
    var_0 = -max(abs(u_input.b), vec3<i32>(1i, reverseBits(u_input.b.x), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(4294967295u, ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global0.c.x, global0.c.x, global0.c.x), global0.c.x)), vec2<i32>(_wgslsmith_sub_i32(global0.b.x ^ global0.b.x, ~var_0.x), -(u_input.b.x | global0.b.x)) | -vec2<i32>(var_0.x, global0.b.x ^ 2147483647i), vec3<f32>(-511f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2085f))), global0.a), -105f));
}

