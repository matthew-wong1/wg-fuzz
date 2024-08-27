struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32>;

var<private> global1: bool = false;

var<private> global2: f32 = -1098f;

var<private> global3: u32 = 84604u;

var<private> global4: f32 = -217f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_add_i32(countOneBits(-1i), u_input.a & _wgslsmith_sub_i32(u_input.a >> (_wgslsmith_add_u32(7879u, u_input.d) % 32u), -(u_input.a & u_input.a)));
    let var_1 = Struct_3(Struct_1(-1i));
    var var_2 = all(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, any(vec4<bool>(true, true, false, true)), 0u < u_input.d)));
    global3 = abs(~27252u);
    var var_3 = Struct_2(select(vec4<bool>(select(true, false, true), true, true, false), vec4<bool>(any(vec3<bool>(false, false, false)), select(false, false, true) && true, !any(vec4<bool>(true, true, false, true)), any(vec4<bool>(false, true, false, false)) || false), vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_dot_vec3_i32(~min(vec3<i32>(var_0, -1i, var_1.a.a), vec3<i32>(16694i, -1i, var_1.a.a)), min(~vec3<i32>(1i, -2147483647i, u_input.a), vec3<i32>(-1i, var_1.a.a, -2147483647i)))), Struct_1(var_0));
    return var_3.a;
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    var var_0 = Struct_3(Struct_1(u_input.a));
    let var_1 = select(!arg_0.yy, vec2<bool>(all(vec3<bool>(true, arg_0.x, !arg_0.x)), 1u < u_input.c), all(func_3(1093f)));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1309f)))), -775f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1167f))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-501f - -732f))))))));
    let var_3 = !(!func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f)).x);
    let var_4 = Struct_3(var_0.a);
    return _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(444f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-728f)) - _wgslsmith_f_op_f32(f32(-1f) * -1280f))), 505f, 1320u == firstTrailingBit(select(u_input.d, u_input.c, var_3)))));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> u32 {
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1881f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -472f)))) - 1f);
    var var_0 = Struct_1(~(-11379i & ~arg_0));
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), 1939f);
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(397f * _wgslsmith_f_op_f32(func_2(arg_1.a.ywy))) + _wgslsmith_f_op_f32(select(-2733f, -370f, true))), -366f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1144f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(625f, 439f) - _wgslsmith_f_op_f32(-588f - 133f))))));
    return _wgslsmith_clamp_u32(~u_input.d, abs(~4294967295u), ~34127u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a);
    let var_1 = select(!vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), true, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, 23634i, -2147483647i), vec3<i32>(1i, var_0.a, var_0.a)) <= 63770i), vec3<bool>(false, (u_input.d << (min(36461u, 1u) % 32u)) >= firstLeadingBit(u_input.b), ~u_input.d <= func_1(u_input.a, Struct_2(vec4<bool>(true, false, true, true), var_0, Struct_1(var_0.a)))), !vec3<bool>(false, any(vec4<bool>(false, false, false, true)), false));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(53630u, u_input.d, 1u) << (_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(u_input.d, 4294967295u, 62077u)), vec3<u32>(u_input.d, u_input.d, 3527u)), max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 0u, u_input.c), vec3<u32>(4294967295u, u_input.c, u_input.d)), ~vec3<u32>(u_input.b, 4294967295u, u_input.b))) % vec3<u32>(32u)), reverseBits(~countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(1u, 37386u)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-261f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-854f, -2457f)))), -975f))), vec3<i32>(-1i, select(-(~u_input.a), select(-u_input.a, var_0.a, true || var_1.x), false), -20993i), ~(~min(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 75157u), vec2<u32>(38534u, 1u)), vec2<u32>(1u, 0u) >> (vec2<u32>(0u, u_input.c) % vec2<u32>(32u)))));
}

