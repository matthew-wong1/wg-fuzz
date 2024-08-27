struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_3,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(34465u, 62345u, 93389u, 51704u, 32636u, 59605u, 0u, 4294967295u, 1u, 0u, 2693u, 1u, 71027u, 1u, 1u, 87951u, 0u, 7062u, 1u, 65401u);

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 1u, 4294967295u, 24061u);

var<private> global2: Struct_3 = Struct_3(true, Struct_2(2147483647i, 0u, vec4<i32>(11575i, 15574i, -1i, 0i), -1i, Struct_1(-1352f, 0u, vec2<f32>(-903f, -1007f))), vec3<u32>(44715u, 73401u, 36535u), 0i, 13467u);

var<private> global3: array<bool, 4> = array<bool, 4>(false, true, false, false);

var<private> global4: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global3 = array<bool, 4>();
    var var_0 = global2.b.e.c;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.e.c.x, global2.b.e.c.x, global2.b.e.c.x, 968f))))));
    var var_2 = Struct_1(-108f, 9914u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global2.b.e.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.e.a, -275f)), vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 4u)]))), global2.b.e.c))));
    var var_3 = Struct_3(false, Struct_2(global2.b.c.x, _wgslsmith_add_u32((u_input.a.x | var_2.b) | global0[_wgslsmith_index_u32(1u, 20u)], abs(_wgslsmith_mod_u32(19478u, var_2.b))), global2.b.c, u_input.c.x, global2.b.e), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(25705u, global1.x, _wgslsmith_add_u32(53699u, 53887u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.b, u_input.a.x, 1u), vec3<u32>(global1.x, u_input.b, 1u)) ^ firstLeadingBit(global1.wyw)), vec3<u32>(~0u, 1u, ~(~1u))), -u_input.c.x, ~global1.x);
    return ~(abs(_wgslsmith_clamp_i32(-global2.d, _wgslsmith_div_i32(var_3.b.d, var_3.b.c.x), _wgslsmith_add_i32(var_3.b.d, 0i))) & 2147483647i);
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<i32>, arg_3: vec4<i32>) -> vec2<bool> {
    global1 = u_input.a;
    var var_0 = vec3<u32>(4294967295u, arg_0.x, 15518u);
    global3 = array<bool, 4>();
    var var_1 = Struct_1(global2.b.e.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~4294967295u, 20u)], 20u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.b.e.c * vec2<f32>(global2.b.e.c.x, 258f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.b.e.c.x, arg_1))))))));
    let var_2 = Struct_4(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-global2.b.e.a))))), Struct_3(select(max(u_input.c.x, 42953i) >= arg_2.x, global2.a, !(35750i > global2.b.a)), Struct_2(func_3(), ~global2.e & (var_1.b << (global1.x % 32u)), firstLeadingBit(-arg_3), 40438i, Struct_1(-1292f, ~arg_0.x, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(814f, 477f), vec2<f32>(var_1.c.x, -397f))))), vec3<u32>(0u, var_0.x, 33515u), _wgslsmith_sub_i32(max(arg_3.x, -2147483647i), -32777i | arg_3.x) ^ (reverseBits(u_input.c.x) >> (var_0.x % 32u)), 2647u), vec3<u32>(_wgslsmith_add_u32(15387u, global2.c.x), _wgslsmith_div_u32(0u, global1.x), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(min(vec2<u32>(4294967295u, 0u), global2.c.yx), firstLeadingBit(u_input.a.xz)))));
    return !vec2<bool>(var_2.a, any(select(vec2<bool>(true, true), select(vec2<bool>(global2.a, false), vec2<bool>(global3[_wgslsmith_index_u32(var_2.c.c.x, 4u)], global3[_wgslsmith_index_u32(global2.b.b, 4u)]), vec2<bool>(false, false)), vec2<bool>(global3[_wgslsmith_index_u32(17388u, 4u)], true))));
}

fn func_2(arg_0: i32) -> Struct_4 {
    var var_0 = -abs(arg_0);
    let var_1 = _wgslsmith_div_vec2_i32(~(firstTrailingBit(u_input.c.zy) << (~global2.c.xy % vec2<u32>(32u))), u_input.c.yy) | select(_wgslsmith_mult_vec2_i32(firstLeadingBit(~u_input.c.yx), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), u_input.c.xx ^ u_input.c.xy)), global2.b.c.wx, func_4(~u_input.a.zw, global2.b.e.a, global2.b.c.zx, vec4<i32>(_wgslsmith_sub_i32(u_input.c.x, 1i), reverseBits(u_input.c.x), max(arg_0, arg_0), func_3())));
    var var_2 = max(firstTrailingBit(_wgslsmith_mod_i32(i32(-1i) * -4015i, abs(-2147483647i))), -max(var_1.x, _wgslsmith_dot_vec4_i32(global2.b.c, reverseBits(global2.b.c))));
    let var_3 = global2.b.e;
    global4 = array<vec3<bool>, 17>();
    return Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.x + 1967f) * _wgslsmith_f_op_f32(global2.b.e.a - -1310f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.c.x, var_3.c.x) - -940f)), var_3.a, Struct_3(var_1.x > 2147483647i, global2.b, global2.c, _wgslsmith_dot_vec4_i32(vec4<i32>(~51110i, 1i, u_input.c.x, abs(-8291i)), global2.b.c), ~var_3.b), global1.xww);
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: i32, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_1(920f, 4294967295u, arg_1.c.b.e.c);
    global2 = func_2(-_wgslsmith_sub_i32(~(0i ^ arg_0), -(~0i))).c;
    let var_1 = arg_3;
    var var_2 = select(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(firstLeadingBit(arg_1.d.x), max(4294967295u, 4294967295u))), vec2<u32>(~0u, u_input.b)), vec2<u32>(countOneBits(firstLeadingBit(46037u)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(43405u, var_1.b), 1u), 4294967295u)), !vec2<bool>(!global2.a || any(vec4<bool>(arg_1.c.a, true, true, false)), ~8109u < u_input.b));
    let var_3 = global2.c;
    return _wgslsmith_f_op_f32(step(-958f, arg_1.c.b.e.c.x));
}

fn func_1() -> Struct_1 {
    var var_0 = -_wgslsmith_sub_vec3_i32(select(vec3<i32>(~u_input.c.x, 31183i, -2147483647i), vec3<i32>(-52039i, _wgslsmith_dot_vec4_i32(vec4<i32>(43263i, u_input.c.x, -2147483647i, 1i), vec4<i32>(-34029i, -44480i, u_input.c.x, -30893i)), ~u_input.c.x), vec3<bool>(all(vec4<bool>(global3[_wgslsmith_index_u32(1u, 4u)], global2.a, global3[_wgslsmith_index_u32(4294967295u, 4u)], true)), global3[_wgslsmith_index_u32(28460u, 4u)], all(vec4<bool>(false, global2.a, false, true)))), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(min(vec3<i32>(u_input.c.x, u_input.c.x, -1i), global2.b.c.zxz), select(vec3<i32>(-7863i, -23914i, u_input.c.x), global2.b.c.www, vec3<bool>(true, global2.a, false))), global2.b.c.wzz));
    var var_1 = vec3<bool>(select(!(all(vec2<bool>(true, true)) & true), global2.a, !((global2.a & global2.a) && any(vec2<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 4u)], false)))), select(global3[_wgslsmith_index_u32(4294967295u, 4u)], abs(~global0[_wgslsmith_index_u32(0u, 20u)]) <= u_input.a.x, true), global3[_wgslsmith_index_u32(~global1.x ^ max(12947u, min(~global0[_wgslsmith_index_u32(1u, 20u)], global2.b.b)), 4u)]);
    var var_2 = vec3<u32>(firstLeadingBit(1u), 32107u, global1.x);
    var var_3 = countOneBits(firstTrailingBit(_wgslsmith_add_vec2_i32(global2.b.c.xz, global2.b.c.ww >> (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.b), var_2.xy) % vec2<u32>(32u)))));
    global3 = array<bool, 4>();
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(~1i, func_2(2147483647i), 1i >> ((global1.x << (global1.x % 32u)) % 32u), func_2(_wgslsmith_dot_vec2_i32(var_0.yz, var_0.yz)).c.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -416f), 223f)), var_2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1078f, _wgslsmith_f_op_f32(abs(global2.b.e.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = u_input.a;
    var var_1 = Struct_4(func_4(vec2<u32>(1u | global0[_wgslsmith_index_u32(36121u, 20u)], var_0.b) >> ((vec2<u32>(28571u, global0[_wgslsmith_index_u32(15222u, 20u)]) & _wgslsmith_mod_vec2_u32(global1.zz, global1.yw)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(831f, 880f)) * var_0.c.x)), ~reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(-47582i, global2.b.d), vec2<i32>(global2.d, 0i))), vec4<i32>(~1i, -abs(-1i), 16164i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b.d, 0i, 8759i, -52351i), vec4<i32>(-1i, u_input.c.x, 31171i, -2147483647i)), u_input.c.x))).x, global2.b.e.a, func_2(u_input.c.x).c, ~abs(_wgslsmith_clamp_vec3_u32(u_input.a.ywx, ~global1.yww, countOneBits(vec3<u32>(1u, 28138u, global0[_wgslsmith_index_u32(1u, 20u)])))));
    var var_2 = select(!vec4<bool>(any(!global4[_wgslsmith_index_u32(var_0.b, 17u)]), !all(vec4<bool>(global2.a, global3[_wgslsmith_index_u32(var_1.d.x, 4u)], false, false)), var_1.c.a, !global2.a), !vec4<bool>(!all(global4[_wgslsmith_index_u32(u_input.a.x, 17u)]), global2.b.e.a == _wgslsmith_f_op_f32(f32(-1f) * -481f), !func_4(vec2<u32>(var_0.b, 1u), var_1.c.b.e.a, vec2<i32>(global2.d, global2.b.d), vec4<i32>(var_1.c.b.d, -33710i, u_input.c.x, var_1.c.d)).x, func_4(global2.c.zx, _wgslsmith_div_f32(var_1.b, 410f), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, global2.b.c.x), vec2<i32>(global2.d, -56404i)), var_1.c.b.c).x), false);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1757f - -480f) - var_0.a);
    var_1 = Struct_4(false, -1000f, Struct_3(false, var_1.c.b, u_input.a.ywy, u_input.c.x, ~global2.e), vec3<u32>(~global1.x, global2.b.e.b, ~114249u ^ ~(68333u >> (var_0.b % 32u))));
    let var_4 = 1108f;
    let var_5 = _wgslsmith_mod_vec2_u32(~vec2<u32>(15486u, _wgslsmith_mod_u32(global1.x, ~global2.b.e.b)), _wgslsmith_add_vec2_u32(vec2<u32>(global2.e, var_0.b), ~max(global2.c.zx, ~var_1.c.c.yz)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(min(global2.b.c.ywy, global2.b.c.zwz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1446f, var_4, 456f, var_1.b), vec4<f32>(-375f, var_4, var_4, var_0.a)) * _wgslsmith_div_vec4_f32(vec4<f32>(-882f, -1000f, var_4, var_0.c.x), vec4<f32>(global2.b.e.a, 1000f, 795f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-812f, var_0.a, 1136f, var_1.b), vec4<f32>(var_1.c.b.e.c.x, -1000f, 1821f, -955f))))))), ~(~vec2<u32>(4294967295u, _wgslsmith_div_u32(global1.x, 32686u))), 1892f, ~global2.e);
}

