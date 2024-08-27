struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<vec3<i32>, 15>;

var<private> global2: array<u32, 10> = array<u32, 10>(19505u, 12058u, 56271u, 65847u, 55699u, 0u, 491u, 0u, 21145u, 1u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: Struct_2, arg_3: vec3<i32>) -> i32 {
    global2 = array<u32, 10>();
    return -2147483647i;
}

fn func_2(arg_0: bool) -> Struct_4 {
    global0 = array<Struct_1, 6>();
    var var_0 = Struct_3(Struct_2(~vec2<u32>(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(60121u, 10u)], 10u)], 10u)]), global2[_wgslsmith_index_u32(4294967295u, 10u)]), global0[_wgslsmith_index_u32(~11825u, 6u)], 950f, -(~func_3(vec4<f32>(-1272f, 690f, -1185f, -547f), Struct_5(Struct_1(vec2<bool>(false, false), vec4<i32>(-1i, -14349i, 2147483647i, u_input.a.x)), 29263u, vec4<bool>(true, arg_0, arg_0, false)), Struct_2(vec2<u32>(1u, 1u), Struct_1(vec2<bool>(true, arg_0), vec4<i32>(u_input.a.x, 19976i, u_input.a.x, u_input.a.x)), -554f, 20641i, vec4<bool>(arg_0, false, false, false)), vec3<i32>(1i, u_input.a.x, -11342i))), select(!vec4<bool>(false, true, true, arg_0), vec4<bool>(any(vec2<bool>(false, arg_0)), arg_0 != arg_0, all(vec3<bool>(arg_0, arg_0, arg_0)), !arg_0), select(!vec4<bool>(arg_0, arg_0, true, arg_0), !vec4<bool>(true, arg_0, arg_0, false), !vec4<bool>(false, arg_0, arg_0, arg_0)))), Struct_2(vec2<u32>(firstLeadingBit(global2[_wgslsmith_index_u32(32932u, 10u)]), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40662u, 10u)], 10u)], 10u)]), global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 6u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-902f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(253f - 144f)))), 2147483647i, vec4<bool>(arg_0, all(vec2<bool>(false, arg_0)) & arg_0, any(select(vec3<bool>(false, true, true), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, false))), arg_0)), global0[_wgslsmith_index_u32(21606u, 6u)]);
    global1 = array<vec3<i32>, 15>();
    var var_1 = vec4<i32>(-1i, var_0.b.d, firstTrailingBit(firstLeadingBit(u_input.a.x)), 7314i);
    global2 = array<u32, 10>();
    return Struct_4(max(var_0.a.b.b.x, -var_0.b.d), true, Struct_1(select(vec2<bool>(!var_0.a.e.x, true), vec2<bool>(!arg_0, all(vec2<bool>(arg_0, true))), var_0.a.b.a), var_0.c.b), vec2<bool>(var_0.b.b.a.x, !arg_0));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: bool, arg_3: bool) -> Struct_4 {
    let var_0 = func_2(any(!vec3<bool>(true, arg_0.b, !arg_3)));
    let var_1 = _wgslsmith_add_u32(~(abs(global2[_wgslsmith_index_u32(0u, 10u)]) << (0u % 32u)), ~global2[_wgslsmith_index_u32(select(_wgslsmith_div_u32(61731u, abs(1u)), abs(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(63101u, 10u)], 10u)]), true), 10u)]);
    global1 = array<vec3<i32>, 15>();
    var var_2 = Struct_5(func_2(arg_2).c, var_1 | abs(0u), select(!vec4<bool>(arg_2, all(vec3<bool>(false, false, true)), arg_2, false), vec4<bool>(all(select(vec4<bool>(false, arg_0.c.a.x, true, false), vec4<bool>(false, arg_0.d.x, arg_3, true), vec4<bool>(true, arg_3, false, false))), any(vec4<bool>(var_0.d.x, false, arg_2, arg_3)), !(16056i < arg_0.a), arg_2), true));
    global1 = array<vec3<i32>, 15>();
    return var_0;
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: vec4<u32>) -> f32 {
    var var_0 = ~(vec3<u32>(firstLeadingBit(global2[_wgslsmith_index_u32(arg_2.x, 10u)]) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]), arg_2.zyx), (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)] ^ 0u) >> (arg_2.x % 32u), ~max(40354u, 53051u)) ^ arg_2.zyy);
    global2 = array<u32, 10>();
    var var_1 = u_input.a.x;
    let var_2 = func_1(arg_1, -_wgslsmith_div_i32(arg_1.a, arg_1.c.b.x), arg_1.d.x, arg_1.c.a.x).c.b;
    var var_3 = ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_2.x, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, var_0.x), 10u)], ~global2[_wgslsmith_index_u32(14014u, 10u)]) << (~arg_2 % vec4<u32>(32u)), arg_2);
    return 715f;
}

fn func_5(arg_0: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(arg_0.x, func_1(Struct_4(-14241i, true, func_1(Struct_4(-24494i, false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27943u, 10u)], 6u)], vec2<bool>(true, true)), u_input.a.x, true, true).c, vec2<bool>(true, true)), -2147483647i, any(vec3<bool>(false, false, true)) && false, any(vec4<bool>(false, false, true, false))), _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]), 1u, _wgslsmith_mult_u32(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]), _wgslsmith_div_u32(4294967295u, global2[_wgslsmith_index_u32(1u, 10u)])), _wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30699u, 10u)], 10u)], 10u)], 36576u) & vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], 114888u, 1u, 16884u), ~vec4<u32>(19840u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10846u, 10u)], 10u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2545u, 10u)], 10u)], 10u)], 10u)], 10u)], 21649u)))))));
    let var_1 = vec2<i32>(abs(1i), firstTrailingBit(-2198i));
    var var_2 = 1i;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)))) * _wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), var_0, arg_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(465f, 931f, 916f) * vec3<f32>(-2050f, arg_0.x, 794f)), true | select(false, false, true)))));
    var var_4 = select(select(!vec3<bool>(true, true, any(vec3<bool>(false, false, false))), vec3<bool>(false, false, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)))), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)), true), vec3<bool>((global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46732u, 10u)], 10u)], 10u)], 10u)] <= global2[_wgslsmith_index_u32(1u, 10u)]) | false, true || all(vec2<bool>(true, true)), false), vec3<bool>(true, false, true)), true);
    return countOneBits(firstLeadingBit(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4571u, 4845u, 0u, global2[_wgslsmith_index_u32(8481u, 10u)]), ~vec4<u32>(129193u, global2[_wgslsmith_index_u32(5578u, 10u)], global2[_wgslsmith_index_u32(38985u, 10u)], 44329u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(906f)) - -1000f) + -1471f);
    global0 = array<Struct_1, 6>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(func_5(vec3<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(ceil(809f)), func_1(Struct_4(u_input.a.x, false, Struct_1(vec2<bool>(true, true), vec4<i32>(0i, 26766i, u_input.a.x, 20483i)), vec2<bool>(true, true)), u_input.a.x, false, true), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 10u)], 10u)], global2[_wgslsmith_index_u32(0u, 10u)], 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 10u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -608f))), _wgslsmith_f_op_f32(step(296f, -1463f)))), _wgslsmith_dot_vec4_u32(~vec4<u32>(~0u, abs(global2[_wgslsmith_index_u32(1u, 10u)]), ~4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20711u, 10u)], 10u)]), vec4<u32>(49045u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 41072u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 10u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(99058u, 10u)], 10u)], 10u)]) | vec4<u32>(global2[_wgslsmith_index_u32(1u, 10u)], 1u, 1u, global2[_wgslsmith_index_u32(0u, 10u)]), ~vec4<u32>(global2[_wgslsmith_index_u32(55246u, 10u)], global2[_wgslsmith_index_u32(62586u, 10u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], global2[_wgslsmith_index_u32(14841u, 10u)])), 4294967295u, 86687u))), 15u)];
    let var_2 = ~_wgslsmith_div_u32(firstTrailingBit(~global2[_wgslsmith_index_u32(21587u, 10u)]), global2[_wgslsmith_index_u32(countOneBits(~16440u), 10u)]) >> (_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(~11959u, 10u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7110u, 10u)], 10u)]), vec2<u32>(53031u, global2[_wgslsmith_index_u32(28062u, 10u)]))), 42719u), func_5(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 1000f, 1253f))))) % 32u);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_div_f32(-450f, _wgslsmith_f_op_f32(716f + -614f))), Struct_4(51255i, false, Struct_1(vec2<bool>(true, true), max(vec4<i32>(2147483647i, u_input.a.x, var_1.x, u_input.a.x), vec4<i32>(1i, u_input.a.x, u_input.a.x, 0i))), vec2<bool>(true, true)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(var_2, 10u)], 8286u, 0u, var_2), select(vec4<u32>(62902u, global2[_wgslsmith_index_u32(var_2, 10u)], global2[_wgslsmith_index_u32(17479u, 10u)], 4294967295u), vec4<u32>(var_2, 0u, 7622u, 12675u), vec4<bool>(true, true, true, false))), ~(~38330u), max(1584u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 10u)], 10u)]), ~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(var_2, 10u)], 4294967295u)))), 1383f);
    var var_4 = Struct_5(Struct_1(vec2<bool>(var_3.x > -690f, var_3.x < _wgslsmith_f_op_f32(f32(-1f) * -779f)), ~firstTrailingBit(min(vec4<i32>(0i, -2147483647i, 46544i, 0i), vec4<i32>(var_1.x, var_1.x, -26654i, u_input.a.x)))), global2[_wgslsmith_index_u32(firstTrailingBit(var_2) >> (var_2 % 32u), 10u)], select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false))), select(select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), false), true), vec4<bool>(all(vec2<bool>(true, false)), true, false, true), vec4<bool>(true, true, true, true)), false));
    let var_5 = !func_2(true).d;
    var var_6 = select(!vec3<bool>(var_4.c.x, false, true), select(!vec3<bool>(true, !var_5.x, true), var_4.c.wwy, !vec3<bool>(!var_5.x, var_5.x, var_4.c.x)), !any(select(vec3<bool>(var_4.c.x, true, true), vec3<bool>(false, var_5.x, var_4.c.x), select(vec3<bool>(var_5.x, var_4.c.x, true), var_4.c.wxz, var_5.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(142f, -561f, 1022f, var_3.x) * vec4<f32>(var_3.x, -1000f, var_3.x, 960f))), Struct_5(func_2(true).c, 1u, select(var_4.c, var_4.c, var_4.c)), Struct_2(reverseBits(vec2<u32>(var_2, var_2)), func_2(var_5.x).c, _wgslsmith_f_op_f32(func_4(var_3.x, Struct_4(u_input.a.x, true, Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, u_input.a.x, -8652i, 31379i)), vec2<bool>(var_4.a.a.x, var_5.x)), vec4<u32>(26980u, var_2, global2[_wgslsmith_index_u32(3829u, 10u)], 4294967295u))), 9862i, var_4.c), var_4.a.b.xyx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1705f, _wgslsmith_f_op_f32(var_3.x - 1000f)) * -275f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-210f, 494f) * vec2<f32>(var_3.x, var_3.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(287f, var_3.x), vec2<f32>(var_3.x, -1000f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1539f, 657f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.x, -142f), vec2<f32>(741f, 360f), false)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_3.x, var_3.x)))))));
}

