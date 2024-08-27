struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: Struct_1 = Struct_1(i32(-2147483648), vec2<u32>(0u, 115745u));

var<private> global2: i32 = -9099i;

var<private> global3: Struct_2 = Struct_2(vec4<bool>(true, true, true, false), -1i);

var<private> global4: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: bool) -> u32 {
    let var_0 = Struct_1(global3.b, ~vec2<u32>(11958u, global1.b.x << (1u % 32u)) & global1.b);
    global2 = 0i;
    var var_1 = u_input.a;
    var_1 = vec2<i32>(~var_0.a, var_1.x);
    var var_2 = Struct_2(!vec4<bool>(true, !global4.a.x | (global4.a.x == global4.a.x), arg_2, global4.a.x), global4.b);
    return 410u | global1.b.x;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-696f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -446f) + _wgslsmith_f_op_f32(848f - 936f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -361f), _wgslsmith_f_op_f32(1171f - 2170f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-387f, _wgslsmith_f_op_f32(-2114f + -164f)), _wgslsmith_f_op_f32(ceil(-1353f))))));
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    let var_1 = ~vec4<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(22086u, 30u)], 80075i), _wgslsmith_add_i32(41709i, ~u_input.a.x), global0[_wgslsmith_index_u32(~(~(~global1.b.x)), 30u)], firstTrailingBit(_wgslsmith_div_i32(max(global1.a, -2147483647i), ~23171i)));
    let var_2 = vec2<u32>(countOneBits((~4294967295u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, global1.b.x, 0u), vec4<u32>(global1.b.x, global1.b.x, global1.b.x, 1u))) | ~(~global1.b.x)), select(92874u, ~4294967295u, any(global4.a.zzx)));
    return Struct_1(global4.b, global1.b & vec2<u32>(~global1.b.x, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, 5365u, 0u), vec4<u32>(var_2.x, var_2.x, 6606u, 0u)))));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = global4.a.yzx;
    let var_1 = Struct_1(_wgslsmith_dot_vec2_i32(~(~(u_input.a ^ u_input.a)), vec2<i32>(-2147483647i, u_input.a.x)), firstLeadingBit(_wgslsmith_add_vec2_u32(global1.b, global1.b << (global1.b % vec2<u32>(32u)))));
    return select(select(!vec4<bool>(true, true, global3.a.x, select(global3.a.x, false, global4.a.x)), !select(select(global4.a, vec4<bool>(false, arg_0.a.x, false, var_0.x), true), select(global4.a, vec4<bool>(true, global4.a.x, false, arg_0.a.x), global4.a.x), vec4<bool>(false, true, var_0.x, arg_0.a.x)), select(vec4<bool>(all(vec3<bool>(false, false, global4.a.x)), false && var_0.x, all(vec2<bool>(global4.a.x, true)), false), arg_0.a, global3.a)), !vec4<bool>(all(select(vec4<bool>(arg_0.a.x, false, true, true), arg_0.a, true)), var_0.x, true, false), !var_0.x && any(!vec4<bool>(true, false, arg_0.a.x, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 30>();
    let var_0 = reverseBits(vec4<u32>(global1.b.x, 4294967295u, global1.b.x, ~global1.b.x));
    var var_1 = Struct_1(~u_input.a.x, vec2<u32>(~(~var_0.x), _wgslsmith_mod_u32(global1.b.x, func_1(var_0, vec4<f32>(-409f, 1387f, 108f, 763f), true))));
    let var_2 = Struct_1(global0[_wgslsmith_index_u32(0u, 30u)], global1.b);
    var var_3 = Struct_2(!select(vec4<bool>(global4.a.x, true, true, true), global3.a, !vec4<bool>(true, global4.a.x, true, false)), countOneBits(var_1.a));
    var_1 = func_2();
    var var_4 = select(vec4<bool>(all(global3.a.wz), all(!global3.a), global3.a.x, true), vec4<bool>(all(func_3(Struct_2(vec4<bool>(true, false, false, global4.a.x), var_3.b))), global3.a.x, global4.a.x, all(select(global3.a.ww, vec2<bool>(true, true), !global4.a.zz))), !global3.a.x);
    var var_5 = vec4<i32>(global0[_wgslsmith_index_u32(1u, 30u)], var_1.a, -_wgslsmith_mult_i32(global3.b, var_1.a) ^ var_1.a, global4.b);
    let var_6 = ~global4.b ^ 19402i;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.b);
}

