struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec2<bool>(false, false));

var<private> global1: array<bool, 30>;

var<private> global2: Struct_1 = Struct_1(17828u, vec2<bool>(true, true));

var<private> global3: array<Struct_1, 32>;

var<private> global4: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(7199u, vec2<bool>(false, true)), Struct_1(1u, vec2<bool>(false, true)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-499f - _wgslsmith_f_op_f32(trunc(1139f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(select(254f, 492f, true)))))) + 1137f);
    return _wgslsmith_div_u32(0u, _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(77755u, global2.a, global2.a), vec3<u32>(arg_0, global0.a, u_input.b))), u_input.b)) != _wgslsmith_mod_u32(arg_0, ~_wgslsmith_add_u32(~4294967295u, 0u));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> i32 {
    var var_0 = !func_3(_wgslsmith_mult_u32(4294967295u, global2.a));
    var var_1 = reverseBits(max(vec4<u32>(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b, 4294967295u, global0.a), vec4<u32>(62695u, 1u, 74853u, arg_0.a), vec4<u32>(535u, global2.a, global0.a, 69942u)), firstTrailingBit(vec4<u32>(global2.a, 30753u, arg_1, global0.a))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(61419u, arg_0.a, arg_1), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 21769u, 4294967295u), vec3<u32>(58158u, 1u, 374u))), _wgslsmith_div_u32(global0.a ^ global2.a, arg_0.a)), ~vec4<u32>(~global2.a, 46710u, _wgslsmith_dot_vec4_u32(vec4<u32>(43104u, global0.a, 13183u, 63515u), vec4<u32>(4294967295u, 19993u, 1u, global0.a)), ~80105u)));
    let var_2 = vec2<bool>(select(global0.b.x, arg_0.b.x, select(true, any(vec3<bool>(arg_0.b.x, true, global0.b.x)) == all(vec3<bool>(true, false, global0.b.x)), arg_0.b.x)), false);
    global0 = Struct_1(~_wgslsmith_sub_u32(firstLeadingBit(4294967295u), firstTrailingBit(0u)) | select(1u, ~(arg_0.a ^ global2.a), any(!vec4<bool>(arg_0.b.x, false, true, true))), global0.b);
    return _wgslsmith_div_i32(u_input.c, i32(-1i) * -(1i >> (arg_0.a % 32u))) ^ min(~u_input.c, _wgslsmith_clamp_i32(~reverseBits(u_input.c), 1i, 20653i));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> i32 {
    global1 = array<bool, 30>();
    var var_0 = Struct_1(~(~global2.a), global2.b);
    global1 = array<bool, 30>();
    let var_1 = 1u;
    var var_2 = ~(-(~func_2(arg_3, arg_1.a)));
    return arg_2 >> (_wgslsmith_mod_u32(var_0.a, var_0.a) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 30>();
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(~u_input.a, min(47703i, ~(u_input.c & u_input.a))), ~func_1(global4[_wgslsmith_index_u32(78297u, 2u)], Struct_1(_wgslsmith_add_u32(1u, global0.a), vec2<bool>(true, global0.b.x)), ~(~(-29004i)), global4[_wgslsmith_index_u32(0u, 2u)]));
    var var_1 = 0u;
    let var_2 = Struct_1(61168u, !select(vec2<bool>(true, true), vec2<bool>(any(global2.b), global0.b.x), true));
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(46534u >> (~max(global0.a, abs(32246u)) % 32u), ~7240u), 32u)];
    var var_4 = vec3<bool>(global2.b.x, all(vec2<bool>(true, !select(global1[_wgslsmith_index_u32(u_input.b, 30u)], false, var_2.b.x))), true);
    let var_5 = vec4<bool>(false, global0.b.x, false || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -698f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(969f)) + -1347f)), true);
    var var_6 = vec4<bool>(func_3(_wgslsmith_add_u32(u_input.b, _wgslsmith_sub_u32(_wgslsmith_div_u32(global0.a, 18593u), ~678u))), true, !var_4.x, var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-vec3<i32>(1i, var_0, -u_input.c)), 30604u, ~firstTrailingBit(vec2<i32>(~var_0, u_input.a)));
}

