struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(2147483647i, 1i), vec2<i32>(2147483647i, 1i), vec2<i32>(50381i, -13767i), vec2<i32>(65364i, -19041i), vec2<i32>(41050i, 10122i), vec2<i32>(1i, 1i), vec2<i32>(-42042i, -54840i), vec2<i32>(1i, 18104i), vec2<i32>(2147483647i, 16586i), vec2<i32>(i32(-2147483648), 42680i), vec2<i32>(14796i, 1i), vec2<i32>(-1i, 11314i), vec2<i32>(-1i, -1i), vec2<i32>(-48220i, 531i), vec2<i32>(1463i, 4036i), vec2<i32>(-1i, 1i), vec2<i32>(-64514i, i32(-2147483648)), vec2<i32>(-805i, 2147483647i), vec2<i32>(-11874i, 32273i), vec2<i32>(-6069i, 4002i), vec2<i32>(-11746i, -1i), vec2<i32>(26752i, 2147483647i), vec2<i32>(1i, 2147483647i), vec2<i32>(-12999i, 9899i), vec2<i32>(-28825i, -25204i), vec2<i32>(-19121i, 0i), vec2<i32>(-54409i, -8921i));

var<private> global2: array<Struct_1, 26>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    let var_0 = ~u_input.b << (~_wgslsmith_div_u32(~(~u_input.c), u_input.e) % 32u);
    let var_1 = Struct_1(select(global0.a, global0.a, any(global0.a.yy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-919f, global0.c, 597f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global0.b)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.b.x, global0.c, global0.c), vec3<f32>(1739f, 187f, -1037f)))))), _wgslsmith_f_op_f32(1444f + -587f));
    let var_2 = vec2<bool>((true | (var_1.c <= var_1.c)) | false, false);
    var var_3 = global2[_wgslsmith_index_u32(55099u, 26u)];
    let var_4 = Struct_1(!var_1.a, _wgslsmith_div_vec3_f32(global0.b, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(2170f, -422f, -326f) - global0.b)))))), global0.b.x);
    return u_input.e;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    global0 = global2[_wgslsmith_index_u32(33625u, 26u)];
    let var_0 = vec4<u32>(~func_3(), 1u, abs(_wgslsmith_clamp_u32(22045u >> (func_3() % 32u), ~arg_0.x, arg_1.x)), ~_wgslsmith_mod_u32(~arg_0.x >> (1u % 32u), ~(~arg_1.x)));
    global2 = array<Struct_1, 26>();
    let var_1 = -1000f;
    let var_2 = select(arg_0.x, u_input.e, !all(vec3<bool>(false, global0.a.x, any(global0.a.xz))));
    return Struct_1(global0.a, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1894f), _wgslsmith_f_op_f32(exp2(global0.c)), true)), global0.b.x, _wgslsmith_f_op_f32(min(-1922f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-333f))))))), _wgslsmith_f_op_f32(-global0.b.x));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    global1 = array<vec2<i32>, 27>();
    global1 = array<vec2<i32>, 27>();
    let var_0 = arg_1;
    let var_1 = -458f;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-1908f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.b.x, var_1, true)) - -2191f)), -807f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1203f) + arg_3.c));
    return u_input.c;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> StorageBuffer {
    global0 = global2[_wgslsmith_index_u32(~firstLeadingBit(u_input.c ^ (u_input.c & ~12341u)), 26u)];
    global2 = array<Struct_1, 26>();
    let var_0 = 22950u;
    var var_1 = ~(select(~u_input.d.x, _wgslsmith_dot_vec2_i32(u_input.d.xw, _wgslsmith_mod_vec2_i32(u_input.d.wy, vec2<i32>(u_input.a, u_input.b))), any(vec2<bool>(arg_0.x, false))) >> (func_4(0i, Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(global0.b + global0.b), _wgslsmith_f_op_f32(select(arg_1, global0.b.x, arg_0.x))), !vec4<bool>(global0.a.x, arg_0.x, global0.a.x, false), func_2(vec3<u32>(var_0, 0u, u_input.e), abs(vec4<u32>(u_input.c, u_input.c, var_0, u_input.e)), u_input.d.x ^ -2147483647i)) % 32u));
    var var_2 = Struct_1(vec4<bool>(any(vec3<bool>(false && global0.a.x, any(vec2<bool>(global0.a.x, false)), true)), !all(vec4<bool>(arg_0.x, global0.a.x, arg_0.x, global0.a.x)), _wgslsmith_mod_i32(u_input.a, u_input.a) == -2147483647i, select(!(-25631i == u_input.d.x), !global0.a.x, arg_0.x)), _wgslsmith_div_vec3_f32(global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b + vec3<f32>(261f, 1698f, arg_1)) + _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, 750f, arg_1), vec3<f32>(global0.c, arg_1, arg_1))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, global0.c, global0.b.x))))), 741f);
    return StorageBuffer(countOneBits(max(~vec3<i32>(2147483647i, u_input.a, 13640i), ~u_input.d.xxz)) ^ u_input.d.zww, ~min(~min(vec4<u32>(var_0, u_input.c, 4294967295u, 14301u), vec4<u32>(var_0, u_input.e, 58223u, u_input.e)), ~(~vec4<u32>(1u, u_input.e, u_input.c, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2[_wgslsmith_index_u32(u_input.c, 26u)];
    var var_0 = global0.c;
    var var_1 = vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(1078f - _wgslsmith_f_op_f32(-253f + _wgslsmith_f_op_f32(-global0.c))));
    global2 = array<Struct_1, 26>();
    var var_2 = countOneBits(~vec2<i32>(_wgslsmith_div_i32(u_input.a, -2147483647i), -42738i) << (vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(53214u, 0u, 4294967295u), vec3<u32>(u_input.c, u_input.c, 54723u)), ~(~u_input.e)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = func_1(!global0.a, var_1.x);
}

