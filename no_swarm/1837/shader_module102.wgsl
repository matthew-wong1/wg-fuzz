struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-1164f, -720f, -461f), vec3<f32>(-1000f, -417f, 2850f), vec3<f32>(-1410f, -478f, -273f), vec3<f32>(406f, 627f, -1085f));

var<private> global1: Struct_3 = Struct_3(false);

var<private> global2: array<f32, 8>;

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false));

var<private> global4: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(!any(vec4<bool>(false, true, global2[_wgslsmith_index_u32(0u, 8u)] <= arg_0.a.x, global1.a)));
    global1 = Struct_3(any(!(!vec4<bool>(arg_0.b, true, arg_0.b, true))) || true);
    global2 = array<f32, 8>();
    let var_1 = _wgslsmith_sub_u32(29697u, _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(75875u, 86013u, 0u, 24615u), ~vec4<u32>(0u, 0u, 23879u, 5247u))), 1u));
    global2 = array<f32, 8>();
    return vec3<u32>(countOneBits(14687u), var_1, _wgslsmith_add_u32(_wgslsmith_clamp_u32(38972u, 0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, var_1), vec3<u32>(var_1, 32498u, 1u))), var_1));
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = true;
    let var_1 = global1.a;
    var_0 = false;
    var var_2 = Struct_3(!(!all(!vec2<bool>(false, global1.a))));
    global4 = ~_wgslsmith_dot_vec3_u32(func_3(Struct_2(vec3<f32>(-527f, arg_0, -618f), var_2.a), vec4<i32>(-6963i, 2147483647i, u_input.a, u_input.a), Struct_1(global1.a)), ~vec3<u32>(115511u, 12580u, 1459u)) << (109528u % 32u);
    return select(true, any(vec2<bool>(true, true)), global1.a || (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 46278u, 54174u), vec3<u32>(4294967295u, 1u, 1u)) < _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 21025u, 80633u), countOneBits(0u))));
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_1(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1099f - -708f) - global2[_wgslsmith_index_u32(11206u, 8u)])));
    let var_1 = Struct_3(true);
    let var_2 = select(!(!vec3<bool>(true, !global1.a, global2[_wgslsmith_index_u32(42602u, 8u)] < 752f)), !(!(!(!vec3<bool>(false, var_0.a, global1.a)))), false);
    global2 = array<f32, 8>();
    let var_3 = ~(~vec3<u32>(abs(34203u), firstLeadingBit(4294967295u), ~4294967295u) >> (countOneBits(firstLeadingBit(firstLeadingBit(vec3<u32>(1u, 38945u, 1u)))) % vec3<u32>(32u)));
    return _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(max(73809u, ~4294967295u), ~1u, 14747u, _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(var_3.x, 14830u, var_3.x))), abs(vec4<u32>(22456u, 77u, var_3.x, 4294967295u) & vec4<u32>(var_3.x, var_3.x, var_3.x, var_3.x))), vec4<u32>(var_3.x, var_3.x, firstTrailingBit(_wgslsmith_dot_vec3_u32(func_3(Struct_2(global0[_wgslsmith_index_u32(17912u, 4u)], false), vec4<i32>(-2147483647i, u_input.a, u_input.a, -2147483647i), global3[_wgslsmith_index_u32(var_3.x, 24u)]), var_3)), 13309u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 24>();
    var var_0 = ~func_1() | min(vec4<u32>(firstTrailingBit(11249u), ~min(26630u, 59045u), _wgslsmith_dot_vec4_u32(vec4<u32>(57280u, 0u, 9545u, 4294967295u), ~vec4<u32>(1u, 0u, 18610u, 28885u)), 1964u), reverseBits(vec4<u32>(19184u, _wgslsmith_sub_u32(44359u, 0u), 1u, 4294967295u)));
    global3 = array<Struct_1, 24>();
    let var_1 = countOneBits(vec4<u32>(1u, min(var_0.x, 29410u), 47487u, _wgslsmith_dot_vec2_u32(var_0.yy, var_0.xx) << (0u % 32u)));
    global3 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(-299f)), var_1, vec4<i32>(-(i32(-1i) * -34468i), u_input.a, ~u_input.a, firstTrailingBit(2147483647i)), vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(~var_0.x), (var_0.x >> (7256u % 32u)) << (4294967295u % 32u)), 8u)], global2[_wgslsmith_index_u32(var_0.x, 8u)]));
}

