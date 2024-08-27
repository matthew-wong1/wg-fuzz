struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec3<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: array<f32, 24>;

var<private> global2: array<vec4<u32>, 18>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_5) -> bool {
    var var_0 = arg_1.a.a;
    let var_1 = var_0.d.a;
    global2 = array<vec4<u32>, 18>();
    let var_2 = Struct_4(arg_1.a.a);
    var var_3 = Struct_4(arg_1.a.a);
    return any(vec4<bool>(false, true, !var_0.a, false));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = !(!func_3(!vec3<bool>(arg_0, arg_1.e.c.x, arg_0), Struct_5(Struct_4(Struct_2(true, vec3<f32>(global1[_wgslsmith_index_u32(14062u, 24u)], -1492f, global1[_wgslsmith_index_u32(1u, 24u)]), arg_2.zyx, arg_1.d.d, u_input.a.x)))) == !arg_1.d.a);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.e.b.x, arg_1.d.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -379f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(1000f * -454f), _wgslsmith_f_op_f32(abs(arg_1.e.b.x)), _wgslsmith_f_op_f32(select(1000f, global1[_wgslsmith_index_u32(arg_1.a, 24u)], false)), -155f))), select(!vec4<bool>(arg_0, var_0, false, true), !select(vec4<bool>(arg_1.d.a, arg_0, arg_0, false), vec4<bool>(var_0, arg_0, var_0, var_0), arg_2), !(!arg_2)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-811f, arg_1.d.b.x, -220f, -2732f))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2618f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + 344f)), -306f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(519f)), _wgslsmith_div_f32(314f, -524f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)])) - _wgslsmith_f_op_f32(-348f + global1[_wgslsmith_index_u32(1u, 24u)])))));
    var var_3 = arg_1;
    return arg_1.d.d;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: f32, arg_3: i32) -> Struct_3 {
    let var_0 = Struct_5(Struct_4(Struct_2(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2, -1284f, 207f))) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_2, -371f), vec3<f32>(1018f, arg_2, global1[_wgslsmith_index_u32(arg_0.x, 24u)]))), vec3<bool>(true, true, true), func_2(true, Struct_3(1u, vec4<bool>(false, true, false, true), global2[_wgslsmith_index_u32(58626u, 18u)], Struct_2(false, vec3<f32>(-166f, 657f, -358f), vec3<bool>(true, true, false), Struct_1(1i, arg_1, true), 29441u), Struct_2(false, vec3<f32>(global1[_wgslsmith_index_u32(arg_0.x, 24u)], -595f, 731f), vec3<bool>(false, true, true), Struct_1(-2147483647i, vec4<i32>(arg_3, global0[_wgslsmith_index_u32(0u, 7u)], arg_1.x, 48671i), true), u_input.a.x)), vec4<bool>(true, false, true, true)), firstTrailingBit(firstTrailingBit(u_input.a.x)))));
    global2 = array<vec4<u32>, 18>();
    var var_1 = global0[_wgslsmith_index_u32(25272u, 7u)];
    let var_2 = Struct_1(var_0.a.a.d.b.x, arg_1, !var_0.a.a.a);
    var var_3 = select(!(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, var_0.a.a.c.x, false, var_2.c), vec4<bool>(true, false, false, var_0.a.a.c.x)))), vec4<bool>(var_0.a.a.d.c, false, false, false), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(var_2.c, true, var_2.c, var_2.c), vec4<bool>(var_0.a.a.a, true, false, var_2.c), !vec4<bool>(var_2.c, var_2.c, var_0.a.a.c.x, false)), true), select(select(select(vec4<bool>(true, var_0.a.a.a, var_0.a.a.c.x, var_0.a.a.d.c), vec4<bool>(true, var_2.c, var_0.a.a.d.c, var_0.a.a.d.c), var_2.c), !vec4<bool>(false, var_2.c, false, true), var_2.c), select(select(vec4<bool>(var_0.a.a.d.c, var_0.a.a.d.c, var_2.c, true), vec4<bool>(var_0.a.a.d.c, false, true, var_0.a.a.a), var_0.a.a.a), vec4<bool>(false, false, var_2.c, var_0.a.a.c.x), var_0.a.a.c.x), select(select(vec4<bool>(true, false, var_0.a.a.a, var_0.a.a.c.x), vec4<bool>(false, var_0.a.a.d.c, var_2.c, false), vec4<bool>(var_0.a.a.a, true, var_0.a.a.c.x, var_2.c)), vec4<bool>(false, var_0.a.a.d.c, var_0.a.a.c.x, var_0.a.a.d.c), true)), true));
    return Struct_3(abs(_wgslsmith_mod_u32(0u, var_0.a.a.e) << (arg_0.x % 32u)) << (abs(~20951u) % 32u), vec4<bool>(var_0.a.a.d.c, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 24u)] + 1f) > global1[_wgslsmith_index_u32(~1u, 24u)], reverseBits(u_input.a.x) >= 2242u, false), select(~(vec4<u32>(var_0.a.a.e, u_input.a.x, arg_0.x, 502u) ^ arg_0), _wgslsmith_add_vec4_u32(global2[_wgslsmith_index_u32(var_0.a.a.e, 18u)], global2[_wgslsmith_index_u32(0u, 18u)]) | firstLeadingBit(vec4<u32>(4294967295u, 16206u, 5541u, var_0.a.a.e)), !(!vec4<bool>(false, true, true, var_2.c))) >> ((vec4<u32>(firstTrailingBit(1u), var_0.a.a.e ^ 3074u, _wgslsmith_sub_u32(var_0.a.a.e, 68232u), u_input.a.x) & abs(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(0u, 18u)]), 18u)])) % vec4<u32>(32u)), var_0.a.a, var_0.a.a);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> bool {
    global2 = array<vec4<u32>, 18>();
    global2 = array<vec4<u32>, 18>();
    global0 = array<i32, 7>();
    let var_0 = arg_2;
    var var_1 = var_0;
    return arg_2.d.d.c;
}

fn func_5(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    var var_0 = Struct_5(Struct_4(func_1(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], (vec4<i32>(33448i, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], -48330i, global0[_wgslsmith_index_u32(1u, 7u)]) ^ vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(41599u, 7u)])) >> ((global2[_wgslsmith_index_u32(u_input.a.x, 18u)] >> (global2[_wgslsmith_index_u32(u_input.a.x, 18u)] % vec4<u32>(32u))) % vec4<u32>(32u)), -333f, -_wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], -36975i)).d));
    var var_1 = Struct_3(~4294967295u, vec4<bool>(arg_1.x, !func_1(_wgslsmith_add_vec4_u32(global2[_wgslsmith_index_u32(26700u, 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)]), ~var_0.a.a.d.b, global1[_wgslsmith_index_u32(4294967295u, 24u)], firstTrailingBit(15560i)).b.x, arg_1.x, !(!func_2(true, Struct_3(var_0.a.a.e, vec4<bool>(false, false, var_0.a.a.a, arg_1.x), global2[_wgslsmith_index_u32(35458u, 18u)], var_0.a.a, var_0.a.a), vec4<bool>(true, false, arg_0, arg_1.x)).c)), select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_1(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], vec4<i32>(-2147483647i, 2147483647i, var_0.a.a.d.a, -35884i), global1[_wgslsmith_index_u32(~var_0.a.a.e, 24u)], 2147483647i).c.ywx, func_1(global2[_wgslsmith_index_u32(~var_0.a.a.e, 18u)], ~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], -1i, var_0.a.a.d.a, 2147483647i), _wgslsmith_f_op_f32(-var_0.a.a.b.x), func_1(global2[_wgslsmith_index_u32(var_0.a.a.e, 18u)], vec4<i32>(global0[_wgslsmith_index_u32(3299u, 7u)], -1i, 0i, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), -1110f, var_0.a.a.d.b.x).d.d.b.x).c.zxx), 18u)], ~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, var_0.a.a.e, 5759u, var_0.a.a.e), vec4<u32>(u_input.a.x, 12167u, var_0.a.a.e, 53150u))), !(!(global0[_wgslsmith_index_u32(u_input.a.x, 7u)] == -30401i))), Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 24u)] < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.b.x)), var_0.a.a.b, !vec3<bool>(true, arg_0, true), Struct_1(max(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(~var_0.a.a.e, 7u)]), -var_0.a.a.d.b & var_0.a.a.d.b, all(func_1(vec4<u32>(1u, 31241u, u_input.a.x, 23111u), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], var_0.a.a.d.a, global0[_wgslsmith_index_u32(var_0.a.a.e, 7u)], 20414i), global1[_wgslsmith_index_u32(29000u, 24u)], global0[_wgslsmith_index_u32(1948u, 7u)]).d.c.yz)), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(var_0.a.a.e, 0u)), ~var_0.a.a.e)), func_1(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 38148u, var_0.a.a.e, u_input.a.x), global2[_wgslsmith_index_u32(u_input.a.x, 18u)]), u_input.a.x, 37451u, u_input.a.x), firstLeadingBit(abs(vec4<i32>(var_0.a.a.d.a, -21180i, var_0.a.a.d.a, global0[_wgslsmith_index_u32(0u, 7u)]))), _wgslsmith_f_op_f32(func_1(select(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(0u, 18u)], arg_1.x), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.a.d.a, var_0.a.a.d.b.x, 26838i, 1i), vec4<i32>(global0[_wgslsmith_index_u32(var_0.a.a.e, 7u)], global0[_wgslsmith_index_u32(var_0.a.a.e, 7u)], -10110i, 2147483647i)), _wgslsmith_f_op_f32(-var_0.a.a.b.x), 28171i).e.b.x * _wgslsmith_f_op_f32(-var_0.a.a.b.x)), _wgslsmith_clamp_i32(-(~var_0.a.a.d.b.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(45736u, 7u)], var_0.a.a.d.a), -global0[_wgslsmith_index_u32(39718u, 7u)]), ~(-12439i))).d);
    var var_2 = max(~(var_1.c.wyy >> ((~var_1.c.xyz | _wgslsmith_sub_vec3_u32(var_1.c.zwx, vec3<u32>(var_0.a.a.e, 18464u, 24132u))) % vec3<u32>(32u))), ~reverseBits(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 2521u, u_input.a.x), vec3<u32>(var_1.d.e, var_1.d.e, 12260u)))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 24u)]), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(7177u, 24u)], 100f, false)))))), u_input.a.x, func_5(!func_4(abs(-1i), -2147483647i, func_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(0i, -756i, -87971i, -1i), 899f, global0[_wgslsmith_index_u32(73055u, 7u)])), vec2<bool>(false, 0u != _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 37228u), vec3<u32>(42654u, 4294967295u, 4294967295u)))));
}

