struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> u32 {
    let var_0 = u_input.b;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) * _wgslsmith_f_op_f32(-arg_0.d)))));
    var var_2 = arg_0;
    var_2 = arg_2;
    var_1 = Struct_3(_wgslsmith_f_op_f32(-var_1.a));
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(61224u, ~(~arg_1), 58537u), vec3<u32>(1u, ~(firstTrailingBit(1u) << (1u % 32u)), arg_1));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(func_3(Struct_2(~max(4294967295u, arg_0), Struct_1(1u, arg_3.b, global0.b, all(vec3<bool>(false, global0.e.x, global0.e.x)), vec2<bool>(true, arg_3.e.x)), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1909f)))), u_input.a << (min(1u, 98334u & global0.a) % 32u), Struct_2(0u, Struct_1(_wgslsmith_mult_u32(4294967295u, u_input.a), ~vec4<u32>(4294967295u, arg_3.c.x, 4294967295u, 4294967295u), vec4<u32>(49422u, arg_0, global0.c.x, 0u), true, select(vec2<bool>(false, arg_3.e.x), vec2<bool>(true, arg_2.x), vec2<bool>(true, true))), arg_3, 1f)), ~global0.b, global0.b, arg_3.d, select(select(vec2<bool>(true, true), select(vec2<bool>(global0.d, true), !global0.e, all(vec4<bool>(true, global0.d, true, true))), global0.e), select(vec2<bool>(all(vec3<bool>(arg_2.x, true, false)), arg_2.x), select(select(arg_2, vec2<bool>(arg_3.e.x, arg_3.d), global0.d), vec2<bool>(arg_3.d, arg_2.x), vec2<bool>(arg_2.x, global0.e.x)), select(select(global0.e, vec2<bool>(arg_3.d, global0.d), vec2<bool>(true, true)), vec2<bool>(arg_3.d, true), arg_2)), arg_2.x));
    global0 = Struct_1(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_3.b.x, 4294967295u, 40159u, global0.b.x)), var_0.b) ^ var_0.a, ~_wgslsmith_sub_vec4_u32(select(~arg_3.c, var_0.c >> (var_0.c % vec4<u32>(32u)), all(global0.e)), ~vec4<u32>(var_0.b.x, arg_3.c.x, u_input.a, 16659u)), select(abs(~vec4<u32>(var_0.b.x, 4294967295u, arg_0, global0.c.x)), _wgslsmith_mult_vec4_u32(~global0.c, select(arg_3.c, vec4<u32>(4294967295u, arg_0, arg_3.c.x, 0u), !vec4<bool>(false, false, var_0.e.x, arg_2.x))), global0.e.x), !(!any(select(arg_2, var_0.e, vec2<bool>(false, false)))), select(!select(vec2<bool>(false, arg_3.d), var_0.e, any(vec4<bool>(arg_2.x, var_0.e.x, true, false))), vec2<bool>(any(select(vec4<bool>(true, global0.d, arg_2.x, arg_3.e.x), vec4<bool>(true, var_0.e.x, true, arg_2.x), vec4<bool>(false, var_0.e.x, false, arg_2.x))), !(!var_0.e.x)), false));
    global0 = Struct_1(~(arg_3.a ^ arg_3.c.x), vec4<u32>(36251u, ~4294967295u, ~(~u_input.a), func_3(Struct_2(var_0.c.x, arg_3, Struct_1(67212u, vec4<u32>(global0.c.x, 75396u, arg_3.a, 1u), vec4<u32>(arg_3.c.x, 11u, u_input.a, u_input.a), var_0.d, vec2<bool>(true, false)), 1012f), global0.b.x, Struct_2(_wgslsmith_clamp_u32(global0.a, 773u, 4294967295u), Struct_1(0u, vec4<u32>(13035u, var_0.c.x, 1u, global0.a), vec4<u32>(arg_0, 20575u, var_0.b.x, 1u), false, vec2<bool>(true, var_0.d)), arg_3, _wgslsmith_f_op_f32(-391f * -905f)))), reverseBits(~vec4<u32>(4294967295u, global0.c.x, arg_3.b.x, 4294967295u) >> (~vec4<u32>(30240u, var_0.c.x, var_0.a, u_input.a) % vec4<u32>(32u))), !(any(vec3<bool>(true, false, global0.d)) && var_0.e.x), var_0.e);
    global0 = var_0;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(592f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1013f + _wgslsmith_f_op_f32(765f + 400f)) + -625f)))));
    return Struct_2(~73510u, arg_3, arg_3, 1f);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec2<f32> {
    global0 = func_2(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~arg_1.b.x, _wgslsmith_dot_vec2_u32(~arg_1.b.zy, ~vec2<u32>(arg_0.a, u_input.a))), _wgslsmith_div_u32(~1u ^ global0.b.x, 1u)), -2147483647i, vec2<bool>(true, true), Struct_1(~1u, vec4<u32>(26301u, 31437u, 28615u | _wgslsmith_add_u32(global0.b.x, arg_1.a), 16887u), ~(~arg_0.b.c), arg_0.c.d, vec2<bool>(true, !any(vec3<bool>(arg_1.e.x, arg_1.e.x, arg_0.c.e.x))))).b;
    let var_0 = firstLeadingBit(_wgslsmith_add_i32(select(-u_input.b, u_input.b, arg_1.d), ~(~21170i)));
    global0 = arg_1;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(-183f * arg_0.d), 677f == arg_0.d)), _wgslsmith_f_op_f32(trunc(-887f)), 62264u > ~arg_0.c.b.x))), _wgslsmith_f_op_f32(-arg_0.d), arg_0.d);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 400f))) + 1476f));
    return _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(875f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.a)) * -1879f)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_mod_u32(u_input.a << (global0.a % 32u), u_input.a) >= u_input.a;
    let var_1 = vec3<bool>(any(select(vec4<bool>(false, false, !global0.d, false), !(!vec4<bool>(global0.d, global0.d, false, global0.d)), all(global0.e) | (global0.e.x & global0.d))), !(false || ((global0.d & true) & false)), global0.d);
    let var_2 = global0.c.zxz;
    var var_3 = ~var_2.xz;
    var var_4 = var_1;
    return Struct_2(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(global0.c.zxy, global0.c.yxy), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(global0.c.yzx, global0.c.ywz), _wgslsmith_mod_u32(var_2.x, 0u), var_2.x), arg_1), func_2(abs(var_2.x), ~(~u_input.b), vec2<bool>(any(vec3<bool>(var_1.x, global0.e.x, global0.e.x)), false), Struct_1(1u, reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(21137u, var_3.x, 36887u, arg_1), global0.c, global0.c)), vec4<u32>(arg_1, 1u, 4294967295u ^ u_input.a, var_2.x), global0.d, vec2<bool>(select(false, global0.e.x, true), false))).c, func_2(~(~_wgslsmith_div_u32(var_2.x, 1u)), ~(abs(u_input.b) ^ 0i), vec2<bool>(any(!vec4<bool>(global0.e.x, global0.d, true, false)), global0.d), func_2(var_2.x, 0i, !select(vec2<bool>(var_1.x, false), vec2<bool>(var_4.x, var_4.x), false), func_2(34266u, _wgslsmith_clamp_i32(-6961i, 22118i, -2147483647i), global0.e, Struct_1(var_3.x, vec4<u32>(var_2.x, 87737u, arg_1, 4294967295u), global0.c, var_1.x, global0.e)).b).b).c, _wgslsmith_f_op_f32(346f - arg_0.x));
}

fn func_1() -> StorageBuffer {
    let var_0 = -(~select(_wgslsmith_mod_vec4_i32(vec4<i32>(31788i, u_input.b, -29172i, 5621i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(2147483647i, u_input.b, -16758i, u_input.b), vec4<i32>(u_input.b, u_input.b, 37087i, -1i))), reverseBits(firstTrailingBit(vec4<i32>(u_input.b, 2147483647i, -2147483647i, u_input.b))), !select(vec4<bool>(global0.d, true, true, global0.e.x), vec4<bool>(global0.e.x, global0.e.x, false, false), vec4<bool>(global0.d, true, global0.d, true))));
    let var_1 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_4(func_2(1u, u_input.b, global0.e, Struct_1(u_input.a, vec4<u32>(global0.b.x, 65560u, 4121u, 83020u), vec4<u32>(global0.c.x, u_input.a, u_input.a, u_input.a), true, global0.e)), Struct_1(global0.a, global0.b, vec4<u32>(57693u, 31517u, 1u, u_input.a), global0.e.x, global0.e))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(466f, 116f))))), u_input.a);
    global0 = Struct_1(_wgslsmith_mult_u32(global0.c.x >> (~var_1.b.a % 32u), 26115u) >> (~(global0.c.x | firstLeadingBit(35276u)) % 32u), reverseBits(vec4<u32>(~u_input.a, global0.a, u_input.a, 0u)), reverseBits(~min(~global0.b, var_1.b.c | vec4<u32>(51978u, 32918u, 4294967295u, 4294967295u))), all(!(!vec4<bool>(var_1.b.e.x, true, var_1.b.e.x, global0.d))), !(!vec2<bool>(func_5(vec2<f32>(683f, var_1.d), 34424u).c.d, true)));
    var var_2 = var_1;
    var var_3 = func_5(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_1.d)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1611f, var_1.d))), vec2<f32>(-1444f, 985f)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2651f, 755f)), vec2<f32>(1718f, var_2.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-253f, -614f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.d, -1809f))))))), _wgslsmith_dot_vec3_u32(var_2.b.b.ywx, vec3<u32>(firstTrailingBit(~0u), 4294967295u | _wgslsmith_sub_u32(68390u, u_input.a), global0.a))).b;
    return StorageBuffer(var_2.d, ~var_1.b.c.zw, ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

