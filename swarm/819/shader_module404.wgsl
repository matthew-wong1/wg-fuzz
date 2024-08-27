struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1u, vec2<f32>(-1462f, 1153f), Struct_1(vec3<i32>(1i, -8165i, i32(-2147483648))), -416f, -1i);

var<private> global1: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(-793f, vec4<f32>(266f, -407f, 284f, 236f), -66853i, vec4<u32>(29509u, 41575u, 4294967295u, 3559u), vec3<u32>(20980u, 4294967295u, 0u)), Struct_3(-111f, vec4<f32>(1000f, -166f, -955f, -540f), 1i, vec4<u32>(22821u, 64084u, 18439u, 1u), vec3<u32>(11990u, 4294967295u, 70154u)), Struct_3(-499f, vec4<f32>(-256f, 703f, -420f, -810f), -38150i, vec4<u32>(5902u, 1u, 38735u, 41458u), vec3<u32>(10087u, 0u, 0u)), Struct_3(-862f, vec4<f32>(243f, -980f, -435f, 1289f), 1i, vec4<u32>(26861u, 22710u, 1u, 4294967295u), vec3<u32>(1u, 47774u, 32424u)));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: f32) -> vec2<u32> {
    global1 = array<Struct_3, 4>();
    global0 = Struct_2(u_input.b.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0.b), global0.b)), global0.c, arg_0, 1i);
    global1 = array<Struct_3, 4>();
    global1 = array<Struct_3, 4>();
    global1 = array<Struct_3, 4>();
    return abs(vec2<u32>(abs(global0.a), ~u_input.b.x));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = ~countOneBits(~vec4<i32>(arg_1.a.x, global0.e, global0.c.a.x, arg_1.a.x) << (_wgslsmith_add_vec4_u32(~vec4<u32>(global0.a, global0.a, 4294967295u, 21607u), ~vec4<u32>(arg_0.x, global0.a, 65984u, 4294967295u)) % vec4<u32>(32u)));
    var var_1 = arg_2;
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 248f, var_1.x, global0.b.x)), vec4<f32>(284f, -174f, -185f, -331f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(2376f, -1000f, -835f, global0.b.x), vec4<f32>(275f, 423f, -1366f, var_1.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.b.x, -310f, var_1.x))))));
    var_0 = ~abs(vec4<i32>(-1i) * -vec4<i32>(arg_1.a.x, global0.c.a.x, 0i, u_input.c));
    let var_3 = var_0.x;
    return arg_1;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: vec4<u32>) -> Struct_1 {
    global1 = array<Struct_3, 4>();
    let var_0 = Struct_3(-1000f, arg_0, (_wgslsmith_sub_i32(-2147483647i, arg_1.x) >> (u_input.b.x % 32u)) >> (_wgslsmith_sub_u32(u_input.b.x, u_input.b.x) % 32u), countOneBits(select(reverseBits(~arg_3), arg_3, select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, false))))), ~arg_3.zzx);
    global0 = Struct_2(var_0.e.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, arg_2.a.x) + var_0.b.yw))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.zx)))), Struct_1(min(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.c.a.x, arg_1.x, arg_1.x) ^ global0.c.a, firstTrailingBit(arg_1.wwx)), arg_1.xyx)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-240f, global0.b.x) - _wgslsmith_f_op_f32(1247f * -368f)))), var_0.b.x, false)), arg_1.x);
    var var_1 = arg_0.wzx;
    var var_2 = var_0;
    return func_3(select(~func_2(_wgslsmith_div_f32(975f, -790f)), countOneBits(arg_3.yy), select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(false, false, false))), true)), global0.c, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-656f - -662f)), 1099f, var_0.a), _wgslsmith_f_op_vec3_f32(var_0.b.zwz * vec3<f32>(_wgslsmith_div_f32(arg_2.a.x, var_0.b.x), _wgslsmith_f_op_f32(ceil(-1322f)), var_1.x))), vec3<i32>(-var_0.c, min(reverseBits(-33570i), ~(47426i | global0.e)), _wgslsmith_mult_i32(-46930i, reverseBits(arg_1.x) >> (var_0.d.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.b);
    var var_1 = func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -373f)), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.d, global0.b.x), global0.b.x), _wgslsmith_f_op_f32(round(1141f)), _wgslsmith_f_op_f32(-382f - _wgslsmith_f_op_f32(-global0.b.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.b.x, global0.d), _wgslsmith_f_op_f32(select(global0.b.x, 427f, true)), -331f, _wgslsmith_f_op_f32(-932f * global0.d)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(514f, -1046f, global0.d, global0.d) * vec4<f32>(global0.b.x, 1744f, -860f, -490f))))), countOneBits(vec4<i32>(u_input.a, _wgslsmith_div_i32(12942i, max(-2147483647i, -48422i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-967i, global0.c.a.x, 5242i, u_input.a), vec4<i32>(37312i, -25090i, global0.c.a.x, global0.c.a.x)), 80426i)), Struct_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1233f, global0.d, 464f, global0.d), vec4<f32>(global0.d, -834f, 183f, -1164f))))))), vec4<u32>((~28948u << (_wgslsmith_mult_u32(u_input.b.x, global0.a) % 32u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 71041u, 1u, var_0.x) & vec4<u32>(0u, u_input.b.x, var_0.x, 4294967295u), vec4<u32>(u_input.b.x, 43770u, var_0.x, u_input.b.x) & vec4<u32>(1u, 17445u, 1u, u_input.b.x)), _wgslsmith_mod_u32(min(u_input.b.x, ~var_0.x), 67135u), global0.a, _wgslsmith_add_u32(4294967295u, ~(~global0.a))));
    global0 = Struct_2(countOneBits(~(~(0u & u_input.b.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0.b), global0.b)) - _wgslsmith_f_op_vec2_f32(-global0.b)))), global0.c, _wgslsmith_f_op_f32(-global0.b.x), abs(u_input.a | func_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.d, 310f, -903f, -742f))), vec4<i32>(var_1.a.x, 13086i, u_input.c, -1i), Struct_4(vec4<f32>(global0.d, global0.b.x, 985f, global0.b.x)), vec4<u32>(global0.a, 22055u, 4294967295u, var_0.x) ^ vec4<u32>(4294967295u, u_input.b.x, var_0.x, u_input.b.x)).a.x));
    var_1 = global0.c;
    let var_2 = !vec3<bool>(false, true, !any(vec3<bool>(false, true, true)) & all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, 68575u), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b.x, u_input.b.x, ~1u, reverseBits(81178u)), reverseBits(vec4<u32>(0u, 40109u, global0.a, global0.a) >> (vec4<u32>(u_input.b.x, 38872u, u_input.b.x, 5660u) % vec4<u32>(32u)))), _wgslsmith_clamp_u32(firstTrailingBit(~0u), ~1u, ~(~37998u))), _wgslsmith_clamp_i32(-78615i, i32(-1i) * -2147483647i, _wgslsmith_mult_i32(-8005i ^ global0.c.a.x, 0i)), -3511i);
}

