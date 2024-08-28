struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<bool>(false, true, true), Struct_2(vec4<i32>(39185i, 0i, i32(-2147483648), i32(-2147483648))), 1265f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<bool> {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_div_i32(u_input.c, _wgslsmith_sub_i32(_wgslsmith_sub_i32(i32(-1i) * -11931i, 15689i), u_input.c));
    var var_2 = !global0.a.xx;
    var var_3 = !select(!(!vec4<bool>(var_2.x, var_2.x, true, false)), vec4<bool>(select(!var_2.x, false, var_2.x & global0.a.x), true, var_2.x, any(select(vec3<bool>(false, true, var_2.x), global0.a, vec3<bool>(var_2.x, false, global0.a.x)))), all(select(select(global0.a.yy, vec2<bool>(false, false), true), global0.a.xz, true)));
    var var_4 = !(!select(!global0.a, !var_3.ywx, global0.a));
    return !(!(!(!vec3<bool>(true, false, var_2.x))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_1 {
    global0 = Struct_3(select(!(!vec3<bool>(global0.a.x, global0.a.x, false)), func_3(), global0.a), Struct_2(vec4<i32>(min(1i, u_input.c), global0.b.a.x, 83897i, 20939i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-328f * _wgslsmith_f_op_f32(-392f - global0.c)))));
    var var_0 = _wgslsmith_add_i32(-(~u_input.c), -min(-1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, -2514i), vec2<i32>(global0.b.a.x, arg_1.x))));
    var_0 = -2147483647i;
    var var_1 = u_input.b.x;
    var var_2 = !any(vec4<bool>(true, false, arg_0.a.x < (u_input.c >> (49244u % 32u)), !(global0.a.x && global0.a.x)));
    return Struct_1(firstLeadingBit(11940i), ~u_input.b.yzx, !vec4<bool>(any(select(vec2<bool>(global0.a.x, global0.a.x), global0.a.xz, true)), global0.c <= _wgslsmith_f_op_f32(round(754f)), global0.a.x, global0.a.x), select(~(~(arg_1.xyz | global0.b.a.xyy)), ~max(~arg_1.yxz, -vec3<i32>(global0.b.a.x, 0i, global0.b.a.x)), global0.a));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global0.b;
    var var_1 = arg_0;
    global0 = Struct_3(!vec3<bool>(true && !var_1.c.x, _wgslsmith_div_f32(-1729f, 306f) != global0.c, global0.a.x | false), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1827f * _wgslsmith_f_op_f32(f32(-1f) * -1108f)) - 156f));
    var_1 = arg_0;
    global0 = Struct_3(!(!vec3<bool>(any(global0.a), arg_0.d.x < var_1.d.x, all(arg_0.c.ywx))), global0.b, -275f);
    return Struct_1(~2147483647i, select(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(4294967295u, 60242u, u_input.a.x)), countOneBits(vec3<u32>(var_1.b.x, 1u, 44557u)), arg_0.b << (vec3<u32>(arg_0.b.x, 18070u, 1u) % vec3<u32>(32u))), ~(~vec3<u32>(4294967295u, var_1.b.x, 0u)), vec3<bool>(all(global0.a.xy), arg_0.c.x, false)) | abs(select(u_input.a, vec3<u32>(53279u, 15300u, 1u) | vec3<u32>(arg_0.b.x, 1u, 27160u), 6603u < var_1.b.x)), !(!select(select(var_1.c, var_1.c, true), var_1.c, !arg_0.c.x)), vec3<i32>((i32(-1i) * -1i) & -u_input.c, 1i, _wgslsmith_mult_i32(abs(_wgslsmith_dot_vec2_i32(var_0.a.xz, vec2<i32>(-2147483647i, 2147483647i))), arg_0.d.x)));
}

fn func_1() -> Struct_3 {
    global0 = Struct_3(vec3<bool>(any(!vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x)), true, all(vec4<bool>(false & global0.a.x, all(global0.a), !global0.a.x, !global0.a.x))), global0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1034f))), -1000f, global0.a.x)));
    let var_0 = func_4(func_2(global0.b, global0.b.a));
    var var_1 = ~u_input.a.x;
    global0 = Struct_3(var_0.c.wxw, global0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1017f, 220f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c))), _wgslsmith_f_op_f32(457f - -1466f)))));
    var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(min(countOneBits(vec4<u32>(0u, u_input.b.x, u_input.b.x, 5936u) | u_input.b), vec4<u32>(~41386u, 1u, 38492u, _wgslsmith_sub_u32(1u, u_input.a.x))), ~(~(~u_input.b))), u_input.b);
    return Struct_3(func_4(Struct_1(2147483647i, u_input.a, !var_0.c, -vec3<i32>(1i, u_input.c, u_input.c))).c.xxw, Struct_2(-(global0.b.a << (min(u_input.b, u_input.b) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(floor(global0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = vec3<u32>(~(~reverseBits(0u)), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), ~u_input.b.x);
    var var_1 = -(~_wgslsmith_mod_i32(-global0.b.a.x, global0.b.a.x));
    var var_2 = global0.b;
    let var_3 = ~(-10592i);
    let var_4 = func_1().b;
    var var_5 = max(~u_input.a.x, _wgslsmith_dot_vec2_u32(var_0.xx, var_0.xy)) <= _wgslsmith_mult_u32(~var_0.x, 4294967295u);
    var_1 = ~0i << (~(~u_input.a.x) % 32u);
    let var_6 = func_2(Struct_2(select(global0.b.a, vec4<i32>(-1i, -global0.b.a.x, max(2147483647i, 25039i), var_3 ^ var_3), !(!vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x)))), reverseBits(vec4<i32>(-2147483647i, u_input.c, 4015i, -2147483647i) >> (vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(4294967295u, 45222u), 12666u, _wgslsmith_sub_u32(73600u, 1u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(5287u, vec2<f32>(143f, _wgslsmith_f_op_f32(f32(-1f) * -2311f)), min(var_2.a.x, var_6.d.x), vec4<i32>(0i, var_4.a.x, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(global0.b.a.x, var_4.a.x)), reverseBits(global0.b.a.yw)), 1i));
}

