struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(0u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(29486u), Struct_1(0u), Struct_1(1u), Struct_1(1u), Struct_1(44243u), Struct_1(0u), Struct_1(1u), Struct_1(4294967295u), Struct_1(1u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(1u), Struct_1(55697u), Struct_1(1u), Struct_1(1u), Struct_1(1u), Struct_1(51071u), Struct_1(25973u), Struct_1(14238u), Struct_1(41050u), Struct_1(4294967295u), Struct_1(14521u), Struct_1(49305u), Struct_1(6228u), Struct_1(100685u), Struct_1(39314u), Struct_1(0u), Struct_1(0u));

var<private> global2: i32;

var<private> global3: bool;

var<private> global4: i32 = 15978i;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32) -> f32 {
    global3 = false;
    global0 = array<vec3<bool>, 19>();
    global1 = array<Struct_1, 31>();
    let var_0 = (~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(16406u, 36205u, 0u, 31863u), vec4<u32>(1u, 1u, 1u, 1u)) >> (firstLeadingBit(vec4<u32>(0u, max(55776u, 1u), ~1u, 53695u)) % vec4<u32>(32u))) >> (vec4<u32>(0u, 1u, ~abs(_wgslsmith_div_u32(12092u, 114126u)), ~firstTrailingBit(_wgslsmith_div_u32(1u, 9800u))) % vec4<u32>(32u));
    var var_1 = all(!(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -780f);
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(247f, -1876f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-194f * -1733f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f)))));
    global3 = any(vec2<bool>(true, true));
    let var_1 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(round(1166f))));
    global1 = array<Struct_1, 31>();
    let var_2 = arg_0;
    return vec2<bool>(any(vec3<bool>(true, select(true, true, any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(var_1 - var_1) >= _wgslsmith_f_op_f32(abs(-138f)))), var_2.c.x <= var_2.c.x);
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> f32 {
    var var_0 = true;
    let var_1 = ~46355u;
    let var_2 = _wgslsmith_div_f32(853f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(2477f)), _wgslsmith_div_f32(926f, -334f))))));
    var var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~(~vec2<u32>(arg_1.b.a, var_1)), vec2<u32>(27905u, firstTrailingBit(1u))), _wgslsmith_mod_vec2_u32(~(vec2<u32>(var_1, arg_0) ^ vec2<u32>(1u, 67417u)), ~vec2<u32>(arg_1.a, 76568u))), ~select(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(45254u, arg_1.b.a), vec2<u32>(arg_0, var_1)), vec2<u32>(41219u, 1u) << (vec2<u32>(arg_0, 4294967295u) % vec2<u32>(32u)), ~vec2<u32>(arg_1.b.a, arg_0)), ~vec2<u32>(var_1, 33101u), func_2(arg_1)));
    var var_4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_2, var_2) - vec4<f32>(var_2, var_2, var_2, -295f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -410f, var_2, 1000f)), vec4<f32>(var_2, -941f, 1015f, var_2))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, -326f, var_2)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(853f, -2649f, -1525f, 2045f)))))))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-559f, _wgslsmith_f_op_f32(-var_4.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(i32(-1i) * -u_input.a, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(48292i, 6474i, -13304i), vec3<i32>(-1i, -1i, u_input.a)))) | vec2<i32>(u_input.a, -u_input.a);
    let var_1 = global0[_wgslsmith_index_u32(45295u, 19u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -753f)), _wgslsmith_f_op_f32(floor(1199f)), _wgslsmith_f_op_f32(func_1(0u, Struct_2(15243u, Struct_1(0u), vec3<i32>(u_input.a, -21881i, u_input.a), u_input.a))), _wgslsmith_f_op_f32(abs(-364f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -420f), -237f, _wgslsmith_div_f32(-345f, -170f), -1000f))));
    var var_3 = vec2<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(1207f + var_2.x)))) <= _wgslsmith_f_op_f32(-var_2.x), true);
    global1 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.x - 1000f), -328f, -397f, _wgslsmith_f_op_f32(-var_2.x))) - vec4<f32>(-229f, _wgslsmith_f_op_f32(408f - _wgslsmith_f_op_f32(func_1(4294967295u, Struct_2(67478u, Struct_1(0u), vec3<i32>(-1i, -1i, var_0.x), var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x))), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_div_f32(var_2.x, var_2.x)))));
}

