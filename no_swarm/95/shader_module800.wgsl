struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec2<bool>, 12>;

var<private> global2: array<bool, 25> = array<bool, 25>(true, false, false, true, false, true, false, false, false, false, false, false, false, true, false, true, false, true, false, true, false, false, true, true, true);

var<private> global3: Struct_1;

var<private> global4: i32 = -1i;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(global3.c.x, 19642u, global3.c.x, global3.a.x)), abs(vec4<u32>(19831u, 20512u, 4294967295u, global3.a.x))), ~(~(~reverseBits(vec4<u32>(32127u, global3.c.x, global3.c.x, global3.d)))));
    let var_1 = ~16073u != (_wgslsmith_add_u32(~1u, _wgslsmith_mod_u32(1u, ~var_0.x)) >> (var_0.x % 32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1097f, 319f, -720f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1095f, 531f, 1000f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-942f, -998f, global0.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1065f, 564f, 1883f))))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, 155f, global0.x), vec3<f32>(global0.x, global0.x, -641f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -678f))), _wgslsmith_div_vec3_f32(vec3<f32>(523f, global0.x, global0.x), vec3<f32>(-885f, 472f, -200f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x - -620f), _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(min(global0.x, global0.x))))));
    var var_3 = any(select(vec3<bool>(true, any(vec2<bool>(true, true)), any(select(vec3<bool>(global3.b.x, global2[_wgslsmith_index_u32(4294967295u, 25u)], false), vec3<bool>(global2[_wgslsmith_index_u32(4274u, 25u)], var_1, false), vec3<bool>(true, true, false)))), vec3<bool>(false, any(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 25u)])), true), 430f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, -1000f, global2[_wgslsmith_index_u32(global3.c.x, 25u)])))));
    var var_4 = abs(_wgslsmith_mod_vec4_u32(max(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, global3.c.x, var_0.x, 39389u), vec4<u32>(4294967295u, 4294967295u, 0u, 17602u)), select(var_0 & vec4<u32>(global3.c.x, var_0.x, 56016u, var_0.x), vec4<u32>(4053u, var_0.x, 0u, 1u), u_input.a > -4373i)), var_0));
    return global3.b.x;
}

fn func_2() -> Struct_1 {
    var var_0 = 0u;
    global3 = Struct_1(global3.c ^ vec2<u32>(~_wgslsmith_div_u32(global3.c.x, global3.c.x), 79121u), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(global3.c.x, 25u)])), global1[_wgslsmith_index_u32((_wgslsmith_clamp_u32(global3.a.x, 1u, 1u) & global3.a.x) >> (~_wgslsmith_mult_u32(global3.d, global3.a.x) % 32u), 12u)], global2[_wgslsmith_index_u32(0u | (global3.c.x & (global3.c.x & global3.a.x)), 25u)]), ~global3.a, _wgslsmith_mult_u32(~(~_wgslsmith_add_u32(4294967295u, global3.c.x)), reverseBits(1u)));
    global4 = ~_wgslsmith_mult_i32(~55698i, _wgslsmith_mod_i32(1i, u_input.b));
    var var_1 = Struct_1(_wgslsmith_mod_vec2_u32(abs(global3.c), min(~max(vec2<u32>(82947u, global3.c.x), global3.a), ~countOneBits(global3.c))), !global3.b, _wgslsmith_mult_vec2_u32(~vec2<u32>(130874u, global3.a.x), ~(~global3.c) << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(568u, global3.a.x, 113003u, global3.c.x), vec4<u32>(17838u, global3.a.x, global3.a.x, 1u)), global3.a.x) % vec2<u32>(32u))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(global3.c.x, global3.c.x, 45685u)), max(~vec3<u32>(9278u, global3.d, 14281u), select(vec3<u32>(global3.a.x, global3.d, global3.d), vec3<u32>(global3.c.x, global3.c.x, global3.a.x), vec3<bool>(global3.b.x, true, false)))), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global3.a.x, 0u, 59673u) >> (vec3<u32>(51772u, global3.a.x, global3.a.x) % vec3<u32>(32u)), vec3<u32>(0u, 1u, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(global3.d, global3.a.x, global3.c.x) >> (vec3<u32>(global3.d, global3.a.x, global3.a.x) % vec3<u32>(32u)), vec3<u32>(0u, 34297u, 1u)), ~(~vec3<u32>(global3.a.x, 45638u, 0u)))));
    let var_2 = global0.x;
    return Struct_1(~(vec2<u32>(var_1.d, 1u) << (_wgslsmith_mult_vec2_u32(vec2<u32>(global3.d, global3.c.x), ~vec2<u32>(global3.c.x, 0u)) % vec2<u32>(32u))), vec2<bool>(!all(global1[_wgslsmith_index_u32(4294967295u, 12u)]) & true, func_3(vec2<i32>(u_input.a << (6871u % 32u), i32(-1i) * -993i), abs(vec3<i32>(u_input.a, u_input.a, u_input.b) << (vec3<u32>(var_1.a.x, 31532u, var_1.c.x) % vec3<u32>(32u))))), vec2<u32>(~12602u, select(global3.c.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.x, global3.d, 1u, 0u), select(vec4<u32>(0u, var_1.c.x, global3.c.x, 4294967295u), vec4<u32>(var_1.c.x, global3.d, var_1.a.x, 4294967295u), false)), select(false, var_1.b.x, false) || global2[_wgslsmith_index_u32(var_1.a.x, 25u)])), select(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global3.a.x, 8991u, global3.d)), ~(~vec3<u32>(4294967295u, global3.c.x, var_1.d))), global3.a.x, false));
}

fn func_1() -> u32 {
    global1 = array<vec2<bool>, 12>();
    var var_0 = func_2();
    var_0 = Struct_1(vec2<u32>(27236u, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(global3.d, var_0.d), abs(global3.a.x))), !global3.b, var_0.c << (_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~var_0.a, vec2<u32>(16480u, 4294967295u)), firstTrailingBit(~var_0.a)) % vec2<u32>(32u)), 0u);
    let var_1 = 302f;
    var var_2 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(global3.c.x, 1u), _wgslsmith_div_vec2_u32(~var_0.c, global3.c));
    return _wgslsmith_mod_u32(6596u, var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((select(countOneBits(vec2<u32>(global3.d, 0u)), ~global3.a, global2[_wgslsmith_index_u32(30725u, 25u)] | global2[_wgslsmith_index_u32(global3.a.x, 25u)]) ^ abs(vec2<u32>(global3.d, 245u))) >> (global3.c % vec2<u32>(32u)), global1[_wgslsmith_index_u32(4294967295u, 12u)], global3.a, func_1());
    global3 = var_0;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-1043f - global0.x)) - global0.x)), -401f, 1769f);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-678f - -1421f), _wgslsmith_div_f32(global0.x, global0.x), -1125f)))));
    global1 = array<vec2<bool>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(77133u, ~1u) & min(global3.a, ~select(global3.c, vec2<u32>(global3.d, var_0.d), global3.b)), vec2<u32>(~min(_wgslsmith_add_u32(9858u, 49343u), func_2().c.x), global3.d));
}

