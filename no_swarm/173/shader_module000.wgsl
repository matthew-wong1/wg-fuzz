struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_5 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(true, vec3<bool>(false, false, false), vec2<u32>(1u, 12859u), -1294f, false), Struct_1(true, vec3<bool>(true, false, true), vec2<u32>(9073u, 47026u), -298f, true), Struct_1(false, vec3<bool>(true, true, true), vec2<u32>(18420u, 0u), 1067f, true), Struct_1(true, vec3<bool>(false, false, true), vec2<u32>(1u, 7401u), -1232f, true), Struct_1(true, vec3<bool>(false, false, false), vec2<u32>(4294967295u, 1u), -900f, true), Struct_1(true, vec3<bool>(true, true, false), vec2<u32>(8456u, 0u), -123f, true), Struct_1(true, vec3<bool>(true, true, false), vec2<u32>(1u, 41673u), -995f, true), Struct_1(true, vec3<bool>(false, false, false), vec2<u32>(42292u, 75962u), -711f, false), Struct_1(false, vec3<bool>(false, false, true), vec2<u32>(14027u, 0u), -2051f, true), Struct_1(false, vec3<bool>(false, true, true), vec2<u32>(1u, 78980u), -709f, false), Struct_1(false, vec3<bool>(true, false, false), vec2<u32>(5881u, 69638u), 145f, true), Struct_1(true, vec3<bool>(false, false, true), vec2<u32>(1u, 24359u), 1451f, true), Struct_1(false, vec3<bool>(false, false, true), vec2<u32>(4294967295u, 1u), -103f, false));

var<private> global1: Struct_2;

var<private> global2: vec3<u32> = vec3<u32>(1u, 66256u, 0u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: Struct_5, arg_3: vec2<f32>) -> vec3<bool> {
    var var_0 = !vec3<bool>(arg_2.e.x, true, arg_1.e.x);
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    var var_1 = 35647u ^ u_input.c.x;
    let var_2 = ~arg_2.b.x | -30728i;
    return select(select(select(vec3<bool>(-419f == arg_0.x, global1.c.a && arg_1.e.x, arg_1.c.a), !(!vec3<bool>(global1.c.e, arg_1.c.b.x, false)), !vec3<bool>(var_0.x, false, false)), arg_1.c.b, var_0.x != true), select(arg_1.c.b, select(vec3<bool>(false, any(vec4<bool>(var_0.x, arg_1.e.x, true, false)), true), !(!vec3<bool>(var_0.x, false, global1.a)), select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, arg_1.e.x, arg_1.c.a), any(vec3<bool>(arg_1.e.x, true, var_0.x)))), arg_1.c.e), arg_2.e.x);
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: bool) -> Struct_2 {
    global1 = Struct_2(true, Struct_1(false, select(!vec3<bool>(global1.b.b.x, global1.a, true), global1.c.b, select(func_3(vec4<f32>(563f, -778f, global1.c.d, global1.c.d), Struct_5(1983f, u_input.b, global0[_wgslsmith_index_u32(1u, 13u)], global1.c.c.x, vec4<bool>(true, true, arg_2, false)), Struct_5(global1.c.d, vec4<i32>(0i, -1i, u_input.b.x, arg_0), global1.b, 13029u, vec4<bool>(global1.c.a, global1.c.e, global1.c.e, global1.b.b.x)), vec2<f32>(global1.c.d, 291f)), func_3(vec4<f32>(global1.c.d, -982f, global1.b.d, global1.b.d), Struct_5(-1444f, u_input.b, Struct_1(true, global1.c.b, vec2<u32>(33846u, 12567u), global1.c.d, true), global2.x, vec4<bool>(false, arg_2, global1.a, arg_2)), Struct_5(global1.c.d, vec4<i32>(-46017i, 41964i, arg_0, u_input.d), Struct_1(arg_2, global1.c.b, vec2<u32>(u_input.c.x, 63469u), global1.c.d, false), 37744u, vec4<bool>(global1.a, arg_2, true, global1.b.b.x)), vec2<f32>(global1.c.d, -1193f)), !vec3<bool>(false, true, arg_2))), vec2<u32>(u_input.e.x, 1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(993f, _wgslsmith_f_op_f32(round(-665f)))), global1.b.d), true), global1.c, _wgslsmith_mult_u32(~(~arg_1.x), 4294967295u >> (1u % 32u)));
    global2 = reverseBits(u_input.e);
    var var_0 = firstLeadingBit(vec4<u32>(79166u, 4294967295u, min(4294967295u, ~32927u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 1u, 21841u, arg_1.x), vec4<u32>(16053u, 6971u, 0u, u_input.e.x)))) << (~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(4294967295u, 71950u, 11957u, 1u)), ~vec4<u32>(arg_1.x, 4294967295u, u_input.c.x, 8705u)) % vec4<u32>(32u));
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, ((u_input.b.x << (arg_1.x % 32u)) >> (global2.x % 32u)) >> (~_wgslsmith_dot_vec3_u32(u_input.e, u_input.e) % 32u)), vec2<i32>(-firstLeadingBit(u_input.d), countOneBits(2147483647i)));
    var var_2 = all(func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.b.d, -1037f, 417f, 811f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.b.d, global1.b.d, global1.b.d, 943f))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.c.d, global1.b.d, global1.b.d, global1.b.d), vec4<f32>(global1.c.d, 702f, 229f, -1138f)))), all(vec2<bool>(true, global1.a)))), Struct_5(global1.b.d, _wgslsmith_mod_vec4_i32(u_input.b | vec4<i32>(-70532i, arg_0, var_1.x, u_input.b.x), countOneBits(u_input.b)), global1.b, ~global2.x, !select(vec4<bool>(true, global1.a, arg_2, global1.c.a), vec4<bool>(false, true, global1.b.e, true), vec4<bool>(global1.c.a, false, true, arg_2))), Struct_5(global1.c.d, vec4<i32>(~arg_0, _wgslsmith_mod_i32(var_1.x, var_1.x), ~u_input.a.x, arg_0), Struct_1(global1.c.a, vec3<bool>(false, true, arg_2), global1.c.c, _wgslsmith_f_op_f32(-global1.c.d), arg_2), 0u | ~u_input.c.x, select(!vec4<bool>(false, true, global1.a, true), vec4<bool>(global1.c.b.x, global1.b.a, global1.b.e, false), select(vec4<bool>(arg_2, arg_2, true, arg_2), vec4<bool>(global1.b.a, true, false, global1.b.a), vec4<bool>(arg_2, global1.b.e, global1.a, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2228f, _wgslsmith_f_op_f32(f32(-1f) * -172f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(472f, global1.b.d) - vec2<f32>(1455f, -268f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1464f, global1.b.d), vec2<f32>(global1.c.d, global1.b.d)))))).xy);
    return Struct_2(true, Struct_1(true, global1.c.b, ~vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.yw, vec2<u32>(u_input.c.x, u_input.c.x)), ~63534u), 455f, !(!any(vec3<bool>(arg_2, true, true)))), global1.b, global1.b.c.x);
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2) -> bool {
    var var_0 = arg_0;
    var var_1 = ~(-41375i);
    global1 = Struct_2(true, global1.b, Struct_1(!(u_input.b.x == u_input.d), func_2(~max(u_input.d, -1i), vec2<u32>(50262u, 0u) & max(arg_2.b.c, global2.yz), arg_2.c.e).b.b, _wgslsmith_add_vec2_u32(~countOneBits(u_input.c), global1.c.c), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.c.d))), all(global1.b.b)), ~0u);
    var var_2 = u_input.a.x;
    var_2 = _wgslsmith_sub_i32(-1i, u_input.a.x);
    return arg_2.b.e;
}

fn func_1() -> StorageBuffer {
    var var_0 = global2.x >> (global1.b.c.x % 32u);
    global0 = array<Struct_1, 13>();
    var var_1 = ~1i;
    let var_2 = all(vec3<bool>(!(global1.b.d < -882f), func_4(_wgslsmith_f_op_f32(sign(global1.b.d)), ~global1.c.c, func_2(38140i, global2.xx, false)), true)) | (-_wgslsmith_clamp_i32(0i, -u_input.d, 2895i) >= 2147483647i);
    var_0 = ((_wgslsmith_div_u32(~43854u, _wgslsmith_div_u32(u_input.e.x, global1.d)) ^ u_input.e.x) >> (52029u % 32u)) >> (select(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(global1.b.c.x, global1.c.c.x), 0u, 1u), u_input.e), max(global2.x, 1u), false) % 32u);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.d, global1.b.d))), func_2(-1i ^ u_input.d, vec2<u32>(4294967295u, global2.x) >> (global2.xy % vec2<u32>(32u)), all(vec4<bool>(var_2, global1.c.a, true, false))).b.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(264f, global1.b.d, false)), _wgslsmith_f_op_f32(-global1.c.d)), _wgslsmith_f_op_f32(-1166f + _wgslsmith_f_op_f32(f32(-1f) * -679f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

