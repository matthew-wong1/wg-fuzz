struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(-328f, -38032i), Struct_1(vec3<bool>(true, true, false)), vec2<i32>(0i, 0i));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, true));

var<private> global2: array<i32, 16> = array<i32, 16>(80144i, 0i, 0i, 0i, -8810i, 4203i, 2147483647i, -27798i, 0i, i32(-2147483648), -41415i, 2147483647i, 59647i, 27786i, 2137i, -50609i);

var<private> global3: array<bool, 4> = array<bool, 4>(true, true, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -838f) - _wgslsmith_f_op_f32(step(382f, _wgslsmith_f_op_f32(sign(global0.a.a))))), _wgslsmith_f_op_f32(ceil(global0.a.a)));
    var var_1 = min(arg_0, min(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-2674i, arg_0.x)), ~(~1i)), _wgslsmith_mult_vec2_i32(global0.c, vec2<i32>(-8120i, 2147483647i)) ^ firstTrailingBit(min(vec2<i32>(-2147483647i, arg_0.x), vec2<i32>(u_input.b.x, -33550i)))));
    let var_2 = Struct_4(global0.b.a, global0.b);
    let var_3 = !all(select(global0.b.a.xx, !(!var_2.a.zz), select(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 4u)], false), !var_2.a.yz, !global1.a.x)));
    var var_4 = -29680i;
    return !vec2<bool>(false != all(var_2.b.a), false | var_3);
}

fn func_2() -> vec4<u32> {
    global1 = Struct_1(!vec3<bool>(global0.b.a.x, global1.a.x, global0.b.a.x | (global1.a.x && global3[_wgslsmith_index_u32(79840u, 4u)])));
    var var_0 = func_3(global0.c);
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(global0.a.a * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -478f)))), ~countOneBits(-global2[_wgslsmith_index_u32(u_input.a.x, 16u)])), global0.b, vec2<i32>(global0.a.b, ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -14846i, 1i), vec3<i32>(global0.c.x, -1i, -17278i)) & max(-global2[_wgslsmith_index_u32(0u, 16u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global0.c.x, -42295i, -1i), vec4<i32>(-24963i, 2147483647i, -2280i, -19361i)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a, 521f, global0.a.a)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(130f, _wgslsmith_f_op_f32(f32(-1f) * -566f), _wgslsmith_f_op_f32(global0.a.a * -1757f)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-490f, global0.a.a, var_1.a.a)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(431f, -1000f, global0.a.a))))))) - vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-778f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(220f - -597f) + _wgslsmith_f_op_f32(-var_1.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.a, 473f)))));
    var var_3 = Struct_4(select(select(select(select(global1.a, global0.b.a, false), global0.b.a, global1.a), vec3<bool>(true, true, true), global3[_wgslsmith_index_u32(14252u, 4u)]), !global0.b.a, any(select(vec3<bool>(false, global0.b.a.x, global0.b.a.x), global1.a, select(vec3<bool>(global0.b.a.x, true, global1.a.x), global0.b.a, global1.a.x)))), var_1.b);
    return u_input.a;
}

fn func_1(arg_0: vec3<bool>) -> bool {
    let var_0 = ~(~(max(u_input.a, func_2()) | select(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.a.x, u_input.c.x), vec4<u32>(1u, u_input.a.x, 67816u, u_input.c.x), vec4<u32>(32239u, u_input.c.x, 4294967295u, 4294967295u)), vec4<u32>(1u, 25242u, 2548u, 68698u), func_3(u_input.b).x)));
    let var_1 = Struct_4(vec3<bool>(true, true, global1.a.x), Struct_1(global1.a));
    global2 = array<i32, 16>();
    var var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.a.a)), _wgslsmith_f_op_f32(max(-211f, -582f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a.a, global0.a.a)) * -1523f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.a, 548f)))), -1767f, _wgslsmith_f_op_f32(f32(-1f) * -1245f));
    var var_3 = any(vec4<bool>(true, global0.b.a.x, !all(vec3<bool>(false, var_1.a.x, global3[_wgslsmith_index_u32(1u, 4u)])) != global1.a.x, global0.b.a.x));
    return 0i <= (_wgslsmith_mod_i32(~(-global0.a.b), firstLeadingBit(-7971i)) | ~firstTrailingBit(u_input.d >> (u_input.a.x % 32u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: bool, arg_3: vec3<bool>) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_f32(565f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1005f)))) * _wgslsmith_div_f32(-1015f, _wgslsmith_f_op_f32(-global0.a.a)))), global0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-787f, global0.a.a, global0.a.a)))))));
    var var_1 = global0.b.a.zy;
    var var_2 = Struct_1(!vec3<bool>(1u >= u_input.c.x, global1.a.x, global3[_wgslsmith_index_u32(1u, 4u)]));
    let var_3 = func_4(vec4<bool>(false && (true || all(global0.b.a)), ~(global2[_wgslsmith_index_u32(u_input.c.x, 16u)] >> (u_input.a.x % 32u)) == global2[_wgslsmith_index_u32(u_input.a.x, 16u)], func_1(!(!global0.b.a)), !var_2.a.x), Struct_4(global1.a, global0.b), true, !select(!vec3<bool>(global3[_wgslsmith_index_u32(3472u, 4u)], true, true), select(vec3<bool>(var_1.x, false, false), vec3<bool>(global1.a.x, global0.b.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 4u)]), select(vec3<bool>(false, var_1.x, var_2.a.x), global1.a, true)), var_2.a));
    global0 = Struct_3(func_4(vec4<bool>(314u < abs(u_input.a.x), any(select(vec4<bool>(var_2.a.x, var_2.a.x, global0.b.a.x, var_2.a.x), vec4<bool>(false, true, true, var_2.a.x), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.c.x, 4u)], true, false))), true, global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.a.xzz, vec3<u32>(u_input.a.x, 1u, u_input.a.x))), 4u)]), Struct_4(!select(global1.a, vec3<bool>(var_2.a.x, false, true), false), global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-107f + var_3.a) * _wgslsmith_f_op_f32(-var_3.a)) >= var_3.a, select(vec3<bool>(false, var_2.a.x, select(false, false, global0.b.a.x)), !(!global1.a), true)), global0.b, abs(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(abs(u_input.b), _wgslsmith_div_vec2_i32(global0.c, u_input.b)), -vec2<i32>(var_3.b, var_3.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.wxy, func_2().zyw, ~1u, ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(6418i, global2[_wgslsmith_index_u32(u_input.a.x, 16u)], 2147483647i, global0.c.x) & vec4<i32>(var_3.b, -1i, 12556i, 7886i), vec4<i32>(var_3.b, 61107i, -2147483647i, -1i)), 2147483647i, 22668i));
}

