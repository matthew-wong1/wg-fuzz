struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    return 317f;
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(abs(i32(-1i) * -1i), -2147483647i, select(!vec4<bool>(all(vec4<bool>(false, false, false, true)), u_input.a.x > u_input.a.x, true, any(vec2<bool>(false, true))), vec4<bool>(true, true, 0u <= u_input.a.x, true), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(all(vec3<bool>(false, false, true)), true, true, true), true)), ~((~vec3<u32>(1u, 5005u, u_input.a.x) << (~vec3<u32>(61782u, 117940u, 49645u) % vec3<u32>(32u))) | ((vec3<u32>(u_input.a.x, 1398u, u_input.a.x) | vec3<u32>(u_input.a.x, 1u, u_input.a.x)) >> ((vec3<u32>(77835u, 0u, 4294967295u) >> (vec3<u32>(u_input.a.x, u_input.a.x, 56539u) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    var var_1 = _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(~var_0.d.x, _wgslsmith_mult_u32(26799u, var_0.d.x) & 52111u));
    var_1 = ~(~reverseBits(_wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x)));
    let var_2 = -269f;
    var_1 = u_input.a.x;
    return vec4<i32>(var_0.b, 61540i, _wgslsmith_div_i32(-var_0.a, var_0.a) << (~_wgslsmith_mod_u32(reverseBits(u_input.a.x), 4294967295u) % 32u), ~var_0.a);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(813f, 1213f, -454f, -1692f) - vec4<f32>(-2304f, 1393f, -314f, -469f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-187f, 730f, 514f, -294f), vec4<f32>(302f, 655f, 1000f, 865f))), arg_0.c.x & any(arg_0.c))) - vec4<f32>(900f, _wgslsmith_f_op_f32(f32(-1f) * -1956f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.a.x, 1u, arg_0.d.x, 4294967295u), arg_1, arg_0)), -457f), _wgslsmith_f_op_f32(min(1038f, _wgslsmith_div_f32(929f, 134f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1125f, _wgslsmith_f_op_f32(-344f - 1000f), _wgslsmith_f_op_f32(1000f * 312f), _wgslsmith_f_op_f32(sign(1462f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1596f, -880f, 1289f, 259f)))));
    let var_1 = Struct_1(arg_1, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, i32(-1i) * -29845i, -8297i, -arg_0.b), -reverseBits(vec4<i32>(0i, -22098i, arg_0.b, 13517i))), func_3()), vec4<bool>(false, true, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_0.d.xx, vec2<u32>(3939u, 66878u)), _wgslsmith_div_u32(4294967295u, 4294967295u)) >= u_input.a.x, true), arg_0.d);
    var var_2 = -reverseBits(countOneBits(~(~vec2<i32>(24559i, 2147483647i))));
    var_2 = vec2<i32>(-var_1.b | var_2.x, -1i);
    let var_3 = Struct_1(_wgslsmith_mod_i32(arg_1, _wgslsmith_mod_i32(var_1.b, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, 0i, var_2.x, var_1.b), vec4<i32>(1i, arg_0.b, 1i, -1i)), vec4<i32>(arg_0.a, 3175i, 2147483647i, -1i)))), 0i, var_1.c, ~arg_0.d);
    return vec4<bool>(!all(select(!arg_0.c.zz, vec2<bool>(true, var_1.c.x), select(var_1.c.xx, arg_0.c.yy, var_1.c.x))), true, select(false, select(arg_0.c.x == (false & var_3.c.x), true, true), false), 4294967295u <= (select(_wgslsmith_dot_vec3_u32(var_3.d, arg_0.d), countOneBits(var_1.d.x), var_3.c.x) << (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(26119u, 0u, arg_0.d.x), u_input.a.x << (arg_0.d.x % 32u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(76250i, 1i, !select(vec4<bool>(any(vec2<bool>(false, true)), select(false, true, true), true, true), func_1(Struct_1(17572i, 2147483647i, vec4<bool>(false, true, false, false), vec3<u32>(37018u, u_input.a.x, u_input.a.x)), 1i), func_1(Struct_1(-1i, 2147483647i, vec4<bool>(false, true, true, false), vec3<u32>(39048u, 13031u, u_input.a.x)), _wgslsmith_sub_i32(2147483647i, 0i))), ~(~abs(vec3<u32>(u_input.a.x, u_input.a.x, 5622u))));
    var var_1 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-(vec2<i32>(-26727i, 2147483647i) & vec2<i32>(39603i, var_0.a)), select(select(vec2<i32>(-2287i, 0i), vec2<i32>(var_0.a, var_0.b), var_0.c.ww), firstTrailingBit(vec2<i32>(var_0.a, -2147483647i)), 45513i > var_0.a)), ~_wgslsmith_add_i32(firstTrailingBit(38046i), var_0.a >> (var_0.d.x % 32u))), 2147483647i, -2752i);
    var_1 = reverseBits(func_3().xxw);
    var var_2 = vec2<bool>(false, true);
    var_0 = Struct_1(max(var_1.x, var_1.x), var_0.b, func_1(Struct_1(_wgslsmith_sub_i32(var_1.x, -2147483647i), func_3().x, var_0.c, ~(~var_0.d)), 2147483647i), vec3<u32>(_wgslsmith_add_u32(u_input.a.x, 20153u & ~var_0.d.x), 40280u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.d.yx | ~(max(vec2<u32>(4294967295u, 1u), vec2<u32>(var_0.d.x, 54576u)) | vec2<u32>(u_input.a.x, var_0.d.x)));
}

