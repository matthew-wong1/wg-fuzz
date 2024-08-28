struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = arg_3;
    var var_1 = Struct_1(reverseBits(3231i));
    let var_2 = true;
    var var_3 = vec3<bool>(all(vec3<bool>(_wgslsmith_add_u32(u_input.b.x, u_input.b.x) >= u_input.b.x, !(!arg_2), arg_2 && true)), var_2, !all(!vec4<bool>(arg_2, arg_2, arg_2, true)) & arg_2);
    var_3 = vec3<bool>(!all(vec4<bool>(true, true, true, true)), true, arg_1.x <= arg_1.x);
    return arg_1;
}

fn func_2() -> i32 {
    var var_0 = Struct_2(Struct_1(u_input.c | -2147483647i), _wgslsmith_div_vec4_i32(-func_3(-318f, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, -1i, u_input.a, u_input.a), vec4<i32>(-1i, u_input.a, u_input.c, u_input.c), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.c)), 0i < u_input.a, Struct_1(9920i)), reverseBits(abs(vec4<i32>(u_input.a, -1i, u_input.a, 1i))) >> (~min(vec4<u32>(67287u, 0u, u_input.b.x, 68383u), vec4<u32>(u_input.b.x, u_input.b.x, 50141u, u_input.b.x)) % vec4<u32>(32u))), ~(~vec4<u32>(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, u_input.b.x), ~1u, u_input.b.x)), true);
    var_0 = Struct_2(Struct_1(~reverseBits(u_input.a & -42753i)), -firstTrailingBit(func_3(-1355f, -var_0.b, false, var_0.a)), vec4<u32>(u_input.b.x, abs(var_0.c.x), _wgslsmith_div_u32(firstLeadingBit(countOneBits(u_input.b.x)), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, var_0.c.x, var_0.c.x, 4294967295u)), var_0.c)), 4098u), !(-firstLeadingBit(u_input.c) <= -26633i));
    var_0 = Struct_2(var_0.a, vec4<i32>(1i << (1u % 32u), -abs(1i), var_0.b.x, -2147483647i), vec4<u32>(0u, var_0.c.x, ~_wgslsmith_dot_vec4_u32(var_0.c, var_0.c), 22828u), any(select(select(vec3<bool>(var_0.d, var_0.d, true), vec3<bool>(true, var_0.d, var_0.d), var_0.d), vec3<bool>(true, !var_0.d, var_0.d), all(select(vec3<bool>(var_0.d, false, var_0.d), vec3<bool>(true, false, var_0.d), vec3<bool>(false, var_0.d, var_0.d))))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-105f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -511f))))), -1155f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1884f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(407f)), all(vec2<bool>(true, var_0.d))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-633f))))));
    var var_2 = !select(!vec4<bool>(var_0.d, false, true, var_0.d || var_0.d), vec4<bool>(var_0.d, any(!vec4<bool>(true, false, var_0.d, false)), all(!vec3<bool>(false, var_0.d, false)), false), vec4<bool>(false, !(u_input.b.x > var_0.c.x), any(vec4<bool>(false, var_0.d, var_0.d, var_0.d)), (var_0.b.x > var_0.a.a) | any(vec2<bool>(true, var_0.d))));
    return var_0.b.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = u_input.b.x;
    var var_1 = false != (max(_wgslsmith_mult_i32(2147483647i, u_input.c), firstLeadingBit(0i)) == func_2());
    let var_2 = min(var_0, 0u);
    let var_3 = ~u_input.b.x;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -216f), _wgslsmith_f_op_f32(1282f + -614f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-150f, 558f, true))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(544f)) + -302f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(141f))))));
    return ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(45218u, var_3, var_0), abs(~vec3<u32>(var_2, 57683u, 80832u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    return Struct_2(Struct_1((16692i >> ((42883u << (u_input.b.x % 32u)) % 32u)) & u_input.a), max(~(-arg_1.b), ~(~arg_1.b)), arg_0, !all(select(vec4<bool>(arg_1.d, true, arg_1.d, false), select(vec4<bool>(true, arg_1.d, false, true), vec4<bool>(arg_1.d, arg_1.d, true, true), true), vec4<bool>(arg_1.d, false, arg_1.d, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec4<u32>(abs(min(50353u, 4294967295u) >> ((u_input.b.x & u_input.b.x) % 32u)), _wgslsmith_mult_u32(func_1(Struct_1(48219i), Struct_1(u_input.c), u_input.a, Struct_1(u_input.c)), 47540u) & (_wgslsmith_mod_u32(88117u, 4294967295u) & u_input.b.x), 4391u >> (u_input.b.x % 32u), ~countOneBits(0u)), Struct_2(Struct_1(u_input.a), abs(_wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, u_input.a, u_input.c, -1i), vec4<i32>(u_input.c, u_input.a, u_input.a, 1i) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(vec4<u32>(11276u, 0u, 4294967295u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 61876u, 31242u), vec4<u32>(u_input.b.x, 54248u, u_input.b.x, u_input.b.x))) | vec4<u32>(u_input.b.x, 73765u << (u_input.b.x % 32u), _wgslsmith_sub_u32(4294967295u, u_input.b.x), 1u), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)))), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, min(u_input.b.x, 4317u), min(u_input.b.x, 58950u)), ~vec3<u32>(u_input.b.x >> (73972u % 32u), u_input.b.x | 4294967295u, ~1u)));
    let var_1 = func_4(vec4<u32>(14921u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, 0u, 979u, var_0.c.x), var_0.c), 4294967295u, var_0.c.x) ^ (var_0.c << (~var_0.c % vec4<u32>(32u))), var_0, (~(~1u) ^ func_1(Struct_1(u_input.a), var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.b.x), var_0.b.ww), Struct_1(-1391i))) & ~_wgslsmith_dot_vec4_u32(var_0.c >> (vec4<u32>(32103u, 4294967295u, var_0.c.x, 26868u) % vec4<u32>(32u)), min(vec4<u32>(var_0.c.x, u_input.b.x, u_input.b.x, 1u), vec4<u32>(var_0.c.x, 0u, 1u, 1u))));
    var var_2 = !(!select(vec4<bool>(true, true, true, true), !vec4<bool>(true, false, false, var_1.d), select(vec4<bool>(false, false, var_1.d, var_0.d), vec4<bool>(true, true, true, true), !vec4<bool>(false, false, true, var_1.d))));
    let var_3 = vec2<bool>(var_2.x, true | var_1.d);
    var var_4 = Struct_1(~select(select(min(var_0.b.x, var_1.a.a), var_1.b.x, all(vec4<bool>(false, var_3.x, var_1.d, var_0.d))), ~var_1.a.a, all(!vec4<bool>(false, false, var_0.d, false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c);
}

