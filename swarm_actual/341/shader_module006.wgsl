struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec4<u32>, 13>;

var<private> global2: bool = true;

var<private> global3: i32 = 31605i;

var<private> global4: array<i32, 13> = array<i32, 13>(-21531i, -17211i, -1i, -46717i, -36347i, 0i, i32(-2147483648), i32(-2147483648), 25964i, -1i, 2147483647i, -1i, 24999i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = Struct_1(max(abs(~(~54085u)), u_input.a), 1u, min(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(32267u, 8500u), vec2<u32>(18361u, u_input.a)), vec2<u32>(1u, u_input.a)) >> (firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(49445u, 1u), vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u)), vec2<u32>(1u, 1u)), !(_wgslsmith_f_op_f32(-arg_0) < -1062f));
    global1 = array<vec4<u32>, 13>();
    var var_1 = var_0;
    global2 = all(vec2<bool>(!(global0.x && global0.x), true));
    let var_2 = vec4<bool>(all(select(!select(vec3<bool>(var_1.d, true, true), vec3<bool>(var_1.d, var_0.d, var_1.d), vec3<bool>(false, global0.x, false)), select(select(vec3<bool>(var_0.d, false, global0.x), vec3<bool>(true, var_1.d, false), vec3<bool>(var_1.d, false, global0.x)), !vec3<bool>(var_0.d, true, true), select(vec3<bool>(var_0.d, true, false), vec3<bool>(var_0.d, global0.x, true), global0.x)), !select(vec3<bool>(var_1.d, false, global0.x), vec3<bool>(var_1.d, var_0.d, false), vec3<bool>(false, false, true)))), var_0.d, all(select(vec3<bool>(true, true, true), select(!vec3<bool>(var_1.d, var_0.d, global0.x), vec3<bool>(true, true, true), select(vec3<bool>(true, false, var_1.d), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(var_1.d, var_0.d, false))), all(vec2<bool>(true, true)))), !global0.x);
    return global0.x;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_u32(u_input.a, u_input.a), arg_2.c.x | select(~(~arg_2.a), u_input.a, func_3(-393f)), _wgslsmith_add_vec2_u32(arg_2.c, arg_2.c), global0.x);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.x))))))));
    let var_2 = 1869f;
    let var_3 = u_input.b.zww;
    let var_4 = arg_2.d;
    return var_2;
}

fn func_1(arg_0: f32) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -1565f, arg_0) - vec4<f32>(arg_0, arg_0, -2227f, arg_0)), Struct_1(u_input.a, u_input.a, vec2<u32>(u_input.a, 1u), global0.x), vec3<f32>(912f, arg_0, 486f))))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-158f, 209f))), vec2<f32>(-1363f, 656f)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(-820f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1278f, 1177f))) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1223f, -878f), vec2<f32>(-1751f, -810f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1707f, -1442f))))), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(select(-703f, 930f, true)))).x, _wgslsmith_f_op_f32(f32(-1f) * -379f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-316f, var_0.x), vec2<f32>(675f, var_0.x))) * vec2<f32>(var_0.x, var_0.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -659f))) * vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), 2294f))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2556f);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2, -250f))), ~u_input.a < select(0u, 4294967295u, global0.x))))) * 131f);
    var var_4 = all(vec2<bool>(true, global0.x));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_1.x))), 382f) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-1296f, 1806f)), -105f), vec2<f32>(var_2, 157f))), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(global1[_wgslsmith_index_u32(abs(~4294967295u), 13u)]), firstLeadingBit(countOneBits(1u)), u_input.c.x, ~(abs(_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(u_input.a, 13u)], 1i)) & firstLeadingBit(firstTrailingBit(global4[_wgslsmith_index_u32(u_input.a, 13u)]))));
}

