struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    return firstLeadingBit(~(_wgslsmith_dot_vec3_u32(arg_0.b, vec3<u32>(arg_0.a.x, u_input.a.x, 1u) ^ vec3<u32>(arg_0.a.x, 0u, 0u)) & _wgslsmith_mod_u32(4032u, arg_0.a.x & arg_0.b.x)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: f32, arg_3: vec3<i32>) -> vec4<u32> {
    var var_0 = Struct_1(max(min(_wgslsmith_mod_vec3_u32(~arg_1.a.b, vec3<u32>(u_input.a.x, 14378u, u_input.d)), vec3<u32>(0u, func_3(arg_1.a, vec2<i32>(u_input.c.x, -9869i)), ~81772u)), vec3<u32>(u_input.a.x, _wgslsmith_div_u32(30791u ^ arg_1.a.a.x, arg_1.a.b.x), ~(~1u))), u_input.a, arg_1.a.c, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.c.x * arg_2), arg_1.a.d.x, 378f), arg_1.a.d)), !arg_1.a.e);
    var var_1 = Struct_3(arg_1.a);
    let var_2 = Struct_5(u_input.d, func_3(arg_1.a, _wgslsmith_add_vec2_i32(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_3.x, -42289i), u_input.b)), u_input.c.wy)), u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1448f, _wgslsmith_f_op_f32(select(var_1.a.d.x, arg_1.a.d.x, false)), var_0.c.x), _wgslsmith_f_op_vec3_f32(var_1.a.c.zzz + _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.d.x, var_1.a.c.x, 966f), vec3<f32>(324f, -323f, -1451f))), !all(var_1.a.e.yx)))), arg_1.a.e.x);
    let var_3 = ~(-28434i);
    let var_4 = Struct_5((u_input.a.x | (~4294967295u ^ _wgslsmith_mod_u32(1u, var_2.b))) & 25256u, ~func_3(Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(30934u, 1u, 4294967295u), vec3<u32>(var_1.a.a.x, var_1.a.b.x, 1u)), ~u_input.a, var_1.a.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_1.a.d.x, 232f)), !vec4<bool>(arg_0.x, true, var_0.e.x, arg_0.x)), arg_3.yy ^ vec2<i32>(arg_3.x, var_3)), reverseBits(arg_3.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(284f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x)), var_1.a.c.x)), arg_0.x);
    return vec4<u32>(abs(~u_input.d), abs(~27561u) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(select(var_1.a.b, arg_1.a.a, var_4.e), ~vec3<u32>(var_4.a, 64208u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a.a.x, 4294967295u, var_0.a.x), var_1.a.b)), ~u_input.a & u_input.a) % 32u), reverseBits(54421u), var_2.b);
}

fn func_1(arg_0: Struct_5) -> u32 {
    var var_0 = vec4<u32>(~u_input.d << (u_input.d % 32u), arg_0.b, _wgslsmith_div_u32(0u & _wgslsmith_mod_u32(_wgslsmith_sub_u32(6282u, arg_0.a), _wgslsmith_div_u32(0u, u_input.a.x)), max(~u_input.d, 4294967295u)), _wgslsmith_dot_vec4_u32(~func_2(vec2<bool>(true, true), Struct_3(Struct_1(u_input.a, u_input.a, vec4<f32>(1226f, -867f, arg_0.d.x, -1000f), arg_0.d, vec4<bool>(arg_0.e, true, false, false))), -357f, _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.c, arg_0.c, 1i), vec3<i32>(arg_0.c, -7907i, u_input.c.x))), ~(~firstLeadingBit(vec4<u32>(arg_0.a, arg_0.a, 4294967295u, u_input.a.x)))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, arg_0.d.x, -2088f, 487f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.d.x, -1030f, arg_0.d.x, 469f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(696f, arg_0.d.x, -853f, arg_0.d.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -917f), arg_0.d.x, -331f)), ~((_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.c.x, 2147483647i, u_input.c.x), vec4<i32>(-24680i, 28345i, arg_0.c, arg_0.c), vec4<i32>(u_input.b.x, 13705i, -1i, -10922i)) ^ u_input.c) | vec4<i32>(u_input.b.x ^ 69472i, arg_0.c, -1i, -1i << (u_input.d % 32u))));
    var var_2 = _wgslsmith_mod_vec4_u32(func_2(vec2<bool>(true, true), Struct_3(Struct_1(u_input.a, vec3<u32>(u_input.a.x, u_input.d, var_0.x), var_1.a, var_1.b, vec4<bool>(false, true, false, true))), _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(max(arg_0.d.x, 1387f))), reverseBits(-vec3<i32>(var_1.c.x, 23735i, -24993i))) << (abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 99238u, var_0.x, var_0.x), vec4<u32>(0u, 4294967295u, 1u, 1u) << (vec4<u32>(arg_0.a, arg_0.b, arg_0.a, 0u) % vec4<u32>(32u)))) % vec4<u32>(32u)), vec4<u32>(u_input.d | min(20982u, 1u), firstTrailingBit(~40101u), var_0.x | firstTrailingBit(~4294967295u), ~(~func_3(Struct_1(var_0.zyz, u_input.a, vec4<f32>(1306f, arg_0.d.x, -103f, -1801f), var_1.b, vec4<bool>(false, true, arg_0.e, arg_0.e)), vec2<i32>(15717i, -1i)))));
    let var_3 = false;
    var var_4 = vec4<u32>(_wgslsmith_mod_u32(~(~(~arg_0.a)), 1u), u_input.d ^ abs(abs(27312u)), 59275u, countOneBits(reverseBits(func_3(Struct_1(vec3<u32>(965u, 34128u, 1u), vec3<u32>(var_0.x, 27189u, var_2.x), vec4<f32>(var_1.a.x, arg_0.d.x, var_1.b.x, 1035f), var_1.a.wxx, vec4<bool>(true, arg_0.e, arg_0.e, arg_0.e)), ~var_1.c.zw))));
    return ~29585u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = true;
    var_0 = select(_wgslsmith_mod_vec3_u32(u_input.a | ~u_input.a, u_input.a), vec3<u32>(~(~(~4294967295u)), _wgslsmith_mod_u32(min(u_input.d, 26609u), var_0.x), _wgslsmith_add_u32(~select(0u, u_input.a.x, true), func_1(Struct_5(var_0.x, 4294967295u, u_input.b.x, vec3<f32>(1608f, -942f, -266f), false)))), !(any(!vec4<bool>(var_1, var_1, var_1, var_1)) || var_1));
    var_0 = u_input.a;
    let var_2 = !any(vec4<bool>(true, true || var_1, false, all(vec4<bool>(var_1, true, true, true)))) || var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(u_input.b.x << (func_1(Struct_5(u_input.d, 406u, u_input.b.x, vec3<f32>(749f, -1581f, -789f), var_1)) % 32u), u_input.b.x), u_input.d, 858f);
}

