struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 20>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_4) -> u32 {
    var var_0 = max(9888u, ~select(11830u, 30173u, true));
    let var_1 = Struct_2(arg_2.a.a, arg_2.a.b, !(!(arg_2.a.b > 12124i) & all(select(arg_2.a.a.b.wxy, global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(15639u, 20u)]))), Struct_1(-1i, !(!(!vec4<bool>(arg_2.a.d.b.x, false, arg_2.a.d.d.x, arg_2.a.c))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_2.a.d.c) - arg_1), vec2<bool>(false, any(vec4<bool>(true, arg_2.a.c, false, true)))));
    let var_2 = arg_2.a;
    let var_3 = !(~arg_2.a.a.a < ~firstTrailingBit(-11762i));
    let var_4 = vec2<bool>(!var_1.c, any(select(select(vec2<bool>(var_2.d.b.x, false), vec2<bool>(true, var_3), !vec2<bool>(var_1.c, true)), !var_1.a.d, (arg_2.a.a.a << (0u % 32u)) != ~u_input.a.x)));
    return _wgslsmith_mult_u32(~_wgslsmith_sub_u32(49412u, _wgslsmith_dot_vec3_u32(~vec3<u32>(19106u, 804u, 0u), vec3<u32>(1u, 1u, 1u))), 0u);
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = u_input.a.yy;
    var var_1 = select(_wgslsmith_f_op_f32(trunc(1f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -580f) * 930f), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), true), true), vec2<bool>(any(vec4<bool>(false, false, false, false)), true))), false);
    var var_2 = Struct_4(Struct_2(Struct_1(2147483647i, vec4<bool>(true, true, true, true), _wgslsmith_div_f32(_wgslsmith_div_f32(-680f, 139f), _wgslsmith_div_f32(-1292f, -307f)), vec2<bool>(true, true)), abs(var_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -555f), 943f, -41070i != var_0.x)) > 1543f, Struct_1(u_input.a.x, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-952f + 376f)), vec2<bool>(true, true))));
    var_0 = u_input.a.yz;
    var var_3 = var_2.a.d;
    return _wgslsmith_mult_u32(~1u, arg_0) >> (58822u % 32u);
}

fn func_1(arg_0: vec3<f32>) -> bool {
    var var_0 = vec2<bool>(false, 1u != func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.x, arg_0.x, 1835f))), -1000f, Struct_4(Struct_2(Struct_1(u_input.a.x, vec4<bool>(false, false, true, true), arg_0.x, vec2<bool>(true, true)), u_input.a.x, true, Struct_1(-2147483647i, vec4<bool>(true, false, true, true), 730f, vec2<bool>(true, true))))));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 30433u), vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(56819u, 60528u))) ^ vec2<u32>(1u, 1u)), 1u, _wgslsmith_clamp_u32(~4294967295u, ~(1u << (1u % 32u)), 1u), select(59743u, _wgslsmith_div_u32(func_3(1u), _wgslsmith_mod_u32(countOneBits(54685u), 1u)), false));
    let var_2 = u_input.a.x;
    var_0 = vec2<bool>(var_0.x, var_0.x);
    let var_3 = ~(~min(~var_1.x, abs(~30998u)));
    return !(arg_0.x >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, 1455f))), _wgslsmith_f_op_f32(exp2(arg_0.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4) -> Struct_1 {
    global0 = array<vec3<bool>, 20>();
    global0 = array<vec3<bool>, 20>();
    global0 = array<vec3<bool>, 20>();
    global0 = array<vec3<bool>, 20>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(i32(-1i) * -u_input.a.x, !vec4<bool>(any(vec2<bool>(false, true)), true, true, func_1(vec3<f32>(-227f, -1466f, -343f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -129f) - _wgslsmith_f_op_f32(960f - -261f)), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), true)), Struct_4(Struct_2(Struct_1(-31515i, select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), true), -1206f, vec2<bool>(true, true)), min(u_input.a.x >> (25184u % 32u), u_input.a.x), all(select(vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(1u, 20u)], false)), Struct_1(u_input.a.x, vec4<bool>(true, true, true, false), _wgslsmith_f_op_f32(abs(427f)), vec2<bool>(true, true)))), Struct_4(Struct_2(Struct_1(-1i, vec4<bool>(true, true, true, true), -1380f, vec2<bool>(false, false)), -2995i, true, Struct_1(u_input.a.x | u_input.a.x, select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true), -1000f, select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))))));
    global0 = array<vec3<bool>, 20>();
    var var_1 = Struct_4(Struct_2(func_4(Struct_1(~54243i, vec4<bool>(false, true, var_0.d.x, var_0.d.x), var_0.c, select(var_0.d, vec2<bool>(true, false), false)), Struct_4(Struct_2(Struct_1(-1281i, var_0.b, 2490f, var_0.b.wz), -1i, var_0.d.x, Struct_1(4034i, vec4<bool>(var_0.b.x, var_0.d.x, var_0.b.x, var_0.b.x), -1549f, vec2<bool>(var_0.b.x, var_0.b.x)))), Struct_4(Struct_2(Struct_1(u_input.a.x, vec4<bool>(var_0.d.x, var_0.b.x, false, false), var_0.c, vec2<bool>(true, true)), var_0.a, false, Struct_1(49090i, var_0.b, -1105f, vec2<bool>(false, true))))), -2147483647i, var_0.b.x, Struct_1(-4767i, func_4(Struct_1(35168i, var_0.b, -1064f, var_0.d), Struct_4(Struct_2(Struct_1(0i, vec4<bool>(false, false, true, true), -2187f, var_0.d), u_input.a.x, var_0.b.x, Struct_1(19909i, vec4<bool>(false, true, true, var_0.b.x), var_0.c, var_0.b.zx))), Struct_4(Struct_2(Struct_1(u_input.a.x, vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x), var_0.c, var_0.d), -6142i, true, Struct_1(-47636i, var_0.b, 1000f, var_0.b.yy)))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), var_0.b.yy)));
    var_1 = Struct_4(var_1.a);
    var var_2 = Struct_4(Struct_2(var_1.a.a, firstLeadingBit(-(var_1.a.d.a & var_0.a)), var_1.a.d.b.x, func_4(func_4(Struct_1(41257i, var_0.b, 159f, vec2<bool>(var_1.a.c, true)), Struct_4(var_1.a), Struct_4(Struct_2(var_1.a.d, -4203i, var_0.d.x, Struct_1(24745i, vec4<bool>(var_0.d.x, var_1.a.d.b.x, false, var_1.a.d.d.x), 489f, var_1.a.d.d)))), Struct_4(var_1.a), Struct_4(var_1.a))));
    var var_3 = Struct_4(Struct_2(var_2.a.a, 0i, var_0.d.x, func_4(func_4(Struct_1(-24641i, var_1.a.d.b, var_0.c, var_0.d), Struct_4(var_1.a), Struct_4(Struct_2(Struct_1(var_1.a.a.a, vec4<bool>(var_0.d.x, false, var_1.a.a.d.x, false), 1715f, var_1.a.d.b.zx), 18120i, var_1.a.a.d.x, Struct_1(2147483647i, var_1.a.a.b, var_1.a.d.c, vec2<bool>(var_2.a.a.b.x, true))))), Struct_4(var_2.a), Struct_4(var_1.a))));
    var var_4 = firstTrailingBit(-_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.a, -vec3<i32>(var_3.a.a.a, var_1.a.a.a, -2147483647i)), 30633i));
    let x = u_input.a;
    s_output = StorageBuffer(abs(2147483647i), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(15180u, 0u, 44259u), vec3<u32>(1u, 4294967295u, 0u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c)) - var_3.a.d.c)))), ~_wgslsmith_clamp_i32(max(var_3.a.b, 0i), (var_0.a ^ 28232i) ^ var_0.a, _wgslsmith_mult_i32(~39577i, -var_3.a.b)));
}

