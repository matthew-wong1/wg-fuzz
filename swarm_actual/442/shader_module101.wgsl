struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(-1i, 9027u, -732f), Struct_2(-19882i, 0u, 2068f), Struct_2(-17862i, 1u, -536f), Struct_2(i32(-2147483648), 4294967295u, 437f), Struct_2(25174i, 47679u, 1266f), Struct_2(i32(-2147483648), 1u, 232f));

var<private> global1: Struct_1;

var<private> global2: Struct_3;

var<private> global3: array<f32, 12>;

var<private> global4: vec3<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> vec3<bool> {
    global2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b.yw) - vec2<f32>(global4.x, 2538f))) + _wgslsmith_f_op_vec2_f32(-global4.xy)), global2.b, Struct_2(global1.c.x, arg_2.b | 1u, _wgslsmith_f_op_f32(min(arg_2.c, global2.b.d))));
    var var_0 = 266f;
    let var_1 = -max(-1i, _wgslsmith_add_i32(firstTrailingBit(global1.c.x), global2.c.a));
    global3 = array<f32, 12>();
    global3 = array<f32, 12>();
    return select(vec3<bool>(arg_3, !any(select(vec3<bool>(arg_3, arg_3, true), vec3<bool>(arg_3, false, arg_3), true)), arg_3), !vec3<bool>(true, !select(arg_3, arg_3, false), false), arg_3);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec4<i32>, arg_3: vec3<bool>) -> f32 {
    var var_0 = vec4<bool>(false, false, any(vec2<bool>(select(true, arg_3.x, arg_3.x) & any(vec4<bool>(arg_3.x, arg_3.x, true, arg_3.x)), true)), any(arg_3.zy));
    var_0 = vec4<bool>(arg_3.x, arg_3.x, true | (!(arg_3.x && true) && true), !all(!vec4<bool>(false, arg_3.x, var_0.x, arg_3.x)));
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    var_0 = !vec4<bool>(all(var_0.wyx), true, !(1u < _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, 1150u, 1u, u_input.a.x))), all(vec3<bool>(true, true, select(true, arg_3.x, var_0.x))));
    return _wgslsmith_f_op_f32(floor(arg_0.a.x));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_1) -> u32 {
    global1 = arg_2;
    global0 = array<Struct_2, 6>();
    let var_0 = Struct_2(-max(max(global1.c.x, 2147483647i) & -u_input.c, ~firstTrailingBit(u_input.b)), 0u, arg_2.d);
    var var_1 = 1778f;
    global4 = vec3<f32>(_wgslsmith_f_op_f32(127f * _wgslsmith_f_op_f32(func_4(Struct_3(vec2<f32>(258f, global2.a.x), arg_1.b, arg_1.c), 1952f, max(vec4<i32>(2147483647i, 3497i, arg_1.c.a, 2147483647i) ^ vec4<i32>(arg_2.c.x, global1.c.x, 2147483647i, u_input.c), ~vec4<i32>(-1i, arg_1.c.a, 11069i, var_0.a)), func_3(_wgslsmith_mult_vec4_i32(vec4<i32>(global2.c.a, arg_1.b.c.x, -9275i, arg_2.a), vec4<i32>(global1.a, 2147483647i, -1i, -25484i)), -1335f, Struct_2(9670i, 1u, -1138f), true)))), _wgslsmith_f_op_f32(2086f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.b, 12u)]), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.a.x + arg_2.d))) + global3[_wgslsmith_index_u32(global2.c.b, 12u)]));
    return ~68398u | global2.c.b;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> bool {
    let var_0 = Struct_3(global4.xy, Struct_1(min(2147483647i, _wgslsmith_div_i32(2147483647i, _wgslsmith_add_i32(-34380i, arg_1.x))), _wgslsmith_f_op_vec4_f32(trunc(global1.b)), -select(vec3<i32>(u_input.b, 0i, 32355i), global2.b.c ^ arg_1, select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(24691u, 12u)] + -1284f) + 506f)))), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(55188u, ~u_input.a.x), 6u)]);
    let var_1 = ~_wgslsmith_sub_u32(~abs(func_2(vec4<u32>(0u, 12169u, 0u, 0u), Struct_3(vec2<f32>(-437f, 356f), var_0.b, Struct_2(global1.c.x, 1u, -767f)), global2.b)), _wgslsmith_div_u32(_wgslsmith_div_u32(firstTrailingBit(var_0.c.b), 1u & global2.c.b), ~arg_0 ^ 79048u));
    var var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, 37827u), ~(~arg_0)), ~_wgslsmith_mod_u32(func_2(u_input.a, Struct_3(vec2<f32>(1029f, global3[_wgslsmith_index_u32(u_input.a.x, 12u)]), global2.b, var_0.c), global2.b), max(4294967295u, 29649u)), 0u, abs(8243u)), countOneBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(global2.c.b, u_input.a.x, 0u, 4294967295u), _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(123570u, u_input.a.x, 4294967295u, 0u), vec4<u32>(var_1, global2.c.b, u_input.a.x, 1u)) | _wgslsmith_add_vec4_u32(vec4<u32>(var_0.c.b, 16848u, 1u, 0u), u_input.a))));
    var var_3 = ~u_input.a.x;
    var var_4 = ~min(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -1i, u_input.c, 0i), vec4<i32>(global2.b.a, var_0.b.c.x, -58688i, u_input.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(global2.b.a, var_0.c.a, var_0.b.a, global1.c.x), vec4<i32>(global1.a, 2147483647i, -46419i, -37566i)), -vec4<i32>(1i, global2.b.a, global1.a, var_0.b.a)) >> (_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.a.x, 4294967295u, 48753u, 57183u)), u_input.a, vec4<u32>(4294967295u, var_2.x, var_0.c.b, 8006u) << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), min(vec4<i32>(global1.c.x, 28085i, 1i, 11578i), vec4<i32>(var_0.b.a, -36123i, global2.c.a, 23405i) << (u_input.a % vec4<u32>(32u))) | (_wgslsmith_div_vec4_i32(vec4<i32>(-23197i, 0i, arg_1.x, 0i), vec4<i32>(-1i, var_0.b.c.x, arg_1.x, var_0.c.a)) >> (vec4<u32>(13735u, u_input.a.x, 12663u, var_0.c.b) % vec4<u32>(32u))));
    return (var_0.c.b != ~(~60648u)) | !(_wgslsmith_mod_i32(var_4.x, 0i) > 1i);
}

fn func_5(arg_0: u32, arg_1: vec4<bool>, arg_2: u32, arg_3: u32) -> vec2<f32> {
    var var_0 = Struct_3(global4.xy, global2.b, Struct_2(~global1.a, ~1u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(30180u, 12u)])) - _wgslsmith_f_op_f32(floor(global1.d)))))));
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(global1.c.x, 1i, ~global2.c.a, global2.c.a | global1.a), select(reverseBits(vec4<i32>(u_input.c, global1.c.x, 2147483647i, global2.c.a)), ~(~vec4<i32>(-7287i, -18672i, global1.a, global1.c.x)), !vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x))), -reverseBits(vec4<i32>(~global2.c.a, ~(-2147483647i), -6960i, _wgslsmith_clamp_i32(2147483647i, 0i, global2.c.a))));
    global1 = Struct_1(-53460i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global2.b.b)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-165f, _wgslsmith_f_op_f32(floor(-1214f)), _wgslsmith_f_op_f32(func_4(Struct_3(global1.b.zy, Struct_1(3691i, vec4<f32>(global4.x, var_0.b.d, global4.x, global3[_wgslsmith_index_u32(3616u, 12u)]), vec3<i32>(u_input.c, global2.b.c.x, 0i), global1.d), Struct_2(2147483647i, 1u, global4.x)), global3[_wgslsmith_index_u32(0u, 12u)], vec4<i32>(global2.c.a, -2147483647i, 0i, global1.a), vec3<bool>(arg_1.x, true, arg_1.x))), _wgslsmith_f_op_f32(max(-1533f, var_0.b.d))), vec4<f32>(global4.x, _wgslsmith_f_op_f32(max(846f, var_0.b.b.x)), _wgslsmith_f_op_f32(-998f * global3[_wgslsmith_index_u32(arg_3, 12u)]), _wgslsmith_f_op_f32(-1287f * global1.d)), select(arg_1.x, true, arg_1.x)))), _wgslsmith_sub_vec3_i32(global2.b.c, -global1.c), _wgslsmith_f_op_f32(-global4.x));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-global2.a), Struct_1(_wgslsmith_dot_vec2_i32(-(vec2<i32>(-23664i, global2.b.c.x) << (u_input.a.ww % vec2<u32>(32u))), firstTrailingBit(vec2<i32>(1i, -1i))), var_0.b.b, -(~(global2.b.c | global2.b.c)), global2.c.c), Struct_2(global2.c.a, min(1u, _wgslsmith_clamp_u32(18340u >> (arg_2 % 32u), countOneBits(0u), global2.c.b)), -537f));
    let var_3 = Struct_3(global4.yz, Struct_1(var_0.c.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b.b * global1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-313f, 403f, 1408f, var_2.b.d)))), vec3<i32>(60913i, 25598i, _wgslsmith_mod_i32(i32(-1i) * -1i, var_0.b.a)), -347f), Struct_2(2147483647i, ~_wgslsmith_clamp_u32(75187u, firstTrailingBit(604u), ~4294967295u), 2363f));
    return global1.b.wy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_5(84846u, select(vec4<bool>(all(vec2<bool>(true, false)), true | any(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, false)), true && func_1(global2.c.b, global2.b.c)), select(vec4<bool>(true, 35113u < global2.c.b, true, true), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global2.c.c, global3[_wgslsmith_index_u32(global2.c.b, 12u)])))) > global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.a.x), 12u)]), 0u, global2.c.b));
    global1 = Struct_1(reverseBits(abs(1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-703f - 2415f), -2068f, _wgslsmith_f_op_f32(func_4(Struct_3(global4.zx, global2.b, Struct_2(2147483647i, 54307u, -1704f)), 1625f, vec4<i32>(0i, global1.c.x, 1i, global2.c.a), vec3<bool>(false, false, true)))))), global2.b.c ^ global2.b.c, var_0.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-774f, var_0.x) - vec2<f32>(_wgslsmith_f_op_f32(min(-534f, 220f)), -690f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.c.c, -856f))), 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_0.x, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 24363u), 12u)]), _wgslsmith_f_op_f32(-global1.b.x)) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f), _wgslsmith_f_op_f32(global1.d + 1232f)), var_0.x)));
}

