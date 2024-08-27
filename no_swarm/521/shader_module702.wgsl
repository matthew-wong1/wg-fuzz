struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(4294967295u, vec2<bool>(false, true), vec2<f32>(-495f, -1074f), 0u), vec4<bool>(true, false, false, false), true, Struct_1(0u, vec2<bool>(true, false), vec2<f32>(770f, 297f), 26804u), Struct_1(48016u, vec2<bool>(true, true), vec2<f32>(380f, -573f), 98982u));

var<private> global1: array<u32, 3> = array<u32, 3>(0u, 38716u, 4294967295u);

var<private> global2: f32 = -280f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = !global0.a.b.x;
    var var_1 = vec3<i32>(_wgslsmith_mod_i32(u_input.c, -u_input.b.x), -firstLeadingBit(i32(-1i) * -2147483647i), u_input.b.x);
    return vec2<bool>(select(arg_2.b.x, var_0, arg_2.b.x), arg_1.a.a >= 4294967295u);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    global0 = Struct_3(arg_2.a, select(vec4<bool>(true, any(vec2<bool>(arg_0.a.b.x, true)), !global0.c, global0.c), !global0.b, true), false, arg_2.a, global0.e);
    global1 = array<u32, 3>();
    global1 = array<u32, 3>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.c.x, _wgslsmith_f_op_f32(-430f - -1000f)))));
    global1 = array<u32, 3>();
    return vec2<bool>(!(-u_input.c != -1i), !arg_0.a.b.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> Struct_2 {
    global0 = Struct_3(Struct_1(63749u, select(select(global0.e.b, func_2(arg_1, Struct_2(Struct_1(22750u, vec2<bool>(arg_1, false), vec2<f32>(1227f, arg_0.x), 4294967295u)), global0.a), func_3(Struct_2(Struct_1(0u, vec2<bool>(true, arg_1), vec2<f32>(global0.e.c.x, arg_0.x), global0.e.d)), 10733i, Struct_2(Struct_1(0u, vec2<bool>(true, true), vec2<f32>(-541f, global0.d.c.x), global1[_wgslsmith_index_u32(7597u, 3u)])), Struct_1(24824u, vec2<bool>(false, global0.d.b.x), global0.a.c, u_input.a.x))), global0.a.b, select(all(global0.b.xwx), true, arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)), u_input.a.x), select(vec4<bool>(true, false, true, arg_1), vec4<bool>(true | (arg_1 | false), global0.c, func_2(all(vec2<bool>(arg_1, global0.c)), Struct_2(Struct_1(global0.e.d, global0.e.b, arg_0, u_input.a.x)), global0.d).x, arg_1), true || arg_1), func_3(Struct_2(Struct_1(~global1[_wgslsmith_index_u32(15262u, 3u)], vec2<bool>(arg_1, arg_1), vec2<f32>(global0.e.c.x, -381f), global1[_wgslsmith_index_u32(1u, 3u)] << (4294967295u % 32u))), u_input.b.x, Struct_2(global0.a), Struct_1(_wgslsmith_mult_u32(global0.d.a, 1u), global0.a.b, vec2<f32>(_wgslsmith_f_op_f32(floor(897f)), -588f), abs(19922u))).x, Struct_1(u_input.a.x, global0.a.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(3357f - arg_0.x), -839f)), ~(u_input.a.x ^ ~4294967295u)), Struct_1(~(~global1[_wgslsmith_index_u32(1u, 3u)] << (_wgslsmith_mod_u32(u_input.a.x, 1u) % 32u)), global0.e.b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.c.x, global0.d.c.x)) * global0.d.c))), _wgslsmith_sub_u32(firstLeadingBit(42999u), select(global0.a.a >> (global1[_wgslsmith_index_u32(0u, 3u)] % 32u), ~44217u, !arg_1))));
    var var_0 = vec4<f32>(844f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1003f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.c.x * -293f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-159f + _wgslsmith_f_op_f32(-global0.d.c.x)))), 956f, 643f);
    var var_1 = Struct_3(global0.d, vec4<bool>(global0.b.x, false, arg_1, true), arg_1 || any(global0.b.zzx), global0.e, global0.e);
    let var_2 = ~vec4<u32>(~2995u, ~global0.d.d, countOneBits(~0u ^ ~u_input.a.x), 1u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), var_1.e.c.x)));
    return Struct_2(global0.d);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    global2 = arg_0.b.a.c.x;
    var var_0 = arg_0.c.a;
    global0 = Struct_3(arg_0.c.e, global0.b, arg_2.b.x, Struct_1(_wgslsmith_add_u32(arg_0.b.a.d, _wgslsmith_sub_u32(~arg_0.b.a.a, _wgslsmith_mod_u32(global0.d.d, 4294967295u))), arg_1.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global0.a.c * arg_0.b.a.c)))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 19012u, arg_0.b.a.d), vec3<u32>(global0.e.d, 0u, 27311u)) | ~abs(var_0.a)), arg_0.a.a);
    var var_1 = arg_0.a;
    var_1 = Struct_3(Struct_1(4294967295u, vec2<bool>((false & arg_0.b.a.b.x) && true, global0.b.x), _wgslsmith_f_op_vec2_f32(min(var_1.e.c, arg_2.c)), var_1.a.a), !select(vec4<bool>(true, true, true, true), !vec4<bool>(var_1.c, true, var_1.b.x, true), select(vec4<bool>(arg_2.b.x, false, arg_2.b.x, false), !var_1.b, !var_1.b)), true, func_1(arg_0.a.a.c, any(vec2<bool>(false, true)) | true).a, func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.c.x)), -514f), arg_0.b.a.b.x).a);
    return func_1(vec2<f32>(-1809f, _wgslsmith_f_op_f32(step(2371f, var_0.c.x))), func_3(arg_0.b, -2147483647i, func_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.d.c.x, var_0.c.x), var_0.c), func_1(func_1(vec2<f32>(1000f, -1618f), var_0.b.x).a.c, all(vec4<bool>(false, false, false, false))).a.b.x), func_1(var_0.c, !(var_1.a.c.x < 520f)).a).x).a;
}

fn func_5(arg_0: Struct_3) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0.d.c.x, arg_0.d.c.x)), vec3<f32>(1756f, 709f, arg_0.a.c.x))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.e.c.x, 975f, -1172f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(357f, arg_0.e.c.x, 1159f) - vec3<f32>(global0.d.c.x, arg_0.d.c.x, global0.d.c.x)), arg_0.b.zwy))))));
    let var_1 = _wgslsmith_mult_i32(~u_input.c, abs(2147483647i) << (_wgslsmith_mod_u32(~(~global0.a.d), _wgslsmith_div_u32(global0.e.a, 4082u)) % 32u));
    let var_2 = Struct_3(global0.d, !select(arg_0.b, vec4<bool>(true, global0.b.x, arg_0.b.x, func_3(Struct_2(arg_0.d), var_1, Struct_2(arg_0.a), global0.a).x), !(!vec4<bool>(true, true, false, arg_0.b.x))), arg_0.d.b.x && func_3(Struct_2(func_1(vec2<f32>(221f, global0.e.c.x), global0.e.b.x).a), var_1, Struct_2(Struct_1(0u, vec2<bool>(true, arg_0.d.b.x), vec2<f32>(-1726f, 233f), 21222u)), arg_0.a).x, arg_0.a, arg_0.e);
    global2 = 189f;
    let var_3 = _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.yy)) + _wgslsmith_f_op_vec2_f32(-var_2.a.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.e.c.x)), global0.e.c.x) > -1000f).a.c.x + _wgslsmith_f_op_f32(-global0.e.c.x));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 335f, global0.a.c.x)) - _wgslsmith_f_op_vec3_f32(var_0 + var_0)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.c.x, -480f, global0.d.c.x)))))) + vec3<f32>(-2441f, 1014f, _wgslsmith_f_op_f32(step(-1292f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-182f + 2383f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.e.c.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(643f + 972f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-349f + -857f) * _wgslsmith_f_op_f32(-global0.d.c.x))));
    let var_1 = abs(_wgslsmith_div_i32(u_input.b.x, _wgslsmith_mult_i32(43443i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x)) << (1u % 32u)));
    global2 = 1000f;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.d.c.x, -811f, global0.a.c.x), vec3<f32>(756f, -421f, global0.d.c.x)) * vec3<f32>(-1240f, 1339f, 257f))))));
    global1 = array<u32, 3>();
    var_2 = _wgslsmith_f_op_vec3_f32(func_5(Struct_3(func_4(Struct_4(Struct_3(Struct_1(15992u, global0.a.b, global0.d.c, 4294967295u), vec4<bool>(global0.e.b.x, false, false, false), global0.a.b.x, Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], vec2<bool>(global0.c, global0.d.b.x), var_2.yy, 27117u), global0.e), func_1(vec2<f32>(-383f, var_2.x), false), Struct_3(Struct_1(u_input.a.x, vec2<bool>(true, var_0), var_2.zx, global0.d.a), global0.b, var_0, global0.e, Struct_1(0u, vec2<bool>(false, var_0), vec2<f32>(var_2.x, -1304f), u_input.a.x)), -32347i), vec3<bool>(global0.c, false, global0.e.a <= 21635u), global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1785f, 1008f, var_2.x), vec3<f32>(-733f, -2103f, var_2.x))))), global0.b, false, global0.e, Struct_1(~(4294967295u | u_input.a.x), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_2.xy, global0.d.c)) * var_2.zy), _wgslsmith_mult_u32(~4294967295u, global0.a.a >> (u_input.a.x % 32u))))));
    global1 = array<u32, 3>();
    var var_3 = global0.e.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec3<f32>(-2301f, 188f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + var_2.x))), var_2.x)), i32(-1i) * -2147483647i);
}

