struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec3<bool>(false, false, true));

var<private> global1: u32;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(ceil(-256f));
    global0 = Struct_1((_wgslsmith_mult_u32(~u_input.a.x, 1u) << (57460u % 32u)) <= _wgslsmith_add_u32(max(u_input.a.x, ~u_input.a.x), _wgslsmith_mult_u32(abs(u_input.a.x), select(u_input.a.x, u_input.a.x, true))), !(!global0.b));
    var var_1 = Struct_1(true, vec3<bool>(all(vec2<bool>(global0.a, all(global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -505f)) >= var_0, true));
    let var_2 = Struct_1(global0.b.x & global0.a, !var_1.b);
    var var_3 = vec4<bool>(var_1.b.x, var_1.b.x, global0.a, !select(true, var_2.a, true));
    return select(select(select(select(!vec4<bool>(var_3.x, global0.b.x, var_2.b.x, true), !vec4<bool>(false, var_3.x, global0.a, true), select(vec4<bool>(var_3.x, false, var_1.b.x, global0.a), vec4<bool>(var_2.b.x, global2.b.x, var_2.b.x, global0.b.x), vec4<bool>(var_1.b.x, true, true, var_3.x))), select(!vec4<bool>(false, global0.b.x, global0.a, false), !vec4<bool>(false, global2.b.x, var_1.b.x, var_3.x), select(vec4<bool>(true, false, false, global0.b.x), vec4<bool>(true, true, global0.a, var_3.x), vec4<bool>(var_1.a, false, global2.a, false))), all(vec2<bool>(true, var_1.b.x)) & true), !vec4<bool>(all(vec2<bool>(false, global0.b.x)), !var_1.a, global0.b.x, true), false), select(vec4<bool>(global0.a == var_3.x, var_3.x, any(!var_2.b), !(var_0 <= var_0)), !(!(!vec4<bool>(true, true, global2.b.x, global2.a))), true), vec4<bool>(!(_wgslsmith_f_op_f32(-1212f * var_0) != _wgslsmith_f_op_f32(f32(-1f) * -1280f)), true, var_2.b.x, all(select(global2.b.yz, global0.b.xz, global0.b.zz))));
}

fn func_2(arg_0: i32, arg_1: i32) -> u32 {
    var var_0 = firstLeadingBit(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1, -47438i), vec2<i32>(0i, arg_0)))) & abs(vec2<i32>(42299i, 2147483647i));
    var_0 = vec2<i32>(min(var_0.x, -34963i), abs(_wgslsmith_dot_vec3_i32(-vec3<i32>(8942i, 2147483647i, -15819i), min(vec3<i32>(var_0.x, arg_0, arg_0), vec3<i32>(-2147483647i, var_0.x, 29782i)))) << (~firstLeadingBit(0u) % 32u));
    let var_1 = Struct_1(!(!global0.a), vec3<bool>(true, global2.a, any(global2.b)));
    var_0 = vec2<i32>(-1i) * -reverseBits(select(~vec2<i32>(var_0.x, -3069i), vec2<i32>(45440i, 27122i), false));
    var var_2 = select(select(!func_3(), select(select(!vec4<bool>(global0.b.x, global0.b.x, global0.a, global2.a), vec4<bool>(global2.b.x, global2.a, global0.a, global2.a), global2.b.x), vec4<bool>(false, true, !var_1.a, true), vec4<bool>(global0.b.x, func_3().x, true && global2.b.x, global0.b.x && var_1.b.x)), false), !vec4<bool>(global0.a, _wgslsmith_mod_u32(u_input.a.x, 4294967295u) >= 4294967295u, true, all(!vec4<bool>(global0.a, false, global0.b.x, global0.b.x))), !select(func_3(), vec4<bool>(all(vec2<bool>(true, var_1.a)), var_1.a | false, true, global0.a), true));
    return 1u;
}

fn func_1() -> vec3<bool> {
    global1 = func_2(-7625i, 2147483647i);
    let var_0 = Struct_1(select(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(279f, 572f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-659f - 315f) * _wgslsmith_div_f32(747f, -615f)), !global2.b.x, all(vec2<bool>(true, true))), global0.b);
    var var_1 = -(_wgslsmith_div_vec3_i32(-vec3<i32>(8572i, 0i, -2147483647i), select(vec3<i32>(17313i, -1i, 2291i), vec3<i32>(-2147483647i, 28275i, -1i), global2.a) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(-2648i, 50557i, -17598i), vec3<i32>(-34547i, -22096i, -35402i))) ^ -max(-vec3<i32>(-23060i, 2147483647i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(11157i, 0i, -1i), vec3<i32>(82635i, 8358i, -2998i))));
    let var_2 = u_input.a.x;
    let var_3 = ~1i;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!func_1()) == true;
    var var_1 = all(func_1().yx);
    var_1 = global0.a;
    let var_2 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(i32(-1i) * -1i, -20699i >> (u_input.a.x % 32u)), vec2<i32>(_wgslsmith_clamp_i32(-72697i, 9167i, -15554i) >> (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) % 32u), reverseBits(39426i)), firstTrailingBit(~min(vec2<i32>(-1i, 1i), vec2<i32>(-48634i, 0i)))) | -vec2<i32>(_wgslsmith_sub_i32(2147483647i, 30689i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, 26747i, 2147483647i, -44956i)), vec4<i32>(-6459i, -1i, 44056i, 2147483647i)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(502f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(2756f)))), true))), 793f);
    var var_4 = vec3<bool>(false, all(select(!global2.b, global0.b, !select(vec3<bool>(global0.a, false, false), vec3<bool>(true, global0.b.x, false), true))), reverseBits(_wgslsmith_sub_u32(select(7963u, 55775u, true), 2614u)) > u_input.a.x);
    let var_5 = Struct_1(all(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, global2.a, true, var_4.x), vec4<bool>(false, global0.b.x, var_4.x, global2.a)), select(vec4<bool>(global2.b.x, var_4.x, global0.a, true), vec4<bool>(global0.b.x, var_4.x, false, true), vec4<bool>(global2.b.x, true, false, global0.a)), u_input.a.x < 0u)), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(7276u, 2147483647i);
}

