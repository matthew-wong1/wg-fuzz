struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-3118f, -802f));

var<private> global1: vec2<f32> = vec2<f32>(-240f, 736f);

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<f32>(-841f, 199f)), Struct_1(vec2<f32>(207f, 368f)), Struct_1(vec2<f32>(-316f, 702f)), Struct_1(vec2<f32>(-253f, -213f)), Struct_1(vec2<f32>(229f, 163f)), Struct_1(vec2<f32>(-324f, 290f)), Struct_1(vec2<f32>(586f, 679f)), Struct_1(vec2<f32>(2471f, -484f)), Struct_1(vec2<f32>(217f, 2966f)), Struct_1(vec2<f32>(-1158f, -1710f)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = ~(~u_input.a.x);
    global0 = Struct_1(global0.a);
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), 659f))), global2.a));
    global3 = array<Struct_1, 10>();
    let var_2 = vec2<u32>(~_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, u_input.a.x), u_input.a.zzw)), ~vec3<u32>(u_input.a.x, 60792u, 0u)), reverseBits(~(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x))));
    return select(vec3<bool>(true, true, !(_wgslsmith_div_f32(-400f, 315f) > _wgslsmith_f_op_f32(select(-1950f, global0.a.x, true)))), select(!vec3<bool>(true, false, 4718u > u_input.a.x), vec3<bool>(true, !(2217i >= u_input.b), true), vec3<bool>(true, true, false)), !vec3<bool>(true, all(vec2<bool>(true, true)), true));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> vec3<f32> {
    let var_0 = 13751i;
    let var_1 = _wgslsmith_mod_vec4_u32(u_input.a, u_input.a & _wgslsmith_mod_vec4_u32(~(u_input.a << (u_input.a % vec4<u32>(32u))), vec4<u32>(_wgslsmith_clamp_u32(1u, 4294967295u, u_input.a.x), u_input.a.x, ~4294967295u, select(u_input.a.x, u_input.a.x, true))));
    var var_2 = true & (true || (arg_3 < _wgslsmith_div_f32(_wgslsmith_f_op_f32(594f - -871f), global2.a.x)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), arg_1.a.x);
    var var_4 = func_3();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.a.x, -226f, arg_1.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, -1788f, global1.x), vec3<f32>(arg_1.a.x, -828f, global0.a.x)))), select(func_3(), vec3<bool>(var_4.x, true, all(vec2<bool>(var_4.x, var_4.x))), vec3<bool>(true, true, true)))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global2.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global2.a.x)))))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(func_2(vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(var_0.x, var_0.x >> (u_input.a.x % 32u))), 4294967295u), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0, _wgslsmith_sub_vec4_u32(~u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u) & var_0) >> (~_wgslsmith_div_vec4_u32(var_0, vec4<u32>(var_0.x, 10645u, var_0.x, 1u)) % vec4<u32>(32u))), 10u)], _wgslsmith_sub_i32(~u_input.b, -((u_input.c & u_input.c) | u_input.b)), arg_0.a.x));
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1476f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - var_2.a.x)), arg_0.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 10>();
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(step(-173f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(-313f, 167f)))) * _wgslsmith_f_op_f32(global0.a.x + 1979f)))), _wgslsmith_f_op_f32(global0.a.x * global1.x), _wgslsmith_f_op_f32(845f + 567f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(floor(-1906f)), all(vec3<bool>(true, true, true)))) * 1048f))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-673f * _wgslsmith_f_op_f32(-global2.a.x)) * -899f), 161f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_1(var_0.xz))))) * global0.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global0.a.x)), _wgslsmith_div_f32(1696f, global1.x))) + global1.x));
    global2 = Struct_1(vec2<f32>(global0.a.x, var_0.x));
    let var_2 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(438f, var_0.x, global2.a.x, global0.a.x)), vec4<f32>(-1152f, -689f, global0.a.x, global1.x)))), abs(0i), global0.a.x, -423f);
}

