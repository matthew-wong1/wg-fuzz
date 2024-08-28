struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(13135u, 4294967295u, 0u, 0u, 15055u, 0u, 15369u, 1u, 1u, 0u, 32759u, 1u, 14928u, 59530u);

var<private> global1: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(-144f, 688f, -434f));

var<private> global2: vec4<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<i32>) -> vec4<u32> {
    global1 = array<vec3<f32>, 1>();
    var var_0 = u_input.b;
    var var_1 = abs(min(_wgslsmith_clamp_u32(u_input.b, global0[_wgslsmith_index_u32(select(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 14u)], false), 14u)], _wgslsmith_mod_u32(4294967295u, u_input.b)), ~7650u) | (~select(29698u, global0[_wgslsmith_index_u32(51199u, 14u)], false) << ((global2.x & _wgslsmith_mod_u32(395u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 14u)], 14u)])) % 32u)));
    let var_2 = Struct_2(1312f);
    global0 = array<u32, 14>();
    return ~select(~max(~vec4<u32>(0u, 4294967295u, 6578u, 21870u), vec4<u32>(global2.x, 0u, global2.x, 0u)), ~vec4<u32>(max(32474u, 28681u), 23159u, global0[_wgslsmith_index_u32(1u, 14u)], _wgslsmith_add_u32(global2.x, global2.x)), true);
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> bool {
    global2 = func_3(-arg_0.x, ~vec2<i32>(abs(_wgslsmith_add_i32(-20043i, u_input.a.x)), -2147483647i), arg_0.xz);
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(204f, -444f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-954f, 670f) + _wgslsmith_f_op_f32(round(1730f)))))));
    global0 = array<u32, 14>();
    let var_1 = -2147483647i;
    var_0 = -849f;
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> Struct_3 {
    global2 = _wgslsmith_mod_vec4_u32(abs(vec4<u32>(16692u, _wgslsmith_clamp_u32(arg_3.b.x & u_input.b, global2.x, abs(global0[_wgslsmith_index_u32(arg_3.b.x, 14u)])), ~countOneBits(1u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.b, 17066u, arg_3.b.x), vec4<u32>(0u, u_input.b, 58903u, 0u)), 14u)])), countOneBits(~vec4<u32>(0u, global0[_wgslsmith_index_u32(50955u, 14u)], 122203u, 2817u) << (~arg_3.b % vec4<u32>(32u))));
    global2 = ~(arg_3.b & ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2355u | global2.x, 14u)], 14u)], reverseBits(4294967295u), arg_3.b.x, ~global2.x));
    let var_0 = select(vec3<i32>(_wgslsmith_div_i32(~(i32(-1i) * -2147483647i), min(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_3.a.x, arg_3.a.x), vec3<i32>(arg_3.a.x, arg_3.a.x, -57552i)))), -_wgslsmith_dot_vec3_i32(vec3<i32>(24180i, -2147483647i, -9077i), u_input.a), ~(firstTrailingBit(-1i) | 1i)), firstTrailingBit(select(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, arg_3.a.x, u_input.a.x), vec3<i32>(-1i, 0i, arg_3.a.x)), vec3<i32>(u_input.a.x, u_input.a.x, arg_3.a.x)), max(~vec3<i32>(arg_3.a.x, u_input.a.x, 22906i), vec3<i32>(1i, 7635i, -2147483647i) | u_input.a), vec3<bool>(true, arg_0.x, all(vec2<bool>(true, arg_0.x))))), !arg_0);
    var var_1 = !select(select(vec3<bool>(false, true, false), !(!arg_0), all(!arg_0)), !(!(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), select(arg_0, !select(vec3<bool>(true, false, false), vec3<bool>(arg_0.x, true, true), vec3<bool>(false, false, false)), arg_0));
    var_1 = vec3<bool>(false, select(all(vec2<bool>(arg_0.x, false)) & true, arg_0.x, !any(arg_0)), (_wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, -34633i), firstTrailingBit(-1i)) << ((~global0[_wgslsmith_index_u32(40621u, 14u)] >> (118u % 32u)) % 32u)) < (_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 51030i, arg_3.a.x, u_input.a.x), firstTrailingBit(vec4<i32>(u_input.a.x, var_0.x, 1i, var_0.x))) & -2147483647i));
    return Struct_3(arg_3);
}

fn func_1() -> Struct_1 {
    global1 = array<vec3<f32>, 1>();
    let var_0 = 286f;
    let var_1 = func_4(!select(vec3<bool>(true, true, true), vec3<bool>(func_2(u_input.a, false), true, select(true, true, false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), Struct_2(1f), var_0, Struct_1(-vec3<i32>(u_input.a.x, 1i, -2147483647i), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.b, 8714u, 85547u), vec4<u32>(global2.x, countOneBits(0u), abs(u_input.b), global2.x)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~64982u, ~(global2.x | 1u)), 1u)]));
    global2 = min(vec4<u32>(44812u, abs(~4294967295u), min(firstLeadingBit(u_input.b), _wgslsmith_clamp_u32(4294967295u, 1u, global2.x)), global0[_wgslsmith_index_u32(firstTrailingBit(abs(global2.x)), 14u)]) | (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(57074u, global0[_wgslsmith_index_u32(global2.x, 14u)], u_input.b), global2.xxw), 4294967295u, 50413u, func_4(vec3<bool>(true, true, true), Struct_2(275f), -1000f, Struct_1(vec3<i32>(-29003i, 2147483647i, var_1.a.a.x), var_1.a.b, vec3<f32>(291f, var_1.a.c.x, var_1.a.c.x))).a.b.x) << (var_1.a.b % vec4<u32>(32u))), reverseBits(~(~firstLeadingBit(vec4<u32>(4294967295u, global2.x, global2.x, global0[_wgslsmith_index_u32(1u, 14u)])))));
    global2 = ~firstTrailingBit(select(var_1.a.b, ~(~var_1.a.b), vec4<bool>(all(vec4<bool>(false, true, false, false)), true, 116f > var_1.a.c.x, true)));
    return func_4(!select(vec3<bool>(all(vec2<bool>(true, true)), false, true), vec3<bool>(true, false, u_input.a.x == 1i), vec3<bool>(var_1.a.a.x != u_input.a.x, true, select(false, false, true))), Struct_2(var_0), 2139f, var_1.a).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.wy;
    global0 = array<u32, 14>();
    let var_1 = ~select(_wgslsmith_mod_u32(min(abs(0u), ~u_input.b), u_input.b), var_0.x, u_input.a.x > max(u_input.a.x | u_input.a.x, u_input.a.x));
    let var_2 = func_1();
    global2 = ~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_2.b.x, ~u_input.b), ~select(1u, 102742u, false)), firstTrailingBit(_wgslsmith_sub_u32(var_0.x, ~30792u)), _wgslsmith_sub_u32(~var_1, 1u), 52384u);
    var var_3 = func_4(select(vec3<bool>(all(vec3<bool>(true, true, false)), func_2(countOneBits(var_2.a), global0[_wgslsmith_index_u32(0u, 14u)] <= 4294967295u), true), vec3<bool>(true, false, any(vec3<bool>(true, true, true))), vec3<bool>(~u_input.b != 1u, true, false)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) * func_1().c.x))), -1861f, func_4(vec3<bool>(select(true, true, false) == true, _wgslsmith_f_op_f32(-2230f + -429f) != _wgslsmith_f_op_f32(var_2.c.x - var_2.c.x), true), Struct_2(-120f), -222f, func_1()).a);
    global0 = array<u32, 14>();
    var_3 = func_4(!vec3<bool>((0u >= var_3.a.b.x) || true, (var_3.a.b.x == var_0.x) || true, true), Struct_2(_wgslsmith_f_op_f32(floor(-876f))), -1036f, Struct_1(-u_input.a, func_1().b, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, var_3.a.c.x, -2331f) + var_2.c)));
    var var_4 = _wgslsmith_sub_vec3_u32(vec3<u32>(1u, _wgslsmith_div_u32(func_3(~(-9575i), ~vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(var_2.a.x, var_3.a.a.x), vec2<i32>(-2147483647i, -72245i))).x, u_input.b), var_0.x), global2.yww);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.a.c.x, _wgslsmith_f_op_f32(-var_3.a.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.c.x)))), vec3<f32>(func_4(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), Struct_2(735f), _wgslsmith_div_f32(-516f, var_2.c.x), func_1()).a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1385f, var_2.c.x, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.a.c.x)) * _wgslsmith_f_op_f32(max(var_2.c.x, var_3.a.c.x))))), global2.xx, var_3.a.c.x);
}

