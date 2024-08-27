struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(40451u, 11795u), vec2<u32>(2640u, 0u), vec2<u32>(4294967295u, 105513u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(84025u, 33569u), vec2<u32>(0u, 0u), vec2<u32>(30280u, 14356u), vec2<u32>(54246u, 11344u), vec2<u32>(11965u, 62833u), vec2<u32>(1u, 34196u), vec2<u32>(4294967295u, 0u), vec2<u32>(83978u, 0u), vec2<u32>(0u, 95030u), vec2<u32>(1u, 35285u), vec2<u32>(55312u, 1u), vec2<u32>(62559u, 56786u), vec2<u32>(0u, 44451u), vec2<u32>(0u, 0u), vec2<u32>(32722u, 15903u), vec2<u32>(31418u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(28943u, 10123u), vec2<u32>(0u, 22071u), vec2<u32>(17153u, 56379u), vec2<u32>(1u, 58422u));

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = min(select(~max(vec2<u32>(0u, arg_0.a.d.a), vec2<u32>(4294967295u, arg_0.b.a)) | global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.d, u_input.d, 21169u), vec3<u32>(arg_0.b.a, 1u, u_input.d), vec3<bool>(arg_0.a.c.x, false, true)), vec3<u32>(4294967295u, 37785u, u_input.b) ^ vec3<u32>(0u, u_input.d, u_input.d)), 27u)], global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_0.b.a, 4294967295u) & 32073u, 27u)], select(select(arg_0.a.b.xx, select(vec2<bool>(true, arg_0.a.c.x), vec2<bool>(arg_0.a.c.x, false), false), !vec2<bool>(arg_0.a.b.x, false)), vec2<bool>(true, !arg_0.a.c.x), select(vec2<bool>(true, false), vec2<bool>(arg_0.a.c.x, false), all(arg_0.a.b)))), ~firstLeadingBit(global0[_wgslsmith_index_u32(67719u, 27u)]));
    return -abs(-48928i << (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(95797u, u_input.b, 0u)), var_0.x) % 32u));
}

fn func_2() -> bool {
    var var_0 = Struct_1(1u, vec3<i32>(-_wgslsmith_sub_i32(1i, countOneBits(u_input.c.x)), ~func_3(Struct_3(Struct_2(u_input.b, vec4<bool>(false, false, false, false), vec3<bool>(false, false, false), Struct_1(u_input.b, u_input.c)), Struct_1(43240u, vec3<i32>(u_input.c.x, 33314i, -5621i)))), u_input.a));
    let var_1 = _wgslsmith_add_vec3_u32(firstLeadingBit(firstTrailingBit(~(~vec3<u32>(u_input.b, 4294967295u, 1u)))), ~(~vec3<u32>(u_input.b, 1u, 46259u)));
    let var_2 = !select(vec2<bool>(true, false), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), true)));
    let var_3 = vec4<bool>(all(vec2<bool>(var_2.x, var_2.x)), var_2.x, any(!(!vec4<bool>(true, var_2.x, var_2.x, var_2.x))), false & !var_2.x);
    var var_4 = Struct_3(Struct_2(~abs(9787u), !select(select(var_3, vec4<bool>(var_2.x, true, var_3.x, var_3.x), vec4<bool>(var_3.x, false, true, true)), vec4<bool>(true, var_2.x, false, true), false), vec3<bool>(all(select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_2.x, true, var_2.x), var_3.yzx)), true, true), Struct_1(_wgslsmith_clamp_u32(max(4294967295u, u_input.b), 56538u, var_0.a >> (var_1.x % 32u)), -vec3<i32>(18602i, -1i, var_0.b.x))), Struct_1(~_wgslsmith_mult_u32(~var_0.a, 85680u), var_0.b));
    return !(!all(var_4.a.c.zy));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec2<bool>, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(0u, vec4<bool>(true, arg_2.x, true, any(vec2<bool>(false, arg_2.x))), select(vec3<bool>(false | arg_2.x, any(vec4<bool>(true, arg_2.x, arg_2.x, true)), true), select(!vec3<bool>(false, arg_2.x, arg_2.x), select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, true), false), select(vec3<bool>(false, arg_2.x, true), vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(false, arg_2.x, true))), any(vec2<bool>(true, true))), Struct_1(1u, arg_3)), Struct_1(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b, 4294967295u, _wgslsmith_mod_u32(1u, 1u)), _wgslsmith_div_u32(0u, arg_1)), abs(vec3<i32>(arg_0, u_input.c.x | arg_3.x, _wgslsmith_mult_i32(arg_0, u_input.c.x)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(263f + _wgslsmith_f_op_f32(sign(228f))))) * _wgslsmith_div_f32(654f, -1000f)) - 1590f);
    let var_2 = !func_2();
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-901f - -602f))), 318f, all(!arg_2))));
    var var_3 = var_0.a.d;
    return var_0.a;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = vec3<u32>(20142u, u_input.b, ~_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(~62248u, 27u)], _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a, arg_0.d.a), global0[_wgslsmith_index_u32(u_input.b, 27u)]) ^ abs(vec2<u32>(u_input.b, u_input.b))));
    global1 = _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(abs(arg_0.d.b.yz), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.a), arg_0.d.b.yx)), ~vec2<i32>(36594i, u_input.a)), 41656i);
    global1 = _wgslsmith_sub_i32(min(min(countOneBits(arg_0.d.b.x >> (arg_0.d.a % 32u)), u_input.a), u_input.a), arg_0.d.b.x);
    let var_1 = !arg_0.b.xwz;
    global0 = array<vec2<u32>, 27>();
    return Struct_1(firstLeadingBit(u_input.b), reverseBits(arg_0.d.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 91990u;
    var var_1 = !(!any(vec4<bool>(true, all(vec2<bool>(true, true)), true, true)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-122f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -851f)))))), -251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -834f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-200f, 1000f)))))));
    var var_3 = func_4(func_1(_wgslsmith_sub_i32(-9086i, u_input.a), var_0, !select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, true)), vec3<i32>(~2147483647i, u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a) << (u_input.d % 32u))));
    var_1 = true;
    var var_4 = 40644u;
    global0 = array<vec2<u32>, 27>();
    var var_5 = ~u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_0) << (u_input.b % 32u), _wgslsmith_mod_u32(~var_3.a, ~_wgslsmith_clamp_u32(var_3.a, 0u, var_0)) ^ func_1(_wgslsmith_mod_i32(func_4(Struct_2(u_input.b, vec4<bool>(false, false, false, false), vec3<bool>(false, true, true), Struct_1(u_input.b, vec3<i32>(0i, var_5.x, var_5.x)))).b.x, func_4(Struct_2(u_input.b, vec4<bool>(false, true, true, true), vec3<bool>(false, true, true), Struct_1(var_0, var_3.b))).b.x), _wgslsmith_mult_u32(u_input.d, ~var_3.a), vec2<bool>(func_1(-47047i, 1u, vec2<bool>(false, true), vec3<i32>(-1i, u_input.a, var_3.b.x)).c.x, true), u_input.c).d.a, ~vec2<u32>(_wgslsmith_add_u32(1u, 1u), 0u), var_5.x);
}

