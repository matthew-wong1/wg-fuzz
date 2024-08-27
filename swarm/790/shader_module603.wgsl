struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = ~(-1i);
    let var_1 = Struct_3(!all(!(!arg_0.d.zw)), 2147483647i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.e.a, arg_0.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1718f)), arg_0.c.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(arg_0.c, vec4<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, -1336f)))), arg_0.c), arg_0.d.x)), arg_0.d, arg_0.e);
    let var_2 = vec2<i32>(abs(-1i), ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, 0i), vec2<i32>(2147483647i, 2147483647i) | vec2<i32>(-27628i, arg_0.b))));
    var var_3 = vec4<bool>(var_1.d.x, arg_0.d.x, all(vec3<bool>(!all(var_1.d.xxw), any(var_1.d.wz), any(var_1.d))), true);
    var_0 = var_1.b;
    return firstLeadingBit(_wgslsmith_sub_u32(~abs(u_input.b | u_input.c), u_input.a));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>) -> bool {
    var var_0 = ~0u;
    var var_1 = true;
    var_1 = !(!(!any(vec3<bool>(true, true, true))));
    var var_2 = arg_1.x;
    var var_3 = _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(3509u, func_3(Struct_3(false, 1i, vec4<f32>(arg_0.a, -780f, -503f, -1015f), vec4<bool>(false, true, false, true), Struct_2(-436f))), ~_wgslsmith_add_u32(arg_1.x, 18815u)), firstTrailingBit(reverseBits(37513u) | u_input.b));
    return any(select(select(vec4<bool>(true, true, true, all(vec2<bool>(false, true))), vec4<bool>(select(true, true, true), any(vec2<bool>(false, true)), all(vec2<bool>(false, true)), true), true), vec4<bool>(true, _wgslsmith_f_op_f32(-arg_0.a) == _wgslsmith_f_op_f32(-arg_0.a), true, any(vec2<bool>(true, true))), true));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: Struct_3) -> u32 {
    var var_0 = vec4<u32>(abs(~_wgslsmith_mod_u32(~30565u, 1u)), _wgslsmith_sub_u32(54994u, u_input.d), 106046u, 4294967295u);
    let var_1 = select(!select(select(vec4<bool>(arg_3.d.x, arg_3.d.x, false, arg_3.a), vec4<bool>(true, arg_3.a, arg_3.a, true), select(arg_3.d, vec4<bool>(arg_3.a, arg_3.a, arg_3.d.x, arg_3.d.x), arg_3.d)), arg_3.d, arg_3.d), select(arg_3.d, vec4<bool>(all(vec2<bool>(arg_3.d.x, true)), !all(arg_3.d.zww), !(false && arg_3.a), arg_3.a), select(func_2(Struct_2(416f), ~var_0.ywy), !(var_0.x >= 64084u), all(!arg_3.d.yx))), arg_0.a == 1218f);
    var_0 = vec4<u32>(var_0.x, ~var_0.x, func_3(Struct_3(var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, -2603i), vec2<i32>(arg_2, 2147483647i)), _wgslsmith_f_op_vec4_f32(ceil(arg_3.c)), arg_3.d, Struct_2(-1328f))), ~(var_0.x >> (4294967295u % 32u))) & vec4<u32>(select(reverseBits(var_0.x), _wgslsmith_sub_u32(var_0.x & 43915u, ~u_input.d), select(var_1.x, arg_3.d.x, !arg_3.a)), _wgslsmith_sub_u32(func_3(arg_3), 43187u), ~u_input.b, 3761u << (1u % 32u));
    let var_2 = abs(~vec3<u32>(~(~u_input.b), u_input.a, _wgslsmith_add_u32(u_input.d, 1u)));
    let var_3 = Struct_2(-625f);
    return ~(~(~min(var_0.x, countOneBits(var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(~22403u, countOneBits(28040u), func_1(Struct_2(189f), -9121i, -1i, Struct_3(false, 1i, vec4<f32>(-764f, 1625f, 661f, 375f), vec4<bool>(false, false, false, true), Struct_2(-506f))), func_3(Struct_3(true, -45624i, vec4<f32>(-1252f, -650f, 995f, -324f), vec4<bool>(true, true, false, false), Struct_2(-850f)))) >> ((vec4<u32>(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.c, 7572u), vec3<u32>(19849u, u_input.b, 4294967295u)), 31230u, u_input.a) | ~vec4<u32>(u_input.b, 29651u, u_input.c, 12193u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~vec4<u32>(~4305u, 47981u & u_input.c, 82692u, u_input.c), vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(60612u, 1u, u_input.d), vec3<u32>(4258u, 21593u, 11623u)), 1u, 44747u) | abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 50291u, 0u, 4294967295u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -851f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-718f * 547f) - _wgslsmith_f_op_f32(f32(-1f) * -1142f)))))));
    let var_2 = _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, func_3(Struct_3(false, -2147483647i, vec4<f32>(var_1.a, 466f, var_1.a, var_1.a), vec4<bool>(true, false, true, false), Struct_2(var_1.a)))), vec2<u32>(~1u, max(~var_0.x >> ((var_0.x ^ u_input.d) % 32u), 46014u)));
    var var_3 = countOneBits(_wgslsmith_add_i32(-1i, -1i));
    var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(var_0.x, 1u, min(~var_2.x, 23341u), _wgslsmith_mult_u32(var_0.x, ~var_2.x)), min(~vec4<u32>(_wgslsmith_div_u32(29607u, u_input.b), var_2.x, 25627u, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, var_0.x, 43556u) << (~vec4<u32>(37501u, 23546u, u_input.b, var_0.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, 0u, var_2.x, u_input.c) & vec4<u32>(u_input.b, 63717u, 4294967295u, var_0.x), ~vec4<u32>(1054u, var_0.x, var_2.x, 0u)), vec4<u32>(0u, ~10483u, ~4294967295u, 0u))));
    var var_4 = any(vec2<bool>(true, true));
    var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(abs(abs(~vec4<u32>(36496u, var_2.x, 1u, u_input.d))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_2.x, 4294967295u, ~4294967295u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(79065u, 15345u, 0u, 1u), vec4<u32>(54841u, var_2.x, var_2.x, 0u), vec4<u32>(u_input.c, u_input.a, 0u, u_input.b)))), func_3(Struct_3(!any(vec2<bool>(true, true)), 15759i, _wgslsmith_f_op_vec4_f32(vec4<f32>(223f, 1000f, var_1.a, 1483f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a, var_1.a, -557f, -579f)))), vec4<bool>(true, true, true, true), Struct_2(_wgslsmith_f_op_f32(select(var_1.a, -668f, false))))), select(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(var_2.x, u_input.b, var_2.x)), _wgslsmith_div_vec3_u32(var_0.xyw, ~vec3<u32>(var_2.x, var_2.x, u_input.d))), _wgslsmith_add_u32(0u, 42359u), true), 9221u);
    var var_5 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(1u, firstTrailingBit(var_2.x)), 1374f, ~vec4<u32>(0u, ~36022u, select(1u, _wgslsmith_sub_u32(var_2.x, 4294967295u), true), u_input.b));
}

