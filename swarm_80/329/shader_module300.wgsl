struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: array<i32, 18>;

var<private> global2: vec2<i32>;

var<private> global3: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec2<f32>(521f, -905f), vec2<u32>(41985u, 0u)), Struct_2(vec2<f32>(1641f, -1247f), vec2<u32>(4293u, 25002u)), Struct_2(vec2<f32>(-264f, 1000f), vec2<u32>(1u, 9158u)), Struct_2(vec2<f32>(1918f, 507f), vec2<u32>(1u, 34967u)), Struct_2(vec2<f32>(1348f, -471f), vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec2<f32>(-1152f, 539f), vec2<u32>(4294967295u, 15510u)), Struct_2(vec2<f32>(-1367f, 269f), vec2<u32>(28486u, 23075u)), Struct_2(vec2<f32>(-491f, -620f), vec2<u32>(33440u, 1074u)), Struct_2(vec2<f32>(-810f, -2051f), vec2<u32>(1u, 1u)), Struct_2(vec2<f32>(-851f, 323f), vec2<u32>(30902u, 49532u)));

var<private> global4: vec2<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    global4 = vec2<i32>(-49395i, ~firstTrailingBit(abs(0i)));
    var var_0 = _wgslsmith_add_u32(~reverseBits(~abs(12783u)), arg_3.a.x >> (_wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_mult_u32(4294967295u, 0u)), _wgslsmith_sub_u32(4294967295u >> (arg_1.e.x % 32u), 21492u)) % 32u));
    global0 = array<Struct_2, 12>();
    let var_1 = global0[_wgslsmith_index_u32(abs(4294967295u), 12u)];
    global2 = min(vec2<i32>(arg_3.b, _wgslsmith_div_i32(arg_1.d.x, ~max(-63101i, global4.x))), arg_0.xz);
    return vec2<bool>(true, u_input.c >= _wgslsmith_add_u32(var_1.b.x & _wgslsmith_add_u32(55609u, arg_2.b.x), 0u));
}

fn func_2() -> vec4<bool> {
    global3 = array<Struct_2, 10>();
    var var_0 = !select(!vec4<bool>(false, true, select(false, false, false), any(vec2<bool>(true, false))), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, all(vec2<bool>(true, true)), any(func_3(vec3<i32>(-28911i, global4.x, global4.x), Struct_3(global3[_wgslsmith_index_u32(u_input.c, 10u)], -367f, Struct_2(vec2<f32>(-1043f, -149f), vec2<u32>(113250u, u_input.c)), vec2<i32>(global2.x, u_input.a), vec4<u32>(u_input.c, u_input.c, 5870u, 4294967295u)), Struct_2(vec2<f32>(-606f, -807f), vec2<u32>(u_input.c, u_input.c)), Struct_1(vec3<u32>(u_input.c, 25897u, u_input.c), -12053i))), _wgslsmith_f_op_f32(round(189f)) < _wgslsmith_f_op_f32(trunc(-1015f))));
    global1 = array<i32, 18>();
    global2 = ~countOneBits(countOneBits(-countOneBits(vec2<i32>(70445i, 20306i))));
    var var_1 = all(vec3<bool>(var_0.x, true, !func_3(vec3<i32>(u_input.a, -2147483647i, 1i) << (vec3<u32>(44970u, u_input.c, 70313u) % vec3<u32>(32u)), Struct_3(Struct_2(vec2<f32>(-198f, -1516f), vec2<u32>(u_input.c, u_input.c)), -1348f, Struct_2(vec2<f32>(-1903f, 138f), vec2<u32>(30425u, 0u)), vec2<i32>(global1[_wgslsmith_index_u32(12785u, 18u)], global2.x), vec4<u32>(u_input.c, u_input.c, 17644u, 0u)), Struct_2(vec2<f32>(-738f, -1000f), vec2<u32>(u_input.c, 48994u)), Struct_1(vec3<u32>(u_input.c, 1u, 4294967295u), -1i)).x));
    return select(select(select(vec4<bool>(!var_0.x, var_0.x, !var_0.x, -3791i != u_input.a), !vec4<bool>(var_0.x, true, var_0.x, var_0.x), var_0.x), vec4<bool>(select(true, var_0.x, var_0.x), true, true & any(vec2<bool>(var_0.x, true)), false), u_input.b > -22073i), select(!select(vec4<bool>(var_0.x, true, true, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, false, false)), !(!select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, true, false, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x))), !select(!vec4<bool>(var_0.x, true, true, true), vec4<bool>(var_0.x, false, false, true), var_0.x)), true);
}

fn func_1() -> f32 {
    global0 = array<Struct_2, 12>();
    global1 = array<i32, 18>();
    let var_0 = select(vec4<bool>(!(!all(vec2<bool>(true, true))), false, true, all(vec4<bool>(false, false, false, true)) == true), vec4<bool>(true, ~u_input.b != firstTrailingBit(global1[_wgslsmith_index_u32(u_input.c, 18u)]), _wgslsmith_mult_i32(0i, -1i) < -reverseBits(global4.x), !(-2165f == _wgslsmith_f_op_f32(round(712f)))), !(!select(func_2(), func_2(), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true))));
    var var_1 = ~(~u_input.c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-567f, -517f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + -355f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -926f)))));
    let var_1 = _wgslsmith_dot_vec2_i32(-select(vec2<i32>(20175i, global2.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, global2.x), vec2<i32>(2147483647i, 11111i), vec2<i32>(global4.x, 0i)), vec2<bool>(true, false)), -vec2<i32>(-u_input.b, 28023i)) ^ firstLeadingBit(u_input.b);
    global0 = array<Struct_2, 12>();
    global3 = array<Struct_2, 10>();
    let var_2 = Struct_1(_wgslsmith_mod_vec3_u32(min(select(vec3<u32>(4294967295u, u_input.c, u_input.c), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(u_input.c, 4294967295u, u_input.c)), true), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 15240u, 1u)), abs(vec3<u32>(u_input.c, u_input.c, 46130u)))), countOneBits(reverseBits(vec3<u32>(u_input.c, 58707u, 5766u))) << (_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c, 1u, u_input.c)), ~vec3<u32>(u_input.c, u_input.c, 4294967295u)) % vec3<u32>(32u))), i32(-1i) * -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1()), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(~global2.x, 42192i, 58771i), vec3<i32>(firstTrailingBit(u_input.a), 6182i, _wgslsmith_sub_i32(-32962i, -32420i)), (vec3<i32>(-51320i, -17586i, 19059i) >> (vec3<u32>(36999u, 19672u, u_input.c) % vec3<u32>(32u))) << (var_2.a % vec3<u32>(32u))), vec3<i32>(-1i) * -reverseBits(vec3<i32>(var_2.b, global2.x, var_1))));
}

