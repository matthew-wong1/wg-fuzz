struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(2147483647i, 0i, 3689i, -1i, 17580i, 10902i, -1i, 2147483647i, -2802i, -9539i, 2468i, 1i, -3563i, i32(-2147483648), -25660i, 18878i, -910i, -1i, -1184i, 1i, -1i, 2678i, 2147483647i, 2652i, i32(-2147483648), 1i, -20274i, -50712i, 0i, 1i, -1i);

var<private> global1: bool;

var<private> global2: array<f32, 2> = array<f32, 2>(1138f, -1615f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = u_input.a;
    global1 = !any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-329f, global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(u_input.b, 2u)])) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(508f, -464f, global2[_wgslsmith_index_u32(23832u, 2u)])))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 45240u, 16583u), vec3<u32>(u_input.b, u_input.b, u_input.b)), 2u)], _wgslsmith_f_op_f32(f32(-1f) * -2615f)), vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 2u)]), _wgslsmith_f_op_f32(step(274f, global2[_wgslsmith_index_u32(u_input.b, 2u)])), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.b, 2u)]))), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true))))));
    let var_2 = 1u;
    var var_3 = -select(-(-vec3<i32>(var_0.x, -2147483647i, -1i) >> (firstTrailingBit(vec3<u32>(22927u, 25970u, 44504u)) % vec3<u32>(32u))), u_input.a.yxz, any(vec3<bool>(true, true, true)));
    return all(vec2<bool>((true | any(vec2<bool>(true, false))) && true, true));
}

fn func_2() -> Struct_2 {
    global1 = all(vec4<bool>(all(vec4<bool>(true, true, true, true)), (1u < u_input.b) || (true & (446f <= global2[_wgslsmith_index_u32(u_input.b, 2u)])), all(vec3<bool>(true, true, any(vec3<bool>(true, true, false)))), true == (_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(18325u, 2u)] * -140f) <= _wgslsmith_div_f32(-921f, 637f))));
    let var_0 = u_input.a.zwy & u_input.a.xzw;
    global0 = array<i32, 31>();
    var var_1 = Struct_2(func_3() & !any(vec4<bool>(true, true, false, true)), u_input.b);
    let var_2 = Struct_1(569f, false, !(!(!vec4<bool>(var_1.a, var_1.a, var_1.a, true))));
    return Struct_2(any(vec3<bool>(-487f >= global2[_wgslsmith_index_u32(var_1.b, 2u)], true, true)) == true, abs(~(~_wgslsmith_mod_u32(0u, var_1.b))));
}

fn func_1() -> bool {
    var var_0 = ~_wgslsmith_mod_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(31152u, u_input.b) & vec2<u32>(u_input.b, u_input.b), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 87946u), vec2<u32>(30235u, 4294967295u))), min(vec2<u32>(4294967295u, u_input.b) & vec2<u32>(u_input.b, u_input.b), select(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(81565u, 26583u), false)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 30551u), vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b)));
    let var_1 = func_2();
    var var_2 = vec3<i32>(global0[_wgslsmith_index_u32(var_1.b, 31u)], 1398i, min(1381i, u_input.a.x));
    var_0 = _wgslsmith_mod_vec2_u32(~(~(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.b, 68334u), vec2<u32>(10771u, 4294967295u), vec2<u32>(u_input.b, var_1.b)) >> ((vec2<u32>(15436u, 1u) << (vec2<u32>(var_0.x, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)))), vec2<u32>(~var_0.x, 2398u));
    var var_3 = Struct_2(true, countOneBits(firstTrailingBit(~var_0.x << (0u % 32u))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec2<bool>(false, 0u > _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.b), vec3<u32>(11838u, u_input.b, 0u))), vec2<bool>(true, true), true || func_1()), vec2<bool>(true, true), select(select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), 4294967295u >= u_input.b), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), !(global2[_wgslsmith_index_u32(16916u, 2u)] > 1120f)), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, false, true)), true), u_input.b >= min(231u, 0u)), !select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
    var var_1 = Struct_1(-1865f, var_0.x && true, select(!vec4<bool>(true, var_0.x, var_0.x, var_0.x), select(select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), select(vec4<bool>(true, false, true, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), !vec4<bool>(false, var_0.x, false, true)), vec4<bool>(false, var_0.x || true, all(vec3<bool>(true, false, true)), true), any(vec4<bool>(var_0.x, var_0.x, false, false))), !vec4<bool>(any(vec4<bool>(false, var_0.x, var_0.x, false)), false, select(false, false, var_0.x), all(vec3<bool>(true, true, var_0.x)))));
    let var_2 = 4294967295u;
    let var_3 = func_2();
    let var_4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(var_3.b, 2u)]))), var_1.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_3.b, 2u)] * -103f) + _wgslsmith_f_op_f32(max(-1352f, var_1.a)))), global2[_wgslsmith_index_u32(42659u, 2u)], _wgslsmith_f_op_f32(round(-920f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(41001u, 1u, max(u_input.b, 1u)), _wgslsmith_f_op_f32(-661f * -502f));
}

