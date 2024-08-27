struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 35187u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = !vec3<bool>(arg_1.b, any(select(vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(true, arg_1.b), false)) && all(select(vec4<bool>(arg_1.a.a, true, false, true), vec4<bool>(true, arg_1.b, true, arg_1.b), vec4<bool>(true, arg_1.b, arg_1.a.a, arg_1.a.a))), arg_1.b);
    return reverseBits(-abs(vec3<i32>(1i, 1i, 1i)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    global0 = ~(1u >> (abs(1u | countOneBits(arg_0.x)) % 32u));
    let var_0 = !vec3<bool>(false, !any(vec3<bool>(true, true, true)), true);
    global1 = ~4294967295u;
    var var_1 = ~func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1270f))), Struct_2(Struct_1(select(true, var_0.x, true), _wgslsmith_f_op_f32(815f + -413f), max(arg_0.zx, vec2<u32>(u_input.a.x, arg_0.x))), false || (1u > u_input.a.x)));
    let var_2 = Struct_1(!any(var_0), -1000f, arg_0.xx);
    return Struct_3(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, ~u_input.a.x, ~27993u, arg_0.x), ~reverseBits(vec4<u32>(arg_0.x, arg_0.x, 32929u, arg_0.x)), abs(vec4<u32>(var_2.c.x, 4294967295u, 25697u, 22115u)) ^ countOneBits(vec4<u32>(arg_0.x, var_2.c.x, u_input.a.x, 29905u))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(885f, 1017f, -1000f) + vec3<f32>(var_2.b, var_2.b, var_2.b))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, var_2.b, var_2.b)))))), var_2, ~_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(28342i, var_1.x, 0i, var_1.x), abs(vec4<i32>(1i, 0i, var_1.x, 622i))), abs(-vec4<i32>(var_1.x, -21117i, 0i, 2147483647i))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_3) -> u32 {
    let var_0 = reverseBits(~func_2(arg_2.a.xww).d.x);
    var var_1 = Struct_2(Struct_1(true, _wgslsmith_f_op_f32(509f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.b))), arg_2.c.c), !arg_1.x && true);
    var_1 = Struct_2(var_1.a, !(!any(arg_0.xz)));
    var var_2 = var_0;
    let var_3 = abs(-38209i);
    return var_1.a.c.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: vec3<u32>) -> Struct_5 {
    global1 = 40067u;
    global0 = u_input.a.x;
    global1 = ~(_wgslsmith_sub_u32(func_4(vec3<bool>(true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), func_2(vec3<u32>(arg_2.x, 17236u, 86851u))), ~u_input.a.x) ^ arg_2.x);
    var var_0 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var_0 = !(!(!vec4<bool>(false, var_0.x, any(vec3<bool>(var_0.x, false, false)), var_0.x)));
    return Struct_5(Struct_2(Struct_1(false, _wgslsmith_f_op_f32(-arg_0.x), ~(~u_input.a)), !(!(!var_0.x))), func_2(arg_2).a.xzz, Struct_4(Struct_2(func_2(_wgslsmith_add_vec3_u32(vec3<u32>(28868u, arg_2.x, u_input.a.x), arg_2)).c, (1i >> (u_input.a.x % 32u)) != 1i), Struct_2(func_2(reverseBits(arg_2)).c, any(select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, false, false), false)))));
}

fn func_5(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: vec2<bool>) -> f32 {
    global0 = _wgslsmith_mult_u32(~_wgslsmith_div_u32(_wgslsmith_mod_u32(abs(u_input.a.x), ~0u), ~(~u_input.a.x)), arg_0.c.a.a.c.x ^ 21653u);
    var var_0 = ~(~u_input.a);
    var var_1 = arg_1.x;
    var var_2 = !(!arg_2.x & true);
    global0 = var_0.x;
    return arg_0.a.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -908f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2497f * -1847f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1110f)) - -577f)), _wgslsmith_f_op_f32(func_5(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-112f, 1121f, -860f, 849f) + vec4<f32>(1185f, 1000f, 422f, -103f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1526f, -491f, -1000f) - vec3<f32>(-371f, -998f, 384f)), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), true), vec2<bool>(true, func_1(vec4<f32>(1717f, -1000f, -1782f, 2142f), vec3<f32>(-111f, 636f, -1295f), vec3<u32>(25664u, u_input.a.x, u_input.a.x)).c.a.b))));
    global0 = u_input.a.x;
    var var_1 = ~(~(~func_2(~vec3<u32>(22835u, u_input.a.x, u_input.a.x)).c.c));
    var_0 = false;
    let var_2 = ~vec3<i32>(26588i, 1i << (var_1.x % 32u), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(1971f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-192f + 284f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -704f)), func_2(vec3<u32>(u_input.a.x, var_1.x, u_input.a.x)).b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-170f, 193f, 197f, -327f) * vec4<f32>(-600f, -3040f, -847f, -1392f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-901f, -2338f, 1275f, 785f), vec4<f32>(-958f, 124f, 2557f, -811f))))))), vec3<u32>(~(~var_1.x), 0u, ~func_4(vec3<bool>(true, true, true), vec4<bool>(true, true, true, true), Struct_3(vec4<u32>(67005u, 87976u, var_1.x, var_1.x), vec3<f32>(-1742f, -1165f, 741f), Struct_1(false, -111f, u_input.a), vec4<i32>(-2147483647i, var_2.x, -26796i, 1i)))), 28938u);
}

