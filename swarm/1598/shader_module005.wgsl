struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: bool) -> f32 {
    global0 = 570f;
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * -1871f)))) + 918f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    let var_1 = true;
    global1 = array<u32, 32>();
    var var_2 = ~(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(1916u, 32u)], 4294967295u, 21238u, var_0.a), ~vec4<u32>(4294967295u, 1u, 1u, 45950u)) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(65074u, 4294967295u, var_0.a), ~vec3<u32>(1u, 67503u, 7885u)) % 32u)) ^ 1u;
    let var_3 = vec3<bool>(select(false, false, false) | true, true, true);
    return arg_1.a;
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1075f, 291f, -369f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(144f, 516f, 215f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-142f, 622f, -739f) * vec3<f32>(-750f, 287f, -1000f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(506f, 132f, 2036f)) - vec3<f32>(-630f, -1240f, 1838f))))), false));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(900f, _wgslsmith_f_op_f32(f32(-1f) * -106f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(734f)) * -727f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1763f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(true, false), vec3<f32>(248f, 1701f, -199f), false)))))));
    var var_1 = vec3<u32>(~98354u, _wgslsmith_dot_vec2_u32(vec2<u32>(min(firstLeadingBit(6957u), ~15086u), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], global1[_wgslsmith_index_u32(1u, 32u)]) ^ _wgslsmith_clamp_u32(4294967295u, 10753u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(87623u, 32u)], 32u)])), abs(select(vec2<u32>(44207u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(115674u, 32u)], 32u)], 32u)], 32u)], 32u)], 32u)]) ^ vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)]), firstLeadingBit(vec2<u32>(4758u, 41761u)), true))), ~11922u);
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(37301u, select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.x, select(27470u, 0u, true)), 32u)], _wgslsmith_add_u32(reverseBits(0u), ~104492u), (var_1.x & var_1.x) != func_3(Struct_1(var_1.x), Struct_1(var_1.x))), ~min(~0u, var_1.x), ~select(4294967295u, var_1.x, true) | _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], ~var_1.x)), vec4<u32>(~1u, global1[_wgslsmith_index_u32(33824u, 32u)], 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(0u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.x, 12690u), 32u)], 32u)], 19442u, global1[_wgslsmith_index_u32(select(0u, 4294967295u, false), 32u)]), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 0u, var_1.x, 1u), vec4<u32>(29624u, 4294967295u, 8813u, 7331u)))));
    var var_3 = u_input.b;
    return Struct_1(42288u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~select(u_input.c, _wgslsmith_add_i32(0i, -12527i), true)));
    global1 = array<u32, 32>();
    let var_1 = func_1();
    var var_2 = vec4<bool>(false, any(vec4<bool>((u_input.a.x | -1i) > max(u_input.c, 0i), true, true, all(vec3<bool>(false, true, true)))), any(vec3<bool>(true, true, true)) || true, !(select(all(vec3<bool>(true, true, false)), true, any(vec3<bool>(true, false, false))) && true));
    global1 = array<u32, 32>();
    global0 = -1647f;
    var var_3 = !var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1007f - _wgslsmith_f_op_f32(sign(-1012f))), _wgslsmith_f_op_f32(-645f + _wgslsmith_f_op_f32(f32(-1f) * -1621f))))), 2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-191f - -1664f), 373f, 1352f)), _wgslsmith_div_f32(-1340f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(523f)) - _wgslsmith_div_f32(669f, 1179f))))));
}

