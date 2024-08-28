struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_2 = Struct_2(Struct_1(-13499i, vec4<bool>(true, true, false, true), 4294967295u, vec3<f32>(-486f, 1509f, -1000f)));

var<private> global2: i32;

var<private> global3: array<i32, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>) -> bool {
    global2 = _wgslsmith_sub_i32(max(_wgslsmith_dot_vec2_i32(vec2<i32>(-88243i, global1.a.a), arg_0.ww), -1i), abs(-5830i ^ reverseBits(~global1.a.a)));
    let var_0 = Struct_3(all(global1.a.b.zx), Struct_2(global1.a));
    var var_1 = Struct_3(global1.a.b.x, Struct_2(global1.a));
    var_1 = var_0;
    var var_2 = u_input.a.wx;
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> Struct_2 {
    let var_0 = arg_1;
    global1 = Struct_2(global1.a);
    var var_1 = _wgslsmith_mult_i32(var_0.b.a.a, _wgslsmith_mod_i32(0i, var_0.b.a.a));
    let var_2 = select(arg_0.b.zzz, !select(arg_0.b.zyz, select(select(vec3<bool>(false, global1.a.b.x, arg_0.b.x), vec3<bool>(global1.a.b.x, global1.a.b.x, true), true), vec3<bool>(global1.a.b.x, false, false), select(true, var_0.b.a.b.x, var_0.b.a.b.x)), all(vec3<bool>(arg_1.b.a.b.x, arg_0.b.x, false))), !vec3<bool>(var_0.b.a.b.x, func_3(~u_input.a, countOneBits(vec4<u32>(arg_1.b.a.c, 59390u, 59963u, 89036u))), global1.a.b.x));
    var var_3 = abs(u_input.a.x);
    return var_0.b;
}

fn func_4(arg_0: Struct_2) -> bool {
    global2 = global3[_wgslsmith_index_u32(global1.a.c, 23u)];
    var var_0 = -select(u_input.a, ~abs(u_input.a | vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(4294967295u, 23u)], global3[_wgslsmith_index_u32(4294967295u, 23u)], 2147483647i)), global1.a.b);
    let var_1 = arg_0;
    var var_2 = func_2(func_2(func_2(Struct_1(u_input.a.x ^ u_input.a.x, arg_0.a.b, 20398u, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, var_1.a.d.x, -1560f)))), Struct_3(true, func_2(Struct_1(1199i, global1.a.b, 4294967295u, vec3<f32>(-563f, var_1.a.d.x, 1258f)), Struct_3(global1.a.b.x, var_1)))).a, Struct_3(!all(vec3<bool>(global1.a.b.x, global1.a.b.x, var_1.a.b.x)), Struct_2(Struct_1(global3[_wgslsmith_index_u32(4294967295u, 23u)], vec4<bool>(global1.a.b.x, global1.a.b.x, true, false), 0u, vec3<f32>(var_1.a.d.x, var_1.a.d.x, arg_0.a.d.x))))).a, Struct_3(!select(true & global1.a.b.x, func_3(u_input.a, vec4<u32>(4294967295u, var_1.a.c, 1u, global1.a.c)), true), func_2(Struct_1(min(2147483647i, -3962i), !vec4<bool>(false, true, arg_0.a.b.x, true), min(var_1.a.c, 106038u), var_1.a.d), Struct_3(var_1.a.d.x > 651f, func_2(Struct_1(-16183i, vec4<bool>(true, global1.a.b.x, true, false), arg_0.a.c, vec3<f32>(1000f, global1.a.d.x, arg_0.a.d.x)), Struct_3(arg_0.a.b.x, arg_0)))))).a;
    var_2 = Struct_1(var_0.x, global1.a.b, 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, var_1.a.d.x, arg_0.a.d.x), var_1.a.d)))));
    return true;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_1(-arg_1.a, vec4<bool>(true && any(vec2<bool>(arg_1.b.x, global1.a.b.x)), false, !arg_2.x, any(func_2(Struct_1(11497i, vec4<bool>(true, arg_2.x, global1.a.b.x, false), 102178u, vec3<f32>(arg_1.d.x, 381f, 1183f)), Struct_3(false, Struct_2(global1.a))).a.b.xxw)), 4294967295u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, arg_0))) - _wgslsmith_f_op_f32(select(-398f, -494f, arg_1.b.x))), -1722f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(706f, _wgslsmith_f_op_f32(trunc(global1.a.d.x))), -1222f, arg_2.x))));
    let var_1 = all(!func_2(func_2(global1.a, Struct_3(false, Struct_2(global1.a))).a, Struct_3(u_input.a.x >= global1.a.a, Struct_2(arg_1))).a.b);
    return func_2(arg_1, Struct_3(true, Struct_2(global1.a)));
}

fn func_1() -> i32 {
    let var_0 = vec4<i32>(i32(-1i) * -16497i, -((~global1.a.a >> (abs(global1.a.c) % 32u)) << (10055u % 32u)), global3[_wgslsmith_index_u32(~(~1u), 23u)], ~reverseBits(~_wgslsmith_sub_i32(u_input.a.x, -2147483647i)));
    global1 = func_5(_wgslsmith_f_op_f32(-global1.a.d.x), Struct_1(4917i, vec4<bool>(global1.a.b.x, func_4(func_2(global1.a, Struct_3(false, Struct_2(global1.a)))), (38851i ^ global3[_wgslsmith_index_u32(global1.a.c, 23u)]) >= -1i, global1.a.b.x), ~global1.a.c, vec3<f32>(global1.a.d.x, global1.a.d.x, _wgslsmith_f_op_f32(max(-897f, global1.a.d.x)))), func_2(func_2(global1.a, Struct_3(any(vec2<bool>(false, global1.a.b.x)), func_2(global1.a, Struct_3(global1.a.b.x, Struct_2(Struct_1(17234i, vec4<bool>(false, true, global1.a.b.x, true), global1.a.c, global1.a.d)))))).a, Struct_3(global1.a.b.x, func_2(global1.a, Struct_3(true, Struct_2(global1.a))))).a.b.wzw, !(!func_2(func_2(global1.a, Struct_3(global1.a.b.x, Struct_2(Struct_1(68245i, global1.a.b, 0u, vec3<f32>(global1.a.d.x, global1.a.d.x, global1.a.d.x))))).a, Struct_3(global1.a.b.x, Struct_2(global1.a))).a.b));
    global1 = func_5(_wgslsmith_f_op_f32(sign(global1.a.d.x)), global1.a, !(!select(!global1.a.b.wxw, select(global1.a.b.wxz, vec3<bool>(true, false, false), global1.a.b.xxy), !global1.a.b.x)), select(func_2(global1.a, Struct_3(true == global1.a.b.x, Struct_2(Struct_1(var_0.x, global1.a.b, global1.a.c, vec3<f32>(global1.a.d.x, global1.a.d.x, -885f))))).a.b, vec4<bool>(!all(vec2<bool>(false, true)), true & !global1.a.b.x, global1.a.b.x, true), global1.a.b.x));
    var var_1 = global1.a.b.x;
    global2 = ~(~(-firstLeadingBit(var_0.x >> (4294967295u % 32u))));
    return ~_wgslsmith_add_i32(-39109i, global3[_wgslsmith_index_u32(global1.a.c, 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global1.a.c;
    var var_1 = -firstTrailingBit(vec4<i32>(reverseBits(u_input.a.x), global1.a.a, ~func_1(), 1i));
    global2 = u_input.a.x;
    var var_2 = Struct_2(global1.a);
    var_2 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.d.x))), Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(17413u << (var_2.a.c % 32u), select(var_0, 1u, global1.a.b.x)), 23u)], !vec4<bool>(!global1.a.b.x, all(vec4<bool>(true, var_2.a.b.x, false, true)), var_2.a.b.x, true), ~_wgslsmith_sub_u32(~0u, ~var_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.a.d.x, var_2.a.d.x, var_2.a.d.x)))) + func_2(Struct_1(13155i, vec4<bool>(false, false, true, var_2.a.b.x), 0u, vec3<f32>(-600f, var_2.a.d.x, var_2.a.d.x)), Struct_3(global1.a.b.x, Struct_2(Struct_1(-13386i, vec4<bool>(var_2.a.b.x, global1.a.b.x, var_2.a.b.x, false), var_0, global1.a.d)))).a.d)), func_5(var_2.a.d.x, Struct_1(-1i << (1u % 32u), global1.a.b, global1.a.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(384f, -252f, -599f) * global1.a.d) * _wgslsmith_f_op_vec3_f32(global1.a.d - vec3<f32>(-2988f, var_2.a.d.x, 156f)))), !func_2(var_2.a, Struct_3(true, Struct_2(global1.a))).a.b.wzx, var_2.a.b).a.b.zyw, !(!global1.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-588f * func_2(func_5(1185f, global1.a, func_2(Struct_1(u_input.a.x, vec4<bool>(global1.a.b.x, var_2.a.b.x, true, false), var_0, vec3<f32>(global1.a.d.x, 677f, -366f)), Struct_3(var_2.a.b.x, Struct_2(var_2.a))).a.b.zxy, !vec4<bool>(global1.a.b.x, true, var_2.a.b.x, false)).a, Struct_3(func_5(global1.a.d.x, Struct_1(1i, vec4<bool>(false, false, global1.a.b.x, global1.a.b.x), 1u, global1.a.d), vec3<bool>(global1.a.b.x, true, true), global1.a.b).a.b.x, Struct_2(var_2.a))).a.d.x), reverseBits(select(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), ~vec2<u32>(global1.a.c, 1u)), min(reverseBits(vec2<u32>(var_2.a.c, global1.a.c)), ~vec2<u32>(global1.a.c, var_0)), vec2<bool>(!var_2.a.b.x, global1.a.d.x < global1.a.d.x))), global1.a.d.x);
}

