struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(true, false, true, false, false, false, false, true, false, false, true, false, true, false, true, false, false, false, false, true, false, false, true, false, true, false, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>) -> vec2<f32> {
    let var_0 = arg_0;
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    return arg_0.a.yy;
}

fn func_4(arg_0: Struct_3) -> u32 {
    global0 = array<bool, 27>();
    return _wgslsmith_mod_u32(arg_0.b, ~99034u & reverseBits(u_input.b.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<u32>) -> f32 {
    global0 = array<bool, 27>();
    let var_0 = vec2<i32>(u_input.d, -_wgslsmith_mod_i32(reverseBits(-2147483647i), u_input.d));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2312f, arg_0.x)) - _wgslsmith_div_f32(1136f, _wgslsmith_f_op_f32(abs(-533f))));
    let var_2 = func_4(Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -121f, var_1)))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), 390f, -1206f)), ~firstLeadingBit(u_input.b.x ^ 35517u), !(firstLeadingBit(u_input.d) == -1i), Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(var_1, var_1, arg_0.x, arg_0.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec4<f32>(-461f, -857f, arg_0.x, -809f), Struct_1(vec2<f32>(arg_0.x, arg_0.x), vec3<u32>(0u, 20605u, arg_1), arg_0.zy, global0[_wgslsmith_index_u32(4294967295u, 27u)], -1i), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_1, 27u)], global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global0[_wgslsmith_index_u32(1u, 27u)])), -1015f, vec2<u32>(0u, arg_1))), u_input.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(439f, var_1)), false, reverseBits(var_0.x)), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(arg_2.x, 27u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_2.x, 27u)], true), any(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], false)))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1440f), _wgslsmith_div_f32(1061f, var_1), 340f, -684f), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-727f, arg_0.x)), vec3<u32>(arg_2.x, arg_2.x, 0u), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -273f) - vec2<f32>(663f, -590f)), any(vec2<bool>(false, false)), countOneBits(3687i)), !select(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(0u, 27u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_1, 27u)], true, true), true))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1287f, 540f, (var_1 < -1000f) | any(vec3<bool>(true, false, true)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1233f, var_3) + var_1);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -184f), _wgslsmith_f_op_f32(-1808f * -665f), _wgslsmith_f_op_f32(f32(-1f) * -1173f), 1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(418f, 949f, 1453f, -153f) + vec4<f32>(1080f, -500f, 1121f, -872f))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(367f, 170f, -1000f, -238f) + vec4<f32>(309f, -251f, -989f, -175f))))), any(!vec4<bool>(global0[_wgslsmith_index_u32(97545u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], false)))), ~u_input.b.x, ~(vec2<u32>(~0u, ~u_input.b.x) & ~u_input.b.zx)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1128f, var_0, 419f, var_0)))))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), countOneBits(min(u_input.b, ~vec3<u32>(88001u, u_input.b.x, 0u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, -1000f, global0[_wgslsmith_index_u32(14410u, 27u)])) * _wgslsmith_div_f32(284f, 187f)), 853f), any(select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(12152u, 27u)], false, false), global0[_wgslsmith_index_u32(30722u, 27u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global0[_wgslsmith_index_u32(580u, 27u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], true), vec3<bool>(true, true, global0[_wgslsmith_index_u32(45037u, 27u)])), true)), ~u_input.c.x), !select(select(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), !vec4<bool>(global0[_wgslsmith_index_u32(36022u, 27u)], global0[_wgslsmith_index_u32(u_input.b.x, 27u)], true, false)), vec4<bool>(true, true, true, true), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(761f, _wgslsmith_f_op_f32(f32(-1f) * -470f))));
    let var_2 = Struct_4(_wgslsmith_div_u32(var_0.b.b.x | func_1().b.b.x, 38629u), false, func_1(), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~(firstLeadingBit(vec2<u32>(u_input.b.x, 4294967295u)) >> (firstLeadingBit(vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u))), vec2<u32>(var_0.b.b.x, var_2.a)));
}

