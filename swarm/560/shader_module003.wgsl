struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32 = 13289i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> Struct_2 {
    global0 = Struct_3(u_input.e.x, _wgslsmith_add_i32(_wgslsmith_div_i32(~(global0.a << (1u % 32u)), abs(global0.a | u_input.a.x)), ~(-25127i)), u_input.e.x);
    var var_0 = Struct_3(-13746i, 15804i, 0i);
    var var_1 = u_input.d.x;
    var var_2 = 14016u;
    var_1 = u_input.d.x;
    return Struct_2(~countOneBits(vec3<i32>(-29340i, min(global0.a, -16460i), var_0.b)));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    global0 = Struct_3(firstLeadingBit(u_input.a.x), 2147483647i, _wgslsmith_dot_vec3_i32(select(select(~vec3<i32>(arg_0.a.x, global0.a, global0.a), vec3<i32>(u_input.b.x, -2147483647i, u_input.e.x), vec3<bool>(true, true, true)), _wgslsmith_add_vec3_i32(arg_0.a ^ u_input.b, _wgslsmith_add_vec3_i32(u_input.a.xww, vec3<i32>(16870i, 0i, u_input.b.x))), vec3<bool>(true, true, true)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, -2147483647i, arg_0.a.x) >> (vec3<u32>(u_input.d.x, u_input.d.x, 6295u) % vec3<u32>(32u)), ~vec3<i32>(global0.c, global0.a, global0.a)) >> (select(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.d.x, 0u), vec3<u32>(39062u, 34757u, 1u)), _wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, 8883u, 316u)), vec3<bool>(true, true, true)) % vec3<u32>(32u))));
    let var_0 = abs(abs(u_input.a));
    let var_1 = Struct_1(false, arg_0.a.x, global0.b);
    global0 = Struct_3(arg_0.a.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(~global0.c, -var_1.b) | 0i, ~(~(-16946i))), var_0.x);
    let var_2 = var_1.c;
    return vec3<i32>(_wgslsmith_sub_i32(var_1.b, firstLeadingBit(-(var_0.x ^ -28116i))), -arg_0.a.x, ~1i);
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> i32 {
    var var_0 = func_3(func_2()) >> (vec3<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(24128u, u_input.d.x, 36802u, u_input.d.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 68658u, 46538u, u_input.d.x), vec4<u32>(1u, u_input.d.x, u_input.d.x, 9777u))), ~50465u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(33015u, u_input.d.x), 0u)) % vec3<u32>(32u));
    global1 = reverseBits(func_2().a.x);
    let var_1 = select(select(vec4<bool>(true, !all(vec2<bool>(true, false)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), (arg_1 < arg_0.b) & all(vec4<bool>(true, true, true, false))), vec4<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), !select(true, false, true), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false))), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), select(vec4<bool>(select(true, true, all(vec2<bool>(true, false))), true, false, true), vec4<bool>(false, true, select(false, arg_0.b < u_input.e.x, true), !all(vec4<bool>(false, false, false, false))), !(~36197i <= u_input.c.x)), select(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, all(vec2<bool>(true, true)))));
    var var_2 = _wgslsmith_add_u32(~u_input.d.x, abs(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d.xy, vec2<u32>(u_input.d.x, 44812u)), ~u_input.d.zz))));
    var var_3 = 21006i != firstTrailingBit(arg_1);
    return i32(-1i) * -_wgslsmith_mod_i32(arg_0.b, func_2().a.x);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(u_input.b);
    let var_1 = arg_0;
    let var_2 = firstTrailingBit((_wgslsmith_div_vec4_u32(~vec4<u32>(118176u, 24156u, u_input.d.x, u_input.d.x), ~vec4<u32>(1354u, u_input.d.x, u_input.d.x, 17170u)) & vec4<u32>(~4294967295u, u_input.d.x & 1u, 14885u, ~4294967295u)) & (~(~vec4<u32>(0u, u_input.d.x, 1u, u_input.d.x)) >> (~vec4<u32>(0u, 1u, 0u, u_input.d.x) % vec4<u32>(32u))));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-277f + -607f)), -1128f, !(-arg_0.b > 11264i)));
    global1 = -firstTrailingBit(global0.b);
    return Struct_3(var_0.a.x, -33738i, ~select(-u_input.e.x, var_1.c, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(~u_input.b.x, (global0.a >> (u_input.d.x % 32u)) << (44965u % 32u), -41632i, 1i);
    global0 = Struct_3(u_input.e.x, _wgslsmith_mod_i32(-19384i, -global0.a), abs(-global0.c << (max(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), 22057u) % 32u)));
    let var_1 = Struct_3(-1i, _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(u_input.c, -u_input.a.xxz), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(6984i, 25624i, 83949i), vec3<i32>(var_0.x, 2147483647i, u_input.b.x)), var_0.x, 14157i)), u_input.b.x);
    var var_2 = func_4(Struct_1(-1i == u_input.c.x, func_1(var_1, var_1.b), 1i));
    var_2 = func_4(Struct_1(true, ~(i32(-1i) * -510i), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(_wgslsmith_sub_i32(var_2.a, var_0.x) ^ _wgslsmith_dot_vec4_i32(u_input.a, u_input.a))), -abs(vec2<i32>(10915i, var_2.b) ^ u_input.e) ^ vec2<i32>(var_2.a, global0.a), var_0.wz ^ var_0.yy, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(946f)) + _wgslsmith_f_op_f32(f32(-1f) * -1098f)), -2083f)))));
}

