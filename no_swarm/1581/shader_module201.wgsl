struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: f32 = 504f;

var<private> global3: array<i32, 11> = array<i32, 11>(69580i, 2147483647i, -1i, 2147483647i, -21289i, 2147483647i, 51905i, 4448i, 42038i, 0i, 57826i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = arg_0;
    global3 = array<i32, 11>();
    global2 = -795f;
    var var_1 = arg_0.c.x;
    let var_2 = Struct_1(var_0.a, ~vec4<u32>(3661u, 27229u, _wgslsmith_div_u32(var_0.b.x, arg_0.c.x) ^ _wgslsmith_mod_u32(arg_0.c.x, 1u), _wgslsmith_div_u32(~26626u, 4294967295u)), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(8874u << (global0.b.x % 32u), ~arg_0.b.x, 1u), reverseBits(var_0.c) << (~vec3<u32>(var_0.c.x, var_0.b.x, arg_0.b.x) % vec3<u32>(32u)))));
    return select(!select(vec2<bool>(any(vec3<bool>(true, true, false)), false), select(vec2<bool>(false, false), vec2<bool>(true, false), true), true & (u_input.a >= -2147483647i)), select(vec2<bool>(true, true), vec2<bool>(false, !any(vec4<bool>(false, true, false, false))), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, false), true), true)), all(vec2<bool>(!(-2147483647i > u_input.a), !all(vec4<bool>(true, false, false, true)))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: vec4<i32>) -> i32 {
    let var_0 = Struct_1(arg_0, global0.b, _wgslsmith_div_vec3_u32(arg_2.b.yzx, select(vec3<u32>(23542u, _wgslsmith_dot_vec3_u32(vec3<u32>(66854u, 13808u, global0.b.x), arg_2.c), ~54217u), ~vec3<u32>(58492u, 52002u, 0u) & _wgslsmith_sub_vec3_u32(arg_2.c, vec3<u32>(global0.c.x, 2364u, 53585u)), true)));
    let var_1 = func_3(Struct_1(-290f, ~var_0.b, var_0.b.yyx));
    var var_2 = arg_2;
    let var_3 = select(func_3(var_0), var_1, var_1);
    let var_4 = vec4<f32>(-511f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2000f)) * 1191f)), 344f, global0.a);
    return arg_3.x;
}

fn func_1() -> u32 {
    var var_0 = min(4294967295u, firstLeadingBit(4294967295u));
    var var_1 = -vec3<i32>(1i, 3025i, _wgslsmith_mod_i32(func_2(global0.a, global3[_wgslsmith_index_u32(global0.c.x, 11u)], Struct_1(-391f, global0.b, global0.c), vec4<i32>(global3[_wgslsmith_index_u32(15535u, 11u)], u_input.a, global3[_wgslsmith_index_u32(global0.c.x, 11u)], global3[_wgslsmith_index_u32(global0.c.x, 11u)])) ^ -u_input.a, -62384i));
    global1 = 83591u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a, -1000f, global0.a, -303f), vec4<f32>(-505f, -155f, global0.a, global0.a), vec4<bool>(true, true, true, true))))), vec4<f32>(_wgslsmith_f_op_f32(step(global0.a, 772f)), _wgslsmith_f_op_f32(-global0.a), -861f, 583f))))));
    global3 = array<i32, 11>();
    return ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.x ^ 1u, 4294967295u, global0.b.x) & global0.b.zxx, _wgslsmith_add_vec3_u32(global0.b.yxw, vec3<u32>(global0.b.x, _wgslsmith_mult_u32(68588u, 37862u), 34539u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(701f, _wgslsmith_mult_vec4_u32(select(global0.b, firstTrailingBit(vec4<u32>(4294967295u, global0.b.x, 37370u, global0.b.x) >> (vec4<u32>(global0.c.x, global0.b.x, 17236u, 1u) % vec4<u32>(32u))), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))), global0.b), reverseBits(global0.b.yyx));
    let var_1 = -abs(~(-vec2<i32>(u_input.a, global3[_wgslsmith_index_u32(20189u, 11u)])));
    let var_2 = Struct_1(var_0.a, vec4<u32>(global0.b.x, ~(~var_0.c.x), ~func_1(), 4294967295u), select(~select(select(vec3<u32>(global0.b.x, var_0.c.x, 4294967295u), vec3<u32>(2717u, global0.c.x, 0u), true), ~vec3<u32>(var_0.b.x, global0.b.x, 120560u), true), abs(vec3<u32>(abs(global0.b.x), 58340u, _wgslsmith_mod_u32(var_0.b.x, global0.c.x))), any(vec3<bool>(true, true, true))));
    let var_3 = all(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), 27972u > var_2.b.x)));
    global3 = array<i32, 11>();
    var var_4 = var_0.a;
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a))))));
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, countOneBits(-3951i), _wgslsmith_div_vec2_i32(var_1 & vec2<i32>(1i, ~var_1.x), _wgslsmith_mod_vec2_i32(-(vec2<i32>(-1i, global3[_wgslsmith_index_u32(1u, 11u)]) | var_1), var_1 | vec2<i32>(var_1.x, u_input.a))), _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(global0.c.x, 11u)], 1i, -1i, u_input.a), vec4<i32>(-11124i, var_1.x, var_1.x, var_1.x), vec4<i32>(7222i, 2147483647i, global3[_wgslsmith_index_u32(global0.b.x, 11u)], -21507i)) & max(max(vec4<i32>(var_1.x, var_1.x, 0i, 0i), vec4<i32>(var_1.x, u_input.a, global3[_wgslsmith_index_u32(var_2.c.x, 11u)], u_input.a)), vec4<i32>(-1022i, -82i, global3[_wgslsmith_index_u32(var_0.b.x, 11u)], var_1.x)), vec4<i32>(func_2(var_0.a, 1i, var_2, ~vec4<i32>(1i, var_1.x, u_input.a, 8080i)), u_input.a, -var_1.x, -2147483647i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(997f, _wgslsmith_f_op_f32(f32(-1f) * -339f), _wgslsmith_f_op_f32(global0.a + _wgslsmith_div_f32(var_5, global0.a)))));
}

