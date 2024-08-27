struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: vec3<u32>) -> vec2<u32> {
    var var_0 = ~u_input.b;
    var var_1 = -20199i;
    var_1 = min(max(_wgslsmith_add_i32(u_input.a, -u_input.a), 2147483647i), ~(-2147483647i & _wgslsmith_mod_i32(_wgslsmith_add_i32(34565i, 1i), u_input.a)));
    var_1 = -13446i;
    var_0 = abs(~(~(~4294967295u)));
    return vec2<u32>(_wgslsmith_dot_vec2_u32(~arg_3.yx, vec2<u32>(4294967295u, 4294967295u)), u_input.b | 1u);
}

fn func_2() -> vec3<bool> {
    let var_0 = ~vec2<u32>(_wgslsmith_sub_u32(1u, 1u), 4294967295u);
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    let var_1 = Struct_2(Struct_1(93402u, _wgslsmith_mult_vec2_u32(var_0, var_0), abs(u_input.a) > u_input.a), Struct_1(768u, _wgslsmith_add_vec2_u32(abs(func_3(true, vec3<f32>(-469f, -1849f, -333f), vec3<bool>(false, false, false), vec3<u32>(var_0.x, 133597u, var_0.x))), ~(~var_0)), true), _wgslsmith_clamp_vec3_u32(~_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.x, u_input.b, var_0.x), vec3<u32>(u_input.b, 52400u, 25875u)), firstLeadingBit(~vec3<u32>(var_0.x, 1u, u_input.b)) & ~(~vec3<u32>(var_0.x, u_input.b, u_input.b)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(min(vec3<u32>(14868u, 31413u, 4294967295u), vec3<u32>(70876u, u_input.b, 17039u)), ~vec3<u32>(var_0.x, 1u, u_input.b)), select(~vec3<u32>(88721u, u_input.b, 0u), vec3<u32>(102153u, u_input.b, 0u), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-666f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -216f), _wgslsmith_f_op_f32(-1294f + 1000f)), _wgslsmith_f_op_f32(-253f - -340f)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(398f, -1000f, -2095f) - vec3<f32>(350f, -966f, 344f)))))));
    let var_2 = vec4<bool>(true, true, false, var_1.a.c);
    return var_2.wzx;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: bool) -> Struct_3 {
    global0 = array<Struct_2, 15>();
    let var_0 = arg_1;
    let var_1 = Struct_1(func_3(false, vec3<f32>(-371f, _wgslsmith_f_op_f32(ceil(2554f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -902f))), vec3<bool>(select(arg_1.a.c, any(vec3<bool>(arg_0, true, false)), var_0.a.c), false, arg_1.a.c), vec3<u32>(~var_0.a.b.x, firstLeadingBit(~71782u), var_0.a.b.x)).x, ~select(var_0.a.b, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_0.a.a), var_0.a.b), select(true, all(vec4<bool>(arg_1.a.c, arg_2, true, false)), true)), true);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(478f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-777f, 465f, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(270f))))));
    return Struct_3(Struct_1(var_0.a.b.x >> (6462u % 32u), var_0.a.b, true));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> vec2<bool> {
    let var_0 = func_4(!all(select(func_2(), vec3<bool>(true, true, false), true)), Struct_3(Struct_1(_wgslsmith_add_u32(func_3(true, vec3<f32>(-778f, 1477f, -845f), vec3<bool>(true, false, true), vec3<u32>(4294967295u, 1u, arg_1)).x, _wgslsmith_div_u32(arg_1, u_input.b)), vec2<u32>(~u_input.b, 66785u), !any(vec3<bool>(false, true, true)))), firstLeadingBit(_wgslsmith_sub_i32(1i, -11356i)) < select(min(39165i, -u_input.a), -750i, select(any(vec4<bool>(false, true, false, true)), true, any(vec4<bool>(true, false, false, true)))));
    global0 = array<Struct_2, 15>();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2391f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(904f * arg_0.x), _wgslsmith_f_op_f32(-342f - -565f))) + 1000f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1521f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-521f))), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(min(-293f, arg_0.x)))), _wgslsmith_f_op_f32(ceil(-1016f))), any(vec3<bool>(true, var_0.a.c, true)) || (false & (true & var_0.a.c))));
    let var_2 = ~(~vec4<u32>(_wgslsmith_mod_u32(~var_0.a.b.x, u_input.b), ~_wgslsmith_add_u32(u_input.b, 71398u), ~(3052u | u_input.b), _wgslsmith_mult_u32(u_input.b ^ u_input.b, ~4294967295u)));
    let var_3 = Struct_2(func_4(var_0.a.c & (abs(4294967295u) >= firstLeadingBit(u_input.b)), Struct_3(var_0.a), true).a, func_4(222f <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1.x, 581f, false)), arg_0.x, var_1.x < 498f)), Struct_3(var_0.a), any(vec3<bool>(!var_0.a.c, true, true))).a, ~var_2.yxy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(floor(-453f)), _wgslsmith_f_op_f32(-1589f + var_1.x))) + var_1.wwx));
    return func_2().xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(u_input.b, ~(~(~4294967295u)));
    let var_1 = any(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(482f, -2138f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-119f, 223f))), abs(1u) | ~u_input.b));
    var var_2 = Struct_3(func_4(select(true, false, !all(vec2<bool>(var_1, var_1))), Struct_3(func_4(true, func_4(var_1, Struct_3(Struct_1(u_input.b, vec2<u32>(37179u, 1u), var_1)), var_1), true).a), var_1).a);
    var_2 = func_4(true, Struct_3(Struct_1(~1u, select(func_4(true, Struct_3(Struct_1(u_input.b, vec2<u32>(u_input.b, 23662u), var_2.a.c)), false).a.b, select(var_2.a.b, var_2.a.b, false), vec2<bool>(true, true)), var_2.a.c)), !func_4(select(true, all(vec3<bool>(false, true, false)), all(vec3<bool>(false, var_1, var_1))), func_4(!var_1, func_4(var_1, Struct_3(var_2.a), false), var_2.a.c), all(vec3<bool>(var_1, var_1, true))).a.c);
    var var_3 = func_4(all(!func_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2245f, 302f))), 4294967295u)), func_4(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(990f, -611f))), countOneBits(_wgslsmith_div_u32(8361u, 4294967295u))).x, Struct_3(Struct_1(~4294967295u, vec2<u32>(4294967295u, u_input.b), true && var_1)), select(true, false, func_4(false, Struct_3(var_2.a), var_2.a.c).a.c) || var_2.a.c), false);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.a));
}

