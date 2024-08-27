struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28>;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<i32>(2147483647i, 0i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -828f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 256f), vec2<f32>(841f, arg_0), true))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 - -296f), _wgslsmith_f_op_f32(min(-1315f, _wgslsmith_f_op_f32(f32(-1f) * -1550f)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, 1000f)) * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-arg_0))));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-997f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(570f))))), 1065f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1388f * var_0.x), _wgslsmith_f_op_f32(-var_0.x), any(vec3<bool>(false, false, true))))))));
    global0 = array<vec4<bool>, 28>();
    let var_2 = -482f;
    var_1 = vec4<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_2 - -1000f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * var_1.x)), arg_0);
    return arg_2.x;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = true;
    var var_1 = any(!vec3<bool>(true, !all(vec4<bool>(false, true, true, false)), all(vec4<bool>(true, true, true, false))));
    global1 = array<Struct_1, 1>();
    var var_2 = arg_2;
    var var_3 = Struct_2(arg_3);
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1664f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-411f)), _wgslsmith_f_op_f32(-1635f * _wgslsmith_f_op_f32(trunc(-804f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2026f - -1043f), -694f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -316f), _wgslsmith_div_f32(-1588f, -841f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(289f, 447f)), _wgslsmith_f_op_f32(ceil(-762f))) - _wgslsmith_f_op_f32(1874f - _wgslsmith_f_op_f32(f32(-1f) * -1336f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(403f * -1072f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 143f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2414f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1514f * 884f)))))), false));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(firstLeadingBit(~4294967295u), ~76173u >> (u_input.b % 32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 21249u), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.b, u_input.b))), ~(~u_input.b))), vec2<u32>(~(~(~u_input.b)), u_input.b));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(384f, 1349f, 914f, -1000f))) * _wgslsmith_f_op_vec4_f32(func_4(~u_input.b, func_3(716f, arg_0.a, vec4<i32>(1i, 0i, -5420i, arg_0.a.x), vec4<i32>(-24334i, -11207i, 9079i, u_input.c)), Struct_1(vec2<i32>(u_input.c, arg_0.a.x)), Struct_1(arg_0.a)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-194f, _wgslsmith_f_op_f32(f32(-1f) * -335f), 1218f, 969f), vec4<f32>(_wgslsmith_f_op_f32(select(-459f, -1177f, false)), _wgslsmith_f_op_f32(-743f - 714f), 156f, _wgslsmith_f_op_vec4_f32(func_4(22219u, u_input.c, Struct_1(arg_0.a), global1[_wgslsmith_index_u32(u_input.b, 1u)])).x), vec4<bool>(any(vec3<bool>(false, true, false)), true, false, any(vec3<bool>(false, true, true))))))));
    global1 = array<Struct_1, 1>();
    var var_2 = Struct_2(arg_0);
    let var_3 = 0i;
    return Struct_2(Struct_1(vec2<i32>(var_3, 10209i)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>) -> vec2<f32> {
    global1 = array<Struct_1, 1>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_1.x)))) + 418f);
    let var_1 = func_2(global1[_wgslsmith_index_u32(u_input.b, 1u)]);
    let var_2 = true;
    let var_3 = func_2(var_1.a).a;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_4(~1u, var_3.a.x, global1[_wgslsmith_index_u32(abs(u_input.b), 1u)], var_3)).zz));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 1>();
    global1 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(20389u, 49161u, 4294967295u), vec3<u32>(u_input.b, 38514u, 4294967295u) >> (vec3<u32>(76140u, 76945u, 0u) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(vec3<u32>(80570u, 25939u, 7698u), vec3<u32>(u_input.b, 51753u, u_input.b))), 1u, 772u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b, _wgslsmith_sub_u32(14011u, u_input.b)), ~0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 309f), vec2<f32>(_wgslsmith_f_op_f32(floor(1000f)), -1413f), vec2<bool>(true, true)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-432f)) - 2161f), 721f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-269f, _wgslsmith_div_f32(-383f, 206f)), _wgslsmith_f_op_vec2_f32(func_1(abs(vec3<i32>(u_input.c, 1i, u_input.a)), vec3<f32>(-521f, -1000f, 1000f))), !all(vec3<bool>(false, true, true))))));
}

