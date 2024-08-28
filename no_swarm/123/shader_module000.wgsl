struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_2;

var<private> global2: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-global2.c.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1694f, _wgslsmith_f_op_f32(round(arg_1.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.c.x + -1455f))))));
    var var_1 = global1.a;
    let var_2 = ~_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.c, global2.b, -2630i, 2147483647i), u_input.d), u_input.d) & firstLeadingBit(vec4<i32>(0i, -2942i, var_1.b, -1i)), _wgslsmith_add_vec4_i32(max(vec4<i32>(var_1.b, -2147483647i, global1.a.b, -13210i) | u_input.d, u_input.d), select(vec4<i32>(-1i, global0.x, var_1.b, 1i), abs(u_input.d), global1.a.d)), vec4<i32>(_wgslsmith_sub_i32(852i, arg_1.b), 1i, _wgslsmith_mod_i32(u_input.a.x, 6078i), abs(2147483647i)) >> (vec4<u32>(global1.a.a, global2.a, abs(u_input.e.x), ~arg_1.a) % vec4<u32>(32u)));
    let var_3 = Struct_1(44302u, countOneBits(-min(arg_1.b, arg_1.b)) >> (u_input.b.x % 32u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(161f, global1.a.c.x, -1000f, -2228f) + arg_1.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-910f, global1.a.c.x, global2.c.x, var_0.x), vec4<f32>(1000f, arg_1.c.x, global1.a.c.x, -1756f)))), select(true, true, any(vec4<bool>(global2.d.x, arg_1.d.x, false, false))))))), !global2.d);
    let var_4 = Struct_2(var_3, (~_wgslsmith_sub_u32(global2.a, global2.a) ^ ~(var_1.a ^ 0u)) >> (((_wgslsmith_mult_u32(u_input.b.x, global2.a) >> (9482u % 32u)) ^ ~abs(global2.a)) % 32u), true, 37967u < ~(~var_1.a), 2147483647i);
    return !arg_1.d.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = select(!(!global2.d.yz), global2.d.zy, !global2.d.zy);
    global1 = Struct_2(Struct_1(~firstLeadingBit(~global1.b), countOneBits(-max(-1i, global2.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(219f, global1.a.c.x, -694f, global2.c.x)) + global2.c), !(!(!global1.a.d))), min(~_wgslsmith_clamp_u32(~0u, u_input.b.x, u_input.e.x), global1.b), func_3(global1.a.d.zyy, global1.a), any(global2.d.yyx), -10826i);
    var var_1 = select(_wgslsmith_mult_vec4_u32(arg_0, _wgslsmith_div_vec4_u32(arg_0, ~vec4<u32>(4294967295u, 0u, 1u, u_input.e.x) << ((vec4<u32>(4294967295u, 1u, 0u, arg_0.x) ^ arg_0) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_u32(arg_0, _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(min(arg_0, arg_0), vec4<u32>(u_input.b.x, 79723u, 1u, 1u)), ~arg_0)), (true | global2.d.x) != !all(global1.a.d.xyy));
    let var_2 = ~(~(~vec4<i32>(global0.x, -2147483647i, 2147483647i, arg_2.x)));
    let var_3 = Struct_2(global1.a, _wgslsmith_clamp_u32(min(abs(_wgslsmith_add_u32(u_input.e.x, 24833u)), countOneBits(~76584u)), 5622u, ~31239u), select(func_3(global2.d.zwx, Struct_1(_wgslsmith_clamp_u32(global1.a.a, 57431u, global2.a), -u_input.d.x, _wgslsmith_f_op_vec4_f32(select(global2.c, global1.a.c, var_0.x)), global2.d)), select(select(global2.d.x, arg_0.x >= 121506u, true), true, -global0.x <= 2147483647i), true), true, (i32(-1i) * -33674i) << (firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a, var_1.x, 1u), vec3<u32>(u_input.e.x, 283u, global2.a))) % 32u));
    return var_3.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec4<f32>) -> vec2<bool> {
    global2 = func_2(_wgslsmith_mod_vec4_u32(~abs(_wgslsmith_mod_vec4_u32(u_input.e, vec4<u32>(arg_1.x, global1.a.a, 4294967295u, 30657u))), abs(u_input.e)), _wgslsmith_f_op_vec4_f32(-arg_2), _wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -2096i), vec2<i32>(-3557i, u_input.d.x) >> (vec2<u32>(global1.b, 47913u) % vec2<u32>(32u))), vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(global0.x, -2147483647i)) & vec2<i32>(global1.a.b, global1.a.b | global0.x)));
    var var_0 = global1.a;
    var_0 = Struct_1(func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, 1u, ~0u, firstLeadingBit(1u)), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.e.xzz, u_input.e.zzz), ~0u, ~4294967295u, 55096u)), _wgslsmith_f_op_vec4_f32(min(global2.c, arg_2)), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, 2147483647i), vec2<i32>(var_0.b, global0.x)), select(u_input.d.wy, u_input.d.wz, arg_0.x)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(9657i, 2147483647i, var_0.b, u_input.c), vec4<i32>(global2.b, var_0.b, -2147483647i, global1.e), var_0.d.x), ~u_input.d))).a, global2.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(-global1.a.c.x), -941f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1217f + global2.c.x) + 1053f))), !vec4<bool>(!all(arg_0), var_0.d.x, !any(global1.a.d.zy), arg_0.x));
    var var_1 = global2.d.xz;
    var_0 = Struct_1(_wgslsmith_dot_vec3_u32(min(abs(abs(u_input.e.xxz)), u_input.e.yyy), firstTrailingBit(u_input.e.wxw)), -2147483647i, _wgslsmith_f_op_vec4_f32(-arg_2), !global1.a.d);
    return global1.a.d.zz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.d.wyx;
    let var_1 = true | any(!select(func_1(global2.d.xz, vec2<u32>(global2.a, global1.b), vec4<f32>(385f, global1.a.c.x, -1211f, global1.a.c.x)), select(vec2<bool>(global2.d.x, true), vec2<bool>(false, global2.d.x), global2.d.x), vec2<bool>(global2.d.x, true)));
    let var_2 = u_input.b;
    var var_3 = func_2(~vec4<u32>(45309u, 0u, select(global1.a.a, global2.a, true), global2.a), global1.a.c, vec2<i32>(-(~abs(global0.x)), _wgslsmith_mod_i32(global1.a.b & 68929i, -15428i << (u_input.e.x % 32u)) ^ -25999i));
    var var_4 = 1u >> (1u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_3.c.xxy - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x * 1420f) + var_3.c.x), -1041f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1579f, -246f, var_3.d.x)))))), -129f, -226f, ~var_2);
}

