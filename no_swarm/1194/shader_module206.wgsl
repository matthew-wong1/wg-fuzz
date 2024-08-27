struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(-279f, vec2<f32>(979f, -195f)), Struct_3(-1195f, vec2<f32>(1940f, 932f)), Struct_3(1655f, vec2<f32>(954f, 2010f)), Struct_3(378f, vec2<f32>(-1000f, -843f)), Struct_3(-930f, vec2<f32>(-844f, 956f)), Struct_3(471f, vec2<f32>(-522f, -168f)), Struct_3(-2690f, vec2<f32>(958f, 1577f)), Struct_3(-1000f, vec2<f32>(-546f, 2043f)), Struct_3(-1669f, vec2<f32>(-479f, 908f)), Struct_3(-1000f, vec2<f32>(732f, 156f)), Struct_3(1692f, vec2<f32>(387f, -732f)), Struct_3(471f, vec2<f32>(-253f, 830f)), Struct_3(-1306f, vec2<f32>(-869f, -2251f)), Struct_3(-805f, vec2<f32>(-1000f, 960f)), Struct_3(-335f, vec2<f32>(1000f, -409f)), Struct_3(645f, vec2<f32>(3150f, 1021f)), Struct_3(1000f, vec2<f32>(178f, -712f)), Struct_3(-1662f, vec2<f32>(-2186f, 112f)), Struct_3(-1350f, vec2<f32>(788f, -555f)), Struct_3(562f, vec2<f32>(-1101f, 110f)), Struct_3(-1389f, vec2<f32>(225f, -2251f)), Struct_3(-212f, vec2<f32>(470f, -665f)), Struct_3(-1000f, vec2<f32>(-242f, -102f)), Struct_3(-217f, vec2<f32>(-145f, -715f)), Struct_3(-1000f, vec2<f32>(311f, 1279f)), Struct_3(-1526f, vec2<f32>(595f, -507f)), Struct_3(-1700f, vec2<f32>(-1246f, 1158f)), Struct_3(1529f, vec2<f32>(219f, -416f)));

var<private> global1: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = global1.a.x;
    var var_1 = Struct_2(u_input.b.x, Struct_1((abs(vec4<i32>(u_input.a.x, u_input.a.x, global1.a.x, u_input.a.x)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(global1.a.x, 1i, -22281i, -2147483647i), global1.a)) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b.x, global1.b.x), vec4<u32>(u_input.b.x, global1.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b.x, global1.b.x, u_input.b.x), vec4<u32>(global1.b.x, 0u, global1.b.x, u_input.b.x), vec4<u32>(122382u, 0u, 51425u, u_input.b.x))) % vec4<u32>(32u)), global1.b), Struct_1(reverseBits(global1.a), global1.b), global1.b, global1.b.x);
    return reverseBits(abs(4294967295u)) >> (var_1.e % 32u);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<i32>) -> i32 {
    global1 = arg_1.c;
    let var_0 = Struct_2(_wgslsmith_clamp_u32(63596u, 19315u, min(~11094u, ~func_3())), arg_1.b, Struct_1(vec4<i32>(global1.a.x, 1i, global1.a.x, global1.a.x >> (88343u % 32u)) << (arg_1.d % vec4<u32>(32u)), ~vec4<u32>(~0u, global1.b.x, _wgslsmith_div_u32(1u, global1.b.x), arg_1.c.b.x)), vec4<u32>(global1.b.x, reverseBits(abs(~4294967295u)), global1.b.x, 4294967295u), reverseBits(_wgslsmith_dot_vec2_u32(max(~u_input.b.zx, _wgslsmith_sub_vec2_u32(vec2<u32>(global1.b.x, global1.b.x), global1.b.zy)), global1.b.wy)));
    let var_1 = global0[_wgslsmith_index_u32(arg_1.b.b.x, 28u)];
    return -2147483647i;
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = -vec2<i32>(-func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(513f, -490f, 1362f, -637f)), Struct_2(global1.b.x, Struct_1(vec4<i32>(0i, arg_2.x, -12326i, 0i), vec4<u32>(arg_1, 4294967295u, global1.b.x, arg_1)), Struct_1(vec4<i32>(u_input.a.x, -49473i, 0i, global1.a.x), vec4<u32>(14935u, 69833u, 29387u, 30881u)), vec4<u32>(arg_1, 1071u, global1.b.x, 0u), 9186u), global1.a), i32(-1i) * -34453i);
    global0 = array<Struct_3, 28>();
    var var_1 = Struct_4(global1.b.x, vec2<bool>(false & arg_0.x, arg_0.x), 521i);
    let var_2 = vec4<bool>(true, _wgslsmith_mod_i32(~(-658i), -14008i) <= abs(-989i & _wgslsmith_div_i32(u_input.a.x, var_1.c)), arg_0.x, ~func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(322f, 568f, 1462f, 410f))), Struct_2(0u, Struct_1(vec4<i32>(global1.a.x, var_1.c, arg_2.x, 0i), global1.b), Struct_1(global1.a, global1.b), global1.b, arg_1), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.a.x, var_1.c, global1.a.x, 3556i), global1.a)) != arg_2.x);
    global1 = Struct_1(_wgslsmith_div_vec4_i32(~global1.a, vec4<i32>(~(global1.a.x >> (global1.b.x % 32u)), global1.a.x, -(~(-37748i)), _wgslsmith_dot_vec4_i32(global1.a, min(vec4<i32>(-6908i, u_input.a.x, -79477i, global1.a.x), global1.a)))), ~(global1.b & vec4<u32>(global1.b.x, 43542u, abs(38246u), u_input.b.x)));
    return Struct_1(vec4<i32>(countOneBits(i32(-1i) * -24589i) >> (_wgslsmith_mod_u32(arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), global1.b.wz)) % 32u), 0i ^ arg_2.x, i32(-1i) * -u_input.a.x, global1.a.x >> (0u % 32u)), ~(~vec4<u32>(_wgslsmith_dot_vec2_u32(global1.b.xy, global1.b.xx), _wgslsmith_sub_u32(4294967295u, arg_1), u_input.b.x, u_input.b.x << (1u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(vec3<bool>(true, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1323f) + -946f) > _wgslsmith_f_op_f32(545f + _wgslsmith_f_op_f32(ceil(-277f)))), global1.b.x, max(vec3<i32>(i32(-1i) * -u_input.a.x, u_input.a.x, 20085i), -(~u_input.a >> (vec3<u32>(global1.b.x, 0u, 16387u) % vec3<u32>(32u)))));
    let var_0 = vec3<bool>(false, any(!vec3<bool>(true, true, global1.b.x < 2880u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-971f, -625f)) * -632f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2531f), _wgslsmith_div_f32(936f, 377f)))) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(356f, 905f)))));
    var var_1 = Struct_4(global1.b.x, vec2<bool>(all(!select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(false, true, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x))), false), abs(~(-_wgslsmith_add_i32(0i, u_input.a.x))));
    var var_2 = Struct_1(-func_1(select(vec3<bool>(true, var_0.x, true), select(var_0, vec3<bool>(true, var_0.x, var_1.b.x), var_0.x), var_0.x), global1.b.x, -vec3<i32>(45145i, 0i, -46487i)).a, vec4<u32>(abs(_wgslsmith_div_u32(~3102u, _wgslsmith_clamp_u32(var_1.a, global1.b.x, var_1.a))), _wgslsmith_clamp_u32(80163u, abs(select(8551u, 29385u, true)), ~_wgslsmith_clamp_u32(0u, global1.b.x, u_input.b.x)), func_1(!(!vec3<bool>(var_1.b.x, true, true)), var_1.a, firstLeadingBit(vec3<i32>(2147483647i, var_1.c, global1.a.x) << (global1.b.www % vec3<u32>(32u)))).b.x, ~(~func_1(var_0, 1u, vec3<i32>(global1.a.x, u_input.a.x, -1i)).b.x)));
    var var_3 = max(0i, func_1(select(!vec3<bool>(false, var_0.x, var_1.b.x), select(var_0, !vec3<bool>(var_1.b.x, true, true), var_0), var_0.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(19618u, 93237u, 1u, 0u), var_2.b, var_1.b.x), vec4<u32>(28771u, ~var_1.a, 4294967295u, ~var_1.a)), -global1.a.wwz).a.x);
    let var_4 = vec4<f32>(-187f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(313f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -716f), _wgslsmith_f_op_f32(f32(-1f) * -548f), true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(454f))))) * _wgslsmith_f_op_f32(499f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-890f * 464f), _wgslsmith_f_op_f32(1755f - -109f)))), 425f);
    let x = u_input.a;
    s_output = StorageBuffer(-252f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))), var_4.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1216f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-449f * 650f)) - _wgslsmith_f_op_f32(var_4.x - var_4.x))));
}

