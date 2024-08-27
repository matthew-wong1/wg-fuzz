struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<bool>(true, false, false), -355f), Struct_1(vec3<bool>(true, true, false), -1324f), Struct_1(vec3<bool>(false, true, false), -2507f), Struct_1(vec3<bool>(false, false, true), -796f), Struct_1(vec3<bool>(true, false, false), -1193f), Struct_1(vec3<bool>(true, true, false), 1271f), Struct_1(vec3<bool>(false, true, false), -151f), Struct_1(vec3<bool>(true, true, false), -130f), Struct_1(vec3<bool>(true, false, true), 1000f), Struct_1(vec3<bool>(false, false, false), -152f), Struct_1(vec3<bool>(false, false, true), -1267f), Struct_1(vec3<bool>(false, false, false), -1773f), Struct_1(vec3<bool>(false, true, false), -1055f), Struct_1(vec3<bool>(true, true, true), 441f), Struct_1(vec3<bool>(false, true, false), 1248f), Struct_1(vec3<bool>(false, false, true), -1021f), Struct_1(vec3<bool>(false, true, true), -1899f), Struct_1(vec3<bool>(false, false, false), -1775f), Struct_1(vec3<bool>(true, true, false), 873f), Struct_1(vec3<bool>(true, false, false), -351f), Struct_1(vec3<bool>(false, true, true), 859f), Struct_1(vec3<bool>(true, true, false), 331f), Struct_1(vec3<bool>(true, true, false), 1496f), Struct_1(vec3<bool>(false, true, true), -898f), Struct_1(vec3<bool>(false, false, true), -2613f), Struct_1(vec3<bool>(true, true, true), 1540f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -277f), _wgslsmith_f_op_f32(990f * -912f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-320f + -1029f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1352f - 1023f)))))));
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(max(~vec2<u32>(0u, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 38669u), vec2<u32>(1u, 0u))) | ~select(vec2<u32>(8207u, 0u), vec2<u32>(22846u, 37922u), true)));
}

fn func_2() -> u32 {
    let var_0 = vec4<bool>(true, !(!any(vec3<bool>(true, true, true))), !(!(~14211u <= func_3())), true);
    let var_1 = global0[_wgslsmith_index_u32(1u, 26u)];
    var var_2 = global0[_wgslsmith_index_u32(~(8958u & (4294967295u | _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 8635u, 40235u), vec4<u32>(4294967295u, 0u, 0u, 1u)), 1u))), 26u)];
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(151f + -1073f)));
    global0 = array<Struct_1, 26>();
    return 43314u;
}

fn func_1() -> vec2<i32> {
    let var_0 = vec3<i32>(u_input.b.x, u_input.c, abs(_wgslsmith_mult_i32(u_input.c, _wgslsmith_div_i32(-1i, _wgslsmith_clamp_i32(17561i, u_input.a.x, u_input.e)))));
    var var_1 = global0[_wgslsmith_index_u32(~func_2(), 26u)];
    global0 = array<Struct_1, 26>();
    return vec2<i32>(-2147483647i, -select(select(max(-38042i, var_0.x), u_input.e, false), u_input.e, !(!var_1.a.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    return global0[_wgslsmith_index_u32(~59803u, 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    var var_0 = -464f;
    let var_1 = Struct_1(vec3<bool>(true, true, all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)))), 2223f);
    var var_2 = func_4(countOneBits(func_1() >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), u_input.c, Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-162f * -2095f)))));
    global0 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(20486u, func_3()), -u_input.a.yxx, select(select(1u, _wgslsmith_div_u32(4729u, 1u), true), ~func_3(), all(!vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x))));
}

