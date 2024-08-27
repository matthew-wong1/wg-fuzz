struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-138f, global0.e, _wgslsmith_f_op_f32(abs(arg_1.d)), _wgslsmith_f_op_f32(round(arg_1.d))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-216f, -564f, -1328f, _wgslsmith_f_op_f32(global0.d + 1030f))), global0.c)));
    global0 = Struct_1(~105922u, ~vec4<i32>(1i | -global0.b.x, -1i, _wgslsmith_mod_i32(-32578i, firstLeadingBit(global0.b.x)), 1i), vec4<bool>(true, any(vec2<bool>(var_0.x == 856f, !arg_1.c.x)), arg_1.c.x, true), _wgslsmith_f_op_f32(-arg_1.e), -2309f);
    let var_1 = global0.b.x;
    global0 = Struct_1(max(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(arg_0.zx, arg_0.yz), 156235u ^ ~arg_0.x), ~12894u >> (~(~global0.a) % 32u)), arg_1.b, select(!vec4<bool>(all(vec4<bool>(true, false, true, true)), arg_1.c.x, 10429i < arg_1.b.x, true), !global0.c, true), _wgslsmith_f_op_f32(-2033f - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.e, _wgslsmith_f_op_f32(select(879f, global0.e, any(vec4<bool>(global0.c.x, true, arg_1.c.x, arg_1.c.x))))))));
    var var_2 = _wgslsmith_div_vec2_u32(max(arg_0.yx, arg_0.xz), _wgslsmith_clamp_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(global0.a, global0.a, 15608u, 4673u)), _wgslsmith_add_u32(arg_1.a, global0.a))), vec2<u32>(u_input.a ^ 0u, _wgslsmith_mod_u32(u_input.a ^ 41428u, 1u)), min(abs(~vec2<u32>(global0.a, 16690u)), _wgslsmith_mod_vec2_u32(abs(arg_0.zx), arg_0.zy))));
    return _wgslsmith_f_op_f32(step(-403f, var_0.x));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_1(firstLeadingBit(~(~1u)), -(vec4<i32>(reverseBits(-1i), min(global0.b.x, global0.b.x), global0.b.x, 59146i) ^ global0.b), global0.c, _wgslsmith_f_op_f32(func_3(vec4<u32>(max(_wgslsmith_clamp_u32(0u, 26418u, 35712u), 1u), arg_1, _wgslsmith_mult_u32(~u_input.a, ~38224u), 1u), Struct_1(0u, countOneBits(global0.b) | vec4<i32>(global0.b.x, global0.b.x, -4229i, global0.b.x), !global0.c, -733f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 118f))))), -361f);
    var_0 = Struct_1(~u_input.a, min(firstLeadingBit(_wgslsmith_sub_vec4_i32(var_0.b, vec4<i32>(var_0.b.x, 33223i, 2147483647i, var_0.b.x) & global0.b)), countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(-38917i, 22395i, var_0.b.x, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.b.x, var_0.b.x, 0i, global0.b.x), vec4<i32>(0i, -2147483647i, -57600i, global0.b.x))))), select(!vec4<bool>(false, !global0.c.x, global0.c.x, true), select(!var_0.c, select(select(global0.c, global0.c, vec4<bool>(var_0.c.x, global0.c.x, global0.c.x, false)), select(vec4<bool>(var_0.c.x, global0.c.x, global0.c.x, false), vec4<bool>(false, false, var_0.c.x, true), global0.c), var_0.c.x || global0.c.x), false), select(vec4<bool>(!var_0.c.x, all(vec4<bool>(false, false, true, var_0.c.x)), true | var_0.c.x, any(var_0.c.wy)), select(select(vec4<bool>(var_0.c.x, true, true, global0.c.x), vec4<bool>(true, var_0.c.x, var_0.c.x, global0.c.x), false), !vec4<bool>(global0.c.x, global0.c.x, var_0.c.x, false), global0.c), (global0.c.x | true) == true)), 232f, var_0.e);
    var_0 = Struct_1(~(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(var_0.a, u_input.a), vec2<u32>(1u, 4294967295u), global0.c.x), vec2<u32>(arg_1, u_input.a))), firstLeadingBit(reverseBits(global0.b)), !var_0.c, var_0.d, global0.e);
    var var_1 = max(global0.b, ~vec4<i32>(global0.b.x, firstTrailingBit(i32(-1i) * -41361i), 1i, ~_wgslsmith_mod_i32(-1i, var_0.b.x)));
    global0 = Struct_1(global0.a, select(-global0.b, countOneBits(vec4<i32>(var_1.x ^ -2147483647i, _wgslsmith_sub_i32(global0.b.x, 10278i), _wgslsmith_sub_i32(var_1.x, global0.b.x), abs(-31633i))), false), global0.c, -866f, _wgslsmith_f_op_f32(f32(-1f) * -604f));
    return Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, global0.a, u_input.a), vec3<u32>(arg_1, 50224u, 7123u)), 4294967295u, u_input.a, var_0.a), vec4<u32>(1u, reverseBits(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(27653u, 147147u, 0u, 52538u), vec4<u32>(53739u, 4294967295u, u_input.a, 53324u)), reverseBits(u_input.a)) ^ (vec4<u32>(4294967295u, 4294967295u, 4294967295u, var_0.a) & vec4<u32>(1u, arg_1, u_input.a, u_input.a))), min(~(countOneBits(global0.b) << (abs(vec4<u32>(16342u, 6657u, var_0.a, 1u)) % vec4<u32>(32u))), ~global0.b), !vec4<bool>(any(select(vec3<bool>(var_0.c.x, global0.c.x, global0.c.x), var_0.c.xzw, global0.c.x)), var_0.c.x, false, !(global0.c.x || global0.c.x)), -1093f, -267f);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-773f, global0.d, -265f)))), _wgslsmith_div_u32(global0.a, ~u_input.a));
    var_0 = Struct_1(~_wgslsmith_sub_u32(~_wgslsmith_sub_u32(var_0.a, global0.a), global0.a), abs(min(_wgslsmith_mult_vec4_i32(vec4<i32>(-1955i, global0.b.x, var_0.b.x, var_0.b.x), vec4<i32>(var_0.b.x, global0.b.x, global0.b.x, 41990i)), ~(var_0.b & var_0.b))), var_0.c, _wgslsmith_f_op_f32(-global0.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f), -525f));
    global0 = Struct_1(_wgslsmith_div_u32(~(~global0.a >> (_wgslsmith_add_u32(global0.a, 45929u) % 32u)), 4294967295u), var_0.b, !(!arg_1), var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(36571u, u_input.a, var_0.a, 20939u), func_2(vec3<f32>(global0.d, global0.e, -380f), 52531u))), 1f)));
    var var_1 = reverseBits(-(var_0.b.x >> (global0.a % 32u)) >> (_wgslsmith_add_u32(38818u, u_input.a) % 32u)) ^ -32432i;
    let var_2 = Struct_1(u_input.a, -(~vec4<i32>(global0.b.x, 1i, global0.b.x, global0.b.x)) << (vec4<u32>(global0.a, ~u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u)), select(select(select(select(vec4<bool>(true, arg_1.x, global0.c.x, true), vec4<bool>(arg_0.x, global0.c.x, global0.c.x, true), vec4<bool>(global0.c.x, arg_0.x, global0.c.x, false)), !arg_1, any(var_0.c)), vec4<bool>(var_0.c.x, false, arg_1.x, global0.c.x), !(53137i == global0.b.x)), select(var_0.c, select(global0.c, global0.c, all(arg_0)), var_0.c.x & arg_0.x), reverseBits(global0.b.x) < -18642i), var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1100f, global0.e), var_0.d) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * 710f), var_0.e))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-951f)), _wgslsmith_f_op_f32(var_0.e + -427f), true)))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0.c.yyw, vec4<bool>(true, global0.c.x, global0.c.x, global0.b.x <= 0i));
    let var_1 = abs(4474u);
    global0 = func_1(vec3<bool>(global0.c.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, var_0.a), 1u) == global0.a, !var_0.c.x), !func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.e, -461f, global0.d), vec3<f32>(-738f, global0.e, 1000f))), firstLeadingBit(global0.a)).c);
    var var_2 = func_1(var_0.c.wwx, !(!global0.c));
    var var_3 = func_1(vec3<bool>(any(vec2<bool>(all(var_2.c.yww), true)), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1860f, var_2.d, -297f))), 36783u).c.x, var_2.c.x && all(vec3<bool>(false, var_0.c.x, global0.c.x))), vec4<bool>(true, all(var_0.c.xzw), !var_2.c.x, false));
    global0 = Struct_1(~4294967295u, _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(var_3.b, func_2(vec3<f32>(var_0.d, var_0.d, var_2.e), ~4294967295u).b), vec4<i32>(-_wgslsmith_dot_vec4_i32(global0.b, vec4<i32>(0i, var_3.b.x, var_2.b.x, var_3.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.x, var_3.b.x, 66037i, global0.b.x), -var_0.b), -(~14291i), _wgslsmith_sub_i32(1i, 0i))), !var_2.c, var_0.d, 1481f);
    var var_4 = vec4<bool>(true, false, var_0.c.x, var_3.c.x);
    var var_5 = var_0;
    var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(33245u << (~var_0.a % 32u))), func_1(select(var_0.c.zyy, !(!vec3<bool>(false, var_2.c.x, true)), !select(vec3<bool>(var_5.c.x, global0.c.x, true), var_3.c.yxx, true)), var_0.c).d, _wgslsmith_mult_u32(u_input.a, abs(~global0.a >> (max(0u, 4294967295u) % 32u))), global0.b);
}

