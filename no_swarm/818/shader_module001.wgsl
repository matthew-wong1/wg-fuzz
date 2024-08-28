struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 19>;

var<private> global2: vec4<bool>;

var<private> global3: u32;

var<private> global4: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(61663i, 1i, 984i, 4024i), vec4<i32>(i32(-2147483648), 1i, 1i, 1i), vec4<i32>(2147483647i, 31793i, 0i, 1i), vec4<i32>(1i, -45363i, -1i, -1i), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 0i), vec4<i32>(2147483647i, 0i, 1i, i32(-2147483648)), vec4<i32>(61486i, 1i, -1i, 1i), vec4<i32>(-10943i, 20273i, 88007i, 0i), vec4<i32>(14877i, -1i, -1i, 16189i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: f32) -> bool {
    global2 = vec4<bool>(global2.x, all(vec4<bool>(true, select(false, false | arg_0, global2.x), true, false)), true, select(!(arg_0 && true), arg_0, false));
    var var_0 = ~u_input.b << (u_input.b % vec3<u32>(32u));
    global0 = Struct_1(global0.a);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(global0.a, vec2<f32>(global0.a.x, -633f), global2.wx)), _wgslsmith_f_op_vec2_f32(global0.a + vec2<f32>(arg_2, global0.a.x)))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(363f)), _wgslsmith_f_op_f32(trunc(global0.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0.a)))))));
    var var_2 = vec2<bool>(!(any(vec4<bool>(arg_0, arg_0, global2.x, global2.x)) & arg_0), all(global2.zz));
    return 1u <= abs(1u ^ (59969u >> (var_0.x % 32u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> u32 {
    global4 = array<vec4<i32>, 9>();
    global2 = vec4<bool>(global2.x, global2.x, func_3(global2.x, -vec3<i32>(u_input.a, 1i, firstTrailingBit(1i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-556f, global0.a.x, false))))), _wgslsmith_f_op_f32(arg_0.a.x + 452f) != _wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-542f - arg_0.a.x)), !all(vec4<bool>(false, global2.x, true, true)))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a) - global0.a)));
    let var_1 = select(!(select(global2.x, global2.x, true) || any(global2.zww)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1487f * arg_0.a.x) - global0.a.x) != _wgslsmith_f_op_f32(abs(arg_0.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(358f)), _wgslsmith_f_op_f32(step(arg_0.a.x, -1000f)))) <= -786f) & true;
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(min(arg_1.x & _wgslsmith_mult_u32(arg_1.x, ~11492u), firstTrailingBit(_wgslsmith_add_u32(arg_1.x, u_input.b.x) >> (u_input.b.x % 32u))), 19u)], i32(-1i) * -48806i, ~vec3<u32>(u_input.c.x << (_wgslsmith_add_u32(arg_1.x, u_input.c.x) % 32u), u_input.c.x, max(_wgslsmith_sub_u32(arg_1.x, u_input.c.x), arg_1.x)), ~(-36632i));
    return ~(~(~firstTrailingBit(min(var_2.c.x, 0u))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a.x, arg_1.a.x, arg_0.a.x, 310f), vec4<f32>(global0.a.x, -1043f, arg_1.a.x, arg_0.a.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1013f, 940f, -867f, arg_1.a.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-126f, 1000f, global0.a.x, arg_1.a.x)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(var_0.yww - var_0.xyz);
    global1 = array<Struct_1, 19>();
    var var_3 = _wgslsmith_mult_u32(countOneBits(~1u), _wgslsmith_add_u32(u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(func_2(Struct_1(arg_0.a), u_input.b), ~87302u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), ~vec2<u32>(6055u, 1u)))));
    return Struct_2(arg_0, 1i, u_input.b, _wgslsmith_mod_i32(_wgslsmith_add_i32(~u_input.a, -1i), -17106i));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> bool {
    global0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2332f, _wgslsmith_f_op_f32(max(global0.a.x, arg_2))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.a.x, arg_1.a.a.x), vec2<f32>(-782f, 1134f)))), arg_1.a.a));
    var var_0 = global0.a.x;
    global2 = select(select(vec4<bool>(true, global2.x, global2.x, !(!global2.x)), vec4<bool>(_wgslsmith_f_op_f32(global0.a.x * -1000f) < _wgslsmith_f_op_f32(-global0.a.x), false, (u_input.a < u_input.a) & (-40977i >= arg_1.d), false), false), select(select(!select(vec4<bool>(false, false, true, global2.x), vec4<bool>(true, global2.x, false, global2.x), global2.x), select(vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(false, global2.x, global2.x, global2.x), select(vec4<bool>(true, global2.x, false, global2.x), vec4<bool>(global2.x, false, global2.x, global2.x), global2.x)), false), !vec4<bool>(global2.x, global2.x, u_input.a >= u_input.a, true), select(select(vec4<bool>(global2.x, global2.x, true, global2.x), select(vec4<bool>(global2.x, true, global2.x, false), vec4<bool>(true, global2.x, global2.x, false), global2.x), select(vec4<bool>(global2.x, true, global2.x, false), vec4<bool>(false, true, false, global2.x), vec4<bool>(false, global2.x, global2.x, global2.x))), !select(vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(true, global2.x, true, global2.x), vec4<bool>(global2.x, true, true, true)), vec4<bool>(u_input.c.x >= arg_0, global2.x, all(global2.wx), all(vec4<bool>(false, true, global2.x, true))))), !global2.x);
    let var_1 = func_1(Struct_1(arg_1.a.a), func_1(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~func_1(Struct_1(vec2<f32>(1000f, arg_2)), Struct_1(vec2<f32>(-1261f, -1000f))).c.x, ~u_input.b.x), 19u)], arg_1.a).a);
    global0 = global1[_wgslsmith_index_u32(~(~(~(~var_1.c.x))), 19u)];
    return all(global2.xw);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = true;
    let var_1 = -13281i;
    var var_2 = global0.a.x;
    var var_3 = u_input.c.x;
    var var_4 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a.x, global0.a.x), vec2<f32>(arg_1.a.x, 759f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1636f, 1273f) + vec2<f32>(362f, 1707f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-169f, global0.a.x) + global0.a))))), -28828i, (~_wgslsmith_sub_vec3_u32(u_input.b, u_input.b) | ~vec3<u32>(4294967295u, 4294967295u, u_input.b.x)) | vec3<u32>(4601u >> (1u % 32u), _wgslsmith_sub_u32(countOneBits(67217u), 1u >> (u_input.b.x % 32u)), u_input.c.x), u_input.a);
    return select(select(arg_0, arg_0, arg_0), arg_0, select(vec4<bool>(!var_0, true, !func_4(var_4.c.x, Struct_2(Struct_1(arg_1.a), var_4.b, vec3<u32>(u_input.b.x, u_input.c.x, 0u), 19186i), -622f), all(vec2<bool>(var_0, var_0))), !vec4<bool>(true, all(vec3<bool>(global2.x, var_0, true)), func_3(true, vec3<i32>(42454i, -2147483647i, -45870i), arg_1.a.x), var_0), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(func_5(vec4<bool>(false, max(u_input.a, -1i) < 1i, all(global2.yzz), func_4(~u_input.b.x, func_1(global1[_wgslsmith_index_u32(u_input.c.x, 19u)], global1[_wgslsmith_index_u32(7610u, 19u)]), _wgslsmith_f_op_f32(-global0.a.x))), Struct_1(_wgslsmith_f_op_vec2_f32(sign(global0.a)))), vec4<bool>(true, true, true, global2.x), select(!(!vec4<bool>(global2.x, true, true, global2.x)), !func_5(vec4<bool>(true, global2.x, false, false), func_1(global1[_wgslsmith_index_u32(5946u, 19u)], global1[_wgslsmith_index_u32(u_input.c.x, 19u)]).a), select(select(!vec4<bool>(true, global2.x, global2.x, global2.x), !vec4<bool>(global2.x, true, false, global2.x), global2.x), vec4<bool>(!global2.x, 4294967295u >= u_input.c.x, false, true), !(!vec4<bool>(global2.x, global2.x, false, false)))));
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(u_input.b.x, u_input.c.x), u_input.c.x), 1405u), 26486u, u_input.b.x);
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-func_1(func_1(global1[_wgslsmith_index_u32(0u, 19u)], Struct_1(global0.a)).a, func_1(Struct_1(vec2<f32>(global0.a.x, 769f)), global1[_wgslsmith_index_u32(u_input.c.x, 19u)]).a).a.a.x), _wgslsmith_f_op_f32(-2513f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - -225f) * global0.a.x))));
    var var_2 = func_1(func_1(var_1, var_1).a, func_1(Struct_1(var_1.a), Struct_1(vec2<f32>(var_1.a.x, global0.a.x))).a);
    let var_3 = ~_wgslsmith_sub_u32(0u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(var_2.c.yz), ~vec2<u32>(21362u, 1u)), 1u));
    let var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(390f - 522f) + _wgslsmith_f_op_f32(-863f + _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1144f))));
    let x = u_input.a;
    s_output = StorageBuffer(~22701u, -2147483647i, _wgslsmith_f_op_f32(var_4.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-198f)) - var_4.a.x)), firstLeadingBit(vec4<u32>(var_2.c.x, 10386u, u_input.c.x, ~1u)) | vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(8652u, 54241u), _wgslsmith_sub_u32(var_3, 1u)), ~abs(2164u), 19049u << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.x, 59441u), u_input.b.xx) % 32u), 896u));
}

