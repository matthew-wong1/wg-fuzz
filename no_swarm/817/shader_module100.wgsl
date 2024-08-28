struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(false, false, Struct_1(393f, vec2<i32>(12136i, 12545i))), Struct_2(false, true, Struct_1(-2214f, vec2<i32>(50886i, 2147483647i))), Struct_2(true, false, Struct_1(-515f, vec2<i32>(2147483647i, -51163i))), Struct_2(false, true, Struct_1(-752f, vec2<i32>(2147483647i, 1i))), Struct_2(false, false, Struct_1(1055f, vec2<i32>(-37821i, i32(-2147483648)))), Struct_2(false, false, Struct_1(1313f, vec2<i32>(2147483647i, 1i))), Struct_2(true, false, Struct_1(-1648f, vec2<i32>(-1i, 2147483647i))), Struct_2(false, false, Struct_1(227f, vec2<i32>(-22935i, 1i))), Struct_2(false, false, Struct_1(655f, vec2<i32>(2147483647i, 0i))), Struct_2(false, false, Struct_1(936f, vec2<i32>(0i, i32(-2147483648)))), Struct_2(true, false, Struct_1(-1000f, vec2<i32>(22318i, 2147483647i))), Struct_2(true, true, Struct_1(-1000f, vec2<i32>(i32(-2147483648), 2147483647i))), Struct_2(false, true, Struct_1(-315f, vec2<i32>(-19770i, -10283i))), Struct_2(true, false, Struct_1(1636f, vec2<i32>(2147483647i, -10050i))), Struct_2(false, true, Struct_1(-1868f, vec2<i32>(66033i, 33830i))), Struct_2(false, false, Struct_1(160f, vec2<i32>(-1i, 2147483647i))), Struct_2(false, true, Struct_1(1492f, vec2<i32>(-1i, 1i))), Struct_2(false, true, Struct_1(-1698f, vec2<i32>(0i, 10611i))), Struct_2(true, false, Struct_1(-1302f, vec2<i32>(-1i, i32(-2147483648)))), Struct_2(false, true, Struct_1(-564f, vec2<i32>(0i, 2147483647i))));

var<private> global2: Struct_1 = Struct_1(1035f, vec2<i32>(i32(-2147483648), -29951i));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_2, 20>();
    var var_0 = u_input.a;
    let var_1 = ~(~vec4<u32>(u_input.b.x, 0u >> (1u % 32u), _wgslsmith_mod_u32(1u, u_input.b.x), u_input.b.x)) | ~vec4<u32>(reverseBits(7477u), _wgslsmith_dot_vec4_u32(~vec4<u32>(90479u, u_input.b.x, u_input.b.x, u_input.d.x), u_input.d), _wgslsmith_div_u32(0u, u_input.d.x), u_input.b.x);
    var var_2 = _wgslsmith_div_u32(var_1.x, var_1.x);
    let var_3 = !select(vec3<bool>(all(vec2<bool>(true, true)), false, 4294967295u > u_input.d.x), select(vec3<bool>(global0.x && global0.x, global2.a >= global2.a, global0.x || global0.x), vec3<bool>(global0.x, true, global0.x), any(!vec3<bool>(true, global0.x, global0.x))), !global0.x);
    return Struct_1(global2.a, vec2<i32>(u_input.c, ~_wgslsmith_clamp_i32(u_input.a, global2.b.x, 13821i)) ^ global2.b);
}

fn func_3(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = countOneBits(~u_input.d.yyw);
    var var_1 = global2.b.x & func_2().b.x;
    var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(~(arg_0.x ^ 45046i), func_2().b.x, 0i, -1i), select(vec4<i32>(-1i, _wgslsmith_clamp_i32(u_input.c, 2147483647i, global2.b.x), _wgslsmith_mod_i32(arg_0.x, u_input.a), 13598i), vec4<i32>(993i, -44364i, 1i, u_input.c) >> (u_input.d % vec4<u32>(32u)), select(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, false, true)), select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(false, false, true, global0.x), vec4<bool>(global0.x, false, true, true)), vec4<bool>(global0.x, true, global0.x, false))), max(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(14704i, 0i, arg_0.x, global2.b.x)), select(vec4<i32>(15233i, 2147483647i, u_input.a, global2.b.x), vec4<i32>(global2.b.x, global2.b.x, 0i, arg_0.x), vec4<bool>(global0.x, global0.x, true, false))), ~vec4<i32>(46251i, -2147483647i, global2.b.x, arg_0.x))), vec4<i32>(-17586i, abs(global2.b.x), firstLeadingBit(global2.b.x), ~countOneBits(-1i)));
    var var_2 = -21352i;
    let var_3 = vec4<u32>(var_0.x, ~countOneBits(~firstTrailingBit(var_0.x)), var_0.x, ~95274u);
    return Struct_1(global2.a, vec2<i32>(countOneBits(firstTrailingBit(-26967i)) | (-u_input.c | firstLeadingBit(u_input.a)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global2.b.x) | vec2<i32>(46546i, arg_0.x), ~vec2<i32>(u_input.c, 2147483647i))));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<f32>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = vec4<bool>(select(~arg_0.x, ~(u_input.b.x & 4294967295u), any(!vec2<bool>(false, global0.x))) >= 41154u, true, global0.x, true);
    global2 = func_3(vec3<i32>(-1i, 49356i, ~3037i));
    global0 = var_1.yy;
    var var_2 = arg_0.x;
    return func_3(vec3<i32>(-1i, _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_mult_i32(arg_3.x, -2147483647i)), _wgslsmith_mult_i32(55283i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, 0i, u_input.a), vec3<i32>(u_input.a, 4398i, global2.b.x)))), global2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(abs(~vec2<u32>(~u_input.b.x, firstTrailingBit(u_input.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-199f + 820f)), vec2<f32>(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(-global2.a)) - global2.a)), ~(vec4<i32>(_wgslsmith_mod_i32(20396i, 39325i), ~(-2147483647i), global2.b.x, ~43658i) & ~_wgslsmith_sub_vec4_i32(vec4<i32>(global2.b.x, 2147483647i, global2.b.x, u_input.c), vec4<i32>(-2147483647i, global2.b.x, u_input.a, u_input.c))));
    var var_1 = ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(1i, 9015i), 1i, -u_input.c, ~var_0.b.x), ~firstLeadingBit(vec4<i32>(-2147483647i, u_input.c, global2.b.x, global2.b.x))));
    let var_2 = select(!(!(!vec2<bool>(false, global0.x))), vec2<bool>(true, global0.x), !vec2<bool>(global0.x, true));
    let var_3 = global2.b.x;
    global1 = array<Struct_2, 20>();
    var var_4 = var_2;
    global2 = var_0;
    let var_5 = global1[_wgslsmith_index_u32(u_input.d.x, 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(-298f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.a * global2.a), -426f, _wgslsmith_f_op_f32(-1169f * 723f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(431f * global2.a) - var_0.a) * var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_5.c.a))) + 538f)), -1334f, _wgslsmith_dot_vec2_u32(~u_input.b.wx, vec2<u32>(select(u_input.b.x >> (0u % 32u), u_input.d.x, any(vec4<bool>(var_2.x, true, true, var_4.x))), ~_wgslsmith_mult_u32(769u, 40108u))));
}

