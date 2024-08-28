struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<i32> {
    let var_0 = ~((~vec4<u32>(u_input.b.x, 0u, 20917u, u_input.b.x) << (vec4<u32>(4294967295u, ~u_input.b.x, 123148u << (u_input.b.x % 32u), u_input.b.x) % vec4<u32>(32u))) << (vec4<u32>(~countOneBits(u_input.b.x), firstLeadingBit(min(u_input.b.x, u_input.b.x)), u_input.b.x, abs(u_input.b.x)) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1402f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x))))), _wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-793f * -626f)))))));
    var var_2 = _wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1089f), -369f, arg_1.a)));
    var var_3 = vec3<i32>(min(arg_0, _wgslsmith_mod_i32(~15454i, 16881i & u_input.a)), ~min(2147483647i, arg_0), -26728i) >> (vec3<u32>(~(~var_0.x >> (~3075u % 32u)), 1u << (var_0.x % 32u), ~(~abs(u_input.b.x))) % vec3<u32>(32u));
    let var_4 = Struct_3(arg_1);
    return -(vec3<i32>(abs(1i), u_input.a, -7778i) & countOneBits(var_4.a.d.yzx));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: u32) -> u32 {
    let var_0 = firstTrailingBit(0u);
    let var_1 = !select(select(vec2<bool>(true, any(vec4<bool>(false, true, arg_0, false))), select(vec2<bool>(false, arg_0), select(vec2<bool>(arg_0, true), vec2<bool>(false, arg_0), arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(true, false))), vec2<bool>(all(vec3<bool>(arg_0, true, true)), false)), !vec2<bool>(false | arg_0, all(vec2<bool>(true, arg_0))), reverseBits(~arg_1.c.x) >= (-1i & firstLeadingBit(arg_2.x)));
    let var_2 = Struct_3(global0[_wgslsmith_index_u32(var_0, 29u)]);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.a.x - -1031f))))) < _wgslsmith_f_op_f32(abs(966f)), 43030i, var_2.a.c, reverseBits(vec4<i32>(-2147483647i, arg_2.x, var_2.a.d.x, -43018i) | var_2.a.d) ^ vec4<i32>(u_input.a, _wgslsmith_add_i32(arg_1.b, u_input.a), ~_wgslsmith_sub_i32(1i, -27303i), _wgslsmith_clamp_i32(u_input.a, arg_1.b, arg_1.c.x) << (~1u % 32u)));
    var_3 = global0[_wgslsmith_index_u32(1u, 29u)];
    return arg_3;
}

fn func_2() -> Struct_1 {
    let var_0 = !(!vec4<bool>(true, all(vec2<bool>(true, true)), true, true));
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(func_4(!select(false, false, true), Struct_2(vec3<f32>(1000f, 1108f, -509f), u_input.a, ~vec3<i32>(-1i, -8165i, u_input.a)), func_3(firstLeadingBit(u_input.a), Struct_1(var_0.x, u_input.a, vec4<f32>(-638f, 900f, 1206f, -1000f), vec4<i32>(u_input.a, u_input.a, -28894i, 1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1217f, -1470f) + vec2<f32>(1633f, 240f))), ~(61257u ^ u_input.b.x)), _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 125316u, u_input.b.x, 5230u), vec4<u32>(21117u, 47421u, 4837u, 0u)), 120057u), u_input.b.x), _wgslsmith_add_u32(reverseBits(u_input.b.x | 0u), u_input.b.x)), vec3<u32>(max(select(1u, u_input.b.x | u_input.b.x, true), u_input.b.x), _wgslsmith_mult_u32(~abs(63574u), u_input.b.x), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(563f, -1720f, -434f)) - vec3<f32>(730f, -198f, 1566f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1082f, 287f, _wgslsmith_f_op_f32(select(-1011f, 1030f, true))))), -1i, vec3<i32>(u_input.a | _wgslsmith_mult_i32(-12990i, 26140i), _wgslsmith_sub_i32(-13137i, u_input.a), u_input.a));
    var_1 = ~(~reverseBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(75322u, 0u, u_input.b.x), vec3<u32>(58220u, 1u, u_input.b.x), vec3<u32>(1520u, 4294967295u, u_input.b.x))));
    let var_3 = reverseBits(vec3<u32>(u_input.b.x, ~var_1.x, 23938u)) & select(vec3<u32>(1u, _wgslsmith_mod_u32(var_1.x, var_1.x), abs(~var_1.x)), ~firstTrailingBit(vec3<u32>(var_1.x, u_input.b.x, 55858u)) >> (~vec3<u32>(0u, 13886u, 4294967295u) % vec3<u32>(32u)), true);
    return global0[_wgslsmith_index_u32(u_input.b.x, 29u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<i32>) -> vec4<u32> {
    let var_0 = Struct_3(func_2());
    let var_1 = !vec3<bool>(true, arg_1.a.a, arg_1.a.a);
    var var_2 = arg_2.x;
    let var_3 = firstTrailingBit(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, ~u_input.b.x)) << (countOneBits(vec4<u32>(1u, _wgslsmith_add_u32(u_input.b.x ^ u_input.b.x, ~54459u), firstLeadingBit(~32888u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 117364u), vec3<u32>(1u, 1u, 0u)))) % vec4<u32>(32u));
    var var_4 = select(!select(select(select(var_1, vec3<bool>(var_0.a.a, true, arg_0.a), vec3<bool>(true, arg_0.a, false)), var_1, select(vec3<bool>(arg_1.a.a, false, true), vec3<bool>(false, true, var_0.a.a), var_1)), vec3<bool>(arg_0.a, !arg_0.a, true), vec3<bool>(arg_0.a, any(vec2<bool>(true, false)), any(vec4<bool>(var_0.a.a, true, arg_0.a, arg_1.a.a)))), vec3<bool>(-1i > _wgslsmith_mult_i32(u_input.a, 48310i), any(vec4<bool>(select(true, arg_1.a.a, var_0.a.a), var_0.a.a, var_0.a.a && false, var_1.x || true)), true), !(abs(countOneBits(u_input.b.x)) >= var_3.x));
    return ~(~(~(vec4<u32>(1u, 0u, u_input.b.x, u_input.b.x) ^ firstLeadingBit(var_3))));
}

fn func_5(arg_0: vec4<u32>, arg_1: bool) -> vec4<bool> {
    let var_0 = any(!select(vec3<bool>(arg_1, false && arg_1, arg_1), !(!vec3<bool>(true, arg_1, false)), arg_1));
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    var var_1 = arg_0;
    global0 = array<Struct_1, 29>();
    return !select(vec4<bool>(true, true, true, true), !select(!vec4<bool>(var_0, var_0, false, var_0), select(vec4<bool>(var_0, arg_1, false, var_0), vec4<bool>(var_0, var_0, arg_1, var_0), false), false), vec4<bool>(true, false, true, var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    let var_0 = func_5(_wgslsmith_div_vec4_u32(~select(func_1(global0[_wgslsmith_index_u32(1426u, 29u)], Struct_3(Struct_1(false, u_input.a, vec4<f32>(-681f, 132f, 826f, -913f), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), vec2<i32>(u_input.a, u_input.a)), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 42018u), any(vec4<bool>(true, true, false, false))), ~(~countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 4250u)))), !(!any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    global0 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-57558i, min(~(u_input.a >> (1u % 32u)), ~_wgslsmith_sub_i32(-17923i, u_input.a))), 82379u);
}

