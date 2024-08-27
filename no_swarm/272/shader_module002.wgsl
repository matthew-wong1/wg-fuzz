struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = ~vec4<u32>(max(~(~15983u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 1u, u_input.c.x), vec3<u32>(84019u, 11069u, 4294967295u), vec3<bool>(true, arg_2.e.x, false)), ~u_input.c)), _wgslsmith_sub_u32(~(~1u), arg_2.c), _wgslsmith_dot_vec3_u32(~u_input.c, countOneBits(u_input.c)), arg_1.c);
    let var_1 = 1i;
    global1 = arg_2.e;
    let var_2 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-arg_2.d));
    var var_3 = vec2<f32>(452f, 287f);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2), -293f) + vec2<f32>(var_2, -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 595f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, -750f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-487f, arg_1.d)))), arg_0)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: vec3<u32>) -> vec3<bool> {
    let var_0 = ~(~(~vec4<i32>(~u_input.a.x, ~(-6827i), reverseBits(u_input.a.x), _wgslsmith_sub_i32(40187i, 0i))));
    global1 = select(select(!(!vec3<bool>(arg_0.x, true, arg_0.x)), select(!select(arg_0.ywz, vec3<bool>(global1.x, arg_0.x, arg_0.x), arg_0.zyy), vec3<bool>(arg_0.x | arg_0.x, global1.x, arg_0.x | global1.x), vec3<bool>(true, all(vec4<bool>(global1.x, global1.x, arg_0.x, arg_0.x)), !arg_0.x)), arg_0.x), vec3<bool>(false, arg_0.x, true), arg_0.xww);
    let var_1 = _wgslsmith_clamp_vec3_i32(-var_0.wyx, -_wgslsmith_add_vec3_i32(var_0.wyz, var_0.ywx), _wgslsmith_mult_vec3_i32(firstLeadingBit(~u_input.a) << (select(_wgslsmith_mod_vec3_u32(arg_2, vec3<u32>(arg_1.x, 0u, 36994u)), select(vec3<u32>(4294967295u, u_input.b, 1u), vec3<u32>(arg_2.x, u_input.c.x, 69291u), arg_0.wwy), arg_0.zww) % vec3<u32>(32u)), select(firstTrailingBit(u_input.a), var_0.zzz, false && (var_0.x >= -7529i))));
    var var_2 = vec4<i32>(-var_1.x, -18785i, abs(var_1.x), 1i);
    global1 = arg_0.zzw;
    return arg_0.xyy;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 4>();
    var var_0 = arg_3.e.yy;
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: f32) -> vec3<bool> {
    var var_0 = func_4(-_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(-28877i, u_input.a.x, -6179i, u_input.a.x)), vec4<i32>(u_input.a.x, 30804i, -2147483647i, u_input.a.x)), ~(~vec4<i32>(u_input.a.x, -9928i, u_input.a.x, u_input.a.x))), Struct_1(global1.x, ~u_input.a.x <= u_input.a.x, u_input.b, 1000f, vec3<bool>(all(vec3<bool>(true, true, true)), global1.x, arg_0 & (arg_0 == arg_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, arg_1), _wgslsmith_f_op_vec2_f32(func_2(arg_0, global0[_wgslsmith_index_u32(u_input.d, 4u)], Struct_1(global1.x, true, u_input.c.x, arg_1, vec3<bool>(global1.x, true, arg_0)))), global1.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1315f, 1191f) + vec2<f32>(-734f, -1301f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(335f, 472f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -2847f)))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1134f, -910f))))), Struct_1(true, true, ~1u, 1905f, func_3(select(vec4<bool>(arg_0, false, true, true), select(vec4<bool>(arg_0, arg_0, global1.x, global1.x), vec4<bool>(true, false, true, false), true), u_input.c.x <= u_input.c.x), reverseBits(vec4<u32>(u_input.c.x, u_input.c.x, u_input.d, 34728u)), vec3<u32>(34481u, u_input.d >> (u_input.d % 32u), u_input.d))));
    global0 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2211f - var_0.d) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(var_0.d - 654f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.d)))))));
    global0 = array<Struct_1, 4>();
    var var_2 = ~firstTrailingBit(max(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.c.x), u_input.c.yy), u_input.c.yy) ^ select(vec2<u32>(u_input.c.x, 72029u), u_input.c.zz >> (vec2<u32>(0u, u_input.c.x) % vec2<u32>(32u)), !global1.zy));
    return func_4(-reverseBits(vec4<i32>(-1i, -2147483647i, 2147483647i, _wgslsmith_mult_i32(-1i, 8136i))), Struct_1(global1.x, func_3(select(select(vec4<bool>(global1.x, var_0.a, global1.x, false), vec4<bool>(arg_0, arg_0, var_0.a, false), vec4<bool>(false, false, arg_0, true)), !vec4<bool>(arg_0, true, arg_0, true), true), ~_wgslsmith_add_vec4_u32(vec4<u32>(96656u, 4294967295u, 53573u, var_0.c), vec4<u32>(u_input.c.x, u_input.c.x, u_input.d, 1u)), vec3<u32>(var_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, var_0.c), u_input.c), ~1u)).x, 44269u, 859f, vec3<bool>(func_4(abs(vec4<i32>(u_input.a.x, u_input.a.x, -20851i, 0i)), Struct_1(false, false, 4294967295u, arg_1, vec3<bool>(global1.x, true, var_0.e.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)), func_4(vec4<i32>(u_input.a.x, u_input.a.x, 1i, 1i), Struct_1(arg_0, arg_0, var_0.c, arg_1, var_0.e), vec2<f32>(var_0.d, 373f), Struct_1(global1.x, true, var_2.x, -1348f, vec3<bool>(true, global1.x, var_0.b)))).a, !(global1.x & global1.x), u_input.a.x <= u_input.a.x)), vec2<f32>(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_vec2_f32(func_2(true, Struct_1(arg_0, global1.x, 25422u, 1000f, vec3<bool>(var_0.a, false, var_0.a)), Struct_1(false, true, 0u, 465f, var_0.e))).x), -541f), global0[_wgslsmith_index_u32(~var_2.x, 4u)]).e;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !func_1(global1.x, -445f);
    global1 = vec3<bool>(!any(global1.zx), true, false);
    let var_0 = _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(u_input.a.x, ~(-27548i), 2147483647i)), vec3<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), 2147483647i, u_input.a.x) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(19313u, 4294967295u, 7479u), _wgslsmith_mult_vec3_u32(vec3<u32>(21711u, u_input.d, u_input.d), vec3<u32>(0u, 44202u, u_input.b))) % vec3<u32>(32u))) ^ vec3<i32>(~select(_wgslsmith_mod_i32(u_input.a.x, 58464i), u_input.a.x, global1.x), firstTrailingBit(select(1i, -13939i, global1.x) >> ((u_input.c.x >> (u_input.b % 32u)) % 32u)), u_input.a.x);
    var var_1 = abs(~vec4<u32>(firstLeadingBit(u_input.d), 27353u, 0u, 1u));
    var_1 = _wgslsmith_mult_vec4_u32(~select(vec4<u32>(max(24783u, var_1.x), _wgslsmith_div_u32(u_input.b, 0u), ~u_input.d, 1u), vec4<u32>(u_input.d, 38937u, u_input.b, u_input.d) | (vec4<u32>(38474u, u_input.d, 1u, 4294967295u) << (vec4<u32>(3577u, 5093u, u_input.b, 1u) % vec4<u32>(32u))), true), firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_1.x, 23294u, u_input.d)), var_1.zxz), 4294967295u, ~select(4294967295u, 32141u, global1.x), 1u)));
    var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(1u, reverseBits(~(~25693u)), _wgslsmith_dot_vec2_u32(u_input.c.zy, ~min(var_1.wz, var_1.zz)), 65924u), vec4<u32>(func_4(abs(vec4<i32>(1i, 2147483647i, var_0.x, u_input.a.x) ^ vec4<i32>(u_input.a.x, 1i, -1i, var_0.x)), global0[_wgslsmith_index_u32(var_1.x, 4u)], vec2<f32>(_wgslsmith_div_f32(538f, -1903f), _wgslsmith_f_op_f32(sign(-756f))), func_4(abs(vec4<i32>(u_input.a.x, u_input.a.x, -39220i, -12256i)), func_4(vec4<i32>(var_0.x, u_input.a.x, 20926i, 2147483647i), global0[_wgslsmith_index_u32(var_1.x, 4u)], vec2<f32>(1058f, 968f), global0[_wgslsmith_index_u32(1u, 4u)]), vec2<f32>(301f, -461f), func_4(vec4<i32>(var_0.x, -2147483647i, -19463i, 0i), Struct_1(global1.x, global1.x, u_input.c.x, -742f, vec3<bool>(global1.x, global1.x, false)), vec2<f32>(-315f, -1214f), global0[_wgslsmith_index_u32(var_1.x, 4u)]))).c, _wgslsmith_sub_u32(4294967295u, u_input.d), _wgslsmith_div_u32(~_wgslsmith_mult_u32(0u, 1u), _wgslsmith_sub_u32(u_input.d, ~u_input.d)), ~(~46847u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(reverseBits(-16362i), -2147483647i, _wgslsmith_div_i32(-_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), -2147483647i)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, abs(0u), 4294967295u, var_1.x), ~vec4<u32>(18395u, var_1.x, 4294967295u, 1u) << ((vec4<u32>(u_input.c.x, var_1.x, 4294967295u, u_input.c.x) | vec4<u32>(u_input.b, 98194u, 4294967295u, u_input.d)) % vec4<u32>(32u))), 68992u), -46762i, -17827i);
}

