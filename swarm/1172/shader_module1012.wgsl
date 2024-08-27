struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2464f;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_2, 25>;

var<private> global3: array<u32, 11>;

var<private> global4: vec4<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = true;
    global4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1356f))), _wgslsmith_f_op_f32(global4.x - 2303f), global4.x));
    global3 = array<u32, 11>();
    let var_1 = Struct_4(Struct_1(any(select(!vec2<bool>(var_0, var_0), select(vec2<bool>(var_0, false), vec2<bool>(var_0, false), vec2<bool>(true, var_0)), !vec2<bool>(true, var_0)))), !(!select(select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), var_0), vec2<bool>(var_0, false), vec2<bool>(var_0, true))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global4.zz)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global4.x)) + 1224f), -1000f))));
    return 878f;
}

fn func_2(arg_0: Struct_4) -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(global4.x - -1262f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))))) + _wgslsmith_f_op_f32(-global1.x));
    let var_0 = vec4<bool>(true, any(!vec4<bool>(false, true, arg_0.b.x & true, select(arg_0.a.a, arg_0.b.x, true))), any(select(vec4<bool>(1640f > global1.x, false, !arg_0.b.x, arg_0.a.a), vec4<bool>(true, true, true, arg_0.a.a), arg_0.b.x)), arg_0.a.a);
    global0 = global1.x;
    var var_1 = arg_0.a;
    let var_2 = global3[_wgslsmith_index_u32(max(~global3[_wgslsmith_index_u32(min(firstTrailingBit(0u), abs(u_input.a.x | u_input.b.x)), 11u)], 0u), 11u)];
    return arg_0;
}

fn func_1(arg_0: f32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1695f - 614f));
    let var_1 = func_2(Struct_4(Struct_1(false), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(false, true, false))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(global1.x, -1070f)), 832f), vec2<f32>(-1785f, global1.x)) - global4.xy) - vec2<f32>(1260f, arg_0));
    var var_2 = max(21232u, _wgslsmith_div_u32(~13857u, ~(21037u >> (u_input.b.x % 32u))));
    let var_3 = Struct_3(global2[_wgslsmith_index_u32(28606u, 25u)], global1.x, -vec3<i32>(u_input.e, 8214i, ~(-4374i)), _wgslsmith_f_op_f32(-arg_0));
    return func_2(func_2(func_2(Struct_4(var_3.a.d, vec2<bool>(var_1.a.a, var_3.a.d.a)))));
}

fn func_4(arg_0: Struct_4) -> vec3<u32> {
    var var_0 = ~min(reverseBits(firstLeadingBit(u_input.e)) << (~global3[_wgslsmith_index_u32(~0u, 11u)] % 32u), ~(-2147483647i));
    return u_input.a.xyz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global3 = array<u32, 11>();
    let var_1 = u_input.a | (~(~(~u_input.c)) | ~(~abs(vec4<u32>(4294967295u, 4294967295u, 64609u, 1u))));
    let var_2 = firstLeadingBit(~vec4<u32>(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(53515u, 11u)], 1u, 1u) ^ ~global3[_wgslsmith_index_u32(var_1.x, 11u)], ~1u, _wgslsmith_mod_u32(0u, ~31176u), 4294967295u));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~firstLeadingBit(vec3<u32>(u_input.b.x, 4294967295u, 0u))), func_4(func_1(-1000f))), 25u)];
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_3.a, _wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(max(-1969f, _wgslsmith_f_op_f32(-var_3.a)))))));
    var var_4 = vec4<bool>(var_0, var_3.d.a, !any(vec4<bool>(var_0, true, true, any(vec4<bool>(var_3.d.a, var_3.b.a, true, false)))), false);
    global1 = _wgslsmith_f_op_vec2_f32(-global4.yw);
    let x = u_input.a;
    s_output = StorageBuffer(-35326i, global3[_wgslsmith_index_u32(countOneBits(~_wgslsmith_mult_u32(var_3.c, _wgslsmith_sub_u32(43387u, var_1.x))), 11u)], global4.x);
}

