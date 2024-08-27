struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7>;

var<private> global1: array<Struct_2, 23>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    global1 = array<Struct_2, 23>();
    var var_0 = Struct_1(256f);
    return abs(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(0i, 18024i)), u_input.b >> (1u % 32u))) << (firstLeadingBit(vec2<u32>(_wgslsmith_sub_u32(44483u, firstLeadingBit(0u)), countOneBits(u_input.c.x))) % vec2<u32>(32u));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: u32) -> f32 {
    global1 = array<Struct_2, 23>();
    var var_0 = Struct_2(~(-_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.b, -17354i)), func_3(Struct_1(arg_0.a)))), Struct_1(_wgslsmith_f_op_f32(max(-979f, arg_0.a))), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(u_input.c.yx, arg_2), u_input.c.x, u_input.d.x), vec4<u32>(u_input.d.x, 41968u, ~1u, abs(0u))), firstTrailingBit(u_input.c)), arg_0);
    var_0 = Struct_2(0i, arg_0, vec4<u32>(var_0.c.x, ~(~1u), 0u, ~firstTrailingBit(_wgslsmith_div_u32(arg_3, var_0.c.x))), var_0.d);
    var_0 = global1[_wgslsmith_index_u32(~max(min(_wgslsmith_dot_vec4_u32(~u_input.c, u_input.c), 13004u), var_0.c.x), 23u)];
    return _wgslsmith_f_op_f32(f32(-1f) * -838f);
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = arg_0.d;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, -943f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -112f, var_0.a))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1336f), -627f), any(vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.a, arg_0.b.a, arg_0.d.a)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, arg_0.b.a, var_0.a), vec3<f32>(arg_0.b.a, 540f, -773f))) * vec3<f32>(arg_0.d.a, _wgslsmith_f_op_f32(func_2(Struct_1(arg_0.d.a), vec4<i32>(-2147483647i, 0i, 0i, -10162i), vec2<u32>(arg_0.c.x, 58698u), u_input.c.x)), var_0.a)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.d.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-982f + -1073f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.b.a, arg_0.d.a, var_0.a))), vec3<f32>(arg_0.d.a, var_0.a, var_0.a)))));
    var var_2 = var_0;
    let var_3 = arg_0.d;
    var var_4 = 0i;
    return select(_wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(9919i, arg_0.a, -1i), vec3<i32>(u_input.b, 39731i, arg_0.a)), (vec3<i32>(0i, u_input.b, 1i) & vec3<i32>(2527i, u_input.b, u_input.a)) >> (_wgslsmith_sub_vec3_u32(u_input.d.zwx, vec3<u32>(1u, arg_0.c.x, arg_0.c.x)) % vec3<u32>(32u))) < _wgslsmith_add_i32(func_3(var_3).x, i32(-1i) * -1i), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a)))) == var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 23>();
    let var_0 = !vec2<bool>(select(true, true, true), true);
    global1 = array<Struct_2, 23>();
    var var_1 = (abs(_wgslsmith_add_u32(u_input.c.x | 1u, ~0u)) ^ select(~68299u, ~u_input.d.x, !func_1(Struct_2(u_input.b, Struct_1(1023f), vec4<u32>(1u, 22066u, 4294967295u, 19161u), Struct_1(-187f))))) & u_input.d.x;
    var_1 = (~u_input.d.x << (~(~min(u_input.c.x, u_input.d.x)) % 32u)) | 4294967295u;
    let var_2 = -func_3(Struct_1(_wgslsmith_f_op_f32(-162f * -1088f)));
    let var_3 = u_input.d.x;
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(897f + _wgslsmith_f_op_f32(select(455f, -1263f, true))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(430f))))) + -692f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(712f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(1187f), vec4<i32>(var_2.x, u_input.b, -2147483647i, u_input.a), vec2<u32>(var_3, 29034u), 1u)) + _wgslsmith_div_f32(746f, 1573f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-718f - -922f) - _wgslsmith_f_op_f32(func_2(Struct_1(1056f), vec4<i32>(1i, u_input.a, var_2.x, -2735i), u_input.c.zw, 1u))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) + _wgslsmith_f_op_f32(select(1431f, 423f, true))), -1000f, var_4) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1036f, var_4, 1332f)))) * vec3<f32>(_wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_4))));
}

