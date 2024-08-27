struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(4294967295u, 4294967295u, 15044u, 0u), vec4<u32>(0u, 1u, 23280u, 82916u), vec4<u32>(42406u, 42719u, 9860u, 1363u), vec4<u32>(1u, 27517u, 4294967295u, 23597u), vec4<u32>(32481u, 4022u, 47064u, 15622u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(0u, 0u, 87986u, 0u), vec4<u32>(0u, 40115u, 0u, 38630u), vec4<u32>(0u, 31600u, 28133u, 17200u), vec4<u32>(9464u, 1u, 9334u, 4294967295u), vec4<u32>(72880u, 13943u, 12495u, 28669u), vec4<u32>(1u, 0u, 0u, 4294967295u), vec4<u32>(1u, 0u, 1u, 62195u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    let var_0 = vec3<i32>(-2147483647i << (~(~u_input.c) % 32u), arg_0.x << (u_input.c % 32u), reverseBits(abs(firstTrailingBit(20742i))));
    var var_1 = 1i;
    let var_2 = 4294967295u;
    global1 = array<vec4<u32>, 13>();
    var var_3 = Struct_1(!arg_1.a);
    return true;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = all(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, all(vec4<bool>(true, true, true, true)), func_3(u_input.a.wyy, Struct_1(true)), false), vec4<bool>(true, all(vec2<bool>(true, false)), true, true)));
    let var_1 = global0[_wgslsmith_index_u32(arg_1, 18u)];
    var var_2 = true;
    let var_3 = arg_1;
    var_0 = all(vec4<bool>(true, select(var_1.a, true, any(select(vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a)))), true, true));
    return global0[_wgslsmith_index_u32(26005u, 18u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> bool {
    global0 = array<Struct_1, 18>();
    var var_0 = Struct_1(!(!all(select(vec4<bool>(false, true, arg_0.a, true), vec4<bool>(true, arg_1.a, false, arg_1.a), arg_0.a))));
    let var_1 = func_2(-926f, ~(~(~_wgslsmith_mult_u32(u_input.c, 4294967295u))), max(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(113939u, 13u)] & vec4<u32>(u_input.c, arg_3, 77122u, u_input.c), ~vec4<u32>(1u, 4294967295u, arg_3, 4294967295u)), firstTrailingBit(13582u) << (u_input.c % 32u), 4294967295u), 13u)], vec4<u32>(arg_3, 1u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 4486u), 32900u, 118898u), ~43812u)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(558f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1679f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1505f) * -1108f))), true)), _wgslsmith_f_op_f32(max(-879f, 1463f)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-892f)));
    return min(abs(_wgslsmith_div_u32(~arg_3, 1u)), ~u_input.c) == _wgslsmith_sub_u32(62509u, arg_3);
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = vec3<i32>((i32(-1i) * -_wgslsmith_add_i32(arg_1, arg_1)) ^ -35918i, countOneBits(~(-10502i) & ~firstTrailingBit(-7960i)), arg_1);
    global1 = array<vec4<u32>, 13>();
    global0 = array<Struct_1, 18>();
    var var_1 = select(vec2<bool>(!(!(true == arg_0)), func_4(func_2(1071f, 42921u, global1[_wgslsmith_index_u32(u_input.c, 13u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, u_input.c), 18u)], Struct_1(arg_0), u_input.c) && (any(vec2<bool>(arg_0, true)) && (arg_0 || arg_0))), !select(select(select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), false), vec2<bool>(true, false), vec2<bool>(arg_0, arg_0)), vec2<bool>(func_4(global0[_wgslsmith_index_u32(10663u, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)], u_input.c), false), vec2<bool>(true, true)), false == arg_0);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~reverseBits(~_wgslsmith_clamp_u32(72706u, u_input.c, 1u)), 1u), 18u)];
    return Struct_1(!var_2.a);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = arg_1;
    let var_1 = ~1u;
    let var_2 = Struct_1(!any(vec4<bool>(true, false & arg_2.a, any(vec2<bool>(false, var_0.a)), arg_1.a || false)));
    let var_3 = true;
    var var_4 = func_1(arg_2.a, -12267i);
    return _wgslsmith_f_op_f32(floor(-898f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(10531u, u_input.c, u_input.c), vec3<u32>(4294967295u, u_input.c, u_input.c))), func_1(select(select(true, true, true), true, false), u_input.b.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c)) % 32u)), func_1(true, -37305i >> (_wgslsmith_sub_u32(36343u, u_input.c) % 32u)))));
    global0 = array<Struct_1, 18>();
    global1 = array<vec4<u32>, 13>();
    global0 = array<Struct_1, 18>();
    let var_1 = vec2<bool>(true, true);
    global0 = array<Struct_1, 18>();
    global1 = array<vec4<u32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

