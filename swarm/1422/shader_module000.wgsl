struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(742f, 144f, 650f, -1018f, -685f, -872f, -214f, 843f, -620f, -521f, -603f, 158f, 571f, 748f, 297f);

var<private> global1: vec4<i32>;

var<private> global2: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(369f, -449f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    global2 = array<vec2<f32>, 1>();
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(24975u, 1u)])))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(u_input.e.x, 1u)], _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(global2[_wgslsmith_index_u32(u_input.e.x, 1u)]))))))), (u_input.a > u_input.c) && any(vec3<bool>(all(vec2<bool>(true, false)), any(vec3<bool>(true, true, false)), true))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(829f, 1357f, var_0.x, -978f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, -1616f, global0[_wgslsmith_index_u32(u_input.b.x, 15u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], var_0.x, 1172f, 503f))))))), false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 15u)])) + var_0.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(4294967295u, 1u)]);
    let var_3 = var_0;
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_2() -> Struct_1 {
    global2 = array<vec2<f32>, 1>();
    global0 = array<f32, 15>();
    let var_0 = vec2<f32>(373f, -940f);
    global0 = array<f32, 15>();
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 15u)], var_0.x, global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(53035u, 15u)])) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], var_0.x, -1524f, 935f), vec4<f32>(var_0.x, -1367f, global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(u_input.e.x, 15u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 15u)], var_0.x, var_0.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(46918u, 15u)], var_0.x, var_0.x, -506f), vec4<f32>(805f, 223f, -1333f, var_0.x), false)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, -148f, var_0.x, 1356f)))))), false & (38080u < ((u_input.b.x ^ 1u) | 17751u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(~u_input.b.x, 15u)], var_0.x)), -756f));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 15u)] - 489f), 103f, _wgslsmith_f_op_f32(f32(-1f) * -1382f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(27851u, 15u)])) + vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e.x, u_input.e.x), 15u)], var_0.x, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(48647u, 15u)], global0[_wgslsmith_index_u32(u_input.b.x, 15u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(9009u, 15u)]))) - vec4<f32>(-383f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 1u), 15u)]), _wgslsmith_f_op_f32(f32(-1f) * -365f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(356f))))), all(!(!vec4<bool>(var_1.b, false, var_1.b, false))), _wgslsmith_f_op_f32(func_3()));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> u32 {
    global2 = array<vec2<f32>, 1>();
    let var_0 = func_2();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-939f, arg_2.c)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x + -520f) * -1513f))), _wgslsmith_f_op_f32(f32(-1f) * -156f), arg_0.c);
    let var_2 = arg_2;
    var_1 = var_2.a;
    return u_input.e.x;
}

fn func_1() -> u32 {
    global0 = array<f32, 15>();
    var var_0 = select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, false)))), select(vec4<bool>(false, true, true, false), !select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true)), false), 780f < global0[_wgslsmith_index_u32(func_4(func_2(), u_input.b.x, func_2()), 15u)]);
    let var_1 = select(vec2<bool>(!(global1.x < countOneBits(-1i)), 0i <= global1.x), var_0.wx, !vec2<bool>(var_0.x, select(global1.x >= -59152i, true, false)));
    var var_2 = select(abs(u_input.e), ~(~(~select(u_input.b, vec2<u32>(4294967295u, u_input.b.x), false))), !(!var_0.x));
    global0 = array<f32, 15>();
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 15>();
    let var_0 = false;
    global1 = vec4<i32>(_wgslsmith_clamp_i32(abs(u_input.d.x), min(_wgslsmith_add_i32(countOneBits(36303i), 45030i), -(i32(-1i) * -2147483647i)), _wgslsmith_add_i32(global1.x, -6655i)), -4655i, -8597i, u_input.d.x);
    global1 = select(vec4<i32>(1i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-u_input.d, _wgslsmith_clamp_vec2_i32(u_input.d, u_input.d, global1.ww)), 45812i), u_input.c, -12321i), vec4<i32>(countOneBits(~_wgslsmith_add_i32(global1.x, 1i)), ~(~50534i), u_input.a, 0i), !var_0);
    var var_1 = !(!select(!vec3<bool>(true, var_0, false), vec3<bool>(true, true, false), true));
    let var_2 = Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(14870u, 15u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_1(), 24226u), 15u)], -133f, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(87157u, ~60228u, _wgslsmith_dot_vec2_u32(u_input.b, reverseBits(u_input.e))), 15u)]), all(select(vec4<bool>(!var_0, var_1.x, var_0 && true, !var_0), vec4<bool>(true, true, true, any(vec3<bool>(var_0, false, true))), var_0)), -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(-282f, u_input.e.x, _wgslsmith_f_op_f32(floor(222f)), global2[_wgslsmith_index_u32(~reverseBits(~(~4294967295u)), 1u)]);
}

