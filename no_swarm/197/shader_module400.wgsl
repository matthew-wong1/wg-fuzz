struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global2: i32 = -34031i;

var<private> global3: Struct_2 = Struct_2(-1030f, Struct_1(vec2<bool>(false, false), vec2<i32>(-1i, 2147483647i)));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: u32) -> bool {
    let var_0 = Struct_1(vec2<bool>(!global3.b.a.x, !(!(!global1.x))), _wgslsmith_mod_vec2_i32(global3.b.b, _wgslsmith_mod_vec2_i32(-select(vec2<i32>(u_input.a, -5707i), global3.b.b, global1.yz), global3.b.b)));
    var var_1 = Struct_2(-1136f, Struct_1(!vec2<bool>(global1.x, any(global3.b.a)), var_0.b & ~(~global3.b.b)));
    global3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1470f))), Struct_1(select(!global1.xz, !select(vec2<bool>(global3.b.a.x, var_0.a.x), vec2<bool>(false, global1.x), var_0.a), !var_0.a.x != true), vec2<i32>(select(-1i >> (arg_1 % 32u), 15850i << (arg_1 % 32u), true), var_1.b.b.x)));
    var var_2 = select(_wgslsmith_div_vec4_i32(abs(vec4<i32>(9662i, u_input.a, 44281i, var_1.b.b.x) >> (vec4<u32>(4294967295u, 0u, 3266u, arg_0) % vec4<u32>(32u))), vec4<i32>(33954i, -15602i, global3.b.b.x, -1i) >> (vec4<u32>(arg_0, arg_0, 19866u, arg_1) % vec4<u32>(32u))), vec4<i32>(select(u_input.a, 8974i, true) << (arg_0 % 32u), firstLeadingBit(reverseBits(var_1.b.b.x)), 2147483647i, -global3.b.b.x), !all(select(vec4<bool>(true, var_0.a.x, false, var_0.a.x), vec4<bool>(global3.b.a.x, false, var_0.a.x, true), vec4<bool>(false, var_1.b.a.x, global3.b.a.x, false)))) & _wgslsmith_sub_vec4_i32(abs(-vec4<i32>(-44349i, var_0.b.x, 9304i, u_input.a)) >> (vec4<u32>(~84820u, arg_0, arg_0, 27328u | arg_0) % vec4<u32>(32u)), max(select(vec4<i32>(-1i, var_0.b.x, -1i, var_1.b.b.x), vec4<i32>(27659i, global3.b.b.x, u_input.a, global3.b.b.x), global1.x), vec4<i32>(global3.b.b.x, global3.b.b.x, -1i, -36013i)) << (countOneBits(~vec4<u32>(arg_0, 4294967295u, arg_1, 1u)) % vec4<u32>(32u)));
    let var_3 = Struct_2(var_1.a, Struct_1(global3.b.a, -(~(~var_1.b.b))));
    return false;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    return Struct_3(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(38182u, firstLeadingBit(0u), 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), select(vec4<bool>(false, true, all(vec2<bool>(true, true)), any(arg_2.a)), select(!(!vec4<bool>(false, global3.b.a.x, global3.b.a.x, false)), vec4<bool>(select(global3.b.a.x, arg_0.x, false), false, arg_2.a.x, all(vec2<bool>(true, global3.b.a.x))), false), vec4<bool>(false, func_3(1u, select(1u, 16107u, true)), arg_2.a.x, global3.a >= _wgslsmith_f_op_f32(f32(-1f) * -919f))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) + _wgslsmith_div_f32(global3.a, 1275f)) + global3.a), Struct_1(vec2<bool>(global3.a > global3.a, select(global3.b.a.x, arg_2.a.x, true)), ~_wgslsmith_div_vec2_i32(arg_2.b, global3.b.b))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1775f, global3.a, false)))) - _wgslsmith_f_op_f32(-global3.a)), Struct_1(global1.xy, -(vec2<i32>(-2147483647i, arg_2.b.x) | arg_2.b))));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x)))))));
    let var_1 = func_2(global1.ywx, _wgslsmith_mod_i32(global3.b.b.x, 28281i), global3.b);
    global1 = var_1.c;
    let var_2 = _wgslsmith_sub_vec2_i32(max(max(-var_1.e.b.b, vec2<i32>(~u_input.a, ~1i)), vec2<i32>(func_2(global1.wxw, -global3.b.b.x, Struct_1(vec2<bool>(global1.x, true), vec2<i32>(global3.b.b.x, u_input.a))).d.b.b.x, u_input.a)), vec2<i32>(-_wgslsmith_mod_i32(select(2147483647i, -2147483647i, global3.b.a.x), -61004i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_1.e.b.b | var_1.d.b.b, var_1.e.b.b), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, global3.b.b.x), vec2<i32>(u_input.a, 11484i)) | (global3.b.b >> (vec2<u32>(0u, var_1.b) % vec2<u32>(32u))))));
    var var_3 = vec4<u32>(arg_0, arg_0, 4294967295u, 73702u);
    return ~var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(countOneBits(vec2<u32>(1u, ~func_1(4294967295u, vec3<f32>(global3.a, global3.a, global3.a)))), vec2<u32>(abs(1u), _wgslsmith_div_u32(1u, 1u)), !func_2(global1.zxz, ~(~u_input.a), Struct_1(vec2<bool>(global1.x, global1.x), vec2<i32>(-2147483647i, 8997i))).c.zw);
    var_0 = ~(~_wgslsmith_add_vec2_u32(~max(vec2<u32>(var_0.x, var_0.x), vec2<u32>(4294967295u, var_0.x)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(var_0.x, var_0.x))));
    let var_1 = Struct_4(!global1.x, func_2(vec3<bool>(true, -u_input.a >= 1i, false), global3.b.b.x, func_2(global1.ywx, u_input.a, Struct_1(select(vec2<bool>(global1.x, false), global1.wy, global1.x), vec2<i32>(u_input.a, -2147483647i) ^ global3.b.b)).d.b).e.a, !func_2(select(func_2(vec3<bool>(global1.x, false, true), u_input.a, global3.b).c.wyy, vec3<bool>(global3.b.a.x, global1.x, true), true), func_2(!vec3<bool>(false, global1.x, false), global3.b.b.x, func_2(vec3<bool>(true, true, false), global3.b.b.x, Struct_1(vec2<bool>(global3.b.a.x, false), vec2<i32>(u_input.a, 1i))).d.b).d.b.b.x, global3.b).c);
    var var_2 = var_1;
    var var_3 = var_0.x;
    let var_4 = func_2(vec3<bool>(var_2.a, var_1.c.x, all(var_2.c.zzz)), ~(~_wgslsmith_sub_i32(~u_input.a, _wgslsmith_mult_i32(global3.b.b.x, u_input.a))), func_2(func_2(!var_1.c.zwz, _wgslsmith_add_i32(global3.b.b.x, 0i) ^ _wgslsmith_div_i32(u_input.a, global3.b.b.x), func_2(vec3<bool>(true, false, true), global3.b.b.x, Struct_1(var_2.c.xy, global3.b.b)).d.b).c.wwz, ~min(9723i, 13188i), global3.b).d.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.e.b.b.x, -1i, _wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(_wgslsmith_clamp_u32(var_0.x, var_0.x, 1u)), ~(~var_0.x)), ~vec2<u32>(4294967295u, ~var_4.b)));
}

