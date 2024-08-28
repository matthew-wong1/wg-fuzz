struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: array<Struct_2, 11>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> u32 {
    global0 = array<i32, 31>();
    let var_0 = Struct_2(true, Struct_1(1u, -(~vec2<i32>(u_input.b.x, u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1002f, arg_0)) * vec2<f32>(1057f, arg_0)))));
    global0 = array<i32, 31>();
    var var_1 = _wgslsmith_f_op_f32(select(-2882f, var_0.b.c.x, !(all(select(vec2<bool>(true, var_0.a), vec2<bool>(true, true), false)) || true)));
    global0 = array<i32, 31>();
    return _wgslsmith_div_u32(0u, 4294967295u << (((var_0.b.a & var_0.b.a) & var_0.b.a) % 32u));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> u32 {
    let var_0 = u_input.b;
    global1 = array<Struct_2, 11>();
    var var_1 = global1[_wgslsmith_index_u32(min(~abs(abs(58014u)), reverseBits(_wgslsmith_mult_u32(0u, arg_2))), 11u)];
    let var_2 = Struct_1(reverseBits(arg_3.b.a & _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.b.a, arg_1, 1u, 43111u), vec4<u32>(8645u, var_1.b.a, arg_2, 13041u)), arg_1)), vec2<i32>(-2786i, var_1.b.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.b.c)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yy))));
    var var_3 = Struct_1(4294967295u, reverseBits(~select(vec2<i32>(var_1.b.b.x, -2147483647i), -vec2<i32>(arg_3.b.b.x, -2147483647i), !vec2<bool>(false, arg_3.a))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, 445f)) * _wgslsmith_f_op_vec2_f32(-var_2.c))))));
    return _wgslsmith_add_u32(~(firstTrailingBit(~1u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(14458u, var_1.b.a, 0u), ~vec3<u32>(arg_3.b.a, arg_2, 0u)) % 32u)), ~_wgslsmith_mod_u32(50965u & arg_2, _wgslsmith_mod_u32(abs(arg_2), 1u)));
}

fn func_2(arg_0: Struct_1) -> bool {
    global0 = array<i32, 31>();
    global1 = array<Struct_2, 11>();
    let var_0 = ~(~func_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1254f), arg_0.c.x, arg_0.c.x), arg_0.a, func_3(arg_0.c.x), global1[_wgslsmith_index_u32(~arg_0.a, 11u)]));
    let var_1 = arg_0;
    let var_2 = vec2<u32>(1u, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_0, var_0, 12052u), vec3<u32>(85436u, var_0, arg_0.a), false), vec3<u32>(var_0, 1u, var_1.a) >> (vec3<u32>(var_1.a, var_0, 1u) % vec3<u32>(32u))), _wgslsmith_div_u32(~var_0, ~4294967295u)));
    return any(vec2<bool>(!any(vec2<bool>(true, false)) & any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), true));
}

fn func_1() -> vec2<i32> {
    let var_0 = select(vec4<bool>(false, any(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true)), -1305f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-708f))), !((i32(-1i) * -2147483647i) != _wgslsmith_clamp_i32(u_input.a, u_input.b.x, 46091i))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), true), vec4<bool>(true, func_2(Struct_1(1u, u_input.b.zz, vec2<f32>(-731f, -193f))), true, true)), vec4<bool>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 8901u, 12320u), vec4<u32>(2858u, 4294967295u, 1u, 31242u)) > 1u, any(vec4<bool>(false, false, true, true)), true), true, false, true));
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(2884f + -1124f), 1097f, _wgslsmith_f_op_f32(f32(-1f) * -840f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-304f, -646f, _wgslsmith_f_op_f32(f32(-1f) * -188f))))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1177f, _wgslsmith_f_op_f32(ceil(-1879f))), _wgslsmith_f_op_f32(select(-329f, _wgslsmith_f_op_f32(f32(-1f) * -368f), var_0.x && false)), !(u_input.a != global0[_wgslsmith_index_u32(1u, 31u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-633f))), 626f), var_0.wwy));
    let var_2 = global1[_wgslsmith_index_u32(11099u, 11u)];
    return -vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 22173u), vec2<u32>(var_2.b.a, 0u)) | ~var_2.b.a, 31u)], select(u_input.b.x, _wgslsmith_sub_i32(25782i, global0[_wgslsmith_index_u32(var_2.b.a, 31u)]) | u_input.b.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(19924u, 8772u);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, global0[_wgslsmith_index_u32(5263u, 31u)], vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-294f)), _wgslsmith_f_op_f32(-655f * -2048f))), _wgslsmith_f_op_f32(trunc(378f)))), -696f), func_1() >> (_wgslsmith_add_vec2_u32(~(~vec2<u32>(var_0, var_0)), select(~vec2<u32>(var_0, 127178u), vec2<u32>(var_0, var_0), true)) % vec2<u32>(32u)), func_1().x);
}

