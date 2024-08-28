struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -736f;

var<private> global1: array<vec2<i32>, 8>;

var<private> global2: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(558f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-947f))))), _wgslsmith_f_op_f32(abs(-161f)), 370f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-327f + 342f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(537f))), _wgslsmith_f_op_f32(f32(-1f) * -249f), _wgslsmith_f_op_f32(-1240f + -351f), _wgslsmith_f_op_f32(f32(-1f) * -160f)))));
    global0 = var_0.x;
    global1 = array<vec2<i32>, 8>();
    global2 = select(true, all(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true)), any(vec4<bool>(all(vec2<bool>(false, true)), any(vec2<bool>(true, true)), false, true))) && any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, false))), all(vec4<bool>(true, false, false, false))));
    var var_1 = any(vec2<bool>(select(true, true, true), false));
    return min(u_input.b, u_input.b);
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(1u, u_input.b)), ~select(firstLeadingBit(vec2<u32>(u_input.b, 0u)), vec2<u32>(13236u, 0u) ^ (vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u))), !vec2<bool>(true, arg_0)));
    var var_1 = Struct_2(~var_0, abs(~func_3() & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_0.x, 4294967295u) ^ vec3<u32>(1u, 1u, 0u), select(vec3<u32>(37263u, var_0.x, var_0.x), vec3<u32>(16480u, 8346u, var_0.x), arg_0))), -732f, true, _wgslsmith_dot_vec2_i32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 147231u, u_input.b, var_0.x), vec4<u32>(var_0.x, 57964u, 1u, 22205u)), 8u)], ~firstLeadingBit(vec2<i32>(u_input.c.x, u_input.d))) ^ -(_wgslsmith_mod_i32(u_input.d, u_input.a.x) ^ select(u_input.d, -31178i, false)));
    var var_2 = -1370f;
    var var_3 = !select(vec2<bool>(all(select(vec4<bool>(true, arg_0, var_1.d, false), vec4<bool>(var_1.d, true, false, var_1.d), true)), false), select(select(select(vec2<bool>(true, true), vec2<bool>(arg_0, var_1.d), vec2<bool>(arg_0, var_1.d)), !vec2<bool>(true, var_1.d), var_1.d), select(vec2<bool>(true, true), !vec2<bool>(arg_0, false), arg_0 & arg_0), vec2<bool>(true, true)), vec2<bool>(false, true));
    let var_4 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.c, 383f, 1292f)));
    return Struct_3(Struct_2(~var_1.a, var_1.b, var_1.c, false, firstLeadingBit(var_1.e)));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = func_2(arg_0.a.d);
    global0 = _wgslsmith_f_op_f32(-var_0.a.c);
    var var_1 = (min(firstTrailingBit(~vec3<u32>(20724u, 22913u, 4294967295u)), firstLeadingBit(_wgslsmith_div_vec3_u32(arg_2.xzw, vec3<u32>(arg_2.x, 1u, 52998u)))) >> (_wgslsmith_mod_vec3_u32(arg_2.xww, arg_2.zyy) % vec3<u32>(32u))) | vec3<u32>(1u, 13527u, arg_0.a.b);
    global0 = _wgslsmith_f_op_f32(sign(arg_0.a.c));
    let var_2 = ~_wgslsmith_mult_u32(~(~60036u), 22289u);
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(111f, -365f, arg_0.a.c, -1376f), vec4<f32>(1182f, var_0.a.c, arg_0.a.c, arg_0.a.c)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c, -970f, -371f, -1379f) + vec4<f32>(var_0.a.c, var_0.a.c, var_0.a.c, 707f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c, var_0.a.c, var_0.a.c, -796f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c, arg_0.a.c, arg_0.a.c, 634f)), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(522f, 1000f, -1326f, arg_0.a.c) - vec4<f32>(var_0.a.c, var_0.a.c, 393f, var_0.a.c))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.c, var_0.a.c, -1423f, arg_0.a.c)))))));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> f32 {
    global1 = array<vec2<i32>, 8>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_0.a.x)), arg_0.a.x)), _wgslsmith_f_op_f32(arg_0.a.x - -1076f)));
    let var_0 = ~(~vec4<u32>(~firstTrailingBit(u_input.b), 18138u, ~u_input.b, func_2(arg_1 || true).a.a.x));
    var var_1 = Struct_3(Struct_2(var_0.xx, 0u, _wgslsmith_f_op_f32(320f * _wgslsmith_f_op_f32(exp2(arg_0.a.x))), false, func_2(true).a.e));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2023f, var_1.a.c)))))));
    return _wgslsmith_f_op_f32(sign(880f));
}

fn func_1() -> u32 {
    global1 = array<vec2<i32>, 8>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(func_2(true), _wgslsmith_mult_i32(~u_input.c.x, _wgslsmith_mod_i32(1i, u_input.c.x)), vec4<u32>(~u_input.b, ~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b)), u_input.b)), select(true, true, 30092u > u_input.b))));
    var var_0 = vec3<bool>(false, true, true);
    global2 = false;
    global0 = _wgslsmith_f_op_f32(1f - func_2(true).a.c);
    return u_input.b >> (u_input.b % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1280f)))) * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(771f - -947f))) - _wgslsmith_f_op_f32(836f - 1000f))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_5(func_4(Struct_3(Struct_2(vec2<u32>(3838u, u_input.b), 1u, -1363f, true, -11190i)), _wgslsmith_mult_i32(u_input.d, 25806i), vec4<u32>(u_input.b, 1u, 0u, u_input.b)), func_2(true).a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -229f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-136f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-221f * 262f))) * 623f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zy);
}

