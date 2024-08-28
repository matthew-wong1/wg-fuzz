struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> Struct_1 {
    return Struct_1(!(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false))));
}

fn func_3() -> i32 {
    global0 = array<vec2<bool>, 32>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 865f) + _wgslsmith_f_op_f32(max(1181f, 226f))), -1884f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-646f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-430f + 906f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1387f)) * -1217f));
    let var_1 = true;
    let var_2 = var_1;
    let var_3 = u_input.c;
    return abs(-(-24957i & var_3));
}

fn func_1() -> bool {
    let var_0 = false;
    var var_1 = Struct_3(true, u_input.a.x << (min(0u, 141778u) % 32u), Struct_2(true, min(46417u >> ((1u >> (0u % 32u)) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 57059u) << (vec3<u32>(1u, u_input.b, 712u) % vec3<u32>(32u)), abs(vec3<u32>(4952u, 48384u, 26909u)))), func_2(), global0[_wgslsmith_index_u32(77433u, 32u)], var_0), Struct_2(all(!select(vec3<bool>(true, true, true), vec3<bool>(var_0, true, var_0), var_0)), ~80481u, func_2(), !(!select(vec2<bool>(var_0, true), vec2<bool>(false, var_0), var_0)), !var_0), vec3<bool>(false, any(!select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(true, false, var_0, var_0), vec4<bool>(false, false, true, var_0))), true));
    var var_2 = ~_wgslsmith_div_vec2_i32(-vec2<i32>(func_3(), -u_input.c), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, -36204i), vec2<i32>(1i, -5780i) ^ vec2<i32>(15994i, u_input.c), vec2<i32>(u_input.c, 47888i))));
    global0 = array<vec2<bool>, 32>();
    var var_3 = Struct_4(var_1.d.c, func_2());
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(583f * 867f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(257f, 500f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2843f)) * -471f)))))));
    let var_1 = -u_input.c;
    global0 = array<vec2<bool>, 32>();
    global0 = array<vec2<bool>, 32>();
    global0 = array<vec2<bool>, 32>();
    let var_2 = func_1();
    global0 = array<vec2<bool>, 32>();
    global0 = array<vec2<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.c >> (_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.b, 11952u, u_input.b), vec3<u32>(u_input.a.x, 24473u, 1u)), vec3<u32>(u_input.b, 23365u, u_input.a.x) | vec3<u32>(87478u, u_input.a.x, 1u)) % 32u), u_input.c), vec2<f32>(1215f, _wgslsmith_f_op_f32(f32(-1f) * -191f)));
}

