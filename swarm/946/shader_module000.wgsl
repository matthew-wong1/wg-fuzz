struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<i32>;

var<private> global2: array<vec4<u32>, 1>;

var<private> global3: array<u32, 1> = array<u32, 1>(72382u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    global1 = -(~(-vec3<i32>(0i, 1i, ~(-2147483647i))));
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + -199f);
    global1 = vec3<i32>(37365i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x >> (u_input.a % 32u), reverseBits(u_input.b.x), -61508i), vec3<i32>(-39600i, _wgslsmith_sub_i32(abs(62145i), ~(-10525i)), ~(-54395i))), _wgslsmith_mult_i32(1i, global1.x));
    global2 = array<vec4<u32>, 1>();
    return -4385i;
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = Struct_1(-_wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 15064i, arg_0.c, 0i), vec4<i32>(2450i, global1.x, -47556i, -1i)), func_3(_wgslsmith_f_op_f32(f32(-1f) * -390f), true, arg_0, Struct_2(u_input.b.zzx, vec2<i32>(2147483647i, 2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + -740f) + arg_0.b)))), -_wgslsmith_sub_i32(u_input.b.x, func_3(_wgslsmith_div_f32(262f, arg_0.b), arg_0.a != 87319i, Struct_1(-29341i, arg_0.b, 62238i), Struct_2(vec3<i32>(-1i, arg_0.c, arg_0.a), vec2<i32>(5741i, -22333i)))));
    global2 = array<vec4<u32>, 1>();
    let var_1 = !(!vec3<bool>(true, !(1u <= global0.x), true));
    let var_2 = any(select(select(!(!vec4<bool>(true, false, true, var_1.x)), !vec4<bool>(var_1.x, true, true, var_1.x), false), !vec4<bool>(var_1.x, true, any(var_1), select(var_1.x, var_1.x, true)), (arg_0.b > _wgslsmith_f_op_f32(-var_0.b)) && true));
    global2 = array<vec4<u32>, 1>();
    return -vec3<i32>(~_wgslsmith_sub_i32(2147483647i >> (0u % 32u), _wgslsmith_clamp_i32(0i, arg_0.c, u_input.b.x)), 31483i, i32(-1i) * -19766i);
}

fn func_4(arg_0: i32, arg_1: vec3<i32>) -> Struct_1 {
    return Struct_1(-2147483647i, _wgslsmith_f_op_f32(115f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-975f)) * _wgslsmith_f_op_f32(f32(-1f) * -1279f))))), _wgslsmith_div_i32(37790i, arg_0));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(50393u, 1u)];
    let var_1 = func_4(9966i, func_2(Struct_1(1i, arg_1, -42750i ^ firstTrailingBit(u_input.b.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(func_4(func_2(var_1).x, arg_0.a).b)));
    var var_3 = var_0.x;
    global2 = array<vec4<u32>, 1>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec4<bool>(select(true, true, func_1(Struct_2(vec3<i32>(global1.x, -1168i, -1i), vec2<i32>(-9356i, global1.x)), 2063f, global1.x)), all(vec2<bool>(true, false)) && true, false, any(vec3<bool>(true, true, true))), vec4<bool>(all(vec2<bool>(true, true)), all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 1u)], 1u)] >= u_input.c)), true, all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), true), any(vec2<bool>(false, true))))), any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), true)));
    global2 = array<vec4<u32>, 1>();
    global1 = u_input.b.xzx;
    global2 = array<vec4<u32>, 1>();
    global2 = array<vec4<u32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(0i, firstTrailingBit(u_input.b.x) & global1.x, u_input.b.x), ~(select(0u, ~33323u, false) << (global0.x % 32u)), u_input.a);
}

