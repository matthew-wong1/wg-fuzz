struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(7633u, 4294967295u, 1764u, 4294967295u, 0u, 10929u, 0u, 70322u, 4294967295u, 5596u, 59769u, 0u, 24797u, 0u, 17665u, 0u, 101657u, 58574u, 16647u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = u_input.c.wzz ^ u_input.c.yzx;
    var var_1 = vec2<bool>(true, true);
    global0 = array<u32, 19>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -147f)) * 1f) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(140f * 188f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1000f, 2225f)))))), arg_1.b);
    var var_3 = !(false | (arg_0.x != arg_0.x));
    return var_2.b;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec4<i32>) -> bool {
    let var_0 = Struct_1(false, select(func_2(vec3<u32>(max(u_input.c.x, arg_1.x), ~u_input.c.x, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(arg_1.x, 19u)], 19u)]), Struct_1(true, vec2<bool>(false, true))), vec2<bool>(select(any(vec4<bool>(false, true, false, false)), true, arg_2.x <= 32860i), false), true));
    let var_1 = arg_1.x;
    var var_2 = u_input.a;
    global0 = array<u32, 19>();
    var var_3 = u_input.c.zz;
    return all(var_0.b);
}

fn func_1() -> bool {
    var var_0 = false;
    let var_1 = all(select(vec2<bool>(all(vec3<bool>(false, false, true)), true), select(!func_2(vec3<u32>(1u, 42587u, 23247u), Struct_1(true, vec2<bool>(true, true))), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), true), vec2<bool>(false, true)));
    let var_2 = Struct_1((((global0[_wgslsmith_index_u32(0u, 19u)] ^ u_input.c.x) > (50467u ^ u_input.c.x)) || any(vec2<bool>(var_1, false))) == all(select(vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(true, var_1, var_1, var_1), func_3(vec3<i32>(2147483647i, u_input.b, 56689i), u_input.c.wwz, vec4<i32>(-1i, u_input.b, u_input.b, 0i)))), !(!select(select(vec2<bool>(var_1, true), vec2<bool>(var_1, var_1), var_1), select(vec2<bool>(false, var_1), vec2<bool>(true, var_1), vec2<bool>(true, true)), true)));
    var var_3 = var_2;
    global0 = array<u32, 19>();
    return !var_1;
}

fn func_4(arg_0: bool) -> f32 {
    var var_0 = vec3<bool>(arg_0, 1i == max(u_input.b, _wgslsmith_mult_i32(u_input.b, _wgslsmith_sub_i32(24586i, u_input.a))), arg_0);
    var var_1 = ~vec2<i32>(-u_input.a, ~(~(-u_input.a)));
    var var_2 = min(vec2<u32>(max(93452u, 3168u), ~_wgslsmith_clamp_u32(93u, ~u_input.c.x, 0u)), _wgslsmith_add_vec2_u32(abs(vec2<u32>(~global0[_wgslsmith_index_u32(u_input.c.x, 19u)], 4294967295u)), u_input.c.xx));
    var var_3 = Struct_1(all(vec4<bool>(any(vec3<bool>(arg_0, arg_0, false)), !var_0.x, var_0.x, true)) || false, var_0.xz);
    let var_4 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1176f, -1000f))))))));
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -565f), 352f))) * -582f), -351f);
    var var_1 = ~vec3<i32>(2147483647i, u_input.a, countOneBits(-1i));
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(func_4(func_1())), _wgslsmith_f_op_f32(func_4(all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(ceil(var_0))), var_0, var_0, var_0)))));
    var var_4 = !(u_input.c.x != ~u_input.c.x);
    var var_5 = Struct_1(!any(vec4<bool>(true, true, true, func_3(vec3<i32>(2147483647i, var_1.x, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(2894u, 19u)], global0[_wgslsmith_index_u32(117933u, 19u)], 0u), vec4<i32>(u_input.a, -841i, 2147483647i, var_1.x)))), !vec2<bool>(true, var_3.x < _wgslsmith_f_op_f32(var_0 - var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_3.x, var_3.x)), _wgslsmith_f_op_f32(305f * var_0))), -1193f))), ~(~(u_input.c.x & global0[_wgslsmith_index_u32(0u, 19u)])) ^ countOneBits(48943u));
}

