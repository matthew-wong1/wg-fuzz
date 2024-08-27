struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(31650u, vec3<u32>(4294967295u, 0u, 0u)), vec4<u32>(10554u, 0u, 20113u, 4294967295u), Struct_1(69199u, vec3<u32>(70855u, 1u, 14830u)), 18894i);

var<private> global1: array<u32, 12> = array<u32, 12>(1u, 4294967295u, 1u, 84233u, 1u, 4294967295u, 1u, 59349u, 1u, 38728u, 4294967295u, 34061u);

var<private> global2: bool;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>) -> f32 {
    global1 = array<u32, 12>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(arg_0)), _wgslsmith_f_op_vec3_f32(arg_0 + arg_0))) + vec3<f32>(1f, _wgslsmith_f_op_f32(select(397f, -304f, arg_1.x)), -439f))));
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), 1325f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1000f, 819f)), _wgslsmith_div_f32(-414f, arg_0.x), any(arg_1.xy)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - arg_0.x))))));
    let var_1 = arg_1.wx;
    let var_2 = Struct_2(global0.a, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.c.a, global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.a.a, 12u)], 12u)]) | vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(56702u, 12u)], 4294967295u, 29813u), ~global0.b) << ((select(vec4<u32>(66110u, global1[_wgslsmith_index_u32(u_input.a, 12u)], 84745u, 4294967295u) ^ vec4<u32>(u_input.a, global0.a.a, global0.a.b.x, global0.b.x), max(global0.b, vec4<u32>(global0.a.b.x, 7534u, global0.c.b.x, global0.a.a)), !arg_1.x) | ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 39007u, global1[_wgslsmith_index_u32(26329u, 12u)], u_input.a), global0.b)) % vec4<u32>(32u)), Struct_1(22288u, ~_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(62046u, global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)])), countOneBits(vec3<u32>(11374u, global0.a.b.x, 0u)))), -2147483647i);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1402f, _wgslsmith_f_op_f32(trunc(-1473f))))))));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1071f, -841f, -1195f), vec3<f32>(230f, -640f, 1221f), true)), vec4<bool>(true, true, true, true)))) * 950f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -592f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(211f))))))));
    var var_1 = global0.a;
    var var_2 = vec3<f32>(2133f, -1023f, -284f);
    return true;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec4<bool>, arg_3: vec4<bool>) -> Struct_4 {
    let var_0 = global0.b;
    global0 = Struct_2(Struct_1(1u, _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(1u, global0.c.b.x, 0u)), _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(4294967295u, u_input.a, arg_0)), countOneBits(vec3<u32>(arg_0, global0.b.x, arg_0))))), global0.b, global0.c, -global0.d);
    var var_1 = select(vec4<bool>(func_2(), false, !(!any(vec3<bool>(arg_3.x, false, true))), all(arg_3)), !select(vec4<bool>(func_2(), select(false, arg_2.x, true), func_2(), func_2()), select(arg_3, vec4<bool>(true, true, true, true), arg_3.x), false), arg_1 <= min(u_input.e, u_input.d));
    global1 = array<u32, 12>();
    global1 = array<u32, 12>();
    return Struct_4(select(vec2<u32>(var_0.x, 4294967295u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(var_0.x, u_input.a)), true), Struct_3(_wgslsmith_add_u32(var_0.x, _wgslsmith_div_u32(4294967295u, 17332u)), Struct_1(u_input.a & var_0.x, vec3<u32>(var_0.x, ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, var_0.x, var_0.x, arg_0), global0.b))), u_input.c.zz & vec2<i32>(~(-38784i), ~arg_1), reverseBits(arg_0), all(vec3<bool>(false, arg_2.x, !var_1.x))), Struct_2(global0.a, ~vec4<u32>(34610u, 96254u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.a, 12u)], 69779u), ~arg_0), Struct_1(1u, vec3<u32>(11616u, arg_0 & var_0.x, 0u)), u_input.b.x ^ ~1i), any(select(!select(vec4<bool>(true, true, true, arg_2.x), arg_3, true), arg_2, vec4<bool>(arg_3.x, all(arg_3.yw), any(arg_2), true))));
}

fn func_1(arg_0: u32, arg_1: i32) -> u32 {
    global1 = array<u32, 12>();
    var var_0 = 883f;
    let var_1 = func_4(u_input.a, -arg_1, select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, !(_wgslsmith_f_op_f32(trunc(915f)) <= _wgslsmith_f_op_f32(-470f + -624f)), true, true && (all(vec2<bool>(false, false)) | func_2())));
    global0 = var_1.c;
    var var_2 = !(!select(!select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(var_1.d, var_1.d), vec2<bool>(true, true)), !select(vec2<bool>(var_1.d, true), vec2<bool>(var_1.b.e, var_1.b.e), vec2<bool>(true, var_1.b.e)), select(!vec2<bool>(false, var_1.b.e), !vec2<bool>(var_1.b.e, false), true)));
    return func_4(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(43149u, 12u)], 4294967295u, global0.b.x), global0.b), reverseBits(func_4(arg_0, arg_1, select(vec4<bool>(var_1.b.e, var_1.d, var_1.b.e, var_2.x), vec4<bool>(true, false, var_2.x, var_2.x), vec4<bool>(false, var_2.x, false, var_2.x)), select(vec4<bool>(var_1.b.e, false, var_2.x, var_2.x), vec4<bool>(var_2.x, var_1.d, var_2.x, false), true)).c.b)), 15902i, vec4<bool>(!(true & !var_2.x), var_1.d, true, any(!(!vec2<bool>(var_1.d, false)))), !vec4<bool>(true, var_2.x, any(!vec3<bool>(false, var_2.x, var_1.b.e)), var_1.b.e && true)).c.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(u_input.e, 1i);
    global1 = array<u32, 12>();
    let var_1 = global1[_wgslsmith_index_u32(func_1(0u, -max(u_input.e, _wgslsmith_div_i32(u_input.e, _wgslsmith_add_i32(-20098i, 4571i)))), 12u)];
    global1 = array<u32, 12>();
    global1 = array<u32, 12>();
    global0 = func_4(~(~(~(global1[_wgslsmith_index_u32(global0.b.x, 12u)] << (u_input.a % 32u)))), global0.d, select(vec4<bool>(func_2(), !any(vec3<bool>(false, true, false)), true, false), vec4<bool>(true, true, true, !all(vec2<bool>(false, false))), true), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, func_4(2017u, -2147483647i, vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)).d, true)), !vec4<bool>(true, true, select(true, false, false), true), false)).c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(2147483647i, 2147483647i));
}

