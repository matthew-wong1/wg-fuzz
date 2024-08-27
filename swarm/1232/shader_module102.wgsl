struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(828f, -1407f, 1604f, -160f, 1097f, 505f, 899f, -215f, -135f, 337f, -387f, -1329f, -871f, -1381f, 1344f, -426f);

var<private> global1: Struct_1;

var<private> global2: vec3<u32> = vec3<u32>(10187u, 7094u, 4294967295u);

var<private> global3: array<Struct_1, 20>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1(abs(~(-14317i)), -55721i, firstTrailingBit(-abs(firstTrailingBit(2147483647i))), global1.d, true);
    let var_1 = 39318u;
    var var_2 = !(!select(select(global1.d.yz, vec2<bool>(var_0.e, true), true), global1.d.yz, all(vec2<bool>(var_0.d.x, var_0.d.x))));
    global3 = array<Struct_1, 20>();
    let var_3 = true;
    return min(countOneBits(vec3<u32>(reverseBits(_wgslsmith_clamp_u32(u_input.b, 89131u, 0u)), u_input.b, 1u)), abs(vec3<u32>(u_input.b, _wgslsmith_mult_u32(u_input.b, 12837u), ~1u) >> (min(vec3<u32>(4294967295u, 1u, 1u), ~vec3<u32>(32468u, var_1, var_1)) % vec3<u32>(32u))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(min(vec3<u32>(u_input.b, 4294967295u, 1u), ~vec3<u32>(0u, arg_0.x, global2.x)), ~abs(arg_0.zzy)), func_3()) << (countOneBits(max(~73414u, arg_0.x)) % 32u);
    global3 = array<Struct_1, 20>();
    global1 = Struct_1(-u_input.a, arg_2.a, ~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(0i, arg_2.a, u_input.a), vec3<i32>(u_input.a, u_input.a, -47749i)), vec3<i32>(51212i, global1.a, arg_2.b)), 1i), global1.d, !global1.e);
    global0 = array<f32, 16>();
    let var_1 = select(vec4<u32>(30788u, arg_0.x, 1998u, abs(~var_0)), ~firstLeadingBit(~(~vec4<u32>(0u, 22117u, 10255u, 36862u))), select(!vec4<bool>(false, all(vec4<bool>(global1.e, false, arg_2.e, arg_1.x)), u_input.b > u_input.b, global1.e), vec4<bool>((i32(-1i) * -40297i) < (-34228i & u_input.a), true, true, 47202i > _wgslsmith_div_i32(global1.a, global1.c)), true));
    return arg_2.a;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_mult_vec3_i32(max(vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(u_input.a, 31275i, global1.c)), vec3<i32>(arg_0.c, ~(~0i), arg_0.c)), min(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(1i, u_input.a)), -1129i, 60016i), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, func_2(vec4<u32>(31883u, global2.x, 68870u, global2.x), vec2<bool>(true, false), arg_0), abs(global1.c)), abs(vec3<i32>(-50100i, u_input.a, global1.b)))));
    let var_1 = var_0.zy;
    let var_2 = vec2<u32>(4294967295u, u_input.b);
    var var_3 = Struct_1(reverseBits(1i), -reverseBits(0i), _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(-55974i, ~var_1.x), i32(-1i) * -23424i), ~u_input.a), vec4<bool>(any(vec3<bool>(global1.e, global1.e, global1.e)) || false, any(arg_0.d.zz), global1.e, true), global1.d.x);
    global0 = array<f32, 16>();
    return abs(-_wgslsmith_add_i32(var_3.c, -1i));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    global3 = array<Struct_1, 20>();
    global1 = global3[_wgslsmith_index_u32(4294967295u, 20u)];
    var var_0 = 4294967295u <= ~global2.x;
    var_0 = true;
    var var_1 = false;
    return arg_2;
}

fn func_5(arg_0: Struct_1) -> i32 {
    let var_0 = func_4(_wgslsmith_mult_i32(~arg_0.c, global1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(66074u, 16u)], global0[_wgslsmith_index_u32(13698u, 16u)], _wgslsmith_f_op_f32(round(1228f)))), arg_0);
    var var_1 = var_0.d.zy;
    global0 = array<f32, 16>();
    let var_2 = vec3<f32>(global0[_wgslsmith_index_u32(52800u, 16u)], 289f, global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), firstLeadingBit(vec2<u32>(35835u, u_input.b)))), 16u)]);
    let var_3 = ~(~reverseBits(global2.x) & ~u_input.b) >= ~52039u;
    return ((_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -9335i), ~vec2<i32>(arg_0.c, arg_0.a)) >> (1u % 32u)) ^ (1i << (u_input.b % 32u))) >> (global2.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.e;
    global1 = Struct_1(0i, 0i, func_5(func_4(-func_1(global3[_wgslsmith_index_u32(69262u, 20u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global2.x, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(global2.x, 16u)]), vec3<f32>(-1425f, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)]))), Struct_1(-2147483647i >> (0u % 32u), 45567i, -global1.b, vec4<bool>(global1.e, global1.e, global1.e, false), true))), vec4<bool>(global1.e, true, true, !func_4(-2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], 2245f, global0[_wgslsmith_index_u32(0u, 16u)]) + vec3<f32>(-445f, global0[_wgslsmith_index_u32(5373u, 16u)], global0[_wgslsmith_index_u32(6393u, 16u)])), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 51085u, 33150u), vec3<u32>(u_input.b, 1u, u_input.b)), 20u)]).e), global1.d.x);
    let var_1 = 30623i;
    var var_2 = vec3<u32>(global2.x, ~u_input.b, _wgslsmith_dot_vec2_u32(global2.zx & vec2<u32>(u_input.b, global2.x << (global2.x % 32u)), vec2<u32>(abs(_wgslsmith_add_u32(1u, u_input.b)), u_input.b)));
    let var_3 = vec2<f32>(global0[_wgslsmith_index_u32(15843u, 16u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), global2.zy), 16u)]);
    var var_4 = func_4(countOneBits(var_1) & func_5(Struct_1(u_input.a, 0i, 36559i, func_4(2147483647i, vec3<f32>(global0[_wgslsmith_index_u32(global2.x, 16u)], -1995f, -313f), global3[_wgslsmith_index_u32(36025u, 20u)]).d, true)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0[_wgslsmith_index_u32(var_2.x, 16u)], -370f)))))), Struct_1(firstLeadingBit(-45191i), _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, func_4(u_input.a, vec3<f32>(-950f, var_3.x, global0[_wgslsmith_index_u32(9257u, 16u)]), Struct_1(-26694i, u_input.a, var_1, vec4<bool>(false, true, false, global1.d.x), global1.e)).b ^ -var_1, -u_input.a), var_1, !global1.d, global1.e));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, var_1, 11980i), vec3<i32>(u_input.a, -2147483647i, 0i))), var_4.c, func_2(vec4<u32>(36755u, 27643u, 1u, 34368u), global1.d.wz, Struct_1(18464i, var_1, global1.b, vec4<bool>(global1.e, false, true, false), true)), -1i) | _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1, u_input.a, 2147483647i, 2147483647i), vec4<i32>(54200i, 5313i, global1.c, global1.b)) ^ (vec4<i32>(global1.b, var_4.a, u_input.a, global1.a) >> (vec4<u32>(45494u, 43392u, global2.x, 160u) % vec4<u32>(32u))), select(vec4<i32>(var_1, var_1, var_1, -34521i), min(vec4<i32>(-35043i, u_input.a, -22748i, global1.a), vec4<i32>(var_4.c, 0i, 47808i, -13415i)), !global1.d.x)), select(vec3<u32>(~(~1u), ~abs(var_2.x), ~33238u), _wgslsmith_mult_vec3_u32(vec3<u32>(~global2.x, abs(12071u), global2.x), vec3<u32>(var_2.x << (0u % 32u), ~48205u, var_2.x)), var_4.d.wyx), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.x, global0[_wgslsmith_index_u32(4294967295u, 16u)], var_3.x), vec3<f32>(773f, global0[_wgslsmith_index_u32(0u, 16u)], var_3.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -133f, var_3.x)), select(vec3<bool>(false, var_4.d.x, global1.e), vec3<bool>(false, var_4.e, true), vec3<bool>(global1.d.x, false, var_4.e)))))))), _wgslsmith_add_u32(0u, 12782u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u >> (countOneBits(0u) % 32u), 16u)])));
}

