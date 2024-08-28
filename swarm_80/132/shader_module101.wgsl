struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(31516u, 15280u, 65987u, 4294967295u, 35516u, 20937u, 4294967295u, 4294967295u, 62446u, 14211u, 45128u, 4294967295u, 4294967295u, 44011u, 0u, 90334u, 4294967295u, 14023u);

var<private> global1: array<vec4<u32>, 14>;

var<private> global2: i32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(~reverseBits(u_input.a), ~(u_input.b.x << (global0[_wgslsmith_index_u32(4294967295u, 18u)] % 32u)), ~(~u_input.a)), _wgslsmith_add_vec3_u32(~vec3<u32>(arg_0.a, global0[_wgslsmith_index_u32(arg_0.a, 18u)], 0u), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 37129u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a, 18u)], 18u)]), ~vec3<u32>(arg_0.a, arg_0.a, arg_0.a)))) ^ reverseBits(~reverseBits(min(vec3<u32>(80704u, 4294967295u, arg_0.a), vec3<u32>(u_input.b.x, 31012u, global0[_wgslsmith_index_u32(u_input.b.x, 18u)]))));
    return ~68118u;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(1u, 0u, u_input.b.x)), firstLeadingBit(vec3<u32>(34945u, u_input.b.x, 1u)), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 18u)], u_input.e))), vec3<u32>(0u, ~24783u, _wgslsmith_clamp_u32(1u, 64598u, 2533u)) >> (_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(0u, 26406u, 1u)), ~vec3<u32>(59551u, 30909u, u_input.a)) % vec3<u32>(32u))), _wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(0u, abs(arg_3.a))));
    let var_1 = arg_3;
    return ~(~(~u_input.b.x));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~(~u_input.a & 0u), _wgslsmith_f_op_f32(-738f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1963f, -578f))));
    var var_1 = _wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(-1207f + var_0.b)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -924f) - var_0.b)));
    let var_3 = Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_mod_u32(38865u, var_0.a), ~u_input.e, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, 4294967295u), vec3<u32>(4294967295u, u_input.a, 47473u))), _wgslsmith_sub_vec3_u32(abs(abs(vec3<u32>(u_input.e, 4294967295u, global0[_wgslsmith_index_u32(7462u, 18u)]))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(var_0.a, 18u)], 4294967295u), vec3<u32>(var_0.a, 4294967295u, 0u)), u_input.b.x ^ u_input.b.x, ~global0[_wgslsmith_index_u32(0u, 18u)]))), _wgslsmith_f_op_f32(select(360f, var_2, true)));
    let var_4 = var_3;
    return Struct_1(firstTrailingBit(func_3(true, ~0u, select(vec2<bool>(false, false), vec2<bool>(true, false), false), var_3)) ^ ~(~max(4294967295u, 4294967295u)), _wgslsmith_f_op_f32(floor(1374f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = arg_1.x;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b, -1153f)) * var_0) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-220f, 249f), arg_1.x, any(vec4<bool>(true, true, true, true))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~_wgslsmith_div_u32(~u_input.e, 1u)), 760f);
    let var_1 = !select(vec4<bool>(true, true, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(var_0.a, 18u)], u_input.a) != 0u, true), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, all(vec4<bool>(false, false, false, true)), all(vec2<bool>(false, true))), all(vec2<bool>(false, true))));
    global0 = array<u32, 18>();
    global2 = u_input.d;
    var var_2 = Struct_1(~_wgslsmith_div_u32(55020u | var_0.a, ~func_1(Struct_1(u_input.a, var_0.b), 1974f, 2147483647i, u_input.d)), _wgslsmith_f_op_f32(func_4(func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, 1000f) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b, var_0.b, var_0.b)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, var_0.b))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b))), Struct_1(var_0.a, -1301f))));
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - -858f), _wgslsmith_f_op_f32(round(var_2.b)), _wgslsmith_f_op_f32(trunc(var_2.b))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1878f, -345f, var_2.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, -284f, var_2.b) - vec3<f32>(var_2.b, var_0.b, var_0.b))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(select(456f, var_2.b, true)))))), _wgslsmith_add_u32(var_0.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(47347u, 0u, 0u), ~(~vec3<u32>(0u, u_input.a, 29571u)))));
}

