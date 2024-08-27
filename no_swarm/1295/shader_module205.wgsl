struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-10374i, 31835u, vec4<i32>(1i, 2147483647i, -23000i, i32(-2147483648)), 20295u, vec3<i32>(-1i, -37192i, -60909i));

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), Struct_2(Struct_1(true)), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)));

var<private> global2: vec3<u32> = vec3<u32>(0u, 74122u, 13142u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    return max(1u, global0.b);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: u32) -> i32 {
    var var_0 = 17733u;
    var_0 = (~global2.x & (~_wgslsmith_dot_vec3_u32(vec3<u32>(13652u, 51791u, arg_2), u_input.b.xzz) << (func_2(Struct_1(true)) % 32u))) & global2.x;
    var var_1 = Struct_1(true);
    let var_2 = Struct_3(firstTrailingBit(~(-u_input.a.x)), 30362u, vec4<i32>(firstLeadingBit(1i), u_input.a.x, global0.a, ~u_input.a.x), 1u, global0.e);
    var var_3 = ~_wgslsmith_mult_u32(var_2.b, _wgslsmith_mult_u32(0u, ~func_2(Struct_1(true))));
    return -u_input.d;
}

fn func_3() -> vec4<bool> {
    var var_0 = ~(u_input.b | abs(u_input.b << (u_input.b % vec4<u32>(32u))));
    var var_1 = Struct_3(_wgslsmith_sub_i32(u_input.d, 2147483647i), ~0u, vec4<i32>(_wgslsmith_mod_i32(global0.a, global0.c.x), ~func_1(firstTrailingBit(global0.d), _wgslsmith_f_op_f32(-1015f - -250f), ~4294967295u), 1i, global0.a), var_0.x, vec3<i32>(-27088i, 2147483647i, u_input.d >> (~u_input.c.x % 32u)));
    var var_2 = reverseBits(_wgslsmith_add_i32(global0.a << (~_wgslsmith_mod_u32(14727u, global0.d) % 32u), -(0i ^ ~u_input.a.x)));
    var var_3 = !select(vec2<bool>(true, false), !vec2<bool>(any(vec4<bool>(false, true, false, false)), all(vec2<bool>(true, true))), _wgslsmith_sub_u32(_wgslsmith_div_u32(global0.b, u_input.b.x), _wgslsmith_mult_u32(5763u, global2.x)) > reverseBits(27553u));
    var var_4 = Struct_1(true);
    return select(!vec4<bool>(false, any(vec4<bool>(false, var_4.a, var_4.a, var_4.a)), !all(vec3<bool>(false, var_3.x, var_4.a)), true), !vec4<bool>(!var_4.a, select(any(vec4<bool>(var_3.x, var_4.a, var_3.x, false)), all(vec2<bool>(true, var_4.a)), var_1.b <= 1u), var_4.a, u_input.d == _wgslsmith_clamp_i32(-2147483647i, var_1.e.x, -1i)), !(!(!(!vec4<bool>(false, var_4.a, true, var_4.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0.d, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(571f * _wgslsmith_f_op_f32(ceil(-941f))))), global0.d);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(-347f, _wgslsmith_f_op_f32(f32(-1f) * -1688f), 0u == u_input.c.x)) >= 642f);
    var var_2 = select(~(abs(vec4<u32>(9309u, 7587u, global0.d, global0.b) & vec4<u32>(u_input.b.x, 4294967295u, global2.x, 67338u)) & ~firstTrailingBit(vec4<u32>(17542u, global0.b, u_input.c.x, global2.x))), firstLeadingBit(abs(u_input.b)), !(!vec4<bool>(true, var_1.a, true, true)));
    var var_3 = var_1;
    var var_4 = Struct_3(_wgslsmith_dot_vec4_i32(global0.c, vec4<i32>(0i, global0.a, select(-u_input.d, 1i, true), i32(-1i) * -45184i)), ~(~48965u), -select(vec4<i32>(67697i, ~global0.e.x, abs(u_input.d), 2147483647i & global0.e.x), global0.c, select(!vec4<bool>(var_1.a, true, var_3.a, false), vec4<bool>(false, var_1.a, true, false), func_3())), u_input.b.x, abs(select(vec3<i32>(23244i, -51091i, global0.e.x) & _wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(global0.c.x, global0.a, 36996i)), u_input.a, vec3<bool>(true, false, true))));
    var var_5 = Struct_3(_wgslsmith_div_i32(i32(-1i) * -min(-31689i, u_input.a.x), 0i), _wgslsmith_mod_u32(global2.x, ~4719u), firstTrailingBit(vec4<i32>(reverseBits(-1003i), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global0.a), vec2<i32>(u_input.a.x, var_4.e.x))), global0.c.x, 1485i)), 0u, vec3<i32>(~14868i << (select(56990u, 1u, var_3.a) % 32u), var_4.e.x, 1i & -global0.c.x));
    var_0 = -19327i;
    let var_6 = -(~(~(u_input.a.x | abs(u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~firstLeadingBit(1u), global0.c, max((vec3<i32>(-1i) * -vec3<i32>(1i, -43905i, var_4.c.x)) ^ select(global0.c.yxy, ~var_4.c.ywz, vec3<bool>(var_3.a, true, false)), var_4.c.xzy ^ vec3<i32>(1i, -2147483647i, u_input.d)));
}

