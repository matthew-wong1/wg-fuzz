struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(102890u, 4294967295u, 72107u, 10892u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> bool {
    var var_0 = Struct_2(arg_0.a);
    let var_1 = Struct_1(vec4<bool>(any(vec2<bool>(false, true)), !all(vec4<bool>(true, arg_2, true, false)), arg_2, all(select(vec4<bool>(true, true, arg_2, false), !vec4<bool>(false, arg_2, arg_2, false), select(vec4<bool>(arg_2, false, arg_2, arg_2), vec4<bool>(arg_2, false, false, true), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f)))), select(select(select(!vec4<bool>(false, false, arg_2, true), select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(false, true, false, arg_2), vec4<bool>(arg_2, arg_2, false, arg_2)), vec4<bool>(arg_2, false, true, arg_2)), vec4<bool>(arg_2 & false, arg_2, arg_2, -42609i > u_input.b.x), vec4<bool>(any(vec4<bool>(arg_2, arg_2, arg_2, arg_2)), arg_2, !arg_2, all(vec2<bool>(true, arg_2)))), vec4<bool>(false, -u_input.b.x > _wgslsmith_dot_vec3_i32(u_input.b.yyw, vec3<i32>(-54601i, -572i, u_input.b.x)), true, arg_2), true));
    let var_2 = ~(~global0.zz);
    global0 = vec4<u32>(var_2.x, 4294967295u, 24705u ^ reverseBits(_wgslsmith_div_u32(var_0.a, 4294967295u)), ~_wgslsmith_sub_u32(1216u, arg_0.a)) | vec4<u32>(arg_0.a, ~reverseBits(1u) & ~var_2.x, _wgslsmith_add_u32(~23155u, min(global0.x, arg_0.a)) & 13653u, _wgslsmith_dot_vec3_u32(global0.wwy, vec3<u32>(27656u, arg_1, countOneBits(var_2.x))));
    var var_3 = var_1;
    return arg_2;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    var var_0 = ~(156358u | ~min(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.x), u_input.a)));
    let var_1 = Struct_1(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), false), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(func_3(Struct_2(16987u), u_input.a.x, true), any(vec2<bool>(true, false)), all(vec2<bool>(true, true)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(520f))))), vec4<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true))) & (~arg_2 <= firstLeadingBit(-1i)), _wgslsmith_div_i32(1i, 24316i << (u_input.a.x % 32u)) < abs(countOneBits(-1i)), u_input.a.x < 4294967295u, true));
    let var_2 = vec4<bool>(any(!var_1.c), any(!vec2<bool>(true, 5428i < arg_1.x)), all(vec3<bool>(var_1.c.x, func_3(Struct_2(u_input.a.x), ~global0.x, var_1.c.x), any(vec2<bool>(var_1.c.x, var_1.a.x)))), false);
    var var_3 = Struct_2(u_input.a.x);
    var_0 = arg_0;
    return Struct_1(select(!select(select(var_1.a, vec4<bool>(var_1.a.x, true, var_1.c.x, var_2.x), true), select(var_1.c, vec4<bool>(true, false, var_2.x, false), var_2.x), !vec4<bool>(false, var_1.c.x, var_2.x, true)), !(!(!vec4<bool>(var_2.x, var_1.a.x, false, false))), !vec4<bool>(all(vec2<bool>(var_2.x, var_2.x)), var_2.x, false, var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(223f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2523f)) * -686f)) + 757f), select(vec4<bool>(true, !(arg_0 != 77467u), reverseBits(43735u) < arg_0, true), !vec4<bool>(false, var_2.x, var_2.x == false, false), select(!select(var_1.c, vec4<bool>(var_2.x, false, true, var_2.x), var_1.c.x), vec4<bool>(all(var_1.a.xxy), false, var_2.x, all(vec2<bool>(true, false))), select(!var_1.c, vec4<bool>(var_1.c.x, true, true, true), all(var_1.a.xxw)))));
}

fn func_1() -> f32 {
    var var_0 = func_2(~(~global0.x), u_input.b.wy, ~(-_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b.zwy, vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)), min(u_input.b.ywy, u_input.b.zxy))));
    let var_1 = ~countOneBits(~_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(-30832i, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b), vec4<i32>(-18280i, 0i, 46194i, u_input.b.x)));
    let var_2 = true;
    let var_3 = var_0.c.yxy;
    var var_4 = Struct_1(vec4<bool>(func_3(Struct_2(global0.x), 70143u ^ min(u_input.a.x, 6771u), select(false, any(var_0.a.zyx), !var_3.x)), var_3.x, false & func_3(Struct_2(global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(49752u, 13993u, 11717u), vec3<u32>(8718u, 49156u, u_input.a.x)), func_3(Struct_2(101944u), 61214u, false)), !(!(var_3.x & var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2513f))) - _wgslsmith_f_op_f32(floor(func_2(u_input.a.x, reverseBits(u_input.b.wy), -1i).b))), !func_2(u_input.a.x, max(vec2<i32>(var_1.x, 6764i), vec2<i32>(u_input.b.x, var_1.x)), _wgslsmith_mod_i32(countOneBits(-1i), u_input.b.x)).c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -558f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(~max(-vec2<i32>(-1i, u_input.b.x), vec2<i32>(1i, ~17063i)), u_input.b.wz);
    let var_1 = u_input.b.x;
    var_0 = u_input.b.x;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1197f - -116f) * _wgslsmith_f_op_f32(-317f - 1010f))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-948f - -2818f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1336f) * -1000f)))));
    let var_3 = vec3<bool>(any(vec2<bool>(false, any(vec3<bool>(true, true, false)))), true, !any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec2<u32>(20973u, 4294967295u << (u_input.a.x % 32u))));
}

