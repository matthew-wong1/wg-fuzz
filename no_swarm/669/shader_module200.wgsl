struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-27078i, true, vec2<i32>(33807i, -539i), -1330f);

var<private> global1: array<vec4<f32>, 29>;

var<private> global2: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = Struct_1(2147483647i, all(!(!vec3<bool>(true, arg_0.b, true))), select(-vec2<i32>(u_input.a.x, -49111i), -vec2<i32>(arg_0.c.x, u_input.b) << (vec2<u32>(min(u_input.e, 1u), 0u) % vec2<u32>(32u)), vec2<bool>(!(!arg_0.b), !(!global0.b))), -258f);
    var var_1 = Struct_1(_wgslsmith_mod_i32(-u_input.b, reverseBits((global0.c.x | 0i) << (4294967295u % 32u))), global0.b, max(~u_input.a, firstLeadingBit(vec2<i32>(min(global0.c.x, -25494i), var_0.c.x))), 952f);
    var var_2 = global0.b == any(vec2<bool>(global0.b, false));
    var_2 = true;
    var var_3 = var_0.a;
    return var_1.c;
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<f32>, arg_3: bool) -> vec4<bool> {
    let var_0 = vec4<i32>(func_2(Struct_1(44915i, !arg_0.x, -vec2<i32>(arg_1, global0.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d, global0.d) + 361f))).x, -u_input.b ^ (u_input.a.x & _wgslsmith_div_i32(countOneBits(arg_1), -25918i)), func_2(Struct_1(reverseBits(firstLeadingBit(u_input.b)), false != !global0.b, -vec2<i32>(-5508i, -2147483647i), _wgslsmith_f_op_f32(abs(734f)))).x, reverseBits(_wgslsmith_mult_i32(countOneBits(-u_input.a.x), -1i)));
    var var_1 = arg_2;
    var var_2 = Struct_1(_wgslsmith_mod_i32(u_input.a.x, -47012i), true || (_wgslsmith_add_i32(var_0.x, u_input.b) != -(~arg_1)), var_0.ww, var_1.x);
    let var_3 = Struct_1(_wgslsmith_sub_i32(abs(abs(_wgslsmith_clamp_i32(var_0.x, -36267i, u_input.a.x))), func_2(Struct_1(min(0i, -3386i), arg_3, vec2<i32>(-1i, -7635i), _wgslsmith_f_op_f32(-1197f + var_1.x))).x), arg_3, global0.c | vec2<i32>(var_0.x & -var_0.x, firstLeadingBit(~(-1i))), -1000f);
    global1 = array<vec4<f32>, 29>();
    return !select(vec4<bool>(all(vec2<bool>(false, false)), _wgslsmith_mult_u32(1u, u_input.d.x) >= abs(u_input.d.x), countOneBits(var_2.a) == var_3.c.x, any(arg_0.zx)), vec4<bool>(any(!vec3<bool>(var_3.b, arg_0.x, global0.b)), true, arg_0.x, any(vec3<bool>(global0.b, var_2.b, arg_0.x))), var_3.b);
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    global2 = -min(select(_wgslsmith_mult_i32(~arg_2.b.a, _wgslsmith_mod_i32(u_input.a.x, 1i)), global0.c.x, !(!arg_3.b.b)), ~arg_2.b.c.x);
    let var_0 = firstLeadingBit(~vec2<i32>(-1i, abs(i32(-1i) * -1i)));
    global2 = global0.a;
    var var_1 = arg_3;
    let var_2 = arg_3.b.b;
    return -((arg_2.b.c.x ^ arg_2.b.c.x) ^ -2147483647i);
}

fn func_1() -> i32 {
    let var_0 = global0.c.x;
    let var_1 = Struct_1(-31814i, global0.b, ~func_2(Struct_1(-9555i, false, u_input.a, global0.d)), 1f);
    var var_2 = -vec3<i32>(2147483647i, -(_wgslsmith_mod_i32(global0.c.x, -11414i) << (~u_input.c.x % 32u)), 25730i);
    var var_3 = -vec4<i32>(_wgslsmith_sub_i32(-(~1i), select(~var_1.a, i32(-1i) * -2147483647i, any(vec3<bool>(false, var_1.b, false)))), func_4(1u, select(vec4<bool>(global0.b, var_1.b, false, true), func_3(vec3<bool>(var_1.b, global0.b, true), global0.c.x, vec4<f32>(var_1.d, var_1.d, -1000f, -532f), var_1.b), func_3(vec3<bool>(var_1.b, true, false), -19976i, vec4<f32>(1185f, 1035f, -1548f, -1767f), false)), Struct_2(~u_input.e, Struct_1(41145i, true, vec2<i32>(var_2.x, 16059i), global0.d)), Struct_2(27574u, var_1)), -8703i, ~firstLeadingBit(1i));
    var var_4 = Struct_2(_wgslsmith_div_u32(~(1u >> (1u % 32u)), ~(~u_input.e)) & 103055u, var_1);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global0.b, !(!all(vec2<bool>(true, false)) & false), true, any(!select(select(vec4<bool>(global0.b, false, global0.b, global0.b), vec4<bool>(global0.b, true, false, global0.b), global0.b), vec4<bool>(global0.b, global0.b, global0.b, global0.b), !vec4<bool>(true, global0.b, global0.b, true))));
    global2 = 1i;
    global1 = array<vec4<f32>, 29>();
    global0 = Struct_1(u_input.a.x, global0.b, vec2<i32>(firstTrailingBit(u_input.b), abs(~1i)), global0.d);
    let var_1 = Struct_1(_wgslsmith_add_i32(u_input.b >> ((~u_input.d.x | u_input.e) % 32u), func_1() | ~(~u_input.b)), all(vec4<bool>(true, true, true, false)) & global0.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(reverseBits(-1i << (u_input.d.x % 32u)), -1i), select(~(vec2<i32>(global0.c.x, 0i) << (vec2<u32>(4294967295u, 22967u) % vec2<u32>(32u))), u_input.a, vec2<bool>(true, true)), vec2<i32>(firstLeadingBit(u_input.a.x) | abs(-9404i), global0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -268f));
    let var_2 = u_input.c.zxx;
    let var_3 = Struct_1(i32(-1i) * -2147483647i, false || var_0.x, countOneBits(vec2<i32>(u_input.a.x, -2147483647i)), global0.d);
    global1 = array<vec4<f32>, 29>();
    let var_4 = any(select(var_0.yxy, var_0.xzy, var_0.zwx));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(firstLeadingBit(-9594i) << (_wgslsmith_div_u32(u_input.c.x, u_input.e) % 32u))), vec4<i32>(var_1.c.x, func_4(_wgslsmith_clamp_u32(var_2.x, var_2.x, 40202u) ^ var_2.x, !select(vec4<bool>(var_3.b, true, var_0.x, false), vec4<bool>(true, var_1.b, var_3.b, var_1.b), vec4<bool>(var_3.b, false, true, global0.b)), Struct_2(var_2.x, Struct_1(u_input.a.x, global0.b, var_3.c, 360f)), Struct_2(46554u, var_3)), var_1.c.x, select(-36908i, -var_3.c.x, var_0.x)), vec4<f32>(-640f, var_3.d, -1089f, var_1.d));
}

