struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> bool {
    let var_0 = false;
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    var var_1 = ~max(arg_1, ~(~38983u));
    var var_2 = vec4<i32>(1i, abs(u_input.a), u_input.a, 1i >> (max(_wgslsmith_add_u32(61706u, 1u), arg_1) % 32u));
    return all(vec3<bool>(_wgslsmith_f_op_f32(773f * arg_0.a.a) >= 268f, var_0, !var_0)) && true;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: vec3<i32>) -> Struct_5 {
    var var_0 = select(vec2<bool>(func_3(Struct_4(global0[_wgslsmith_index_u32(25210u, 21u)], u_input.a, -314f), ~60805u) || !(arg_2.x <= arg_2.x), false), select(!(!arg_0), select(select(arg_0, !arg_0, select(arg_0, vec2<bool>(arg_0.x, false), vec2<bool>(arg_0.x, true))), arg_0, true), false), arg_0.x != true);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1325f)))))) + -1200f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-333f, _wgslsmith_f_op_f32(min(-1224f, -476f)), true))))));
    let var_2 = Struct_3(vec4<u32>(countOneBits(1u), arg_1.x, select(firstTrailingBit(_wgslsmith_dot_vec2_u32(arg_1.zy, arg_1.zz)), arg_1.x, abs(arg_1.x) <= arg_1.x), 27122u), !arg_0, 10741i, !(!(!vec3<bool>(false, arg_0.x, var_0.x))));
    global0 = array<Struct_2, 21>();
    global1 = var_1;
    return Struct_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + -1152f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -452f))), global0[_wgslsmith_index_u32(26601u, 21u)]);
}

fn func_4(arg_0: Struct_5) -> Struct_3 {
    global1 = arg_0.c.a;
    global1 = _wgslsmith_f_op_f32(-arg_0.a);
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(11869u, 31209u, 4294967295u) & 0u, max(1u, 4294967295u >> (1u % 32u))), 21u)], u_input.a, -1031f);
    let var_1 = _wgslsmith_div_u32(~(~(~0u)) >> ((0u >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(12195u, 32995u, 0u), vec3<u32>(4294967295u, 12781u, 1u)), select(1404u, 1u, false)) % 32u)) % 32u), reverseBits(abs(12866u)));
    let var_2 = _wgslsmith_f_op_f32(abs(var_0.c));
    return Struct_3(vec4<u32>(var_1, ~(~var_1), ~var_1, ~var_1), vec2<bool>(true, true), _wgslsmith_add_i32(~(~var_0.b), ~countOneBits(-2115i)) | u_input.a, !select(vec3<bool>(false, any(vec3<bool>(true, true, false)), true), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(any(vec2<bool>(false, true)), true, false)));
}

fn func_1() -> i32 {
    let var_0 = u_input.a;
    let var_1 = func_4(func_2(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), true), vec3<u32>(33312u, ~(~4294967295u), 66140u), vec3<i32>(2147483647i, 12226i, -var_0)));
    var var_2 = Struct_1(var_1.a);
    global1 = 1901f;
    return u_input.a >> (_wgslsmith_add_u32(~(~_wgslsmith_clamp_u32(31554u, var_2.a.x, 4294967295u)), _wgslsmith_mult_u32(12857u >> (var_2.a.x % 32u), var_2.a.x & _wgslsmith_dot_vec2_u32(var_1.a.yx, vec2<u32>(1u, 1u)))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(-(~(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -1i, u_input.a, -1i), countOneBits(-vec4<i32>(u_input.a, 0i, u_input.a, u_input.a)))), u_input.a >> (11812u % 32u), func_1());
    let var_1 = Struct_5(-610f, 963f, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, countOneBits(~8803u)), 21u)]);
    global0 = array<Struct_2, 21>();
    global1 = -439f;
    let var_2 = func_4(var_1);
    var var_3 = all(var_2.d);
    var_0 = _wgslsmith_mult_vec4_i32(abs(reverseBits(vec4<i32>(-1i) * -vec4<i32>(32983i, var_0.x, var_2.c, -27266i))), min(abs(select(countOneBits(vec4<i32>(var_2.c, var_0.x, u_input.a, var_2.c)), -vec4<i32>(var_0.x, var_0.x, var_0.x, var_2.c), true)), vec4<i32>(1i, _wgslsmith_clamp_i32(var_0.x, _wgslsmith_sub_i32(0i, -80090i), firstTrailingBit(var_2.c)), -var_2.c, ~(-47992i))));
    let var_4 = _wgslsmith_mult_i32(~(-var_0.x), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~u_input.a, 1i, i32(-1i) * -1i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(272f, _wgslsmith_f_op_f32(step(-661f, var_1.b))), var_1.c.a)))));
}

