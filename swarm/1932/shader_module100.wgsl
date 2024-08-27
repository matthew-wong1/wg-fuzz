struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(43479u, 27031u, 77764u, 4294967295u, 85382u, 4294967295u, 0u, 4294967295u, 0u, 22289u);

var<private> global1: array<vec2<f32>, 6>;

var<private> global2: array<Struct_1, 7>;

var<private> global3: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.a, arg_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a)) - -1394f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.a, -380f))), arg_0.a)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1336f)), var_0.a, global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(31578u, 10u)]), 10u)] <= (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17853u, 10u)], 10u)] | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)])))));
    var var_2 = vec3<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -912f))) > 1139f, true, true);
    global1 = array<vec2<f32>, 6>();
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(-arg_1.a))), -1035f), var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-625f + _wgslsmith_f_op_f32(-1556f + -135f)) * _wgslsmith_f_op_f32(-224f + arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-975f, _wgslsmith_f_op_f32(-var_0.a), true))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.a)) + -990f), -510f) * _wgslsmith_f_op_f32(floor(var_0.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, 1162f)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> StorageBuffer {
    let var_0 = global2[_wgslsmith_index_u32(85211u, 7u)];
    var var_1 = _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(60725u, 7u)], Struct_1(-710f))) >= _wgslsmith_f_op_f32(-280f + -1000f);
    global2 = array<Struct_1, 7>();
    let var_2 = arg_0;
    global1 = array<vec2<f32>, 6>();
    return StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1251f, 1053f))), select(_wgslsmith_div_vec4_i32(-arg_1, ~vec4<i32>(arg_1.x, arg_1.x, -14727i, arg_1.x)) << (firstLeadingBit(vec4<u32>(41843u, 4294967295u, 27475u, global0[_wgslsmith_index_u32(1u, 10u)]) | vec4<u32>(95420u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41296u, 10u)], 10u)], 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], 17017u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec2_i32(abs(arg_1.xx), u_input.b.yy), 1476i, ~_wgslsmith_dot_vec2_i32(arg_1.ww, vec2<i32>(-2147483647i, -23797i)), u_input.b.x), select(vec4<bool>(false, true, true, any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec3<bool>(true, false, true)), -2147483647i != arg_1.x))), u_input.b.xz, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, var_0.a, -1894f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1222f, arg_0.a, -1333f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a, var_0.a, -504f))) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, 595f, 341f), vec3<f32>(var_0.a, 641f, arg_0.a)))))));
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = select(false, -815f == arg_0.a, !any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))));
    global2 = array<Struct_1, 7>();
    global0 = array<u32, 10>();
    let var_1 = _wgslsmith_f_op_f32(min(669f, _wgslsmith_f_op_f32(arg_0.a + -2067f)));
    global1 = array<vec2<f32>, 6>();
    return func_2(global2[_wgslsmith_index_u32(0u, 7u)], vec4<i32>(~_wgslsmith_mod_i32(2147483647i, 60444i), u_input.a, 28075i, 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-621f + _wgslsmith_f_op_f32(357f * -2325f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(649f - 922f) - _wgslsmith_f_op_f32(f32(-1f) * -468f))))) * -1000f);
    global3 = _wgslsmith_sub_u32(~(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14405u, 10u)], 10u)], 10u)], 10u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43755u, 10u)], 10u)], 10u)], 10u)], 31817u, global0[_wgslsmith_index_u32(1u, 10u)]))) ^ global0[_wgslsmith_index_u32(~3955u, 10u)]), 1u);
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-816f - _wgslsmith_f_op_f32(max(967f, _wgslsmith_f_op_f32(abs(313f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1296f + 330f)))))), _wgslsmith_f_op_f32(abs(-196f))));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 660f))))));
    var var_2 = (~(abs(vec2<i32>(1i, -1i)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(131740u, 10u)], 10u)]), vec2<u32>(42125u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)]), vec2<u32>(1u, 2206u)) % vec2<u32>(32u))) & vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.b.x, u_input.a), min(-34127i, 1i), -13848i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, 14932i, u_input.a), vec4<i32>(u_input.a, u_input.b.x, -2147483647i, u_input.a) >> (vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(11598u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)]) % vec4<u32>(32u))))) >> (~countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]) ^ vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], global0[_wgslsmith_index_u32(1u, 10u)]), vec2<u32>(4294967295u, 1u) ^ vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26524u, 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = func_1(Struct_1(-642f));
}

