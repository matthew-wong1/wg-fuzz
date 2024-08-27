struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<u32>,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: i32, arg_3: Struct_4) -> i32 {
    var var_0 = Struct_4(Struct_3(true, ~(~abs(4294967295u)), ~abs(~vec2<u32>(arg_3.a.b, 1u)), arg_3.a.d, ~(~arg_3.a.e ^ _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.c.x, 2147483647i, -31139i), arg_3.a.e))), arg_3.c.c.xz, arg_3.c);
    var var_1 = arg_3.c;
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.c.b, 414f) - _wgslsmith_div_f32(var_0.c.b, var_0.c.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-152f, var_0.c.b) * _wgslsmith_div_f32(1551f, arg_3.c.a)) + 1135f) - 339f), var_0.c.c, var_0.b.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.b - arg_3.c.b), var_1.b)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-363f, arg_3.c.b), vec2<f32>(var_0.c.a, var_1.b)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(641f, -685f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.a, 110f) * _wgslsmith_div_vec2_f32(vec2<f32>(1711f, -1439f), vec2<f32>(532f, -1000f)))), !(!arg_3.c.d))));
    var_0 = Struct_4(Struct_3(var_1.d, var_0.a.b, u_input.a.yx, arg_3.a.d, ~vec4<i32>(_wgslsmith_mult_i32(-24506i, -16828i), u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -47186i), vec2<i32>(66021i, var_0.a.e.x)), i32(-1i) * -24255i)), select(vec2<bool>(all(vec4<bool>(false, true, true, var_0.c.d)), true), select(vec2<bool>(true, true), arg_3.a.d.a.yz, select(true == var_0.a.d.a.x, var_1.c.x, false)), var_1.c.yy), arg_3.c);
    return i32(-1i) * -48747i;
}

fn func_2(arg_0: bool) -> vec3<u32> {
    let var_0 = reverseBits(vec3<i32>(i32(-1i) * -2147483647i, (i32(-1i) * -1i) >> (_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_sub_u32(80894u, u_input.a.x)) % 32u), ~(func_3(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 2661u), 28272u, u_input.c.x, Struct_4(Struct_3(true, 4294967295u, vec2<u32>(u_input.a.x, 4294967295u), Struct_2(vec4<bool>(false, arg_0, arg_0, true)), vec4<i32>(44965i, 4921i, u_input.c.x, 0i)), vec2<bool>(arg_0, arg_0), Struct_1(1256f, -1000f, vec3<bool>(false, arg_0, arg_0), arg_0))) & u_input.c.x)));
    var var_1 = -3011f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -878f));
    let var_2 = all(select(vec3<bool>(all(!vec3<bool>(false, arg_0, arg_0)), any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(false, true))), any(vec3<bool>(false, false, arg_0))), !select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, true, true), false), vec3<bool>(arg_0, true, true), true), false));
    let var_3 = !arg_0;
    return ~_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.a.x, 186u), reverseBits(u_input.a.x), 1u), _wgslsmith_clamp_vec3_u32(select(u_input.a, u_input.a, false), vec3<u32>(u_input.a.x, 1u, u_input.a.x) >> (vec3<u32>(0u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), ~u_input.a)) | (u_input.a ^ ~u_input.a);
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = firstLeadingBit(1u);
    let var_1 = _wgslsmith_mult_vec3_u32(max(_wgslsmith_div_vec3_u32(u_input.a, firstLeadingBit(vec3<u32>(u_input.a.x, 37722u, 16701u))) << (u_input.a % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(73730u, var_0, u_input.a.x), ~u_input.a), func_2(-32869i >= arg_0))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, (var_0 | 1u) ^ 33430u, func_2(true).x), u_input.a));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-565f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1580f)), _wgslsmith_f_op_f32(f32(-1f) * -714f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -964f) * _wgslsmith_f_op_f32(max(-413f, _wgslsmith_f_op_f32(ceil(302f))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1058f), -475f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec2_i32(u_input.c.yx, _wgslsmith_mod_vec2_i32(u_input.c.zy >> (vec2<u32>(38424u, u_input.a.x) % vec2<u32>(32u)), u_input.c.zy >> (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u)))))), -232f, vec3<bool>(true, true, true), true);
    let x = u_input.a;
    s_output = StorageBuffer(-25025i, _wgslsmith_sub_vec3_u32(max(func_2(true) >> (~u_input.a % vec3<u32>(32u)), u_input.a), (u_input.a >> (u_input.a % vec3<u32>(32u))) << (max(select(u_input.a, u_input.a, var_1.d), u_input.a) % vec3<u32>(32u))), abs(_wgslsmith_div_vec3_i32(u_input.c & firstTrailingBit(vec3<i32>(4599i, -1i, -40139i)), firstTrailingBit(u_input.c))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a, 1379f, var_1.b, var_1.a)))) - vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.b)), _wgslsmith_f_op_f32(-619f + -306f), 624f, _wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.a * var_1.b), var_1.a, _wgslsmith_f_op_f32(var_1.a + -746f), var_1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, -1531f, var_1.b))))), 1190f);
}

