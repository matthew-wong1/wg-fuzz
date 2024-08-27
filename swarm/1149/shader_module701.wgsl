struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12>;

var<private> global1: f32 = 390f;

var<private> global2: array<f32, 10>;

var<private> global3: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(0i, vec4<bool>(true, false, false, false), vec2<u32>(22852u, 58498u)), Struct_1(-4989i, vec4<bool>(true, true, true, false), vec2<u32>(25469u, 0u)), Struct_1(0i, vec4<bool>(false, true, false, false), vec2<u32>(24139u, 48016u)), Struct_1(-1i, vec4<bool>(false, true, false, true), vec2<u32>(1u, 0u)), Struct_1(-27246i, vec4<bool>(true, false, false, false), vec2<u32>(0u, 4294967295u)), Struct_1(17212i, vec4<bool>(true, false, false, true), vec2<u32>(55u, 7356u)), Struct_1(i32(-2147483648), vec4<bool>(true, false, false, false), vec2<u32>(42006u, 1u)), Struct_1(8073i, vec4<bool>(false, false, false, true), vec2<u32>(0u, 0u)), Struct_1(-1667i, vec4<bool>(false, false, true, true), vec2<u32>(0u, 9516u)), Struct_1(0i, vec4<bool>(false, true, false, true), vec2<u32>(1u, 1u)), Struct_1(4207i, vec4<bool>(false, true, false, true), vec2<u32>(0u, 1u)), Struct_1(2147483647i, vec4<bool>(false, true, false, true), vec2<u32>(7636u, 4294967295u)), Struct_1(-11525i, vec4<bool>(false, false, true, true), vec2<u32>(1u, 53853u)), Struct_1(609i, vec4<bool>(false, true, false, false), vec2<u32>(13925u, 0u)), Struct_1(-1i, vec4<bool>(false, true, true, true), vec2<u32>(1u, 0u)), Struct_1(-3190i, vec4<bool>(false, false, false, true), vec2<u32>(35271u, 0u)), Struct_1(2147483647i, vec4<bool>(false, true, false, false), vec2<u32>(73983u, 36365u)), Struct_1(24365i, vec4<bool>(false, true, true, false), vec2<u32>(0u, 7154u)), Struct_1(14352i, vec4<bool>(false, false, false, false), vec2<u32>(39539u, 26219u)), Struct_1(-3552i, vec4<bool>(true, false, true, true), vec2<u32>(46283u, 4294967295u)), Struct_1(0i, vec4<bool>(true, true, false, false), vec2<u32>(1u, 81893u)), Struct_1(-2715i, vec4<bool>(false, false, true, false), vec2<u32>(37748u, 0u)), Struct_1(-1i, vec4<bool>(true, false, true, true), vec2<u32>(4294967295u, 89317u)), Struct_1(-1i, vec4<bool>(true, true, true, true), vec2<u32>(1u, 36855u)), Struct_1(37062i, vec4<bool>(false, false, true, false), vec2<u32>(20972u, 4294967295u)), Struct_1(-12228i, vec4<bool>(true, true, false, false), vec2<u32>(0u, 52838u)), Struct_1(-46773i, vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 20385u)), Struct_1(4830i, vec4<bool>(false, true, true, false), vec2<u32>(4294967295u, 26015u)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> vec2<u32> {
    global1 = _wgslsmith_f_op_f32(trunc(arg_0));
    let var_0 = Struct_2(vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)) | select(true, true, true), u_input.d.x >= _wgslsmith_mod_i32(2147483647i, ~u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-343f + _wgslsmith_f_op_f32(-arg_0)))), global3[_wgslsmith_index_u32(u_input.b.x, 28u)], ~vec3<u32>(0u, ~(~4294967295u), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b.x, 0u), ~u_input.c.x)), Struct_1(u_input.d.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.c.zww, _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, u_input.c.x), vec3<u32>(18195u, u_input.b.x, 1u))) ^ 11109u, 12u)], countOneBits(min(~vec2<u32>(u_input.c.x, 24129u), vec2<u32>(2825u, u_input.c.x)))));
    global0 = array<vec4<bool>, 12>();
    let var_1 = _wgslsmith_mod_vec2_i32(abs(max(-u_input.d.xy, ~(vec2<i32>(-11273i, 1i) | vec2<i32>(u_input.d.x, 29741i)))), vec2<i32>(~(-(u_input.a & 1i)), ~(-abs(-1i))));
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.c.c.x, ~max(var_0.d.x, _wgslsmith_clamp_u32(u_input.b.x, var_0.e.c.x, u_input.b.x))), u_input.b.x);
    return vec2<u32>(1u, ~_wgslsmith_mod_u32(u_input.c.x, ~(~109432u)));
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u | u_input.c.x, _wgslsmith_clamp_u32(52912u, 0u, u_input.b.x)), u_input.b.yy | func_3(-426f, vec4<f32>(-690f, 1503f, global2[_wgslsmith_index_u32(u_input.b.x, 10u)], global2[_wgslsmith_index_u32(117405u, 10u)]))), vec2<u32>(abs(u_input.c.x), _wgslsmith_div_u32(u_input.c.x, 19408u))), _wgslsmith_clamp_u32(48959u, ~min(u_input.b.x, 1u), u_input.c.x), u_input.b.x, u_input.c.x);
    return Struct_1(u_input.a, !global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.c.x << (var_0.x % 32u), 0u), 12u)], ~(~countOneBits(var_0.xz)));
}

fn func_1() -> Struct_2 {
    var var_0 = -2147483647i;
    let var_1 = func_2();
    var var_2 = u_input.d;
    let var_3 = Struct_2(vec2<bool>(false, true), _wgslsmith_f_op_f32(f32(-1f) * -385f), global3[_wgslsmith_index_u32(abs(~(~max(u_input.c.x, 40572u))), 28u)], abs(u_input.b.zxy) | u_input.b.xyx, func_2());
    var var_4 = abs(_wgslsmith_div_vec3_u32(var_3.d, min(vec3<u32>(111938u, 20200u, 31025u) >> (vec3<u32>(u_input.c.x, u_input.c.x, 0u) % vec3<u32>(32u)), ~u_input.b.zzx << (~vec3<u32>(1u, var_1.c.x, u_input.c.x) % vec3<u32>(32u)))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c.xxw, select(~vec3<u32>(u_input.c.x, u_input.b.x, u_input.b.x), u_input.b.xwz, _wgslsmith_f_op_f32(f32(-1f) * -554f) > _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(48616u, 10u)])))), 18700u, ~u_input.c.x, ~u_input.c.x);
    var var_1 = -48197i;
    let var_2 = func_1();
    let var_3 = global2[_wgslsmith_index_u32(~min(countOneBits(func_3(-1273f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(3796u, 10u)], 517f, 586f, 386f))).x), ~countOneBits(28037u)), 10u)];
    global0 = array<vec4<bool>, 12>();
    global2 = array<f32, 10>();
    var var_4 = func_1();
    let var_5 = vec4<i32>(abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-u_input.d, -vec3<i32>(0i, var_4.c.a, -60293i)), 25622i)), -32281i, abs(-2147483647i), _wgslsmith_div_i32(func_1().e.a, var_4.e.a));
    let x = u_input.a;
    s_output = StorageBuffer(64486i | u_input.a, vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_2.c.c.x, 10u)] - _wgslsmith_f_op_f32(exp2(var_2.b))), _wgslsmith_f_op_f32(sign(1000f)), 1f, _wgslsmith_f_op_f32(-409f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b * global2[_wgslsmith_index_u32(var_0.x, 10u)]) - -219f))), 2147483647i, 5201u, var_2.e.a);
}

