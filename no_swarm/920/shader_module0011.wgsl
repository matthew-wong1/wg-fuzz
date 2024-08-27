struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(false, true, false, true, true);

var<private> global1: Struct_1 = Struct_1(-1i, 361f);

var<private> global2: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(4294967295u, 0u), vec2<u32>(1202u, 1u), vec2<u32>(0u, 1u), vec2<u32>(23193u, 0u), vec2<u32>(16071u, 4528u), vec2<u32>(18702u, 22424u), vec2<u32>(39480u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(1u, 882u), vec2<u32>(63410u, 0u), vec2<u32>(4294967295u, 68571u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 72223u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(22557u, 1u), vec2<u32>(24049u, 0u), vec2<u32>(0u, 1u), vec2<u32>(66563u, 54825u), vec2<u32>(16803u, 0u), vec2<u32>(38357u, 49344u), vec2<u32>(37409u, 4381u), vec2<u32>(35000u, 4294967295u), vec2<u32>(43688u, 82029u), vec2<u32>(0u, 57093u), vec2<u32>(106558u, 4294967295u), vec2<u32>(17191u, 52939u));

var<private> global3: array<i32, 14> = array<i32, 14>(2147483647i, 0i, i32(-2147483648), i32(-2147483648), -1i, -32452i, 28737i, 8368i, -1i, -19079i, 2147483647i, -32418i, i32(-2147483648), 2147483647i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -683f) - global1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), all(vec4<bool>(select(all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 5u)], false)), !global0[_wgslsmith_index_u32(1u, 5u)], 0u < u_input.a.x), global0[_wgslsmith_index_u32(select(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(34137u, 5u)] | global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), 5u)], 4294967295u != select(u_input.a.x, 4294967295u, global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), select(true, true, true) | all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)]))))));
    var var_1 = ~(~(~u_input.a));
    var var_2 = ~vec4<i32>(~(~(~4054i)), firstTrailingBit(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(select(var_1.x, var_1.x, global0[_wgslsmith_index_u32(var_1.x, 5u)]), 14u)], ~global3[_wgslsmith_index_u32(29165u, 14u)])), ~(-47041i), -43180i);
    var var_3 = Struct_1(21236i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-625f - arg_0)));
    var var_4 = _wgslsmith_add_u32(~(~(~var_1.x)), 110199u) == _wgslsmith_mult_u32(~u_input.a.x, 4294967295u);
    return 71789u;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> Struct_1 {
    let var_0 = arg_0.ywy;
    var var_1 = Struct_1(-global3[_wgslsmith_index_u32(1u | func_3(-315f), 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    var var_2 = min(arg_0.x, u_input.a.x);
    return Struct_1(_wgslsmith_dot_vec2_i32(-countOneBits(countOneBits(vec2<i32>(32121i, global1.a))), max(abs(~vec2<i32>(var_1.a, -1i)), abs(~vec2<i32>(global1.a, var_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-484f, 1000f) * arg_1), _wgslsmith_f_op_f32(global1.b * -942f)))));
}

fn func_1(arg_0: vec4<i32>) -> StorageBuffer {
    global1 = func_2(~(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.a.x, 97422u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(39667u, u_input.a.x, 9350u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x))) & (~vec4<u32>(89615u, u_input.a.x, u_input.a.x, u_input.a.x) & ~vec4<u32>(u_input.a.x, 55121u, u_input.a.x, 48076u))), _wgslsmith_div_f32(global1.b, -146f));
    var var_0 = 35203i;
    let var_1 = -1i;
    var var_2 = Struct_1(firstLeadingBit(-64386i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -989f)));
    global0 = array<bool, 5>();
    return StorageBuffer(u_input.a.yz << (global2[_wgslsmith_index_u32(~(~1u), 28u)] % vec2<u32>(32u)), ~(-80162i), vec4<u32>(~(~u_input.a.x), u_input.a.x, 1u, max(reverseBits(u_input.a.x >> (u_input.a.x % 32u)), 4294967295u)), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(abs(vec4<i32>(global3[_wgslsmith_index_u32(41127u, 14u)], 8510i, -_wgslsmith_clamp_i32(global1.a, 2147483647i, global1.a), global1.a)));
}

