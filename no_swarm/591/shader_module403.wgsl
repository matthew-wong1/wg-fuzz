struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(34706u);

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<i32, 1>;

var<private> global3: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -519f));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(798f, var_0, -1340f), vec3<f32>(-280f, var_0, var_0), vec3<bool>(global3.x, false, global3.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(653f, var_0, 1485f), vec3<f32>(703f, 195f, -935f))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(-666f - var_0)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 + 1000f))))), -215f));
    let var_2 = _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, 337f)) * 1f)), 282f)));
    let var_3 = Struct_1(53277u);
    var var_4 = ~u_input.d;
    return ~(-18938i);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> f32 {
    global1 = array<Struct_1, 6>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-937f)), _wgslsmith_f_op_f32(step(1000f, -136f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-825f - -492f)), _wgslsmith_f_op_f32(floor(2225f)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(978f, 1036f, -724f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2035f, -1788f, -1000f) + vec3<f32>(-780f, -1133f, 462f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1305f, 2289f, 146f))))));
    let var_1 = 15726u;
    global2 = array<i32, 1>();
    global2 = array<i32, 1>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1240f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-533f)) + 994f))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    global0 = arg_1;
    global2 = array<i32, 1>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1001f + -196f)), _wgslsmith_f_op_f32(func_4(Struct_1(arg_1.a), ~func_3(), global1[_wgslsmith_index_u32(abs(min(_wgslsmith_clamp_u32(u_input.e.x, u_input.e.x, 1u), 29240u)), 6u)]))));
    global3 = !select(vec3<bool>(true, any(vec2<bool>(true, true)), global3.x), vec3<bool>(true, !global3.x, any(vec4<bool>(false, false, global3.x, global3.x))), select(!(!vec3<bool>(true, global3.x, true)), vec3<bool>(false, true, true), vec3<bool>(all(global3.yx), true, global3.x)));
    var var_1 = Struct_1(40662u);
    return global1[_wgslsmith_index_u32(abs(12850u), 6u)];
}

fn func_5(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(select(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 16588u, 0u), vec4<u32>(global0.a, 16906u, 11336u, arg_0.a)), (global0.a << (u_input.b % 32u)) | firstTrailingBit(4294967295u), true)), u_input.c.x), 6u)];
    let var_1 = global1[_wgslsmith_index_u32(0u, 6u)];
    global1 = array<Struct_1, 6>();
    var var_2 = u_input.c;
    global0 = func_2(select(_wgslsmith_clamp_vec3_i32(~(~vec3<i32>(u_input.a, -36098i, u_input.d.x)), vec3<i32>(global2[_wgslsmith_index_u32(~u_input.e.x, 1u)], 8357i, _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(-2147483647i, -684i))), -min(vec3<i32>(31883i, u_input.a, -73565i), vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(1u, 1u)], u_input.a))), ~vec3<i32>(-2147483647i, -1i, 16424i), select(!select(vec3<bool>(global3.x, false, false), vec3<bool>(global3.x, true, global3.x), false), vec3<bool>(any(vec4<bool>(global3.x, true, true, true)), global3.x, !global3.x), global3.x)), func_2(select(~vec3<i32>(u_input.d.x, global2[_wgslsmith_index_u32(14771u, 1u)], u_input.d.x) >> (select(vec3<u32>(var_2.x, arg_0.a, 78342u), vec3<u32>(69039u, var_2.x, var_2.x), vec3<bool>(global3.x, false, false)) % vec3<u32>(32u)), select(~vec3<i32>(global2[_wgslsmith_index_u32(0u, 1u)], u_input.d.x, u_input.d.x), countOneBits(vec3<i32>(67930i, u_input.a, global2[_wgslsmith_index_u32(0u, 1u)])), vec3<bool>(true, true, true)), global3.x), arg_0));
    return select(select(vec3<bool>(false, true, any(vec4<bool>(global3.x, global3.x, global3.x, true)) && true), !(!select(vec3<bool>(true, global3.x, true), vec3<bool>(global3.x, global3.x, global3.x), true)), select(vec3<bool>(false, false, all(global3.zy)), select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(true, global3.x, global3.x), vec3<bool>(true, true, true)), !(!global3.x))), !vec3<bool>(global3.x, true, true), select(vec3<bool>(true, all(select(vec4<bool>(true, true, global3.x, global3.x), vec4<bool>(global3.x, global3.x, global3.x, false), false)), global3.x), vec3<bool>(true, true, any(select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(global3.x, global3.x, global3.x), global3.x))), !(!vec3<bool>(false, false, global3.x))));
}

fn func_1(arg_0: vec4<u32>) -> StorageBuffer {
    let var_0 = global1[_wgslsmith_index_u32(reverseBits(arg_0.x), 6u)];
    global3 = vec3<bool>(false, !(firstLeadingBit(global2[_wgslsmith_index_u32(4294967295u, 1u)]) < -global2[_wgslsmith_index_u32(0u, 1u)]), !all(func_5(func_2(vec3<i32>(global2[_wgslsmith_index_u32(34400u, 1u)], global2[_wgslsmith_index_u32(36113u, 1u)], u_input.a), Struct_1(32313u)))));
    var var_1 = Struct_1(func_2(~(-vec3<i32>(1i, -39030i, -2147483647i) >> (~vec3<u32>(arg_0.x, 125149u, var_0.a) % vec3<u32>(32u))), Struct_1(~var_0.a)).a);
    global3 = !select(func_5(global1[_wgslsmith_index_u32(1u, 6u)]), vec3<bool>(false, global3.x, global3.x), any(select(func_5(Struct_1(var_1.a)).xx, vec2<bool>(false, true), !global3.xz)));
    global3 = vec3<bool>(select(!global3.x, select(false, all(!global3.yy), true), true & global3.x), !(!any(vec4<bool>(false, global3.x, global3.x, false)) | func_5(func_2(vec3<i32>(u_input.d.x, u_input.a, global2[_wgslsmith_index_u32(arg_0.x, 1u)]), Struct_1(1u))).x), true);
    return StorageBuffer(_wgslsmith_div_i32(-((global2[_wgslsmith_index_u32(arg_0.x, 1u)] & -33691i) ^ 0i), u_input.d.x), select(select(vec2<i32>(-1i) * -u_input.d, vec2<i32>(u_input.a, -1i), true), -u_input.d, global3.x && (_wgslsmith_div_u32(24558u, 55952u) < _wgslsmith_clamp_u32(global0.a, var_1.a, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec4<u32>(4109u, ~31623u, u_input.e.x & _wgslsmith_dot_vec3_u32(u_input.e, firstTrailingBit(vec3<u32>(1u, 14986u, u_input.e.x))), countOneBits(~_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(4294967295u, 1u, u_input.e.x)))));
}

