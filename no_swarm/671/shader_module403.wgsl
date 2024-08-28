struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 29>;

var<private> global1: f32 = 125f;

var<private> global2: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec4<u32>, arg_3: i32) -> i32 {
    var var_0 = !select(!select(vec4<bool>(arg_0, false, false, false), !vec4<bool>(arg_1, true, arg_0, arg_0), !vec4<bool>(arg_0, true, arg_1, arg_0)), !select(select(vec4<bool>(false, arg_0, arg_1, true), vec4<bool>(true, arg_1, false, arg_0), vec4<bool>(arg_0, arg_0, false, true)), select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_1, arg_0, arg_0, arg_1), vec4<bool>(arg_0, false, arg_0, true)), select(vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(true, false, arg_1, false), arg_0)), !select(select(vec4<bool>(true, arg_1, false, arg_0), vec4<bool>(true, true, false, false), arg_1), !vec4<bool>(arg_0, arg_1, false, true), select(vec4<bool>(arg_0, false, arg_0, arg_1), vec4<bool>(arg_0, arg_1, arg_1, true), false)));
    return _wgslsmith_mult_i32(~(-13110i), -(-1i | (-arg_3 | 20742i)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    global2 = arg_0.c.x;
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, 317f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(168f, 705f), vec2<f32>(353f, arg_0.a), arg_2.d.x))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, arg_0.a) - vec2<f32>(arg_2.a, arg_0.a)), vec2<f32>(arg_2.a, -312f)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(334f - arg_2.a)), !(!arg_0.d.zz))), !any(select(vec3<bool>(true, true, arg_2.d.x), arg_0.d, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(1000f - arg_0.a)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(252f, -257f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a))))));
    let var_1 = arg_0.c.xxy ^ vec3<u32>(max(firstLeadingBit(_wgslsmith_sub_u32(arg_2.b.x, arg_0.c.x)), 4294967295u), arg_0.b.x, 105448u);
    let var_2 = vec3<bool>(any(select(!(!arg_2.d), vec3<bool>(false, !arg_2.d.x, -1727f < var_0.x), !arg_2.d)), false, false);
    let var_3 = arg_0.d.x;
    return reverseBits(min(1978u, arg_0.b.x & u_input.b.x)) << (u_input.c % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32) -> f32 {
    var var_0 = arg_0.a;
    var var_1 = Struct_1(-452f, u_input.b.zz, ~vec4<u32>(~arg_0.c.x & ~19701u, func_4(Struct_1(1409f, vec2<u32>(72568u, arg_0.b.x), arg_0.c, arg_0.d, arg_1.zxw), func_3(arg_0.d.x, true, vec4<u32>(u_input.c, 34093u, 40156u, 0u), u_input.a), Struct_1(arg_2, u_input.b.zx, vec4<u32>(1u, 53040u, 4294967295u, u_input.c), arg_0.d, vec3<i32>(arg_1.x, -1i, -37721i))), ~_wgslsmith_sub_u32(57118u, 0u), _wgslsmith_mult_u32(205u, 44440u) >> (_wgslsmith_sub_u32(arg_0.c.x, arg_0.c.x) % 32u)), arg_0.d, arg_0.e | vec3<i32>(arg_1.x, ~arg_0.e.x, arg_0.e.x));
    global2 = ~20682u;
    let var_2 = arg_0.d;
    var var_3 = reverseBits(-select(~vec2<i32>(-2443i, 24251i), vec2<i32>(1i, -1i), select(true, var_2.x, var_1.d.x))) ^ -global0[_wgslsmith_index_u32(countOneBits(1u), 29u)];
    return _wgslsmith_f_op_f32(643f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2)), -1068f)), _wgslsmith_f_op_f32(-827f * _wgslsmith_f_op_f32(abs(arg_2))))));
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<i32>(u_input.d.x, -abs(-2147483647i));
    global0 = array<vec2<i32>, 29>();
    global2 = ~u_input.b.x;
    global2 = 1u;
    global0 = array<vec2<i32>, 29>();
    return Struct_1(_wgslsmith_f_op_f32(-492f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(523f, u_input.b.yz, vec4<u32>(u_input.b.x, 4294967295u, 7258u, u_input.b.x), vec3<bool>(true, true, true), vec3<i32>(var_0.x, u_input.a, u_input.d.x)), vec4<i32>(u_input.a, -10206i, 0i, -44912i), 1516f)) * _wgslsmith_f_op_f32(779f - 1169f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-539f, -393f))), all(vec4<bool>(true, true, false, false))))), ~(min(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(u_input.c, u_input.b.x)), ~vec2<u32>(u_input.b.x, u_input.b.x)) >> (vec2<u32>(~4294967295u, _wgslsmith_clamp_u32(u_input.b.x, u_input.c, u_input.c)) % vec2<u32>(32u))), vec4<u32>(_wgslsmith_mult_u32(max(3097u, u_input.c), 0u), 4294967295u, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c, ~u_input.b.x), ~(~1u)), 8964u >> (~(~u_input.c) % 32u)), vec3<bool>(true, true, true), firstLeadingBit(abs(_wgslsmith_sub_vec3_i32(u_input.d.xxx, ~u_input.d.wzx))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global1 = _wgslsmith_f_op_f32(max(-1173f, 279f));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(1000f, -472f, var_0))))), 110f)) - -577f);
    var var_2 = Struct_1(var_1, ~vec2<u32>(select(max(u_input.c, u_input.c), 0u, 29412i < u_input.d.x), _wgslsmith_mult_u32(u_input.c, ~u_input.b.x)), vec4<u32>(~_wgslsmith_dot_vec2_u32(select(u_input.b.yx, u_input.b.zy, var_0), u_input.b.xx >> (u_input.b.yy % vec2<u32>(32u))), 11099u, _wgslsmith_mult_u32(4294967295u, u_input.c) | ~1u, u_input.b.x << (abs(firstTrailingBit(u_input.b.x)) % 32u)), vec3<bool>(select(false, var_0, all(vec3<bool>(var_0, false, true))), true, false), vec3<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.a ^ u_input.d.x), u_input.d.x, ~1i) | ~u_input.d.wzw);
    global0 = array<vec2<i32>, 29>();
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, var_3.e.x);
}

