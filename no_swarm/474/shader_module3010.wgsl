struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: i32;

var<private> global2: array<vec3<bool>, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: bool) -> f32 {
    global0 = array<bool, 6>();
    let var_0 = _wgslsmith_f_op_f32(-arg_0);
    let var_1 = Struct_1(select(!(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), false)), vec2<bool>(!all(vec3<bool>(arg_1, arg_3, false)), true), !any(select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_1, arg_3), vec2<bool>(arg_3, arg_3)))), vec2<i32>(u_input.b.x, 8785i) | min(select(vec2<i32>(u_input.d, u_input.a.x), u_input.a, any(global2[_wgslsmith_index_u32(26045u, 16u)])), min(-u_input.b.ww, min(vec2<i32>(u_input.d, 2147483647i), vec2<i32>(0i, 65465i)))), !(!vec2<bool>(select(arg_1, global0[_wgslsmith_index_u32(61835u, 6u)], arg_3), arg_3)), ~vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.c.xxw, vec3<u32>(1u, 1u, u_input.c.x)), max(u_input.c.x, 4294967295u)), ~u_input.c.x, u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_sub_u32(32424u, u_input.c.x))));
    let var_2 = vec4<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-289f, -1352f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1522f)) - _wgslsmith_f_op_f32(var_0 - -452f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(arg_2)))), -2137f, any(vec2<bool>(true, true))))), 1610f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2))))) * _wgslsmith_f_op_f32(trunc(2330f))));
    var var_3 = u_input.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -905f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -867f))), arg_2))));
}

fn func_2() -> f32 {
    global1 = 41860i;
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1165f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-190f, false, 786f, true))))), -709f);
    var var_1 = global0[_wgslsmith_index_u32(select(~u_input.c.x, _wgslsmith_div_u32(11124u >> (u_input.c.x % 32u), u_input.c.x >> (reverseBits(u_input.c.x) % 32u)), any(select(!vec2<bool>(true, global0[_wgslsmith_index_u32(33907u, 6u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(54860u, 6u)]), global0[_wgslsmith_index_u32(396u, 6u)] | global0[_wgslsmith_index_u32(u_input.c.x, 6u)]))) << (4294967295u % 32u), 6u)];
    let var_2 = ~u_input.b.zy;
    var var_3 = countOneBits(_wgslsmith_div_i32(_wgslsmith_mod_i32(~u_input.b.x, -var_2.x), -20112i) << (~(~_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 49283u)) % 32u));
    return 523f;
}

fn func_1() -> Struct_2 {
    global1 = u_input.a.x;
    global0 = array<bool, 6>();
    var var_0 = _wgslsmith_mod_i32(firstLeadingBit(1i), 42512i);
    var var_1 = u_input.b.www;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, 856f)), -990f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1003f)) * 966f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))));
    return Struct_2(global2[_wgslsmith_index_u32(12862u, 16u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-233f, _wgslsmith_f_op_f32(func_2()), -955f)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(112612u, ~18266u, 4294967295u), vec3<u32>(4294967295u, ~min(4294967295u, 2910u), u_input.c.x), vec3<bool>(true, all(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 6772u), 16u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(u_input.c.x, u_input.c.x)) != ~1u)), select(~(~firstLeadingBit(u_input.c.x)), u_input.c.x >> ((max(u_input.c.x, u_input.c.x) & _wgslsmith_mult_u32(u_input.c.x, 1u)) % 32u), ~(~4294967295u) >= select(4294967295u, 16917u, global0[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 6u)])));
}

