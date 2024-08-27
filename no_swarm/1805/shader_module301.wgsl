struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(58828u, 16697u), Struct_1(47271u, 13804u), Struct_1(4548u, 0u), Struct_1(4294967295u, 1u), Struct_1(42174u, 0u), Struct_1(20140u, 50202u), Struct_1(68964u, 1u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = vec2<bool>(false & all(vec3<bool>(true, any(vec3<bool>(false, false, true)), any(vec2<bool>(false, false)))), true);
    var var_1 = var_0.x;
    var_1 = var_0.x;
    let var_2 = arg_0;
    var_1 = select(!var_0.x, false, true);
    return u_input.a.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec3<u32> {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    let var_0 = 46960u;
    var var_1 = 1i;
    let var_2 = (-(~vec2<i32>(2147483647i, 1i)) >> ((_wgslsmith_add_vec2_u32(u_input.a.zy, ~vec2<u32>(4294967295u, arg_1.b)) << (vec2<u32>(_wgslsmith_add_u32(u_input.a.x, var_0), ~51627u) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (~(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, arg_3.a, arg_3.b), vec3<u32>(1u, 1u, 0u)), arg_1.a)) % vec2<u32>(32u));
    return countOneBits(u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = firstLeadingBit(-countOneBits(-27552i));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * -1273f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-719f, _wgslsmith_f_op_f32(abs(-798f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2466f))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(trunc(var_1))) * -1000f));
    var var_3 = _wgslsmith_f_op_f32(-var_2);
    let var_4 = Struct_1(u_input.a.x, ~(~0u));
    return Struct_1(1u, ~0u);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_0 = ~u_input.a.yy;
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-650f, -680f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(151f, 558f))), vec2<f32>(-545f, -1661f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1720f, -533f) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1186f, 1783f)))))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1300f), true)), -309f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1276f * 220f), 744f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -403f))))));
    return Struct_1(103192u, max(var_0.x, u_input.a.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -829f) * -559f))));
    let var_1 = true;
    let var_2 = arg_0;
    return func_5(func_4(arg_1, Struct_1(~var_2.a, _wgslsmith_mult_u32(func_2(Struct_1(30284u, arg_1.a), Struct_1(arg_0.b, var_2.b)), _wgslsmith_mult_u32(arg_0.b, 13935u))), func_3(arg_0, Struct_1(var_2.a, 46578u), any(select(vec3<bool>(var_1, true, false), vec3<bool>(false, var_1, false), false)), Struct_1(arg_0.a ^ arg_0.b, arg_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_0 = func_1(Struct_1(u_input.a.x, 4294967295u), Struct_1(1u, _wgslsmith_add_u32(39488u, 38713u)));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b, 21151u), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(-8464i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1791f - -282f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -259f)))), !all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true)))), ~(-vec3<i32>(select(-32939i, -77465i, false), -43781i, firstLeadingBit(33979i))));
}

