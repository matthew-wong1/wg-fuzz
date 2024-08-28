struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: Struct_3,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4>;

var<private> global1: array<i32, 22>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    var var_0 = firstTrailingBit(max(select(1i, ~u_input.a.x, 414f > arg_3.b.x), 2147483647i) & arg_0);
    var var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.b.zx, arg_3.c.wz) & (arg_2.zy >> (vec2<u32>(arg_1.e.c.x, arg_2.x) % vec2<u32>(32u))), vec2<u32>(1u, 33023u)) >> (arg_3.c.x % 32u), countOneBits(min(_wgslsmith_div_u32(1u, arg_2.x), ~6119u)), 1u, ~0u);
    var_1 = _wgslsmith_sub_vec4_u32(arg_1.e.c, abs(vec4<u32>(5609u, _wgslsmith_mult_u32(arg_1.c.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1571u, arg_1.b.x, 59893u), vec3<u32>(arg_2.x, 34600u, arg_1.b.x))), _wgslsmith_mult_u32(abs(var_1.x), 4294967295u), min(30080u, 48820u) >> (var_1.x % 32u))));
    let var_2 = arg_1.e;
    global0 = array<vec3<f32>, 4>();
    return ~var_1.x;
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    global0 = array<vec3<f32>, 4>();
    global0 = array<vec3<f32>, 4>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2060f + -708f))))), vec3<u32>(~(18743u | _wgslsmith_div_u32(u_input.c, u_input.b)), select(_wgslsmith_div_u32(0u, 8840u | u_input.c), u_input.c, false), u_input.c), Struct_1(any(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_0.zx)) - _wgslsmith_f_op_vec2_f32(select(arg_0.yw, vec2<f32>(-2051f, arg_0.x), vec2<bool>(false, false)))) + arg_0.yx), select(vec4<u32>(u_input.c, u_input.c >> (74856u % 32u), ~u_input.b, func_3(u_input.a.x, Struct_2(arg_0.zz, vec3<u32>(u_input.b, u_input.c, 4294967295u), Struct_1(true, vec2<f32>(arg_0.x, arg_0.x), vec4<u32>(0u, u_input.c, u_input.c, 44845u)), global0[_wgslsmith_index_u32(u_input.b, 4u)], Struct_1(false, vec2<f32>(863f, arg_0.x), vec4<u32>(27431u, 4294967295u, u_input.b, u_input.b))), vec4<u32>(u_input.b, 0u, 1u, 67474u), Struct_1(false, vec2<f32>(arg_0.x, arg_0.x), vec4<u32>(u_input.c, u_input.b, 74074u, u_input.c)))), ~vec4<u32>(84492u, 1u, 65942u, u_input.b), vec4<bool>(true, true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))))), Struct_1(all(vec4<bool>(false, false, false, true)) || true, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(trunc(-539f))), arg_0.x), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 0u, u_input.c, u_input.b), ~vec4<u32>(0u, 4294967295u, 1u, u_input.b)), ~(vec4<u32>(20851u, u_input.b, u_input.c, u_input.c) & vec4<u32>(u_input.c, u_input.c, 0u, 44371u)))));
    return var_0.d.x;
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    global1 = array<i32, 22>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(898f, 407f, -1237f, 446f))), vec4<f32>(571f, _wgslsmith_f_op_f32(-526f - -493f), _wgslsmith_f_op_f32(f32(-1f) * -449f), 366f), _wgslsmith_f_op_f32(f32(-1f) * -773f) != _wgslsmith_f_op_f32(ceil(-1742f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-403f - -722f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<f32>(1070f, 1000f, -1000f, -510f))) - _wgslsmith_f_op_f32(select(1000f, -566f, true))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_2(vec4<f32>(186f, 1067f, 202f, -900f))))), true)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-106f, _wgslsmith_f_op_f32(-420f * 2395f), -2627f, _wgslsmith_f_op_f32(f32(-1f) * -125f)), vec4<f32>(_wgslsmith_f_op_f32(abs(-986f)), _wgslsmith_f_op_f32(1729f - -306f), -254f, -165f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1578f, 302f, 1288f, 483f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1247f, 518f, -1222f, 1925f)))))));
    var var_1 = -1i;
    let var_2 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), var_0.x), var_0.x, Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-291f, -1068f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, var_0.x)))))), ~(~(vec3<u32>(u_input.c, 1u, u_input.c) ^ vec3<u32>(98341u, 0u, 6943u))), Struct_1(arg_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.xy * var_0.wy) + vec2<f32>(1f, 1f)), ~vec4<u32>(1u, 47518u, u_input.c, u_input.b)), _wgslsmith_f_op_vec3_f32(-var_0.wyx), Struct_1(arg_0.x, var_0.xy, select(~vec4<u32>(88868u, 13917u, u_input.b, 0u), ~vec4<u32>(u_input.c, u_input.c, u_input.b, 15011u), true))), Struct_3(min(-54995i, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(reverseBits(u_input.c), 22u)], -u_input.a.x))), vec2<u32>(countOneBits(reverseBits(701u)), u_input.c));
    global1 = array<i32, 22>();
    return Struct_3(39966i);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = false;
    let var_1 = select(u_input.a.yzz, u_input.a.wxx, vec3<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-108f)), _wgslsmith_f_op_f32(floor(268f)))) <= 526f, var_0, var_0));
    let var_2 = var_1.x;
    global0 = array<vec3<f32>, 4>();
    global0 = array<vec3<f32>, 4>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-1416f, 786f)), 129f)) + vec2<f32>(1f, 174f)), ~vec3<u32>(u_input.c, 0u, 1u ^ u_input.c), Struct_1(!(!all(vec3<bool>(var_0, false, var_0))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))), vec4<u32>(~u_input.b, 0u, firstLeadingBit(1u), u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1174f, 388f, -1000f, 1031f), vec4<f32>(559f, 966f, -1000f, 128f))) * vec4<f32>(-568f, -3189f, -184f, -460f)))), _wgslsmith_f_op_f32(round(1f)), 1000f), Struct_1(all(vec4<bool>(all(vec2<bool>(var_0, var_0)), var_0 & var_0, var_0 & var_0, any(vec4<bool>(var_0, true, false, var_0)))), vec2<f32>(-551f, _wgslsmith_f_op_f32(f32(-1f) * -836f)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(0u, u_input.c, 1u, u_input.b)), ~vec4<u32>(0u, u_input.c, 1u, 68006u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(vec3<bool>(true, !any(vec2<bool>(false, false)), true)));
    global0 = array<vec3<f32>, 4>();
    var var_1 = select(select(!select(select(vec2<bool>(var_0.c.a, true), vec2<bool>(false, true), vec2<bool>(var_0.e.a, true)), !vec2<bool>(var_0.e.a, true), !vec2<bool>(var_0.e.a, false)), vec2<bool>(false, !(var_0.c.a & var_0.c.a)), vec2<bool>(all(vec4<bool>(false, var_0.c.a, true, var_0.c.a)) & var_0.e.a, var_0.e.a)), !(!(!vec2<bool>(var_0.e.a, var_0.e.a))), true);
    var var_2 = func_1(!vec3<bool>(true, !(0i < global1[_wgslsmith_index_u32(0u, 22u)]), true));
    var var_3 = vec4<bool>(var_1.x, false, var_1.x, false);
    global0 = array<vec3<f32>, 4>();
    var_2 = Struct_3(-25355i);
    var var_4 = func_1(var_3.zxz);
    let x = u_input.a;
    s_output = StorageBuffer(-(vec4<i32>(var_4.a, _wgslsmith_clamp_i32(2147483647i, -1i, u_input.a.x), ~(-25986i), 0i) << (vec4<u32>(abs(u_input.b), u_input.b, abs(31302u), 4294967295u) % vec4<u32>(32u))), select(max(~(~1u), var_0.e.c.x), u_input.c, false));
}

