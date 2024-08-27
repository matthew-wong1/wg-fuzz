struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
    d: Struct_2,
    e: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(true, vec2<u32>(38716u, 1u), vec2<f32>(288f, -210f), 51748i, 11524u), -182f, vec4<bool>(false, true, true, false), Struct_2(Struct_1(true, vec2<u32>(4294967295u, 23185u), vec2<f32>(-1183f, 1461f), 24961i, 1u), vec3<u32>(75911u, 18713u, 4294967295u)), 29080i);

var<private> global1: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(16298u, 1u, 1u, 0u), vec4<u32>(1u, 7633u, 0u, 1u), vec4<u32>(4294967295u, 28504u, 1u, 1u), vec4<u32>(43039u, 4294967295u, 1u, 12571u), vec4<u32>(4294967295u, 0u, 17646u, 0u), vec4<u32>(113018u, 6316u, 26997u, 4294967295u), vec4<u32>(0u, 30069u, 2599u, 4294967295u), vec4<u32>(0u, 35697u, 1u, 0u), vec4<u32>(1u, 1802u, 18593u, 4294967295u), vec4<u32>(0u, 4294967295u, 20519u, 0u), vec4<u32>(22185u, 4294967295u, 49692u, 4294967295u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(10216u, 1u, 1u, 2678u), vec4<u32>(22449u, 1u, 26415u, 71466u), vec4<u32>(1u, 2326u, 1u, 4294967295u), vec4<u32>(7269u, 5845u, 4294967295u, 30378u), vec4<u32>(14765u, 42021u, 4294967295u, 58810u), vec4<u32>(72432u, 5807u, 1u, 4294967295u), vec4<u32>(1u, 37858u, 9594u, 50024u), vec4<u32>(41688u, 1u, 44422u, 63596u), vec4<u32>(0u, 121921u, 4294967295u, 38258u), vec4<u32>(1u, 0u, 0u, 20118u), vec4<u32>(0u, 57948u, 10217u, 0u), vec4<u32>(0u, 1u, 29765u, 4284u), vec4<u32>(1u, 98616u, 0u, 0u), vec4<u32>(42470u, 4294967295u, 9716u, 0u), vec4<u32>(4294967295u, 23343u, 49126u, 33240u), vec4<u32>(16304u, 4294967295u, 1u, 78423u), vec4<u32>(4294967295u, 1u, 36091u, 34552u), vec4<u32>(1u, 1u, 84367u, 0u));

var<private> global2: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = global0.d;
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-642f)) + 434f) - var_0.a.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.a.c.x, global0.b))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(840f - 1224f), -766f), _wgslsmith_f_op_f32(floor(global0.d.a.c.x))), var_0.a.c.x)), _wgslsmith_div_f32(var_0.a.c.x, -1000f), -1094f);
    global0 = Struct_4(Struct_1(!var_0.a.a, global0.d.a.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c.x, 1036f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.zz - vec2<f32>(-1087f, 1000f)) + _wgslsmith_f_op_vec2_f32(global0.a.c - vec2<f32>(1004f, -237f)))), ~(~global0.d.a.d), ~36995u), _wgslsmith_f_op_f32(-var_1.x), select(global0.c, !(!select(global0.c, vec4<bool>(false, var_0.a.a, var_0.a.a, global0.a.a), global0.c)), any(global0.c) || (true & (global0.d.a.a != var_0.a.a))), Struct_2(Struct_1(true, var_0.a.b, var_0.a.c, ~_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(13372i, var_0.a.d)), 4294967295u), ~max(select(arg_0.wxx, vec3<u32>(arg_0.x, var_0.a.e, 0u), false), _wgslsmith_add_vec3_u32(var_0.b, u_input.a))), ~(-2147483647i));
    var var_2 = any(!select(select(global0.c.yxz, global0.c.yww, true), select(vec3<bool>(true, false, false), vec3<bool>(true, var_0.a.a, global0.d.a.a), all(vec2<bool>(var_0.a.a, true))), global0.c.x));
    var var_3 = Struct_2(global0.a, _wgslsmith_sub_vec3_u32(~abs(vec3<u32>(global0.d.b.x, arg_0.x, 82256u)), vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(arg_0.x), abs(25886u)), u_input.a.x, _wgslsmith_div_u32(~1u, arg_0.x ^ u_input.a.x))));
    return !global2[_wgslsmith_index_u32(~u_input.a.x >> (u_input.a.x % 32u), 11u)];
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> vec2<bool> {
    let var_0 = Struct_2(global0.a, arg_1.yzy);
    global0 = Struct_4(global0.a, _wgslsmith_f_op_f32(global0.a.c.x + _wgslsmith_f_op_f32(var_0.a.c.x + var_0.a.c.x)), func_3(~vec4<u32>(~14529u, ~79308u, min(4294967295u, var_0.b.x), arg_1.x)), Struct_2(Struct_1(false, ~vec2<u32>(27165u, arg_1.x), global0.d.a.c, -38598i, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(40709u, u_input.a.x, u_input.a.x, global0.d.a.e)), ~global1[_wgslsmith_index_u32(var_0.b.x, 30u)])), vec3<u32>(_wgslsmith_add_u32(max(45140u, 1u), _wgslsmith_add_u32(global0.a.b.x, 1u)), select(~global0.d.b.x, 1u, true), var_0.a.e)), _wgslsmith_add_i32(-35347i, arg_0));
    let var_1 = Struct_4(Struct_1(var_0.a.a, ~countOneBits(reverseBits(arg_1.zx)), global0.d.a.c, var_0.a.d, arg_1.x), 358f, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_1.x, 46271u), abs(arg_1.x), _wgslsmith_mod_u32(63097u, arg_1.x))), _wgslsmith_dot_vec3_u32(global0.d.b, u_input.a ^ vec3<u32>(4294967295u, u_input.a.x, var_0.a.b.x)), ~(~max(u_input.a.x, 51080u))), 11u)], Struct_2(global0.d.a, var_0.b), 7050i);
    global1 = array<vec4<u32>, 30>();
    var var_2 = ~vec2<i32>(_wgslsmith_mod_i32(-5274i, countOneBits(_wgslsmith_mult_i32(global0.e, u_input.b.x))), firstTrailingBit(28374i) ^ _wgslsmith_sub_i32(~global0.a.d, global0.d.a.d));
    return global0.c.yw;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = select(!func_2(global0.d.a.d, vec4<u32>(~43340u, 4294967295u >> (u_input.a.x % 32u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(global0.d.b.x, 30u)]))), !(!global0.c.zw), global0.c.yw);
    var_0 = func_3(global1[_wgslsmith_index_u32(6087u, 30u)]).zy;
    let var_1 = Struct_5(global0.d, !global0.c.zw);
    var var_2 = Struct_1(true, abs(var_1.a.b.yy), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a.a.c.x * 338f), 1084f)), _wgslsmith_f_op_f32(-var_1.a.a.c.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.d.a.c.x) - vec2<f32>(_wgslsmith_f_op_f32(2502f * -1000f), global0.d.a.c.x))), -_wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, 14151i, var_1.a.a.d), -vec3<i32>(var_1.a.a.d, 33515i, global0.a.d), any(vec2<bool>(true, var_1.a.a.a))), ~(vec3<i32>(3878i, u_input.b.x, 57674i) >> (var_1.a.b % vec3<u32>(32u)))), 20428u);
    var var_3 = any(!select(select(!global0.c.yyy, global0.c.www, !vec3<bool>(true, var_0.x, true)), select(!vec3<bool>(global0.c.x, false, var_1.a.a.a), global0.c.zwy, vec3<bool>(false, false, false)), -38739i == firstTrailingBit(-5225i)));
    return Struct_1(false, vec2<u32>(select(var_2.e, u_input.a.x, true), ~abs(4294967295u)), vec2<f32>(630f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), -1052f)), var_1.a.a.d, abs(~(~var_2.e)) & _wgslsmith_sub_u32(reverseBits(4374u), var_1.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.d.a;
    let var_1 = u_input.b;
    var_0 = global0.d.a;
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(var_0.c + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_0.c * _wgslsmith_f_op_vec2_f32(-var_0.c))))));
    let var_3 = 0i;
    var var_4 = Struct_2(func_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(228f + -408f), _wgslsmith_f_op_f32(-var_0.c.x), var_2.a.x, _wgslsmith_f_op_f32(-global0.a.c.x))))), _wgslsmith_sub_vec3_u32(vec3<u32>(21620u, _wgslsmith_add_u32(global0.a.e, _wgslsmith_dot_vec3_u32(u_input.a, global0.d.b)), 0u), countOneBits(vec3<u32>(global0.a.e & 1u, ~u_input.a.x, _wgslsmith_div_u32(var_0.b.x, var_0.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(65509u, firstLeadingBit(1u)), _wgslsmith_div_vec4_i32(vec4<i32>(select(-var_1.x, _wgslsmith_div_i32(4685i, var_3), var_4.a.a), -1i, _wgslsmith_clamp_i32(-24698i >> (var_0.e % 32u), var_1.x, 2090i), i32(-1i) * -1i), firstLeadingBit(~(-vec4<i32>(-2147483647i, var_3, -18802i, 1i)))));
}

