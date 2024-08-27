struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20>;

var<private> global1: array<u32, 15>;

var<private> global2: vec2<u32> = vec2<u32>(14444u, 13070u);

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = min(0u, _wgslsmith_clamp_u32(global2.x, global3.e, firstTrailingBit(7124u))) | global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(0u >> (~arg_0.e % 32u)), ~abs(42752u)), 15u)];
    var var_1 = abs(firstLeadingBit(vec3<i32>(arg_0.b.x, -(i32(-1i) * -17098i), ~(~arg_0.b.x))));
    global3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(942f * 2702f) + _wgslsmith_f_op_f32(-1045f + global3.a)))), _wgslsmith_mod_vec4_i32(vec4<i32>(firstTrailingBit(var_1.x), -reverseBits(var_1.x), u_input.b, _wgslsmith_dot_vec4_i32(global3.b, vec4<i32>(-2147483647i, -1i, 14480i, -1i))), vec4<i32>(-1i) * -min(vec4<i32>(global3.b.x, 1i, 21195i, global3.b.x), arg_0.b)), global3.c, (_wgslsmith_f_op_f32(-285f + _wgslsmith_f_op_f32(step(-561f, -751f))) == 907f) | (max(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, arg_0.b.x, arg_0.b.x), global3.b.zzy)) <= global3.b.x), 4962u);
    var var_2 = Struct_3(_wgslsmith_mod_u32(~((arg_0.e ^ 1u) | _wgslsmith_div_u32(u_input.e.x, global2.x)), 91008u), Struct_2(true, (!arg_0.d || !global3.d) || !(!global3.c.x), vec2<bool>(all(global3.c), true), arg_0), arg_0, firstLeadingBit(~var_1.x));
    var var_3 = select(any(select(vec4<bool>(true, any(arg_0.c), arg_0.b.x < arg_0.b.x, true), !(!vec4<bool>(false, arg_0.d, true, true)), select(vec4<bool>(var_2.c.d, arg_0.d, true, global3.c.x), select(vec4<bool>(arg_0.c.x, arg_0.c.x, false, true), vec4<bool>(false, false, false, true), vec4<bool>(global3.c.x, true, global3.c.x, arg_0.d)), -2147483647i < arg_0.b.x))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(sign(var_2.b.d.a)))) <= var_2.c.a);
    return select(vec2<bool>(true, !(!var_2.c.d)), vec2<bool>(true, true), select(select(!select(global3.c.xz, vec2<bool>(var_2.c.d, false), vec2<bool>(false, true)), !(!global3.c.zz), var_2.c.c.zz), !(!vec2<bool>(true, global3.c.x)), !(!all(vec3<bool>(false, var_2.b.b, var_2.c.d)))));
}

fn func_2() -> Struct_4 {
    return Struct_4(Struct_3(_wgslsmith_add_u32(1u, u_input.e.x), Struct_2(select(all(vec3<bool>(global3.d, global3.c.x, false)), true, true), global3.d, func_3(Struct_1(global3.a, global3.b, vec3<bool>(false, global3.d, global3.d), false, global1[_wgslsmith_index_u32(53062u, 15u)])), Struct_1(_wgslsmith_f_op_f32(558f - global3.a), vec4<i32>(-2221i, global3.b.x, u_input.c, -2147483647i) | global3.b, !global3.c, true, _wgslsmith_mult_u32(0u, global2.x))), Struct_1(_wgslsmith_f_op_f32(select(global3.a, _wgslsmith_f_op_f32(566f * -525f), global3.d)), -vec4<i32>(-49105i, u_input.c, u_input.b, global3.b.x), !(!vec3<bool>(false, true, global3.c.x)), true, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, u_input.e.x, global2.x, 4294967295u)), ~vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], 4294967295u, global3.e, global1[_wgslsmith_index_u32(global3.e, 15u)]))), 2805i), vec2<u32>(reverseBits(global2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, global1[_wgslsmith_index_u32(global2.x, 15u)], global1[_wgslsmith_index_u32(24693u, 15u)], 39010u), ~vec4<u32>(95190u, u_input.e.x, global2.x, u_input.e.x))) ^ vec2<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 0u), 15u)], 15u)], 9006u), global3.e));
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> Struct_4 {
    var var_0 = countOneBits(_wgslsmith_sub_u32(~1u, global1[_wgslsmith_index_u32(u_input.a.x, 15u)])) << (_wgslsmith_mod_u32(~arg_1.b.x, global3.e >> (~(~global3.e) % 32u)) % 32u);
    var var_1 = _wgslsmith_div_f32(827f, _wgslsmith_f_op_f32(-arg_1.a.c.a));
    var var_2 = !(!func_2().a.b.c);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.c.a, -136f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-904f, 1649f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-733f, -1621f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(782f, arg_1.a.c.a)), _wgslsmith_f_op_f32(ceil(-337f)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -439f)), arg_1.a.b.d.a));
    var var_4 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(753f, 522f, 1000f, _wgslsmith_f_op_f32(-var_3.x)) * vec4<f32>(var_3.x, _wgslsmith_div_f32(global3.a, -627f), _wgslsmith_f_op_f32(step(global3.a, 306f)), global3.a)))));
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: Struct_3) -> f32 {
    global1 = array<u32, 15>();
    let var_0 = arg_1;
    global1 = array<u32, 15>();
    let var_1 = ~vec2<i32>(18327i, abs(-1i));
    var var_2 = min(58628u, ~global1[_wgslsmith_index_u32(arg_3.c.e, 15u)]);
    return _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * -465f)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(func_5(arg_3.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1), _wgslsmith_f_op_vec4_f32(-arg_1)), func_4(~u_input.d, func_2()), func_4(~arg_3.a, Struct_4(Struct_3(global3.e, Struct_2(arg_3.b.a, true, global0[_wgslsmith_index_u32(u_input.e.x, 20u)], Struct_1(arg_0.a, vec4<i32>(global3.b.x, u_input.c, 11048i, -1i), vec3<bool>(global3.c.x, arg_0.d, true), global3.c.x, arg_3.a)), arg_3.c, -29115i), u_input.e)).a))) * arg_1.zz);
    var var_1 = u_input.e;
    let var_2 = arg_3.b;
    var_0 = _wgslsmith_f_op_vec2_f32(arg_1.xz * vec2<f32>(536f, _wgslsmith_f_op_f32(964f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * global3.a))));
    let var_3 = arg_3.b;
    return 2613u;
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_3 {
    var var_0 = func_4(_wgslsmith_div_u32(global3.e, ~(~arg_1.e)) & u_input.e.x, Struct_4(Struct_3(countOneBits(52307u), Struct_2(true, false, !arg_1.c.zy, func_2().a.c), Struct_1(-2965f, ~global3.b, !arg_1.c, true, 109u), ~global3.b.x), ~(~vec2<u32>(arg_1.e, global1[_wgslsmith_index_u32(4294967295u, 15u)])))).a.c.d;
    var var_1 = Struct_4(Struct_3(global2.x, Struct_2(arg_1.c.x, true, arg_1.c.zy, Struct_1(arg_0.x, vec4<i32>(-37760i, 0i, -2147483647i, global3.b.x), vec3<bool>(arg_2, arg_2, arg_2), true, _wgslsmith_div_u32(284u, global2.x))), arg_1, ~(~(u_input.c & -1i))), reverseBits(func_2().b));
    global2 = vec2<u32>(func_4(var_1.b.x, Struct_4(var_1.a, vec2<u32>(108717u, _wgslsmith_sub_u32(global2.x, var_1.b.x)))).a.b.d.e, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 0u, ~global2.x, u_input.e.x) ^ reverseBits(~vec4<u32>(arg_1.e, 31120u, var_1.a.a, arg_1.e)), ~u_input.a));
    global0 = array<vec2<bool>, 20>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(631f, -729f, 646f, -260f), vec4<f32>(arg_1.a, arg_0.x, -507f, arg_0.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.a, global3.a, 862f, var_1.a.c.a), vec4<f32>(global3.a, arg_1.a, arg_1.a, var_1.a.c.a))))))));
    return Struct_3(_wgslsmith_sub_u32(1u, arg_1.e), func_2().a.b, var_1.a.b.d, 1i);
}

fn func_7(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> Struct_1 {
    return func_2().a.b.d;
}

fn func_8(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(-1517f, _wgslsmith_f_op_f32(select(-148f, arg_1.a, true)), false));
    let var_1 = ~global3.b.x;
    var var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(-max(global3.b.zwx << (u_input.a.yyx % vec3<u32>(32u)), global3.b.zwx), _wgslsmith_mult_vec3_i32(-arg_1.b.yyx, func_2().a.b.d.b.xwz) << (countOneBits(vec3<u32>(0u, 26325u, arg_1.e)) % vec3<u32>(32u))), var_1, ~arg_0.x);
    var var_3 = Struct_4(Struct_3(~u_input.d, func_4(_wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(1u, 15u)], 4294967295u), Struct_4(Struct_3(u_input.d, Struct_2(false, global3.c.x, global3.c.xz, Struct_1(arg_1.a, arg_1.b, global3.c, false, 24519u)), Struct_1(-1000f, vec4<i32>(-6960i, u_input.b, 8951i, arg_2), vec3<bool>(global3.c.x, true, global3.c.x), global3.d, 1u), -29376i), u_input.a.zw)).a.b, func_2().a.c, reverseBits(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(6629i, -198i, arg_2, arg_0.x)), vec4<i32>(-1i, -2147483647i, arg_1.b.x, arg_1.b.x) >> (u_input.a % vec4<u32>(32u))))), u_input.e);
    global0 = array<vec2<bool>, 20>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(global3.b.x < global3.b.x));
    global0 = array<vec2<bool>, 20>();
    global0 = array<vec2<bool>, 20>();
    global0 = array<vec2<bool>, 20>();
    let var_1 = func_8(global3.b, func_7(func_6(vec3<f32>(_wgslsmith_div_f32(-771f, -602f), _wgslsmith_f_op_f32(f32(-1f) * -955f), -819f), Struct_1(-1000f, -global3.b, vec3<bool>(false, false, global3.c.x), global3.d, func_1(Struct_1(global3.a, vec4<i32>(global3.b.x, u_input.c, u_input.b, u_input.c), vec3<bool>(global3.c.x, false, false), global3.c.x, 56320u), vec4<f32>(1249f, global3.a, global3.a, -1243f), u_input.b, Struct_3(58270u, Struct_2(false, global3.c.x, vec2<bool>(false, global3.d), Struct_1(-1940f, global3.b, vec3<bool>(true, global3.c.x, global3.c.x), false, global2.x)), Struct_1(global3.a, global3.b, vec3<bool>(false, false, true), false, global2.x), u_input.b))), global3.d), global3.e, Struct_3(~_wgslsmith_mult_u32(u_input.e.x, global2.x), func_6(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.a, global3.a, global3.a))), func_4(u_input.a.x, Struct_4(Struct_3(global3.e, Struct_2(true, false, vec2<bool>(global3.c.x, global3.c.x), Struct_1(2278f, vec4<i32>(u_input.b, 2147483647i, u_input.b, 5068i), global3.c, global3.d, 4294967295u)), Struct_1(global3.a, vec4<i32>(-17100i, u_input.b, 2147483647i, 28092i), global3.c, false, global2.x), -40262i), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], 1u))).a.b.d, global3.d).b, Struct_1(global3.a, global3.b & global3.b, vec3<bool>(global3.d, false, false), true, u_input.a.x | u_input.a.x), u_input.c)), global3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, 1107f, var_1.a, 248f) - vec4<f32>(global3.a, global3.a, 332f, var_1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, -1207f, global3.a, 1179f)), true))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1399f, var_1.a, -839f, -386f), vec4<f32>(global3.a, global3.a, global3.a, -503f))), vec4<f32>(1366f, global3.a, 1912f, 2560f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, -1028f, -115f, global3.a), vec4<f32>(var_1.a, global3.a, global3.a, var_1.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2015f, 880f, var_1.a, global3.a) + vec4<f32>(2050f, global3.a, var_1.a, 2267f)), func_8(vec4<i32>(global3.b.x, global3.b.x, u_input.b, 2147483647i), Struct_1(global3.a, var_1.b, global3.c, var_1.d, u_input.a.x), -25868i).c.x)), !select(vec4<bool>(true, global3.c.x, true, var_1.c.x), vec4<bool>(false, false, true, true), vec4<bool>(var_1.d, true, true, false))))));
}

