struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: array<vec4<f32>, 15>;

var<private> global2: vec2<bool>;

var<private> global3: f32 = 241f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec3_u32(~vec3<u32>(41589u, select(1u | u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(14319u, 0u, 30438u, u_input.b.x), vec4<u32>(u_input.b.x, 3205u, 43358u, u_input.b.x)), false), ~u_input.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, 1u), 69277u, reverseBits(1u)), vec3<u32>(u_input.b.x, reverseBits(1u) << (u_input.b.x % 32u), 110000u)));
    global1 = array<vec4<f32>, 15>();
    return select(vec4<bool>(arg_1.x, (u_input.c.x <= min(-12573i, u_input.d)) || false, global2.x, false & global2.x), vec4<bool>(!((arg_2.x <= arg_2.x) && !global2.x), false, true, all(!select(arg_1, vec2<bool>(global2.x, true), vec2<bool>(true, true)))), vec4<bool>(false, select(all(arg_1) & !global2.x, !(u_input.a.x >= u_input.a.x), global2.x), arg_1.x, !all(vec3<bool>(global2.x, false, false))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> vec2<u32> {
    global1 = array<vec4<f32>, 15>();
    global1 = array<vec4<f32>, 15>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_1.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a.x, arg_2, arg_2), vec3<f32>(-1310f, arg_1.a.x, arg_3))))));
    var var_1 = vec2<bool>((_wgslsmith_mod_u32(u_input.b.x, u_input.b.x << (43037u % 32u)) != (~u_input.b.x << (74425u % 32u))) || (!arg_0.x && any(!vec3<bool>(global2.x, false, arg_0.x))), global2.x);
    let var_2 = !(!(!var_1.x));
    return vec2<u32>(_wgslsmith_add_u32(7889u, u_input.b.x) << (u_input.b.x % 32u), ~(~abs(max(u_input.b.x, 2198u))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<bool>) -> i32 {
    let var_0 = abs(func_4(func_3(Struct_1(arg_0.a), vec2<bool>(global2.x, arg_2.x), vec2<f32>(1464f, arg_0.a.x), arg_2.x), global0[_wgslsmith_index_u32(~(~1u), 11u)], 356f, -1791f) | vec2<u32>(u_input.b.x, ~u_input.b.x));
    let var_1 = global1[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(36651u, 4294967295u, 0u, var_0.x) ^ vec4<u32>(42984u, 8908u, 1u, 1430u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.x, 135644u, 39588u), vec4<u32>(var_0.x, 22735u, var_0.x, 4294967295u))))), 15u)];
    return arg_1.x;
}

fn func_5(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    return global0[_wgslsmith_index_u32(u_input.b.x, 11u)];
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(u_input.a.x, vec4<i32>(u_input.c.x, func_2(global0[_wgslsmith_index_u32(~82862u, 11u)], vec4<i32>(27075i, u_input.a.x, 2147483647i, 1i) >> (vec4<u32>(u_input.b.x, 21351u, u_input.b.x, 0u) % vec4<u32>(32u)), select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, false), vec2<bool>(global2.x, false))), -15608i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -15727i), vec2<i32>(0i, u_input.d)) >> (0u % 32u)) ^ -vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, 1i), 11629i, 32843i), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(102f, 681f, 1403f)))) - vec3<f32>(_wgslsmith_f_op_f32(floor(-605f)), -296f, _wgslsmith_f_op_f32(-534f - 175f)))), Struct_1(vec3<f32>(-103f, -296f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1409f, 250f) * -724f))));
    global3 = 1875f;
    let var_1 = false;
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(358f))), var_0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.a, var_0.a)))), vec3<bool>(global2.x, var_1, var_1))));
    var var_2 = vec4<bool>(global2.x, 0i > _wgslsmith_mod_i32(reverseBits(_wgslsmith_mult_i32(u_input.c.x, u_input.d)), min(14892i, ~(-2147483647i))), global2.x, global2.x);
    return global0[_wgslsmith_index_u32(u_input.b.x, 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 11>();
    global2 = !vec2<bool>(max(0i & u_input.c.x, -2147483647i) == _wgslsmith_add_i32(~0i, -u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.c.x, u_input.a.x, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -35735i, u_input.d, 25221i), vec4<i32>(-43453i, -2147483647i, -1i, u_input.a.x))) > (-25811i << (1u % 32u)));
    global1 = array<vec4<f32>, 15>();
    global1 = array<vec4<f32>, 15>();
    let var_0 = func_1();
    var var_1 = vec2<i32>(_wgslsmith_add_i32(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 2147483647i, 9764i, u_input.a.x), vec4<i32>(64025i, 38265i, -34985i, u_input.d)), _wgslsmith_dot_vec3_i32(vec3<i32>(15797i, u_input.c.x, abs(-20712i)), ~(-vec3<i32>(41424i, -4247i, 1i)))), -_wgslsmith_mult_i32(0i, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(2147483647i, 1i, -1i)), -vec3<i32>(var_1.x, u_input.c.x, -126935i), ~vec3<i32>(-95093i, u_input.d, 8597i)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(func_2(Struct_1(var_0.a), vec4<i32>(74725i, var_1.x, var_1.x, -1i), vec2<bool>(false, true)), ~u_input.c.x, ~2147483647i), -vec3<i32>(var_1.x, -26251i, u_input.d)), ~var_1.x);
}

