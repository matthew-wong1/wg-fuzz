struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(-120f, -1473f, -355f, 934f), vec4<f32>(-1188f, 630f, 733f, 114f));

var<private> global1: array<vec2<u32>, 24>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = arg_0;
    global1 = array<vec2<u32>, 24>();
    global0 = array<vec4<f32>, 2>();
    global1 = array<vec2<u32>, 24>();
    let var_1 = vec2<u32>(u_input.a.x, u_input.a.x);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1073f))))));
}

fn func_2() -> Struct_1 {
    var var_0 = ~vec3<u32>(~(~u_input.a.x), u_input.a.x, 4294967295u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(602f * _wgslsmith_f_op_f32(f32(-1f) * -1591f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(628f)), 1415f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-308f)) - _wgslsmith_f_op_f32(func_3(Struct_1(false, vec2<bool>(false, false), u_input.b.x), u_input.b.x, Struct_1(true, vec2<bool>(false, true), 0i)))), _wgslsmith_f_op_f32(-1948f + _wgslsmith_f_op_f32(-160f + -511f))))));
    let var_2 = Struct_1(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, select(true, false, false), true, false), all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))))), !vec2<bool>(true, !select(false, true, false)), _wgslsmith_div_i32(40930i, u_input.b.x));
    let var_3 = var_2;
    var var_4 = Struct_1(var_3.a, var_3.b, firstTrailingBit(var_2.c));
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    global1 = array<vec2<u32>, 24>();
    global0 = array<vec4<f32>, 2>();
    return 54058u;
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<i32>, arg_3: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(154f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -642f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(124f - -982f))), _wgslsmith_f_op_f32(step(280f, _wgslsmith_f_op_f32(164f * _wgslsmith_f_op_f32(abs(1945f)))))));
    global1 = array<vec2<u32>, 24>();
    var var_1 = arg_3;
    var var_2 = Struct_1(true, arg_0.xz, -45642i);
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), true)), -153f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_0) + var_0) - _wgslsmith_f_op_f32(f32(-1f) * -216f)), -398f)));
    return 4294967295u ^ _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(38642u, u_input.a.x, u_input.a.x)), u_input.a.xww ^ u_input.a.yxx) & abs(50222u >> (u_input.a.x % 32u)), _wgslsmith_div_u32(func_4(Struct_1(arg_1, var_2.b, arg_3.x), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 110139u), u_input.a.zx), func_2(), _wgslsmith_f_op_vec4_f32(-var_3)), ~reverseBits(u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false, !vec2<bool>(true, true | (-1922i != u_input.b.x)), u_input.b.x >> (u_input.a.x % 32u));
    var_0 = Struct_1(true | var_0.a, !vec2<bool>(true, any(vec2<bool>(var_0.b.x, var_0.a))), -abs(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b >> (vec4<u32>(u_input.a.x, 19529u, 0u, u_input.a.x) % vec4<u32>(32u)))));
    var var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(~func_1(vec4<bool>(var_0.b.x, false, true, true), u_input.b.x == var_0.c, abs(vec3<i32>(-2147483647i, u_input.b.x, 1i)), -u_input.b.zzx), 45790u));
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 2u)];
    var var_3 = 2147483647i;
    global0 = array<vec4<f32>, 2>();
    var var_4 = 1218f;
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(500f, _wgslsmith_f_op_f32(select(-323f, 112f, var_0.b.x))))), var_1.x);
}

