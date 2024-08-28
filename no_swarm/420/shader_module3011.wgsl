struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> Struct_2 {
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    return Struct_2(vec2<u32>(~(~u_input.a), ~(~u_input.c)), Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 11u)], select(~(-2147483647i), u_input.b, true), u_input.b, countOneBits(global0[_wgslsmith_index_u32(min(u_input.a, u_input.a), 11u)]))));
}

fn func_3() -> vec3<u32> {
    global0 = array<i32, 11>();
    return ~(firstTrailingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c, 44631u, u_input.c), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.c), vec3<u32>(u_input.c, 16583u, u_input.a)))) & firstLeadingBit(min(_wgslsmith_add_vec3_u32(vec3<u32>(48482u, 9453u, 1u), vec3<u32>(u_input.a, u_input.c, 38364u)), vec3<u32>(18395u, 9387u, u_input.a))));
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_3 {
    var var_0 = -996f;
    let var_1 = Struct_3(u_input.b, func_1(), _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global0[_wgslsmith_index_u32(48993u, 11u)], 34635i, 1i), vec3<i32>(firstLeadingBit(firstLeadingBit(2147483647i)), min(5946i, -2147483647i), 19689i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1170f))), countOneBits(0u));
    var var_2 = select(vec3<bool>(!(!select(true, true, true)), !all(vec3<bool>(true, true, false)) & true, false), !(!vec3<bool>(false, select(true, true, true), true)), vec3<bool>(~4294967295u < firstTrailingBit(1u), true, _wgslsmith_dot_vec4_i32(var_1.b.b.a, max(var_1.b.b.a, vec4<i32>(1i, global0[_wgslsmith_index_u32(0u, 11u)], u_input.b, global0[_wgslsmith_index_u32(arg_1, 11u)]))) > 30098i));
    var_2 = vec3<bool>(false, false, true);
    let var_3 = Struct_3(-2147483647i << (var_1.b.a.x % 32u), func_1(), ~firstLeadingBit(var_1.b.b.a.xwy), var_1.d, ~(~67497u));
    return Struct_3(34987i, func_1(), (vec3<i32>(-1i) * -var_3.b.b.a.yzx) >> ((~func_3() | vec3<u32>(var_1.e, arg_1, func_1().a.x)) % vec3<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d) * -823f), -275f), _wgslsmith_div_u32(1u >> ((var_1.b.a.x >> ((var_3.e ^ 0u) % 32u)) % 32u), arg_1));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> Struct_1 {
    global0 = array<i32, 11>();
    var var_0 = _wgslsmith_sub_u32(select(firstTrailingBit(u_input.a), _wgslsmith_add_u32(u_input.a << (arg_2.b.a.x % 32u), _wgslsmith_add_u32(arg_0.e, 36474u)), true), ~(~(~4294967295u))) << (u_input.c % 32u);
    var var_1 = !(-2147483647i != -global0[_wgslsmith_index_u32(1u, 11u)]);
    global0 = array<i32, 11>();
    var_1 = all(select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), vec3<bool>(false, true, false))));
    return Struct_1(~vec4<i32>(-10621i, 44405i, global0[_wgslsmith_index_u32(u_input.a, 11u)], _wgslsmith_add_i32(_wgslsmith_mod_i32(arg_2.c.x, global0[_wgslsmith_index_u32(4294967295u, 11u)]), arg_2.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true)) && true;
    var var_1 = Struct_2(vec2<u32>(33161u, ~(~(u_input.c >> (u_input.a % 32u)))), func_4(Struct_3(~(global0[_wgslsmith_index_u32(u_input.c, 11u)] ^ global0[_wgslsmith_index_u32(u_input.a, 11u)]), func_1(), vec3<i32>(~global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(64182u, 11u)] << (u_input.c % 32u), u_input.b), 1f, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.c, u_input.a)) | _wgslsmith_div_u32(4294967295u, u_input.c)), -511f, func_2(57579u, ~u_input.a)));
    let var_2 = ~vec2<u32>(max(4447u, func_2(1u, u_input.c).b.a.x) << (~93036u % 32u), u_input.c);
    let var_3 = Struct_2((_wgslsmith_sub_vec2_u32(~var_1.a, ~vec2<u32>(var_1.a.x, 55643u)) | ~func_2(4294967295u, var_2.x).b.a) & ~vec2<u32>(firstTrailingBit(68209u), abs(2908u)), Struct_1(firstLeadingBit(firstLeadingBit(~vec4<i32>(1i, 2147483647i, -2147483647i, 2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1f)))), -715f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -877f))), var_1.b.a.yw, var_1.a.x, firstTrailingBit(u_input.b ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 11u)], u_input.b, 0i, global0[_wgslsmith_index_u32(38122u, 11u)]), var_3.b.a)), vec2<i32>(-u_input.b >> (_wgslsmith_mod_u32(var_3.a.x, 0u) % 32u), var_3.b.a.x));
}

