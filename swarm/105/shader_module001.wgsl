struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_3,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(6990i, true), Struct_2(-3656i, false), Struct_2(1i, true), Struct_2(-3508i, true), Struct_2(0i, true), Struct_2(-22394i, true), Struct_2(-76143i, true), Struct_2(i32(-2147483648), true), Struct_2(-12334i, false), Struct_2(2407i, false), Struct_2(20023i, false), Struct_2(-1i, true), Struct_2(1i, false), Struct_2(14241i, true));

var<private> global1: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    let var_0 = all(vec3<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true))), true));
    let var_1 = Struct_4(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 1u), max(vec4<u32>(1u, 4294967295u, 0u, u_input.e.x), vec4<u32>(u_input.d.x, u_input.c, 10066u, u_input.d.x))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(64025u, 11083u), vec2<u32>(u_input.e.x, u_input.d.x)), ~36570u, _wgslsmith_div_u32(21100u, u_input.c), u_input.d.x >> (u_input.d.x % 32u))), u_input.b, Struct_3((select(-1i, -2147483647i, var_0) >= _wgslsmith_mod_i32(2147483647i, u_input.b)) || !(var_0 & true), countOneBits(vec4<u32>(u_input.e.x, u_input.d.x, 3923u, ~39865u))), global0[_wgslsmith_index_u32(1u, 14u)], Struct_1(~vec3<u32>(u_input.d.x, 37213u, max(u_input.d.x, u_input.d.x)), firstTrailingBit(reverseBits(u_input.c)) >= (u_input.e.x ^ _wgslsmith_mult_u32(u_input.c, 71945u)), ~(~(~u_input.d.x))));
    let var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~var_1.c.b.yy, select(vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.e.x, u_input.c), u_input.e)), vec2<u32>(1u, ~var_1.c.b.x), vec2<bool>(true, true))), vec2<u32>(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, var_1.a, 4294967295u)), _wgslsmith_add_u32(var_1.a, u_input.c)), var_1.c.b.x ^ var_1.a));
    return -409f;
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global0 = array<Struct_2, 14>();
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))) >= _wgslsmith_f_op_f32(f32(-1f) * -173f);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -896f) * 952f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1270f), -599f)) * -1446f)), 569f, -510f, 1005f);
    var var_1 = Struct_5(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(arg_0.wxx, arg_0.zwx) | vec3<i32>(36534i, -35381i, arg_0.x), arg_0.wyz, firstLeadingBit(vec3<i32>(arg_0.x, -1i, arg_0.x)) ^ firstLeadingBit(arg_0.zwy)), vec3<i32>(~arg_0.x, 0i, -1i)), -arg_0.x, -1469f, firstLeadingBit(min(min(arg_0.x, -u_input.b), _wgslsmith_clamp_i32(~arg_0.x, arg_0.x, 1i))));
    var_1 = Struct_5(reverseBits(vec3<i32>(i32(-1i) * -1i, firstLeadingBit(_wgslsmith_sub_i32(-1i, var_1.a.x)), -26767i)), -2147483647i, var_1.c, -16326i);
    return u_input.c;
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    global1 = all(vec4<bool>(arg_0.a, all(select(!vec3<bool>(arg_0.a, false, arg_0.a), !vec3<bool>(true, true, arg_0.a), false | arg_0.a)), true | arg_0.a, true));
    var var_0 = vec4<bool>(62825u >= func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 22484i, u_input.a, u_input.a), vec4<i32>(u_input.b, u_input.a, 1i, -1i), vec4<i32>(2147483647i, u_input.a, u_input.a, -1147i)) ^ -vec4<i32>(60632i, 0i, -35225i, u_input.a)), false, true, true);
    let var_1 = u_input.e >> (_wgslsmith_div_vec3_u32(u_input.e, u_input.e) % vec3<u32>(32u));
    var var_2 = select(!(!(!select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(arg_0.a, var_0.x, true, false), vec4<bool>(arg_0.a, arg_0.a, var_0.x, true)))), select(vec4<bool>((arg_0.a && arg_0.a) || false, true, var_0.x, 90730u != ~var_1.x), select(select(!vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), !vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, true, arg_0.a)), select(vec4<bool>(true, arg_0.a, var_0.x, false), select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, arg_0.a, true, false), vec4<bool>(true, false, false, true)), var_0.x), true), !(!any(vec2<bool>(false, false)))), select(select(!(!vec4<bool>(var_0.x, true, true, true)), select(vec4<bool>(arg_0.a, var_0.x, false, true), vec4<bool>(false, false, var_0.x, arg_0.a), !arg_0.a), all(!var_0.wy)), vec4<bool>(!all(vec4<bool>(arg_0.a, true, arg_0.a, false)), any(var_0.xz), all(select(vec3<bool>(var_0.x, false, false), vec3<bool>(true, false, true), vec3<bool>(true, arg_0.a, false))), any(vec2<bool>(true, var_0.x)) & arg_0.a), any(vec3<bool>(true, true, true))));
    let var_3 = Struct_2(20807i, var_2.x && var_2.x);
    return Struct_3(arg_0.a, vec4<u32>(var_1.x, u_input.c, var_1.x, ~u_input.c));
}

fn func_4(arg_0: Struct_3) -> Struct_5 {
    var var_0 = ~(~(~firstTrailingBit(15154u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-133f)))) - _wgslsmith_f_op_f32(round(1f)));
    let var_2 = Struct_1(~arg_0.b.www, arg_0.a, max(~u_input.c | 4294967295u, 1u));
    var var_3 = vec2<bool>(!(!(!var_2.b)) != false, !arg_0.a);
    var var_4 = u_input.e.x;
    return Struct_5(vec3<i32>(reverseBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(51712i, -1i), vec2<i32>(-23870i, u_input.b))), u_input.b, u_input.a), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1709f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_sub_i32(u_input.b, _wgslsmith_mod_i32(u_input.b, -min(-52551i, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 14>();
    let var_0 = func_4(func_1(Struct_3(true, vec4<u32>(u_input.e.x & 4294967295u, 1u, ~26793u, 4294967295u))));
    global1 = all(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true)), (4294967295u <= u_input.c) & all(vec2<bool>(false, true))));
    global0 = array<Struct_2, 14>();
    let var_1 = var_0.c;
    global1 = any(select(select(vec4<bool>(true, all(vec3<bool>(false, true, true)), true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true))), !vec4<bool>(select(true, false, false), true, u_input.d.x >= u_input.c, any(vec2<bool>(true, true))), vec4<bool>(true, max(u_input.c, 4087u) == ~u_input.c, all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x);
}

