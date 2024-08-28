struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: i32;

var<private> global2: Struct_2;

var<private> global3: array<i32, 25>;

var<private> global4: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> bool {
    global3 = array<i32, 25>();
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(8935u, select(abs(reverseBits(global0[_wgslsmith_index_u32(0u, 27u)])), ~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16207u, 27u)], 27u)], 27u)], false)), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(45113u, 27u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(47288u, 27u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 32904u)), 27u)]), 27u)] << (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(34827u, global0[_wgslsmith_index_u32(105178u, 27u)]), ~vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18583u, 27u)], 27u)])), firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(15659u, global0[_wgslsmith_index_u32(1u, 27u)]), vec2<u32>(50386u, global0[_wgslsmith_index_u32(45061u, 27u)]), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 27u)])))) % 32u), 27u)]);
    global3 = array<i32, 25>();
    let var_1 = Struct_4(u_input.a.xyy, u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -508f)), true && all(!vec4<bool>(global2.a.x, true, global2.a.x, false)), Struct_3(Struct_1(global3[_wgslsmith_index_u32(6300u, 25u)], 31215u != min(var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71282u, 27u)], 27u)]), select(select(vec3<bool>(true, true, true), vec3<bool>(global2.a.x, global4.x, global2.a.x), vec3<bool>(false, true, true)), vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(global2.a.x, global4.x, global4.x)), abs(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 27u)], 27u)], 27u)])))));
    global1 = -2147483647i;
    return false;
}

fn func_2() -> u32 {
    var var_0 = min(firstLeadingBit(u_input.a.yx), -(~select(vec2<i32>(u_input.a.x, 0i), u_input.a.xy, false))) >> (vec2<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u) ^ ~global0[_wgslsmith_index_u32(74704u, 27u)], 27u)], ~select(32609u, global0[_wgslsmith_index_u32(0u, 27u)], global4.x)), ~31139u & global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(18466u, 27u)], global0[_wgslsmith_index_u32(48964u, 27u)]), 27u)], 27u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(17182u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)])), 27u)]) % vec2<u32>(32u));
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(35491u, 23318u, 0u) & vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2076u, 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], global0[_wgslsmith_index_u32(0u, 27u)]), vec3<u32>(3979u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 61507u) | vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)], 4294967295u)), 36825u), global0[_wgslsmith_index_u32(~4294967295u, 27u)], ~abs(~0u)) << (~(abs(vec3<u32>(global0[_wgslsmith_index_u32(47132u, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 27u)], 27u)], 27u)], 27u)], 1u)) | abs(_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65997u, 27u)], 27u)], 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(1u, 27u)], 0u), vec3<u32>(12487u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 100171u)))) % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(270f, -553f)) - _wgslsmith_div_vec2_f32(vec2<f32>(321f, -719f), vec2<f32>(406f, 530f)))));
    global4 = vec3<bool>(global4.x, all(vec4<bool>(!(global4.x | false), !(false || global4.x), -2147483647i < _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.b), u_input.a.zz), func_3())), any(vec3<bool>(any(select(vec3<bool>(true, global2.a.x, false), vec3<bool>(true, true, true), vec3<bool>(true, global2.a.x, true))), true, func_3())));
    var var_3 = Struct_3(Struct_1(u_input.a.x, ~var_1.x > (var_1.x | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~50391u, 27u)], 27u)]), select(!(!vec3<bool>(global2.a.x, global2.a.x, false)), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(global4.x, global2.a.x, true)), select(vec3<bool>(false, global4.x, global4.x), select(vec3<bool>(global2.a.x, false, global2.a.x), vec3<bool>(global2.a.x, global4.x, global2.a.x), global4.x), vec3<bool>(global2.a.x, false, global4.x))), ~vec2<u32>(global0[_wgslsmith_index_u32(~var_1.x, 27u)], ~46059u)));
    return 1930u;
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_2(vec2<bool>(true, true));
    var var_1 = Struct_4(firstTrailingBit(~vec3<i32>(u_input.a.x, 2147483647i, -1i)), _wgslsmith_div_i32(-9145i, -1i << (global0[_wgslsmith_index_u32(abs(85067u) | func_2(), 27u)] % 32u)), -1440f, global2.a.x, Struct_3(Struct_1(-2147483647i, global4.x, vec3<bool>(var_0.a.x, !global4.x, false), vec2<u32>(global0[_wgslsmith_index_u32(0u, 27u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15005u, 27u)], 27u)], 27u)]))));
    var var_2 = Struct_4(vec3<i32>(_wgslsmith_mult_i32(abs(var_1.a.x), 1i), -40982i, i32(-1i) * -1i), abs(var_1.b), _wgslsmith_f_op_f32(var_1.c + 1446f), -2147483647i == u_input.a.x, var_1.e);
    var_2 = Struct_4(var_1.a, reverseBits(u_input.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)))), func_3(), Struct_3(Struct_1(select(global3[_wgslsmith_index_u32(29422u, 25u)], 8664i, var_2.d) >> (_wgslsmith_clamp_u32(3606u, var_1.e.a.d.x, global0[_wgslsmith_index_u32(31227u, 27u)]) % 32u), !var_0.a.x, var_2.e.a.c, select(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.e.a.d.x, 20062u), var_2.e.a.d), ~var_2.e.a.d, true))));
    global2 = var_0;
    return Struct_4(reverseBits(vec3<i32>(-(~u_input.a.x), u_input.b, -1038i)), _wgslsmith_dot_vec2_i32(-u_input.a.yw, vec2<i32>(-u_input.b & _wgslsmith_mod_i32(var_1.e.a.a, u_input.a.x), 37580i)), -1200f, false, var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~6447u, 27u)], 25u)], 2147483647i, ~_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4238u, 27u)], 27u)], 25u)])), u_input.a.xxw);
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1198f, -737f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(773f, 221f)))) - vec2<f32>(-785f, -977f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-785f, 719f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(101f, -597f))))));
    let var_2 = func_1();
    let var_3 = var_2.e.a.d.x;
    global3 = array<i32, 25>();
    var var_4 = vec4<bool>(global4.x, _wgslsmith_mod_u32(~(~var_2.e.a.d.x), global0[_wgslsmith_index_u32(var_3, 27u)]) <= _wgslsmith_mod_u32(~4294967295u >> (~var_3 % 32u), global0[_wgslsmith_index_u32(select(min(85945u, 19241u), firstLeadingBit(10131u), false), 27u)]), all(select(select(!vec4<bool>(var_2.d, true, global4.x, global4.x), select(vec4<bool>(true, var_2.e.a.c.x, true, var_2.d), vec4<bool>(false, var_2.d, global4.x, false), var_2.e.a.b), global2.a.x), vec4<bool>(false, global2.a.x, select(global2.a.x, true, global2.a.x), !global4.x), global4.x)), any(global2.a));
    global0 = array<u32, 27>();
    var var_5 = func_1().e.a.b;
    var var_6 = -433f;
    let x = u_input.a;
    s_output = StorageBuffer(-285f, _wgslsmith_f_op_vec4_f32(vec4<f32>(-261f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(step(-1000f, -1328f)))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c, -151f) - _wgslsmith_f_op_f32(f32(-1f) * -252f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2114f, var_1.x, -750f, 554f), vec4<f32>(-1000f, var_2.c, var_2.c, var_1.x))))), ~(~(select(vec3<u32>(var_3, 51291u, 15427u), vec3<u32>(var_2.e.a.d.x, 29839u, var_2.e.a.d.x), var_2.e.a.b) | ~vec3<u32>(var_3, var_3, 4294967295u))));
}

