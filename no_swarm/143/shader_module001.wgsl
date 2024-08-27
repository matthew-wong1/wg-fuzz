struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32>;

var<private> global1: array<i32, 17> = array<i32, 17>(2147483647i, 2147483647i, 2147483647i, 41214i, 0i, 0i, 2147483647i, 2147483647i, -17700i, -1i, i32(-2147483648), i32(-2147483648), 0i, 0i, -8920i, 60717i, 36818i);

var<private> global2: u32 = 0u;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_4) -> f32 {
    let var_0 = Struct_1(arg_2.a.b, vec4<f32>(arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0, 996f))))), -1017f, _wgslsmith_f_op_f32(select(arg_2.a.d.x, 517f, any(!vec2<bool>(arg_1.x, arg_2.a.b.x))))), arg_2.a.b, firstTrailingBit(select(vec3<u32>(38869u, 11143u, arg_2.a.e.x) | (vec3<u32>(0u, arg_2.a.e.x, arg_2.b) & vec3<u32>(arg_2.b, arg_2.a.e.x, 0u)), ~firstLeadingBit(vec3<u32>(arg_2.a.e.x, arg_2.b, arg_2.b)), select(arg_1, !vec3<bool>(false, arg_1.x, true), !arg_2.a.b.x))), arg_2.a.b);
    var var_1 = var_0.d.x;
    global2 = 24469u;
    let var_2 = u_input.a.x;
    let var_3 = -40342i >> (max(select(34344u >> (1u % 32u), 79628u, !arg_2.a.b.x) & min(28536u, min(arg_2.a.e.x, var_0.d.x)), arg_2.a.e.x) % 32u);
    return _wgslsmith_f_op_f32(-arg_2.a.d.x);
}

fn func_2() -> i32 {
    let var_0 = true;
    var var_1 = ~_wgslsmith_mod_u32(~(~1u), countOneBits(4294967295u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-153f + -2268f) * _wgslsmith_f_op_f32(ceil(-499f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-419f, vec3<bool>(var_0, false, var_0), Struct_4(Struct_2(false, vec4<bool>(false, var_0, var_0, var_0), vec2<i32>(-1i, -13911i), vec2<f32>(-1427f, 396f), vec2<u32>(0u, 30312u)), 55768u)))))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-298f, -444f)), vec3<bool>(!var_0, true, true), Struct_4(Struct_2(true, vec4<bool>(true, var_0, true, true), vec2<i32>(u_input.a.x, u_input.a.x), vec2<f32>(-841f, -755f), vec2<u32>(80727u, 4294967295u)), ~25336u)))));
    let var_3 = ~min(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -30245i, global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(firstTrailingBit(1u), 17u)]), firstTrailingBit(u_input.a ^ u_input.a)), u_input.a.x);
    let var_4 = _wgslsmith_div_i32(i32(-1i) * -1i, -26343i);
    return firstLeadingBit(var_3);
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    global0 = array<vec3<f32>, 32>();
    var var_0 = -(i32(-1i) * -2147483647i) == -func_2();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-683f * 761f), _wgslsmith_f_op_f32(-141f - -1041f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-504f - 978f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -225f);
    global0 = array<vec3<f32>, 32>();
    var var_2 = !(!vec2<bool>(_wgslsmith_f_op_f32(sign(var_1.x)) < -581f, false));
    return Struct_2(true, !(!vec4<bool>(true, !var_2.x, var_2.x, true)), firstTrailingBit(u_input.a.wx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, _wgslsmith_f_op_f32(-var_1.x)), var_1))), vec2<u32>(~82065u, ~max(1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(Struct_3(_wgslsmith_mod_i32(-u_input.a.x, i32(-1i) * -1i))), abs(max(abs(1u), ~0u)));
    global0 = array<vec3<f32>, 32>();
    global2 = ~17941u;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(min(1u, var_0.a.e.x)), _wgslsmith_mod_vec3_u32(~firstTrailingBit(vec3<u32>(var_0.a.e.x, 4294967295u, 0u)) << (countOneBits(~vec3<u32>(var_0.a.e.x, var_0.b, 0u)) % vec3<u32>(32u)), ~select(abs(vec3<u32>(var_0.a.e.x, var_0.b, 79608u)), vec3<u32>(46582u, var_0.a.e.x, var_0.a.e.x) ^ vec3<u32>(17138u, 0u, 29770u), !var_0.a.b.x)), ~83737u, var_0.a.d.x, 514f);
}

